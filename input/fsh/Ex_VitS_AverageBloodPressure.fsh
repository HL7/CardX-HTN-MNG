Instance: AverageSMBP-example
InstanceOf: AverageSMBP
Usage: #example
Description: "An example of an average blood pressure derived from SMBP measurements."
* extension.url = "http://hl7.org/fhir/uv/cardx-htn/StructureDefinition/NumberOfMeasurementsExt"
* extension.valueInteger = 8 
* status = #final
* category = ObsCat#vital-signs
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue)
* effectivePeriod.start = "2023-03-01T06:00:00-06:00"
* effectivePeriod.end = "2023-03-02T20:00:00-06:00"
* issued = "2023-03-02T20:12:29-06:00"
* performer = Reference(patient-example-Sally-Sue)
* device = Reference(example-smbp-device)
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

Instance: AverageSMBP-Protocol-example
InstanceOf: AverageSMBP
Usage: #example
Description: "An example of an average blood pressure derived from measurements that follow the SMBP protocol."
* extension.url = "http://hl7.org/fhir/uv/cardx-htn/StructureDefinition/NumberOfMeasurementsExt"
* extension.valueInteger = 28 
* status = #final
* category = ObsCat#vital-signs
* code.coding.system = "http://loinc.org"
* code.coding.code = LNC#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue)
* effectivePeriod.start = "2023-03-01T06:00:00-06:00"
* effectivePeriod.end = "2023-03-07T18:00:00-06:00"
* issued = "2019-03-07T19:12:29-10:00"
* performer = Reference(patient-example-Sally-Sue)
* device = Reference(example-smbp-device)
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
* component[SystolicBP].code = LNC#96608-5
* component[SystolicBP].valueQuantity = 134 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = LNC#96609-3
* component[DiastolicBP].valueQuantity = 84 'mm[Hg]' "mm[Hg]"