
Instance: SMBP-Associated-HeartRate-example
InstanceOf: smbp-associated-heart-rate
Description: "An example of a heart rate that would be captured/recorded form a the same device used for a blood pressure and at the same time."
Usage: #example
* extension[measurementSetting].valueCodeableConcept = SCT#264362003 "Home"
* status = #final
* category = ObsCat#vital-signs
* code = http://loinc.org#8867-4
* code.text = "Heart rate"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-10-16T12:12:29-09:00"
* issued = "2023-10-16T12:31:00-09:00"
* performer = Reference(patient-example-Sally-Sue)
* valueQuantity = 120 '/min' "'/min'"
* bodySite = SCT#723961002 "Structure of left brachial artery (body structure)"


