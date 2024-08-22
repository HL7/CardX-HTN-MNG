### Overview

<div style="text-align: center;">
    <img src="image2022-7-27_8-34-11.png" width="400" >
</div>

Hypertension affects an estimated 1.28 billion adults aged 30-79 years and is the leading cause of premature death and cardiovascular disease internationally. Less than half of adults with hypertension are diagnosed and treated and only 1 in 5 adults with hypertension have it under control [^1]. A self-measured blood pressure (SMBP) approach, referring to the regular measurement of blood pressure by the patient outside the clinical setting, can help clinicians better diagnose and manage hypertension [^2]. A standardized approach to hypertension management that emphasizes capturing data once and reusing it for multiple purposes will increase the proportion of patients treated to goal, improve clinical outcomes, reduce clinician burden, and enable more complete and accurate reporting. The objective of the CardX Hypertension Management Implementation Guide is to improve hypertension diagnosis, management, and outcomes by facilitating the collection and exchange of data from widely implemented SMBP programs. Compared to the traditional approach of only measuring blood pressure in the clinical setting, this could help more patients reach their target BPs.  

This FHIR Implementation Guide (IG) aligns with and harmonizes existing work to create a vendor-agnostic set of data exchange standards that enable interoperable, scalable, and accessible hypertension management. Due to the global prevalence of hypertension, this IG adopts a universal realm approach, aiming to provide a comprehensive and consistent framework for healthcare information exchange across diverse geographic regions and healthcare systems. The IG defines FHIR profiles, extensions, and value sets to represent, query for, and exchange data for evidence-based management of hypertension. The CardX Hypertension Management IG includes profiles to represent self-measured blood pressure monitoring data and associated metadata. These profiles support the hypertension management workflow by providing a meaningful exchange of blood pressure data between devices, third-party patient-facing health management platforms (identified here as personal health intermediaries), and clinical Electronic Health Record Systems or patient portals. This will allow self-measured blood pressure readings to be sent directly to the physician at pre-defined intervals. In future iterations, this Implementation Guide will include additional evidence-based elements to support hypertension management, enabling bi-directional data exchange between patients and clinicians to manage hypertension.
 
### Potential Impact

- Health centers can receive self-measured blood pressure (SMBP) data from patients in a computable format.
- Patients can see their BP measurements over time.
- Patients can communicate their hypertension-related health status and hypertension management to clinicians.
- Clinicians can engage with patients outside of office visits to adjust treatment.

### Hypertension Management Workflow Diagram

In the diagram below, the red arrows between the Device Gateway, Personal Health Intermediary, and EHR icons identify the scope of structured FHIR data exchange within SMBP data management. The standards identified in this IG are primarily supported in the first and second arrow exchange:
- **In Scope** - Personal Health Intermediary to EHR
- **In Scope** - Device Gateway to Personal Health Intermediary
- **Out of Scope** - EHR to Personal Health Intermediary

<div style="text-align: center;">
    <img src="index-workflow.png" width="1000" >
</div>

### Intended Actors and Systems

The intended actors include:

<div>
    <table class="grid">
        <thead>
            <th width="35%">Actor</th>
            <th width="65%">Description</th>
        </thead>
        <tbody>
            <tr>
                <td><img src="patienticon.png" width="75" hight="75">Patient</td>
                <td>An individual diagnosed with hypertension and enrolled in a self-measure blood pressure monitoring program.</td>
            </tr>
            <tr>
                <td><img src="clinicianicon.png" width="75" height="75">Clinician</td>
                <td>Includes licensed clinicians, nurses, physician assistants, or other medical providers that interact with the patient to diagnosis, refer, monitor, and treat hypertension.</td>
            </tr>
            <tr>
                <td><img src="personal-health-device-icon.png" width="75" height="75">Personal Health Device</td>
                <td> Any device that allows patients or caregivers to capture their personal health data such as their blood pressure and then integrate the device provided data with an associated app. These systems will primarily act as FHIR clients.</td>
            </tr>
            <tr>
                <td><img src="personal-health-gateway-icon.png" width="75" height="75">Personal Health Intermediary</td>
                <td> Any system that allows patients to manage their health information. These may be web-based applications, mobile applications, or device gateways. These systems act as FHIR servers to receive data from a device and act as FHIR clients capable of sending data to other systems.</td>
            </tr>
            <tr>
                <td><img src="patient-data-manager-icon.png" width="75" height="75">Device Gateway</td>
                <td>Any system that allows patients and caregivers to capture and share information about their blood pressure. These may include web-based applications, mobile applications, or traditional software.  These systems will primarily act as FHIR clients.</td>
            </tr>
            <tr>
                <td><img src="ehricon.png" width="75" height="75">Electronic Health Record System</td>
                <td>An Electronic Health Record system involved in reviewing hypertension related data, that may receive SMBP observations from other systems, and that will coordinate all management activities for hypertension patients. These systems could also represent Patient Portals.</td>
            </tr>
        </tbody>
    </table>
</div>

### SMBP Data Exchange Scenarios

#### Scenario 1

