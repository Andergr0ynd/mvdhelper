script_name('mvd-lelper')
script_author('Andergr0ynd')
script_version("02.11.2024")
local name = "[Special] " -- Тэг
local white = "{ff0000}" -- Серо-белый цвет
local red = "{ff0000}" -- Красный цвет для тэга
local tag = red .. name .. white -- Готовый тэг
local imgui = require 'imgui'
local inicfg = require 'inicfg'
local key = require 'vkeys'
local vkeys = require 'vkeys'
local sampev = require 'lib.samp.events'
local encoding = require "encoding"
require 'lib.sampfuncs'
require 'lib.moonloader'
encoding.default = 'CP1251'
u8 = encoding.UTF8

-- для msm / setmark
local msm = ''
local act = false

function main()
    repeat wait(0) until isSampAvailable()
    sampAddChatMessage(tag .. 'Вы используете {006AFF}MVD Helper {fff000}от Andergr0ynd | Radmir RP', -1)
    sampAddChatMessage(tag .. 'Предложить идею {31b7d7}https://vk.com/andergr0ynd', -1)
    sampRegisterChatCommand('msu', msu)
    sampRegisterChatCommand('marrest', marrest)
    sampRegisterChatCommand('mtakelic', mtakelic)
    sampRegisterChatCommand('mmtakelic', mmtakelic)
    sampRegisterChatCommand('msearch', msearch)
    sampRegisterChatCommand('mremove', mremove)
    sampRegisterChatCommand('mcuff', mcuff)
    sampRegisterChatCommand('muncuff', muncuff)
    sampRegisterChatCommand('mescort', mescort)
    sampRegisterChatCommand('mticket', mticket)
    sampRegisterChatCommand('mputpl', mputpl)
    sampRegisterChatCommand('mejectout', mejectout)
    sampRegisterChatCommand('mg', mg)
    sampRegisterChatCommand('mpg', mpg)
    sampRegisterChatCommand('mrob', mrob)
    sampRegisterChatCommand('msm', msm)
    wait(-1)
end

-- для msm / setmark
 function msm(arg)
    msm = arg
    if act then
        act = false
        sampAddChatMessage(tag.. "{006AFF}MVD Helper: {FFFFFF}Поиск преступника остановлен", -1)
    else
            if msm:match('%d+') then
                act = true
                sampAddChatMessage(tag.. '{006AFF}MVD Helper: {FFFFFF}Вы начали поиск преступника ID: '..msm, -1)
                
                lua_thread.create(function ()
                    while act do
                        wait(2000)
                        sampSendChat('/setmark '..msm)
                    end
                end)
            else
                sampAddChatMessage(tag.. '{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID... Пример: /msm 123', -1)
            end
        end
    end

