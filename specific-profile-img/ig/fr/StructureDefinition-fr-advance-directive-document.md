# Consent - FR Advance directive Document - FR Document Core (FHIR) v0.1.0

## Profil de ressource: Consent - FR Advance directive Document 

 
FRAdvanceDirectiveDocument permet d’indiquer si les directives anticipées du patient. Article L1111-11 du Code de la Santé Publique : « Toute personne majeure peut rédiger des directives anticipées pour le cas où elle serait un jour hors d'état d'exprimer sa volonté. Ces directives anticipées expriment la volonté de la personne relative à sa fin de vie en ce qui concerne les conditions de la poursuite, de la limitation, de l'arrêt ou du refus de traitement ou d'acte médicaux.» 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.document-core|current/StructureDefinition/fr-advance-directive-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Consent](http://hl7.org/fhir/R4/consent.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Consent](http://hl7.org/fhir/R4/consent.html) 

** Résumé **

Must-Support : 6 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [DocumentReference - FR Document reference Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-document-reference-document|0.1.0)](StructureDefinition-fr-document-reference-document.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Consent.source[x]

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [Consent](http://hl7.org/fhir/R4/consent.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Consent](http://hl7.org/fhir/R4/consent.html) 

** Résumé **

Must-Support : 6 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [DocumentReference - FR Document reference Document (https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-document-reference-document|0.1.0)](StructureDefinition-fr-document-reference-document.md)

**Slices**

Cette structure définit les [slices](http://hl7.org/fhir/R4/profiling.html#slices) suivantes:

* The element 1 is sliced based on the value of Consent.source[x]

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-advance-directive-document.csv), [Excel](../StructureDefinition-fr-advance-directive-document.xlsx), [Schematron](../StructureDefinition-fr-advance-directive-document.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-advance-directive-document",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-advance-directive-document",
  "version" : "0.1.0",
  "name" : "FRAdvanceDirectiveDocument",
  "title" : "Consent - FR Advance directive Document",
  "status" : "draft",
  "date" : "2026-07-31T13:07:52+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "FRAdvanceDirectiveDocument permet  d’indiquer si les directives anticipées du patient.\nArticle L1111-11 du Code de la Santé Publique : \n« Toute personne majeure peut rédiger des directives anticipées pour le cas où elle serait un \njour hors d'état d'exprimer sa volonté. Ces directives anticipées expriment la volonté de la personne \nrelative à sa fin de vie en ce qui concerne les conditions de la poursuite, de la limitation, \nde l'arrêt ou du refus de traitement ou d'acte médicaux.»",
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
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.status",
      "path" : "Consent.status",
      "short" : "Statut",
      "mustSupport" : true
    },
    {
      "id" : "Consent.scope",
      "path" : "Consent.scope",
      "short" : "Consent de type directive anticipée",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "adr",
          "display" : "Advance Directive"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.dateTime",
      "path" : "Consent.dateTime",
      "short" : "Date de la directive anticipée",
      "mustSupport" : true
    },
    {
      "id" : "Consent.source[x]",
      "path" : "Consent.source[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Documents"
    },
    {
      "id" : "Consent.source[x]:sourceReference",
      "path" : "Consent.source[x]",
      "sliceName" : "sourceReference",
      "short" : "Référence à un document externe",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-document-reference-document|0.1.0"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.source[x]:sourceAttachment",
      "path" : "Consent.source[x]",
      "sliceName" : "sourceAttachment",
      "short" : "Document encapsulé en B64",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Attachment"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.source[x]:sourceAttachment.data",
      "path" : "Consent.source[x].data",
      "short" : "Representation en B64"
    },
    {
      "id" : "Consent.source[x]:sourceAttachment.url",
      "path" : "Consent.source[x].url",
      "short" : "URI"
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.type",
      "path" : "Consent.provision.type",
      "short" : "Procédure autorisée ou pas :\nLe type de la directive identifiée permet d’indiquer l’autorisation ou la non autorisation :\n- si l’élément <<provision.code>> est 'Autre directive' : dans ce cas, l'élément <<provision.type>> n'est pas présent\n- si l’élément <<provision.code>> est 'Directives anticipées' : dans ce cas, l'élément <<provision.type>> n'est pas présent et un document encodé en B64 est encapsulé dans l'élément 'sourceAttachment'."
    },
    {
      "id" : "Consent.provision.code",
      "path" : "Consent.provision.code",
      "short" : "Type de la directive anticipée",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-directive-anticipee-cisis|20260619134043"
      }
    }]
  }
}

```
