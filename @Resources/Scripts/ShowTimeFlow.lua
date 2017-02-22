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
	  SKIN:Bang('!ShowMeter', 'StartTimeFlow')
   end
   
   if TotalSeconds <= 4 then
	  SKIN:Bang('!SetOption', 'IntroArrow', 'X', '(#ButtonSummonTimeFlowVerticalX# + (#WORKAREAWIDTH# * 0.0086805555555556))')
	  SKIN:Bang('!Showmeter', 'IntroArrow')
   end
     
   if TotalSeconds <= 2 then
	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\TimeFlow', '#TimeFlowGadget#')
	  SKIN:Bang('!HideMeter', 'StartTimeFlow')
   end
   
   if TotalSeconds <= 0 then
   	  SKIN:Bang('!Showmeter', 'EndTimeFlow')
	  SKIN:Bang('!ShowMeter', 'NextText')
   	  SKIN:Bang('!DisableMeasure', 'LuATimeFlow')
   end
   
   return "H: "..tostring(NowHours).." M: "..tostring(NowMinutes).." S: "..tostring(NowSeconds)
      
end --> Update
