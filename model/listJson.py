from bottle import response
from json import dumps
def listForDict(title, rows):
	values = []
	keys = []
	list_dict = []

	for col in title.description:
		keys.append(col[0])

	for value in rows:
		list_dict.append(dict(zip(keys,value)))
	response.headers['Content-Type'] = 'application/json;charset=UTF-8;'
	list_dict = {'items':list_dict}
	return dumps(list_dict)
