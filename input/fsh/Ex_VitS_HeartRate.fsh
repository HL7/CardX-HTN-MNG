
Instance: HeartRate-example
InstanceOf: smbp-associated-heart-rate
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/heart-rate"
* extension[measurementSetting].valueCodeableConcept = SMBPCodeSystem#non-clinical-environment
* status = #final
* category = ObsCat#vital-signs
* code = http://loinc.org#8867-4
* code.text = "Heart rate"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-10-16T12:12:29-09:00"
* valueQuantity = 120 '/min' "'/min'"
* bodySite = SCT#723961002 "Structure of left brachial artery (body structure)"


