# ValueSet - FR ValueSet Medication Translation Document - FR Document Core (FHIR) v0.1.0

## ValueSet: ValueSet - FR ValueSet Medication Translation Document 

 
Systèmes autorisés pour les autres codifications. 

 **References** 

* [Immunization - FR Immunization Document](StructureDefinition-fr-immunization-document.md)
* [ImmunizationRecommendation - FR Immunization Recommendation Document](StructureDefinition-fr-immunization-recommendation-document.md)
* [Medication - FR Medication Document](StructureDefinition-fr-medication-document.md)

### Définition logique (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-medication-translation-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-medication-translation-document",
  "version" : "0.1.0",
  "name" : "FRValueSetMedicationTranslationDocument",
  "title" : "ValueSet - FR ValueSet Medication Translation Document",
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
  "description" : "Systèmes autorisés pour les autres codifications.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-bdpm",
      "version" : "2026-06-01"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-cip_ucd"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-atc",
      "version" : "2026-02"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-medicabase"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-nuva/"
    }]
  }
}

```
