# Example Patient - Procedure avec Data Absent Reason - FR Document Core (FHIR) v0.1.0

## Example Patient: Example Patient - Procedure avec Data Absent Reason

-------

**English**

-------

Profiles: [FR Patient INS Document](StructureDefinition-fr-patient-ins-document.md), `https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document`

DOMINIQUE MARIE-LOUISE PAT-TROIS Female, DoB: 1979-03-28 ( NIR définitif (use: official, ))

-------

| | |
| :--- | :--- |
| Deceased: | false |
| Alt. Name: | DOMINIQUE MARIE-LOUISE PAT-TROIS (Official) |
| Contact Detail | * ph: 01 23 24 67 89(Home)
* ph: 01 99 88 77 66(Work)
* [279035121518989@patient.mssante.fr](mailto:279035121518989@patient.mssante.fr)
* 28 Avenue de Breteuil Escalier A Paris 75007 (home)
 |
| Contact: | * Sophie NESSI
* Relationships:Soeur, Personne à prévenir en cas d'urgence
* 12 rue des Lilas, 75012 Paris
 |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) | Ambléon |
| FR Core Patient Ident Reliability Extension: | * identityStatus: [FR Core CodeSystem v2-0445: VALI](https://hl7.fr/ig/fhir/core/2.1.0/CodeSystem-fr-core-cs-v2-0445.html#fr-core-cs-v2-0445-VALI) (Identité validée)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ba499de3-aeae-43c3-82cb-0ba2718cfa55",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-patient-ins-document",
    "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "identityStatus",
      "valueCoding" : {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
        "code" : "VALI"
      }
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "extension" : [{
        "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
        "valueCoding" : {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM",
          "code" : "01006"
        }
      }],
      "city" : "Ambléon"
    }
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "INS-NIR"
      }]
    },
    "system" : "urn:oid:1.2.250.1.213.1.4.8",
    "value" : "123456789012244"
  }],
  "name" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
      "valueString" : "DOMINIQUE MARIE-LOUISE"
    }],
    "use" : "official",
    "family" : "PAT-TROIS",
    "given" : ["DOMINIQUE MARIE-LOUISE"]
  },
  {
    "use" : "usual",
    "family" : "PAT-TROIS",
    "given" : ["DOMINIQUE MARIE-LOUISE"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "01 23 24 67 89",
    "use" : "home"
  },
  {
    "system" : "phone",
    "value" : "01 99 88 77 66",
    "use" : "work",
    "rank" : 1
  },
  {
    "system" : "email",
    "value" : "279035121518989@patient.mssante.fr",
    "use" : "home",
    "rank" : 2
  }],
  "gender" : "female",
  "birthDate" : "1979-03-28",
  "deceasedBoolean" : false,
  "address" : [{
    "use" : "home",
    "type" : "physical",
    "line" : ["28", "Avenue de Breteuil", "Escalier A"],
    "city" : "Paris",
    "postalCode" : "75007"
  }],
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode",
        "code" : "SIS",
        "display" : "Soeur"
      }]
    },
    {
      "coding" : [{
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass",
        "code" : "ECON",
        "display" : "Personne à prévenir en cas d'urgence"
      }]
    }],
    "name" : {
      "text" : "Sophie NESSI",
      "family" : "NESSI"
    },
    "address" : {
      "text" : "12 rue des Lilas, 75012 Paris"
    }
  }]
}

```
