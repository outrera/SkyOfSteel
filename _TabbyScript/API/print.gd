var sroot

func Call(args, line):
	var to_print = ''

	for arg in args:
		arg = Tabby.to_string(arg.data)

		if to_print == '':
			to_print += arg
		else:
			to_print += ' ' + arg

	Console.printf(to_print)
	return Tabby.malloc(Tabby.SUC)