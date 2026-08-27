# FR ValueSet Participation Type Information Recipient - FR Document Core (FHIR) v0.1.0

## ValueSet: FR ValueSet Participation Type Information Recipient 

 
Type de participation : destinataire 

 **References** 

* [FR Composition Document](StructureDefinition-fr-composition-document.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-doc-vs-participation-type",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-doc-vs-participation-type",
  "version" : "0.1.0",
  "name" : "FrValueSetParticipationTypeInformationRecipient",
  "title" : "FR ValueSet Participation Type Information Recipient",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-27T07:35:13+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Type de participation : destinataire",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
      "version" : "7.0.0",
      "concept" : [{
        "code" : "TRC"
      },
      {
        "code" : "IRCP"
      },
      {
        "code" : "PRCP"
      }]
    }]
  }
}

```
