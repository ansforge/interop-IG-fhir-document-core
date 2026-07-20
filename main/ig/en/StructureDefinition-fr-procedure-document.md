# Procedure - FR Procedure Document - FR Document Core (FHIR) v0.1.0

## Resource Profile: Procedure - FR Procedure Document 

 
FRProcedureDocument est un profil utilisé pour décrire un acte planifié ou réalisé. 

**Usages:**

* Derived from this Profile: [Procedure - FR Procedure Imaging Document](StructureDefinition-fr-procedure-imaging-document.md)
* Refer to this Profile: [Procedure - FR Procedure Document](StructureDefinition-fr-procedure-document.md)
* Examples for this Profile: [Procedure/example-procedure-data-absent-reason](Procedure-example-procedure-data-absent-reason.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.document-core|current/StructureDefinition/StructureDefinition-fr-procedure-document.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-procedure-document.csv), [Excel](../StructureDefinition-fr-procedure-document.xlsx), [Schematron](../StructureDefinition-fr-procedure-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-procedure-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-procedure-document",
  "version" : "0.1.0",
  "name" : "FRProcedureDocument",
  "title" : "Procedure - FR Procedure Document",
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
  "description" : "FRProcedureDocument est un profil utilisé pour décrire un acte planifié ou réalisé.",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
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
      "id" : "Procedure.extension:priority",
      "path" : "Procedure.extension",
      "sliceName" : "priority",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-procedure-priority-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:approachBodySite",
      "path" : "Procedure.extension",
      "sliceName" : "approachBodySite",
      "short" : "Voie d'abord",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure|5.3.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:approachBodySite.value[x]",
      "path" : "Procedure.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-body-structure-document|0.1.0"]
      }]
    },
    {
      "id" : "Procedure.extension:participant",
      "path" : "Procedure.extension",
      "sliceName" : "participant",
      "short" : "Participant à l'acte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:participant.extension:type",
      "path" : "Procedure.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "Procedure.extension:participant.extension:type.value[x]",
      "path" : "Procedure.extension.extension.value[x]",
      "patternCode" : "PART"
    },
    {
      "id" : "Procedure.extension:participant.extension:actor",
      "path" : "Procedure.extension.extension",
      "sliceName" : "actor"
    },
    {
      "id" : "Procedure.extension:participant.extension:actor.value[x]",
      "path" : "Procedure.extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0"]
      }]
    },
    {
      "id" : "Procedure.extension:difficulte",
      "path" : "Procedure.extension",
      "sliceName" : "difficulte",
      "short" : "Difficulté de l'acte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-procedure-difficulty-extension|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "short" : "Identifiant"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "short" : "Événement associé : score (Cormack ou ASA), administration de médicament ou procédure associée à l’acte (ex. produit administré lors d’un acte d’imagerie).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-procedure-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "short" : "Statut de l'acte",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Code d'acte",
      "comment" : "Aussi utilisé pour indiquer qu'il n'y a pas d'acte ou qu'on ne sait pas s'il y en a.\nSi l'acte n'est pas trouvé dans CCAM, utiliser le code NCIT 'C25218' (Intervention)\net décrire l'acte en texte libre dans la partie narrative.\nPour les actes chirurgicaux inconnus, utiliser jdv-absent-or-unknown-procedure-cisis.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-procedure-code|0.1.0"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "short" : "Patient concerné",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "short" : "Rencontre associée à l'acte",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "short" : "Date de l'acte",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "short" : "Auteur",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "short" : "Informateur",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-related-person-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-document|0.1.0"]
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "short" : "Performer",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0",
        "http://hl7.org/fhir/StructureDefinition/Device|4.0.1"]
      }]
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "short" : "Motif de l'acte / Justification de la réalisation de l'acte",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-bio-chapter-document|0.1.0"]
      }]
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "short" : "Localisation anatomique",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site|4.0.1"
      }
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "short" : "Réference à un DM",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device|4.0.1"]
      }],
      "mustSupport" : true
    }]
  }
}

```
