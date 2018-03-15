from database import Database

class Evento():
	def __init__(self):
		self.table = "Evento"
		self.Ctable = "Cidade"
		self.Etable = "Estado"
		self.CTtable = "Categoria"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def findAll(self,Usuario_id):		
		try:
			sql = "SELECT Id, Titulo FROM %s WHERE Usuario_Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_id])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()
			
	def find(self,Usuario_Id,Id):
		try:
			sql = "SELECT evento.Id,evento.Titulo,evento.Descricao,categoria.Id,categoria.Nome,evento.Endereco,evento.Numero,evento.Bairro,evento.Telefone,cidade.id,cidade.Nome,estado.Sigla FROM evento JOIN categoria ON categoria.Id = evento.Categoria_Id JOIN cidade ON cidade.Id = evento.Cidade_Id JOIN estado ON estado.Id = cidade.Estado_Id WHERE evento.Id = ? AND evento.Usuario_Id = ?".format(evento=self.table,cidade=self.Ctable,estado=self.Etable,categoria=self.CTtable)
			self.cursor.execute(sql,[Id,Usuario_Id])
			return self.cursor.fetchone()
		except Exception as e:
			print e
			self.db.close()

	def update(self,Id,Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone):
		try:
			sql = "UPDATE %s SET Categoria_Id = ?,Cidade_Id = ?, Titulo = ?, Descricao = ?, Endereco = ?, Numero = ?, Bairro = ?,Telefone = ? WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone,Usuario_Id,Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def add(self,Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone):
		try:
			sql = "INSERT INTO %s (Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone) VALUES (?,?,?,?,?,?,?,?,?)" % self.table
			self.cursor.execute(sql,[Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False
	def delete(self,Usuario_id,Id):
		try:
			sql = "DELETE FROM %s WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_id,Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def listAll(self):
		try:
			sql = "SELECT Id, Titulo, Descricao FROM %s" % self.table
			self.cursor.execute(sql)
			return self.cursor.fetchall()
		except Exception:
			self.db.close()

	def find_by_evento_id(self,Id):
		try:
			sql = "SELECT evento.Id,evento.Titulo,evento.Descricao,categoria.Nome,evento.Endereco,evento.Numero,evento.Bairro,evento.Telefone,cidade.Nome,estado.Nome FROM evento JOIN categoria ON categoria.Id = evento.Categoria_Id JOIN cidade ON cidade.Id = evento.Cidade_Id JOIN estado ON estado.Id = cidade.Estado_Id WHERE evento.Id = ?".format(evento=self.table,cidade=self.Ctable,estado=self.Etable,categoria=self.CTtable)
			self.cursor.execute(sql,[Id])
			return self.cursor.fetchone()
		except Exception as e:
			print e
			self.db.close()