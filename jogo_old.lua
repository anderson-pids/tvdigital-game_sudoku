----------------------------------------------------------------------------------------------------------------
--TABULEIRO: guarda o background (experimentalmente o tabuleiro est� como local)
----------------------------------------------------------------------------------------------------------------
local img = canvas:new('media/images/tabuleiro.png')
local tabuleiro = { img=img, x=0, y=0}

----------------------------------------------------------------------------------------------------------------
--CURSOR- Junto com a fun��o de movimenta��o
----------------------------------------------------------------------------------------------------------------
local img = canvas:new('media/images/lapis.gif')

local function mover (direcao)
	if direcao == "direita" then 
		cursor.x = cursor.x + 62
		--marcador.x = quadro[ondeestou()].x || cursor.x + 57
	elseif direcao == "esquerda" then 
		cursor.x = cursor.x - 62
		--marcador.x = quadro[ondeestou()].x || cursor.x + 57
	elseif direcao == "cima" then 
		cursor.y = cursor.y - 52
		-- cursor.y - 57
		--marcador.y = quadro[ondeestou()].y
	elseif direcao == "baixo" then
		cursor.y = cursor.y + 52
		-- cursor.y - 57 
		--marcador.y = quadro[ondeestou()].y
	end
end

cursor = { img=img, x=160, y=140, mover = mover }

--[[
x= 230

local img = canvas:new('/imagens/marcador.png')
marcador = { img=img, x=200, y=110, mover = mover }
]]--

----------------------------------------------------------------------------------------------------------------
--ONDEESTOU : Localizador do cursor
----------------------------------------------------------------------------------------------------------------
function ondeestou()
x  = math.floor((cursor.x-160)/58) + 1
-- cursor.x -200
y  = math.floor((cursor.y-90)/58) + 1
-- cursor.y -110
saida = y*9+(x-9)
return saida
end

----------------------------------------------------------------------------------------------------------------
--JOGO ORIGINAL, contando da direita-esquerda/cima-baixo, agrupando em linhas
----------------------------------------------------------------------------------------------------------------
jogocerto = {}
jogoduvidoso= {}

jogocerto[1] = 5
jogocerto[2] = 6
jogocerto[3] = 9
jogocerto[4] = 2
jogocerto[5] = 4
jogocerto[6] = 7
jogocerto[7] = 8
jogocerto[8] = 1
jogocerto[9] = 3

jogocerto[10] = 3
jogocerto[11] = 7
jogocerto[12] = 1
jogocerto[13] = 9
jogocerto[14] = 8
jogocerto[15] = 5
jogocerto[16] = 4
jogocerto[17] = 8
jogocerto[18] = 2

jogocerto[19] = 8
jogocerto[20] = 4
jogocerto[21] = 2
jogocerto[22] = 3
jogocerto[23] = 1
jogocerto[24] = 6
jogocerto[25] = 9
jogocerto[26] = 7
jogocerto[27] = 5

jogocerto[28] = 1
jogocerto[29] = 8
jogocerto[30] = 5
jogocerto[31] = 7
jogocerto[32] = 2
jogocerto[33] = 4
jogocerto[34] = 3
jogocerto[35] = 9
jogocerto[36] = 6

jogocerto[37] = 2
jogocerto[38] = 9
jogocerto[39] = 6
jogocerto[40] = 8
jogocerto[41] = 5
jogocerto[42] = 3
jogocerto[43] = 7
jogocerto[44] = 4
jogocerto[45] = 1

jogocerto[46] = 7
jogocerto[47] = 3
jogocerto[48] = 4
jogocerto[49] = 1
jogocerto[50] = 6
jogocerto[51] = 9
jogocerto[52] = 2
jogocerto[53] = 5
jogocerto[54] = 8

jogocerto[55] = 4
jogocerto[56] = 2
jogocerto[57] = 8
jogocerto[58] = 5
jogocerto[59] = 7
jogocerto[60] = 1
jogocerto[61] = 6
jogocerto[62] = 3
jogocerto[63] = 9

