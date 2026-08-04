# ValueSet – FR ValueSet Codes vaccins CIS (BDPM) - FR Document Core (FHIR) v0.1.0

## ValueSet: ValueSet – FR ValueSet Codes vaccins CIS (BDPM) 

 
Codes issus de la Base de Données Publique des Médicaments (BDPM) pour identifier les vaccins par leur code CIS. 

 **References** 

* [Immunization - FR Immunization Document](StructureDefinition-fr-immunization-document.md)
* [ImmunizationRecommendation - FR Immunization Recommendation Document](StructureDefinition-fr-immunization-recommendation-document.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-vaccine-code-cis",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-vaccine-code-cis",
  "version" : "0.1.0",
  "name" : "FRValueSetVaccineCodeCISDocument",
  "title" : "ValueSet – FR ValueSet Codes vaccins CIS (BDPM)",
  "status" : "draft",
  "date" : "2026-08-04T07:44:41+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Codes issus de la Base de Données Publique des Médicaments (BDPM) pour identifier les vaccins par leur code CIS.",
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
      "version" : "2026-07-01"
    }]
  }
}

```
