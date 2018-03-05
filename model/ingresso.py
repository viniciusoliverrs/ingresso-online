from database import Database

class Ingresso():
	def __init__(self):
		self.table = "Ingresso"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def findAll(self,usuario_id):		
		try:
			sql = "SELECT Id, Tipo, Quantidade, Preco FROM %s WHERE Usuario_Id = ?" % self.table
			self.cursor.execute(sql,[usuario_id])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()
			
	def find(self,usuario_id,_id):
		try:
			sql = "SELECT * FROM %s WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[usuario_id,_id])
			return self.cursor.fetchone()
		except Exception:
			self.db.close()

	def update(self,_id,usuario_id,tipo,quantidade,preco):
		try:
			print quantidade
			sql = "UPDATE %s SET Tipo = ? , Quantidade = ?, Preco = ? WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[tipo,quantidade,preco,usuario_id,_id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def add(self,usuario_id,tipo,quantidade,preco):
		try:
			sql = "INSERT INTO %s (Tipo,Quantidade,Preco,Usuario_Id) VALUES (?,?,?,?)" % self.table
			self.cursor.execute(sql,[tipo,quantidade,preco,usuario_id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def delete(self,usuario_id,_id):
		try:
			sql = "DELETE FROM %s WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[usuario_id,_id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False
	def delete_all(self,usuario_id):
			try:
				sql = "DELETE FROM %s WHERE Usuario_Id = ?" % self.table
				self.cursor.execute(sql,[usuario_id])
				self.db.commit()
				self.db.close()
				return True
			except Exception:
				return False
