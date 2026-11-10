Profile: FRMedicationStatementDocument
Parent: FRCoreMedicationStatementProfile
Id: fr-medication-statement-document
Title: "MedicationStatement - FR Medication Statement Document"
Description: "
 - FRMedicationStatementDocument permet de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement a déjà été administré ou si information rapporté par le patient ou si aucun traitement."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier ^short = "Identifiant. L'entrée Traitement doit être identifiée de manière unique."
* basedOn only Reference(FRMedicationRequestDocument)
* partOf only Reference(FRMedicationAdministrationDocument)
* category MS
* status MS
* status = #completed
* effective[x] only Period
* effectivePeriod MS

* dosage MS
  * timing MS
  // Dosages progressifs, fractionnés 
  * sequence MS
  // Dosages conditionnels
  * asNeeded[x] MS 
  * route MS
  * site MS
  
* dosage.doseAndRate MS
* dosage.doseAndRate.doseQuantity MS

* dosage.maxDosePerPeriod MS
* dosage.maxDosePerPeriod
  * ^short = "dose maximale"
* dosage.doseAndRate.rateQuantity MS
  * ^short = "rythme d'administration"
//Instructions au patient
// si codé : 
* dosage.additionalInstruction MS 
  * ^short = "Instructions au patient"
  // si non codé : 
* dosage.additionalInstruction.text MS 
  * ^short = "Instruction au patient"
// Médicament
* medication[x] MS
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)

// Motif du traitement
* reasonReference MS
* reasonReference only Reference(FRConditionDocument or Observation)

* note MS
* note ^short = "Permet de décrire les conditions préalables à l'utilisation du médicament."

// Ajout de l'extension R5 :  ExtensionMedicationStatement_Adherence
  * extension contains $extension-MedicationStatement.adherence named adherence 0..* MS
  * extension[adherence] ^short = "Statut de prise du médicament"