jogocerto[64] = 6
jogocerto[65] = 1
jogocerto[66] = 3
jogocerto[67] = 4
jogocerto[68] = 9
jogocerto[69] = 2
jogocerto[70] = 5
jogocerto[71] = 8
jogocerto[72] = 7

jogocerto[73] = 9
jogocerto[74] = 5
jogocerto[75] = 7
jogocerto[76] = 6
jogocerto[77] = 3
jogocerto[78] = 8
jogocerto[79] = 1
jogocerto[80] = 2
jogocerto[81] = 4

----------------------------------------------------------------------------------------------------------------
--JOGO NO TABULEIRO PARA SER RESPONDIDO:  contando da direita-esquerda/cima-baixo, agrupando em linhas novamente
----------------------------------------------------------------------------------------------------------------
quadro = {}
quadro[1] = {numero = 5,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 106,fixo = false}
quadro[2] = {numero = 6,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 106,fixo = false}--
quadro[3] = {numero = 9,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 106,fixo = false}--
quadro[4] = {numero = 2,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 106,fixo = false}
quadro[5] = {numero = 4,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 106,fixo = false}
quadro[6] = {numero = 7,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 106,fixo = false}
quadro[7] = {numero = 8,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 106,fixo = false}--
quadro[8] = {numero = 1,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 106,fixo = false}--
quadro[9] = {numero = 3,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 106,fixo = false}

quadro[10] = {numero = 3,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 157,fixo = false}--
quadro[11] = {numero = 7,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 157,fixo = false}--
quadro[12] = {numero = 1,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 157,fixo = false}
quadro[13] = {numero = 9,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 157,fixo = false}
quadro[14] = {numero = 8,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 157,fixo = false}--
quadro[15] = {numero = 5,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 157,fixo = false}
quadro[16] = {numero = 4,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 157,fixo = false}
quadro[17] = {numero = 8,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 157,fixo = false}--
quadro[18] = {numero = 2,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 157,fixo = false}--

quadro[19] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 209,fixo = false}
quadro[20] = {numero = 4,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 209,fixo = false}
quadro[21] = {numero = 2,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 209,fixo = false}
quadro[22] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 209,fixo = false}
quadro[23] = {numero = 1,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 209,fixo = false}
quadro[24] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 209,fixo = false}
quadro[25] = {numero = 9,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 209,fixo = false}
quadro[26] = {numero = 7,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 209,fixo = false}
quadro[27] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 209,fixo = false}

quadro[28] = {numero = 1,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 263,fixo = false}
quadro[29] = {numero = 8,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 263,fixo = false}
quadro[30] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 263,fixo = false}
quadro[31] = {numero = 7,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 263,fixo = false}
quadro[32] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 263,fixo = false}
quadro[33] = {numero = 4,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 263,fixo = false}
quadro[34] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 263,fixo = false}
quadro[35] = {numero = 9,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 263,fixo = false}
quadro[36] = {numero = 6,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 263,fixo = false}

quadro[37] = {numero = 2,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 315,fixo = false}
quadro[38] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 315,fixo = false}
quadro[39] = {numero = 6,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 315,fixo = false}
quadro[40] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 315,fixo = false}
quadro[41] = {numero = 5,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 315,fixo = false}
quadro[42] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 315,fixo = false}
quadro[43] = {numero = 7,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 315,fixo = false}
quadro[44] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 315,fixo = false}
quadro[45] = {numero = 1,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 315,fixo = false}

quadro[46] = {numero = 7,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 366,fixo = false}
quadro[47] = {numero = 3,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 366,fixo = false}
quadro[48] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 366,fixo = false}
quadro[49] = {numero = 1,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 366,fixo = false}
quadro[50] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 366,fixo = false}
quadro[51] = {numero = 9,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 366,fixo = false}
quadro[52] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 366,fixo = false}
quadro[53] = {numero = 5,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 366,fixo = false}
quadro[54] = {numero = 8,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 366,fixo = false}

