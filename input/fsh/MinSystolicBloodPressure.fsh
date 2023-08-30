Profile: MinSystolicBloodPressure
Parent: CoreVitalSigns
Id: min-sys-bp
Title: "Minimum Systolic Blood Pressure"
Description: "The lowest measured systolic blood pressure during a given time frame."
* status from SMBPStatusVS
* code = SMBPMinMaxBPIDCodeSystem#MinSystBP "Minimum Systolic BP, unknown period"
* effective[x] 1..1 MS
* effective[x] only Period
* effectivePeriod.start 1..1 MS
* effectivePeriod.end 1..1 MS
* value[x] only Quantity
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = #mm[Hg] (exactly)