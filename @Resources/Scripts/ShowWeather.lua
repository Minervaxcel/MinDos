function Initialize()

   StartingHours = SKIN:GetVariable('RemainingHours')
   StartingMinutes = SKIN:GetVariable('RemainingMinutes')
   StartingSeconds = SKIN:GetVariable('WelcomeSec')
      
   TotalSeconds = (tonumber(StartingHours) * 3600) + (tonumber(StartingMinutes) * 60) + tonumber(StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowHours = math.floor(TotalSeconds / 3600)
   HoursRemainder = math.floor(TotalSeconds % 3600)
   NowMinutes = math.floor(HoursRemainder / 60)
   NowSeconds = math.floor(TotalSeconds % 60)

   SKIN:Bang('!SetVariable', 'RemainingHours', NowHours)
   SKIN:Bang('!SetVariable', 'RemainingMinutes', NowMinutes)   
   SKIN:Bang('!SetVariable', 'WelcomeSec', NowSeconds)
   
   if TotalSeconds >= 0 then
   	  SKIN:Bang('!HideMeter', 'EndMusicuIsLifu')
	  SKIN:Bang('!ShowMeter', 'StartWeather')
   end
   
   if TotalSeconds >= 2 then
	  SKIN:Bang('!SetOption', 'IntroArrow', 'X', '((#WORKAREAWIDTH# * 0.8263888888888888) + (#WORKAREAWIDTH# * 0.0086805555555556))')
	  SKIN:Bang('!Showmeter', 'IntroArrow')
   end
     
   if TotalSeconds >= 4 then
	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\Weather', '#WeatherGadget#')
	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\Weather\\Config', 'Config.ini')
	  SKIN:Bang('!Setvariable', 'HideOption2', '0', 'MinDos\\Gadgets\\Weather\\Config', 'Config.ini')
	  SKIN:Bang('!HideMeterGroup', 'Options', 'MinDos\\Gadgets\\Weather\\Config', 'Config.ini')
   end
   
   if TotalSeconds >= 6 then
	  SKIN:Bang('!Hidemeter', 'SkipBox')
	  SKIN:Bang('!Hidemeter', 'SkipText')
	  SKIN:Bang('!HideMeter', 'StartWeather')
   	  SKIN:Bang('!Showmeter', 'EndWeather')
	  SKIN:Bang('!ShowMeter', 'NextText')
   	  SKIN:Bang('!DisableMeasure', 'LuAWeather')
   end
   
   return "S: "..tostring(NowSeconds)
      
end --> Update
