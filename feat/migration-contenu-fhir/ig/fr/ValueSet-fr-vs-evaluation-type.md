# ValueSet – FR ValueSet Type d'évaluation - FR Document Core (FHIR) v0.1.0

## ValueSet: ValueSet – FR ValueSet Type d'évaluation 

 
Codes autorisés pour indiquer le type d'évaluation. Inclut LOINC, ICF, et permet d'autres systèmes si aucun code approprié n'est trouvé. 

 **References** 

* [Observation - FR Observation Survey Document](StructureDefinition-fr-observation-survey-document.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-evaluation-type",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-evaluation-type",
  "version" : "0.1.0",
  "name" : "FRValueSetEvaluationTypeDocument",
  "title" : "ValueSet – FR ValueSet Type d'évaluation",
  "status" : "draft",
  "date" : "2026-07-01T11:43:27+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Codes autorisés pour indiquer le type d'évaluation.\nInclut LOINC, ICF, et permet d'autres systèmes si aucun code approprié n'est trouvé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org"
    },
    {
      "system" : "http://hl7.org/fhir/sid/icf"
    }]
  }
}

```
