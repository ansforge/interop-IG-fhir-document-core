# ValueSet – FR ValueSet Localisation anatomique et voie d'abord - FR Document Core (FHIR) v0.1.0

## ValueSet: ValueSet – FR ValueSet Localisation anatomique et voie d'abord 

 
Codes SNOMED CT autorisés pour décrire une localisation anatomique ou une voie d'abord. Inclut : 
* Les structures anatomiques pour body site : http://hl7.org/fhir/ValueSet/body-site
* Les structures anatomiques pour voie d'abord (approach-site-codes) : http://hl7.org/fhir/ValueSet/approach-site-codes
 

 **References** 

* [BodyStructure - FR Body Structure Document](StructureDefinition-fr-body-structure-document.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-location-body-structure-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-location-body-structure-document",
  "version" : "0.1.0",
  "name" : "FRValueSetLocationBodyStructureDocument",
  "title" : "ValueSet – FR ValueSet Localisation anatomique et voie d'abord",
  "status" : "draft",
  "date" : "2026-07-21T09:08:11+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Codes SNOMED CT autorisés pour décrire une localisation anatomique ou une voie d'abord.\nInclut :\n- Les structures anatomiques pour body site : http://hl7.org/fhir/ValueSet/body-site\n- Les structures anatomiques pour voie d'abord (approach-site-codes) : http://hl7.org/fhir/ValueSet/approach-site-codes",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "valueSet" : ["http://hl7.org/fhir/ValueSet/body-site|4.0.1"]
    },
    {
      "valueSet" : ["http://hl7.org/fhir/ValueSet/approach-site-codes|4.0.1"]
    }]
  }
}

```
