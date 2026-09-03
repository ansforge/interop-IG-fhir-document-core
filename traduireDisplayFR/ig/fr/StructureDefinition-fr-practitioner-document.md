# FR Practitioner Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: FR Practitioner Document 

 
Ce profil permet de décrire un professionnel de santé dans le cadre d'un document médical 

**Utilisations:**

* Utilise ce/t/te Profil: [FR Bundle Document](StructureDefinition-fr-bundle-document.md)
* Référence ce Profil: [DiagnosticReport - FR Diagnostic Report Document](StructureDefinition-fr-diagnostic-report-document.md), [MedicationRequest - FR Medication Request Document](StructureDefinition-fr-medication-request-document.md), [FR Patient INS Document](StructureDefinition-fr-patient-ins-document.md), [FR PractitionerRole Document](StructureDefinition-fr-practitionerRole-document.md) and [Specimen - FR Specimen Document](StructureDefinition-fr-specimen-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-practitioner-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html) 

** Résumé **

Obligatoire : 3 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Human Name Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-human-name-document|0.1.0)](StructureDefinition-fr-human-name-document.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsPractitionerProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitioner.html) 

** Résumé **

Obligatoire : 3 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [FR Human Name Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-human-name-document|0.1.0)](StructureDefinition-fr-human-name-document.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-practitioner-document.csv), [Excel](../StructureDefinition-fr-practitioner-document.xlsx), [Schematron](../StructureDefinition-fr-practitioner-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-practitioner-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document",
  "version" : "0.1.0",
  "name" : "FRPractitionerDocument",
  "title" : "FR Practitioner Document",
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
  "description" : "Ce profil permet de décrire un professionnel de santé dans le cadre d'un document médical",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-practitioner-role-to-mos-savoir-faire",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - SavoirFaire"
  },
  {
    "identity" : "as-practitioner-role-to-mos-exercice-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - ExerciceProfessionnel"
  },
  {
    "identity" : "as-practitioner-role-to-mos-inscription-ordre",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - InscriptionOrdre"
  },
  {
    "identity" : "as-practitioner-role-to-mos-diplome",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - Diplome"
  },
  {
    "identity" : "as-practitioner-role-to-mos-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - Professionnel"
  },
  {
    "identity" : "as-practitioner-role-to-mos-autorisation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - AutorisationExercice"
  },
  {
    "identity" : "as-practitioner-role-to-mos-carte-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerProfile to MOS - CarteProfessionnel"
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "short" : "Identité de la personne physique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-human-name-document|0.1.0"]
      }]
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "min" : 1
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification:savoirFaire",
      "path" : "Practitioner.qualification",
      "sliceName" : "savoirFaire",
      "short" : "Le savoir-faire ou le rôle apporte des précisions sur certaines professions : \n - Savoir-faire : pour les professions 10 (Médecin), 21 (Pharmacien), 40 (Chirurgien-dentiste) et 60 (Infirmier).\n - Rôle : pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle)."
    },
    {
      "id" : "Practitioner.qualification:role",
      "path" : "Practitioner.qualification",
      "sliceName" : "role",
      "short" : "Rôle : Pour les professions 41 (Assistant de service social) et 99 (Acteur caractérisé par son rôle).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification:role.code.coding",
      "path" : "Practitioner.qualification.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-doc-vs-role-prise-charge|0.1.0"
      }
    }]
  }
}

```
