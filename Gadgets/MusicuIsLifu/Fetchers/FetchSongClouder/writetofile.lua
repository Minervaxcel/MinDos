function Initialize()   
   
   GetSongName = SKIN:GetMeasure('SongName')
   GetArtist = SKIN:GetMeasure('Artist')
   GetUsername = SKIN:GetMeasure('Username')
   GetTitle = SKIN:GetMeasure('Title')
   
end

function Update()

   Username = GetUsername:GetStringValue()
   SongName = GetSongName:GetStringValue()
   Title = GetTitle:GetStringValue()
   Artist = GetArtist:GetStringValue()
   
   local file=io.open(SKIN:MakePathAbsolute('../SongName.txt'), 'w+')
   if file then
      file:write('',SongName,'')
   else
      print('Error: Invalid File Path.')
   end
   
   io.close(file)
   
   local file=io.open(SKIN:MakePathAbsolute('../Artist.txt'), 'w+')
   if file then
      file:write('',Username,'')
   else
      print('Error: Invalid File Path.')
   end
   
   io.close(file)

   SKIN:Bang('!DisableMeasure', 'LuAWrite')
   
   --print('<Event Month="'..Month..'" Day="'..Day..'" Year="'..Year..'"> '..UserInput..' </Event>')
   return
end