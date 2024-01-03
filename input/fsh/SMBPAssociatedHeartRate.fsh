Profile: SMBPAssociatedHeartRate
Parent: CoreHRProfile
Id: smbp-associated-heart-rate
Title: "SMBP Associated Heart Rate"
Description: "The number of heart beats in a minute."
* status MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.code"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice for category"
* category MS
* category contains
    smvs 1..1
* category[smvs].coding.code = SCT#310858007 "Self monitoring"
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* performer 1..1
* performer only Reference(Patient)
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = #/min (exactly)
* dataAbsentReason MS
