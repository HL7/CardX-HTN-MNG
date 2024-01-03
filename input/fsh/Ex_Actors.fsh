Instance: patient-example-Sally-Sue
InstanceOf: Patient
Description: "A patient example to enhance other examples in this IG."
Usage: #example
* meta.security = http://example.org#HTEST "test health data"
* gender = #female
* identifier.use = #usual
* identifier.type = http://example.org#MR "Medical record number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "1032702"
* active = true
* name.family = "Sue"
* name.given[0] = "Sally"
* name.given[+] = "V."
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "sally.sue@example.com"
* gender = #female
* birthDate = "1954-02-20"
* address.line = "49 Meadow St"
* address.city = "Mounds"
* address.state = "MD"
* address.postalCode = "74047"
* address.country = "US"

Instance: practitioner-example-Mary-Hill
InstanceOf: Practitioner
Description: "A practitioner example for this IG."
Usage: #example
* identifier.value = "9941339108"
* name.family = "Mary"
* name.given = "Hill"
* name.prefix = "Dr"
* address.use = #home
* address.line = "1003 Healthcare Drive"
* address.city = "Amherst"
* address.state = "MD"
* address.postalCode = "01002"