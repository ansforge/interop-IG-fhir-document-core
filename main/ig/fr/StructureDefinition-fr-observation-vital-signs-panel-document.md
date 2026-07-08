# Observation - FR Observation Vital Signs Panel Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: Observation - FR Observation Vital Signs Panel Document 

 
FRObservationVitalSignsPanelDocument permet de regrouper des informations relatives aux mesures cliniques du patient. 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-observation-vital-signs-panel-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-vitalspanel](http://hl7.org/fhir/R4/vitalspanel.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-vitalspanel](http://hl7.org/fhir/R4/vitalspanel.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Organization Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0)](StructureDefinition-fr-organization-document.md)
* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [Observation - FR Observation Vital Signs Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-vital-signs-document|0.1.0)](StructureDefinition-fr-observation-vital-signs-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [observation-vitalspanel](http://hl7.org/fhir/R4/vitalspanel.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [observation-vitalspanel](http://hl7.org/fhir/R4/vitalspanel.html) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [FR PractitionerRole Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0)](StructureDefinition-fr-practitionerRole-document.md)
* [FR Organization Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0)](StructureDefinition-fr-organization-document.md)
* [FR Patient INS Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0)](StructureDefinition-fr-patient-ins-document.md)
* [Observation - FR Observation Vital Signs Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-vital-signs-document|0.1.0)](StructureDefinition-fr-observation-vital-signs-document.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension|0.1.0](StructureDefinition-fr-actor-extension.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-observation-vital-signs-panel-document.csv), [Excel](../StructureDefinition-fr-observation-vital-signs-panel-document.xlsx), [Schematron](../StructureDefinition-fr-observation-vital-signs-panel-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-observation-vital-signs-panel-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-vital-signs-panel-document",
  "version" : "0.1.0",
  "name" : "FRObservationVitalSignsPanelDocument",
  "title" : "Observation - FR Observation Vital Signs Panel Document",
  "status" : "draft",
  "date" : "2026-07-08T15:46:54+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRObservationVitalSignsPanelDocument permet de regrouper des informations relatives aux mesures cliniques du patient.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/vitalspanel|4.0.1",
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
      "short" : "Auteur de l’observation",
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
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-organization-document|0.1.0",
        "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document|0.1.0"]
      }]
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "Identifiant"
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Statut",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Date",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-vital-signs-document|0.1.0"]
      }]
    }]
  }
}

```
