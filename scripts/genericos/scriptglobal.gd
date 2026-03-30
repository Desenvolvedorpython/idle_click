extends Node

var moedas = 0
var pontos = 0
var gemas = 0
var lojas = 0 #total de lojas
var produtoras = 0
var veiculos = {}
var resolucao = null
var sensibilidade := 0.050
var variavelT = 1 #1 rende 1, 2 rende o dobro e etc
var divida = 1000000 # divida de 1 milhao
var emprestimo = 0 #emprestimo com base no quando o jogador tem
var acesso_construcao

var inventario = {
	"pedra": 0,
	"madeira": 0,
	"petróleo": 0,
	#anaimais
	"lã": 0,
	"leite": 0,
	"ovos": 0,
	#minerios
	"ouro": 0,
	"açobruto": 0,
	"aço": 0,
	#plantacoes
	"trigo":0,
	"milho":0,
	
}
