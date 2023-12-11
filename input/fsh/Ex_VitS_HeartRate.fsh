
Instance: SMBP-Associated-HeartRate-example
InstanceOf: smbp-associated-heart-rate
Description: "An example of a heart rate that would be captured/recorded form a the same device used for a blood pressure and at the same time."
Usage: #example
* status = #final
* category[VSCat] = ObsCat#vital-signs
* category[smvs] = SCT#310858007 "Self-monitoring"
* code = http://loinc.org#8867-4
* code.text = "Heart rate"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-01T08:00:00-09:00"
* issued = "2023-03-01T08:10:00-09:00"
* device = Reference(example-smbp-device)
* performer = Reference(patient-example-Sally-Sue)
* valueQuantity = 74 '/min' "'/min'"