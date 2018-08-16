from database import Database

class Ingresso():
	def __init__(self):
		self.table = "Ingresso"
		self.Etable = "Evento"
		self.db = Database().conn()
		self.cursor = self.db.cursor()

	def findAll(self,Usuario_Id,Status):		
		try:
			sql = "SELECT ingresso.Id,ingresso.Tipo,ingresso.Quantidade,ingresso.Preco,evento.Titulo FROM ingresso JOIN evento ON evento.Id = ingresso.Evento_Id WHERE ingresso.Usuario_Id = ? AND ingresso.Status = ?".format(ingresso=self.table,evento=self.Etable)
			self.cursor.execute(sql,[Usuario_Id,Status])
			return self.cursor.fetchall()
		except Exception:
			self.db.close()
			
	def find(self,Usuario_Id,Ingresso_Id):
		try:
			sql = "SELECT ingresso.Id,ingresso.Tipo,ingresso.Quantidade,ingresso.Preco,evento.Id,evento.Titulo FROM ingresso JOIN evento ON evento.Id = ingresso.Evento_Id WHERE ingresso.Usuario_Id = ? AND ingresso.Id = ?".format(ingresso=self.table,evento=self.Etable)
			self.cursor.execute(sql,[Usuario_Id,Ingresso_Id])
			return self.cursor.fetchone()
		except Exception:
			self.db.close()

	def update(self,Tipo,Quantidade,Preco,Evento_Id,Usuario_Id,Ingresso_Id):
		try:
			sql = "UPDATE %s SET Tipo = ? , Quantidade = ?, Preco = ?, Evento_Id = ? WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[Tipo,Quantidade,Preco,Evento_Id,Usuario_Id,Ingresso_Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def add(self,Tipo,Quantidade,Preco,Usuario_Id,Evento_Id):
		try:
			sql = "INSERT INTO %s (Tipo,Quantidade,Preco,Usuario_Id,Evento_Id,Status) VALUES (?,?,?,?,?,?)" % self.table
			self.cursor.execute(sql,[Tipo,Quantidade,Preco,Usuario_Id,Evento_Id,1])
			self.db.commit()
			self.db.close()
			return True
		except Exception as e:
			print e
			return False

	def delete(self,Usuario_Id,Ingresso_Id):
		try:
			sql = "DELETE FROM %s WHERE Usuario_Id = ? AND Id = ?" % self.table
			self.cursor.execute(sql,[Usuario_Id,Ingresso_Id])
			self.db.commit()
			self.db.close()
			return True
		except Exception:
			return False

	def find_by_evento_id(self,Evento_Id,Status):
		try:
			sql = "SELECT Id,Tipo,Quantidade,Preco FROM %s WHERE Evento_Id = ? AND Quantidade > 0 AND Status = ?" % self.table
			self.cursor.execute(sql,[Evento_Id,Status])
			return self.cursor.fetchall()
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

	def update_status(self,Status,Usuario_Id,Ingresso_Id):
			try:
				sql = "UPDATE %s SET Status = ? WHERE Usuario_Id = ? AND Id = ?" % self.table
				self.cursor.execute(sql,[Status,Usuario_Id,Ingresso_Id])
				self.db.commit()
				self.db.close()
				return True
			except Exception:
				return False

	def update_status_by_evento(self,Status,Usuario_Id,Evento_Id):
			try:
				sql = "UPDATE %s SET Status = ? WHERE Usuario_Id = ? AND Evento_Id = ?" % self.table
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

	def manage_inventory(self,Ingresso_Id,Quantidade):
		try:
			sql = "SELECT Quantidade FROM %s WHERE Id = ?" % self.table
			self.cursor.execute(sql,[Ingresso_Id])
			dado = self.cursor.fetchone()[0]
			if Quantidade <= dado:
				Quantidade = dado - Quantidade
				sql2 = "UPDATE %s SET Quantidade = ? WHERE Id = ?" % self.table
				self.cursor.execute(sql2,[Quantidade,Ingresso_Id])
				self.db.commit()
				self.db.close()
				print '[Quantidade atualizada]'
				return True
			return False
		except Exception as e:
			print e