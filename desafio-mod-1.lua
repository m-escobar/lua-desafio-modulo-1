-- Set UTF-8 for Windows Terminal
if package.config:sub(1,1) == '\\' then
    os.execute('chcp 65001')
    os.execute('cls')
else
    os.execute('clear')
end


-- Monster
local monsterName = 'Octus Fire'
local description = 'Um polvo monstruoso que atira bolas de fogo.'
local emoji = '\u{1F525}'
local sound = 'hissss'
local favoriteTime = 'Diurno'
local item = 'Fogo'


-- Attributes
local attackAttribute = 8
local defenseAttribute = 2
local lifeAttribute = 6
local speedAttribute = 7
local inteligenceAttribute = 4

-- Image
local monsterImage = [[

                            .---.         ,,
                 ,,        /     \       ;,,'
                ;, ;      (  o  o )      ; ;
                  ;,';,,,  \  \/ /      ,; ;
               ,,,  ;,,,,;;,`   '-,;'''',,,'
              ;,, ;,, ,,,,   ,;  ,,,'';;,,;''';
                 ;,,,;    ~~'  '';,,''',,;''''
                                    '''
]]


-- Create progress bar
local function getProgressBar(attribute)
    local fullChar = '▮'
    local emptyChar = '▯'

    local result = ''
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end


local function addSpaces(size)
	local result = ''

	for _pos = size, 60, 1 do
		result = result .. ' '
	end

	return result
end


local function print_line(params, start, fixSize)
    local spaces = ''
    local endSpaces = ''
    local line = ''

    if params == nil then
    	params = ''
    end

    if start ~= nil then
    	for _x = 1, start, 1 do
        	spaces = spaces .. '    '
        end
    end

    if fixSize == nil then
        fixSize = 0
    end

    line = '| ' .. spaces .. params

    endSpaces = addSpaces(utf8.len(line) - fixSize)

    print(line .. endSpaces .. '|')
end


-- Print Card
print('--------------------------------------------------------------')
print_line()
print_line('Eu sou o ' .. monsterName)
print_line(description)
print_line()
print_line('Item: ' .. item)
print_line('Som: ' .. sound)
print_line('Emoji Favorito: ' .. emoji, nil, -1)
print_line('Horário Favorito: ' .. favoriteTime)
print_line()
print_line('Atributos')
print_line('Ataque:       ' .. getProgressBar(attackAttribute), 1)
print_line('Defesa:       ' .. getProgressBar(defenseAttribute), 1)
print_line('Vida:         ' .. getProgressBar(lifeAttribute), 1)
print_line('Velocidade:   ' .. getProgressBar(speedAttribute), 1)
print_line('Inteligência: ' .. getProgressBar(inteligenceAttribute), 1)
print_line()
print('--------------------------------------------------------------')
print(monsterImage)
print('--------------------------------------------------------------')
