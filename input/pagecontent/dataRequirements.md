
# Scenarios and Data Requierements of Interest 

## Blood Pressure Observation Elements 

| Element | Cardinality        |  Definition | ValueSets   |
|---------|--------------------|-------------|-------------|
| Systolic BP  | 1..1 MS | The value of systolic BP measurement. | Pattern: LOINC code 96608-5  |
| Diastolic BP | 1..1 MS | The value of diastolic BP measurement. | Pattern: LOINC code 96609-3 |
| Effective Date/Time | 1..1 MS | The date and time the BP measurement occurred. | dateTime data type |
| Body Site | 0..1  | The anatomical location where the device was placed. | TBD |
| Observation Category | 1..* MS | A code that classifies the general type of observation being made. |ObservationCategoryCodes |
| Method | 0..1  | Indicates the mechanism used to perform the observation. | TBD |
| Status | 1..1 | The status of the result value. | TBD |
| Reference: Device | 0..1  | Defines the type of device used when measuring the BP. | TBD |
| Reference: Patient | 0..1  | Defines the type patient identifying information | TBD |
| Measurement Setting | 0..1  | Environment in which the BP measurement was taken. | TBD |
{: .grid }



## Average Blood Pressure Elements 

| Element | Cardinality        |  Definition | ValueSets   |
|---------|--------------------|-------------|-------------|
| Systolic BP  | 1..1 MS | The value of systolic BP measurement. | Pattern: LOINC code 96608-5  |
| Diastolic BP | 0..1 MS | The value of diastolic BP measurement. | Pattern: LOINC code 96609-3 |
| Mean Arterial Pressure | 0..1 MS | The calculated observation based on the Systolic and Diastolic blood pressure measurements and is defined as the average pressure in an individual’s arteries during one cardiac cycle. | Pattern: LOINC code 8478-0 |
| Effective Date/Time Range | 1..1 MS | The date and time ranges the BP measurement average was calculated from. | dateTime data type |
| Body Site | 0..1  | The anatomical location where the device was placed. | TBD |
| Observation Category | 1..*  | A code that classifies the general type of observation being made. |ObservationCategoryCodes |
| Method | 0..1  | Indicates the mechanism used to perform the observation. | TBD |
| Status | 1..1 | The status of the result value. | ObservationStatus |
| Reference: Device | 0..1  | Defines the type of device used when measuring the BP. | TBD |
| Measurement Setting | 0..1  | Environment in which the BP measurement was taken. | TBD |
| Body Position | 0..1  | The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code. | TBD |
| Minimum Systolic Blood Pressure | 0..1  | Of the associated readings what was the minimum. |TBD |
| Minimum Diastolic Blood Pressure | 0..1  | Of the associated readings what was the minimum. |TBD |
| Maximum Systolic Blood Pressure | 0..1  | Of the associated readings what was the max. |TBD |
| Maximum Diastolic Blood Pressure | 0..1  | Of the associated readings what was the max. |TBD |
| Extension: Measurement Protocol | 0..1  | Rules and algorithm for Average Blood Pressure calculation. | Measurement Setting value set (extensible) |
{: .grid }

## Blood Pressure Device Elements 

| Element | Cardinality        |  Definition | ValueSets   |
|---------|--------------------|-------------|-------------|
| Device UDI | 1..1 MS | The value of the device UDI | TBD  |
| Device Make | 0..1  | The make of the device | TBD |
| Device Model | 0..1  | The model of the device | TBD |
{: .grid }

# Hypertension Management Scenarios
- **Purpose:** 
1.	Patient obtained a connected device with no set-up requirements.
    - Device vendor application will already have the device metadata predefined. 
    - Patient health intermediary has functionality to allow patient to enter measurement setting and body site data. 
    - Patient health intermediary has functionality to calculate BP averages. 
2.	Patient obtained connected device that requires setup (Wi-Fi connected device, Bluetooth connected device)
    - Device vendor gateway has functionality for patient to enter device metadata. 
3.	Unconnected Device
    - Patient can manually enter all BP measurements, device information, and BP metadata into the patient health intermediary. 


<div style="text-align: center;">
<img src="scenarios-ig.png" />
</div>>
