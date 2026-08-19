ValueSet: FrValueSetParticipationTypeParticipant
Id: fr-doc-vs-participation-type-participant
Title: "FR ValueSet Participation Type"
Description: "Type de participation : participant"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"

// Ajout de codes spécifiques
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#INF
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#REF
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CON
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#RESP
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#REFB
* include http://terminology.hl7.org/CodeSystem/v3-ParticipationType#VRF

* ^experimental = false