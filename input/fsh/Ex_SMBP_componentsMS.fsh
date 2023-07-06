// Examples of individual readings Mandatory
//SMBP Protocol 
    /// 4 Readings (2 Morn + 2 Night)
    /// Min -3 Days 
    ///Preferred 7 days 

Instance: Observation-1AM-Day1
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-01T08:00:29-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 125 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"

Instance: Observation-2AM-Day1
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-01T08:01:29-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 126 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 82 'mm[Hg]' "mm[Hg]"

Instance: Observation-1PM-Day1
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-01T07:01:29-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 130 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 83 'mm[Hg]' "mm[Hg]"

Instance: Observation-2PM-Day1
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-01T07:01:29-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 130 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 83 'mm[Hg]' "mm[Hg]"


Instance: Observation-1AM-Day2
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-02T08:09:33-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 140 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 90 'mm[Hg]' "mm[Hg]"

Instance: Observation-2AM-Day2
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-02T08:10:28-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 143 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 92 'mm[Hg]' "mm[Hg]"

Instance: Observation-1PM-Day2
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-02T07:10:20-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 150 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 92 'mm[Hg]' "mm[Hg]"

Instance: Observation-2PM-Day2
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-02T07:11:20-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 148 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 94 'mm[Hg]' "mm[Hg]"

Instance: Observation-1AM-Day3
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-03T06:55:20-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 150 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 94 'mm[Hg]' "mm[Hg]"

Instance: Observation-2AM-Day3
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-03T06:56:20-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 148 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 95 'mm[Hg]' "mm[Hg]"

Instance: Observation-1PM-Day3
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-03T08:56:20-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 140 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 90 'mm[Hg]' "mm[Hg]"

Instance: Observation-2PM-Day3
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-03T08:56:20-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 140 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 90 'mm[Hg]' "mm[Hg]"


Instance: Observation-1AM-Day4
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-04T09:00:31-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 155 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 98 'mm[Hg]' "mm[Hg]"

Instance: Observation-2AM-Day4
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-04T09:03:31-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 149 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 95 'mm[Hg]' "mm[Hg]"

Instance: Observation-1PM-Day4
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-04T08:30:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 130 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"

Instance: Observation-2PM-Day4
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-04T08:32:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 128 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"

Instance: Observation-1AM-Day5
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-05T10:32:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"

Instance: Observation-2AM-Day5
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-05T10:33:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 125 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 82 'mm[Hg]' "mm[Hg]"


Instance: Observation-1PM-Day5
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-05T05:33:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 128 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 86 'mm[Hg]' "mm[Hg]"

Instance: Observation-2PM-Day5
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-05T05:35:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 122 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 82 'mm[Hg]' "mm[Hg]"


Instance: Observation-1AM-Day6
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-06T10:15:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 145 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 95 'mm[Hg]' "mm[Hg]"

Instance: Observation-2AM-Day6
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-06T10:16:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 140 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 90 'mm[Hg]' "mm[Hg]"

Instance: Observation-1PM-Day6
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-06T06:16:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 130 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 85 'mm[Hg]' "mm[Hg]"

Instance: Observation-2PM-Day6
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-06T06:17:21-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 128 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 85 'mm[Hg]' "mm[Hg]"

Instance: Observation-1AM-Day7
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-07T09:45:30-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 125 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 82 'mm[Hg]' "mm[Hg]"

Instance: Observation-2AM-Day7
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-07T09:46:30-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 126 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 82 'mm[Hg]' "mm[Hg]"

Instance: Observation-1PM-Day7
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-07T07:56:30-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 82 'mm[Hg]' "mm[Hg]"

Instance: Observation-2PM-Day7
InstanceOf: blood-pressure-panel
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/observation-bodyPosition"
* extension[=].valueCodeableConcept = http://snomed.info/sct#33586001 "Sitting Position"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/SleepStatusExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/ExerciseAssociationExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#263678003 "At rest"
* extension[+].url = "http://hl7.org/fhir/us/vitals/StructureDefinition/MeasurementSettingExt"
* extension[=].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-03-07T07:58:30-09:00"
* bodySite = http://snomed.info/sct#723962009 "Structure of right brachial artery (body structure)"
* device = Reference(phd-bloodpressuremonitor-MS)
* method = http://snomed.info/sct#17146006 "Arterial pressure monitoring, non-invasive method (regime/therapy)"
* component[0].code = http://loinc.org#8480-6
* component[=].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[+].code = http://loinc.org#8462-4
* component[=].valueQuantity = 80 'mm[Hg]' "mm[Hg]"