----------------
-- CLASSES: Inclusao das classes
----------------
require 'controller-class'
----------------

Sudoku = {}

function Sudoku:new()
	local attr = {	nivel='', tempo='', pontuacao = '',
					novo=false, reiniciar=false, sair=false, 
					confirmacao=false
	}
	local objController
	
	local function setController(ctrl)
		objController = ctrl
	end
	
	local function getController()
		return objController
	end
	
	local function setNivel(value)
		attr.nivel = value
	end
	local function setTempo(value)
		attr.tempo = value
	end
	local function setPontuacao(value)
		attr.pontuacao = value
	end
	
	local function getNivel()
		return attr.nivel
	end
	
	local function getTempo()
		return attr.tempo
	end
	
	local function getPontuacao()
		return attr.pontuacao
	end
	
	local function checkPropriedades()
		if (attr.nivel~='') and (attr.tempo~='') and (attr.pontuacao~='') then
			print('Propriedades ok! instanciando controller do jogo..')
			return true
		else return false
		end
	end
	local function printAttr()
		if attr.nivel~='' then print('Nivel: '..attr.nivel) else print('Nivel: no value') end
		if attr.tempo~='' then print('Tempo: '..attr.tempo) else print('Tempo: no value') end
		if attr.pontuacao~='' then print('Pontuacao: '..attr.pontuacao) else print('Pontuacao: no value') end
	end
	obj = { setNivel=setNivel, setTempo=setTempo, 
			setPontuacao=setPontuacao, printAttr=printAttr,
			checkPropriedades=checkPropriedades, setController=setController,
			getNivel=getNivel, getTempo=getTempo, getPontuacao=getPontuacao,
			getController=getController
		}
	
	print('iniciando classe sudoku....')
		
	setmetatable(obj,self)
	self.__index = self
	
	return obj
end


function Sudoku:novoJogo()
		if	(self.checkPropriedades())	then
			print('Comecando um novo Jogo..')
			controller = Controller:new(self.getNivel(),self.getTempo(),self.getPontuacao())
			controller:iniciarSudoku()
			self.setController(controller)							
		end
end

function Sudoku:reiniciarJogo()
		print('Reiniciando Jogo..')
end

function Sudoku:sairJogo()
		print('Saindo do Jogo..')
end

function Sudoku:navegar(key)
		print('Navegacao no tabuleiro com a tecla: '..key)
end

function Sudoku:jogar(key)
		print('Jogado no tabuleiro com o numero: '..key)
end

function Sudoku:confirmar(key)
		if (key=='YELLOW') then
			sudoku:reiniciarJogo()
		elseif (key=='BLUE') then
			sudoku:novoJogo()
		elseif (key=='GREEN') then
			sudoku:sairJogo()
		end
end

function Sudoku:showRegras()
		print('Mostrando Regras..')
end

function Sudoku:tratador(evt)
	
	if (evt.class == 'ncl') and (evt.type == 'attribution') then
		if(evt.name == 'nivel') then
			self.setNivel(evt.value)
		end
		if(evt.name == 'tempo') then
			self.setTempo(evt.value)
		end
		if(evt.name == 'pontuacao') then
			self.setPontuacao(evt.value)
		end
		self.printAttr()
		sudoku:novoJogo()
	end
	
	
	if (evt.class == 'key') and (evt.type == 'press') then  
		if (evt.key=='CURSOR_UP') or (evt.key=='CURSOR_DOWN') 
			or (evt.key=='CURSOR_RIGHT') or (evt.key=='CURSOR_LEFT') then
				sudoku:navegar(evt.key)
		elseif (evt.key=='1') or (evt.key=='2') or (evt.key=='3') or
			(evt.key=='4') or (evt.key=='5') or (evt.key=='6') or (evt.key=='7')
			or (evt.key=='8') or (evt.key=='9') or (evt.key=='0') then
				sudoku:jogar(evt.key)
		elseif (evt.key=='RED') then
				sudoku:showRegras()
		elseif (evt.key=='YELLOW') or (evt.key=='GREEN') or (evt.key=='BLUE')  then
				sudoku:confirmar(evt.key)	
		end
	end
end

sudoku = Sudoku:new()

function handler(evt)
	sudoku:tratador(evt)
end

event.register(handler)