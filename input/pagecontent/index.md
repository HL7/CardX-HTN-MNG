### Overview

Hypertension affects an estimated 1.28 billion adults aged 30-79 years and is the leading cause of premature death and cardiovascular disease internationally. Less than half of adults with hypertension are diagnosed and treated and only 1 in 5 adults with hypertension have it under control [^1]. A self-measured blood pressure (SMBP) monitoring approach, referring to the regular measurement of blood pressure by the patient outside the clinical setting, can help clinicians better diagnose and manage hypertension [^2]. A standardized approach to hypertension management that emphasizes capturing data once and reusing it for multiple purposes will increase the proportion of patients treated to goal, improve clinical outcomes, reduce clinician burden, and enable more complete and accurate reporting. The objective of the CardX Hypertension Management Implementation Guide is to improve the use of self-measured blood pressure monitoring (SMBP) programs by facilitating the communication of more effective and widely implemented SMBP programs. This could lead to an increase in the proportion of individuals with hypertension who are treated to goal and arrive at their goal blood pressure quicker and more efficiently than the traditional approach of only measuring blood pressure during an in-office visit.  

This FHIR Implementation Guide (IG) aligns with and harmonizes existing work to create a vendor-agnostic set of data exchange standards that enable interoperable, scalable, and accessible hypertension management. Due to the global prevalence of hypertension, this IG is adopting a universal realm approach, aiming to provide a comprehensive and consistent framework for healthcare information exchange across diverse geographic regions and healthcare systems. The IG consists of FHIR profiles, extensions, and value sets to represent, query for, and exchange data for evidence-based management of hypertension. The CardX Hypertension Management IG includes three profiles based on the [FHIR Observation Blood Pressure](https://hl7.org/fhir/R4/bp.html#10.1.30.2) and [FHIR Observation](https://hl7.org/fhir/R4/observation.html) base resources to represent self-measured blood pressure monitoring data and associated metadata. These profiles support the hypertension management workflow by providing a meaningful exchange of blood pressure data between devices, third-party patient-facing health management platforms (identified here as personal health intermediaries), and clinical Electronic Health Record Systems or patient portals. This will allow self-measured blood pressure readings to be sent directly to the physician at pre-defined intervals. In future iterations, this IG will model additional evidence-based elements supporting hypertension management in and out of the clinic, enabling bi-directional data exchange between patients and clinicians to manage hypertension. 

### Potential Impact 
- Health centers can receive self-measured blood pressure (SMBP) data from patients in a computable format.
- Patients can see their BP measurements over time.
- Patients can communicate their hypertension-related health status and hypertension management to clinicians.
- Clinicians can engage with patients outside of office visits to adjust treatment.

### Hypertension Management Workflow Diagram 

In the diagram below, the red arrows between Device Gateway, Personal Health Intermediary, and EHR identify the scope of structured FHIR data exchange within SMBP data management. The standards identified in this IG are primarily supported in the first and second arrow exchange:

1. In Scope - Personal Health Intermediary to EHR 
2. In Scope - Device Gateway to Personal Health Intermediary 
3. Out of Scope - EHR to Personal Health Intermediary

<div style="text-align: center;">
<img src="htn_relation_diagram.png" width="1000" >
</div>


### Intended Actors and Systems 
The intended actors include: 


| Actor    |  Description |
| ----------  | ------------------ |
| ![patienticon](input/images/patienticon.png) Patient  | An individual diagnosed with hypertension and enrolled in a self-measure blood pressure monitoring program.   |
| ![clinicianicon](input/images/clinicianicon.png)  Clinician  | Includes licensed clinicians, nurses, physician assistants, or other medical providers that interact with the patient to diagnosis, refer, monitor, and treat hypertension.   |
| ![personal-health-device-icon](input/images/personal-health-device-icon.png)   Personal Health Device  | Any system that allows patients and caregivers to capture and share information about their blood pressure, integrate device provided data. These may be web-based applications, mobile applications, or traditional software.  These systems will primarily act as FHIR clients.   |
| ![personal-health-gateway-icon](input/images/personal-health-gateway-icon.png)  Personal Health Intermediary   | Any system that supports hypertension patients - These may be web-based applications, mobile applications, or device gateways. These systems act as FHIR servers to receive data from a device and act as FHIR clients capable of sending data to other systems.   |
| ![patient-data-manager-icon](input/images/personal-data-manager-icon.png) Device Gateway   | Any system that allows patients and caregivers to capture and share information about their blood pressure, integrate device provided data. These may be web-based applications, mobile applications, or traditional software.  These systems will primarily act as FHIR clients.   |
| ![ehricon](input/images/ehricon.png) Electronic Health Record System | An EHR or other system involved in reviewing patient hypertension related data, that may receive SMBP observations from other systems, and that will coordinate all management activities for hypertension patients. These systems could also represent Patient Portals.  |
{:.grid}

### SMBP Protocol Scenarios 

#### Scenario 1
A primary care provider enrolls a patient in a self-measured blood pressure monitoring program to manage the patient’s hypertension. The patient follows the provided instructions and takes their blood pressure at the recommended intervals. The blood pressure data is uploaded via bluetooth to the Device Gateway. The patient’s blood pressure information is pushed, via a FHIR API, to a receiving Personal Health Intermediary platform where the data is stored, aggregated, and managed. Once the information has been retrieved, the Personal Health Intermediary can store, share, reuse, and display the standardized information in their preferred view. 
#### Scenario 2
The Personal Health Intermediary calculates an average blood pressure reading based on the SMBP protocol timeframe. The patient’s average blood pressure and the individual blood pressure’s that comprise the average are pushed, via a FHIR API to an EHR’s FHIR-enabled patient portal. The EHR performs a GET request to retrieve the average blood pressure and associated observations. Once the information has been retrieved, the EHR can store, share, reuse, and display the standardized information in their preferred view. 

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
| [FHIR Write](https://hackmd.io/@argonaut/SkGWnfQdn) | Specifies FHIR write back capabailities for Vital Signs Observations including blood pressure |
{:.grid}

The [Personal Health Device IG](https://build.fhir.org/ig/HL7/phd/) and the [mHealthADE](https://hl7.github.io/fhir-project-mhealth/overview.html) were also considered in an initial landscape analysis of existing standards, however,  these IGs are out of scope for this IG at this time.  

### Additional External Drivers

| Initiative |  Description  |
| -------------------- |  ---------- |
| [CDC Million Hearts 2027 Optimizing Care Initiative](https://millionhearts.hhs.gov/about-million-hearts/optimizing-care/smbp.html) |  An evidence-based strategy that has been shown to lower blood pressure and improve control in persons with hypertension is self-measured blood pressure monitoring (SMBP). When combined with additional clinical support, SMBP may also reduce therapeutic inertia and improve medication adherence.  |
| [AHA's National Hypertension Council Initiative](https://nhci.heart.org/)  | An evidence-based community program with the goal to reduce high blood pressure, in under-resourced neighborhoods. |
| [Target: BP](https://targetbp.org/) | A national initiative launched by the American Heart Association and the American Medical Association in response to the high prevalence of uncontrolled BP. |
{:.grid}


### Contact Information

[CardX Domain Confluence Pages](https://confluence.hl7.org/display/COD/CardX+-+Hypertension+Management) 

[Hypertension Management Conluence Pages](https://confluence.hl7.org/display/COD/CardX+-+Hypertension+Management) 

----------------------------------------------------------------------------------------------------
[^1]: [World Health Organization: Hypertension](https://www.who.int/news-room/fact-sheets/detail/hypertension)
[^2]: [Target:BP](https://targetbp.org/patient-measured-bp/)
