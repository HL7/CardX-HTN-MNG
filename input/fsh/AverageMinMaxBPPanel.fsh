Profile: AverageMinMaxBPPanel
Parent: CoreVitalSigns
Id: avg-minmax-bp-panel
Title: "Average Minimum and Maximum Blood Pressure Panel"
Description: "A collection of observtions for the average, minimum, and maximum blood pressure measurements in a given time frame."
* code = SMBPMinMaxBPIDCodeSystem#AvgMinMaxBP
* value[x] 0..0
* hasMember MS
* hasMember ^slicing.discriminator.type = #pattern
* hasMember ^slicing.discriminator.path = "hasMember"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #open
* hasMember ^short = "Panel members"
* hasMember contains
    AverageBloodPressure 0..1 and
    MaxSystolicBloodPressure 0..1 and
    MaxDiastolicBloodPressure 0..1 and
    MinSystolicBloodPressure 0..1 and
    MinDiastolicBloodPressure 0..1
* hasMember[AverageBloodPressure] only Reference(AverageBloodPressure)
* hasMember[MaxSystolicBloodPressure] only Reference(MaxSystolicBloodPressure)
* hasMember[MaxDiastolicBloodPressure] only Reference(MaxDiastolicBloodPressure)
* hasMember[MinSystolicBloodPressure] only Reference(MinSystolicBloodPressure)
* hasMember[MinDiastolicBloodPressure] only Reference(MinDiastolicBloodPressure)