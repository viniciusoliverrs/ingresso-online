from database import Database

class Categoria():
	def __init__(self):
		self.table = "Categoria"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def findAll(self):	
		try:
			sql = "SELECT * FROM %s"% self.table
			self.cursor.execute(sql)
			return self.cursor.fetchall()
		except Exception as e:
			raise e
		finally:
			self.db.close()	


	def find(_id):
		try:
			sql = "SELECT * FROM %s WHERE Id = ?"
			self.cursor.execute(sql)
			return self.cursor.fetchone()
		except Exception as e:
			raise e
		finally:
			db.close()