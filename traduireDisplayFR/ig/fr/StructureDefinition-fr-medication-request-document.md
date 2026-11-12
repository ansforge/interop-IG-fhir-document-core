# MedicationRequest - FR Medication Request Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: MedicationRequest - FR Medication Request Document 

 
FRMedicationRequestDocument permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration. 

**Utilisations:**

* Référence ce Profil: [CarePlan - FR Care Plan Document](StructureDefinition-fr-care-plan-document.md), [Immunization - FR Immunization Document](StructureDefinition-fr-immunization-document.md), [ImmunizationRecommendation - FR Immunization Recommendation Document](StructureDefinition-fr-immunization-recommendation-document.md), [MedicationAdministration - FR Medication Administration Document](StructureDefinition-fr-medication-administration-document.md)... Show 3 more, [MedicationDispense - FR Medication Dispense Document](StructureDefinition-fr-medication-dispense-document.md), [MedicationRequest - FR Medication Request Document](StructureDefinition-fr-medication-request-document.md) and [MedicationStatement - FR Medication Statement Document](StructureDefinition-fr-medication-statement-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-medication-request-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

** Résumé **

Obligatoire : 1 élément(7 éléments obligatoire(s) imbriqué(s))
 Must-Support : 34 éléments
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [Medication - FR Medication Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document|0.1.0)](StructureDefinition-fr-medication-document.md)
* [FR Patient Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0)](StructureDefinition-fr-patient-document.md)
* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [FR Encounter Care Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-care-document|0.1.0)](StructureDefinition-fr-encounter-care-document.md)
* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Practitioner Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document|0.1.0)](StructureDefinition-fr-practitioner-document.md)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)
* [Observation - FR Observation Prevention Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-prevention-document|0.1.0)](StructureDefinition-fr-observation-prevention-document.md)
* [Observation - FR Observation ALD Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-ald-document|0.1.0)](StructureDefinition-fr-observation-ald-document.md)
* [Observation - FR Observation Work Related Accident Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-work-related-accident-document|0.1.0)](StructureDefinition-fr-observation-work-related-accident-document.md)
* [MedicationRequest - FR Medication Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0)](StructureDefinition-fr-medication-request-document.md)
* [CarePlan - FR Care Plan Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-care-plan-document|0.1.0)](StructureDefinition-fr-care-plan-document.md)
* [ServiceRequest - FR Service Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0)](StructureDefinition-fr-service-request-document.md)
* [ImmunizationRecommendation - FR Immunization Recommendation Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-immunization-recommendation-document|0.1.0)](StructureDefinition-fr-immunization-recommendation-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-offLabel.html)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-not-covered-extension|0.1.0](StructureDefinition-fr-not-covered-extension.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.dispenseRequest.dispenserInstruction|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-MedicationRequest.dis.dispenserInstruction.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.timing.repeat.bounds[x]
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.doseAndRate.dose[x]
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.doseAndRate.rate[x]
* The element 1 is sliced based on the value of MedicationRequest.substitution.allowed[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

** Résumé **

Obligatoire : 1 élément(7 éléments obligatoire(s) imbriqué(s))
 Must-Support : 34 éléments
 Interdit : 1 élément

**Structures**

Cette structure fait référence à ces autres structures:

* [Medication - FR Medication Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document|0.1.0)](StructureDefinition-fr-medication-document.md)
* [FR Patient Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0)](StructureDefinition-fr-patient-document.md)
* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [FR Encounter Care Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-care-document|0.1.0)](StructureDefinition-fr-encounter-care-document.md)
* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Practitioner Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document|0.1.0)](StructureDefinition-fr-practitioner-document.md)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [Condition - FR Condition Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0)](StructureDefinition-fr-condition-document.md)
* [Observation - FR Observation Prevention Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-prevention-document|0.1.0)](StructureDefinition-fr-observation-prevention-document.md)
* [Observation - FR Observation ALD Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-ald-document|0.1.0)](StructureDefinition-fr-observation-ald-document.md)
* [Observation - FR Observation Work Related Accident Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-work-related-accident-document|0.1.0)](StructureDefinition-fr-observation-work-related-accident-document.md)
* [MedicationRequest - FR Medication Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0)](StructureDefinition-fr-medication-request-document.md)
* [CarePlan - FR Care Plan Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-care-plan-document|0.1.0)](StructureDefinition-fr-care-plan-document.md)
* [ServiceRequest - FR Service Request Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0)](StructureDefinition-fr-service-request-document.md)
* [ImmunizationRecommendation - FR Immunization Recommendation Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-immunization-recommendation-document|0.1.0)](StructureDefinition-fr-immunization-recommendation-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel|1.0.0-comment-2](https://profiles.ihe.net/PHARM/MPD/1.0.0-comment-2/StructureDefinition-ihe-ext-offLabel.html)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-not-covered-extension|0.1.0](StructureDefinition-fr-not-covered-extension.md)
* [http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.dispenseRequest.dispenserInstruction|0.1.0](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-ext-R5-MedicationRequest.dis.dispenserInstruction.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.timing.repeat.bounds[x]
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.doseAndRate.dose[x]
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.doseAndRate.rate[x]
* The element 1 is sliced based on the value of MedicationRequest.substitution.allowed[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-medication-request-document.csv), [Excel](../StructureDefinition-fr-medication-request-document.xlsx), [Schematron](../StructureDefinition-fr-medication-request-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-medication-request-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document",
  "version" : "0.1.0",
  "name" : "FRMedicationRequestDocument",
  "title" : "MedicationRequest - FR Medication Request Document",
  "status" : "draft",
  "date" : "2026-09-03T15:18:58+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRMedicationRequestDocument permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration.",
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.extension",
      "path" : "MedicationRequest.extension",
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
      "id" : "MedicationRequest.extension:horsAMM",
      "path" : "MedicationRequest.extension",
      "sliceName" : "horsAMM",
      "short" : "Hors Autorisation de mise sur le marché",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel|1.0.0-comment-2"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.extension:notCovered",
      "path" : "MedicationRequest.extension",
      "sliceName" : "notCovered",
      "short" : "Traitement non remboursable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-not-covered-extension|0.1.0"]
      }]
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "short" : "Identifiant prescription"
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Statut",
      "patternCode" : "completed",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "patternCode" : "order"
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "short" : "Produit de santé",
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
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0"]
      }]
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-care-document|0.1.0"]
      }]
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "Prescripteur",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "short" : "Motif du traitement",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-prevention-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-ald-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-work-related-accident-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.instantiatesUri",
      "path" : "MedicationRequest.instantiatesUri",
      "short" : "Référence de la prescription"
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "Référence à un item du plan de traitement. Une copie du plan de traitement médicamenteux.",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-care-plan-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-immunization-recommendation-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.sequence",
      "path" : "MedicationRequest.dosageInstruction.sequence",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.additionalInstruction",
      "path" : "MedicationRequest.dosageInstruction.additionalInstruction",
      "short" : "Informations supplémentaires utilisables pour instructions au Patien ou pércondition préalables à l'utilisation du médicament"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing",
      "path" : "MedicationRequest.dosageInstruction.timing",
      "short" : "Durée du traitement et fréquence d'administration.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
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
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
      "sliceName" : "boundsPeriod",
      "short" : "Durée du traitement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod.start",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].start",
      "short" : "Date de début du traitement"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod.end",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].end",
      "short" : "Date de fin du traitement"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.period",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.period",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.when",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.when",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.offset",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.offset",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "path" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site",
      "path" : "MedicationRequest.dosageInstruction.site",
      "short" : "Région anatomique d'administration",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis|20260716085851"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route",
      "path" : "MedicationRequest.dosageInstruction.route",
      "short" : "Voie d'administration",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-edqm-document|0.1.0"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
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
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "sliceName" : "doseRange",
      "short" : "Dose à administrer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].low",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].high",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
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
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "sliceName" : "rateRange",
      "short" : "Rythme d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.low",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].low",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.high",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].high",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod",
      "short" : "Dose maximale",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension",
      "path" : "MedicationRequest.dispenseRequest.extension",
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
      "id" : "MedicationRequest.dispenseRequest.extension:dispenserInstructionR5",
      "path" : "MedicationRequest.dispenseRequest.extension",
      "sliceName" : "dispenserInstructionR5",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.dispenseRequest.dispenserInstruction|0.1.0"]
      }]
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension:dispenserInstructionR5.extension",
      "path" : "MedicationRequest.dispenseRequest.extension.extension",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension:dispenserInstructionR5.value[x]",
      "path" : "MedicationRequest.dispenseRequest.extension.value[x]",
      "short" : "instructions au dispensateur",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod",
      "short" : "Période de validité",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "short" : "Nombre de renouvellement(s) possible(s)",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity",
      "path" : "MedicationRequest.dispenseRequest.quantity",
      "short" : "Quantité à dispenser",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "short" : "Autorisation de substitution",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution.allowed[x]",
      "path" : "MedicationRequest.substitution.allowed[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution.allowed[x]:allowedCodeableConcept",
      "path" : "MedicationRequest.substitution.allowed[x]",
      "sliceName" : "allowedCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis|20260716085852"
      }
    },
    {
      "id" : "MedicationRequest.substitution.reason",
      "path" : "MedicationRequest.substitution.reason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution.reason.text",
      "path" : "MedicationRequest.substitution.reason.text",
      "short" : "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle)."
    }]
  }
}

```
