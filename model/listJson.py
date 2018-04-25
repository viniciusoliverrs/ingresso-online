from bottle import response
from json import dumps

class listJson():
	def __init__():
		self.keys = []
		self.list_dict = []

	def listForDict(self,title, rows):	

		for col in title.description:
			self.keys.append(col[0])

		for value in rows:
			self.list_dict.append(dict(zip(self.keys,value)))
		response.headers['Content-Type'] = 'application/json;charset=UTF-8;'
		self.list_dict = {'item':self.list_dict}
		return dumps(self.list_dict)
