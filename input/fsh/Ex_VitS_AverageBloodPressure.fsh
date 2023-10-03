Instance: AverageBloodPressure-example
InstanceOf: AverageSMBP
Usage: #example
* extension[NumberOfMeasurementsExt].valueQuantity.value = 7 
* status = #final
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue)
* effectivePeriod.start = "2019-10-16T12:12:29-09:00"
* effectivePeriod.end = "2019-10-16T12:42:29-09:00"
* issued = "2019-10-16T12:12:29-10:00"
* performer = Reference(practitioner-example-Mary-Hill)
* bodySite = http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non invasive method"
* device = Reference(phd-bloodpressuremonitor-MS)
* derivedFrom = Reference(SMBP-1AM-Day1)
* derivedFrom = Reference(SMBP-2AM-Day1)
* derivedFrom = Reference(SMBP-1PM-Day1)
* derivedFrom = Reference(SMBP-2PM-Day1)
* derivedFrom = Reference(SMBP-1AM-Day2)
* derivedFrom = Reference(SMBP-2AM-Day2)
* derivedFrom = Reference(SMBP-1PM-Day2)
* derivedFrom = Reference(SMBP-2PM-Day2)
* component[SystolicBP].code = http://loinc.org#96608-5 "Systolic blood pressure mean"
* component[SystolicBP].valueQuantity = 136 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#96609-3 "Diastolic blood pressure mean"
* component[DiastolicBP].valueQuantity = 86 'mm[Hg]' "mm[Hg]"

Instance: SMBP-Protocol
InstanceOf: AverageSMBP
Usage: #example
* extension[NumberOfMeasurementsExt].valueQuantity.value = 7 
* status = #final
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue)
* effectivePeriod.start = "2023-03-01T08:00:29-09:00"
* effectivePeriod.end = "2023-03-07T07:58:30-09:00"
* issued = "2019-03-07T12:12:29-10:00"
* performer = Reference(practitioner-example-Mary-Hill)
* bodySite = http://snomed.info/sct#723961002 "Structure of left brachial artery (body structure)"
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non invasive method"
* device = Reference(phd-bloodpressuremonitor-MS)
* derivedFrom = Reference(SMBP-1AM-Day1)
* derivedFrom = Reference(SMBP-2AM-Day1)
* derivedFrom = Reference(SMBP-1PM-Day1)
* derivedFrom = Reference(SMBP-2PM-Day1)
* derivedFrom = Reference(SMBP-1AM-Day2)
* derivedFrom = Reference(SMBP-2AM-Day2)
* derivedFrom = Reference(SMBP-1PM-Day2)
* derivedFrom = Reference(SMBP-2PM-Day2)
* derivedFrom = Reference(SMBP-1AM-Day3)
* derivedFrom = Reference(SMBP-2AM-Day3)
* derivedFrom = Reference(SMBP-1PM-Day3)
* derivedFrom = Reference(SMBP-2PM-Day3)
* derivedFrom = Reference(SMBP-1AM-Day4)
* derivedFrom = Reference(SMBP-1AM-Day4)
* derivedFrom = Reference(SMBP-1AM-Day4)
* derivedFrom = Reference(SMBP-1AM-Day4)
* derivedFrom = Reference(SMBP-1AM-Day5)
* derivedFrom = Reference(SMBP-1AM-Day5)
* derivedFrom = Reference(SMBP-1AM-Day5)
* derivedFrom = Reference(SMBP-1AM-Day5)
* derivedFrom = Reference(SMBP-1AM-Day6)
* derivedFrom = Reference(SMBP-1AM-Day6)
* derivedFrom = Reference(SMBP-1AM-Day6)
* derivedFrom = Reference(SMBP-1AM-Day6)
* derivedFrom = Reference(SMBP-1AM-Day7)
* derivedFrom = Reference(SMBP-1AM-Day7)
* derivedFrom = Reference(SMBP-1AM-Day7)
* derivedFrom = Reference(SMBP-1AM-Day7)
* component[SystolicBP].code = http://loinc.org#96608-5 "Systolic blood pressure mean"
* component[SystolicBP].valueQuantity = 134 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#96609-3 "Diastolic blood pressure mean"
* component[DiastolicBP].valueQuantity = 84 'mm[Hg]' "mm[Hg]"