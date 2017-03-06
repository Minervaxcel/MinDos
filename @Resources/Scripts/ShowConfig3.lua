   function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowConfigSec3')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'ShowConfigSec3', NowSeconds)
      
   if TotalSeconds >= 0 then
	  SKIN:Bang('!ShowMeter', 'StartConfig14')
   end
   
   if TotalSeconds >= 5 then
	  SKIN:Bang('!HideMeter', 'StartConfig14')
	  SKIN:Bang('!ShowMeter', 'StartConfig15')
  	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'AliasConfig.ini')
   end 
   
   if TotalSeconds >= 14 then
	  SKIN:Bang('!HideMeter', 'StartConfig15')
	  SKIN:Bang('!ShowMeter', 'StartConfig16')
	  SKIN:Bang('!Showmeter', 'NextText')
      SKIN:Bang('!Showmeter', 'EndConfig3')
	  SKIN:Bang('!DisableMeasure', 'LuAConfig3')
   end
             

   return "S: "..tostring(NowSeconds)
      
end --> Update