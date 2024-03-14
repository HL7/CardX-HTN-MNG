The following diagrams describe how to implement the SMBP profiles defined in this IG within the context of an SMBP monitoring program. The diagrams assume a patient is enrolled in an SMBP program, the patient uses a validated device, and the observations are taken at home by the patient. 

### SMBP Technical Exchanges 

#### Exchange 1
A primary care provider enrolls a patient in a self-measured blood pressure monitoring program to manage the patient’s hypertension. The patient follows the provided instructions and takes their blood pressure as per protocol. The blood pressure data is uploaded via Bluetooth to the Device Gateway. The patient’s blood pressure information is pushed, via a FHIR API, to a receiving Personal Health Intermediary platform where the data is stored, aggregated, and managed. Once the information has been retrieved, the Personal Health Intermediary can store, share, reuse, and display the standardized information in their preferred view.

<div style="text-align: left;">
<img src="action1.png" width="800" >
</div>

**Action 1**: A Device Gateway POSTS an SMBP observation to a Personal Health Intermediary Platform FHIR server.

<div style="text-align: left;">
<img src="action2.png" width="800" >
</div>

**Action 2**: A Personal Health Intermediary Platform queries the FHIR server for SMBP related observations and calculates an Average SMBP value 


#### Exchange 2
The Personal Health Intermediary calculates an average blood pressure reading based on the SMBP protocol timeframe. The patient’s average blood pressure and the individual blood pressure’s that comprise the average are pushed, via a FHIR API to an EHR’s FHIR-enabled patient portal. The EHR performs a GET request to retrieve the average blood pressure and associated observations. Once the information has been retrieved, the EHR can store, share, reuse, and display the standardized information in their preferred view.

<div style="text-align: left;">
<img src="action3.png" width="800" >
</div>

**Action 3**: A Personal Health Intermediary platform POSTs an Average SMBP observation to the FHIR server.

<div style="text-align: left;">
<img src="action4.png" width="800" >
</div>

**Action 4**: An EHR or Patient Portal queries the FHIR server for SMBP related observations. 