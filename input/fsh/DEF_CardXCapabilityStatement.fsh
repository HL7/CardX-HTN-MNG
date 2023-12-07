Instance: CardXCapabilityStatement
InstanceOf: CapabilityStatement
Title: "HTN-Mng-CardX Capability Statement"
Usage: #definition
* rest.documentation =  "A CardX Hypertension Management Server **SHALL**:\n\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json and xml source formats for all CodeX RT interactions.\n1. Identify the CodeX RT  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile individually and in combination.\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* name = "CardXCapabilityStatement"
* description = "CardX Hypertension Management CapabilityStatement"
* rest.mode = #server
* status = #draft
* date = "2023-12-05"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn/StructureDefinition/self-measured-bp, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn/StructureDefinition/average-smbp, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn/StructureDefinition/smbp-associated-heart-rate, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* rest.resource[=].extension[+].url = $exp
* rest.resource[=].extension[=].valueCode = #SHALL
/* * rest.resource[=].extension[+].extension[0].url = $exp
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "family"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "given"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "birthdate"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "gender" */
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
//* insert SearchParameterCombinations

Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

/* RuleSet: SearchParameterCombinations
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHOULD)
* rest.resource[=].extension[+].extension[0].url = $exp
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "identifier"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = $exp
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "subject"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].url = $exp
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = $exp
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "identifier"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].url = $exp
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = $exp
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "identifier"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].url = $exp
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = $exp
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "subject"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = $exp
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "subject"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination" */