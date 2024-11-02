script_name('mvd-lelper')
script_author('Andergr0ynd')
script_version("02.11.2024")
local name = "[Special] " -- ���
local white = "{ff0000}" -- ����-����� ����
local red = "{ff0000}" -- ������� ���� ��� ����
local tag = red .. name .. white -- ������� ���
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

-- ��� msm / setmark
local msm = ''
local act = false

function main()
    repeat wait(0) until isSampAvailable()
    sampAddChatMessage(tag .. '�� ����������� {006AFF}MVD Helper {fff000}�� Andergr0ynd | Radmir RP', -1)
    sampAddChatMessage(tag .. '���������� ���� {31b7d7}https://vk.com/andergr0ynd', -1)
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

-- ��� msm / setmark
 function msm(arg)
    msm = arg
    if act then
        act = false
        sampAddChatMessage(tag.. "{006AFF}MVD Helper: {FFFFFF}����� ����������� ����������", -1)
    else
            if msm:match('%d+') then
                act = true
                sampAddChatMessage(tag.. '{006AFF}MVD Helper: {FFFFFF}�� ������ ����� ����������� ID: '..msm, -1)
                
                lua_thread.create(function ()
                    while act do
                        wait(2000)
                        sampSendChat('/setmark '..msm)
                    end
                end)
            else
                sampAddChatMessage(tag.. '{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID... ������: /msm 123', -1)
            end
        end
    end

