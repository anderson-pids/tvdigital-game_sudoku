
require 'config'

Registro = {}


function Registro:new(pNivel)
	
	local attr = {nivel=pNivel}
	
	local function getNivel()
		return attr.nivel
	end
	
	obj = {getNivel=getNivel,setNivel=setNivel}
		
	setmetatable(obj,self)
	self.__index = self
	
	return obj

end

function Registro:escolherAleatorio()
	print('Escolhendo Sudoku aleatoriamente..')
	math.randomseed(event.uptime())
	return math.random(0,2) + 1
end
 
 
function Registro:getSudoku()
	
	id = self.escolherAleatorio()
	print('Tabela Sudoku carregada! Id randomico:'..id)
	
	
	
	if self.getNivel()=='calouro' then
		config.load('reg_calouro.lua')
		return config.data.calouro[id]
	elseif self.getNivel()=='veterano' then
		config.load('reg_veterano.lua')
		return config.data.veterano[id]
	elseif self.getNivel()=='formando' then
		config.load('reg_formando.lua')
		return config.data.formando[id]
	end
	
end

function Registro:getPosicionamento()
	config.loadPosition('reg_posicao.lua')
	return config.pos.posicao
end