function Initialize()

   StartingSeconds = SKIN:GetVariable('ShowGadgetSec')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1
   
   NowSeconds = math.floor(TotalSeconds % 60)
   
   SKIN:Bang('!SetVariable', 'ShowGadgetSec', NowSeconds)
   
   if TotalSeconds >= 0 then
	  SKIN:Bang('!ShowMeter', 'StartGadgets')
   end
   
   if TotalSeconds >= 4 then
	  SKIN:Bang('!HideMeter', 'StartGadgets')
	  SKIN:Bang('!ShowMeter', 'StartGadgets2')
   end
     
   if TotalSeconds >= 8 then
	  SKIN:Bang('!HideMeter', 'StartGadgets2')
	  SKIN:Bang('!ShowMeter', 'StartGadgets3')
   end
   
   if TotalSeconds >= 13 then
	  SKIN:Bang('!HideMeter', 'StartGadgets3')
	  SKIN:Bang('!ShowMeter', 'StartGadgets4')
   end
      
   if TotalSeconds >= 15 then
	  SKIN:Bang('!HideMeter', 'HoverMeter', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!ShowMeter', 'ButtonSummonButtonsVertical', 'MinDos', 'MinDos.ini')
   end
           
   if TotalSeconds >= 19 then
	  SKIN:Bang('!HideMeter', 'StartGadgets4')
	  SKIN:Bang('!ShowMeter', 'StartGadgets5')
   end
   
   if TotalSeconds >= 24 then
      SKIN:Bang('!HideMeter', 'ButtonSummonButtonsVertical', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!ShowMeter', 'ButtonSummonButtons2Vertical', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!Showmetergroup', 'GadgetButtons')
   end
        
   if TotalSeconds >= 25 then
	  SKIN:Bang('!Hidemeter', 'SkipBox')
	  SKIN:Bang('!Hidemeter', 'SkipText')
	  SKIN:Bang('!Hidemeter', 'StartGadgets5')
	  SKIN:Bang('!ShowMeter', 'HoverMeter', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!HideMeter', 'ButtonSummonButtons2Vertical', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!HideMeterGroup', 'GadgetButtons')
	  SKIN:Bang('!WriteKeyValue', 'Variables', 'HideIntro', '0')
	  SKIN:Bang('!WriteKeyValue', 'LuAIntro', 'Disabled', '1')
	  SKIN:Bang('!SetVariable', 'HideIntro', '0')
	  SKIN:Bang('!SetOption', 'LuAIntro', 'Disabled', '1')
   end
      
   return "S: "..tostring(NowSeconds)
      
end --> Update
