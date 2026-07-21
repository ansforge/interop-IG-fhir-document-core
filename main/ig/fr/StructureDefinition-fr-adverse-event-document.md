# AdverseEvent - FR adverse event Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: AdverseEvent - FR adverse event Document 

 
FRAdverseEventDocument permet de décrire un effet indésirable prévisible lié à un médicament 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-adverse-event-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html) 

** Résumé **

Obligatoire : 5 éléments(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 10 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)
* [MedicationAdministration - FR Medication Administration Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0)](StructureDefinition-fr-medication-administration-document.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AdverseEvent](http://hl7.org/fhir/R4/adverseevent.html) 

** Résumé **

Obligatoire : 5 éléments(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 10 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)
* [MedicationAdministration - FR Medication Administration Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0)](StructureDefinition-fr-medication-administration-document.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-adverse-event-document.csv), [Excel](../StructureDefinition-fr-adverse-event-document.xlsx), [Schematron](../StructureDefinition-fr-adverse-event-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-adverse-event-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-adverse-event-document",
  "version" : "0.1.0",
  "name" : "FRAdverseEventDocument",
  "title" : "AdverseEvent - FR adverse event Document",
  "status" : "draft",
  "date" : "2026-07-21T09:10:59+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRAdverseEventDocument permet de décrire un effet indésirable prévisible lié à un médicament",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AdverseEvent",
      "path" : "AdverseEvent"
    },
    {
      "id" : "AdverseEvent.category",
      "path" : "AdverseEvent.category",
      "short" : "Type d'effet indésirable",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis|20260619134042"
      }
    },
    {
      "id" : "AdverseEvent.date",
      "path" : "AdverseEvent.date",
      "short" : "Date de début de l'effet indésirable",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.detected",
      "path" : "AdverseEvent.detected",
      "short" : "Date de détection de l'effet indésirable",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.resultingCondition",
      "path" : "AdverseEvent.resultingCondition",
      "short" : "Réaction observée",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.severity",
      "path" : "AdverseEvent.severity",
      "short" : "Gravité de l'effet indésirable",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis|20260619134042"
      }
    },
    {
      "id" : "AdverseEvent.outcome",
      "path" : "AdverseEvent.outcome",
      "short" : "Évolution de l'effet indésirable",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis|20260619134042"
      }
    },
    {
      "id" : "AdverseEvent.suspectEntity",
      "path" : "AdverseEvent.suspectEntity",
      "short" : "Agent soupçonné d’être à l’origine de l’événement indésirable",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity.instance",
      "path" : "AdverseEvent.suspectEntity.instance",
      "short" : "Médicament, substance incriminée, posologie",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity.causality",
      "path" : "AdverseEvent.suspectEntity.causality",
      "short" : "Imputabilité",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity.causality.assessment",
      "path" : "AdverseEvent.suspectEntity.causality.assessment",
      "short" : "Niveau d'imputabilité",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis|20260619134042"
      }
    }]
  }
}

```
