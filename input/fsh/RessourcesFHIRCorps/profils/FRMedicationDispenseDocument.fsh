// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRMedicationDispenseDocument
Parent: FRCoreMedicationDispenseProfile
Id: fr-medication-dispense-document
Title: "MedicationDispense - FR Medication Dispense Document"
Description: "FRMedicationDispenseDocument permet de décrire un traitement dispensé avec notamment le médicament dispensé, la quantité et la référence de la prescription."

* type 1..1
* quantity from FRValueSetEDQMDocument (extensible)
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
* authorizingPrescription only Reference (FRMedicationRequestDocument)
* supportingInformation 0..1
* supportingInformation only Reference (FRMedicationAdministrationDocument)
* substitution
  * type 1..1
  * type from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis (required)
  * reason 0..1
  * reason from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-substitution-medicament-dispensateur-cisis (required)