quadro[55] = {numero = 4,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 419,fixo = false}
quadro[56] = {numero = 2,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 419,fixo = false}
quadro[57] = {numero = 8,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 419,fixo = false}
quadro[58] = {numero = 5,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 419,fixo = false}
quadro[59] = {numero = 7,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 419,fixo = false}
quadro[60] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 419,fixo = false}
quadro[61] = {numero = 6,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 419,fixo = false}
quadro[62] = {numero = 3,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 419,fixo = false}
quadro[63] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 419,fixo = false}

quadro[64] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 470,fixo = false}
quadro[65] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 470,fixo = false}
quadro[66] = {numero = 3,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 470,fixo = false}
quadro[67] = {numero = 4,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 470,fixo = false}
quadro[68] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 470,fixo = false}
quadro[69] = {numero = 2,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 470,fixo = false}
quadro[70] = {numero = 5,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 470,fixo = false}
quadro[71] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 470,fixo = false}
quadro[72] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 470,fixo = false}

quadro[73] = {numero = 9,img = canvas:new('media/images/numeros/vazio.png'), x =130,y= 522,fixo = false}
quadro[74] = {numero = 5,img = canvas:new('media/images/numeros/vazio.png'), x =188,y= 522,fixo = false}
quadro[75] = {numero = 7,img = canvas:new('media/images/numeros/vazio.png'), x =250,y= 522,fixo = false}
quadro[76] = {numero = 6,img = canvas:new('media/images/numeros/vazio.png'), x =315,y= 522,fixo = false}
quadro[77] = {numero = 3,img = canvas:new('media/images/numeros/vazio.png'), x =374,y= 522,fixo = false}
quadro[78] = {numero = 8,img = canvas:new('media/images/numeros/vazio.png'), x =436,y= 522,fixo = false}
quadro[79] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =499,y= 522,fixo = false}
quadro[80] = {numero = 0,img = canvas:new('media/images/numeros/vazio.png'), x =556,y= 522,fixo = false}
quadro[81] = {numero = 4,img = canvas:new('media/images/numeros/vazio.png'), x =618,y= 522,fixo = false}
----------------------------------------------------------------------------------------------------------------
--FUN��O TRAVARFIXOS - Trava os quadros que j� ir�o aparecer respondidos no tabuleiro a ser respondido
----------------------------------------------------------------------------------------------------------------
function travarfixos()
	for i =1,81,1 do
		if quadro[i].numero ~= 0 then
		   quadro[i].fixo = true
		   quadro[i].img = canvas:new('media/images/numeros/'..quadro[i].numero..'_certo.png')
		end
	end
end

----------------------------------------------------------------------------------------------------------------
--FUN��O CHECAR- Verifica se os n�meros marcados est�o certos
----------------------------------------------------------------------------------------------------------------
function checar()
  for i=1,81,1 do
	jogoduvidoso[i] = tonumber(quadro[i].numero)
	if quadro[i].numero ~= 0 and quadro[i].fixo == false then 
	   local temporario = tonumber(quadro[i].numero)
		if temporario == jogocerto[i] then
		   quadro[i].img = canvas:new('media/images/numeros/'..quadro[i].numero..'_azul.png')
		elseif temporario ~= jogocerto[i] then
		   quadro[i].img = canvas:new('media/images/numeros/'..quadro[i].numero..'_azul.png')
		end
	end
  end
  
  
  if jogoduvidoso == jogocerto then
	--event.post('out', { class='ncl', type='presentation', area='fim', transition='starts' })
	event.post { class  = 'ncl', type   = 'presentation', action = 'stop'}
	IGNORE = true
  end
end

