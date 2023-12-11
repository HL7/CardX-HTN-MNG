Profile: SelfMeasuredBloodPressure
Parent: CoreBPProfile
Id: self-measured-bp
Title: "Self-measured Blood Pressure"
Description: "A blood pressure taken by the subject or a related person, done in a non-clinical environment."
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.code"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice for category"
* category MS
* category contains
    smvs 1..1
* category[smvs].coding.code = SCT#310858007 "Self monitoring"
* category[smvs] ^short = "Self-measured Vital Signs category"
* status MS
* status from SMBPStatusVS (required)
* effective[x] only dateTime
* issued 1..1 MS
* performer 1..1
* performer only Reference(Patient)