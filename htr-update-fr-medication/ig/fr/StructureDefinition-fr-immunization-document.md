# Immunization - FR Immunization Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: Immunization - FR Immunization Document 

 
FRImmunizationDocument permet de décrire l'administration d'un vaccin. 
* Il permet également de décrire pourquoi un vaccin n'a pas été réalisé.
 

**Utilisations:**

* Référence ce Profil: [ImmunizationRecommendation - FR Immunization Recommendation Document](StructureDefinition-fr-immunization-recommendation-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-immunization-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Immunization](http://hl7.org/fhir/R4/immunization.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Immunization](http://hl7.org/fhir/R4/immunization.html) 

** Résumé **

Obligatoire : 4 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 12 éléments
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [FR Device Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-device-auteur-document|0.1.0)](StructureDefinition-fr-device-auteur-document.md)
* [FR Patient Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0)](StructureDefinition-fr-patient-document.md)
* [MedicationRequest - FR Medication Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0)](StructureDefinition-fr-medication-request-document.md)
* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.basedOn|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Immunization.basedOn.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Immunization.vaccineCode.coding
* The element 1 is sliced based on the value of Immunization.protocolApplied.doseNumber[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Immunization](http://hl7.org/fhir/R4/immunization.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Immunization](http://hl7.org/fhir/R4/immunization.html) 

** Résumé **

Obligatoire : 4 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 12 éléments
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [FR Device Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-device-auteur-document|0.1.0)](StructureDefinition-fr-device-auteur-document.md)
* [FR Patient Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0)](StructureDefinition-fr-patient-document.md)
* [MedicationRequest - FR Medication Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0)](StructureDefinition-fr-medication-request-document.md)
* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.basedOn|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-Immunization.basedOn.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Immunization.vaccineCode.coding
* The element 1 is sliced based on the value of Immunization.protocolApplied.doseNumber[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-immunization-document.csv), [Excel](../StructureDefinition-fr-immunization-document.xlsx), [Schematron](../StructureDefinition-fr-immunization-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-immunization-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-immunization-document",
  "version" : "0.1.0",
  "name" : "FRImmunizationDocument",
  "title" : "Immunization - FR Immunization Document",
  "status" : "draft",
  "date" : "2026-09-04T09:33:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRImmunizationDocument permet de décrire l'administration d'un vaccin. \n - Il permet également de décrire pourquoi un vaccin n'a pas été réalisé.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.extension",
      "path" : "Immunization.extension",
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
      "id" : "Immunization.extension:author",
      "path" : "Immunization.extension",
      "sliceName" : "author",
      "short" : "Auteur de la vaccination (personne ayant validé médicalement que la vaccination a été réalisée)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }]
    },
    {
      "id" : "Immunization.extension:author.extension:type",
      "path" : "Immunization.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "Immunization.extension:author.extension:type.value[x]",
      "path" : "Immunization.extension.extension.value[x]",
      "patternCode" : "AUT"
    },
    {
      "id" : "Immunization.extension:author.extension:actor",
      "path" : "Immunization.extension.extension",
      "sliceName" : "actor"
    },
    {
      "id" : "Immunization.extension:author.extension:actor.value[x]",
      "path" : "Immunization.extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-device-auteur-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0"]
      }]
    },
    {
      "id" : "Immunization.extension:basedOnRequestR5",
      "path" : "Immunization.extension",
      "sliceName" : "basedOnRequestR5",
      "short" : "Prescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.basedOn|0.1.0"]
      }]
    },
    {
      "id" : "Immunization.extension:basedOnRequestR5.extension",
      "path" : "Immunization.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Immunization.extension:basedOnRequestR5.value[x]",
      "path" : "Immunization.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0"]
      }]
    },
    {
      "id" : "Immunization.identifier",
      "path" : "Immunization.identifier",
      "short" : "Identifiant"
    },
    {
      "id" : "Immunization.status",
      "path" : "Immunization.status",
      "patternCode" : "completed",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "short" : "Vaccin. Code du produit de santé",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode.coding",
      "path" : "Immunization.vaccineCode.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slice CIS et autres codifications",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Immunization.vaccineCode.coding:cis",
      "path" : "Immunization.vaccineCode.coding",
      "sliceName" : "cis",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-vaccine-code-cis|0.1.0"
      }
    },
    {
      "id" : "Immunization.vaccineCode.coding:translation",
      "path" : "Immunization.vaccineCode.coding",
      "sliceName" : "translation",
      "min" : 0,
      "max" : "*",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-medication-translation-document|0.1.0"
      }
    },
    {
      "id" : "Immunization.vaccineCode.coding:translation.system",
      "path" : "Immunization.vaccineCode.coding.system",
      "min" : 1
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "short" : "Date de la vaccination",
      "definition" : "Si la date de la vaccination est inconnue, utiliser l’extension data-absent-reason précisant pourquoi elle n’est pas connue.",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.lotNumber",
      "path" : "Immunization.lotNumber",
      "short" : "Numéro de lot.",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.expirationDate",
      "path" : "Immunization.expirationDate",
      "short" : "Date d'expiration du produit",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.site",
      "path" : "Immunization.site",
      "short" : "Région anatomique d'administration",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-approach-site-code-cisis|20260716085851"
      }
    },
    {
      "id" : "Immunization.route",
      "path" : "Immunization.route",
      "short" : "Voie d'administration",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-immunization-route-code-cisis|20260716085852"
      }
    },
    {
      "id" : "Immunization.doseQuantity",
      "path" : "Immunization.doseQuantity",
      "short" : "Dose administrée",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.performer",
      "path" : "Immunization.performer",
      "short" : "Exécutant"
    },
    {
      "id" : "Immunization.performer.function",
      "path" : "Immunization.performer.function",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
          "code" : "AP"
        }]
      }
    },
    {
      "id" : "Immunization.performer.actor",
      "path" : "Immunization.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0"]
      }]
    },
    {
      "id" : "Immunization.note",
      "path" : "Immunization.note",
      "short" : "Commentaire",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.reasonReference",
      "path" : "Immunization.reasonReference",
      "short" : "Réaction observée suite au vaccin",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied",
      "path" : "Immunization.protocolApplied",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied.series",
      "path" : "Immunization.protocolApplied.series",
      "short" : "BOOSTER / IMMUNIZ / INITIMMUNIZ",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdministrationImmunizationCode-cisis|20260716085853"
      }
    },
    {
      "id" : "Immunization.protocolApplied.doseNumber[x]",
      "path" : "Immunization.protocolApplied.doseNumber[x]",
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
      "id" : "Immunization.protocolApplied.doseNumber[x]:doseNumberPositiveInt",
      "path" : "Immunization.protocolApplied.doseNumber[x]",
      "sliceName" : "doseNumberPositiveInt",
      "short" : "Rang de la vaccination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }],
      "mustSupport" : true
    }]
  }
}

```
