Profile: FRMedicationAdministrationDocument
Parent: FRCoreMedicationAdministrationProfile
Id: fr-medication-administration-document
Title: "MedicationAdministration - FR Medication Administration Document"
Description: "
 - FRMedicationAdministrationDocument permert de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement est en attente d’administration c’est-à dire qu’il a été prescrit."

* status = #completed
// Médicament
* medication[x] only Reference(FRMedicationDocument)
// Motif du traitement
* reasonReference only Reference(FRConditionDocument or Observation)
* request only Reference(FRMedicationRequestDocument)