from database import Database
import listJson as json
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

	def find_all_json(self):	
		try:
			sql = "SELECT * FROM %s"% self.table
			cur = self.cursor.execute(sql)
			rows = self.cursor.fetchall()
			result = json.listForDict(cur, rows)
			return result
		except Exception:
			self.db.close()
