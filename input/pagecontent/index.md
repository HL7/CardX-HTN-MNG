# CardX: Hypertension Management


<div style="text-align: center;">
<img src="image2022-7-27_8-34-11.png" />
</div>>

### Background and Overview

(**To Do:** current overview needs to be reviewed and edited)

The objective of the CardX Hypertension Project is to facilitate the communication of hypertension management data between clinicians and patients to increase the proportion of individuals with hypertension who are treated to goal. Hypertension affects 116 million adults in America, but only 25% of people diagnosed with hypertension are treated to their goal blood pressure. A standardized approach to hypertension management that emphasizes capturing data once and reusing it for multiple purposes will increase the proportion of patients treated to goal, improve clinical outcomes, reduce clinician burden, and enable more complete and accurate reporting.

This FHIR Implementation Guide (IG) will align and harmonize existing work to create a vendor-agnostic set of data exchange standards that enable interoperable, scalable, and accessible hypertension management. The IG will consist of FHIR profiles, extensions, transactions, and value sets needed to represent, query for, and exchange data for evidence-based management of hypertension. The profiles align with existing evidence-based guidelines that will standardize blood pressure readings, enabling the distinction between office-based and self-measured blood pressure (SMBP) readings, representing average blood pressure and critical evidence-based metadata on both individual and average blood pressure readings. Our goal is to enable meaningful exchange of blood pressure data between devices, personal health intermediaries, and clinical EHRs. This will shift the current paradigm of periodic office-based care to a patient-enabled, self-measured and data rich approach to hypertension management.




### Hypertension Background

- Cardiovascular disease is the leading cause of death and disability in America.
    -  Hypertension affects 115 million adults in America.
        - 85% of Black Americans will develop hypertension in their lifetime.
- The domain of cardiovascular medicine has a long and rich tradition of developing consensus guidelines and practice models demonstrated to reduce cardiovascular morbidity and mortality. Despite this foundation of evidence-based medicine, translation of the science to practice that informs therapeutic decision-making, evaluates quality, safety, and performance, and contributes to new discovery is incomplete.
    - Over 30% of people do not know that they have hypertension.
    - Only 25% of patients with a diagnosis of hypertension achieve blood pressure control.
- Clinical information is routinely captured in unstructured documents stored in non-interoperable, siloed platforms.
    - There is a lack of open communication between patient-facing and clinician EHR systems
    - There is a lack of consistent vocabulary and associated data standards for data exchange
    - There is a lack of technical standards for interoperability between home blood pressure monitoring devices, EHR, and Personal Health Intermediaries.
- Home blood pressure monitoring is the standard for hypertension monitoring, but there are no standards for interoperability to capture and exchange data from home blood pressure monitoring, the health system, and a personal health record.



### HTN Management Goals 

- Create integrated, automated, vendor-agnostic hypertension standards by developing FHIR resources and open APIs that enable interoperable, scalable, and accessible hypertension management both at home and in the clinic
- Define the methodology to enable data liquidity between **home blood pressure measurement devices**, **Personal Health Intermediaries**, and **EHR devices**.
- Harmonize HTN vocabulary (demographics, VS, diagnoses, assessments, labs, meds, care plan)
- Develop device data exchange standards (“plug and play”) for:
    - Home BP device data
    - Communication between patient-facing and clinician EHR systems




### Hypertension Use Case Diagram 

<p align="center">
<img src="htn_relation_diagram.png" width="600" >
</p>


### Actors and Use Cases 

**TO DO** - Describe the list of actors in the scenarios and their roles. Describe the specific use cases for this IG. 



### Example Scenarios 

#### Scenario 1

#### Scenario 2



### Contact Information

To learn more about CardX, visit https://confluence.hl7.org/display/COD/CardX+-+Hypertension+Management or email Melissa Christian melchristian@unmc.edu 