# FR Organization Document - FR Document Core (FHIR) v0.1.0

## Resource Profile: FR Organization Document 

 
Ce profil représente la structure pour le compte de laquelle intervient le professionnel. 

**Usages:**

* Use this Profile: [FR Bundle Document](StructureDefinition-fr-bundle-document.md)
* Refer to this Profile: [FR Actor Extension](StructureDefinition-fr-actor-extension.md), [FR Composition Document](StructureDefinition-fr-composition-document.md), [FR Device Document](StructureDefinition-fr-device-auteur-document.md), [DeviceUseStatement - FR Device Use Statement Document](StructureDefinition-fr-device-use-statement-document.md)... Show 20 more, [DiagnosticReport - FR Diagnostic Report BIO chapter Document](StructureDefinition-fr-diagnostic-report-bio-chapter-document.md), [DiagnosticReport - FR Diagnostic Report Document](StructureDefinition-fr-diagnostic-report-document.md), [DiagnosticReport - FR Diagnostic Report Imaging Document](StructureDefinition-fr-diagnostic-report-imaging-document.md), [Media - FR Media Document](StructureDefinition-fr-media-document.md), [Observation - FR Observation Administration Blood Derivatives Document](StructureDefinition-fr-observation-administration-blood-derivatives-document.md), [Observation - FR Blood Product Transfusion Document](StructureDefinition-fr-observation-blood-product-transfusion-document.md), [Observation - FR Observation Contra Indications Document](StructureDefinition-fr-observation-contra-indications-document.md), [Observation - FR Observation Laboratory Report Results Document](StructureDefinition-fr-observation-laboratory-report-results-document.md), [Observation - FR Observation Medical Summary Document](StructureDefinition-fr-observation-medical-summary-document.md), [Observation - FR Observation Microorganism Detection Document](StructureDefinition-fr-observation-microorganism-detection-document.md), [Observation - FR Observation Multiresistant Microorganisms Identification Document](StructureDefinition-fr-observation-multiresistant-microorganism-document.md), [Observation - FR Observation Pregnancy Document](StructureDefinition-fr-observation-pregnancy-document.md), [Observation - FR Observation Result Document](StructureDefinition-fr-observation-result-document.md), [Observation - FR Observation Survey Document](StructureDefinition-fr-observation-survey-document.md), [Observation - FR Observation Transfusion Accidents Document](StructureDefinition-fr-observation-transfusion-accidents-document.md), [Observation - FR Observation Vital Signs Document](StructureDefinition-fr-observation-vital-signs-document.md), [Observation - FR Observation Vital Signs Panel Document](StructureDefinition-fr-observation-vital-signs-panel-document.md), [Observation - FR Observation Work Related Accident Document](StructureDefinition-fr-observation-work-related-accident-document.md), [FR PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md) and [Task - FR Task Patient Transport Document](StructureDefinition-fr-task-patient-transport-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.document-core|current/StructureDefinition/StructureDefinition-fr-organization-document.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-organization-document.csv), [Excel](../StructureDefinition-fr-organization-document.xlsx), [Schematron](../StructureDefinition-fr-organization-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-organization-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document",
  "version" : "0.1.0",
  "name" : "FROrganizationDocument",
  "title" : "FR Organization Document",
  "status" : "draft",
  "date" : "2026-07-08T15:46:54+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce profil représente la structure pour le compte de laquelle intervient le professionnel.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-organization-to-mos-ej",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EJ"
  },
  {
    "identity" : "as-organization-to-mos-eg",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EG"
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
  "type" : "Organization",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "short" : "Identifiant de la structure\n - Obligatoire dans la structure chargée de la conservation du document(Composition.custodian 1..1)"
    },
    {
      "id" : "Organization.type:standardIndustryClassCode",
      "path" : "Organization.type",
      "sliceName" : "standardIndustryClassCode",
      "short" : "Cadre d'exercice",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J04-XdsPracticeSettingCode-CISIS/FHIR/JDV-J04-XdsPracticeSettingCode-CISIS|20240927120000"
      }
    }]
  }
}

```
