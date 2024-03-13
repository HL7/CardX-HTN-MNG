The following diagrams describe how to implement the SMBP profiles defined in this IG within the context of an SMBP program. The diagram assumes a patient is enrolled in an SMBP program, the patient uses a validated device, and the observations are taken at home by the patient. The technical exchange defined in this IG begins with the Device Gateway or Personal Health Intermediary platform where the blood pressure readings are stored. 

### SMBP Technical Workflow 
<div style="text-align: left;">
<img src="scenarios-overview.png" width="800" >
</div>

**Action 1**: A Device Gateway POSTS an SMBP observation to a Personal Health Intermediary Platform.

**Action 2**: A Personal Health Intermediary Platform queries for SMBP related observations and calculates an Average SMBP value 

<div style="text-align: left;">
<img src="technical-workflow-1.png" width="800" >
</div>


**Action 3**: A Personal Health Intermediary platform POSTs an Average SMBP observation.

**Action 4**: An EHR or Patient Portal queries for SMBP related observations. 

<div style="text-align: left;">
<img src="technical-workflow-2.png" width="800" >
</div>

