/// Device Generated!
//Vital Sign IG Blood Pressure Panel Example (MS)
Instance: BloodPressurePanel-MS
InstanceOf: SelfMeasuredBloodPressure
Usage: #example
* extension[MeasurementSettingExt].valueCodeableConcept = SMBPMeasurementSettingCodeSystem#non-clinical "Non-clinical environment"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Jake-Donald)
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* performer = Reference(patient-example-Jake-Donald)
* device = Reference(phd-bloodpressuremonitor-MS)
* method = SCT#31813000 "Vascular oscillometry (procedure)"
* component[SystolicBP].code = http://loinc.org#8480-6
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#8462-4
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "mm[Hg]"


//Vital Sign IG Blood Pressure Panel Example (Mandatory) 
Instance: BloodPressurePanel-Madatory
InstanceOf: SelfMeasuredBloodPressure
Usage: #example
* status = #final
* category = ObsCat#vital-signs
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Jake-Donald)
* effectiveDateTime = "2022-02-10T12:00:29-09:00"
* component[SystolicBP].code = http://loinc.org#8480-6
* component[SystolicBP].valueQuantity = 140 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#8462-4
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "mm[Hg]"