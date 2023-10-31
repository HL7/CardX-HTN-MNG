Profile: SelfMeasuredBloodPressure
Parent: CoreBPProfile
Id: self-measured-bp
Title: "Self-measured Blood Pressure"
Description: "A blood pressure taken by the subject or a related person, done in a non-clinical environment."
* extension contains
    MeasurementSettingExt named MeasurementSetting 0..1
* extension[MeasurementSetting] ^short = "Measurement setting"
* extension[MeasurementSetting].valueCodeableConcept = SCT#264362003
* status MS
* status from SMBPStatusVS (required)
* effective[x] only dateTime
* issued 1..1 MS
* performer 1..1
* performer only Reference(Patient)