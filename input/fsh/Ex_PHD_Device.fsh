Instance: phd-bloodpressuremonitor-MS
InstanceOf: Device
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/phd/StructureDefinition/PhdDevice"
* identifier[0].type = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers#SYSID
* identifier[=].system = "urn:oid:1.2.840.10004.1.1.1.0.0.1.0.0.1.2680"
* identifier[=].value = "71-10-00-FE-FF-5F-49-B0"
* identifier[+].type = http://hl7.org/fhir/uv/phd/CodeSystem/ContinuaDeviceIdentifiers#BTMAC
* identifier[=].system = "http://hl7.org/fhir/sid/eui-48/bluetooth"
* identifier[=].value = "B0-49-5F-00-10-71"
* manufacturer = "OMRONHEALTHCARE"
* serialNumber = "20150200002A"
* modelNumber = "HEM-9200T"
* type = urn:iso:std:iso:11073:10101#65573
* type.text = "MDC_MOC_VMS_MDS_SIMP"
* specialization.systemType = urn:iso:std:iso:11073:10101#528391
* specialization.systemType.text = "MDC_DEV_SPEC_PROFILE_BP: Blood Pressure Cuff"
* specialization.version = "1"
* version[0].type = urn:iso:std:iso:11073:10101#531976
* version[=].type.text = "MDC_ID_PROD_SPEC_FW: Firmware revision"
* version[=].value = "C.00.7AJ-02"
* version[+].type = urn:iso:std:iso:11073:10101#531975
* version[=].type.text = "MDC_ID_PROD_SPEC_SW: Software revision"
* version[=].value = "0000000000000101"
* version[+].type = urn:iso:std:iso:11073:10101#531974
* version[=].type.text = "MDC_ID_PROD_SPEC_HW: Hardware revision"
* version[=].value = "0000000000000100"
* property.type = urn:iso:std:iso:11073:10101#68220
* property.type.text = "MDC_TIME_SYNC_PROTOCOL: Time synchronization protocol"
* property.valueCode = urn:iso:std:iso:11073:10101#532224
* property.valueCode.text = "MDC_TIME_SYNC_NONE:"