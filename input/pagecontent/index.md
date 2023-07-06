# CardX: Hypertension Management


<div style="text-align: center;">
<img src="image2022-7-27_8-34-11.png" />
</div>>

### Objective and Scope 
The objective of the CardX Hypertension Project is to facilitate the communication of hypertension management data between clinicians and patients to increase the proportion of individuals with hypertension who are treated to goal. Hypertension affects 116 million adults in America, but only 25% of people diagnosed with hypertension are treated to their goal blood pressure. A standardized approach to hypertension management that emphasizes capturing data once and reusing it for multiple purposes will increase the proportion of patients treated to goal, improve clinical outcomes, reduce clinician burden, and enable more complete and accurate reporting.

This project will develop a FHIR Implementation Guide (IG) that will align and harmonize existing work to create a vendor-agnostic set of data exchange standards that enable interoperable, scalable, and accessible hypertension management. The IG will consist of FHIR profiles, extensions, transactions, and value sets needed to represent, query for, and exchange data for evidence-based management of hypertension. While this project has international relevance, the current implementers are U.S. based and therefore U.S.-specific terminologies and standards will be the focus for initial phases, with consideration for compatibility with universal realm standards and an eventual expansion to the universal realm in the future.

**The project will follow a multi-phased approach:**

**Phase 1:** (target for STU 1 ballot): The team will develop a set of profiles aligned with existing evidence-based guidelines that will standardize blood pressure readings, enabling the distinction between office-based and self-measured blood pressure (SMBP) readings, representing average blood pressure and critical evidence-based metadata on both individual and average blood pressure readings. Our goal is to enable meaningful exchange of blood pressure data between devices, personal health intermediaries, and clinical EHRs. This will shift the current paradigm of periodic office-based care to a patient-enabled, self-measured and data rich approach to hypertension management.

**Phase 2:** Building on the work and learnings from Phase 1, the team will develop workflows and model additional evidence-based elements supporting hypertension management in and out of the clinic, enabling bi-directional data exchange between patients and clinicians to manage hypertension. This could include data such as care goals, medications and other interventions, social history, and comorbidities. These contextual details will complement the blood pressure data addressed in Phase 1, enabling physicians and patients to make informed decisions to improving blood pressure control. Phase 2 may require more than one ballot following Phase 1, and the work is expected to heavily leverage ongoing HL7 projects around chronic disease management and physical activity.



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

A narrative example of a patient journey and use case for this implementation guide is in the [Use Cases](use-cases.md) page.

### Desired Impact 

- Decrease clinician burden.
- To improve the awareness of guidelines, identification of disease, and management of individuals with hypertension.
- Increase the proportion of individuals with hypertension who are treated to goal. 
- Increase data liquidity between blood pressure measurements captured at home with those captured in the clinic.
- Personal Health Intermediaries will be able to easily send and receive data to enhance a patient's ability to be part of their own care team. 
- EHR vendors will enable a service that will help clinicians treat patients.

### Hypertension Use Case Diagram 

<p align="center">
<img src="cardx_relation_diagram.png" width="600" >
</p>

### Contact Information

To learn more about CardX, visit https://confluence.hl7.org/display/COD/Cardiovascular