Extension: FRImagingRequestExtension
Id: fr-imaging-request-extension
Title: "FR Imaging Request Extension"
Description: "Extension permettant de renseigner les notes associées à une demande d’examen d’imagerie, notamment la finalité de l’examen et la justification de la demande."
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains
    finaliteExamen 1..1 MS and
    justificationDemande 0..1 MS

* extension[finaliteExamen].value[x] only CodeableConcept
* extension[justificationDemande].value[x] only CodeableConcept