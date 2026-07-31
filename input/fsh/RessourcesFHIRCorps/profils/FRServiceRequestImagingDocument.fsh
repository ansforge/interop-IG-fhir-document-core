Profile: FRServiceRequestImagingDocument
Parent: FRServiceRequestDocument
Id: fr-service-request-imaging-document
Title: "ServiceRequest - FR Service Request Imaging Document"
Description: "FRServiceRequestImagingDocument profil spécifique permet de porter des demandes d'examens d'imagerie."


* note ^slicing.discriminator.type = #value
* note ^slicing.discriminator.path = "extension('http://hl7.fr/ig/.../StructureDefinition/fr-imaging-note-type-extension')"
* note ^slicing.rules = #open

* note contains
    finaliteExamen 1..1 MS and
    justificationDemande 0..1 MS

* note[finaliteExamen].extension contains FRNoteTypeExtension named noteType 1..1 MS
* note[finaliteExamen].extension[noteType].valueCode = #finaliteExamen

* note[justificationDemande].extension contains FRNoteTypeExtension named noteType 1..1 MS
* note[justificationDemande].extension[noteType].valueCode = #justificationDemande