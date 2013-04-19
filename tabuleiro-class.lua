require 'peca-class'

Tabuleiro = {}


function Tabuleiro:new(pSudoku,pPosicao)
	local attr = {sudoku=pSudoku, matPosicao = pPosicao}
	local tabuleiro = {}
	
	for i=1,9 do
		tabuleiro[i] = {}     -- cria uma nova linha
		for j=1,9 do
			tabuleiro[i][j] = Peca:new()  --coloca em cada posicao do tabuleiro uma peca vazia
		end
	end

	local function getSudoku()
		return attr.sudoku
	end	
	
	local function getMatPosicao()
		return attr.matPosicao
	end
	
	local function setX(x,y,posX)
		print('setando X')
		tabuleiro[x][y]:setX(posX)
		print('X: ok!')
	end
	
	local function setY(x,y,posY)
		tabuleiro[x][y]:setY(posY)
	end
	
	local function setNumero(x,y,num)
		tabuleiro[x][y]:setNumero(num)
	end
	
	local function setFixo(x,y,fixo)
		tabuleiro[x][y]:setFixo(fixo)
	end
	
	local function getNumero(x,y)
		return tabuleiro[x][y]:getNumero()
	end
	
	local function getX(x,y)
		return tabuleiro[x][y]:getX()
	end
	
	local function getY(x,y)
		return tabuleiro[x][y]:getY()
	end	
	
	local function getTabuleiro()
		return tabuleiro
	end
	
	obj = {
		getSudoku=getSudoku,getMatPosicao=getMatPosicao,
		setX=setX,setY=setY,setNumero=setNumero,setFixo=setFixo,
		getNumero=getNumero, getX=getX, getY=getY, getTabuleiro=getTabuleiro
	}
		
	setmetatable(obj,self)
	self.__index = self
	
	return obj
	
end

function Tabuleiro:montar()
	print('Iniciando a montagem do tabuleiro..')
	matSudoku = self.getSudoku()
	matPosicao = self.getMatPosicao()
	
	print('Criando tabuleiro..')
	--inicializa matriz tabuleiro com zero
	for i=1,9 do
		--self.tabuleiro[i] = {}
		for j=1,9 do
			local fixo = false		
			local x = matPosicao.tabuleiro.x[j]
			local y = matPosicao.tabuleiro.y[i]
			local num = matSudoku.incompleto[i][j]
			
			if num ~= 0 then 
				fixo = true
			end
			print('iniciando insercoes no tabuleiro')
			self.setX(i,j,x)
			self.setY(i,j,y)
			self.setNumero(i,j,num)
			self.setFixo(i,j,fixo)
			print('peca inserida no tabuleiro!')
			
		end
	end
	
	print('Tabuleiro: ok!')
	
end