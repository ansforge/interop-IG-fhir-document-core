# ServiceRequest - FR Service Request Imaging Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: ServiceRequest - FR Service Request Imaging Document 

 
FRServiceRequestImagingDocument profil spécifique permet de porter des demandes d'examens d'imagerie. 

**Utilisations:**

* Référence ce Profil: [DiagnosticReport - FR Diagnostic Report Imaging Document](StructureDefinition-fr-diagnostic-report-imaging-document.md), [ImagingStudy - FR Imaging study Document](StructureDefinition-fr-imaging-study-document.md), [Observation - FR Observation Radiation Exposure Document](StructureDefinition-fr-observation-radiation-exposure-document.md) and [Procedure - FR Procedure Imaging Document](StructureDefinition-fr-procedure-imaging-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-service-request-imaging-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRServiceRequestDocument](StructureDefinition-fr-service-request-document.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRServiceRequestDocument](StructureDefinition-fr-service-request-document.md) 

** Résumé **

Obligatoire : 4 éléments(3 éléments obligatoire(s) imbriqué(s))
 Must-Support : 6 éléments
 Interdit : 2 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.reason|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-ServiceRequest.reason.html)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRServiceRequestDocument](StructureDefinition-fr-service-request-document.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRServiceRequestDocument](StructureDefinition-fr-service-request-document.md) 

** Résumé **

Obligatoire : 4 éléments(3 éléments obligatoire(s) imbriqué(s))
 Must-Support : 6 éléments
 Interdit : 2 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.reason|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-ServiceRequest.reason.html)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-service-request-imaging-document.csv), [Excel](../StructureDefinition-fr-service-request-imaging-document.xlsx), [Schematron](../StructureDefinition-fr-service-request-imaging-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-service-request-imaging-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-imaging-document",
  "version" : "0.1.0",
  "name" : "FRServiceRequestImagingDocument",
  "title" : "ServiceRequest - FR Service Request Imaging Document",
  "status" : "draft",
  "date" : "2026-08-07T12:53:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRServiceRequestImagingDocument profil spécifique permet de porter des demandes d'examens d'imagerie.",
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
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.extension:reason",
      "path" : "ServiceRequest.extension",
      "sliceName" : "reason",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.reason|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.extension:reason/finaliteExamen",
      "path" : "ServiceRequest.extension",
      "sliceName" : "reason/finaliteExamen",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:reason/finaliteExamen.extension",
      "path" : "ServiceRequest.extension.extension",
      "min" : 2
    },
    {
      "id" : "ServiceRequest.extension:reason/finaliteExamen.extension:concept",
      "path" : "ServiceRequest.extension.extension",
      "sliceName" : "concept",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:reason/finaliteExamen.extension:concept.extension",
      "path" : "ServiceRequest.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:reason/finaliteExamen.extension:concept.value[x]",
      "path" : "ServiceRequest.extension.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/document-core/CodeSystem/fr-cs-note-type",
          "code" : "finaliteExamen",
          "display" : "Finalité de l'examen"
        }]
      }
    },
    {
      "id" : "ServiceRequest.extension:reason/finaliteExamen.extension:concept.value[x].text",
      "path" : "ServiceRequest.extension.extension.value[x].text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:reason/justificationDemande",
      "path" : "ServiceRequest.extension",
      "sliceName" : "reason/justificationDemande",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:reason/justificationDemande.extension",
      "path" : "ServiceRequest.extension.extension",
      "min" : 2
    },
    {
      "id" : "ServiceRequest.extension:reason/justificationDemande.extension:concept",
      "path" : "ServiceRequest.extension.extension",
      "sliceName" : "concept",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.extension:reason/justificationDemande.extension:concept.extension",
      "path" : "ServiceRequest.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.extension:reason/justificationDemande.extension:concept.value[x]",
      "path" : "ServiceRequest.extension.extension.value[x]",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://interop.esante.gouv.fr/ig/fhir/document-core/CodeSystem/fr-cs-note-type",
          "code" : "justificationDemande",
          "display" : "Justification de la demande"
        }]
      }
    },
    {
      "id" : "ServiceRequest.extension:reason/justificationDemande.extension:concept.value[x].text",
      "path" : "ServiceRequest.extension.extension.value[x].text",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
