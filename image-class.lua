

Imagem = {}

function Imagem:new()
	local attr = {tabuleiro, cursor}
	local function setTabuleiro(tab)
		attr.tabuleiro = tab
	end
	
	local function setCursor(c)
		attr.cursor = c
	end
	
	local function getTabuleiro()
		return attr.tabuleiro
	end

	local function getBackground()
		return background
	end
	
	obj = {getBackground=getBackground,setTabuleiro=setTabuleiro,getTabuleiro=getTabuleiro}	
	-- heranca	
	setmetatable(obj,self)
	self.__index = self
	return obj	
end

function Imagem:reDraw()
	canvas:attrColor('black')
	canvas:drawRect('fill', 0,0, canvas:attrSize())
	
	local background = canvas:new('media/images/tabuleiro.png')
	canvas:compose(0,0,background)
	
	--tabuleiro
	tab = self.getTabuleiro()
	canvas:attrFont("vera", 24)
	canvas:attrColor("red")
	
	for i=1,9 do
		for j=1,9 do
			
			local x = tab:getX(i,j)
			print(x)
			local y = tab:getY(i,j)
			print(y)
			local num = tab:getNumero(i,j)
			print(num)
			if num == 0 then num='' end
			canvas:drawText(x, y, num)
		end
	end
	
	canvas:flush()
end

function Imagem:drawText(text,x,y,font,fontSize,R,G,B,A)
	canvas:attrColor(R,G,B,A)	
	canvas:attrFont(font,fontSize)
	canvas:drawText(x,y,text)
end