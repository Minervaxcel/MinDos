   function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowConfigSec5')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'ShowConfigSec5', NowSeconds)
   
   if TotalSeconds >= 0 then
	  SKIN:Bang('!HideMeter', 'StartConfig23')
	  SKIN:Bang('!ShowMeter', 'StartConfig24')
   end
                            
   if TotalSeconds >= 9 then
	  SKIN:Bang('!HideMeter', 'StartConfig24')
	  SKIN:Bang('!ShowMeter', 'StartConfig25')
   end
                              
   if TotalSeconds >= 17 then
	  SKIN:Bang('!HideMeter', 'StartConfig25')
	  SKIN:Bang('!ShowMeter', 'StartConfig26')
   end
   
   if TotalSeconds >= 21 then
	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'MoodConfig.ini')
   end
                               
   if TotalSeconds >= 25 then
	  SKIN:Bang('!HideMeter', 'StartConfig26')
	  SKIN:Bang('!ShowMeter', 'StartConfig27')
   end
                               
   if TotalSeconds >= 37 then
	  SKIN:Bang('!HideMeter', 'StartConfig27')
	  SKIN:Bang('!ShowMeter', 'StartConfig28')
   end
                                
   if TotalSeconds >= 45 then
	  SKIN:Bang('!HideMeter', 'StartConfig28')
	  SKIN:Bang('!ShowMeter', 'StartConfig29')
   end
                                 
   if TotalSeconds >= 50 then
	  SKIN:Bang('!HideMeter', 'StartConfig29')
	  SKIN:Bang('!ShowMeter', 'StartConfig30')
   end
                                 
   if TotalSeconds >= 54 then
	  SKIN:Bang('!HideMeter', 'StartConfig30')
	  SKIN:Bang('!ShowMeter', 'StartConfig31')
   end
   
   if TotalSeconds >= 58 then
	  SKIN:Bang('!Hidemeter', 'StartConfig31')
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
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'MoodConfig.ini')
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'ChameleonConfig.ini')
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'AliasConfig.ini')
	  SKIN:Bang('!DisableMeasure', 'LuAConfig5')
   end
   
   return "S: "..tostring(NowSeconds)
      
end --> Update