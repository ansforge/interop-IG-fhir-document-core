Profile: FRMedicationAdministrationDocument
Parent: FRCoreMedicationAdministrationProfile
Id: fr-medication-administration-document
Title: "MedicationAdministration - FR Medication Administration Document"
Description: "
 - FRMedicationAdministrationDocument permert de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement est en attente d’administration c’est-à dire qu’il a été prescrit."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier ^short = "Identifiant de l'administration du médicament"
* category MS
* status MS
* status = #completed
* effective[x] only Period
* effectivePeriod MS

* dosage
  * route MS
  * site MS
  * dose MS

* dosage.rate[x] MS
* dosage.rateRatio MS
  * ^short = "doseMaximale"
* dosage.rateQuantity MS
  * ^short = "rythme d'administration"

// Médicament
* medication[x] MS
* medication[x] only Reference(FRMedicationDocument)

// Instruction au patient
* dosage.text MS

// Motif du traitement
* reasonReference MS
* reasonReference only Reference(FRConditionDocument or Observation)

* request only Reference(FRMedicationRequestDocument)

* note MS
* note ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."
