Profile: SMBPAssociatedHeartRate
Parent: Observation
Id: smbp-associated-heart-rate
Title: "SMBP Associated Heart Rate"
Description: "The number of heart beats in a minute."
* extension contains
    MeasurementSettingExt named measurementSetting 0..1
* extension[measurementSetting] ^short = "Measurement setting"
* extension[measurementSetting].valueCodeableConcept = SMBPCodeSystem#non-clinical-environment
* status MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = ObsCat#vital-signs
* code ^short = "Heart rate"
* code = LNC#8867-4
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
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
* interpretation from NumericResultInterpretationNom (extensible)
* method MS
* method from SMBPMethodVS (extensible)
