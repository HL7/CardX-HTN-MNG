# Hypertension Prior Art Analysis 

## Overview

| FHIR IG | Description        |  Maturity |
|---------|--------------------|-----------|
| [US Core – STU 5](http://hl7.org/fhir/us/core/STU5/) | Includes BP profiles | STU5 |
| [Vital Signs with Qualifying Elements](http://hl7.org/fhir/us/vitals/STU1/) | Includes BP profiles with additional properties/ components | STU 1 published 09/2022 |
| [Personal Health Device IG](http://hl7.org/fhir/uv/phd/) | PHD/PHG -> EHR/CDS, provides mappings from device standards (ISO, continua) | STU 1 published 05/2022 |
| [Physical Activity](https://build.fhir.org/ig/HL7/physical-activity/) | Standardizes measurement, reporting and interventions to improve physical activity levels | Draft – Ballot TBD |
| [MCC eCare Plan](http://hl7.org/fhir/us/mcc/2023Jan/) | Defines profiles to exchange Care Plan information. | STU 1 ballot |
| [OHSU Hypertension IG](https://build.fhir.org/ig/OHSUCMP/htnu18ig/) | Patient facing clinical decision support logic (based on CPG-on-FHIR framework) | Draft |
{: .grid }



## Vital Signs IG 
**Purpose**: the profiles in this implementation guide provide a mechanism to record, search, and retrieve the vital signs associated with a patient that include the vital signs (heart rate, respiratory rate, body temperature, and blood pressure), and additional measurements such as body height/length, weight, head circumference, oxygen saturation, and BMI, and the qualifying observations needed for each measurement such as body position, laterality, cuff size and location, device type, etc.

## Profiles of Interest

| Profile | Description        |  Examples |
|---------|--------------------|-----------|
| [Blood Pressure Panel](http://hl7.org/fhir/us/vitals/STU1/StructureDefinition-blood-pressure-panel.html) | Blood Pressure Panel; a grouping of systolic, diastolic, and mean arterial blood pressure components. | [BP Panel Example](https://build.fhir.org/ig/HL7/cimi-vital-signs/Observation-BloodPressurePanel-example.html) |
| [Average Blood Pressure](http://hl7.org/fhir/us/vitals/STU1/StructureDefinition-average-blood-pressure.html) | A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol. The average blood pressure has a systolic and a diastolic component. | [Avg BP Example](https://build.fhir.org/ig/HL7/cimi-vital-signs/Observation-AverageBloodPressure-example.html) |
| [24 Hour Blood Pressure](http://hl7.org/fhir/us/vitals/STU1/StructureDefinition-twenty-four-hour-blood-pressure.html) | An average blood pressure (systolic and diastolic) over a twenty four hour period. | [24 Hour BP Example](https://build.fhir.org/ig/HL7/cimi-vital-signs/Observation-TwentyFourHourBloodPressure-example.html) |
{: .grid }

## BP Panel Elements 

| Element | Cardinality        |  Definition | ValueSets   |
|---------|--------------------|-------------|-------------|
| Systolic BP  | 1..1 MS | The value of systolic BP measurement. | Pattern: LOINC code 96608-5  |
| Diastolic BP | 0..1 MS | The value of diastolic BP measurement. | Pattern: LOINC code 96609-3 |
| Mean Arterial Pressure | 0..1 MS | The calculated observation based on the Systolic and Diastolic blood pressure measurements and is defined as the average pressure in an individual’s arteries during one cardiac cycle. | Pattern: LOINC code 8478-0 |
| Effective Date/Time | 1..1 MS | The date and time the BP measurement occurred. | dateTime data type |
| Body Site | 0..1 MS | The anatomical location where the device was placed. | Vital Signs IG BP measurement body location VS |
| Observation Category | 1..* MS | A code that classifies the general type of observation being made. |ObservationCategoryCodes |
| Method | 0..1 MS | Indicates the mechanism used to perform the observation. | Blood Pressure Measurement Method value set |
| Status | 1..1 | The status of the result value. | ObservationStatus |
| Reference: Device | 0..1 MS | Defines the type of device used when measuring the BP. | Vital Signs IG BP measurement device VS: |
| Extension: Measurement Setting | 0..1 MS | Environment in which the BP measurement was taken. |Extension(MeasurementSettingExt) |
| Extension: Body Position | 0..1 MS | The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code. | Extension(bodyPosition) |
| Extension: Exercise Association | 0..1 MS | The exercise state associated with the measurement. |Extension(ExerciseAssociationExt) |
| Extension: Sleep Status | 0..1 MS | The state of wakefulness during the measurement. | Extension(SleepStatus) |
{: .grid }




## Average Blood Pressure Elements 

| Element | Cardinality        |  Definition | ValueSets   |
|---------|--------------------|-------------|-------------|
| Systolic BP  | 1..1 MS | The value of systolic BP measurement. | Pattern: LOINC code 96608-5  |
| Diastolic BP | 0..1 MS | The value of diastolic BP measurement. | Pattern: LOINC code 96609-3 |
| Mean Arterial Pressure | 0..1 MS | The calculated observation based on the Systolic and Diastolic blood pressure measurements and is defined as the average pressure in an individual’s arteries during one cardiac cycle. | Pattern: LOINC code 8478-0 |
| Effective Date/Time | 1..1 MS | The date and time the BP measurement occurred. | dateTime data type |
| Body Site | 0..1 MS | The anatomical location where the device was placed. | Vital Signs IG BP measurement body location VS |
| Observation Category | 1..* MS | A code that classifies the general type of observation being made. |ObservationCategoryCodes |
| Method | 0..1 MS | Indicates the mechanism used to perform the observation. | Blood Pressure Measurement Method value set |
| Status | 1..1 | The status of the result value. | ObservationStatus |
| Reference: Device | 0..1 MS | Defines the type of device used when measuring the BP. | Vital Signs IG BP measurement device VS: |
| Extension: Measurement Setting | 0..1 MS | Environment in which the BP measurement was taken. |Extension(MeasurementSettingExt) |
| Extension: Body Position | 0..1 MS | The position of the body when the observation was done, e.g. standing, sitting. To be used only when the body position in not precoordinated in the observation code. | Extension(bodyPosition) |
| Extension: Exercise Association | 0..1 MS | The exercise state associated with the measurement. |Extension(ExerciseAssociationExt) |
| Extension: Measurement Protocol | 0..1 MS | Rules and algorithm for Average Blood Pressure calculation. | Measurement Setting value set (extensible) |
{: .grid }



# OHSU Hypertension IG 
- **Purpose:** describe the AHRQ-funded, patient facing clinical decision support logic and value set encompassed in the Collaboration Oriented Application to control high blood pressure 
    - Uses CPG on FHIR framework to implement recommended standards 
- The tool assists high blood pressure treatment by... 
    - Providing Effective BP Monitoring 
        - The tool retrieves office BP measurements from EHR 
        - Allows home BP entry- provides a protocol and records the date and time of entry, provides recommendations based on the average of the most recent BP (4 office readings and 6 out of office readings) 
    - Engaging Patients in Decision Making
        -The tool provides patients with recommendations and can help them create goals 
    - Assisting Patients in communicating urgent updates 
        - The tool provides messages that patients can copy into MyChart to alert the Care team
- This IG does not define Profiles rather Plan Definitions 



# Personal Health Device IG 
- **Overview:** defines the use of FHIR resources to convey measurements and supporting data from communicating Personal Health Devices (PHDs) to receiving systems for electronic medical records, clinical decision support, and medical data archiving for aggregate quality measurement and research purposes.

- **Purpose:** to specify the mapping of PHD information to FHIR components. No interpretations of the data or assumptions about what data is important are specified. Implementations following this guide map all viable data provided by the PHDs
    - PHDs- consumer devices, used at home (must be Continua-certified)
    - PHGs- the gateway that handles PHD communications and translates data to the appropriate form to upload to receiving systems 

- Ensures the IEEE 11073 DIM (Domain Information Model) data is mapped to FHIR 

- Required Knowledge: IEEE 11073 20601 standard and the communication protocol used by the PHD being mapped

- The PHD data includes: characteristics, operational status and capabilities for the device, such as the serial number, manufacturer name, and firmware revision.
    - Patient information is treated separately 

- This IG does not use MS (sole purpose is to map)

# Physical Activity IG 

- **Purpose:** This implementation guide standardizes interoperability expectations for systems involved in measuring, reporting, and intervening to improve patient physical activity levels. 
    - It defines interface expectations that are relevant for patient-facing applications, patient activity measurement devices, clinical electronic health records, payers, quality measurement systems, and applications used by health and fitness professionals, personal trainers, and community-based fitness centers
- **3 Major Sections of Profiles**

    - Physical Activity Measure: A profile defining the standardized capture of the Physical Activity Measure using the FHIR Questionnaire resource

    - Physical Activity Interventions: profiles supporting the ordering of interventions intended to increase patient physical activity (plans and goals)

    - **Physical Activity Workflow (our primary interest)**- defines specific workflow and interoperability capabilities expected for systems that support this IG 
        - Defines each system that may participate in sharing information 
        - Types of data exchanges those systems are expected to support 
                - Care Planning Workflow (Contains a loop pattern)
                - Referral Management Workflow

# Multiple Chronic Conditions eCare Plan IG 

- **Purpose:** It defines how to represent coded content used to support the care planning activities focusing on the needs of patients with multiple chronic conditions. This initial version focuses on Chronic Kidney Disease Type 2 diabetes mellitus, common cardiovascular disease (hypertension, ischemic heart disease and heart failure), chronic pain and Long Covid
- Care Plan- represents prioritized concerns, goals, planned and actual interventions and the resultant care outcomes from the entire care team (patient, caregivers, and providers) 
- Supports 3 Use Cases
    - Query for patient data across care settings 
    - **Capture and communication of health concerns, goals, interventions, and outcomes (CardX main interest)** 
    - Gather and aggregate patient data for use beyond point of care

# Additional External Drivers 

- The inclusion of **Average Blood Pressure in USCDI v4** https://www.healthit.gov/isa/uscdi-data/average-blood-pressure 

- **CDC Million Hearts 2027 Optimizing Care Initiative-** an evidence-based strategy that has been shown to lower blood pressure and improve control in persons with hypertension is self-measured blood pressure monitoring (SMBP). When combined with additional clinical support, SMBP may also reduce therapeutic inertia and improve medication adherence. https://millionhearts.hhs.gov/about-million-hearts/optimizing-care/smbp.html 

- **AHA's National Hypertension Control Initiative (NHCI)**- an evidence-based community program with the goal to reduce high blood pressure, in under-resourced neighborhoods 

- **Target: BP**- a national initiative launched by the American Heart Association and the American Medical Association in response to the high prevalence of uncontrolled BP. 

- **ACCF/AHA 2011 key data elements and definitions of a base cardiovascular vocabulary for electronic health records**: a report of the American College of Cardiology Foundation/American Heart Association Task Force on Clinical Data Standards

-**ACC/AHA/AAPA/ABC/ACPM/AGS/APhA/ASH/ASPC/NMA/PCNA Guideline for the Prevention, Detection, Evaluation, and Management of High Blood Pressure in Adults**: Executive Summary: A Report of the American College of Cardiology/American Heart Association Task Force on Clinical Practice Guidelines