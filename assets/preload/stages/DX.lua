function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'soulless_DX', -300, -100);
	scaleObject('stageback', 1.2, 1.2);
	addLuaSprite('stageback', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end