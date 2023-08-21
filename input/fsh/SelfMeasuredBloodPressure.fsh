Profile: SelfMeasuredBloodPressure
Parent: CoreBPProfile
Id: self-measured-bp
Title: "Self-measured Blood Pressure"
Description: "A blood pressure taken by the patient or a related person, done in a non-clinical environment."
* extension contains
    MeasurementSettingExt named MeasurementSetting 0..1 MS
* extension[MeasurementSetting] ^short = "Measurement setting"
* extension[MeasurementSetting].valueCodeableConcept from SMBPMeasurementSettingVS (extensible)
* status MS
* status from SMBPStatusVS (required)
* performer only Reference(Patient or RelatedPerson)
* method MS
* method from SMBPMethodVS (extensible)
* method ^binding.description = "A set of codes that describe the method used to measure a blood pressure"


