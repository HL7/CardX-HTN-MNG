Profile: AverageSMBP
Parent: Observation
Id: average-smbp
Title: "Average Self-measured Blood Pressure"
Description: "A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has systolic and diastolic components."
* obeys vs-2
* extension contains
    NumberOfMeasurements named NumberOfMeasurements 1..1 MS
* extension[NumberOfMeasurements] ^short = "Number of Measurements"
* status MS
* status from SMBPStatusVS (required)
* category 1..* MS
* category = ObsCat#vital-signs
* code MS
* code ^short = "Average blood pressure"
* code = LNC#96607-7
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] only Period
* effectivePeriod 1..1 MS
* effectivePeriod ^short = "The time range in which measurements were taken to calculate the average."
* effectivePeriod.start 1..1
* effectivePeriod.end 1..1
* issued 1..1 MS
* performer 1..1 MS
* performer only Reference(Patient)
* value[x] 0..0
* dataAbsentReason MS
* derivedFrom MS
* derivedFrom only Reference(SelfMeasuredBloodPressure)
* component MS
* component obeys vs-3
* component.code MS
* component.value[x] MS
* component.dataAbsentReason MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Blood pressure components"
* component contains
    SystolicBP 1..1 and
    DiastolicBP 1..1
* component[SystolicBP] MS
* component[SystolicBP] ^short = "Systolic blood pressure mean"
* component[SystolicBP].code MS
* component[SystolicBP].code ^short = "Systolic blood pressure mean"
* component[SystolicBP].code = LNC#96608-5
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
* component[DiastolicBP] MS
* component[DiastolicBP] ^short = "Diastolic blood pressure mean"
* component[DiastolicBP].code MS
* component[DiastolicBP].code ^short = "Diastolic blood pressure mean"
* component[DiastolicBP].code = LNC#96609-3
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

Invariant: vs-2
Description: "If there is no component or hasMember element then either a value[x] or a data absent reason must be present."
Severity: #error
Expression: "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())"

Invariant: vs-3
Description: "If there is not a value a data absent reason must be present"
Severity: #error
Expression: "value.exists() or dataAbsentReason.exists()"
