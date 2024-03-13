### SMBP Technical Workflow 
<div style="text-align: left;">
<img src="scenarios-overview.png" width="800" >
</div>

Once enrolled in an SMBP program, Self-Measured Blood Pressure observations are taken at home by the patient and the readings are sent to the associated Physician for review.

**Action 1**: A Device Gateway POSTS an SMBP observation to a Personal Health Intermediary Platform.

**Action 2**: A Personal Health Intermediary Platform queries for SMBP related observations and calculates an Average SMBP. value 

<div style="text-align: left;">
<img src="technical-workflow-1.png" width="800" >
</div>


**Action 3**: A Personal Health Intermediary platform POSTs an Average SMBP observation.

**Action 4**: An EHR or Patient Portal queries for SMBP related observations. 

<div style="text-align: left;">
<img src="technical-workflow-2.png" width="800" >
</div>

