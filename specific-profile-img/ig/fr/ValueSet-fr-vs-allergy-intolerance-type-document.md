# ValueSet - FR ValueSet Allergy Intolerance Type Document - FR Document Core (FHIR) v0.1.0

## ValueSet: ValueSet - FR ValueSet Allergy Intolerance Type Document 

 
ValueSet contenant les codes SNOMED CT autorisés pour les types d'allergies et d'intolérances 

 **References** 

* [AllergyIntolerance - FR Allergy and intolerance Document](StructureDefinition-fr-allergy-intolerance-document.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-allergy-intolerance-type-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-allergy-intolerance-type-document",
  "version" : "0.1.0",
  "name" : "FRValueSetAllergyInoleranceTypeDocument",
  "title" : "ValueSet - FR ValueSet Allergy Intolerance Type Document",
  "status" : "draft",
  "date" : "2026-07-31T12:59:03+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet contenant les codes SNOMED CT autorisés pour les types d'allergies et d'intolérances",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/allergy-intolerance-type",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "allergy",
        "display" : "allergie"
      },
      {
        "code" : "intolerance",
        "display" : "intolerance"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "56840009",
        "display" : "idiosyncrasie"
      },
      {
        "code" : "609396006",
        "display" : "hypersensibilité non allergique"
      }]
    }]
  }
}

```
