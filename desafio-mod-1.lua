-- Set UTF-8 for Windows Terminal
if package.config:sub(1,1) == '\\' then os.execute('chcp 65001')
end


-- Monster
local monsterName = 'Octus Fire'
local description = 'Um polvo monstruoso que atira bolas de fogo.'
local emoji = '💥'
local sound = 'Tssssss'
local favoriteTime = 'Noturno'
local item = 'Pólvora'


-- Attributes
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2


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


-- Print Card
print('===================================================')
print('| ')
print('| ' .. monsterName)
print('| ' .. description)
print('| ')
print('| Item: ' .. item)
print('| Som: ' .. sound)
print('| Emoji Favorito: ' .. emoji)
print('| Horário Favorito: ' .. favoriteTime)
print('| ')
print('| Atributos')
print('|    Ataque:       ' .. getProgressBar(attackAttribute))
print('|    Defesa:       ' .. getProgressBar(defenseAttribute))
print('|    Vida:         ' .. getProgressBar(lifeAttribute))
print('|    Velocidade:   ' .. getProgressBar(speedAttribute))
print('|    Inteligência: ' .. getProgressBar(inteligenceAttribute))
print('| ')
print('===================================================')
