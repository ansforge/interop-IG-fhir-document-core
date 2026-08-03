# ValueSet – FR ValueSet Allergy Code Document - FR Document Core (FHIR) v0.1.0

## ValueSet: ValueSet – FR ValueSet Allergy Code Document 

 
Jeu de valeurs permettant de coder l’agent responsable d’une allergie : 
* Médicaments : CIP ou UCD
* Substances : SMS
* Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales
* Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions
* Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis
 

 **References** 

* [AllergyIntolerance - FR Allergy and intolerance Document](StructureDefinition-fr-allergy-intolerance-document.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "fr-vs-allergy-code",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/document-core/ValueSet/fr-vs-allergy-code",
  "version" : "0.1.0",
  "name" : "FRValueSetAllergyCodeDocument",
  "title" : "ValueSet – FR ValueSet Allergy Code Document",
  "status" : "draft",
  "date" : "2026-08-03T06:54:54+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Jeu de valeurs permettant de coder l’agent responsable d’une allergie :\n- Médicaments : CIP ou UCD\n- Substances : SMS\n- Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales\n- Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions\n- Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://smt.esante.gouv.fr/terminologie-bdpm",
      "version" : "2026-07-01"
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-cip_ucd"
    },
    {
      "system" : "http://id.who.int/icd/release/11/mms"
    },
    {
      "valueSet" : ["https://smt.esante.gouv.fr/fhir/ValueSet/jdv-allergie-vaccin-cisis|20260619134043"]
    },
    {
      "system" : "https://smt.esante.gouv.fr/terminologie-sms",
      "version" : "2026-07"
    }]
  }
}

```
