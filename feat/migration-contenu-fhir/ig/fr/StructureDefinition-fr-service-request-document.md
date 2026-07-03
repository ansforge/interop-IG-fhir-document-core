# ServiceRequest - FR Service Request Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: ServiceRequest - FR Service Request Document 

 
FRServiceRequestDocument profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins. 

**Utilisations:**

* Référence ce Profil: [DiagnosticReport - FR Diagnostic Report Imaging Document](StructureDefinition-fr-diagnostic-report-imaging-document.md), [ImagingStudy - FR Imaging study Document](StructureDefinition-fr-imaging-study-document.md), [Observation - FR Observation Radiation Exposure Document](StructureDefinition-fr-observation-radiation-exposure-document.md), [Observation - FR Observation Result Document](StructureDefinition-fr-observation-result-document.md) and [Procedure - FR Procedure Imaging Document](StructureDefinition-fr-procedure-imaging-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-service-request-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Bindings terminologiques (différentiel)

#### Contraintes

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Résumé **

Obligatoire : 5 éléments
 Must-Support : 10 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Accession Number Identifier Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-accession-number-identifier-document|0.1.0)](StructureDefinition-fr-accession-number-identifier-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-interpretation-extension|0.1.0](StructureDefinition-fr-interpretation-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-method-extension|0.1.0](StructureDefinition-fr-method-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of ServiceRequest.identifier
* The element 1 is sliced based on the value of ServiceRequest.note

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Bindings terminologiques (différentiel)

#### Contraintes

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Résumé **

Obligatoire : 5 éléments
 Must-Support : 10 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Accession Number Identifier Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-accession-number-identifier-document|0.1.0)](StructureDefinition-fr-accession-number-identifier-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-interpretation-extension|0.1.0](StructureDefinition-fr-interpretation-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-method-extension|0.1.0](StructureDefinition-fr-method-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of ServiceRequest.identifier
* The element 1 is sliced based on the value of ServiceRequest.note

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-service-request-document.csv), [Excel](../StructureDefinition-fr-service-request-document.xlsx), [Schematron](../StructureDefinition-fr-service-request-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-service-request-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document",
  "version" : "0.1.0",
  "name" : "FRServiceRequestDocument",
  "title" : "ServiceRequest - FR Service Request Document",
  "status" : "draft",
  "date" : "2026-07-03T07:33:59+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRServiceRequestDocument profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest",
      "constraint" : [{
        "key" : "fr-invariant-intent",
        "severity" : "error",
        "human" : "L'intention doit être order, plan ou proposal.",
        "expression" : "intent = 'order' or intent = 'plan' or intent = 'proposal'",
        "source" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0"
      }]
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
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
      "id" : "ServiceRequest.extension:interpretation",
      "path" : "ServiceRequest.extension",
      "sliceName" : "interpretation",
      "short" : "Interprétation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-interpretation-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:method",
      "path" : "ServiceRequest.extension",
      "sliceName" : "method",
      "short" : "Méthode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-method-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:author",
      "path" : "ServiceRequest.extension",
      "sliceName" : "author",
      "short" : "Auteur de la demande",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.extension:author.extension:type",
      "path" : "ServiceRequest.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "ServiceRequest.extension:author.extension:type.value[x]",
      "path" : "ServiceRequest.extension.extension.value[x]",
      "patternCode" : "AUT"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.identifier:accessionNumber",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "accessionNumber",
      "short" : "Accession Number de la demande d’examen d’imagerie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-accession-number-identifier-document|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "short" : "Intention de la demande : order, plan ou proposal",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "short" : "Catégorie de la demande",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "Type de la demande : Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20 'Autre demande d’examen ou de suivi'",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.orderDetail.coding",
      "path" : "ServiceRequest.orderDetail.coding",
      "short" : "Résultat de la demande"
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "short" : "Date prévisionnelle de l'examen, du suivi, de l'objectif",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "short" : "Prescripteur",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.bodySite",
      "path" : "ServiceRequest.bodySite",
      "short" : "Cible",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site|4.0.1"
      }
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "text"
        }],
        "rules" : "open"
      },
      "short" : "Justification de la demande d’examen / Finalité de l'examen",
      "min" : 2
    },
    {
      "id" : "ServiceRequest.note:finaliteExamen",
      "path" : "ServiceRequest.note",
      "sliceName" : "finaliteExamen",
      "short" : "Finalité de l’examen demandé",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note:finaliteExamen.text",
      "path" : "ServiceRequest.note.text",
      "short" : "Finalité de l’examen"
    },
    {
      "id" : "ServiceRequest.note:justificationDemande",
      "path" : "ServiceRequest.note",
      "sliceName" : "justificationDemande",
      "short" : "Justification de la demande d’examen",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.note:justificationDemande.text",
      "path" : "ServiceRequest.note.text",
      "short" : "Justification de la demande d'examen"
    }]
  }
}

```
