from bottle import *
import json
def listForDict(title, rows):
	values = []
	keys = []
	list_dict = []
	row = sorted(rows)

	for col in title.description:
		keys.append(col[0])

	for value in row:
		list_dict.append(dict(zip(keys,value)))
	response.headers['Content-Type'] = 'application/json;charset=UTF-8'
	list_dict = {'items':list_dict}
	return json.dumps(list_dict)
