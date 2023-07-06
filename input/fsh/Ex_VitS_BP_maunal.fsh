/// Manually Inputed
//Vital Sign IG Blood Pressure Panel Example (MS)
/// Where would you be manually inputting all this informaiton, would it be on the intermediary application, the device gateway? 
    // -simply the absence of the device reference would make it manually inputted
    // NOTE: performer is MS, which does not make sense in terms of SMBP, unless the patient info is entered for subject and performer

Instance: BloodPressurePanel-MS-Manual
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#255214003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Jake-Donald)
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* performer = Reference(patient-example-Jake-Donald)
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#846
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"

// there would be no change to the Mandatory example, or in the mandatory example there is no way to identify where the data was generated and how
//Vital Sign IG Blood Pressure Panel Example (Mandatory) 
Instance: BloodPressurePanel-Madatory-Manual
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Jake-Donald)
* effectiveDateTime = "2022-02-10T12:00:29-09:00"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 140 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"