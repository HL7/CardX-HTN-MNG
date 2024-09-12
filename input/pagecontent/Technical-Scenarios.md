The following diagrams describe how to implement the SMBP profiles defined in this IG within the context of an SMBP monitoring program. The diagrams assume a patient is enrolled in an SMBP program, the patient uses a validated device, and the observations are taken at home by the patient. 

### SMBP Technical Exchange 1
A primary care provider enrolls a patient in a self-measured blood pressure monitoring program to manage the patient’s hypertension. The patient follows the provided instructions and takes their blood pressure with [proper preparation and positioning](https://targetbp.org/wp-content/uploads/2017/10/SMBP-Infographic_TBP-1.pdf). When the Personal Health Device and the Device Gateway follow the [PHD IG](https://build.fhir.org/ig/HL7/phd/) and the Device Gateway receives a blood pressure observation, the Device Gateway makes sures that the uploaded FHIR self-measured blood pressure observation resource contains the correct LOINC code and UCUM units. Either the Device Gateway or the Personal Health Intermediary indicate that the patient is the performer. 

For devices not adhering to the PHD IG dedicated coding will be needed to be compliant with this CardX IG. The blood pressure data is uploaded via Bluetooth to the Device Gateway. The patient’s individual [self-measured blood pressure readings](StructureDefinition-self-measured-bp.html) and [associated heart rate readings](StructureDefinition-smbp-associated-heart-rate.html) are pushed, via a FHIR API, to a receiving Personal Health Intermediary platform where the data is stored, aggregated, and managed. The Personal Health Intermediary shall be able to read, search, and create additional observations. Once the information has been retrieved, the Personal Health Intermediary can store, share, reuse, and display the standardized information in their preferred view.

#### Action 1: A Device Gateway POSTS an SMBP related observation to a Personal Health Intermediary Platform FHIR server.

<div style="text-align: center;">
<img src="action1.png" width="800" >
</div>

#### Action 2: A Personal Health Intermediary Platform queries the FHIR server for SMBP related observations and calculates an Average SMBP value. 

<div style="text-align: center;">
<img src="action2.png" width="800" >
</div>


### SMBP Technical Exchange 2
The Personal Health Intermediary calculates an average blood pressure reading based on the clinician's instruction. The patient’s [average self-measured blood pressure](StructureDefinition-average-smbp.html) and the [individual self-measured blood pressures](StructureDefinition-self-measured-bp.html) that comprise the average are pushed, via a FHIR API to an EHR’s FHIR-enabled patient portal. The EHR performs a GET request to retrieve the average blood pressure and associated observations. The EHR shall be able to read, search, and create observations. Once the information has been retrieved, the EHR can store, share, reuse, and display the standardized information in their preferred view.

#### Action 3: A Personal Health Intermediary platform POSTs an Average SMBP observation to the FHIR server.

<div style="text-align: center;">
<img src="action3.png" width="800" >
</div>

#### Action 4: An EHR or Patient Portal queries the FHIR server for SMBP related observations. 

<div style="text-align: center;">
<img src="action4.png" width="800" >
</div>
