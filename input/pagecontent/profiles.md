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
            <td>A blood pressure measurment taken in a non-clinical environment by the subject or related person.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-average-smbp.html">Average Self-measured Blood Pressure</a></td>
            <td>A calculated average of two or more self-measured blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has a systolic and a diastolic component.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-avg-minmax-bp-panel.html">Average, Minimum, and Maximum Blood Pressure Panel</a></td>
            <td>A collection of the Average, Minimum, and Maximum Blood Pressure Observations for a given period of time.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-min-sys-bp.html">Minimum Systolic Blood Pressure</a></td>
            <td>The systolic blood pressure measurement that is the lowest over a given time period.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-min-diast-bp.html">Minimum Diastolic Blood Pressure</a></td>
            <td>The diastolic blood pressure measurement that is the lowest over a given time period.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-max-sys-bp.html">Maximum Systolic Blood Pressure</a></td>
            <td>The systolic blood pressure measurement that is the highest over a given time period.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-max-diast-bp.html">Maximum Diastolic Blood Pressure</a></td>
            <td>The diastolic blood pressure measurement that is the highest over a given time period.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-heart-rate.html">Heart Rate</a></td>
            <td>The number of heart beats per minute.</td>
          </tr>
        </tbody>
    </table>
</div>

### Extensions

The following extensions have been defined as part of this implementation Guide. A [registry of standard extensions]({{site.data.fhir.path}}extensibility-registry.html) can be found in the FHIR specification and additional extensions may be registered on the HL7 FHIR registry at [FHIR registry](http://hl7.org/fhir/registry).

|Extension|
|:----|
|[Measurement Setting](StructureDefinition-MeasurementSettingExt.html)|
|[Number of measurements](StructureDefinition-NumberOfMeasurementsExt.html)|
|[Sleep status](StructureDefinition-SleepStatusExt.html)|
|[Exercise association](StructureDefinition-ExerciseAssociationExt.html)|
|[Associated situation](StructureDefinition-AssociatedSituationExt.html)|