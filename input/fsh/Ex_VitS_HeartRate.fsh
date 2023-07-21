
Instance: HeartRate-MS
InstanceOf: heart-rate
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/heart-rate"
* extension[bodyPosition].valueCodeableConcept = http://snomed.info/sct#30212006 "Fowlers Position"
* extension[ExerciseAssociationExt].valueCodeableConcept = http://snomed.info/sct#255214003 "At rest"
* extension[MeasurementSettingExt].valueCodeableConcept = http://snomed.info/sct#264362003 "Home"
* extension[measurementDevice].valueCodeableConcept = http://snomed.info/sct#70665002 "Blood Pressure Cuff"
* extension[SleepStatusExt].valueCodeableConcept = http://snomed.info/sct#248218005 "Awake"
* status = #final
* category = ObsCat#vital-signs
* code = http://loinc.org#8867-4
* code.text = "Heart rate"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-10-16T12:12:29-09:00"
* valueQuantity = 120 '/min' "'/min'"
* bodySite = http://snomed.info/sct#368505008 "Structure of right ulnar artery"
* method = http://snomed.info/sct#239516002 "Monitoring procedure (regime/therapy)"

Instance: HeartRate-Mandatory
InstanceOf: heart-rate
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vitals/StructureDefinition/heart-rate"
* status = #final
* category = ObsCat#vital-signs
* code = http://loinc.org#8867-4
* code.text = "Heart rate"
* subject = Reference(patient-example-Sally-Sue)
* effectiveDateTime = "2023-10-16T12:12:29-09:00"
