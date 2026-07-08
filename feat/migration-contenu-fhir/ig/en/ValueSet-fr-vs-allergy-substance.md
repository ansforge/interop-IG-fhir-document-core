# ValueSet – FR ValueSet Allergy Substance Document - FR Document Core (FHIR) v0.1.0

## ValueSet: ValueSet – FR ValueSet Allergy Substance Document 

 
Jeu de valeurs permettant de coder la substance responsable d’une allergie 

 **References** 

* [AllergyIntolerance - FR Allergy and intolerance Document](StructureDefinition-fr-allergy-intolerance-document.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-allergy-substance",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-allergy-substance",
  "version" : "0.1.0",
  "name" : "FRValueSetAllergySubstanceDocument",
  "title" : "ValueSet – FR ValueSet Allergy Substance Document",
  "status" : "draft",
  "date" : "2026-07-08T09:43:12+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs permettant de coder la substance responsable d’une allergie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-sms",
      "version" : "2026-06"
    }]
  }
}

```
