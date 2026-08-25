Instance: example-procedure-data-absent-reason
InstanceOf: FRProcedureDocument
Title: "Example - Procedure avec Data Absent Reason"
Description: """Exemple illustrant l'usage de l'extension `data-absent-reason` sur les éléments
obligatoires de la ressource Procedure dont la valeur est inconnue ou temporairement indisponible.

Cas d'usage illustrés :
- `code` : l'acte est inconnu → extension `data-absent-reason` avec code `unknown`
  (liaison extensible → l'extension peut se substituer au codage)
- `performedDateTime` : la date de l'acte est temporairement indisponible → extension `data-absent-reason` avec code `temp-unknown`
- `status` : le statut est inconnu → code d'exception `unknown` du ValueSet `event-status`
  (liaison required → on utilise directement le code d'exception du ValueSet, pas l'extension)"""
Usage: #example

// Identification
* identifier.value = "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890"
* identifier.system = "urn:ietf:rfc:3986"

// Statut (liaison required)
// Le statut est inconnu → code d'exception "unknown" du ValueSet event-status
// VS required interdit l'usage de data-absent-reason ; on utilise le code d'exception natif sauf en cas d'indisponibilité dans le VS.
* status = #unknown

// Patient
* subject = Reference(exemple-1-patient)

// Code de l'acte (liaison extensible)
// L'acte réalisé est inconnu → extension data-absent-reason avec code "unknown"
// La liaison extensible autorise l'usage de data-absent-reason en l'absence de code applicable.
* code.text = "Acte réalisé inconnu : utilisation de l'extension data-absent-reason avec code 'unknown'"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* code.extension.valueCode = #unknown

// Date de l'acte (performedDateTime)
// La date est temporairement indisponible → extension data-absent-reason avec code "temp-unknown"
* performedDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performedDateTime.extension.valueCode = #temp-unknown

Instance: exemple-1-patient
InstanceOf: FRPatientINSDocument
Usage: #example
Title: "Example Patient - Procedure avec Data Absent Reason"
* meta.profile = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document"
* id = "ba499de3-aeae-43c3-82cb-0ba2718cfa55"
// Identifiant INS
* identifier[INS-NIR].use = #official
* identifier[INS-NIR].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[INS-NIR].type.coding[0].code = #INS-NIR
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].value = "123456789012244"
 
// Données sociodémographiques
* gender = #female
* birthDate = "1979-03-28"
* deceasedBoolean = false
 
// Nom officiel (de naissance)
* name[officialName].use = #official
* name[officialName].family = "PAT-TROIS"
* name[officialName].given = "DOMINIQUE MARIE-LOUISE"
* name[officialName].extension[birth-list-given-name].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name"
* name[officialName].extension[birth-list-given-name].valueString = "DOMINIQUE MARIE-LOUISE"
 
// Nom usuel
* name[usualName].use = #usual
* name[usualName].family = "PAT-TROIS"
* name[usualName].given = "DOMINIQUE MARIE-LOUISE"
 
* address.use = #home
* address.type = #physical
* address.line[0] = "28"
* address.line[+] = "Avenue de Breteuil"
* address.line[+] = "Escalier A"
* address.city = "Paris"
* address.postalCode = "75007"
 
// Téléphones
* telecom[0].system = #phone
* telecom[0].value = "01 23 24 67 89"
* telecom[0].use = #home
 
* telecom[1].system = #phone
* telecom[1].value = "01 99 88 77 66"
* telecom[1].use = #work
* telecom[1].rank = 1
 
* telecom[2].system = #phone
* telecom[2].value = "06 80 55 34 33"
* telecom[2].use = #mobile
* telecom[2].rank = 2
 
* telecom[2].system = #email
* telecom[2].value = "279035121518989@patient.mssante.fr"
* telecom[2].use = #home
 
// Extension: Lieu de naissance
* extension[birthPlace].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[birthPlace].valueAddress.city = "Ambléon"
* extension[birthPlace].valueAddress.extension[fr-core-address-insee-code].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
* extension[birthPlace].valueAddress.extension[fr-core-address-insee-code].valueCoding.system = "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM"
* extension[birthPlace].valueAddress.extension[fr-core-address-insee-code].valueCoding.code = #01006
 
// Extension: Fiabilité de l'identité
* extension[identityReliability].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
* extension[identityReliability].extension[identityStatus].url = "identityStatus"
* extension[identityReliability].extension[identityStatus].valueCoding.system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445"
* extension[identityReliability].extension[identityStatus].valueCoding.code = #VALI
 
// Contact 1
* contact[0].name.text = "Sophie NESSI"
* contact[0].relationship[RelationType].coding[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"
* contact[0].relationship[RelationType].coding[0].code = #SIS
* contact[0].relationship[RelationType].coding[0].display = "Soeur"
* contact[0].relationship[Role].coding[0].system = "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"
* contact[0].relationship[Role].coding[0].code = #ECON
* contact[0].relationship[Role].coding[0].display = "Personne à prévenir en cas d'urgence"
 
* contact[0].name[0].family = "NESSI"
* contact[0].address.text = "12 rue des Lilas, 75012 Paris"

