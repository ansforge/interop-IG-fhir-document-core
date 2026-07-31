# ServiceRequest - FR Service Request Imaging Document - FR Document Core (FHIR) v0.1.0

## Resource Profile: ServiceRequest - FR Service Request Imaging Document 

 
FRServiceRequestImagingDocument profil spécifique permet de porter des demandes d'examens d'imagerie. 

**Usages:**

* Refer to this Profile: [DiagnosticReport - FR Diagnostic Report Imaging Document](StructureDefinition-fr-diagnostic-report-imaging-document.md), [ImagingStudy - FR Imaging study Document](StructureDefinition-fr-imaging-study-document.md), [Observation - FR Observation Radiation Exposure Document](StructureDefinition-fr-observation-radiation-exposure-document.md) and [Procedure - FR Procedure Imaging Document](StructureDefinition-fr-procedure-imaging-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.document-core|current/StructureDefinition/StructureDefinition-fr-service-request-imaging-document.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-service-request-imaging-document.csv), [Excel](../StructureDefinition-fr-service-request-imaging-document.xlsx), [Schematron](../StructureDefinition-fr-service-request-imaging-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-service-request-imaging-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-imaging-document",
  "version" : "0.1.0",
  "name" : "FRServiceRequestImagingDocument",
  "title" : "ServiceRequest - FR Service Request Imaging Document",
  "status" : "draft",
  "date" : "2026-07-31T13:02:34+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRServiceRequestImagingDocument profil spécifique permet de porter des demandes d'examens d'imagerie.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "extension('http://hl7.fr/ig/.../StructureDefinition/fr-note-type-extension')"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ServiceRequest.note:finaliteExamen",
      "path" : "ServiceRequest.note",
      "sliceName" : "finaliteExamen",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note:finaliteExamen.extension",
      "path" : "ServiceRequest.note.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.note:finaliteExamen.extension:noteType",
      "path" : "ServiceRequest.note.extension",
      "sliceName" : "noteType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-note-type-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note:finaliteExamen.extension:noteType.value[x]",
      "path" : "ServiceRequest.note.extension.value[x]",
      "patternCode" : "finaliteExamen"
    },
    {
      "id" : "ServiceRequest.note:justificationDemande",
      "path" : "ServiceRequest.note",
      "sliceName" : "justificationDemande",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note:justificationDemande.extension",
      "path" : "ServiceRequest.note.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.note:justificationDemande.extension:noteType",
      "path" : "ServiceRequest.note.extension",
      "sliceName" : "noteType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-note-type-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note:justificationDemande.extension:noteType.value[x]",
      "path" : "ServiceRequest.note.extension.value[x]",
      "patternCode" : "justificationDemande"
    }]
  }
}

```
