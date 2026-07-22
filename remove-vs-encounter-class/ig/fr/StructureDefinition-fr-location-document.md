# FR Location Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: FR Location Document 

 
Ce profil représente le lieu de la prise en charge. 

**Utilisations:**

* Utilise ce/t/te Profil: [FR Bundle Document](StructureDefinition-fr-bundle-document.md)
* Référence ce Profil: [FR Encounter Care Document](StructureDefinition-fr-encounter-care-document.md) and [Encounter - FR Encounter Document](StructureDefinition-fr-encounter-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-location-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreLocationProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-location.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreLocationProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-location.html) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Location.type.coding

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreLocationProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-location.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreLocationProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-location.html) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Location.type.coding

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-location-document.csv), [Excel](../StructureDefinition-fr-location-document.xlsx), [Schematron](../StructureDefinition-fr-location-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-location-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-location-document",
  "version" : "0.1.0",
  "name" : "FRLocationDocument",
  "title" : "FR Location Document",
  "status" : "draft",
  "date" : "2026-07-22T07:14:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce profil représente le lieu de la prise en charge.",
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
  "type" : "Location",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location|2.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location.name",
      "path" : "Location.name",
      "short" : "Nom de la structure",
      "mustSupport" : true
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "mustSupport" : true
    },
    {
      "id" : "Location.type.coding",
      "path" : "Location.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.code"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Location.type.coding:secteurActivite",
      "path" : "Location.type.coding",
      "sliceName" : "secteurActivite",
      "short" : "Secteur d'activité",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Location.type.coding:secteurActivite.code",
      "path" : "Location.type.coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS|20260223120000"
      }
    },
    {
      "id" : "Location.type.coding:categorieEtablissement",
      "path" : "Location.type.coding",
      "sliceName" : "categorieEtablissement",
      "short" : "Catégorie d'établissement",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Location.type.coding:categorieEtablissement.code",
      "path" : "Location.type.coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j368-categorie-etablissement-cisis|20260505120000"
      }
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "short" : "Adresse géopostale de la structure",
      "mustSupport" : true
    }]
  }
}

```