function marrest(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ������� �������� ���������')
    wait(650)
    sampSendChat('/do �������� ��������� �������.')
    wait(650)
    sampSendChat('/me ���� ������ � �����������')
    wait(650)
    sampSendChat('/me ������� ������ � �����')
    wait(650)
    sampSendChat('/me �������� �������� ���������')
    wait(650)
    sampSendChat('/me ������� ����������� � �������')
    wait(650)
    sampSendChat('/arrest '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function msu(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ������ ��� �� �������')
    wait(650)
    sampSendChat('/do ��� � �����.')
    wait(650)
    sampSendChat('/me ���� ������ ����������� � ���� ������ ���')
    wait(650)
    sampSendChat('/me ����� ���')
    wait(650)
    sampSendChat('/do ��� � �������.')
    wait(650)
    sampSendChat('/su '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function mtakelic(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ���� �������')
    wait(650)
    sampSendChat('/do ������� � ����.')
    wait(650)
    sampSendChat('/me ������� ������ � ��������� � ����������')
    wait(650)
    sampSendChat('/do ������ ���������.')
    wait(650)
    sampSendChat('/me ������ ������������ �������������')
    wait(650)
    sampSendChat('/do ������������ ������������� �������.')
    wait(650)
    sampSendChat('/mtakelic '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function mmtakelic(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ���� �������')
    wait(650)
    sampSendChat('/do ������� � ����.')
    wait(650)
    sampSendChat('/me ������� ������ � ��������� � ����������')
    wait(650)
    sampSendChat('/do ������ ���������.')
    wait(650)
    sampSendChat('/me ������ �������� �� ������')
    wait(650)
    sampSendChat('/do �������� �� ������ �������.')
    wait(650)
    sampSendChat('/mmtakelic '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function msearch(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/do �� ����� ����� �����.')
    wait(650)
    sampSendChat('/me ������ ��������, ����� ���� ����� �� �� ����')
    wait(650)
    sampSendChat('/me ������ ������ �� ������� ������ ���� � ������� ����� � ���')
    wait(650)
    sampSendChat('/anim 6 3')
    wait(650)
    sampSendChat('/me ������ ������ �� �������� � ������� ����� � ��������')
    wait(650)
    sampSendChat('/me ��������� ������ ����� ����')
    wait(650)
    sampSendChat('/me ������ ������ �� ������ ������ ���� � ������� ���')
    wait(650)
    sampSendChat('/anim 6 1')
    wait(650)
    sampSendChat('/search '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function mremove()
    lua_thread.create(function()
	sampSendChat('� ��� ������� ����������� ��������, ��� ����� ������.')
    wait(650)
    sampSendChat('/do � ����� ����� ����� "ZIP-Lock".')
    wait(650)
    sampSendChat('/me ������ �����, ����� ������ �� �� ����� "ZIP-Lock"')
    wait(650)
    sampSendChat('/do ����� "ZIP-Lock" � ����.')
    wait(650)
    sampSendChat('/me ������� �����, ����� ������� � ���� ����������� ��������')
    wait(650)
    sampSendChat('/remove')
    wait(650)
    sampSendChat('/do �������� � ������.')
    wait(650)
    sampSendChat('/me ������ ����� "ZIP-Lock", ����� ������� ����� � �����')
    wait(650)
    sampSendChat('/todo �������� �����*����������� �������� ������, �� ���������.')
    end)
end

function mcuff(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me �������� ���� � ���������� ����� ���� � ����� ���������')
    wait(650)
    sampSendChat('/do ��������� � ����.')
    wait(650)
    sampSendChat('/me ������� ���� �������� �� �����')
    wait(650)
    sampSendChat('/me ����� ��������� �� ��������')
    wait(650)
    sampSendChat('/do ������� � ����������.')
    wait(650)
    sampSendChat('/cuff '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function muncuff(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/do ��������� �� �����������.')
    wait(650)
    sampSendChat('/me ���� ��������� � ������������')
    wait(650)
    sampSendChat('/me ������� ��������� �� ����')
    wait(650)
    sampSendChat('/do ��������� �� �����.')
    wait(650)
    sampSendChat('/uncuff '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function mescort(arg)
   if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ������� ������������ �� ����')
    wait(650)
    sampSendChat('/me ������� ������������ � ���� ������������')
    wait(650)
    sampSendChat('/escort '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function mticket(arg)
    if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ������ �������')
    wait(650)
    sampSendChat('/do ������� � ����.')
    wait(650)
    sampSendChat('/me ������� ������ � ��������� � ����������')
    wait(650)
    sampSendChat('/do ������ ���������.')
    wait(650)
    sampSendChat('/me �������� ������ � ���� ������')
    wait(650)
    sampSendChat('/do ������ ����������.')
    wait(650)
    sampSendChat('/me ����� �������')
    wait(650)
    sampSendChat('/ticket '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function mputpl(arg)
    if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ������ ����� ������')
    wait(650)
    sampSendChat('/me ������� ����������� � ������')
    wait(650)
    sampSendChat('/me ������ �����')
    wait(650)
    sampSendChat('/do ����� �������.')
    wait(650)
    sampSendChat('/putpl '..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function mejectout(arg)
    if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ������ ��������� ��-47 �� ������ ����������')
    wait(650)
    sampSendChat('/do ������ �������.')
    wait(650)
    sampSendChat('/me ������� �������� ��������')
    wait(650)
    sampSendChat('/me ������� �������� � ������� �� �����')
    wait(650)
    sampSendChat("/ejectout "..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end

function mg()
    lua_thread.create(function()
	sampSendChat('/me ���� � ����� ����� � ����')
    wait(650)
    sampSendChat('/me ����� ������ ��������� �� �����')
    wait(650)
    sampSendChat('/m [���] �������� ���������� � �������')
    wait(650)
    sampSendChat('/m [���] ��� �� ���������� ����� ������� ����� �� ���������')
    end)
end

function mrob()
    lua_thread.create(function()
	sampSendChat('/do ��������� ����������� � �������.')
    wait(650)
    sampSendChat('/me �������� ���� � ������ � ������� ��������� �����������')
    wait(650)
    sampSendChat('/do ��������� ����������� � ����.')
    wait(650)
    sampSendChat('/me ��������� ��������� ����������� � �������� ����� ��������� �� ������')
    wait(650)
    sampSendChat('/do ���� ���������� ��������� � ������������ �� ����������.')
    end)
end

function mpg(arg)
    if arg:find('(%d+)') then
    lua_thread.create(function()
	sampSendChat('/me ���� ����� � ����')
    wait(650)
    sampSendChat('/do ����� � �����.')
    wait(650)
    sampSendChat('/me ������� ����������, ��� ����� ������ �� �����������')
    wait(650)
    sampSendChat("/pg "..arg)
        end)
            else
            sampAddChatMessage(tag ..'{006AFF}MVD Helper: {FFFFFF}������, �� �� ���� ID...', -1)
        end
    end
