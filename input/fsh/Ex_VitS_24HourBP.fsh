
Instance: TwentyFourHourBloodPressure-MS
InstanceOf: TwentyFourHourBloodPressure
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/twenty-four-hour-blood-pressure"
* extension[MeasurementSettingExt].valueCodeableConcept = http://snomed.info/sct#264362003 "Home (environment)"
* extension[BodyPosition].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* status = #final
* category = ObsCat#vital-signs
* code = http://loinc.org#97844-5 "Blood Pressure panel 24 hour mean"
* subject = Reference(patient-example-Jake-Donald)
* effectivePeriod.start = "2023-10-16T12:30:00+10:00"
* effectivePeriod.end = "2023-10-17T12:30:00+10:00"
* bodySite = http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* device = Reference(phd-bloodpressuremonitor-MS)
* component[SystolicBP24HMean].code = http://loinc.org#8490-5 "Systolic blood pressure 24 hour mean"
* component[SystolicBP24HMean].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP24HMean].code = http://loinc.org#8472-3 "Diastolic blood pressure 24 hour mean"
* component[DiastolicBP24HMean].valueQuantity = 80 'mm[Hg]' "mm[Hg]"

Instance: TwentyFourHourBloodPressure-Mandatory
InstanceOf: TwentyFourHourBloodPressure
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/twenty-four-hour-blood-pressure"
* status = #final
* category = ObsCat#vital-signs
* code = http://loinc.org#97844-5 "Blood Pressure panel 24 hour mean"
* subject = Reference(patient-example-Jake-Donald)
* effectivePeriod.start = "2023-10-16T12:30:00+10:00"
* effectivePeriod.end = "2023-10-17T12:30:00+10:00"
* component[SystolicBP24HMean].code = http://loinc.org#8490-5 "Systolic blood pressure 24 hour mean"
* component[SystolicBP24HMean].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP24HMean].code = http://loinc.org#8472-3 "Diastolic blood pressure 24 hour mean"
* component[DiastolicBP24HMean].valueQuantity = 80 'mm[Hg]' "mm[Hg]"