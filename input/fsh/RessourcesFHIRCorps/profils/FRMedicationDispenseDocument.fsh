// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRMedicationDispenseDocument
Parent: FRCoreMedicationDispenseProfile
Id: fr-medication-dispense-document
Title: "MedicationDispense - FR Medication Dispense Document"
Description: "FRMedicationDispenseDocument permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier ^short = "Identifiant"
* type 1..1 MS
  * coding from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis
* quantity MS
  * unit from FRValueSetEDQMDocument

* medication[x] MS
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
* authorizingPrescription MS
* authorizingPrescription only Reference (FRMedicationRequestDocument)
* supportingInformation 0..1 MS 
  * ^short = "Posologie"
* supportingInformation only Reference (FRMedicationAdministrationDocument)
* dosageInstruction.patientInstruction MS 
* dosageInstruction.additionalInstruction MS 
* dosageInstruction.text MS 
* substitution MS
  * type 1..1 MS
  * type ^short = "Type de substitution"
  * type from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis (required)
 
  * reason 0..1 MS
  * reason.text ^short = "le motif de substitution / non-substitution"
  * reason from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-substitution-medicament-dispensateur-cisis (required)
