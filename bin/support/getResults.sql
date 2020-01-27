Select * From (Select RunTime, LogsCut, Production, LogVolume, Recovery, LogRate, Uptime, MSLDowntime as MSLDT, BSLDowntime as BSLDT, TSLDowntime as TSLDT, Case When ID < 0 Then 3 Else ID End as Shift From Results) as a order by Shift asc