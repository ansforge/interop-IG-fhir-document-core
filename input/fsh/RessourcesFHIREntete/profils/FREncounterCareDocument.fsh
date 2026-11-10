Profile: FREncounterCareDocument
Parent: FRCoreEncounterProfile
Id: fr-encounter-care-document
Title: "FR Encounter Care Document"
Description: "Ce profil représente l'association du document à une prise en charge."
* type 0..1
* period 1..1

// Slicing : participant 
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open

// Responsable de la prise en charge : responsibleParty
* participant contains responsibleParty 0..1
* participant[responsibleParty].individual 1..1
* participant[responsibleParty].individual only Reference(FRPractitionerRoleDocument)

// Personne impliquée dans la prise en charge : encounterParticipant
* participant contains encounterParticipant 0..*
* participant[encounterParticipant].type from $JDV_J140-EncounterParticipationType-CISIS (required)
* participant[encounterParticipant].individual 1..1
* participant[encounterParticipant].individual only Reference(FRPractitionerRoleDocument)

* location 1..1 
* location.location only Reference(FRLocationDocument)