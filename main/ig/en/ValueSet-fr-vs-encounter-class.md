# FR ValueSet Encounter Class - FR Document Core (FHIR) v0.1.0

## ValueSet: FR ValueSet Encounter Class 

 
ValueSet pour les types de rencontre basé sur HL7 v3 ActEncounterCode. 
* Ce ValueSet peut être étendu ultérieurement avec des codes spécifiques définis par les différents volets pour répondre à des besoins métier particuliers.
 

 **References** 

* [Encounter - FR Encounter Document](StructureDefinition-fr-encounter-document.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-encounter-class",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-encounter-class",
  "version" : "0.1.0",
  "name" : "FRValueSetEncounterClass",
  "title" : "FR ValueSet Encounter Class",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-21T09:10:59+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "ValueSet pour les types de rencontre basé sur HL7 v3 ActEncounterCode.\n - Ce ValueSet peut être étendu ultérieurement avec des codes spécifiques définis par les différents volets pour répondre à des besoins métier particuliers.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode",
      "version" : "3.0.0"
    }]
  }
}

```
