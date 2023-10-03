/// Device Generated!
//Vital Sign IG Blood Pressure Panel Example (MS)
Instance: SelfMeasuredBloodPressure-example
InstanceOf: SelfMeasuredBloodPressure
Usage: #example
* extension[MeasurementSettingExt].valueCodeableConcept = SMBPCodeSystem#non-clinical-environment "Non-clinical environment"
* status = #final
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Jake-Donald)
* effectiveDateTime = "2023-03-16T12:12:29-09:00"
* issued = "2023-03-16T12:13:00-09:00"
* performer = Reference(patient-example-Jake-Donald)
* device = Reference(phd-bloodpressuremonitor-MS)
* method = SCT#31813000 "Vascular oscillometry (procedure)"
* component[SystolicBP].code = http://loinc.org#8480-6
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#8462-4
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "mm[Hg]"


