from database import Database
from conta import Conta

class Usuario():
	def __init__(self):
		self.table = "Usuario"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def find(self,_id):
		try:
			sql = "SELECT * FROM %s WHERE Id = ?" % self.table
			self.cursor.execute(sql,(_id,))
			return self.cursor.fetchone()	
		except Exception:
			self.db.close()

	def update(self,email,_id):
		try:
			sql = "UPDATE %s SET Email = ? WHERE Id = ?" % self.table
			result = self.cursor.execute(sql,(email,_id))
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def delete(self,_id):
		try:
			sql = "DELETE FROM %s WHERE Id = ?" % self.table
			self.cursor.execute(sql,(_id,))
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False
			

	def add(self,email,senha):
		try:
			sql = "INSERT INTO %s (Email,Senha) VALUES (?,?)" % self.table
			self.cursor.execute(sql,(email,senha))
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False
			

	def find_by_email(self,email):
		try:
			sql = "SELECT * FROM %s WHERE Email = ?" % self.table
			self.cursor.execute(sql,(email,))
			return self.cursor.fetchone()
		except Exception:
			self.db.close()

	def reset_password(self,senha,_id):
		try:
			sql = "UPDATE %s SET Senha = ? WHERE Id = ?" % self.table
			result = self.cursor.execute(sql,(senha,_id))
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False