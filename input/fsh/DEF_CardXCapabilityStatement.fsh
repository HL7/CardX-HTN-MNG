Instance: CardXCapabilityStatementServer
InstanceOf: CapabilityStatement
Title: "HTN-Mng-CardX Server Capability Statement"
Usage: #definition
* name = "CardXHTNServerCapabilityStatement"
* description = "The capabilities that a CardX Hypertension Management server system should/shall support."
* status = #draft
* date = "2023-12-05"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* insert SupportResource(Patient, #SHOULD)
* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn-mng/StructureDefinition/self-measured-bp, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn-mng/StructureDefinition/average-smbp, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn-mng/StructureDefinition/smbp-associated-heart-rate, #SHOULD)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHOULD)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)

* rest.mode = #server
* rest.documentation =  "A CardX Hypertension Management Patient Management Server **SHALL**:\n\n1. Support the Observation resource.\n\n1. Self-measured Blood Pressure Profile. \n1. Support the Average Self-measured Blood Pressure profile.\n1. Support json and xml source formats for all CardX interactions. \n1. Support searches by Observation.category.\n\n1. Support create capabilites for the IG profiles. \n\n\nA CardX Hypertension Management Server **SHOULD**:\n\n1. Support the Self-measured Blood Pressure Associated Heart Rate profile.\n1. Support searches by Observation.patient.\n\n\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* rest.interaction.code = #transaction
* rest.interaction.code = #batch
* rest.interaction.code = #search-system
* rest.interaction.code = #history-system
* rest.interaction.documentation = "A CardX Hypertension Management Server **SHALL**:\n\n1. Support read operations. \n1. Support search-type operations. \n\n"

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = EXP
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = EXP
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = EXP
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = EXP
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: CardXCapabilityStatementClient
InstanceOf: CapabilityStatement
Title: "HTN-Mng-CardX Client Capability Statement"
Usage: #definition
* name = "CardXClientCapabilityStatement"
* description = "The capabilities that a CardX Hypertension Management client should/shall support."
* status = #draft
* date = "2023-12-05"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* insert SupportResource(Patient, #SHOULD)
* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn-mng/StructureDefinition/self-measured-bp, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn-mng/StructureDefinition/average-smbp, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/uv/cardx-htn-mng/StructureDefinition/smbp-associated-heart-rate, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHOULD)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)

* rest.mode = #client
* rest.documentation =  "A CardX Hypertension Management Client **SHALL**:\n\n1. Support the Self-measured Blood Pressure Profile. \n1. Support the Average Self-measured Blood Pressure profile.\n1. Support json and xml source formats for all CardX interactions. \n\n\n A CardX Hypertension Management Client **SHOULD**:\n\n1. Support the Self-measured Blood Pressure Associated Heart Rate profile.\n1. Support searches by Observation.patient.\n\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
/* * rest.interaction.code = Int#transaction
* rest.interaction.code = Int#batch
* rest.interaction.documentation = "A CardX Hypertension Management Server **SHALL**:\n\n1. Support transaction and batch operations. \n1\n" */

