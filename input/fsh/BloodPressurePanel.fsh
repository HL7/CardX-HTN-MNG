Profile: BloodPressurePanel
Parent: VitalSignsBPPanelProfile
Id: blood-pressure-panel
Title: "Blood Pressure Panel"
Description: "Blood Pressure Panel; a grouping of systolic and diastolic blood pressure components."
/* * extension contains
    ObservationBodyPosition named bodyPosition 0..1 MS and
    SleepStatus named sleepStatus 0..1 MS and
    ExerciseAssociationExt named exerciseAssociation 0..1 MS and
    MeasurementSettingExt named MeasurementSetting 0..1 MS
* extension[bodyPosition] ^short = "Body Position"
* extension[bodyPosition].valueCodeableConcept from BodyPositionvalueset (extensible)
* extension[sleepStatus] ^short = "Sleep Status"
* extension[exerciseAssociation] ^short = "Exercise Association"
* extension[MeasurementSetting] ^short = "Measurement setting" */
* status MS
* code = LNC#85354-9
* code ^short = "Blood pressure panel with all children optional"
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* value[x] 0..0
* interpretation 0..1
* interpretation only CodeableConcept
* interpretation from NumericResultInterpretationNom (extensible)
* bodySite MS
* bodySite from BloodPressureMeasurementBodyLocationPrecoodinated (extensible)
* bodySite ^binding.description = "A set of codes that describe where on/in the body an observation or procedure took place"
* method MS
* method from BloodPressureMeasurementMethodvalueset (extensible)
* method ^binding.description = "A set of codes that describe the method used to measure a blood pressure"
* specimen 0..0
* device 0..1 MS
* device ^short = "Blood Pressure Device"
* component[DiastolicBP] 1..1


