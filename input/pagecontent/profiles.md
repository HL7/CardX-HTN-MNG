---
title: Profiles and Extensions
layout: default
active: profiles
---
### Profiles

The following Profiles and have been defined for this implementation guide.

|Profile|Definition|
|:----|:----|
|[Blood Pressure Panel](StructureDefinition-blood-pressure-panel.html)|Blood Pressure Panel; a grouping of systolic, diastolic, and mean arterial blood pressure components.|
|[Average Blood Pressure](StructureDefinition-average-blood-pressure.html)|A calculated average of two or more blood pressure readings in a specified time period or according to a specified algorithm or protocol.  The average blood pressure has a systolic and a diastolic component.|
|[Blood Pressure Device](StructureDefinition-bp-device.html)|A profile of the Device resource used specifically for blood pressure devices and includes an extension for blood pressure cuff size.|
|[Heart Rate](StructureDefinition-heart-rate.html)|The number of heart beats per minute.|
|[Minimum Blood Pressure Panel](StructureDefinition-min-blood-pressure-panel.html)|The systolic and diastolic blood pressure measurement that is the lowest over a given time period.|
|[Maximum Blood Pressure Panel](StructureDefinition-max-blood-pressure-panel.html)|The systolic and diastolic blood pressure measurements that are the highest over a given time period.|

### Extensions

The following extensions have been defined as part of this implementation Guide. A [registry of standard extensions]({{site.data.fhir.path}}extensibility-registry.html) can be found in the FHIR specification and additional extensions may be registered on the HL7 FHIR registry at [FHIR registry](http://hl7.org/fhir/registry).

|Extension|
|:----|
|[Date/Time of calculation](StructureDefinition-datetim-of-calculation.html)|
|[Blood Pressure Cuff Size](StructureDefinition-bp-cuff-size-ext.html)|
|[Measurement Protocol](StructureDefinition-MeasurementProtocolExt.html)|
|[Measurement Setting](StructureDefinition-MeasurementSettingExt.html)|
