   function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowConfigSec4')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'ShowConfigSec4', NowSeconds)
   
   if TotalSeconds >= 0 then
   	  SKIN:Bang('!HideMeter', 'StartConfig16')
	  SKIN:Bang('!ShowMeter', 'StartConfig17')
   end
   
   if TotalSeconds >= 4 then
	  SKIN:Bang('!HideMeter', 'StartConfig17')
	  SKIN:Bang('!ShowMeter', 'StartConfig18')
   end
             
   if TotalSeconds >= 8 then
	  SKIN:Bang('!HideMeter', 'StartConfig18')
	  SKIN:Bang('!ShowMeter', 'StartConfig19')
   end
             
   if TotalSeconds >= 11  then
	  SKIN:Bang('!HideMeter', 'StartConfig19')
	  SKIN:Bang('!ShowMeter', 'StartConfig20')
   end
                   
   if TotalSeconds >= 16 then
	  SKIN:Bang('!HideMeter', 'StartConfig20')
	  SKIN:Bang('!ShowMeter', 'StartConfig21')
   end
                     
   if TotalSeconds >= 26 then
	  SKIN:Bang('!HideMeter', 'StartConfig21')
	  SKIN:Bang('!ShowMeter', 'StartConfig22')
   	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'ChameleonConfig.ini')
   end
                       
   if TotalSeconds >= 36 then
	  SKIN:Bang('!HideMeter', 'StartConfig22')
	  SKIN:Bang('!ShowMeter', 'StartConfig23')
      SKIN:Bang('!Showmeter', 'NextText')
      SKIN:Bang('!Showmeter', 'EndConfig4')
	  SKIN:Bang('!DisableMeasure', 'LuAConfig4')
   end
   
   return "S: "..tostring(NowSeconds)
      
end --> Update