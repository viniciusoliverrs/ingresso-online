from database import Database
class Venda():
	def __init__(self):
		self.table = "Venda"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def add(self,Ingresso_Id,Usuario_Id,Quantidade,Preco,DataEmitida):
		try:
			sql = "INSERT INTO %s (Ingresso_Id,Usuario_Id,Quantidade,Preco,DataEmitida) VALUES (?,?,?,?,?)" % self.table
			self.cursor.execute(sql,[Ingresso_Id,Usuario_Id,Quantidade,Preco,DataEmitida])
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
"""
	def manage_inventory(self,Usuario_Id,Ingresso_Id,Quant):
		try:
			sql1 = "SELECT COUNT(Ingresso_Id) FROM %s WHERE Usuario_Id = ? AND Ingresso_Id = ?" % self.table
			sql2 = "UPDATE %s SET Quantidade = ? WHERE Usuario_Id = ? AND Ingresso_Id = ?" % self.table
			sql3 = "SELECT Quantidade FROM %s WHERE Usuario_Id = ? AND Ingresso_Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_Id,Ingresso_Id])
			dado = self.cursor.fetchone()
			if dado > 0 :
				self.cursor.execute(sql3,[Usuario_Id,Ingresso_Id])
				quantidade = self.cursor.fetchone()[0]
				quantidade = quantidade + Quant
				self.cursor.execute(sql2,[quantidade,Ingresso_Id,Usuario_Id])
				self.db.commit()
				self.db.close()
				return True
			return False
		except Exception as e:
			print e
"""