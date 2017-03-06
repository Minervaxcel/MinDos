function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowConfigSec2')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'ShowConfigSec2', NowSeconds)
            
   if TotalSeconds >= 4 then
	  SKIN:Bang('!ShowMeter', 'StartConfig8')
   end
               
   if TotalSeconds >= 8 then
	  SKIN:Bang('!HideMeter', 'StartConfig8')
	  SKIN:Bang('!ShowMeter', 'StartConfig9')
   end
               
   if TotalSeconds >= 12 then
	  SKIN:Bang('!HideMeter', 'StartConfig9')
	  SKIN:Bang('!ShowMeter', 'StartConfig10')
	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
   end
        
   if TotalSeconds >= 16 then
	  SKIN:Bang('!HidemeterGroup', 'Options', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
      SKIN:Bang('!Setvariable', 'HideOption1', '0', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
   end
   
   if TotalSeconds >= 22 then
	  SKIN:Bang('!HideMeter', 'StartConfig10')
	  SKIN:Bang('!ShowMeter', 'StartConfig11')
   end
               
   if TotalSeconds >= 26 then
	  SKIN:Bang('!HideMeter', 'StartConfig11')
	  SKIN:Bang('!ShowMeter', 'StartConfig12')
   end
              
   if TotalSeconds >= 29 then
	  SKIN:Bang('!HideMeter', 'StartConfig12')
	  SKIN:Bang('!ShowMeter', 'StartConfig13')
	  SKIN:Bang('!Setvariable', 'HideOption1', '1', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!ShowmeterGroup', 'Options', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
   end
   
   if TotalSeconds >= 34 then  
      SKIN:Bang('!HidemeterGroup', 'Options', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
      SKIN:Bang('!Setvariable', 'HideOption2', '0', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!Showmeter', 'NextText')
      SKIN:Bang('!Showmeter', 'EndConfig2')
	  SKIN:Bang('!DisableMeasure', 'LuAConfig2')
   end
   
   return "S: "..tostring(NowSeconds)
      
end --> Update