----------------------------------------------------------------------------------------------------------------
--FUN��O MUDARIMAGENS - Permite alterar a imagem dos 'alvos' n�o travados
----------------------------------------------------------------------------------------------------------------
function mudarimagens(alvo, numero)
	if alvo.fixo == false then
 		if numero == '1' then 
    			alvo.img = canvas:new('media/images/numeros/1_azul.png')
			alvo.numero = numero
 		elseif numero == '2' then
			alvo.img = canvas:new('media/images/numeros/2_azul.png')
			alvo.numero = numero
		elseif numero == '3' then
			alvo.img = canvas:new('media/images/numeros/3_azul.png')
			alvo.numero = numero
   		elseif numero == '4' then
			alvo.img = canvas:new('media/images/numeros/4_azul.png')
			alvo.numero = numero
		elseif numero == '5' then
			alvo.img = canvas:new('media/images/numeros/5_azul.png')
			alvo.numero = numero
		elseif numero == '6' then
			alvo.img = canvas:new('media/images/numeros/6_azul.png')
			alvo.numero = numero
 		elseif numero == '7' then
			alvo.img = canvas:new('media/images/numeros/7_azul.png')
			alvo.numero = numero
 		elseif numero == '8' then
			alvo.img = canvas:new('media/images/numeros/8_azul.png')
			alvo.numero = numero
 		elseif numero == '9' then
			alvo.img = canvas:new('media/images/numeros/9_azul.png')
			alvo.numero = numero
		elseif numero == '0' then
			alvo.img = canvas:new('media/images/numeros/vazio.png')
			alvo.numero = numero
		end
	end
end


----------------------------------------------------------------------------------------------------------------
--FUN��O COMPORIMAGENS- Desenha os Quadros
----------------------------------------------------------------------------------------------------------------
function comporimagens(alvo)
    canvas:compose(alvo.x, alvo.y, alvo.img)
end

----------------------------------------------------------------------------------------------------------------
--REDRAW- Redesenha a tela
----------------------------------------------------------------------------------------------------------------
function redraw ()
	canvas:attrColor('black')
	canvas:drawRect('fill', 0,0, canvas:attrSize())
	canvas:compose(tabuleiro.x, tabuleiro.y, tabuleiro.img) --desenha background
 	--canvas:compose(marcador.x, marcador.y, marcador.img) --desenha o marcador que est� muito feio!
   
    for i=1,81,1 do

    comporimagens (quadro[i])

    end
   
    canvas:compose(cursor.x, cursor.y, cursor.img) --desenha o cursor	
	
   
canvas:flush()

end

----------------------------------------------------------------------------------------------------------------
-- HANDLER
----------------------------------------------------------------------------------------------------------------
function handler (evt)
  if IGNORE then
	return
  end

  if evt.class == 'key' and evt.type == 'press'
	then
	if evt.key == 'CURSOR_UP' and cursor.y > 156 then
		cursor.mover("cima")
  	elseif evt.key == 'CURSOR_DOWN' and cursor.y < 535 then
		cursor.mover("baixo")
	elseif evt.key == 'CURSOR_LEFT' and cursor.x > 166 then
	-- cursor.x > 256
		cursor.mover("esquerda")
	elseif evt.key  == 'CURSOR_RIGHT' and cursor.x < 615 then
	-- cursor.x < 685
		cursor.mover("direita")
	elseif evt.key == 'RED' then
		event.post { class  = 'ncl', type = 'presentation', action = 'stop'}
		event.post{ class='ncl', type='presentation', label='fim', action='start' }	
	elseif evt.key  == '1' or evt.key  == '2' or evt.key  == '3' or evt.key  == '4' or evt.key  == '5' or evt.key  == '6' or evt.key  == '7' or evt.key  == '8' or evt.key  == '9' or evt.key  == '0' then
		mudarimagens(quadro[ondeestou()],evt.key)
		checar()	
	   	end

redraw()
  
  end
end
----------------------------------------------------------------------------------------------------------------
--A��O
----------------------------------------------------------------------------------------------------------------
--carregarjogo()

travarfixos()
redraw()
event.register(handler)