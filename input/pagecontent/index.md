# CardX: Hypertension Management

<div style="text-align: center;">
<img src="image2022-7-27_8-34-11.png" />
</div>>

### Overview

Hypertension affects 116 million adults in America, but only 25% of people diagnosed with hypertension are treated to their goal blood pressure. Internationally, hypertension is the leading cause of premature death and cardiovascular disease. A standardized approach to hypertension management that emphasizes capturing data once and reusing it for multiple purposes will increase the proportion of patients treated to goal, improve clinical outcomes, reduce clinician burden, and enable more complete and accurate reporting. The objective of the CardX Hypertension Management IG is to improve the use of Self-measured Blood Pressure Monitoring by facilitating the communication of average blood pressure data between clinicians and patients. Ultimately, the use of this FHIR IG will lead to an increase in the proportion of individuals with hypertension who are treated to goal. Additionally, these individuals will reach the goal of less than 130/80 quicker and more efficiently than the traditional approach of only measuring blood pressure during an in-office visit. 

This IG was developed by the [CardX Domain](https://confluence.hl7.org/display/COD/Cardiovascular) of the [CodeX FHIR Accelerator](https://confluence.hl7.org/display/COD/CodeX+Home) with the mission to engage a diverse group of stakeholders in the cardiovascular domain to enable standards-based interoperability in cardiovascular health and healthcare. This IG is adopting a universal realm approach, aiming to provide a comprehensive and consistent framework for healthcare information exchange across diverse geographic regions and healthcare systems.


### Scope

This FHIR Implementation Guide (IG) aligns and harmonizes existing work to create a vendor-agnostic set of data exchange standards that enable interoperable, scalable, and accessible hypertension management. The IG consists of FHIR profiles, extensions, and value sets to represent, query for, and exchange data for evidence-based management of hypertension. The CardX HTN MNG IG provides three profiles based on the FHIR Observation Blood Pressure and FHIR Observation base resources to represent the Self-measured Blood Pressure Monitoring data and associated metadata. These profiles support the hypertension management workflow by providing a meaningful exchange of blood pressure data between devices, personal health intermediaries, and clinical EHRs. This will allow Self-measured blood pressure readings to automatically be sent directly to the physician at pre-defined intervals. In future iterations, the IG will model additional evidence-based elements supporting hypertension management in and out of the clinic, enabling bi-directional data exchange between patients and clinicians to manage hypertension.

### Potential Impact 

The potential impact of this Implementation Guide includes:
- Health centers can receive self-measured blood pressure (SMBP) data from patients in a computable format
- Patients can see their BP measurements over time
- Patients can communicate their hypertension-related health status and hypertension management to clinicians
- Clinicians can engage with patients outside of office visits to adjust treatment


### Hypertension Use Case Diagram 

<div style="text-align: center;">
<img src="htn_relation_diagram.png" width="600" >
</div>

### Intended Actors and Systems 
The intended actors include: 


**TO DO**



### SMBP Protocol Scenarios 

#### Scenario 1
A primary care provider enrolls a patient in a self-measured blood pressure monitoring program to manage the patient’s hypertension. The patient follows the provided instructions and takes their blood pressure at the recommended intervals. The blood pressure data is uploaded via Bluetooth to the Device Gateway. The patient’s BP information is pushed, via a FHIR API, to a receiving Personal Health Intermediary Platform where the data is stored, aggregated, and managed. Once the information has been retrieved, the Personal Health Intermediary Platform can store, share, reuse, and display the standardized information however necessary/most useful.
#### Scenario 2
The Personal Health Intermediary Platform generates an Average Blood pressure reading based on the SMBP protocol timeframe. The patients Average Blood Pressure reading, and associated BP observations are pushed, via a FHIR API to an EHR’s FHIR-enabled Patient Portal. The EHR performs a GET request to retrieve the Average BP and associated observations. Once the information has been retrieved, the EHR can store, share, reuse, and display the standardized information.

### Dependencies on Other IGs

| Implementation Guide | Version | Dependency |
| -------------------- | ------- | ---------- |
| [FHIR R4 Vital Signs: BP](http://hl7.org/fhir/R4/bp.html)| 4.0.0  | The Blood Pressure profiles specified in this implementation guide depend on the FHIR R4 base Vital Signs BP base resource.    |
| [FHIR R4 Observation](https://hl7.org/fhir/R4/observation.html)| 4.0.0  | The SMBP associated Heart Rate profile in this implementation guide depends on the FHIR R4 base Observation resource    |
{:.grid}


### Relationships to Other IGs

| Implementation Guide |  Relationship  |
| -------------------- |  ---------- |
| [US Core](https://hl7.org/fhir/us/core/STU3.1.1/) |  Where possible, all profiles in this IG align with US Core 3.1.1 or aligned with that release and future releases as much as possible.  U.S. Core also sets expectations for a variety of referenced resources and establishes baseline conformance expectations.  |
| [Vital Signs with Qualifying Elements](https://build.fhir.org/ig/HL7/cimi-vital-signs/) | All profiles in this implementation guide align with the profiles in the Vital Signs with Qualifying Elements IG (Universal Realm) |
| [FHIR Write](https://hackmd.io/@argonaut/SkGWnfQdn) | Specifies FHIR write back capabailities for Vital Sign Observations |
{:.grid}

### Additional External Drivers
| Initiative |  Description  |
| -------------------- |  ---------- |
| [CDC Million Hearts 2027 Optimizing Care Initiative](https://millionhearts.hhs.gov/about-million-hearts/optimizing-care/smbp.html) |  An evidence-based strategy that has been shown to lower blood pressure and improve control in persons with hypertension is self-measured blood pressure monitoring (SMBP). When combined with additional clinical support, SMBP may also reduce therapeutic inertia and improve medication adherence.  |
| [AHA's National Hypertension Council Initiative](https://nhci.heart.org/)  | An evidence-based community program with the goal to reduce high blood pressure, in under-resourced neighborhoods. |
| [Target: BP](https://targetbp.org/) | A national initiative launched by the American Heart Association and the American Medical Association in response to the high prevalence of uncontrolled BP. |
{:.grid}


### Contact Information

To learn more about CardX, visit https://confluence.hl7.org/display/COD/CardX+-+Hypertension+Management 

To learn more about the Hypertension Management Use Case, visit https://confluence.hl7.org/display/COD/CardX+-+Hypertension+Management 