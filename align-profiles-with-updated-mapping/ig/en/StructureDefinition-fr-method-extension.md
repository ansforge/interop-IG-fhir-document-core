# FR Method Extension - FR Document Core (FHIR) v0.1.0

## Extension: FR Method Extension 

Extension permettant d’indiquer la méthode utilisée : techniques biologiques (ex. : titration, agglutination…), techniques d’imagerie dans les demandes d'examen (ultrasound, tomographie, IRM…), des méthodes de mesure spécifiques, etc.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FamilyMemberHistory - FR Family Member History Document](StructureDefinition-fr-family-member-history-document.md) and [ServiceRequest - FR Service Request Document](StructureDefinition-fr-service-request-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.document-core|current/StructureDefinition/StructureDefinition-fr-method-extension.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-method-extension.csv), [Excel](../StructureDefinition-fr-method-extension.xlsx), [Schematron](../StructureDefinition-fr-method-extension.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-method-extension",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-method-extension",
  "version" : "0.1.0",
  "name" : "FRMethodExtension",
  "title" : "FR Method Extension",
  "status" : "draft",
  "date" : "2026-08-04T07:19:45+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension permettant d’indiquer la méthode utilisée : techniques biologiques (ex. : titration, agglutination…), techniques d’imagerie dans les demandes d'examen (ultrasound, tomographie, IRM…), des méthodes de mesure spécifiques, etc.",
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
    "expression" : "FamilyMemberHistory"
  },
  {
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
      "short" : "FR Method Extension",
      "definition" : "Extension permettant d’indiquer la méthode utilisée : techniques biologiques (ex. : titration, agglutination…), techniques d’imagerie dans les demandes d'examen (ultrasound, tomographie, IRM…), des méthodes de mesure spécifiques, etc."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-method-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Méthode utilisée",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis|20260619134042"
      }
    }]
  }
}

```
