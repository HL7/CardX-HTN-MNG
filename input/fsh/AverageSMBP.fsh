Profile: AverageSMBP
Parent: CoreVitalSigns
Id: average-smbp
Title: "Average Self-measured Blood Pressure"
Description: "A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has a systolic and a diastolic component."
* extension contains
    NumberOfMeasurements named NumberOfMeasurements 1..1 MS
* extension[NumberOfMeasurements] ^short = "Number of Measurements"
* status MS
* status from SMBPStatusVS (required)
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.code"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice for category"
* category MS
* category contains
    smvs 1..1
* category[smvs].coding.code = SCT#310858007 "Self monitoring"
* code ^short = "Average blood pressure"
* code = LNC#96607-7
* subject 1..1
* effective[x] only Period
* effectivePeriod 1..1
* effectivePeriod ^short = "The time range in which measurements were taken to calculate the average."
* effectivePeriod.start 1..1
* effectivePeriod.end 1..1
* value[x] 0..0
* derivedFrom MS
* derivedFrom only Reference(SelfMeasuredBloodPressure)
* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding.code"
//* component ^slicing.discriminator.path = "code.coding.system"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Blood pressure components"
* component contains
    SystolicBP 1..1 and
    DiastolicBP 1..1
* component[SystolicBP] ^short = "Systolic blood pressure mean"
* component[SystolicBP].code MS
* component[SystolicBP].code ^short = "Systolic blood pressure mean"
* component[SystolicBP].code.coding.code = LNC#96608-5
* component[SystolicBP].value[x] only Quantity
* component[SystolicBP].valueQuantity MS
* component[SystolicBP].valueQuantity.value 1..1 MS
* component[SystolicBP].valueQuantity.unit 1..1 MS
* component[SystolicBP].valueQuantity.system 1..1 MS
* component[SystolicBP].valueQuantity.system only uri
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[SystolicBP].valueQuantity.code 1..1 MS
* component[SystolicBP].valueQuantity.code only code
* component[SystolicBP].valueQuantity.code = #mm[Hg] (exactly)
* component[DiastolicBP] ^short = "Diastolic blood pressure mean"
* component[DiastolicBP].code MS
* component[DiastolicBP].code ^short = "Diastolic blood pressure mean"
* component[DiastolicBP].code.coding.code = LNC#96609-3
* component[DiastolicBP].value[x] only Quantity
* component[DiastolicBP].valueQuantity MS
* component[DiastolicBP].valueQuantity.value 1..1 MS
* component[DiastolicBP].valueQuantity.unit 1..1 MS
* component[DiastolicBP].valueQuantity.system 1..1 MS
* component[DiastolicBP].valueQuantity.system only uri
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[DiastolicBP].valueQuantity.code 1..1 MS
* component[DiastolicBP].valueQuantity.code only code
* component[DiastolicBP].valueQuantity.code = UCUM#mm[Hg] (exactly)
