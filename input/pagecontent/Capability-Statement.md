This page describes the expectations of servers and clients utilizing the artifacts outlined in this implementation guide. 

## Server capabilies

A CardX Hypertension Management Patient Management server **SHALL**:

- Support the Observation resource
- Support the Self-measured Blood Pressure Profile. 
- Support the Average Self-measured Blood Pressure profile.
- Support json and xml source formats for all CardX interactions.
- Support searches by Observation.category.
- Support write capabilities of the "shall support" resources and profiles.

A CardX Hypertension Management server **should**:

- Support the Self-measured Blood Pressure Associated Heart Rate profile.
- Support searches by Observation.patient.

[Server capability statement](CapabilityStatement-CardXCapabilityStatementServer.html)

## Client capabilities

A CardX Hypertension Management Patient Management client **SHALL**:

- Support the Self-measured Blood Pressure Profile.
- Support the Average Self-measured Blood Pressure profile.
- Support json and xml source formats for all CardX interactions.
- Support write capabilites for the above profiles and resources.
- Support searches by Observation.category

A CardX Hypertension Management client **should**:

- Support the Self-measured Blood Pressure Associated Heart Rate profile.
- Support searches by Observation.patient.

[Client capability statement](CapabilityStatement-CardXCapabilityStatementClient.html)
