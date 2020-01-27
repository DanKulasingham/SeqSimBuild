SELECT fullresults.SimID, SimName, Production, simhistory.timestamp as Date FROM fullresults Left Join simhistory on fullresults.simid = simhistory.simid where shiftid = -1 and fullresults.UserID = @user and SimName Like '%@search%' order by simhistory.timestamp desc Limit @limit Offset @offset;