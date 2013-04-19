require 'registro-class'
require 'tabuleiro-class'
require 'image-class'

Controller = {}

function Controller:new(pNivel,pTempo,pPontuacao)
	local attr = {nivel=pNivel, tempo=pTempo, pontuacao=pPontuacao}
	local tabs = {sudoku, posicionamento}
	local instancias = {cursor,cronometro,tabuleiro}

	local function getNivelJogo()
		return attr.nivel
	end
	
	local function getTempo()
		return attr.tempo
	end
	
	local function getPontuacao()
		return attr.pontuacao
	end
	
	local function setSudoku(s)
		tabs.sudoku = s
	end
	
	local function setTabuleiro(tab)
		instancias.tabuleiro = tab 
	end
	
	local function getSudoku()
		return tabs.sudoku
	end
	
	local function setPosicionamento(p)
		tabs.posicionamento = p
	end
	
	local function getPosicionamento()
		return tabs.posicionamento
	end
	
	obj = { getNivelJogo = getNivelJogo , getTempo=getTempo,
			getPontuacao=getPontuacao, setSudoku=setSudoku, getSudoku=getSudoku,
			setPosicionamento=setPosicionamento, getPosicionamento=getPosicionamento,
			setTabuleiro=setTabuleiro
		}
		
	setmetatable(obj,self)
	self.__index = self
	
	
return obj
end


function Controller:iniciarSudoku()
	print('Controller criado!')
	
	imagem = Imagem:new()
	
	
	print('Nivel: '..self.getNivelJogo()..' Tempo: '..self.getTempo()..' Pontuacao: '..self.getPontuacao())
	registro = Registro:new(self.getNivelJogo())
	self.setSudoku(registro:getSudoku())	
	print('Sudoku importado!')	
	print('Importando posicionamento do tabuleiro e cursor!')	
	self.setPosicionamento(registro:getPosicionamento())
	print('Fim de Importacao!')	
	
	--tabuleiro
	
	tabuleiro = Tabuleiro:new(self.getSudoku(),self.getPosicionamento())
	tabuleiro:montar()
	self.setTabuleiro(tabuleiro)
	
	imagem:setTabuleiro(tabuleiro)
	imagem:reDraw()
	
	
end
