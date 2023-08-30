Profile: AverageBloodPressure
Parent: CoreVitalSigns
Id: average-blood-pressure
Title: "Average Blood Pressure"
Description: "A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has a systolic and a diastolic component."
* extension contains
    NumberOfMeasurements named NumberOfMeasurements 1..1 MS and
    DateTimeOfCalculation named CalcDateTime 0..1 MS
* extension[NumberOfMeasurements] ^short = "Number of Measurements"
* extension[CalcDateTime] ^short = "Calculation DateTime"
* subject 1..1
* effective[x] only Period
* effectivePeriod 1..1
* effectivePeriod ^short = "The time range in which measurements were taken to calculate the average."
* issued
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Blood pressure components"
* component contains
    SystolicBP 1..1 and
    DiastolicBP 1..1
* component[SystolicBP] ^short = "Systolic blood pressure mean"
* component[SystolicBP].code = LNC#96608-5
* component[SystolicBP].code MS
* component[SystolicBP].code ^short = "Systolic blood pressure mean"
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
* component[DiastolicBP].code = LNC#96609-3
* component[DiastolicBP].code MS
* component[DiastolicBP].code ^short = "Diastolic blood pressure mean"
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
