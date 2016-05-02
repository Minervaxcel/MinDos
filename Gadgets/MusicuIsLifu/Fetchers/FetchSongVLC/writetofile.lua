function Initialize()   

   GetSong = SKIN:GetMeasure('FetchSong1')
   GetSong2 = SKIN:GetMeasure('FetchSong2')
   
end

function Update()

   SongName = GetSong:GetStringValue()
   Artist = GetSong2:GetStringValue()
   
   local file=io.open(SKIN:MakePathAbsolute('../SongName.txt'), 'w+')
   if file then
      file:write('',SongName,'')
   else
      print('Error: Invalid File Path.')
   end
   
   io.close(file)
   
   local file=io.open(SKIN:MakePathAbsolute('../ULer.txt'), 'w+')
   if file then
      file:write('',Artist,'')
   else
      print('Error: Invalid File Path.')
   end
   
   io.close(file)

   SKIN:Bang('!DisableMeasure', 'LuAWrite')
   
   --print('<Event Month="'..Month..'" Day="'..Day..'" Year="'..Year..'"> '..UserInput..' </Event>')
   return
end