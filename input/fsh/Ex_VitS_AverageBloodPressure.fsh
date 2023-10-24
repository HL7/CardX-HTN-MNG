Instance: AverageBloodPressure-example
InstanceOf: AverageSMBP
Usage: #example
Description: "An example of an average blood pressure derived from SMBP measurements."
* extension[NumberOfMeasurementsExt].valueQuantity.value = 7 
* status = #final
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue)
* effectivePeriod.start = "2019-10-16T06:04:00-0600"
* effectivePeriod.end = "2019-10-17T20:12:00-0600"
* issued = "2019-10-17T20:12:29-0600"
* performer = Reference(practitioner-example-Mary-Hill)
* bodySite = SCT#723961002 "Structure of left brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* derivedFrom[0] = Reference(SMBP-FirstAM-Measurement-Day1)
* derivedFrom[1] = Reference(SMBP-SecondAM-Measurement-Day1)
* derivedFrom[2] = Reference(SMBP-FirstPM-Measurement-Day1)
* derivedFrom[3] = Reference(SMBP-SecondPM-Measurement-Day1)
* derivedFrom[4] = Reference(SMBP-FirstAM-Measurement-Day2)
* derivedFrom[5] = Reference(SMBP-SecondAM-Measurement-Day2)
* derivedFrom[6] = Reference(SMBP-FirstPM-Measurement-Day2)
* derivedFrom[7] = Reference(SMBP-SecondPM-Measurement-Day2)
* component[SystolicBP].code = LNC#96608-5 "Systolic blood pressure mean"
* component[SystolicBP].valueQuantity = 136 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = LNC#96609-3 "Diastolic blood pressure mean"
* component[DiastolicBP].valueQuantity = 86 'mm[Hg]' "mm[Hg]"

Instance: SMBP-Protocol
InstanceOf: AverageSMBP
Usage: #example
Description: "An example of an average blood pressure derived from measurements that follow the SMBP protocol."
* extension[NumberOfMeasurementsExt].valueQuantity.value = 28 
* status = #final
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue)
* effectivePeriod.start = "2023-03-01"
* effectivePeriod.end = "2023-03-07"
* issued = "2019-03-07T12:12:29-10:00"
* performer = Reference(practitioner-example-Mary-Hill)
* bodySite = SCT#723961002 "Structure of left brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* derivedFrom[0] = Reference(SMBP-FirstAM-Measurement-Day1)
* derivedFrom[1] = Reference(SMBP-SecondAM-Measurement-Day1)
* derivedFrom[2] = Reference(SMBP-FirstPM-Measurement-Day1)
* derivedFrom[3] = Reference(SMBP-SecondPM-Measurement-Day1)
* derivedFrom[4] = Reference(SMBP-FirstAM-Measurement-Day2)
* derivedFrom[5] = Reference(SMBP-SecondAM-Measurement-Day2)
* derivedFrom[6] = Reference(SMBP-FirstPM-Measurement-Day2)
* derivedFrom[7] = Reference(SMBP-SecondPM-Measurement-Day2)
* derivedFrom[8] = Reference(SMBP-FirstAM-Measurement-Day3)
* derivedFrom[9] = Reference(SMBP-SecondAM-Measurement-Day3)
* derivedFrom[10] = Reference(SMBP-FirstPM-Measurement-Day3)
* derivedFrom[11] = Reference(SMBP-SecondPM-Measurement-Day3)
* derivedFrom[12] = Reference(SMBP-FirstAM-Measurement-Day4)
* derivedFrom[13] = Reference(SMBP-SecondAM-Measurement-Day4)
* derivedFrom[14] = Reference(SMBP-FirstPM-Measurement-Day4)
* derivedFrom[15] = Reference(SMBP-SecondPM-Measurement-Day4)
* derivedFrom[16] = Reference(SMBP-FirstAM-Measurement-Day5)
* derivedFrom[17] = Reference(SMBP-SecondAM-Measurement-Day5)
* derivedFrom[18] = Reference(SMBP-FirstPM-Measurement-Day5)
* derivedFrom[19] = Reference(SMBP-SecondPM-Measurement-Day5)
* derivedFrom[20] = Reference(SMBP-FirstAM-Measurement-Day6)
* derivedFrom[21] = Reference(SMBP-SecondAM-Measurement-Day6)
* derivedFrom[22] = Reference(SMBP-FirstPM-Measurement-Day6)
* derivedFrom[23] = Reference(SMBP-SecondPM-Measurement-Day6)
* derivedFrom[24] = Reference(SMBP-FirstAM-Measurement-Day7)
* derivedFrom[25] = Reference(SMBP-SecondAM-Measurement-Day7)
* derivedFrom[26] = Reference(SMBP-FirstPM-Measurement-Day7)
* derivedFrom[27] = Reference(SMBP-SecondPM-Measurement-Day7)
* component[SystolicBP].code = LNC#96608-5 "Systolic blood pressure mean"
* component[SystolicBP].valueQuantity = 134 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = LNC#96609-3 "Diastolic blood pressure mean"
* component[DiastolicBP].valueQuantity = 84 'mm[Hg]' "mm[Hg]"