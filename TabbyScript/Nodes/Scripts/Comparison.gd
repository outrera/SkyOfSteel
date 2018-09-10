extends "Base.gd"

const Type = 'data'
var Expression = ''

func get_data():
	var data = []
	data.append(get_children()[0].get_data())
	data.append(get_children()[1].get_data())

	for index in [0,1]:
		if data[index].type == Tabby.STR:
			data[index].data = "'" + data[index].data + "'"
		else:
			data[index].data = Tabby.to_string(data[index].data)

	data = Tabby.eval_str(data[0].data+Expression+data[1].data)
	return Tabby.malloc(Tabby.get_type(data), data)