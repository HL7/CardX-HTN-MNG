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

Extension: SleepStatus
Id: SleepStatusExt
Title: "Sleep Status"
Description: "The state of wakefulness during the measurement."
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from SleepStatusvalueset (extensible)

Extension: ExerciseAssociationExt
Id: ExerciseAssociationExt
Title: "Exercise Association"
Description: "The exercise state associated with the measurement."
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from ExertionPhaseVS (extensible)

Extension: AssociatedSituationExt
Id: AssociatedSituationExt
Title: "Associated Situation"
Description: "Situations that may affect the measurement or assessment."
* valueCodeableConcept only CodeableConcept