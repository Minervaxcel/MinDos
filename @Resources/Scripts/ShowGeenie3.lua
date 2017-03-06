function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowGeenieSec3')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'ShowGeenieSec3', NowSeconds)
   
   if TotalSeconds >= 0 then
     SKIN:Bang('!HidemeterGroup', 'Options', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
     SKIN:Bang('!Setvariable', 'HideOption2', '0', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
   end
   
   if TotalSeconds >= 1 then
	  SKIN:Bang('!HideMeter', 'StartGeenie10')
	  SKIN:Bang('!ShowMeter', 'StartGeenie11')
   end
              
   if TotalSeconds >= 11 then
	  SKIN:Bang('!HideMeter', 'StartGeenie11')
	  SKIN:Bang('!ShowMeter', 'StartGeenie12')
   end
                   
   if TotalSeconds >= 23 then
	  SKIN:Bang('!Hidemeter', 'StartGeenie12')
	  SKIN:Bang('!Hidemeter', 'SkipBox')
	  SKIN:Bang('!Hidemeter', 'SkipText')
	  SKIN:Bang('!SetVariable', 'HideIntro', '0')
	  SKIN:Bang('!ShowMeter', 'HoverMeter', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!HideMeter', 'ButtonSummonButtonsVertical', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\Visualizer', 'Visualizer.ini')
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\Weather', 'MinWeather.ini')
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\PCInfo', 'MinPCInfo.ini')
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\TimeFlow', 'NeonTimeFlow.ini')
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\Launcher', 'Launcher.ini')
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!DisableMeasure', 'LuAGeenie3')
   end
   
   return "S: "..tostring(NowSeconds)
      
end --> Update