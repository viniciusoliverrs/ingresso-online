from database import Database

class Evento():
	def __init__(self):
		self.table = "Evento"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def findAll(self,Usuario_id):		
		try:
			sql = "SELECT Id, Titulo FROM %s WHERE Usuario_Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_id])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()
			
	def find(self,usuario_id,_id):
		pass

	def update(self,_id,usuario_id,tipo,quantidade,preco):
		pass

	def add(self,Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone):
		try:
			sql = "INSERT INTO %s (Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone) VALUES (?,?,?,?,?,?,?,?,?)" % self.table
			self.cursor.execute(sql,[Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone])
			self.db.commit()
			self.db.close()
			return True
		except Exception as e:
			print e
			return False
	def delete(self,Usuario_id,Id):
		try:
			sql = "DELETE FROM %s WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_id,Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False