# BodyStructure - FR Body Structure Document - FR Document Core (FHIR) v0.1.0

## Resource Profile: BodyStructure - FR Body Structure Document 

 
FRBodyStructureDocument permet de préciser les modificateurs topographiques associés à une localisation anatomique. 

**Usages:**

* Refer to this Profile: [Observation - FR Observation Radiation Exposure Document](StructureDefinition-fr-observation-radiation-exposure-document.md), [Procedure - FR Procedure Document](StructureDefinition-fr-procedure-document.md) and [Procedure - FR Procedure Imaging Document](StructureDefinition-fr-procedure-imaging-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.document-core|current/StructureDefinition/StructureDefinition-fr-body-structure-document.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-body-structure-document.csv), [Excel](../StructureDefinition-fr-body-structure-document.xlsx), [Schematron](../StructureDefinition-fr-body-structure-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-body-structure-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-body-structure-document",
  "version" : "0.1.0",
  "name" : "FRBodyStructureDocument",
  "title" : "BodyStructure - FR Body Structure Document",
  "status" : "draft",
  "date" : "2026-07-20T15:23:28+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRBodyStructureDocument permet de préciser les modificateurs topographiques associés à une localisation anatomique.",
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
  },
  {
    "identity" : "openehr",
    "uri" : "http://openehr.org",
    "name" : "Open EHR Archetype Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "BodyStructure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/BodyStructure|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "BodyStructure",
      "path" : "BodyStructure"
    },
    {
      "id" : "BodyStructure.location",
      "path" : "BodyStructure.location",
      "short" : "Localisation anatomique ou voie d'abord",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-location-body-structure-document|0.1.0"
      }
    },
    {
      "id" : "BodyStructure.locationQualifier",
      "path" : "BodyStructure.locationQualifier",
      "short" : "Modificateurs topographiques",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis|20260619134042"
      }
    }]
  }
}

```
