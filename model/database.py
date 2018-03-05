from sqlite3 import *
class Database():
	def __init__(self):
		self.dbname = "IngressoOnline.db"

	def conn(self):
		return connect(self.dbname)	
		