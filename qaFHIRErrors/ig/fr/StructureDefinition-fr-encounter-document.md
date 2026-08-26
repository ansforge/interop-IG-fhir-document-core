# Encounter - FR Encounter Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: Encounter - FR Encounter Document 

 
FREncounterDocument est un profil permettant de conserver les modalités d'une rencontre du patient. Il peut s'agir d'une rencontre passée ou à venir 

**Utilisations:**

* Référence ce Profil: [DiagnosticReport - FR Diagnostic Report BIO chapter Document](StructureDefinition-fr-diagnostic-report-bio-chapter-document.md), [Observation - FR Observation Contra Indications Document](StructureDefinition-fr-observation-contra-indications-document.md), [Observation - FR Observation Microorganism Detection Document](StructureDefinition-fr-observation-microorganism-detection-document.md), [Observation - FR Observation Multiresistant Microorganisms Identification Document](StructureDefinition-fr-observation-multiresistant-microorganism-document.md)... Show 4 more, [Observation - FR Observation Pregnancy Document](StructureDefinition-fr-observation-pregnancy-document.md), [Observation - FR Observation Result Document](StructureDefinition-fr-observation-result-document.md), [Observation - FR Observation Work Related Accident Document](StructureDefinition-fr-observation-work-related-accident-document.md) and [Procedure - FR Procedure Document](StructureDefinition-fr-procedure-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-encounter-document)

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

#### Contraintes

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreEncounterProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-encounter.html) 

** Résumé **

Must-Support : 7 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [FR Patient Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0)](StructureDefinition-fr-patient-document.md)
* [FR Location Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-location-document|0.1.0)](StructureDefinition-fr-location-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreEncounterProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-encounter.html) 

#### Bindings terminologiques (différentiel)

#### Contraintes

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreEncounterProfile](https://hl7.fr/ig/fhir/core/2.1.0/StructureDefinition-fr-core-encounter.html) 

** Résumé **

Must-Support : 7 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [FR Patient Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0)](StructureDefinition-fr-patient-document.md)
* [FR Location Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-location-document|0.1.0)](StructureDefinition-fr-location-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-encounter-document.csv), [Excel](../StructureDefinition-fr-encounter-document.xlsx), [Schematron](../StructureDefinition-fr-encounter-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-encounter-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-document",
  "version" : "0.1.0",
  "name" : "FREncounterDocument",
  "title" : "Encounter - FR Encounter Document",
  "status" : "draft",
  "date" : "2026-08-26T13:43:53+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FREncounterDocument est un profil permettant de conserver les modalités d'une rencontre du patient. Il peut s'agir d'une rencontre passée ou à venir",
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
      "id" : "Encounter",
      "path" : "Encounter",
      "constraint" : [{
        "key" : "fr-encounter-status",
        "severity" : "error",
        "human" : "Le statut de la rencontre doit être 'finished' (rencontre réalisée), 'planned' (rencontre planifiée) ou 'proposed' (rencontre prévue mais non confirmée).",
        "expression" : "status = 'finished' or status = 'planned' or status = 'proposed'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-document|0.1.0"
      }]
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "short" : "Identifiant de la rencontre"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "short" : "Statut de la rencontre (finished | planned | proposed)",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "short" : "Type de rencontre (codes HL7 ActEncounterCode ou codes spécifiques au volet)",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "short" : "Si la rencontre est prévue non confirmée et qu'une confirmation est attendue :\ncode='CS', display='callback for scheduling'\nSinon, l'élément 'priority' n'est pas fourni.",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0"]
      }]
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "short" : "Liste des participants impliqués dans la rencontre",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.individual.extension:executant",
      "path" : "Encounter.participant.individual.extension",
      "sliceName" : "executant",
      "short" : "Exécutant : \nSi la rencontre est réalisée :\n au moins 1 exécutant doit être renseigné.\nSinon : l'exécutant n'est pas obligatoire mais peut être renseigné",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }]
    },
    {
      "id" : "Encounter.participant.individual.extension:executant.extension:type",
      "path" : "Encounter.participant.individual.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "Encounter.participant.individual.extension:executant.extension:type.value[x]",
      "path" : "Encounter.participant.individual.extension.extension.value[x]",
      "patternCode" : "PRF"
    },
    {
      "id" : "Encounter.participant.individual.extension:author",
      "path" : "Encounter.participant.individual.extension",
      "sliceName" : "author",
      "short" : "Author",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }]
    },
    {
      "id" : "Encounter.participant.individual.extension:author.extension:type",
      "path" : "Encounter.participant.individual.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "Encounter.participant.individual.extension:author.extension:type.value[x]",
      "path" : "Encounter.participant.individual.extension.extension.value[x]",
      "patternCode" : "AUT"
    },
    {
      "id" : "Encounter.participant.individual.extension:informant",
      "path" : "Encounter.participant.individual.extension",
      "sliceName" : "informant",
      "short" : "Informant",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }]
    },
    {
      "id" : "Encounter.participant.individual.extension:informant.extension:type",
      "path" : "Encounter.participant.individual.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "Encounter.participant.individual.extension:informant.extension:type.value[x]",
      "path" : "Encounter.participant.individual.extension.extension.value[x]",
      "patternCode" : "INF"
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "Date début et fin de la rencontre\nSi la rencontre est réalisée ou planifiée : la date est obligatoire.\nSi la rencontre est prévue non confirmée : la date est facultative.",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "short" : "Informations sur l'hospitalisation associée à la rencontre",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.admitSource",
      "path" : "Encounter.hospitalization.admitSource",
      "short" : "Modalité d'entrée du patient lors de la rencontre"
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "short" : "Modalité de sortie du patient lors de la rencontre: \nValeur provenant du jdv-modalite-sortie-cisis ou autre JDV spécifique à un volet",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-sortie-cisis|20260716085852"
      }
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "short" : "Lieu d'exécution",
      "max" : "1",
      "mustSupport" : true
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
