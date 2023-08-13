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
            <td><a href="http://hl7.org/fhir/us/cardx-htn/StructureDefinition/self-measured-bp.html">Self-measured Blood Pressure</a></td>
            <td>A blood pressure measurment taken in a non-clinical environment by the individual or related person.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-average-blood-pressure.html">Average Blood Pressure</a></td>
            <td>A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has a systolic and a diastolic component.</td>
          </tr>
          <tr>
            <td><a href= "StructureDefinition-bp-device.html">Blood Pressure Device</a></td>
            <td>A profile of the Device resource used specifically for blood pressure devices and includes an extension for blood pressure cuff size.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-heart-rate.html">Heart Rate</a></td>
            <td>The number of heart beats per minute.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-min-blood-pressure-panel.html">Minimum Blood Pressure Panel</a></td>
            <td>The systolic and diastolic blood pressure measurement that is the lowest over a given time period.</td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-max-blood-pressure-panel.html">Maximum Blood Pressure Panel</a></td>
            <td>The systolic and diastolic blood pressure measurements that are the highest over a given time period.</td>
          </tr>
        </tbody>
    </table>
</div>

### Extensions

The following extensions have been defined as part of this implementation Guide. A [registry of standard extensions]({{site.data.fhir.path}}extensibility-registry.html) can be found in the FHIR specification and additional extensions may be registered on the HL7 FHIR registry at [FHIR registry](http://hl7.org/fhir/registry).

|Extension|
|:----|
|[Date/Time of calculation](StructureDefinition-datetim-of-calculation.html)|
|[Blood Pressure Cuff Size](StructureDefinition-bp-cuff-size-ext.html)|
|[Measurement Protocol](StructureDefinition-MeasurementProtocolExt.html)|
|[Measurement Setting](StructureDefinition-MeasurementSettingExt.html)|
