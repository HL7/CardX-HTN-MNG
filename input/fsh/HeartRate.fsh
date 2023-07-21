Profile: HeartRate
Parent: VitalSignsHeartRate
Id: heart-rate
Title: "Heart Rate"
Description: "The number of heart beats in a minute."
* extension[measurmentDevice].value[x] only CodeableConcept
* extension[measurmentDevice].valueCodeableConcept from HeartRateMeasurementDevicevalueset (extensible)
* extension[measurmentDevice] ^short = "Measurement Device Type"
* extension[exerciseAssociation] ^short = "Exercise Association"
* extension[bodyPosition] ^short = "Body Position"
* extension[bodyPosition].valueCodeableConcept from BodyPositionvalueset (extensible)
* extension[measurementSetting] ^short = "Measurement setting"
* extension[sleepStatus] ^short = "Sleep Status"
* extension[associatedSituation] ^short = "Associated Situation"
* status MS
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = ObsCat#vital-signs
* code ^short = "Heart rate"
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
* bodySite MS
* bodySite from HeartRateMeasurementBodyLocationPrecoordinatedvalueset (extensible)
* method MS
* method from HeartRateMeasurementMethodvalueset (extensible)
