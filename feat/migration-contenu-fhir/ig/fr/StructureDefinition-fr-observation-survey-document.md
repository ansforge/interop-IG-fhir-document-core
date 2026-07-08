# Observation - FR Observation Survey Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: Observation - FR Observation Survey Document 

 
FRObservationSurveyDocument permet de rapporter un résultat (score) répondant à une question faisant partie d'une évaluation (questionnaire d'enquête par exemple). 

**Utilisations:**

* Référence ce Profil: [Observation - FR Observation Survey Pannel Document](StructureDefinition-fr-observation-survey-pannel-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-observation-survey-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

** Résumé **

Obligatoire : 3 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 14 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Organization Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0)](StructureDefinition-fr-organization-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-status-reason-extension|0.1.0](StructureDefinition-fr-status-reason-extension.md)
* [http://hl7.org/fhir/StructureDefinition/note|5.3.0](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-note.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.component

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Observation](http://hl7.org/fhir/R4/observation.html) 

** Résumé **

Obligatoire : 3 éléments(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 14 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Organization Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0)](StructureDefinition-fr-organization-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)
* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-status-reason-extension|0.1.0](StructureDefinition-fr-status-reason-extension.md)
* [http://hl7.org/fhir/StructureDefinition/note|5.3.0](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-note.html)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Observation.component

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-observation-survey-document.csv), [Excel](../StructureDefinition-fr-observation-survey-document.xlsx), [Schematron](../StructureDefinition-fr-observation-survey-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-observation-survey-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-survey-document",
  "version" : "0.1.0",
  "name" : "FRObservationSurveyDocument",
  "title" : "Observation - FR Observation Survey Document",
  "status" : "draft",
  "date" : "2026-07-08T10:07:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRObservationSurveyDocument permet de rapporter un résultat (score) répondant à une question faisant partie d'une évaluation (questionnaire d'enquête par exemple).",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
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
      "id" : "Observation.extension:author",
      "path" : "Observation.extension",
      "sliceName" : "author",
      "short" : "Auteur de l'évaluation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }]
    },
    {
      "id" : "Observation.extension:author.extension:type",
      "path" : "Observation.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "Observation.extension:author.extension:type.value[x]",
      "path" : "Observation.extension.extension.value[x]",
      "patternCode" : "AUT"
    },
    {
      "id" : "Observation.extension:author.extension:actor",
      "path" : "Observation.extension.extension",
      "sliceName" : "actor"
    },
    {
      "id" : "Observation.extension:author.extension:actor.value[x]",
      "path" : "Observation.extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0"]
      }]
    },
    {
      "id" : "Observation.extension:participant",
      "path" : "Observation.extension",
      "sliceName" : "participant",
      "short" : "Responsable de l'évaluation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0"]
      }]
    },
    {
      "id" : "Observation.extension:participant.extension:type",
      "path" : "Observation.extension.extension",
      "sliceName" : "type"
    },
    {
      "id" : "Observation.extension:participant.extension:type.value[x]",
      "path" : "Observation.extension.extension.value[x]",
      "patternCode" : "PART"
    },
    {
      "id" : "Observation.extension:participant.extension:typeCode",
      "path" : "Observation.extension.extension",
      "sliceName" : "typeCode"
    },
    {
      "id" : "Observation.extension:participant.extension:typeCode.value[x].coding.code",
      "path" : "Observation.extension.extension.value[x].coding.code",
      "patternCode" : "RESP"
    },
    {
      "id" : "Observation.extension:participant.extension:actor",
      "path" : "Observation.extension.extension",
      "sliceName" : "actor"
    },
    {
      "id" : "Observation.extension:participant.extension:actor.value[x]",
      "path" : "Observation.extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0"]
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Statut métier de l’évaluation"
    },
    {
      "id" : "Observation.status.extension",
      "path" : "Observation.status.extension",
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
      "id" : "Observation.status.extension:statusReason",
      "path" : "Observation.status.extension",
      "sliceName" : "statusReason",
      "short" : "Motif du statut métier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-status-reason-extension|0.1.0"]
      }]
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "short" : "Catégorie",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey",
          "display" : "Survey"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.category.coding",
      "path" : "Observation.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Type d'évaluation",
      "comment" : "Si aucun code approprié n’est trouvé dans les systèmes proposés,\nutiliser le code LOINC '54522-8' (Statut fonctionnel),\net préciser le type d’évaluation exact dans un texte libre.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-evaluation-type|0.1.0"
      }
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Evaluateur",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Valeur de l'évaluation",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "short" : "Interprétation",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Commentaires (Annotations)"
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Référence interne",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "extension('http://.../StructureDefinition/evaluation-type')"
        }],
        "rules" : "open"
      },
      "short" : "Composants de l'évaluation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ComposantN1",
      "path" : "Observation.component",
      "sliceName" : "ComposantN1",
      "short" : "Composant N1 de l'évaluation",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:ComposantN1.extension",
      "path" : "Observation.component.extension",
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
      "id" : "Observation.component:ComposantN1.extension:note",
      "path" : "Observation.component.extension",
      "sliceName" : "note",
      "short" : "Commentaire",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/note|5.3.0"]
      }]
    },
    {
      "id" : "Observation.component:ComposantN1.extension:note.value[x]",
      "path" : "Observation.component.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ComposantN1.code",
      "path" : "Observation.component.code",
      "short" : "Code de l'évaluation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ComposantN1.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Résultat de l'évaluation",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ComposantN1.interpretation",
      "path" : "Observation.component.interpretation",
      "short" : "Interprétation",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ComposantN2",
      "path" : "Observation.component",
      "sliceName" : "ComposantN2",
      "short" : "Sous-composant N2 de l'évaluation",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:ComposantN2.code",
      "path" : "Observation.component.code",
      "short" : "Code de l'évaluation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ComposantN2.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Résultat de l'évaluation",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:ComposantN2.interpretation",
      "path" : "Observation.component.interpretation",
      "short" : "Interprétation",
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
