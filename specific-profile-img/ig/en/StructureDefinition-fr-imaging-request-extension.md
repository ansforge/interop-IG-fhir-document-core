# FR Imaging Request Extension - FR Document Core (FHIR) v0.1.0

## Extension: FR Imaging Request Extension 

Extension permettant de renseigner les notes associées à une demande d’examen d’imagerie, notamment la finalité de l’examen et la justification de la demande.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ServiceRequest - FR Service Request Imaging Document](StructureDefinition-fr-service-request-imaging-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.document-core|current/StructureDefinition/StructureDefinition-fr-imaging-request-extension.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-imaging-request-extension.csv), [Excel](../StructureDefinition-fr-imaging-request-extension.xlsx), [Schematron](../StructureDefinition-fr-imaging-request-extension.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-imaging-request-extension",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-request-extension",
  "version" : "0.1.0",
  "name" : "FRImagingRequestExtension",
  "title" : "FR Imaging Request Extension",
  "status" : "draft",
  "date" : "2026-07-31T07:56:22+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension permettant de renseigner les notes associées à une demande d’examen d’imagerie, notamment la finalité de l’examen et la justification de la demande.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "FR Imaging Request Extension",
      "definition" : "Extension permettant de renseigner les notes associées à une demande d’examen d’imagerie, notamment la finalité de l’examen et la justification de la demande."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:finaliteExamen",
      "path" : "Extension.extension",
      "sliceName" : "finaliteExamen",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:finaliteExamen.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:finaliteExamen.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "finaliteExamen"
    },
    {
      "id" : "Extension.extension:finaliteExamen.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:justificationDemande",
      "path" : "Extension.extension",
      "sliceName" : "justificationDemande",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:justificationDemande.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:justificationDemande.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "justificationDemande"
    },
    {
      "id" : "Extension.extension:justificationDemande.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-request-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
