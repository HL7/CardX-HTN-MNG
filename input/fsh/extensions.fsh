Extension: BloodPressureCuffSizeExt
Id: bp-cuff-size-ext
Title: "Blood Pressure Cuff Size"
Description: "The size of pressure cuff used to measure blood pressure."
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from BloodPressureCuffSizevalueset (extensible)

Extension: MeasurementProtocol
Id: MeasurementProtocolExt
Title: "Measurement Protocol"
Description: "The system or defined process used in a measurement."
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from MeasurementProtocolVS (extensible)

Extension: MeasurementSettingExt
Id: MeasurementSettingExt
Title: "Measurement Setting"
Description: "The location or setting the subject was in when the measurement was obtained. For example, home, clinic, hospital. etc."
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from MeasurementSettingVS (extensible)

Extension: NumberOfMeasurements
Id: NumberOfMeasurementsExt
Title: "Number of Measurements"
Description: "A count of the number of measurements used in a calculation, such as Average Blood Pressure."
* value[x] only Quantity

Extension: DateTimeOfCalculation
Id: datetime-of-calculation
Title: "Date and Time of Calculation"
Description: "A time stamp that indicates when the calculation of a result was made."
* value[x] only dateTime