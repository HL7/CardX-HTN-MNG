Profile: AverageBloodPressure
Parent: VitalSignsAvgBPProfile
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
* component[DiastolicBP] 1..1
