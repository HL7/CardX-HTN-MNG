---
title: Profiles and Extensions
layout: default
active: profiles
---
### Profiles

The following Profiles and have been defined for this implementation guide.

<div>
	<table class="grid">
		<thead>
			<tr>
			  <th width="25%">Profile</th>
			  <th width="75%">Definition</th>
			</tr>
		</thead>
		<tbody>
          <tr>
            <td><a href="StructureDefinition-self-measured-bp.html">Self-measured Blood Pressure</a></td>
            <td>A blood pressure measurement taken in a non-clinical environment by the subject or related person.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-average-smbp.html">Average Self-measured Blood Pressure</a></td>
            <td>A calculated average of two or more self-measured blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has systolic and diastolic components.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-smbp-associated-heart-rate.html">SMBP-associated Heart Rate</a></td>
            <td>A heart rate measured by the same device and at the same time as the self-measured blood pressure.</td>
          </tr>
        </tbody>
    </table>
</div>

### Extensions

The following extensions have been defined as part of this implementation Guide. A [registry of standard extensions]({{site.data.fhir.path}}extensibility-registry.html) can be found in the FHIR specification and additional extensions may be registered on the HL7 FHIR registry at [FHIR registry](http://hl7.org/fhir/registry).

|Extension|
|:----|
|[Number of measurements](StructureDefinition-NumberOfMeasurementsExt.html)|