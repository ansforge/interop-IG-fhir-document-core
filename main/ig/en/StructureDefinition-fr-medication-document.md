# Medication - FR Medication Document - FR Document Core (FHIR) v0.1.0

## Resource Profile: Medication - FR Medication Document 

 
FRMedicationDocument permet de décrire un médicament ou un vaccin. 

**Usages:**

* Refer to this Profile: [CarePlan - FR Care Plan Document](StructureDefinition-fr-care-plan-document.md), [MedicationAdministration - FR Medication Administration Document](StructureDefinition-fr-medication-administration-document.md), [MedicationDispense - FR Medication Dispense Document](StructureDefinition-fr-medication-dispense-document.md), [Medication - FR Medication Document](StructureDefinition-fr-medication-document.md)... Show 2 more, [MedicationRequest - FR Medication Request Document](StructureDefinition-fr-medication-request-document.md) and [MedicationStatement - FR Medication Statement Document](StructureDefinition-fr-medication-statement-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.document-core|current/StructureDefinition/StructureDefinition-fr-medication-document.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-medication-document.csv), [Excel](../StructureDefinition-fr-medication-document.xlsx), [Schematron](../StructureDefinition-fr-medication-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document",
  "version" : "0.1.0",
  "name" : "FRMedicationDocument",
  "title" : "Medication - FR Medication Document",
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
  "description" : "FRMedicationDocument permet de décrire un médicament ou un vaccin.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Medication.extension:productName",
      "path" : "Medication.extension",
      "sliceName" : "productName",
      "short" : "Nom de marque du produit.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname|1.0.0-comment-2"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.extension:classification",
      "path" : "Medication.extension",
      "sliceName" : "classification",
      "short" : "Classification ATC.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification|1.0.0-comment-2"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.extension:conditionnement",
      "path" : "Medication.extension",
      "sliceName" : "conditionnement",
      "short" : "Présentation / conditionnement.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic|1.0.0-comment-2"]
      }]
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Code du produit de santé",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding",
      "path" : "Medication.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-medication-translation-document|0.1.0"
      }
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-edqm-form-document|0.1.0"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
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
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemCodeableConcept",
      "short" : "Code SMS de la substance active",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/terminologie-sms?vs|20241114120000"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.text",
      "path" : "Medication.ingredient.item[x].text",
      "short" : "Nom de la substance",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemReference",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Quantité de substance présente dans le médicament",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength.numerator",
      "path" : "Medication.ingredient.strength.numerator",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength.denominator",
      "path" : "Medication.ingredient.strength.denominator",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.batch.lotNumber",
      "path" : "Medication.batch.lotNumber",
      "short" : "Numéro de lot",
      "mustSupport" : true
    },
    {
      "id" : "Medication.batch.expirationDate",
      "path" : "Medication.batch.expirationDate",
      "short" : "Date d'expiration du produit",
      "mustSupport" : true
    }]
  }
}

```
