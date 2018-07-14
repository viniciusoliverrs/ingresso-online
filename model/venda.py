from database import Database
class Venda():
	def __init__(self):
		self.table = "Venda"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def add(self,Ingresso_Id,Usuario_Id,Quantidade,Preco):
		try:
			print Ingresso_Id
			print Usuario_Id
			print Quantidade
			print Preco
			sql = "INSERT INTO %s (Ingresso_Id,Usuario_Id,Quantidade,Preco) VALUES (?,?,?,?)" % self.table
			self.cursor.execute(sql,[Ingresso_Id,Usuario_Id,Quantidade,Preco])
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

	def check_item_exists(self,Usuario_Id,Ingresso_Id):
		try:
			sql = "SELECT COUNT(Ingresso_Id) FROM %s WHERE Usuario_Id = ? AND Ingresso_Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_Id,Ingresso_Id])
			return self.cursor.fetchone()
		except Exception as e:
			print e

	def update_quantidade(self,Usuario_Id,Ingresso_Id,Quantidade):
		try:
			sql = "UPDATE %s SET Quantidade = ? WHERE Usuario_Id = ? AND Ingresso_Id = ?" % self.table
			self.cursor.execute(sql,[Quantidade,Ingresso_Id,Usuario_Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception as e:
			print e
			return False