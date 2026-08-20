Instance: example-allergy-intolerance-data-absent-reason
InstanceOf: FRAllergyIntoleranceDocument
Title: "Example - AllergyIntolerance avec Data Absent Reason"
Description: """Exemple illustrant l'usage de l'extension `data-absent-reason` sur les éléments
obligatoires de la ressource AllergyIntolerance dont la valeur est inconnue ou
temporairement indisponible.

Cas d'usage illustrés :
- `code` : l'agent allergique est inconnu → code `unknown`
- `reaction.manifestation` : la manifestation clinique est inconnue → code `unknown`"""
Usage: #example

// Identifiant de l'allergie ou de l'intolérance
* identifier.value = "urn:uuid:7f0e9c1a-3b2d-4e5f-8a6b-1c2d3e4f5a6b"
* identifier.system = "urn:ietf:rfc:3986"

// Statut clinique et de vérification
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed "Unconfirmed"

// Agent allergique (1..1)
// L'agent allergique est inconnu → extension data-absent-reason avec code "unknown"
* code.text = "Agent allergique inconnu"
* code.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* code.extension.valueCode = #unknown

// Patient
* patient = Reference(urn:uuid:ba499de3-aeae-43c3-82cb-0ba2718cfa41)

// Date de début d'identification de l'allergie ou de l'intolérance
* onsetPeriod.start = "2021-12-04"

// Réaction (reaction.manifestation obligatoire 1..*)
// La manifestation clinique est inconnue → extension data-absent-reason avec code "unknown"
* reaction[+].manifestation[+].text = "Manifestation clinique inconnue"
* reaction[=].manifestation[=].extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* reaction[=].manifestation[=].extension.valueCode = #unknown

Instance: exemple-patient
InstanceOf: FRPatientINSDocument
Usage: #example
Title: "Example - Patient"
* meta.profile = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-ins-document"
* id = "ba499de3-aeae-43c3-82cb-0ba2718cfa41"
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