function marrest(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me включил бортовой компьютер')
    wait(650)
    sampSendChat('/do Бортовой компьютер включен.')
    wait(650)
    sampSendChat('/me ввел данные о преступнике')
    wait(650)
    sampSendChat('/me передал данные в отдел')
    wait(650)
    sampSendChat('/me выключил бортовой компьютер')
    wait(650)
    sampSendChat('/me передал преступника в участок')
    wait(650)
    sampSendChat('/arrest '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function msu(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me достал КПК из кармана')
    wait(650)
    sampSendChat('/do КПК в руках.')
    wait(650)
    sampSendChat('/me внес данные преступника в базу данных МВД')
    wait(650)
    sampSendChat('/me убрал КПК')
    wait(650)
    sampSendChat('/do КПК в кармане.')
    wait(650)
    sampSendChat('/su '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function mtakelic(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me взял планшет')
    wait(650)
    sampSendChat('/do Планшет в руке.')
    wait(650)
    sampSendChat('/me записал данные о нарушении и нарушителе')
    wait(650)
    sampSendChat('/do Данные обновлены.')
    wait(650)
    sampSendChat('/me забрал водительские удостоверение')
    wait(650)
    sampSendChat('/do Водительское удостоверение забрано.')
    wait(650)
    sampSendChat('/mtakelic '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function mmtakelic(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me взял планшет')
    wait(650)
    sampSendChat('/do Планшет в руке.')
    wait(650)
    sampSendChat('/me записал данные о нарушении и нарушителе')
    wait(650)
    sampSendChat('/do Данные обновлены.')
    wait(650)
    sampSendChat('/me забрал лицензию на оружие')
    wait(650)
    sampSendChat('/do Лицензия на оружие забрано.')
    wait(650)
    sampSendChat('/mmtakelic '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function msearch(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/do На поясе висит сумка.')
    wait(650)
    sampSendChat('/me достал перчатки, после чего надел их на руки')
    wait(650)
    sampSendChat('/me провел руками по верхним частям тела в области груди и рук')
    wait(650)
    sampSendChat('/anim 6 3')
    wait(650)
    sampSendChat('/me провел руками по туловищу в области пояса и карманов')
    wait(650)
    sampSendChat('/me ощупывает нижнюю часть тела')
    wait(650)
    sampSendChat('/me провел руками по нижним частям тела в области ног')
    wait(650)
    sampSendChat('/anim 6 1')
    wait(650)
    sampSendChat('/search '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function mremove()
    lua_thread.create(function()
	sampSendChat('У Вас найдены запрещённые предметы, они будут изъяты.')
    wait(650)
    sampSendChat('/do В сумке лежит пакет "ZIP-Lock".')
    wait(650)
    sampSendChat('/me открыл сумку, затем достал из неё пакет "ZIP-Lock"')
    wait(650)
    sampSendChat('/do Пакет "ZIP-Lock" в руке.')
    wait(650)
    sampSendChat('/me раскрыл пакет, затем положил в него запрещённые предметы')
    wait(650)
    sampSendChat('/remove')
    wait(650)
    sampSendChat('/do Предметы в пакете.')
    wait(650)
    sampSendChat('/me закрыл пакет "ZIP-Lock", затем положил пакет в сумку')
    wait(650)
    sampSendChat('/todo Закрывая сумку*Запрещённые предметы изъяты, Вы задержаны.')
    end)
end

function mcuff(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me протянул руку к наручникам затем снял с пояса наручники')
    wait(650)
    sampSendChat('/do Наручники в руке.')
    wait(650)
    sampSendChat('/me заломал руки человека за спину')
    wait(650)
    sampSendChat('/me надел наручники на человека')
    wait(650)
    sampSendChat('/do Человек в наручниках.')
    wait(650)
    sampSendChat('/cuff '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function muncuff(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/do Наручники на задержанном.')
    wait(650)
    sampSendChat('/me снял наручники с задержанного')
    wait(650)
    sampSendChat('/me повесил наручники на пояс')
    wait(650)
    sampSendChat('/do Наручники на поясе.')
    wait(650)
    sampSendChat('/uncuff '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function mescort(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me схватил задержанного за руки')
    wait(650)
    sampSendChat('/me заломал задержанного и повёл задержанного')
    wait(650)
    sampSendChat('/escort '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function mticket(arg)
    if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me достал планшет')
    wait(650)
    sampSendChat('/do Планшет в руке.')
    wait(650)
    sampSendChat('/me записал данные о нарушении и нарушителе')
    wait(650)
    sampSendChat('/do Данные заполнены.')
    wait(650)
    sampSendChat('/me отправил данные в базу данных')
    wait(650)
    sampSendChat('/do Данные отправлены.')
    wait(650)
    sampSendChat('/me убрал планшет')
    wait(650)
    sampSendChat('/ticket '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function mputpl(arg)
    if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me открыл дверь машины')
    wait(650)
    sampSendChat('/me затащил преступника в машину')
    wait(650)
    sampSendChat('/me закрыл дверь')
    wait(650)
    sampSendChat('/do Дверь закрыта.')
    wait(650)
    sampSendChat('/putpl '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function mejectout(arg)
    if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ударил прикладом АК-47 по стеклу автомобиля')
    wait(650)
    sampSendChat('/do Стекло разбито.')
    wait(650)
    sampSendChat('/me схватил человека напротив')
    wait(650)
    sampSendChat('/me вытащил человека и повалил на землю')
    wait(650)
    sampSendChat("/ejectout "..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end

function mg()
    lua_thread.create(function()
	sampSendChat('/me взял с плеча рацию в руки')
    wait(650)
    sampSendChat('/me зажал кнопку разговора на рации')
    wait(650)
    sampSendChat('/m [МВД] Водитель прижмитесь к обочине')
    wait(650)
    sampSendChat('/m [МВД] Или мы вынужденны будем открыть огонь на поражение')
    end)
end

function mrob()
    lua_thread.create(function()
	sampSendChat('/do Фоторобот преступника в кармане.')
    wait(650)
    sampSendChat('/me протянул руку в карман и вытащил фоторобот преступника')
    wait(650)
    sampSendChat('/do Фоторобот преступника в руке.')
    wait(650)
    sampSendChat('/me развернул фоторобот преступника и протянул перед человеком на против')
    wait(650)
    sampSendChat('/do Лицо гражданина совпадает с преступником на фотороботе.')
    end)
end

function mpg(arg)
    if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me взял рацию в руки')
    wait(650)
    sampSendChat('/do Рация в руках.')
    wait(650)
    sampSendChat('/me сообщил диспетчеру, что начал погоню за нарушителем')
    wait(650)
    sampSendChat("/pg "..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}Похоже, ты не ввел ID...', -1)
        end
    end
