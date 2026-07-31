# FR Accession Number Identifier Document - FR Document Core (FHIR) v0.1.0

## Profil du type de données: FR Accession Number Identifier Document 

 
DataType définissant l'Accession Number d'une demande d'examen. Il s'agit d'un identifiant unique attribué à chaque demande d'examen. 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [ServiceRequest - FR Service Request Document](StructureDefinition-fr-service-request-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-accession-number-identifier-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) 

** Résumé **

Obligatoire : 2 éléments
 Must-Support : 3 éléments

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) 

** Résumé **

Obligatoire : 2 éléments
 Must-Support : 3 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-accession-number-identifier-document.csv), [Excel](../StructureDefinition-fr-accession-number-identifier-document.xlsx), [Schematron](../StructureDefinition-fr-accession-number-identifier-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-accession-number-identifier-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-accession-number-identifier-document",
  "version" : "0.1.0",
  "name" : "FRAccessionNumberIdentifierDocument",
  "title" : "FR Accession Number Identifier Document",
  "status" : "draft",
  "date" : "2026-07-31T09:38:41+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "DataType définissant l'Accession Number d'une demande d'examen. Il s'agit d'un identifiant unique attribué à chaque demande d'examen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier"
    },
    {
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "ACSN",
          "display" : "Accession ID"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "L'espace de nommage pour l'identifiant",
      "mustSupport" : true
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "La valeur de l'identifiant",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
