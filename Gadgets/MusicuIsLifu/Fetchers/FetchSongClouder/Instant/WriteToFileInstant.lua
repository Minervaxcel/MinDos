function Initialize()

   StartingHours = SKIN:GetVariable('InstantRemainingHours')
   StartingMinutes = SKIN:GetVariable('InstantRemainingMinutes')
   StartingSeconds = SKIN:GetVariable('InstantRemainingSeconds')
   GetSong = SKIN:GetMeasure('FetchSong1')
   GetSong2 = SKIN:GetMeasure('FetchSong2')
   
   TotalSeconds = (tonumber(StartingHours) * 3600) + (tonumber(StartingMinutes) * 60) + tonumber(StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds - 1

   NowHours = math.floor(TotalSeconds / 3600)
   HoursRemainder = math.floor(TotalSeconds % 3600)
   NowMinutes = math.floor(HoursRemainder / 60)
   NowSeconds = math.floor(TotalSeconds % 60)

   SKIN:Bang('!SetVariable', 'InstantRemainingHours', NowHours)
   SKIN:Bang('!SetVariable', 'InstantRemainingMinutes', NowMinutes)
   SKIN:Bang('!SetVariable', 'InstantRemainingSeconds', NowSeconds)
   
   SongName = GetSong:GetStringValue()
   Artist = GetSong2:GetStringValue()
   
   local file=io.open(SKIN:MakePathAbsolute('#ROOTCONFIGPATH#MinDos/Gadgets/MusicuIsLifu/SongName.txt'), 'w+')
   if file then
      file:write('',SongName,'')
   else
      print('Error: Invalid File Path.')
   end
   
   io.close(file)
   
   local file=io.open(SKIN:MakePathAbsolute('#ROOTCONFIGPATH#MinDos/Gadgets/MusicuIsLifu/ULer.txt'), 'w+')
   if file then
      file:write('',Artist,'')
   else
      print('Error: Invalid File Path.')
   end
   
   io.close(file)
   
   if TotalSeconds <= 0 then
	  SKIN:Bang('!DeactivateConfig', 'MinDos\\Gadgets\\MusicuIsLifu\\Fetchers\\FetchSongClouder\\Instant')
   end      
   
   return "H: "..tostring(NowHours).." M: "..tostring(NowMinutes).." S: "..tostring(NowSeconds)
      
end --> Update