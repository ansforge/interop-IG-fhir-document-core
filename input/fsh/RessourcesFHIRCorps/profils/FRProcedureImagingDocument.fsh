Profile: FRProcedureImagingDocument
Parent: FRProcedureDocument
Id: fr-procedure-imaging-document
Title: "Procedure - FR Procedure Imaging Document"
Description: "FRProcedureImagingDocument permet d'enregistrer les différents paramètres de l’acquisition d’image :
acte d'imagerie, localisation anatomique / latéralité / topographie, d'autres paramètres de l'acte "

* partOf only Reference(FRMedicationAdministrationDocument or FRProcedureImagingDocument)
* partOf ^short = "Produits administrés pendant l'acte d'imagerie, ou procédures d'imagerie associées"
* code ^short = "Code de l'acte d'imagerie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis (required)
* bodySite.extension[bodySite] ^short = "Localisation anatomique ou structure"
* bodySite.extension[bodySite].valueReference only Reference(FRCoreBodyStructureProfile) 
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer ^slicing.ordered = false
* performer contains
    intervenant 0..* and
    dispositifMedical 0..*
* performer[intervenant] ^short = "Intervenant"
* performer[intervenant].actor only Reference(FRPractitionerRoleDocument)
* performer[dispositifMedical] ^short = "Dispositif médical utilisé lors de l'acte d'imagerie"
* performer[dispositifMedical].actor only Reference(Device)
* complication.text ^short = "Complications survenues au cours de l'acte d'imagerie"