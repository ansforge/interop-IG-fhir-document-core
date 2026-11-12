// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRMedicationRequestDocument
Parent: FRCoreMedicationRequestProfile
Id: fr-medication-request-document
Title: "MedicationRequest - FR Medication Request Document"
Description: "FRMedicationRequestDocument permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration."

* intent = #order
* status = #completed
// Dosages progressifs, fractionnés 
* dosageInstruction
  // Dosages conditionnels
  * doseAndRate.doseRange
    * low 1..1
    * high 1..1
  * doseAndRate.rateRange
    * low 1..1
    * high 1..1
  * maxDosePerPeriod.numerator 1..1
  * maxDosePerPeriod.denominator 1..1
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
* subject only Reference(FRPatientDocument or FRPatientINSDocument)
* encounter only Reference(FREncounterCareDocument)
// --- Prescripteur : Auteur du document Prescription ---
* requester only Reference(FRPractitionerRoleDocument or FRPractitionerDocument)
// Motif du traitement
* reasonReference only Reference(Observation or FRConditionDocument or FRObservationPreventionDocument or FRObservationALDDocument or FRObservationWorkRelatedAccidentDocument)
* basedOn only Reference(FRMedicationRequestDocument or FRCarePlanDocument or FRServiceRequestDocument or FRImmunizationRecommendationDocument)
// Instructions au patient et préconditions
* substitution 1..1
  * reason from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-substitution-medicament-prescripteur-cisis (required)