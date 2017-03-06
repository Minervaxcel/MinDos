function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowGeenieSec')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'ShowGeenieSec', NowSeconds)
       
   if TotalSeconds >= 0 then
	  SKIN:Bang('!ShowMeter', 'StartGeenie')
   end
        
   if TotalSeconds >= 3 then
	  SKIN:Bang('!HideMeter', 'StartGeenie')
	  SKIN:Bang('!ShowMeter', 'StartGeenie2')
   end
   
   if TotalSeconds >= 4 then
	  SKIN:Bang('!HideMeter', 'HoverMeter', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!ShowMeter', 'ButtonSummonButtonsVertical', 'MinDos', 'MinDos.ini')
   end
         
   if TotalSeconds >= 8 then
	  SKIN:Bang('!HideMeter', 'StartGeenie2')
	  SKIN:Bang('!ShowMeter', 'StartGeenie3')
   end
           
   if TotalSeconds >= 13 then
	  SKIN:Bang('!HideMeter', 'StartGeenie3')
	  SKIN:Bang('!ShowMeter', 'StartGeenie4')
   end
        
   if TotalSeconds >= 17 then
   	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!HideMeter', 'StartGeenie4')
	  SKIN:Bang('!ShowMeter', 'StartGeenie5')
   end

   if TotalSeconds >= 18 then
	  SKIN:Bang('!HidemeterGroup', 'Options', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!Setvariable', 'HideOption1', '0', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!EnableMeasure', 'LuAGeenie2')
	  SKIN:Bang('!DisableMeasure', 'LuAGeenie')
   end
      
   return "S: "..tostring(NowSeconds)
      
end --> Update