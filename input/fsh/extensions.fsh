Extension: MeasurementSettingExt
Id: MeasurementSettingExt
Title: "Measurement Setting"
Description: "The location or setting the subject was in when the measurement was obtained. For example, home, clinic, hospital. etc."
* valueCodeableConcept only CodeableConcept

Extension: NumberOfMeasurements
Id: NumberOfMeasurementsExt
Title: "Number of Measurements"
Description: "A count of the number of measurements used in a calculation, such as Average Blood Pressure."
* value[x] only Quantity
* valueQuantity 1..1

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