Instance: SelfMeasuredBloodPressure-example
InstanceOf: SelfMeasuredBloodPressure
Description: "A simple example of a self-measured blood pressure."
Usage: #example
* status = #final
* category[VSCat] = ObsCat#vital-signs
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-01T12:12:29-09:00"
* issued = "2023-03-01T12:13:00-09:00"
* performer = Reference(patient-example-Sally-Sue)
* device = Reference(example-smbp-device)
* component[SystolicBP].code = http://loinc.org#8480-6
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#8462-4
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "mm[Hg]"