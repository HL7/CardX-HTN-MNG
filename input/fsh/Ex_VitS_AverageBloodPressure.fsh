/// Vital Signs IG Average Blood Pressure Profile Example  

Instance: AverageBloodPressure-MS
InstanceOf: AverageBloodPressure
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/average-blood-pressure"
* extension[MeasurementProtocolExt].valueCodeableConcept = http://hl7.org/fhir/us/vitals/CodeSystem/MeasurementProtocolTemporaryCodeSystem#AOBP "Automated office blood pressure protocol"
* extension[ExerciseAssociationExt].valueCodeableConcept = http://snomed.info/sct#255214003 "At rest"
* extension[MeasurementSettingExt].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* extension[BodyPosition].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[NumberOfMeasurementsExt].valueQuantity.value = 12 
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