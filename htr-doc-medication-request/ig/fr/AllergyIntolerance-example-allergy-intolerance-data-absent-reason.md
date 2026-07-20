# Example - AllergyIntolerance avec Data Absent Reason - FR Document Core (FHIR) v0.1.0

## Exemple AllergyIntolerance: Example - AllergyIntolerance avec Data Absent Reason

-------

**French**

-------

Profil: [AllergyIntolerance - FR Allergy and intolerance Document](StructureDefinition-fr-allergy-intolerance-document.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.0.2/NamingSystem-uri.html)/urn:uuid:7f0e9c1a-3b2d-4e5f-8a6b-1c2d3e4f5a6b

**clinicalStatus**: Active

**verificationStatus**: Unconfirmed

**code**: Agent allergique inconnu

**patient**: [Exemple Patient](Patient/exemple-patient)

**onset**: 2021-12-04 --> (en cours)

### Reactions

| | |
| :--- | :--- |
| - | **Manifestation** |
| * | Manifestation clinique inconnue |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example-allergy-intolerance-data-absent-reason",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-allergy-intolerance-document"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:7f0e9c1a-3b2d-4e5f-8a6b-1c2d3e4f5a6b"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "unconfirmed",
      "display" : "Unconfirmed"
    }]
  },
  "code" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }],
    "text" : "Agent allergique inconnu"
  },
  "patient" : {
    "reference" : "Patient/exemple-patient",
    "display" : "Exemple Patient"
  },
  "onsetPeriod" : {
    "start" : "2021-12-04"
  },
  "reaction" : [{
    "manifestation" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "unknown"
      }],
      "text" : "Manifestation clinique inconnue"
    }]
  }]
}

```
