function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowGeenieSec2')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds)
   
   SKIN:Bang('!SetVariable', 'ShowGeenieSec2', NowSeconds)
       
   if TotalSeconds >= 10 then
	  SKIN:Bang('!HideMeter', 'StartGeenie5')
	  SKIN:Bang('!ShowMeter', 'StartGeenie6')
   end
                          
   if TotalSeconds >= 18 then
	  SKIN:Bang('!HideMeter', 'StartGeenie6')
	  SKIN:Bang('!ShowMeter', 'StartGeenie7')
   end
                        
   if TotalSeconds >= 30 then
	  SKIN:Bang('!HideMeter', 'StartGeenie7')
	  SKIN:Bang('!ShowMeter', 'StartGeenie8')
   end
                    
   if TotalSeconds >= 33 then
	  SKIN:Bang('!HideMeter', 'StartGeenie8')
	  SKIN:Bang('!ShowMeter', 'StartGeenie9')
   end
          
   if TotalSeconds >= 37 then
	  SKIN:Bang('!HideMeter', 'StartGeenie9')
	  SKIN:Bang('!ShowMeter', 'StartGeenie10')
   end
   
   if TotalSeconds >= 39 then
      SKIN:Bang('!ShowmeterGroup', 'Options', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!Setvariable', 'HideOption1', '1', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!Setvariable', 'HideOption11', '1', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!Setvariable', 'HideOption12', '1', 'MinDos\\Gadgets\\MinDosConfig', 'GeenieConfig.ini')
	  SKIN:Bang('!EnableMeasure', 'LuAGeenie3')
	  SKIN:Bang('!DisableMeasure', 'LuAGeenie2')
   end
   
   return "S: "..tostring(NowSeconds)
      
end --> Update