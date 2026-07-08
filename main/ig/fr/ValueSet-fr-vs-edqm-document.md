# ValueSet - FR ValueSet EDQM Document - FR Document Core (FHIR) v0.1.0

## ValueSet: ValueSet - FR ValueSet EDQM Document 

 
ValueSet basé sur le CodeSystem EDQM fourni par SMT. classe PDF (forme galénique). 

 **References** 

* [MedicationAdministration - FR Medication Administration Document](StructureDefinition-fr-medication-administration-document.md)
* [MedicationDispense - FR Medication Dispense Document](StructureDefinition-fr-medication-dispense-document.md)
* [Medication - FR Medication Document](StructureDefinition-fr-medication-document.md)
* [MedicationRequest - FR Medication Request Document](StructureDefinition-fr-medication-request-document.md)
* [MedicationStatement - FR Medication Statement Document](StructureDefinition-fr-medication-statement-document.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-edqm-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-edqm-document",
  "version" : "0.1.0",
  "name" : "FRValueSetEDQMDocument",
  "title" : "ValueSet - FR ValueSet EDQM Document",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-08T15:46:54+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet basé sur le CodeSystem EDQM fourni par SMT. classe PDF (forme galénique).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-standardterms",
      "version" : "2026-01-30",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "PDF"
      }]
    }]
  }
}

```
