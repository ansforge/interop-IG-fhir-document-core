Profile: FRPractitionerRoleDocument
Parent: FRCorePractitionerRoleProfile
Id: fr-practitionerRole-document
Title: "FR PractitionerRole Document"
Description: "Ce profil représente les professionnels de santé et leurs rôles dans le cadre d'un document médical."

// Slicing de code
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "$this"
* code ^slicing.rules = #open

// slice : Rôle fonctionnel du professionnel de santé
* code contains functionCode 0..1
* code[functionCode] from $JDV_J47-FunctionCode-CISIS (required)

// slice : PS / Non PS
* code contains classCode 0..1
* code[classCode] from $JDV_J141-RoleClass-CISIS (required)

// slice : Type de participation
* code contains typeCode 0..1
* code[typeCode] from $JDV_J144-ParticipationType-CISIS (required)
* practitioner 1..1 
* practitioner only Reference(FRPractitionerDocument)
* organization 1..1
* organization only Reference(FROrganizationDocument)