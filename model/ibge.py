from database import Database
import listJson as json
class IBGE():
	def __init__(self):
		self.Ctable = "Cidade"
		self.Etable = "Estado"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def find_all_json(self):
		try:
			sql = "SELECT c.Nome, e.Sigla FROM "+self.Ctable+" AS c JOIN "+self.Etable+" AS e ON e.Id = c.Estado_Id"
			cur = self.cursor.execute(sql)
			rows = self.cursor.fetchall()
			result = json.listForDict(cur, rows)
			return result
		except Exception:
			self.db.close()

	def find_estado(self,_id):	
		try:
			sql = "SELECT * FROM %s WHERE Id = ?" %self.Etable
			self.cursor.execute(sql,[_id])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()

	def find_cidade(self,_id):	
		try:
			sql = "SELECT * FROM %s WHERE Id = ?" %self.Ctable
			self.cursor.execute(sql,[_id])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()

	def findAll(self):
		try:
			sql = "SELECT c.Id,c.Nome, e.Sigla FROM "+self.Ctable+" AS c JOIN "+self.Etable+" AS e ON e.Id = c.Estado_Id ORDER BY e.Sigla"
			self.cursor.execute(sql)
			return self.cursor.fetchall()
		except Exception:
			self.db.close()

	def find_by_cidade_id(self,cidade_id):
		try:
			sql = "SELECT c.Id,c.Nome, e.Sigla FROM "+self.Ctable+" AS c JOIN "+self.Etable+" AS e ON e.Id = c.Estado_Id WHERE c.Id = ?"
			self.cursor.execute(sql,[cidade_id])
			return self.cursor.fetchone()
		except Exception:
			self.db.close()
