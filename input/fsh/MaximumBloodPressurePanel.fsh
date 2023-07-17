Profile: MaximumBloodPressurePanel
Parent: Observation
Id: max-blood-pressure-panel
Title: "Maximum Blood Pressure Panel"
Description: "The highest measured systolic and diastolic blood pressures measured during a given time frame."
* status MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* value[x] 0..0
* interpretation only CodeableConcept
* interpretation from NumericResultInterpretationNom (extensible)
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Blood pressure components"
* component contains
    MaxSystolicBP 1..1 and
    MaxDiastolicBP 1..1
* component[MaxSystolicBP].value[x] only Quantity
* component[MaxSystolicBP].valueQuantity MS
* component[MaxSystolicBP].valueQuantity.value 1..1 MS
* component[MaxSystolicBP].valueQuantity.unit 1..1 MS
* component[MaxSystolicBP].valueQuantity.system 1..1 MS
* component[MaxSystolicBP].valueQuantity.system only uri
* component[MaxSystolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MaxSystolicBP].valueQuantity.code 1..1 MS
* component[MaxSystolicBP].valueQuantity.code only code
* component[MaxSystolicBP].valueQuantity.code = #mm[Hg] (exactly)
* component[MaxDiastolicBP].value[x] only Quantity
* component[MaxDiastolicBP].valueQuantity MS
* component[MaxDiastolicBP].valueQuantity.value 1..1 MS
* component[MaxDiastolicBP].valueQuantity.unit 1..1 MS
* component[MaxDiastolicBP].valueQuantity.system 1..1 MS
* component[MaxDiastolicBP].valueQuantity.system only uri
* component[MaxDiastolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MaxDiastolicBP].valueQuantity.code 1..1 MS
* component[MaxDiastolicBP].valueQuantity.code only code
* component[MaxDiastolicBP].valueQuantity.code = #mm[Hg] (exactly)