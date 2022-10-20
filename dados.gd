extends Node2D

# função para tratar dados locais

#const para definir o nome do arquivo de dados
const USER_DATA = 'dados.json'

static func carregaDados(var_nome, var_sobrenome):
	#cria um novo objeto para um arquivo
	var file = File.new()
	
	#verifica a existencia do arquivo a ser aberto
	if file.open(USER_DATA, File.WRITE) != 0:
		print("erro ao abrir o arquivo")
		return
	
	# json para guardar nome e sobrenome
	var data = {
		nome = var_nome,
		sobrenome = var_sobrenome,
	}
	
	#gravar os dados no arquivo
	file.store_line(to_json(data))
	
	#fechar o arquivo
	file.close()

static func carregaDado():
	var file = File.new()
	if not file.file_exists(USER_DATA):
		print("Arquivo não existe")
		return
	
	# se passou pelo caso anterior, tenta abrir o arquivo
	
	if file.open(USER_DATA, File.READ) != 0:
		print("Erro ao abrir o arquivo")
		return
		
	# carregar dados
	var data = parse_json(file.get_line())
	file.close()
	
	return data


