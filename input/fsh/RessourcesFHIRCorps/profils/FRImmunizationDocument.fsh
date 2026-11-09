Profile: FRImmunizationDocument
Parent: FRCoreImmunizationProfile
Id: fr-immunization-document
Title: "Immunization - FR Immunization Document"
Description: "FRImmunizationDocument permet de décrire l'administration d'un vaccin. 
 - Il permet également de décrire pourquoi un vaccin n'a pas été réalisé."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier ^short = "Identifiant" 

* status MS
* status = #completed
* occurrence[x] MS
* occurrence[x] only dateTime
* occurrence[x] ^definition = "Si la date de la vaccination est inconnue, utiliser l’extension data-absent-reason précisant pourquoi elle n’est pas connue."
* route MS
* site MS
* doseQuantity MS 

// produit de santé
// Slicing de vaccineCode.coding défini dans FRCoreImmunizationProfile

* vaccineCode MS
// Slice CIS obligatoire (définie dans FRCoreImmunizationProfile)
* vaccineCode.coding[cis] from FRValueSetVaccineCodeCISDocument (required)
* vaccineCode.coding[cis].system = "https://smt.esante.gouv.fr/terminologie-bdpm"

// Slice (autres codifications)
* vaccineCode.coding contains translation 0..*
* vaccineCode.coding[translation] from FRValueSetMedicationTranslationDocument (required)
* vaccineCode.coding[translation].system 1..1

* lotNumber MS
* expirationDate MS 

* performer ^short = "Exécutant"
* performer.function = $v2-0443#AP
* performer.actor only Reference(FRPractitionerRoleDocument)

* extension contains FRActorExtension named author 1..1
* extension[author] ^short = "Auteur de la vaccination (personne ayant validé médicalement que la vaccination a été réalisée)"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FRPatientINSDocument or FRDeviceAuteurDocument or FRPatientDocument)

//Prescription (slice basedOnRequestR5 définie dans FRCoreImmunizationProfile)
* extension[basedOnRequestR5].valueReference only Reference (FRMedicationRequestDocument)

* protocolApplied MS
// Type de vaccination
* protocolApplied.series ^short = "Type de dose (BOOSTER / IMMUNIZ / INITIMMUNIZ)"
// Rang de la vaccination 
* protocolApplied.doseNumberPositiveInt MS
// Nombre total de doses prévues
* protocolApplied.seriesDosesPositiveInt MS
* protocolApplied.seriesDosesPositiveInt ^short = "Nombre total de doses"

* reasonReference MS
* reasonReference only Reference(FRConditionDocument) 

// Dose d'antigène
// Problème dataType : codeableReference 
/* * extension contains $immunization-administeredProduct-r5 named ImmunizationAdministeredProductR5 0..*
* extension[ImmunizationAdministeredProductR5].extension[reference].valueReference only Reference(FRMedicationDocument)
 */
* note MS
  * ^short = "Commentaire"