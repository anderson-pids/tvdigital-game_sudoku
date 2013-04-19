
Peca = {}

function Peca:new()
	local attr = {x,y,numero,fixo=false}
	
	local function getNumero()
		return attr.numero
	end
	
	local function setX(pX)
		attr.x = pX
	end
	
	local function setY(pY)
		attr.y = pY
	end
	
	local function setNumero(num)
		if attr.fixo==false then
			attr.numero = num
		end
	end
	
	local function setFixo(status)
		attr.fixo = status
	end
	
	local function isFixo()
		return attr.fixo
	end
	
	local function getX()
		return attr.x
	end
		
	local function getY()
		return attr.y
	end
	
	obj = {
			getNumero=getNumero,
			setNumero=setNumero, isFixo=isFixo,
			setX=setX, setY=setY, setFixo=setFixo,
			getX=getX,getY=getY
	}
		
	setmetatable(obj,self)
	self.__index = self
	
	return obj
	

end