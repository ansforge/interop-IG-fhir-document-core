Profile: FRServiceRequestImagingDocument
Parent: FRServiceRequestDocument
Id: fr-service-request-imaging-document
Title: "ServiceRequest - FR Service Request Imaging Document"
Description: "FRServiceRequestImagingDocument profil spécifique permet de porter des demandes d'examens d'imagerie."

* extension[reason] contains
    finaliteExamen 1..1 MS and
    justificationDemande 0..1 MS

* extension[reason][finaliteExamen].extension[concept] 1..1 MS
* extension[reason][finaliteExamen].extension[concept].valueCodeableConcept = FRCSNoteType#finaliteExamen "Finalité de l'examen"
* extension[reason][finaliteExamen].extension[concept].valueCodeableConcept.text 1..1 MS

* extension[reason][justificationDemande].extension[concept] 1..1 MS
* extension[reason][justificationDemande].extension[concept].valueCodeableConcept = FRCSNoteType#justificationDemande "Justification de la demande"
* extension[reason][justificationDemande].extension[concept].valueCodeableConcept.text 1..1 MS

