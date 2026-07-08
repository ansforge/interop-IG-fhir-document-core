Profile: FRMediaDocument
Parent: Media
Id: fr-media-document
Title: "Media - FR Media Document"
Description: "FRMediaDocument permet de positionner une image de type gif, jpeg, png ou bm. Elle est encodée en base 64   "

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* content MS
// Langue du contenu
* content.language MS
* content.language ^short = "Langue de l'image (RFC 5646)"
// Contenu image encodé en Base64
* content.contentType MS
* content.contentType ^short = "Type MIME du média"
* content.data MS
* content.data ^short = "Image encodée en base64"

// Sujet concerné
* subject MS
* subject only Reference(FRPatientINSDocument or FRSpecimenDocument)
* subject ^short = "Patient ou specimen concerné par l'image"

* operator MS
* operator.extension contains
    FRActorExtension named performer 0..*

* operator.extension[performer] ^short = "Performer : Personne ayant réalisé l’acte"
* operator.extension[performer].extension[type].valueCode = #PRF
* operator.extension[performer].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FROrganizationDocument or FRDeviceAuteurDocument)

* extension contains FRActorExtension named author 0..*
and FRActorExtension named informant 0..*
and FRActorExtension named participant 0..*

* extension[author] ^short = "Auteur du média"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRDeviceAuteurDocument or FRPractitionerRoleDocument)

* extension[informant] ^short = "Informateur"
* extension[informant].extension[type].valueCode = #INF
* extension[informant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)

* extension[participant] ^short = "Participant : Personne ayant participé à l’acte"
* extension[participant].extension[type].valueCode = #PART
* extension[participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument or FRDeviceAuteurDocument or FROrganizationDocument)

// EntryRelationship
* basedOn MS
* basedOn only Reference(ServiceRequest or CarePlan)
* basedOn ^short = "Acte ou plan de soins à l'origine de l'image"

// Reference
* partOf MS
* partOf only Reference(Observation or DiagnosticReport or Procedure)
* partOf ^short = "Lien avec une ressource clinique"

/* Précondition
Proposition 1 : utiliser reasonCode */ 
* reasonCode MS
* reasonCode ^short = "Contexte ou justification de l'image (précondition)"

// Proposition 2 : utiliser note.text si besoin d'un texte libre
/* * note 0..*
* note.text ^short = "Commentaire libre sur la précondition"
 */