Profile: SelfMeasuredBloodPressure
Parent: CoreBPProfile
Id: self-measured-bp
Title: "Self-measured Blood Pressure"
Description: "A blood pressure taken by the patient or a related person, done in a non-clinical environment."
* extension contains
    MeasurementSettingExt named MeasurementSetting 0..1
* extension[MeasurementSetting] ^short = "Measurement setting"
* extension[MeasurementSetting].valueCodeableConcept = SMBPCodeSystem#non-clinical-environment
* status MS
* status from SMBPStatusVS (required)
* effective[x] only dateTime
* issued 1..1 MS
* performer 1..1
* performer only Reference(Patient)
* method from SMBPMethodVS (extensible)
* method ^binding.description = "A set of codes that describe the method used to measure a blood pressure"