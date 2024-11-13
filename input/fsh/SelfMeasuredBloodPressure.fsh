Profile: SelfMeasuredBloodPressure
Parent: CoreBPProfile
Id: self-measured-bp
Title: "Self-measured Blood Pressure"
Description: "A blood pressure taken by the subject or a related person, done in a non-clinical environment."
* code.coding 1..*
* component[SystolicBP].code.coding 1..*
* component[DiastolicBP].code.coding 1..*
* status MS
* status from SMBPStatusVS (required)
* effective[x] only dateTime
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(Patient)