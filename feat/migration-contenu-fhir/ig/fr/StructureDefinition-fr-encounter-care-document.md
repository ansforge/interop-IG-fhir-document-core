# FR Encounter Care Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: FR Encounter Care Document 

 
Ce profil représente l'association du document à une prise en charge. 

**Utilisations:**

* Utilise ce/t/te Profil: [FR Bundle Document](StructureDefinition-fr-bundle-document.md)
* Référence ce Profil: [FR Composition Document](StructureDefinition-fr-composition-document.md) and [MedicationRequest - FR Medication Request Document](StructureDefinition-fr-medication-request-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-encounter-care-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreEncounterProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-encounter.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreEncounterProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-encounter.html) 

** Résumé **

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Location Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-location-document|0.1.0)](StructureDefinition-fr-location-document.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Encounter.participant

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreEncounterProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-encounter.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreEncounterProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-encounter.html) 

** Résumé **

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Location Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-location-document|0.1.0)](StructureDefinition-fr-location-document.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Encounter.participant

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-encounter-care-document.csv), [Excel](../StructureDefinition-fr-encounter-care-document.xlsx), [Schematron](../StructureDefinition-fr-encounter-care-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-encounter-care-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-care-document",
  "version" : "0.1.0",
  "name" : "FREncounterCareDocument",
  "title" : "FR Encounter Care Document",
  "status" : "draft",
  "date" : "2026-07-01T11:43:27+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce profil représente l'association du document à une prise en charge.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-encounter|2.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "short" : "Type de prise en charge"
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.participant:responsibleParty",
      "path" : "Encounter.participant",
      "sliceName" : "responsibleParty",
      "short" : "Responsable de la prise en charge",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.participant:responsibleParty.type",
      "path" : "Encounter.participant.type",
      "short" : "Type de participation"
    },
    {
      "id" : "Encounter.participant:responsibleParty.individual",
      "path" : "Encounter.participant.individual",
      "short" : "Entité responsable de la prise en charge",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0"]
      }]
    },
    {
      "id" : "Encounter.participant:encounterParticipant",
      "path" : "Encounter.participant",
      "sliceName" : "encounterParticipant",
      "short" : "Personne impliquée dans la prise en charge",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Encounter.participant:encounterParticipant.type",
      "path" : "Encounter.participant.type",
      "short" : "Type de participation",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J140-EncounterParticipationType-CISIS/FHIR/JDV-J140-EncounterParticipationType-CISIS|20210326120000"
      }
    },
    {
      "id" : "Encounter.participant:encounterParticipant.individual",
      "path" : "Encounter.participant.individual",
      "short" : "Professionnel impliqué",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0"]
      }]
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "Date de début et de fin de la prise en charge"
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "short" : "Type sortie"
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "short" : "Lieu de la prise en charge",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-location-document|0.1.0"]
      }]
    }]
  }
}

```
