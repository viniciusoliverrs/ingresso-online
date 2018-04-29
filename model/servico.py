# -*- coding: utf-8 -*-
import smtplib
from bottle import response
from json import dumps

class Servico():
	def __init__(self):	
		# Credenciais email
		self.remetente = 'warningserviceemail@gmail.com'
		self.senha = 'python2018'
		self.server = 'smtp.gmail.com:587'
		self.keys = []
		#response.headers['Content-Type'] = 'application/json;charset=UTF-8;'
		response.content_type = 'application/json'
		self.list_dict = []

	def sendEmail(self,destinatario,msg):
		# Enviando o email
		self.server = smtplib.SMTP(self.server)
		self.server.starttls()
		self.server.login(self.remetente,self.senha)
		self.server.sendmail(self.remetente,destinatario,msg)
		self.server.quit()


	def listForDict(self,title, rows):	

		for col in title.description:
			self.keys.append(col[0])

		for value in rows:
			self.list_dict.append(dict(zip(self.keys,value)))
		
		self.list_dict = {'item':self.list_dict}
		return dumps(self.list_dict)

	def sendMsgJson(message)
		response.status = 400
		return dumps({'error': message})