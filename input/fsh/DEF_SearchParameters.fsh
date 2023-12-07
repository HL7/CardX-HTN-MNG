Instance: CardXCategorySP
InstanceOf: SearchParameter
Title: "Search by category for observations with multiple categories."
* url = "http://hl7.org/fhir/uv/cardx-htn/SearchParameter/category"
* derivedFrom = "http://hl7.org/fhir/SearchParameter"
* name = "CardX Category search parameter"
* status = #draft
* experimental = false
* description = "This SearchParameter enables query of blood pressures by category"
* code = #category
* base[0] = #Observation
* type = #token
* multipleOr = true
* expression = "Observation.category"
* xpath = "f:Observation/f:category"
* xpathUsage = #normal

Instance: CardXMeasurementSettingSP
InstanceOf: SearchParameter
Title: "Search by Measurement Setting for vital signs observations that are performed in a home (or non-clinical) environment."
* url = "http://hl7.org/fhir/uv/cardx-htn/SearchParameter/measurementsetting"
* derivedFrom = "http://hl7.org/fhir/SearchParameter"
* name = "CardX Measurement Setting search parameter"
* status = #draft
* experimental = false
* description = "This SearchParameter enables query of blood pressures by the measurement setting extension"
* code = #measurmentSetting
* base[0] = #Observation
* type = #token
* multipleOr = true
* expression = "Observation.extension.where(url = 'http://hl7.org/fhir/uv/cardx-htn/StructureDefinition/MeasurementSettingExt').extension.value.code"
* xpath = "f:Observation/f:extension[@url='http://hl7.org/fhir/uv/cardx-htn/StructureDefinition/MeasurementSettingExt']/f:extension/f:valueCodeableConcept/f:coding/f:code/@value"
* xpathUsage = #normal