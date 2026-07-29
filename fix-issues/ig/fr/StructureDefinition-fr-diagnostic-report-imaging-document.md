# DiagnosticReport - FR Diagnostic Report Imaging Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: DiagnosticReport - FR Diagnostic Report Imaging Document 

 
Le profil FRDiagnosticReportImagingDocument est dédié aux comptes rendus d’imagerie. Ce document représente le rapport d’un examen d’imagerie. Il constitue la ressource principale qui fait référence à l’ensemble des données produites lors de l’examen d’imagerie. 

**Utilisations:**

* Référence ce Profil: [Procedure - FR Procedure Document](StructureDefinition-fr-procedure-document.md) and [Procedure - FR Procedure Imaging Document](StructureDefinition-fr-procedure-imaging-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-diagnostic-report-imaging-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRDiagnosticReportDocument](StructureDefinition-fr-diagnostic-report-document.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRDiagnosticReportDocument](StructureDefinition-fr-diagnostic-report-document.md) 

** Résumé **

Must-Support : 4 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [ServiceRequest - FR Service Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0)](StructureDefinition-fr-service-request-document.md)
* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [FR Organization Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0)](StructureDefinition-fr-organization-document.md)
* [Observation - FR Observation Result Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-result-document|0.1.0)](StructureDefinition-fr-observation-result-document.md)
* [ImagingStudy - FR Imaging study Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document|0.1.0)](StructureDefinition-fr-imaging-study-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-comparison-studies-extension|0.1.0](StructureDefinition-fr-comparison-studies-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-history-extension|0.1.0](StructureDefinition-fr-patient-history-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-procedure-extension|0.1.0](StructureDefinition-fr-imaging-procedure-extension.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of DiagnosticReport.basedOn
* The element 1 is sliced based on the value of DiagnosticReport.performer
* The element 1 is sliced based on the value of DiagnosticReport.result

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRDiagnosticReportDocument](StructureDefinition-fr-diagnostic-report-document.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRDiagnosticReportDocument](StructureDefinition-fr-diagnostic-report-document.md) 

** Résumé **

Must-Support : 4 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [ServiceRequest - FR Service Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0)](StructureDefinition-fr-service-request-document.md)
* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [FR Organization Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0)](StructureDefinition-fr-organization-document.md)
* [Observation - FR Observation Result Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-result-document|0.1.0)](StructureDefinition-fr-observation-result-document.md)
* [ImagingStudy - FR Imaging study Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document|0.1.0)](StructureDefinition-fr-imaging-study-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-comparison-studies-extension|0.1.0](StructureDefinition-fr-comparison-studies-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-history-extension|0.1.0](StructureDefinition-fr-patient-history-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-procedure-extension|0.1.0](StructureDefinition-fr-imaging-procedure-extension.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of DiagnosticReport.basedOn
* The element 1 is sliced based on the value of DiagnosticReport.performer
* The element 1 is sliced based on the value of DiagnosticReport.result

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-diagnostic-report-imaging-document.csv), [Excel](../StructureDefinition-fr-diagnostic-report-imaging-document.xlsx), [Schematron](../StructureDefinition-fr-diagnostic-report-imaging-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-diagnostic-report-imaging-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document",
  "version" : "0.1.0",
  "name" : "FRDiagnosticReportImagingDocument",
  "title" : "DiagnosticReport - FR Diagnostic Report Imaging Document",
  "status" : "draft",
  "date" : "2026-07-29T14:35:25+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Le profil FRDiagnosticReportImagingDocument est dédié aux comptes rendus d’imagerie.\nCe document représente le rapport d’un examen d’imagerie. Il constitue la ressource principale qui fait référence à l’ensemble des données produites lors de l’examen d’imagerie.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-document|0.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.extension",
      "path" : "DiagnosticReport.extension",
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
      "id" : "DiagnosticReport.extension:comparaison",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "comparaison",
      "short" : "Comparaisons avec des résultats antérieurs",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-comparison-studies-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:historiqueMedical",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "historiqueMedical",
      "short" : "Historique médical du patient pertinent pour l'examen d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-history-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:procedure",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "procedure",
      "short" : "Technique d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-procedure-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "short" : "Identifiant du compte-rendu d'imagerie"
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn:serviceRequestAccessionNumber",
      "path" : "DiagnosticReport.basedOn",
      "sliceName" : "serviceRequestAccessionNumber",
      "short" : "Référence à la demande d'examen contenant l'Accession Number",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0"]
      }]
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "short" : "Statut du compte-rendu d'imagerie"
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18748-4",
          "display" : "Imagerie"
        }]
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Type de document d'imagerie",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis|20260619134041"
      }
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "short" : "Patient concerné par le compte-rendu d'imagerie",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0"]
      }]
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "DiagnosticReport.performer:organization",
      "path" : "DiagnosticReport.performer",
      "sliceName" : "organization",
      "short" : "Organization productrice du CR d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0"]
      }]
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter.extension:author",
      "path" : "DiagnosticReport.resultsInterpreter.extension",
      "sliceName" : "author",
      "short" : "Auteur du compte-rendu d'imagerie (Médecin - Radiologue)"
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "reference"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Résultats d'examen (actuels ou antérieurs)",
      "comment" : "Les résultats sont exprimés sous forme non codée dans notre cas d’usage. Le contenu narratif du résultat est porté dans une note"
    },
    {
      "id" : "DiagnosticReport.result:resultatActuel",
      "path" : "DiagnosticReport.result",
      "sliceName" : "resultatActuel",
      "short" : "Résultats actuels de l'examen d'imagerie",
      "comment" : "Si les résultats d'examen sont codés, ils sont référencés dans FRObservationResultDocument. Si les résultats d'examen sont exprimés sous forme non codée, ils sont portés dans une note de FRObservationResultDocument.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-result-document|0.1.0"]
      }]
    },
    {
      "id" : "DiagnosticReport.result:resultatAnterieur",
      "path" : "DiagnosticReport.result",
      "sliceName" : "resultatAnterieur",
      "short" : "Résultats antérieurs",
      "comment" : "Si les résultats d'examen sont codés, ils sont référencés dans FRObservationResultDocument. Si les résultats d'examen sont exprimés sous forme non codée, ils sont portés dans une note de FRObservationResultDocument.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-result-document|0.1.0"]
      }]
    },
    {
      "id" : "DiagnosticReport.imagingStudy",
      "path" : "DiagnosticReport.imagingStudy",
      "short" : "Acte d'imagerie associé au compte-rendu",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document|0.1.0"]
      }]
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "short" : "Conclusions cliniques et interprétations du rapport d’imagerie."
    }]
  }
}

```
