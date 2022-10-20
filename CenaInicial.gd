extends Node2D

func _ready():
	#verificar se existem dados gravados no arquivo dados.json
	if Dados.carregaDado() != null:
		var dados = Dados.carregaDado()
		print(dados)

func _on_gravar_pressed():
	
	Dados.carregaDados($nome.text, $sobrenome.text)
	print("Dados gravado com sucesso")


func _on_ler_pressed():
	if Dados.carregaDado() != null:
		var dados = Dados.carregaDado()
		print(dados)
