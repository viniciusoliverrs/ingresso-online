from database import Database
class Conta():
	def __init__(self):
		self.table = "Conta"
		self.Utable = "Usuario"
		self.db = Database().conn()
		self.cursor = self.db.cursor()
	def find(self,usuario_id):
		try:
			sql = "SELECT Nome,Email,Cpf,Telefone FROM "+self.table+" JOIN "+self.Utable+" ON "+self.Utable+".Id = "+self.table+".Usuario_Id WHERE "+self.table+".Usuario_Id = ?"
			self.cursor.execute(sql,(usuario_id,))
			return self.cursor.fetchone()
		except Exception:
			self.db.close()		

	def add(self,Usuario_Id,Nome,Cpf,Telefone,DataCriacao):
		try:
			sql = "INSERT INTO %s (Usuario_Id,Nome,Cpf,Telefone,DataCriacao) VALUES (?,?,?,?,?)" % self.table
			self.cursor.execute(sql,[Usuario_Id,Nome,Cpf,Telefone,DataCriacao])
			self.db.commit()
			self.db.close()
			return True
		except Exception as e:
			print e
			return False
			
			
	def update(self,nome,cpf,telefone,data_alteracao,usuario_id):
		try:
			sql = "UPDATE %s SET Nome = ?, Cpf = ?, Telefone = ?,DataAlteracao =? WHERE Usuario_Id = ?" % self.table
			self.cursor.execute(sql,(nome,cpf,telefone,data_alteracao,usuario_id))		
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False