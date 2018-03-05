# -*- coding: utf-8 -*-
import smtplib

class Servico():
	def __init__(self):	
		# Credenciais email
		self.remetente = 'warningserviceemail@gmail.com'
		self.senha = 'python2018'
		self.server = 'smtp.gmail.com:587'

	def sendEmail(self,destinatario,msg):
		# Enviando o email
		self.server = smtplib.SMTP(self.server)
		self.server.starttls()
		self.server.login(self.remetente,self.senha)
		self.server.sendmail(self.remetente,destinatario,msg)
		self.server.quit()