from database import Database
class Venda():
	def __init__(self):
		self.table = "Venda"
		self.ITable = "Ingresso"
		self.ETable = "Evento"
		self.Ctable = "Categoria"
		self.CiTable = "Cidade"
		self.EsTable = "Estado"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def mysales(self,Vendedor_Id):
		try:
			sql = "SELECT Id,Ingresso_Id,Quantidade,Preco,DataEmitida FROM %s WHERE Vendedor_Id = ?" % self.table
			self.cursor.execute(sql,[Vendedor_Id])
			return self.cursor.fetchall()
		except Exception as e:
			print e
			
	def add(self,Ingresso_Id,Usuario_Id,Quantidade,Preco,DataEmitida,Vendedor_Id,Key):
		try:
			sql = "INSERT INTO %s (Ingresso_Id,Usuario_Id,Quantidade,Preco,DataEmitida,Vendedor_Id,Key) VALUES (?,?,?,?,?,?,?)" % self.table
			self.cursor.execute(sql,[Ingresso_Id,Usuario_Id,Quantidade,Preco,DataEmitida,Vendedor_Id,Key])
			self.db.commit()
			self.db.close()
			return True
		except Exception as e:
			print e
			return False

	def delete(self,Id,Usuario_Id):
		try:
			sql = "DELETE FROM %s WHERE Id = ? AND Usuario_Id = ?" % self.table
			self.cursor.execute(sql,[Id,Usuario_Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def myshopping(self,Usuario_Id):
		try:
			sql = "SELECT evento.Titulo,ingresso.Tipo,venda.Quantidade,venda.Preco,venda.DataEmitida FROM venda JOIN ingresso ON Ingresso.Id = venda.Ingresso_Id JOIN evento ON evento.Id = ingresso.Evento_Id WHERE venda.Usuario_Id = ?".format(venda=self.table,ingresso=self.ITable,evento=self.ETable)
			self.cursor.execute(sql,[Usuario_Id])
			return self.cursor.fetchall()
		except Exception as e:
			print e
	def pickupticket(self,Usuario_Id):
		try:
			sql = "SELECT venda.Quantidade,evento.Titulo,evento.Endereco,evento.Bairro,evento.Numero,evento.Telefone,cidade.Nome,estado.Sigla,categoria.Nome,ingresso.Tipo,venda.Preco,venda.DataEmitida,venda.Key FROM venda JOIN ingresso ON Ingresso.Id = venda.Ingresso_Id JOIN evento ON evento.Id = ingresso.Evento_Id JOIN cidade ON cidade.Id = evento.Cidade_Id JOIN estado ON estado.Id = cidade.Estado_Id JOIN categoria ON categoria.Id = evento.Categoria_Id WHERE venda.Usuario_Id = ?".format(venda=self.table,ingresso=self.ITable,evento=self.ETable,categoria=self.Ctable,cidade=self.CiTable,estado=self.EsTable)
			self.cursor.execute(sql,[Usuario_Id])
			return self.cursor.fetchall()
		except Exception as e:
			print e		
	def mysales(self,Vendedor_Id):
		try:
			sql = "SELECT evento.Titulo,ingresso.Tipo,venda.Quantidade,venda.Preco,venda.DataEmitida FROM venda JOIN ingresso ON Ingresso.Id = venda.Ingresso_Id JOIN evento ON evento.Id = ingresso.Evento_Id WHERE venda.Vendedor_Id = ? ORDER BY venda.Quantidade DESC".format(venda=self.table,ingresso=self.ITable,evento=self.ETable)
			self.cursor.execute(sql,[Vendedor_Id])
			return self.cursor.fetchall()
		except Exception as e:
			print e