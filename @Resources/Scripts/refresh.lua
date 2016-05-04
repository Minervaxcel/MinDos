function Initialize()

   StartingHours = SKIN:GetVariable('RemainingHours')
   StartingMinutes = SKIN:GetVariable('RemainingMinutes')
   StartingSeconds = SKIN:GetVariable('RemainingSeconds2')
   
   TotalSeconds2 = (tonumber(StartingHours) * 3600) + (tonumber(StartingMinutes) * 60) + tonumber(StartingSeconds)
   SKIN:Bang('!SetOption', 'MeasureTimer', 'MaxValue', TotalSeconds2)
   
end --> Initialize

function Update()

   TotalSeconds2 = TotalSeconds2 - 1

   NowHours = math.floor(TotalSeconds2 / 3600)
   HoursRemainder = math.floor(TotalSeconds2 % 3600)
   NowMinutes = math.floor(HoursRemainder / 60)
   NowSeconds = math.floor(TotalSeconds2 % 60)

   SKIN:Bang('!SetVariable', 'RemainingHours', NowHours)
   SKIN:Bang('!SetVariable', 'RemainingMinutes', NowMinutes)
   SKIN:Bang('!SetVariable', 'RemainingSeconds2', NowSeconds)
   SKIN:Bang('!SetOption', 'MeasureTimer', 'Formula', ((NowHours*3600)+(NowMinutes*60)+NowSeconds))
   
   if TotalSeconds2 <= 0 then
	  SKIN:Bang('!Refresh')
   end      
   
   return "H: "..tostring(NowHours).." M: "..tostring(NowMinutes).." S: "..tostring(NowSeconds)
      
end --> Update
