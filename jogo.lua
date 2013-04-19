
function tratador(evt)

--local background = {img = img, x = 0, y = 0}
background = canvas:new('media/images/tabuleiro.jpg') -- Plano de fundo




--sudoku = Sudoku:new()
--sudoku.init()
	
--[[	if evt.class ~= 'ncl' then return end
    if evt.type ~= 'attribution' then return end
    
    if (evt.name == 'nivel') then 
        nivel = evt.value
        print(nivel)
    	canvas:drawText(100, 80, nivel)
    	redraw()		
	elseif(evt.name == 'tempo') then 
		nivel = evt.value
		print(nivel)
    	canvas:drawText(100, 100, nivel)
    	redraw()
	elseif(evt.name == 'pontuacao') then 
		nivel = evt.value
		print(nivel)
    	canvas:drawText(100, 120, nivel)
    	redraw()
	end	
	]]--
	
end
event.register(tratador)