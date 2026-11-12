Profile: FRMedicationStatementDocument
Parent: FRCoreMedicationStatementProfile
Id: fr-medication-statement-document
Title: "MedicationStatement - FR Medication Statement Document"
Description: "
 - FRMedicationStatementDocument permet de décrire les modalités d'administration d'un médicament au patient.
 - Il permet de décrire notamment le médicament, le mode d'administration, la quantité, la durée et la fréquence d'administration.
 - Si le traitement a déjà été administré ou si information rapporté par le patient ou si aucun traitement."

* basedOn only Reference(FRMedicationRequestDocument)
* partOf only Reference(FRMedicationAdministrationDocument)
* status = #completed
// Médicament
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
// Motif du traitement
* reasonReference only Reference(FRConditionDocument or Observation)
// Ajout de l'extension R5 :  ExtensionMedicationStatement_Adherence
* extension contains $extension-MedicationStatement.adherence named adherence 0..*