A primary care provider enrolls a patient in a self-measured blood pressure monitoring program to manage the patient’s hypertension. The patient follows the provided instructions given to them by their provider and takes their blood pressure with the proper preparation and positioning. The blood pressure data is uploaded via Bluetooth to the Device Gateway. When the Personal Health Device and the Device Gateway follow the [PHD IG](https://build.fhir.org/ig/HL7/phd/) and the Device Gateway receives a blood pressure observation, the Device Gateway makes sures that the uploaded FHIR self-measured blood pressure observation resource contains the correct LOINC code and UCUM units. Either the Device Gateway or the Personal Health Intermediary indicate that the patient is the performer. For devices not adhering to the PHD IG dedicated coding will be needed to be compliant with this CardX IG. 

The patient’s blood pressure information is then pushed, via a FHIR API, to a receiving Personal Health Intermediary platform where the data is stored, aggregated, and managed. Once the information has been retrieved, the Personal Health Intermediary can store, share, reuse, and display the standardized information in their preferred view.


#### Scenario 2

The Personal Health Intermediary calculates an average blood pressure reading based on the SMBP protocol timeframe. The patient’s average blood pressure and the individual blood pressure’s that comprise the average are pushed, via a FHIR API to an EHR’s FHIR-enabled patient portal. The EHR performs a GET request to retrieve the average blood pressure and associated observations. Once the information has been retrieved, the EHR can store, share, reuse, and display the standardized information in their preferred view.

### Must Support 

Each data element flagged as "must support" in this Implementation Guide must abide by the following rules: 

- The sending system must populate all elements with a MustSupport flag if the information exists. 
- The sending system must be able to demonstrate transmission of all MustSupport elements.
- The receiving system must be able to store and retrieve the element.
- The receiving system must display the element to the user.
- The receiving system must allow the user to capture the element.
- The element must appear in an output report if present.

### Dependencies on Other IGs

| Implementation Guide | Version | Dependency |
| -------------------- | ------- | ---------- |
| [FHIR Release 4](http://hl7.org/fhir/R4/bp.html)| 4.0.1  | The CardX Self-Measured Blood Pressure profile is derived from the FHIR R4 [Observation Blood Pressure](https://hl7.org/fhir/R4/bp.html) profile. |
| [FHIR Release 4](http://hl7.org/fhir/R4/bp.html)| 4.0.1  | The CardX Average Self-Measured Blood Pressure profile is derived from the FHIR R4 [Observation](https://hl7.org/fhir/R4/observation.html) resource.   |
| [FHIR Release 4](http://hl7.org/fhir/R4/bp.html)| 4.0.1  | The CardX SMBP Associated Heart Rate profile is derived from the FHIR R4 [Observation Heart Rate](https://hl7.org/fhir/R4/heartrate.html) profile.   |
{:.grid}

### Relationships to Other IGs

| Implementation Guide |  Relationship  |
| -------------------- |  ---------- |
| [US Core](https://hl7.org/fhir/us/core/STU3.1.1/) |  Profiles in this IG align with US Core 3.1.1 as much as possible. Where possible, effort will also be made to align with future U.S. Core releases.   U.S. Core also sets expectations for a variety of referenced resources and establishes baseline conformance expectations.  |
| [Vital Signs with Qualifying Elements](https://build.fhir.org/ig/HL7/cimi-vital-signs/) | All profiles in this IG align with the profiles in the Vital Signs with Qualifying Elements IG (Universal Realm). |
| [FHIR Write](https://hackmd.io/@argonaut/SkGWnfQdn) | Specifies FHIR write back capabilities for Vital Signs Observations including Blood Pressure. Note that this requires using meta.tag=patient-supplied for these observations. The Device Gateway or the Personal Health Intermediary should ensure that the tag is set. |
| [Personal Health Device IG](https://build.fhir.org/ig/HL7/phd/index.html) | Observation resources adhering to the profiles in this IG can be generated by PHDs adhering to the PHD IG and can be collected and uploaded to FHIR servers by Personal Health Gateways (PHGs) that map the received IEEE 11073-10101 codes to the required LOINC codes and UCUM units to observations in the vital signs category. |
{:.grid}

The [mHealthADE](https://hl7.github.io/fhir-project-mhealth/overview.html) was also considered in an initial landscape analysis, however is currently out of scope.

### Additional External Drivers

| Initiative |  Description  |
| -------------------- |  ---------- |
| [CDC Million Hearts 2027 Optimizing Care Initiative](https://millionhearts.hhs.gov/about-million-hearts/optimizing-care/smbp.html) |  Million Hearts® is a national initiative to prevent 1 million heart attacks and strokes within 5 years. It focuses on implementing a small set of evidence-based priorities and targets that can improve cardiovascular health for all. The initiative includes improving blood pressure control through evidence-based strategies like [(self-measured blood pressure monitoring (SMBP))](https://millionhearts.hhs.gov/tools-protocols/tools/smbp.html). |
| [AHA's National Hypertension Council Initiative (NCHI)](https://nhci.heart.org/)  | Through the NHCI, the American Heart Association raises awareness of high blood pressure and promotes prevention of it through overlapping community approaches. |
| [Target: BP](https://targetbp.org/) | A national initiative formed by the American Heart Association (AHA) and the American Medical Association (AMA) in response to the high prevalence of uncontrolled blood pressure (BP). Throughout this IG, we refer to the Target BP general SMBP guidelines outlined in the [SMBP Infographic](https://targetbp.org/wp-content/uploads/2017/10/SMBP-Infographic_TBP-1.pdf) to ensure accurate blood pressure measurement. |
{:.grid}

### Learn More

To learn more about the CardX Domain and the CardX Hypertension Management Use Case visit:

- [CardX Domain Confluence Pages](https://confluence.hl7.org/display/COD/Cardiovascular)

- [Hypertension Management Confluence Pages](https://confluence.hl7.org/display/COD/CardX+-+Hypertension+Management)

----------------------------------------------------------------------------------------------------
[^1]: [World Health Organization: Hypertension](https://www.who.int/news-room/fact-sheets/detail/hypertension)
[^2]: [Target:BP](https://targetbp.org/patient-measured-bp/)
