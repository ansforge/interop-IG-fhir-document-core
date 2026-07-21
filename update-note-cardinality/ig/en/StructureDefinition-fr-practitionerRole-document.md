# FR PractitionerRole Document - FR Document Core (FHIR) v0.1.0

## Resource Profile: FR PractitionerRole Document 

 
Ce profil représente les professionnels de santé et leurs rôles dans le cadre d'un document médical. 

**Usages:**

* Use this Profile: [FR Bundle Document](StructureDefinition-fr-bundle-document.md)
* Refer to this Profile: [FR Actor Extension](StructureDefinition-fr-actor-extension.md), [FR Composition Document](StructureDefinition-fr-composition-document.md), [Condition - FR Condition Document](StructureDefinition-fr-condition-document.md), [DeviceRequest - FR Device request Document](StructureDefinition-fr-device-request-document.md)... Show 27 more, [DeviceUseStatement - FR Device Use Statement Document](StructureDefinition-fr-device-use-statement-document.md), [DiagnosticReport - FR Diagnostic Report Document](StructureDefinition-fr-diagnostic-report-document.md), [FR Encounter Care Document](StructureDefinition-fr-encounter-care-document.md), [FamilyMemberHistory - FR Family Member History Document](StructureDefinition-fr-family-member-history-document.md), [Immunization - FR Immunization Document](StructureDefinition-fr-immunization-document.md), [Media - FR Media Document](StructureDefinition-fr-media-document.md), [MedicationRequest - FR Medication Request Document](StructureDefinition-fr-medication-request-document.md), [Observation - FR Observation Administration Blood Derivatives Document](StructureDefinition-fr-observation-administration-blood-derivatives-document.md), [Observation - FR Blood Product Transfusion Document](StructureDefinition-fr-observation-blood-product-transfusion-document.md), [Observation - FR Observation Contra Indications Document](StructureDefinition-fr-observation-contra-indications-document.md), [Observation - FR Observation Laboratory Report Results Document](StructureDefinition-fr-observation-laboratory-report-results-document.md), [Observation - FR Observation Medical Summary Document](StructureDefinition-fr-observation-medical-summary-document.md), [Observation - FR Observation Microorganism Detection Document](StructureDefinition-fr-observation-microorganism-detection-document.md), [Observation - FR Observation Multiresistant Microorganisms Identification Document](StructureDefinition-fr-observation-multiresistant-microorganism-document.md), [Observation - FR Observation Pregnancy Document](StructureDefinition-fr-observation-pregnancy-document.md), [Observation - FR Observation Radiation Exposure Document](StructureDefinition-fr-observation-radiation-exposure-document.md), [Observation - FR Observation Result Document](StructureDefinition-fr-observation-result-document.md), [Observation - FR Observation Survey Document](StructureDefinition-fr-observation-survey-document.md), [Observation - FR Observation Transfusion Accidents Document](StructureDefinition-fr-observation-transfusion-accidents-document.md), [Observation - FR Observation Vital Signs Document](StructureDefinition-fr-observation-vital-signs-document.md), [Observation - FR Observation Vital Signs Panel Document](StructureDefinition-fr-observation-vital-signs-panel-document.md), [Observation - FR Observation Work Related Accident Document](StructureDefinition-fr-observation-work-related-accident-document.md), [FR Performer Event Extension](StructureDefinition-fr-performer-event-extension.md), [Procedure - FR Procedure Document](StructureDefinition-fr-procedure-document.md), [Procedure - FR Procedure Imaging Document](StructureDefinition-fr-procedure-imaging-document.md), [Specimen - FR Specimen Document](StructureDefinition-fr-specimen-document.md) and [Task - FR Task Patient Transport Document](StructureDefinition-fr-task-patient-transport-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.document-core|current/StructureDefinition/StructureDefinition-fr-practitionerRole-document.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-practitionerRole-document.csv), [Excel](../StructureDefinition-fr-practitionerRole-document.xlsx), [Schematron](../StructureDefinition-fr-practitionerRole-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-practitionerRole-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document",
  "version" : "0.1.0",
  "name" : "FRPractitionerRoleDocument",
  "title" : "FR PractitionerRole Document",
  "status" : "draft",
  "date" : "2026-07-21T08:08:19+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce profil représente les professionnels de santé et leurs rôles dans le cadre d'un document médical.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-practitioner-role-to-mos-situation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document|0.1.0"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0"]
      }]
    },
    {
      "id" : "PractitionerRole.code:functionCode",
      "path" : "PractitionerRole.code",
      "sliceName" : "functionCode",
      "short" : "Rôle fonctionnel du professionnel de santé",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.code:functionCode.coding",
      "path" : "PractitionerRole.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS|20250523120000"
      }
    },
    {
      "id" : "PractitionerRole.code:classCode",
      "path" : "PractitionerRole.code",
      "sliceName" : "classCode",
      "short" : "Professionnel de santé / Non Professionnel de santé",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.code:classCode.coding.code",
      "path" : "PractitionerRole.code.coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J141-RoleClass-CISIS/FHIR/JDV-J141-RoleClass-CISIS|20210326120000"
      }
    },
    {
      "id" : "PractitionerRole.code:typeCode",
      "path" : "PractitionerRole.code",
      "sliceName" : "typeCode",
      "short" : "Type de participation",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.code:typeCode.coding",
      "path" : "PractitionerRole.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J144-ParticipationType-CISIS/FHIR/JDV-J144-ParticipationType-CISIS|20210326120000"
      }
    }]
  }
}

```
