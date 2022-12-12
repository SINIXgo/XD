-- Andromeda noteSplashes recreation in psych
-- Made by Zyflx(me lmao)
-- I love you NoteSplash.hx *starts orgasming agressively*

--[[
    cool peeps who didn't contribute to anything in this
    script but are here anyways becuase they are cool

    -- #YuriSupremacy
    -- Unholywanderer04
    -- Uppy
    -- Gabriela(gabby)
    -- ConCow
    -- Swords
    -- PHG29
    -- BlueColorsin
    -- smal
    -- Mark_Zer0
    -- Rudyrue
    -- fabr
    -- AlexSen(made a really cool lullaby gf drawing)
]]

---- Settings ----
local opponentSplashes = false;
--------------------------------

-------------------------------------------------------------------- Da Script ----------------------------------------------------------------------------------------
function onCreatePost()
    skin = 'AndroSplashes';

    loadSplashes(skin);
end

function loadSplashes(skin)
    -- Making the splashes
    makeAnimatedLuaSprite('leftSplash', skin)
    makeAnimatedLuaSprite('downSplash', skin)
    makeAnimatedLuaSprite('upSplash', skin)
    makeAnimatedLuaSprite('rightSplash', skin)

    -- This adds the anims for them
    for i = 1, 3 do
        addAnimationByPrefix('leftSplash','splash'..i,'note splash purple '..i, 24, false)
        addAnimationByPrefix('downSplash','splash2'..i,'note splash blue '..i, 24, false)
        addAnimationByPrefix('upSplash','splash3'..i,'note splash green '..i, 24, false)
        addAnimationByPrefix('rightSplash','splash4'..i,'note splash red '..i, 24, false)
    end

    -- Sets the object order to be the same as the actual splashes
    setObjectOrder('leftSplash', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('downSplash', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('upSplash', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('rightSplash', getObjectOrder('grpNoteSplashes'))

    -- Attaches them to the hud
    setObjectCamera('leftSplash','hud')
    setObjectCamera('downSplash','hud')
    setObjectCamera('upSplash','hud')
    setObjectCamera('rightSplash','hud')

    -- Anim offsets
    addOffset('leftSplash','splash', 10, 10)
    addOffset('downSplash','splash2', 10, 10)
    addOffset('upSplash','splash3', 10, 10)
    addOffset('rightSplash','splash4', 10, 10)

    -- Makes them invisible
    setProperty('leftSplash.visible', false)
    setProperty('downSplash.visible', false)
    setProperty('upSplash.visible', false)

    -- Adds the splashes
    addLuaSprite('leftSplash', false)
    addLuaSprite('downSplash', false)
    addLuaSprite('upSplash', false)
    addLuaSprite('rightSplash', false)
end

function goodNoteHit(id, dir, nt, sus)
    -- Hide the og splashes
    runHaxeCode('game.grpNoteSplashes.visible = false;')
    -- checks if you hit a sick and the note isn't a sustain
if getPropertyFromGroup('notes', id,'rating') == 'sick' then
    if not sus then
        if dir == 0 then
            playAnim('leftSplash','splash'..math.random(1, 2), true) -- plays the splash anim, duh
            setProperty('leftSplash.x', getPropertyFromGroup('playerStrums', 0, 'x') - 135) -- x pos for the splash sprite not the anim
            setProperty('leftSplash.y', getPropertyFromGroup('playerStrums', 0, 'y') - 170) -- same as above but for y
            setProperty('leftSplash.visible', true) -- sets the splashes to be visible
            runTimer('leftSplash', 0.3) -- runs a timer that hides the splashes after the timer ends
        elseif dir == 1 then
            playAnim('downSplash','splash2'..math.random(1, 2), true)
            setProperty('downSplash.x', getPropertyFromGroup('playerStrums', 0, 'x') - 60)
            setProperty('downSplash.y', getPropertyFromGroup('playerStrums', 0, 'y') - 170)
            setProperty('downSplash.visible', true)
            runTimer('downSplash', 0.3)
        elseif dir == 2 then
            playAnim('upSplash','splash3'..math.random(1, 2), true)
            setProperty('upSplash.x', getPropertyFromGroup('playerStrums', 0, 'x') + 55)
            setProperty('upSplash.y', getPropertyFromGroup('playerStrums', 0, 'y') - 170)
            setProperty('upSplash.visible', true)
            runTimer('upSplash', 0.3)
        elseif dir == 3 then
            playAnim('rightSplash','splash4'..math.random(1, 2), true)
            setProperty('rightSplash.x', getPropertyFromGroup('playerStrums', 0, 'x') + 165)
            setProperty('rightSplash.y', getPropertyFromGroup('playerStrums', 0, 'y') - 170)
            setProperty('rightSplash.visible', true)
            runTimer('rightSplash', 0.3)
            end
        end
    end
end
-- opponent splashes, works the same way as player splashes
function opponentNoteHit(id, dir, nt, sus)
if opponentSplashes then
    if not sus then
        if dir == 0 then
            playAnim('leftSplash','splash'..math.random(1, 2), true)
            setProperty('leftSplash.x', getPropertyFromGroup('opponentStrums', 0, 'x') - 135)
            setProperty('leftSplash.y', getPropertyFromGroup('opponentStrums', 0, 'y') - 170)
            setProperty('leftSplash.visible', true)
            runTimer('leftSplash', 0.3)
        elseif dir == 1 then
            playAnim('downSplash','splash2'..math.random(1, 2), true)
            setProperty('downSplash.x', getPropertyFromGroup('opponentStrums', 0, 'x') - 60)
            setProperty('downSplash.y', getPropertyFromGroup('opponentStrums', 0, 'y') - 170)
            setProperty('downSplash.visible', true)
            runTimer('downSplash', 0.3)
        elseif dir == 2 then
            playAnim('upSplash','splash3'..math.random(1, 2), true)
            setProperty('upSplash.x', getPropertyFromGroup('opponentStrums', 0, 'x') + 55)
            setProperty('upSplash.y', getPropertyFromGroup('opponentStrums', 0, 'y') - 170)
            setProperty('upSplash.visible', true)
            runTimer('upSplash', 0.3)
        elseif dir == 3 then
            playAnim('rightSplash','splash4'..math.random(1, 2), true)
            setProperty('rightSplash.x', getPropertyFromGroup('opponentStrums', 0, 'x') + 165)
            setProperty('rightSplash.y', getPropertyFromGroup('opponentStrums', 0, 'y') - 170)
            setProperty('rightSplash.visible', true)
            runTimer('rightSplash', 0.3)
            end
        end
    end
end
-- hides the respective splash when their respective timers end
function onTimerCompleted(tag)
    if tag == 'leftSplash' then
        setProperty('leftSplash.visible', false)
    end
    if tag == 'downSplash' then
        setProperty('downSplash.visible', false)
    end
    if tag == 'upSplash' then
        setProperty('upSplash.visible', false)
    end
    if tag == 'rightSplash' then
        setProperty('rightSplash.visible', false)
    end
end