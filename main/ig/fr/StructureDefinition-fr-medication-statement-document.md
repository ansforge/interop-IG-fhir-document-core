# MedicationStatement - FR Medication Statement Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: MedicationStatement - FR Medication Statement Document 

 
* FRMedicationStatementDocument permet de décrire les modalités d'administration d'un médicament au patient.
* Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
* Si le traitement a déjà été administré ou si information rapporté par le patient ou si aucun traitement.
 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-medication-statement-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

** Résumé **

Must-Support : 18 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [MedicationRequest - FR Medication Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0)](StructureDefinition-fr-medication-request-document.md)
* [MedicationAdministration - FR Medication Administration Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0)](StructureDefinition-fr-medication-administration-document.md)
* [Medication - FR Medication Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document|0.1.0)](StructureDefinition-fr-medication-document.md)
* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.dose[x]
* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.rate[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) 

** Résumé **

Must-Support : 18 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [MedicationRequest - FR Medication Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0)](StructureDefinition-fr-medication-request-document.md)
* [MedicationAdministration - FR Medication Administration Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0)](StructureDefinition-fr-medication-administration-document.md)
* [Medication - FR Medication Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document|0.1.0)](StructureDefinition-fr-medication-document.md)
* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.dose[x]
* The element 1 is sliced based on the value of MedicationStatement.dosage.doseAndRate.rate[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-medication-statement-document.csv), [Excel](../StructureDefinition-fr-medication-statement-document.xlsx), [Schematron](../StructureDefinition-fr-medication-statement-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-statement-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-statement-document",
  "version" : "0.1.0",
  "name" : "FRMedicationStatementDocument",
  "title" : "MedicationStatement - FR Medication Statement Document",
  "status" : "draft",
  "date" : "2026-07-20T14:08:41+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "\n - FRMedicationStatementDocument permet de décrire les modalités d'administration d'un médicament au patient.\n - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.\n - Si le traitement a déjà été administré ou si information rapporté par le patient ou si aucun traitement.",
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
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.identifier",
      "path" : "MedicationStatement.identifier",
      "short" : "Identifiant. L'entrée Traitement doit être identifiée de manière unique."
    },
    {
      "id" : "MedicationStatement.basedOn",
      "path" : "MedicationStatement.basedOn",
      "short" : "Prescription",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0"]
      }]
    },
    {
      "id" : "MedicationStatement.partOf",
      "path" : "MedicationStatement.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0"]
      }]
    },
    {
      "id" : "MedicationStatement.status",
      "path" : "MedicationStatement.status",
      "short" : "Statut",
      "patternCode" : "completed",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.category",
      "path" : "MedicationStatement.category",
      "short" : "Acte ou situation",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.effective[x]",
      "path" : "MedicationStatement.effective[x]",
      "short" : "Durée du traitement",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.reasonReference",
      "path" : "MedicationStatement.reasonReference",
      "short" : "Motif du traitement",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0",
        "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.note",
      "path" : "MedicationStatement.note",
      "short" : "Permet de décrire les conditions préalables à l'utilisation du médicament.",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage",
      "path" : "MedicationStatement.dosage",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.sequence",
      "path" : "MedicationStatement.dosage.sequence",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.additionalInstruction",
      "path" : "MedicationStatement.dosage.additionalInstruction",
      "short" : "Instructions au patient",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.additionalInstruction.text",
      "path" : "MedicationStatement.dosage.additionalInstruction.text",
      "short" : "Instruction au patient",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.timing",
      "path" : "MedicationStatement.dosage.timing",
      "short" : "Fréquence d'administration",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.asNeeded[x]",
      "path" : "MedicationStatement.dosage.asNeeded[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.site",
      "path" : "MedicationStatement.dosage.site",
      "short" : "Région anatomique d'administration",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis|20260619134041"
      }
    },
    {
      "id" : "MedicationStatement.dosage.route",
      "path" : "MedicationStatement.dosage.route",
      "short" : "Voie d'administration",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "description" : "EDQM - Standard terms / classe ROA (0.4.0.127.0.16.1.1.2.1)",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-edqm-document|0.1.0"
      }
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate",
      "path" : "MedicationStatement.dosage.doseAndRate",
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity",
      "path" : "MedicationStatement.dosage.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "short" : "Dose déclarée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity",
      "path" : "MedicationStatement.dosage.doseAndRate.rate[x]",
      "sliceName" : "rateQuantity",
      "short" : "rythme d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.dosage.maxDosePerPeriod",
      "path" : "MedicationStatement.dosage.maxDosePerPeriod",
      "short" : "dose maximale",
      "mustSupport" : true
    }]
  }
}

```
