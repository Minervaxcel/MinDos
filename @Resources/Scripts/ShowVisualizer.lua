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
      SKIN:Bang('EnableMeasure', 'LuAIntro')
      SKIN:Bang('!HideMeter', 'StartGadgets')
	  SKIN:Bang('!HideMeter', 'EndGadgets')
	  SKIN:Bang('!ShowMeter', 'StartVisualizer')
   end
   
   if TotalSeconds <= 4 then
   	  SKIN:Bang('!SetOption', 'IntroArrow', 'X', '(#ButtonSummonVisualizerVerticalX# + (#WORKAREAWIDTH# * 0.0086805555555556))')
	  SKIN:Bang('!Showmeter', 'IntroArrow')
   end
     
   if TotalSeconds <= 2 then
	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\Visualizer', 'Visualizer.ini')
	  SKIN:Bang('!Hidemeter', 'StartVisualizer')
   end
   
   if TotalSeconds <= 0 then
   	  SKIN:Bang('!Showmeter', 'EndVisualizer')
	  SKIN:Bang('!ShowMeter', 'NextText')
   	  SKIN:Bang('!DisableMeasure', 'LuAVisualizer')
   end
   
   return "H: "..tostring(NowHours).." M: "..tostring(NowMinutes).." S: "..tostring(NowSeconds)
      
end --> Update
