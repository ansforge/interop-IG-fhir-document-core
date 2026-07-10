# MedicationDispense - FR Medication Dispense Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: MedicationDispense - FR Medication Dispense Document 

 
FRMedicationDispenseDocument permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-medication-dispense-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 10 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [Medication - FR Medication Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document|0.1.0)](StructureDefinition-fr-medication-document.md)
* [MedicationAdministration - FR Medication Administration Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0)](StructureDefinition-fr-medication-administration-document.md)
* [MedicationRequest - FR Medication Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0)](StructureDefinition-fr-medication-request-document.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 10 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [Medication - FR Medication Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document|0.1.0)](StructureDefinition-fr-medication-document.md)
* [MedicationAdministration - FR Medication Administration Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0)](StructureDefinition-fr-medication-administration-document.md)
* [MedicationRequest - FR Medication Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0)](StructureDefinition-fr-medication-request-document.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-medication-dispense-document.csv), [Excel](../StructureDefinition-fr-medication-dispense-document.xlsx), [Schematron](../StructureDefinition-fr-medication-dispense-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-dispense-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-dispense-document",
  "version" : "0.1.0",
  "name" : "FRMedicationDispenseDocument",
  "title" : "MedicationDispense - FR Medication Dispense Document",
  "status" : "draft",
  "date" : "2026-07-10T12:36:28+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRMedicationDispenseDocument permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription.",
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
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense"
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "short" : "Identifiant"
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "short" : "Médicament délivré",
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
      "id" : "MedicationDispense.supportingInformation",
      "path" : "MedicationDispense.supportingInformation",
      "short" : "Posologie",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "short" : "Référence de la prescription",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "short" : "Complétude de la dispensation",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type.coding",
      "path" : "MedicationDispense.type.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis|20260619134041"
      }
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "short" : "Quantité : Unité issue de EDQM Packaging / classe CON (Récipient)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.quantity.unit",
      "path" : "MedicationDispense.quantity.unit",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-edqm-document|0.1.0"
      }
    },
    {
      "id" : "MedicationDispense.dosageInstruction.text",
      "path" : "MedicationDispense.dosageInstruction.text",
      "short" : "Instructions au dispensateur",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction.additionalInstruction",
      "path" : "MedicationDispense.dosageInstruction.additionalInstruction",
      "short" : "Instruction au patient sous forme codée",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.dosageInstruction.patientInstruction",
      "path" : "MedicationDispense.dosageInstruction.patientInstruction",
      "short" : "Instructions au patient",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution",
      "path" : "MedicationDispense.substitution",
      "short" : "Acte de substitution",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.type",
      "path" : "MedicationDispense.substitution.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "code" : "G",
          "display" : "Substitution autorisée par un produit générique"
        }]
      },
      "mustSupport" : true
    }]
  }
}

```
