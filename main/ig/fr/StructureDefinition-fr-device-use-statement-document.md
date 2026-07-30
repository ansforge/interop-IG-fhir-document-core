# DeviceUseStatement - FR Device Use Statement Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: DeviceUseStatement - FR Device Use Statement Document 

 
FRDeviceUseStatementDocument représente les informations sur un dispositif médical 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-device-use-statement-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [DeviceUseStatement](http://hl7.org/fhir/R4/deviceusestatement.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [DeviceUseStatement](http://hl7.org/fhir/R4/deviceusestatement.html) 

** Résumé **

Must-Support : 5 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Organization Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0)](StructureDefinition-fr-organization-document.md)
* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)
* [Observation - FR Observation Work Related Accident Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-work-related-accident-document|0.1.0)](StructureDefinition-fr-observation-work-related-accident-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-not-covered-extension|0.1.0](StructureDefinition-fr-not-covered-extension.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of DeviceUseStatement.reasonReference

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [DeviceUseStatement](http://hl7.org/fhir/R4/deviceusestatement.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [DeviceUseStatement](http://hl7.org/fhir/R4/deviceusestatement.html) 

** Résumé **

Must-Support : 5 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Organization Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0)](StructureDefinition-fr-organization-document.md)
* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)
* [Observation - FR Observation Work Related Accident Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-work-related-accident-document|0.1.0)](StructureDefinition-fr-observation-work-related-accident-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-not-covered-extension|0.1.0](StructureDefinition-fr-not-covered-extension.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of DeviceUseStatement.reasonReference

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-device-use-statement-document.csv), [Excel](../StructureDefinition-fr-device-use-statement-document.xlsx), [Schematron](../StructureDefinition-fr-device-use-statement-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-device-use-statement-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-device-use-statement-document",
  "version" : "0.1.0",
  "name" : "FRDeviceUseStatementDocument",
  "title" : "DeviceUseStatement - FR Device Use Statement Document",
  "status" : "draft",
  "date" : "2026-07-30T08:11:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRDeviceUseStatementDocument représente les informations sur un dispositif médical",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
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
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DeviceUseStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DeviceUseStatement|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DeviceUseStatement",
      "path" : "DeviceUseStatement"
    },
    {
      "id" : "DeviceUseStatement.extension",
      "path" : "DeviceUseStatement.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "DeviceUseStatement.extension:performer",
      "path" : "DeviceUseStatement.extension",
      "sliceName" : "performer",
      "short" : "Dispensateur: référence au professionnel de santé ou à l'organisation ayant initié ou dispensé le dispositif",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }]
    },
    {
      "id" : "DeviceUseStatement.extension:performer.extension:type",
      "path" : "DeviceUseStatement.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "DeviceUseStatement.extension:performer.extension:type.value[x]",
      "path" : "DeviceUseStatement.extension.extension.value[x]",
      "patternCode" : "PRF"
    },
    {
      "id" : "DeviceUseStatement.extension:performer.extension:actor",
      "path" : "DeviceUseStatement.extension.extension",
      "sliceName" : "actor"
    },
    {
      "id" : "DeviceUseStatement.extension:performer.extension:actor.value[x]",
      "path" : "DeviceUseStatement.extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0"]
      }]
    },
    {
      "id" : "DeviceUseStatement.extension:notCovered",
      "path" : "DeviceUseStatement.extension",
      "sliceName" : "notCovered",
      "short" : "DM n'est remboursable / remboursable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-not-covered-extension|0.1.0"]
      }]
    },
    {
      "id" : "DeviceUseStatement.identifier",
      "path" : "DeviceUseStatement.identifier",
      "short" : "Identifiant de la fourniture du DM."
    },
    {
      "id" : "DeviceUseStatement.timing[x]",
      "path" : "DeviceUseStatement.timing[x]",
      "type" : [{
        "code" : "Timing"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "DeviceUseStatement.device",
      "path" : "DeviceUseStatement.device",
      "short" : "Dispositif médical",
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.reasonReference",
      "path" : "DeviceUseStatement.reasonReference",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "resolve().code"
        }],
        "rules" : "open"
      },
      "short" : "Raisons liées à l'utilisation du dispositif médical",
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.reasonReference:EnRapportAvecALD",
      "path" : "DeviceUseStatement.reasonReference",
      "sliceName" : "EnRapportAvecALD",
      "short" : "Observation indiquant que l'utilisation est en rapport avec une ALD",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.reasonReference:EnRapportAvecAccidentTravail",
      "path" : "DeviceUseStatement.reasonReference",
      "sliceName" : "EnRapportAvecAccidentTravail",
      "short" : "Observation indiquant que l'utilisation est en rapport avec un accident de travail",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-work-related-accident-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.reasonReference:EnRapportAvecLaPrevention",
      "path" : "DeviceUseStatement.reasonReference",
      "sliceName" : "EnRapportAvecLaPrevention",
      "short" : "Observation indiquant que l'utilisation est liée à la prévention",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0"]
      }],
      "mustSupport" : true
    }]
  }
}

```
