Profile: FRImmunizationDocument
Parent: FRCoreImmunizationProfile
Id: fr-immunization-document
Title: "Immunization - FR Immunization Document"
Description: "FRImmunizationDocument permet de décrire l'administration d'un vaccin. 
 - Il permet également de décrire pourquoi un vaccin n'a pas été réalisé."

* status = #completed
* occurrence[x] ^definition = "Si la date de la vaccination est inconnue, utiliser l’extension data-absent-reason précisant pourquoi elle n’est pas connue."
// produit de santé
// Slice (autres codifications)
* vaccineCode.coding contains translation 0..*
* vaccineCode.coding[translation] from FRCoreValueSetMedication (required)
* vaccineCode.coding[translation].system 1..1
* performer.function = $v2-0443#AP
* performer.actor only Reference(FRPractitionerRoleDocument)
* extension contains FRActorExtension named author 1..1
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FRPatientINSDocument or FRDeviceAuteurDocument or FRPatientDocument)
// Prescription
* extension[basedOnRequestR5].valueReference only Reference (FRMedicationRequestDocument)
* reasonReference only Reference(FRConditionDocument) 