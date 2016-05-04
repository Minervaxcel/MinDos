--First lets read the file and put the contents in a table name tContents
local file = io.open("MinDos.ini", "r")
sContents = file:read() -- capture file in a string
file:close()
tContents = textutils.unserialize(sContents) -- convert string to table

--Print a specific line
print (tContents[29, 34, 39])

--Modify a specific line
table.remove(tContents, 29) -- will remove line 3 so we can insert the new line 3
table.insert(tContents, 29, "Disabled=1") -- inserts the string "New Infomation" on line 3 in the table.
table.remove(tContents, 34)
table.insert(tContents, 34, "Disabled=1")
table.remove(tContents, 39)
table.insert(tContents, 39, "Disabled=1")

--Convert table to string and save the file
sContents = textutils.serialize(tContents)
local file = io.open("MinDos.ini", "w")
file:write(sContents)
file:close()