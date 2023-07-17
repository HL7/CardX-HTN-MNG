Profile: MinimumBloodPressurePanel
Parent: Observation
Id: min-blood-pressure-panel
Title: "Minimum Blood Pressure Panel"
Description: "The lowest measured systolic and diastolic blood pressures measured during a given time frame."
* status 1..1 MS  // wondering if we'll use specific value from or full list from https://build.fhir.org/valueset-observation-status.html
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
* component ^short = "Blood pressure components" // Wondering if wording needs to reflect these BP values were not necessarily obtained simultaneously?
* component contains
    MinSystolicBP 1..1 and
    MinDiastolicBP 1..1
* component[MinSystolicBP].code.coding.system 1..1 MS  // Temp SNOMEDCT till we have LOINC
* component[MinSystolicBP].code.coding.system only uri
* component[MinSystolicBP].code.coding.system = "http://snomed.info/sct" (exactly)
* component[MinSystolicBP].code.coding.code 1..1 MS
* component[MinSystolicBP].code.coding.code only code
* component[MinSystolicBP].code.coding.code = "314438006" (exactly)
* component[MinSystolicBP].value[x] only Quantity
* component[MinSystolicBP].valueQuantity MS
* component[MinSystolicBP].valueQuantity.value 1..1 MS
* component[MinSystolicBP].valueQuantity.unit 1..1 MS
* component[MinSystolicBP].valueQuantity.system 1..1 MS
* component[MinSystolicBP].valueQuantity.system only uri
* component[MinSystolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MinSystolicBP].valueQuantity.code 1..1 MS
* component[MinSystolicBP].valueQuantity.code only code
* component[MinSystolicBP].valueQuantity.code = #mm[Hg] (exactly)
// * component[MinSystolicBP].interpretation.coding.system 0..1  // adding for component, the value may be min, but still high
// * component[MinSystolicBP].interpretation.coding.code 0..1 // adding for component, the value may be min, but still high
* component[MinDiastolicBP].code.coding.system 1..1 MS  // Temp SNOMEDCT till we have LOINC
* component[MinDiastolicBP].code.coding.system only uri
* component[MinDiastolicBP].code.coding.system = "http://snomed.info/sct" (exactly)
* component[MinDiastolicBP].code.coding.code 1..1 MS
* component[MinDiastolicBP].code.coding.code only code
* component[MinDiastolicBP].code.coding.code = "314451001" (exactly)
* component[MinDiastolicBP].value[x] only Quantity
* component[MinDiastolicBP].valueQuantity MS
* component[MinDiastolicBP].valueQuantity.value 1..1 MS
* component[MinDiastolicBP].valueQuantity.unit 1..1 MS
* component[MinDiastolicBP].valueQuantity.system 1..1 MS
* component[MinDiastolicBP].valueQuantity.system only uri
* component[MinDiastolicBP].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MinDiastolicBP].valueQuantity.code 1..1 MS
* component[MinDiastolicBP].valueQuantity.code only code
* component[MinDiastolicBP].valueQuantity.code = #mm[Hg] (exactly)
// * component[MinDiastolicBP].interpretation.coding.system 0..1  // adding for component, the value may be min, but still high
// * component[MinDiastolicBP].interpretation.coding.code 0..1 // adding for component, the value may be min, but still high