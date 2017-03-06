function Initialize()

   StartingSeconds = SKIN:GetVariable('WelcomeSec')
      
   TotalSeconds = (StartingSeconds)
   
end --> Initialize

function Update()

   TotalSeconds = TotalSeconds + 1

   NowSeconds = math.floor(TotalSeconds % 60)
 
   SKIN:Bang('!SetVariable', 'WelcomeSec', NowSeconds)

   if TotalSeconds >= 0 then
	  SKIN:Bang('!HideMeter', 'HoverMeter', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!ShowMeter', 'ButtonSummonButtonsVertical', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!ShowMeter', 'StartVisualizer')
   end
   
   if TotalSeconds >= 2 then
	  SKIN:Bang('!HideMeter', 'ButtonSummonButtonsVertical', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!ShowMeter', 'ButtonSummonButtons2Vertical', 'MinDos', 'MinDos.ini')
	  SKIN:Bang('!Showmetergroup', 'GadgetButtons')
   	  SKIN:Bang('!SetOption', 'IntroArrow', 'X', '((#WORKAREAWIDTH# * 0.9097222222222222) + (#WORKAREAWIDTH# * 0.0086805555555556))')
	  SKIN:Bang('!Showmeter', 'IntroArrow')
   end
     
   if TotalSeconds >= 4 then
	  SKIN:Bang('!ActivateConfig', 'MinDos\\Gadgets\\Visualizer', '#VisualizerGadget#')
	  SKIN:Bang('!Hidemeter', 'StartVisualizer')
   end
   
   if TotalSeconds >= 6 then
   	  SKIN:Bang('!Hidemeter', 'SkipBox')
	  SKIN:Bang('!Hidemeter', 'SkipText')
	  SKIN:Bang('!Showmeter', 'EndVisualizer')
	  SKIN:Bang('!ShowMeter', 'NextText')
   	  SKIN:Bang('!DisableMeasure', 'LuAVisualizer')
   end
   
   return "S: "..tostring(NowSeconds)
      
end --> Update
