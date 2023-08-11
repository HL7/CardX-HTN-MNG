// Create an example where the average Blood Pressure links back to the individual readings 
// or Reference(Individual-Diastolic-Readings-1)

Instance: SMBP-Protocol
InstanceOf: AverageBloodPressure
Usage: #example
* extension[CalcDateTime].valueDateTime = "2019-10-19T12:43:29-09:00"
* extension[NumberOfMeasurementsExt].valueQuantity.value = 12 
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* subject = Reference(patient-example-Sally-Sue) 
* effectivePeriod.start = "2019-10-16T12:12:29-09:00"
* effectivePeriod.end = "2019-10-19T12:42:29-09:00"
* issued = "2019-10-16T12:12:29-10:00"
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non invasive method"
* device = Reference(Device/BPDevice2-example)
* derivedFrom[0] = Reference(Observation-1AM-Day1) 
* derivedFrom[1] = Reference(Observation-2AM-Day1) 
* derivedFrom[2] = Reference(Observation-1PM-Day1) 
* derivedFrom[3] = Reference(Observation-2PM-Day1)
* derivedFrom[4] = Reference(Observation-1AM-Day2)
* derivedFrom[5] = Reference(Observation-2AM-Day2)
* derivedFrom[6] = Reference(Observation-1PM-Day2)
* derivedFrom[7] = Reference(Observation-2PM-Day2)
* derivedFrom[8] = Reference(Observation-1AM-Day3)
* derivedFrom[9] = Reference(Observation-2AM-Day3)
* derivedFrom[10] = Reference(Observation-1PM-Day3)
* derivedFrom[11] = Reference(Observation-2PM-Day3)
* derivedFrom[12] = Reference(Observation-1AM-Day4)
* derivedFrom[13] = Reference(Observation-2AM-Day4)
* derivedFrom[14] = Reference(Observation-1PM-Day4)
* derivedFrom[15] = Reference(Observation-2PM-Day4)
* derivedFrom[16] = Reference(Observation-1AM-Day5)
* derivedFrom[17] = Reference(Observation-2AM-Day5)
* derivedFrom[18] = Reference(Observation-1PM-Day5)
* derivedFrom[19] = Reference(Observation-2PM-Day5)
* derivedFrom[20] = Reference(Observation-1AM-Day6)
* derivedFrom[21] = Reference(Observation-2AM-Day6)
* derivedFrom[22] = Reference(Observation-1PM-Day6)
* derivedFrom[23] = Reference(Observation-2PM-Day6)
* derivedFrom[24] = Reference(Observation-1AM-Day7)
* derivedFrom[25] = Reference(Observation-2AM-Day7)
* derivedFrom[26] = Reference(Observation-1PM-Day7)
* derivedFrom[27] = Reference(Observation-2PM-Day7)
* component[SystolicBP].code = http://loinc.org#96608-5 "Systolic blood pressure mean"
* component[SystolicBP].valueQuantity = 130 'mm[Hg]' "mm[Hg]"
* component[DiastolicBP].code = http://loinc.org#96609-3 "Diastolic blood pressure mean"
* component[DiastolicBP].valueQuantity = 88 'mm[Hg]' "mm[Hg]"