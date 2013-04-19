
local _G, print, setfenv, type, io, pairs, loadfile = 
      _G, print, setfenv, type, io, pairs, loadfile
      
module "config"
data = {}
pos = {}
--Nome do arquivo de configuração ser ser usado por padrão 
local fileName = "reg_sudoku.lua"

function load(_fileName)
	--Nome do arquivo lua de configuração a ser lido
	print('Acessando tabela lua...')
	fileName = _fileName or fileName

	--Executa o código do arquivo lua contendo as configurações
	local execFile, erro = loadfile(fileName)
	
	if execFile then
	   --Informa que as variáveis globais definidas no arquivo de config
	   --serão criadas dentro da tabela local config
	   setfenv(execFile, data)
	   --Executa o código do arquivo de config, para criar as variáveis 
	   --existentes lá
	   execFile()
	   return true
	else
	   return false, erro
	end
end

function loadPosition(_fileName)
	--Nome do arquivo lua de configuração a ser lido
	print('Acessando tabela lua...')
	fileName = _fileName or fileName

	--Executa o código do arquivo lua contendo as configurações
	local execFile, erro = loadfile(fileName)
	
	if execFile then
	   --Informa que as variáveis globais definidas no arquivo de config
	   --serão criadas dentro da tabela local config
	   setfenv(execFile, pos)
	   --Executa o código do arquivo de config, para criar as variáveis 
	   --existentes lá
	   execFile()
	   return true
	else
	   return false, erro
	end
end