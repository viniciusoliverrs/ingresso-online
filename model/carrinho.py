from database import Database
class Carrinho():
	def __init__(self):
		self.table = "Carrinho"
		self.Etable = 'Evento'
		self.Itable = 'Ingresso'
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def add(self,Ingresso_Id,Usuario_Id,Quantidade):
		try:
			sql = "INSERT INTO %s (Ingresso_Id,Usuario_Id,Quantidade,Status,DataEmitida) VALUES (?,?,?,?,?)" % self.table
			self.cursor.execute(sql,[Ingresso_Id,Usuario_Id,Quantidade,0,''])
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

	def findAll(self,Usuario_Id):
		try:
			sql = "SELECT carrinho.Id,carrinho.Quantidade,evento.Titulo,ingresso.Id,ingresso.Tipo,Ingresso.Preco FROM carrinho JOIN ingresso ON ingresso.Id = carrinho.Ingresso_Id JOIN evento ON evento.Id = ingresso.Evento_Id WHERE carrinho.Usuario_Id = ?".format(carrinho=self.table,ingresso=self.Itable)
			self.cursor.execute(sql,[Usuario_Id])
			return self.cursor.fetchall()
		except Exception as e:
			print e
			self.db.close()

	def find():
		pass

	def delete_by_usuario(self,Usuario_Id):
		try:
			sql = "DELETE FROM %s WHERE Usuario_Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False