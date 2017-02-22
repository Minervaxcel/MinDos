function Initialize()

   StartingHours = SKIN:GetVariable('RemainingHours')
   StartingMinutes = SKIN:GetVariable('RemainingMinutes')
   StartingSeconds = SKIN:GetVariable('WelcomeSec')
      
   TotalSeconds = (tonumber(StartingHours) * 3600) + (tonumber(StartingMinutes) * 60) + tonumber(StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds - 1
   
   NowHours = math.floor(TotalSeconds / 3600)
   HoursRemainder = math.floor(TotalSeconds % 3600)
   NowMinutes = math.floor(HoursRemainder / 60)
   NowSeconds = math.floor(TotalSeconds % 60)

   SKIN:Bang('!SetVariable', 'RemainingHours', NowHours)
   SKIN:Bang('!SetVariable', 'RemainingMinutes', NowMinutes)   
   SKIN:Bang('!SetVariable', 'WelcomeSec', NowSeconds)
   
   if TotalSeconds <= 6 then
      SKIN:Bang('!HideMeterGroup', 'Welcome')
	  SKIN:Bang('!ShowMeter', 'StartGadgets')
   end
   
   if TotalSeconds <= 4 then
	  SKIN:Bang('!HideMeter', 'HoverMeter')
	  SKIN:Bang('!ShowMeter', 'ButtonSummonButtonsVertical')
   end
     
   if TotalSeconds <= 2   then
	  SKIN:Bang('!HideMeter', 'ButtonSummonButtonsVertical')
	  SKIN:Bang('!ShowMeter', 'ButtonSummonButtons2Vertical')
	  SKIN:Bang('!Showmetergroup', 'GadgetButtons')
   end
   
   if TotalSeconds <= 0 then
      SKIN:Bang('!ShowMeter', 'EndGadgets')
	  SKIN:Bang('!ShowMeter', 'NextText')
   	  SKIN:Bang('!DisableMeasure', 'LuaIntro')
   end
   
   return "H: "..tostring(NowHours).." M: "..tostring(NowMinutes).." S: "..tostring(NowSeconds)
      
end --> Update
