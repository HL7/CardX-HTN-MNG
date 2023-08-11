/// Vital Signs IG Average Blood Pressure Profile Example  

Instance: AverageBloodPressure-MS
InstanceOf: AverageBloodPressure
Usage: #example
* extension[CalcDateTime].valueDateTime = "2019-10-16T12:43:29-09:00"
* extension[NumberOfMeasurementsExt].valueQuantity.value = 6 
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue)
* effectivePeriod.start = "2019-10-16T12:12:29-09:00"
* effectivePeriod.end = "2019-10-16T12:42:29-09:00"
* issued = "2019-10-16T12:12:29-10:00"
* performer = Reference(practitioner-example-Mary-Hill)
* bodySite = http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non invasive method"
* device = Reference(phd-bloodpressuremonitor-MS)
* component[SystolicBP].code = http://loinc.org#96608-5 "Systolic blood pressure mean"
* component[SystolicBP].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#96609-3 "Diastolic blood pressure mean"
* component[DiastolicBP].valueQuantity = 80 'mm[Hg]' "mm[Hg]"


Instance: AverageBloodPressure-Mandatory
InstanceOf: AverageBloodPressure
Usage: #example
* extension[CalcDateTime].valueDateTime = "2019-10-16T12:43:29-09:00"
* extension[NumberOfMeasurementsExt].url = "http://hl7.org/fhir/us/cardx-htn/StructureDefinition/NumberOfMeasurementsExt"
* extension[NumberOfMeasurementsExt].valueQuantity.value = 12 
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/average-blood-pressure"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue)
* effectivePeriod.start = "2023-01-16T12:11:29-10:00"
* effectivePeriod.end = "2023-02-16T12:42:29-09:00"
* component[SystolicBP].code = http://loinc.org#96608-5 "Systolic blood pressure mean"
* component[SystolicBP].valueQuantity = 160 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#96609-3 "Diastolic blood pressure mean"
* component[DiastolicBP].valueQuantity = 90 'mm[Hg]' "mm[Hg]"