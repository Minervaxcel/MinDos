function Initialize()

   StartingHours = SKIN:GetVariable('RemainingHours')
   StartingMinutes = SKIN:GetVariable('RemainingMinutes')
   StartingSeconds = SKIN:GetVariable('RemainingSeconds')
   USERVARIABLE = SKIN:GetVariable('USER')
   
   TotalSeconds = (tonumber(StartingHours) * 3600) + (tonumber(StartingMinutes) * 60) + tonumber(StartingSeconds)
   SKIN:Bang('!SetOption', 'MeasureBarTime', 'MaxValue', TotalSeconds)
   SKIN:Bang('!WriteKeyValue', 'Variables', 'USER', '#USER#')
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds - 1

   NowHours = math.floor(TotalSeconds / 3600)
   HoursRemainder = math.floor(TotalSeconds % 3600)
   NowMinutes = math.floor(HoursRemainder / 60)
   NowSeconds = math.floor(TotalSeconds % 60)

   SKIN:Bang('!SetVariable', 'RemainingHours', NowHours)
   SKIN:Bang('!SetVariable', 'RemainingMinutes', NowMinutes)
   SKIN:Bang('!SetVariable', 'RemainingSeconds', NowSeconds)
   SKIN:Bang('!SetOption', 'MeasureBarTime', 'Formula', ((NowHours*3600)+(NowMinutes*60)+NowSeconds))
   
   if TotalSeconds <= 3 then
	  SKIN:Bang('!ShowMeter', 'LoginButtonText')
   end
   
   if TotalSeconds <= 2 then
	  SKIN:Bang('!ShowMeter', 'LoginButton')
   end
     
   if TotalSeconds <= 0 then
   	  SKIN:Bang('!DisableMeasure', 'LoginAccepted')
   end
   
   return "H: "..tostring(NowHours).." M: "..tostring(NowMinutes).." S: "..tostring(NowSeconds)
      
end --> Update
