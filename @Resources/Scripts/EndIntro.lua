   function Initialize()

   StartingSeconds = SKIN:GetVariable('EndIntroSec')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'EndIntroSec', NowSeconds)
   
   if TotalSeconds >= 0 then
	  SKIN:Bang('!ShowMeter', 'EndIntro')
   end
      
   if TotalSeconds >= 6 then
	  SKIN:Bang('!HideMeter', 'EndIntro')
	  SKIN:Bang('!ShowMeter', 'EndIntro2')
   end
   
   if TotalSeconds >= 9 then
	  SKIN:Bang('!HideMeter', 'EndIntro2')
      SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\Weather', 'MinWeather.ini')
      SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\PCInfo', 'MinPCInfo.ini')
      SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\TimeFlow', 'NeonTimeFlow.ini')
      SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\Visualizer', 'Visualizer.ini')
      SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\Introduction', 'Introduction.ini')
   end
   
   return "S: "..tostring(NowSeconds)
      
end --> Update