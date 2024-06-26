The following diagrams describe how to implement the SMBP profiles defined in this IG within the context of an SMBP monitoring program. The diagrams assume a patient is enrolled in an SMBP program, the patient uses a validated device, and the observations are taken at home by the patient. 

### SMBP Technical Exchange 1
A primary care provider enrolls a patient in a self-measured blood pressure monitoring program to manage the patient’s hypertension. The patient follows the provided instructions and takes their blood pressure as per protocol. The blood pressure data is uploaded via Bluetooth to the Device Gateway. The patient’s individual [self-measured blood pressure readings](https://build.fhir.org/ig/HL7/cardx-htn-mng/StructureDefinition-self-measured-bp.html) and [associated heart rate readings](https://build.fhir.org/ig/HL7/cardx-htn-mng/StructureDefinition-smbp-associated-heart-rate.html) are pushed, via a FHIR API, to a receiving Personal Health Intermediary platform where the data is stored, aggregated, and managed. Once the information has been retrieved, the Personal Health Intermediary can store, share, reuse, and display the standardized information in their preferred view.

#### Action 1: A Device Gateway POSTS an SMBP related observation to a Personal Health Intermediary Platform FHIR server.

<div style="text-align: center;">
<img src="action1.png" width="800" >
</div>

#### Action 2: A Personal Health Intermediary Platform queries the FHIR server for SMBP related observations and calculates an Average SMBP value. 

<div style="text-align: center;">
<img src="action2.png" width="800" >
</div>


### SMBP Technical Exchange 2
The Personal Health Intermediary calculates an average blood pressure reading based on the SMBP protocol timeframe. The patient’s [average self-measured blood pressure](https://build.fhir.org/ig/HL7/cardx-htn-mng/StructureDefinition-average-smbp.html) and the [individual self-measured blood pressures](https://build.fhir.org/ig/HL7/cardx-htn-mng/StructureDefinition-self-measured-bp.html) that comprise the average are pushed, via a FHIR API to an EHR’s FHIR-enabled patient portal. The EHR performs a GET request to retrieve the average blood pressure and associated observations. Once the information has been retrieved, the EHR can store, share, reuse, and display the standardized information in their preferred view.

#### Action 3: A Personal Health Intermediary platform POSTs an Average SMBP observation to the FHIR server.

<div style="text-align: center;">
<img src="action3.png" width="800" >
</div>

#### Action 4: An EHR or Patient Portal queries the FHIR server for SMBP related observations. 

<div style="text-align: center;">
<img src="action4.png" width="800" >
</div>

