from database import Database

class Evento():
	def __init__(self):
		self.table = "Evento"
		self.Ctable = "Cidade"
		self.Etable = "Estado"
		self.CTtable = "Categoria"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def findAll(self,Usuario_id,Status):		
		try:
			sql = "SELECT Id, Titulo FROM %s WHERE Usuario_Id = ? AND Status = ?" % self.table
			self.cursor.execute(sql,[Usuario_id,Status])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()
			
	def find(self,Usuario_Id,Evento_Id):
		try:
			sql = "SELECT evento.Id,evento.Titulo,evento.Descricao,categoria.Id,categoria.Nome,evento.Endereco,evento.Numero,evento.Bairro,evento.Telefone,cidade.id,cidade.Nome,estado.Sigla FROM evento JOIN categoria ON categoria.Id = evento.Categoria_Id JOIN cidade ON cidade.Id = evento.Cidade_Id JOIN estado ON estado.Id = cidade.Estado_Id WHERE evento.Id = ? AND evento.Usuario_Id = ?".format(evento=self.table,cidade=self.Ctable,estado=self.Etable,categoria=self.CTtable)
			self.cursor.execute(sql,[Evento_Id,Usuario_Id])
			return self.cursor.fetchone()
		except Exception:
			self.db.close()

	def update(self,Id,Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone):
		try:
			sql = "UPDATE %s SET Categoria_Id = ?,Cidade_Id = ?, Titulo = ?, Descricao = ?, Endereco = ?, Numero = ?, Bairro = ?,Telefone = ? WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone,Usuario_Id,Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def add(self,Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone):
		try:
			sql = "INSERT INTO %s (Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone,Status) VALUES (?,?,?,?,?,?,?,?,?,?)" % self.table
			self.cursor.execute(sql,[Usuario_Id,Categoria_Id,Cidade_Id,Titulo,Descricao,Endereco,Numero,Bairro,Telefone,1])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False
	def delete(self,Usuario_id,Evento_Id):
		try:
			sql = "DELETE FROM %s WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_id,Evento_Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def listAll(self,Status):
		try:
			sql = "SELECT Id, Titulo, Descricao FROM %s WHERE Status = ?" % self.table
			self.cursor.execute(sql,[Status])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()

	def searchEvento(self,Categoria_Id,Cidade_Id):
		try:
			sql = "SELECT Id, Titulo, Descricao FROM %s WHERE Status = 1 AND Categoria_Id = ? AND Cidade_Id = ?" % self.table
			self.cursor.execute(sql,[Categoria_Id,Cidade_Id])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()

	def find_by_evento_id(self,Evento_Id,Status):
		try:
			sql = "SELECT evento.Id,evento.Titulo,evento.Descricao,categoria.Nome,evento.Endereco,evento.Numero,evento.Bairro,evento.Telefone,cidade.Nome,estado.Nome FROM evento JOIN categoria ON categoria.Id = evento.Categoria_Id JOIN cidade ON cidade.Id = evento.Cidade_Id JOIN estado ON estado.Id = cidade.Estado_Id WHERE evento.Id = ? AND evento.Status = ?".format(evento=self.table,cidade=self.Ctable,estado=self.Etable,categoria=self.CTtable)
			self.cursor.execute(sql,[Evento_Id,Status])
			return self.cursor.fetchone()
		except Exception:
			self.db.close()

	def delete_by_usuario(self,Usuario_Id):
		try:
			sql = "DELETE FROM %s WHERE Usuario_Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False


	def update_status(self,Status,Usuario_Id,Evento_Id):
		try:
			sql = "UPDATE %s SET Status = ? WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[Status,Usuario_Id,Evento_Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def update_status_by_usuario(self,Status,Usuario_Id):
			try:
				sql = "UPDATE %s SET Status = ? WHERE Usuario_Id = ?" % self.table
				self.cursor.execute(sql,[Status,Usuario_Id])
				self.db.commit()
				self.db.close()
				return True
			except Exception:
				return False