Extension: NumberOfMeasurements
Id: NumberOfMeasurementsExt
Title: "Number of Measurements"
Description: "A count of the number of measurements used in a calculation, such as Average Blood Pressure."
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* value[x] only integer
* valueInteger 1..1