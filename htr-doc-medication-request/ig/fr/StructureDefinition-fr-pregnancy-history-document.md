# List - FR Pregnancy History Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: List - FR Pregnancy History Document 

 
FRPregnancyHistoryDocument est une liste contenant soit un événement de naissance, soit une observation sur la grossesse, mais pas les deux. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-pregnancy-history-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [List](http://hl7.org/fhir/R4/list.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [List](http://hl7.org/fhir/R4/list.html) 

** Résumé **

Obligatoire : 3 éléments
 Must-Support : 3 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [Observation - FR Observation Pregnancy Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-document|0.1.0)](StructureDefinition-fr-observation-pregnancy-document.md)
* [Observation - FR Observation Birth Event Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-birth-event-document|0.1.0)](StructureDefinition-fr-observation-birth-event-document.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [List](http://hl7.org/fhir/R4/list.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [List](http://hl7.org/fhir/R4/list.html) 

** Résumé **

Obligatoire : 3 éléments
 Must-Support : 3 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [Observation - FR Observation Pregnancy Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-document|0.1.0)](StructureDefinition-fr-observation-pregnancy-document.md)
* [Observation - FR Observation Birth Event Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-birth-event-document|0.1.0)](StructureDefinition-fr-observation-birth-event-document.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-pregnancy-history-document.csv), [Excel](../StructureDefinition-fr-pregnancy-history-document.xlsx), [Schematron](../StructureDefinition-fr-pregnancy-history-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-pregnancy-history-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-pregnancy-history-document",
  "version" : "0.1.0",
  "name" : "FRPregnancyHistoryDocument",
  "title" : "List - FR Pregnancy History Document",
  "status" : "draft",
  "date" : "2026-07-20T12:22:24+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRPregnancyHistoryDocument  est une liste contenant soit un événement de naissance, soit une observation sur la grossesse, mais pas les deux.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List"
    },
    {
      "id" : "List.identifier",
      "path" : "List.identifier",
      "short" : "Identifiant"
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "patternCode" : "current",
      "mustSupport" : true
    },
    {
      "id" : "List.code",
      "path" : "List.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "118185001",
          "display" : "constatation à propos de la grossesse"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "List.date",
      "path" : "List.date",
      "short" : "Période de la grossesse",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "short" : "Références vers des observations de type grossesse ou naissance",
      "min" : 1
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-birth-event-document|0.1.0"]
      }]
    }]
  }
}

```
