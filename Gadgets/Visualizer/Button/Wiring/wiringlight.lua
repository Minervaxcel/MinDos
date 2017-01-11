function Initialize()

   StartingHours = SKIN:GetVariable('RemainingHours')
   StartingMinutes = SKIN:GetVariable('RemainingMinutes')
   StartingSeconds = SKIN:GetVariable('RemainingSeconds')
   
   TotalSeconds = (tonumber(StartingHours) * 3600) + (tonumber(StartingMinutes) * 60) + tonumber(StartingSeconds)
   SKIN:Bang('!SetOption', 'MeasureBarTime', 'MaxValue', TotalSeconds)
   
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
   
   if TotalSeconds == 90 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-1')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-1')
	  SKIN:Bang('!Showmeter','WiringDot2')
	  SKIN:Bang('!Showmeter','WiringDot')
   end
   
   if TotalSeconds == 89 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-2')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-2')
   end
   
   if TotalSeconds == 88 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-3')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-3')
   end
   
   if TotalSeconds == 87 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-4')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-4')
   end
   
   if TotalSeconds == 86 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-5')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-5')
   end
   
   if TotalSeconds == 85 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-6')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-6')
   end
      
   if TotalSeconds == 84 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-7')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-7')
   end
      
   if TotalSeconds == 83 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-8')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-8')
   end
      
   if TotalSeconds == 82 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-9')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-9')
   end
      
   if TotalSeconds == 81 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-10')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-10')
   end
      
   if TotalSeconds == 80 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-11')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-11')
   end
      
   if TotalSeconds == 79 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-12')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-12')
   end
      
   if TotalSeconds == 78 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-13')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-13')
   end
      
   if TotalSeconds == 77 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-14')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-14')
   end
      
   if TotalSeconds == 76 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-15')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-15')
   end   
   
   if TotalSeconds == 75 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-16')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-16')
   end
      
   if TotalSeconds == 74 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-17')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-17')
   end
      
   if TotalSeconds == 73 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-18')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-18')
   end
      
   if TotalSeconds == 72 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-19')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-19')
   end
      
   if TotalSeconds == 71 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-20')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-20')
   end
      
   if TotalSeconds == 70 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-21')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-21')
   end
   
   if TotalSeconds == 69 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-22')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-22')
   end
   
   if TotalSeconds == 68 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-23')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-23')
   end
   
   if TotalSeconds == 67 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-24')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-24')
   end
   
   if TotalSeconds == 66 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-25')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-25')
   end
   
   if TotalSeconds == 65 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-26')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-26')
   end
   
   if TotalSeconds == 64 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-27')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-27')
   end
   
   if TotalSeconds == 63 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-28')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-28')
   end
   
   if TotalSeconds == 62 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-29')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-29')
   end
   
   if TotalSeconds == 61 then
      SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-30')
	  SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-30')
   end
   
   if TotalSeconds == 60 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-1')
	  SKIN:Bang('!Hidemeter','WiringDot')
   end
   
   if TotalSeconds == 59 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-2')
   end
   
   if TotalSeconds == 58 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-3')
   end
   
   if TotalSeconds == 57 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-4')
   end
   
   if TotalSeconds == 56 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-5')
   end
   
   if TotalSeconds == 55 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-6')
   end
   
   if TotalSeconds == 54 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-7')
   end
   
   if TotalSeconds == 53 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-8')
   end
   
   if TotalSeconds == 52 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-9')
   end
   
   if TotalSeconds == 51 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-10')
   end
   
   if TotalSeconds == 50 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-11')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-1')
	  SKIN:Bang('!ShowMeter','WiringDot')
   end
   
   if TotalSeconds == 49 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-12')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-2')
   end
   
   if TotalSeconds == 48 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-13')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-3')
   end
   
   if TotalSeconds == 47 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-14')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-4')
   end
   
   if TotalSeconds == 46 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-15')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-5')
   end
   
   if TotalSeconds == 45 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-16')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-6')
   end
   
   if TotalSeconds == 44 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-17')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-7')
   end
   
   if TotalSeconds == 43 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-18')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-8')
   end
   
   if TotalSeconds == 42 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-19')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-9')
   end
   
   if TotalSeconds == 41 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-20')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-10')
   end
   
   if TotalSeconds == 40 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-21')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-11')
   end
   
   if TotalSeconds == 39 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-22')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-12')
   end
   
   if TotalSeconds == 38 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-23')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-13')
   end
   
   if TotalSeconds == 37 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-24')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-14')
   end
   
   if TotalSeconds == 36 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-25')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-15')
   end
   
   if TotalSeconds == 35 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-26')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-16')
   end
   
   if TotalSeconds == 34 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-27')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-17')
   end
   
   if TotalSeconds == 33 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-28')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-18')
   end
   
   if TotalSeconds == 32 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-29')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-19')
   end
   
   if TotalSeconds == 31 then
      SKIN:Bang('!SetOption','WiringDot2','ImageName','Button\\Wiring\\Dot-2-30')
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-20')
   end
   
   if TotalSeconds == 30 then
      SKIN:Bang('!Hidemeter','WiringDot2')
   end
   
   if TotalSeconds == 29 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-21')
   end
   
   if TotalSeconds == 27 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-22')
   end
   
   if TotalSeconds == 26 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-23')
   end
   
   if TotalSeconds == 25 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-24')
   end
   
   if TotalSeconds == 24 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-25')
   end
   
   if TotalSeconds == 23 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-26')
   end
   
   if TotalSeconds == 22 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-27')
   end
   
   if TotalSeconds == 21 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-28')
   end
   
   if TotalSeconds == 20 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-29')
   end
   
   if TotalSeconds == 19 then
	  SKIN:Bang('!SetOption','WiringDot','ImageName','Button\\Wiring\\Dot-1-30')
   end
   
   if TotalSeconds == 18 then
	  TotalSeconds = 92
   end
   
   
   return "H: "..tostring(NowHours).." M: "..tostring(NowMinutes).." S: "..tostring(NowSeconds)
      
end --> Update
