function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowConfigSec')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'ShowConfigSec', NowSeconds)
       
   if TotalSeconds >= 0 then
	  SKIN:Bang('!ShowMeter', 'StartConfig')
   end
       
   if TotalSeconds >= 3 then
	  SKIN:Bang('!HideMeter', 'StartConfig')
	  SKIN:Bang('!ShowMeter', 'StartConfig2')
   end
          
   if TotalSeconds >= 6 then
	  SKIN:Bang('!HideMeter', 'StartConfig2')
	  SKIN:Bang('!ShowMeter', 'StartConfig3')
   end
             
   if TotalSeconds >= 10 then
	  SKIN:Bang('!HideMeter', 'StartConfig3')
	  SKIN:Bang('!ShowMeter', 'StartConfig4')
   end
   
   if TotalSeconds >= 12 then
	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\TimeFlow', 'NeonTimeflow.ini')
   end
                
   if TotalSeconds >= 14 then
	  SKIN:Bang('!HideMeter', 'StartConfig4')
	  SKIN:Bang('!ShowMeter', 'StartConfig5')
   end
                   
   if TotalSeconds >= 22 then
	  SKIN:Bang('!HideMeter', 'StartConfig5')
	  SKIN:Bang('!ShowMeter', 'StartConfig6')
   end
                      
   if TotalSeconds >= 30 then
	  SKIN:Bang('!HideMeter', 'StartConfig6')
	  SKIN:Bang('!ShowMeter', 'StartConfig7')
	  SKIN:Bang('!Showmeter', 'NextText')
      SKIN:Bang('!Showmeter', 'EndConfig')
	  SKIN:Bang('!DisableMeasure', 'LuAConfig')
   end

   return "S: "..tostring(NowSeconds)
      
end --> Update