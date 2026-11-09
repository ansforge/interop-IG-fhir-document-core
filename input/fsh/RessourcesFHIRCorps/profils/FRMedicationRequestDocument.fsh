// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRMedicationRequestDocument
Parent: FRCoreMedicationRequestProfile
Id: fr-medication-request-document
Title: "MedicationRequest - FR Medication Request Document"
Description: "FRMedicationRequestDocument permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* intent = #order
* identifier ^short = "Identifiant prescription"
* status MS
* status = #completed
// Dosages progressifs, fractionnés 
* dosageInstruction
  * sequence MS
  * timing MS
    * repeat MS
      * boundsPeriod
    //Fréquence d'administration
      * frequency MS
      // @value , @unit 
      * period MS
      * periodUnit MS
      * when MS
      * offset MS
  // Dosages conditionnels
  * asNeeded[x] MS 
  * route MS
  * route from FRValueSetEDQMDocument
  * site MS
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  * doseAndRate.doseRange MS 
  * doseAndRate.doseRange
    * low 1..1 MS
    * high 1..1 MS
  * doseAndRate.rateRange MS 
  * doseAndRate.rateRange
    * low 1..1 MS
    * high 1..1 MS
  * maxDosePerPeriod MS 
  * maxDosePerPeriod.numerator 1..1 MS
  * maxDosePerPeriod.denominator 1..1 MS

* dispenseRequest.numberOfRepeatsAllowed MS
* medication[x] MS
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
* subject only Reference(FRPatientDocument or FRPatientINSDocument)
* encounter only Reference(FREncounterCareDocument)
// --- Prescripteur : Auteur du document Prescription ---
* requester MS
* requester only Reference(FRPractitionerRoleDocument or FRPractitionerDocument)

* authoredOn MS

// Motif du traitement
* reasonReference MS
  * ^short = "Motif du traitement"
* reasonReference only Reference(Observation or FRConditionDocument or FRObservationPreventionDocument or FRObservationALDDocument or FRObservationWorkRelatedAccidentDocument)

// document externe 

* basedOn 0..1 MS
  * ^short = "Référence à un item du plan de traitement. Une copie du plan de traitement médicamenteux."
* basedOn only Reference(FRMedicationRequestDocument or FRCarePlanDocument or FRServiceRequestDocument or FRImmunizationRecommendationDocument)

// Instructions au patient et préconditions

* dispenseRequest MS
  * quantity MS
  * validityPeriod MS
  * numberOfRepeatsAllowed MS 
* substitution 1..1 MS
  * allowed[x] MS
  * ^short = "Autorisation de substitution / non-substitution" 
  * reason MS
  * reason from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-substitution-medicament-prescripteur-cisis (required)

// Hors AMM : extension $ihe-ext-offLabel déjà slicée dans FRCoreMedicationRequestProfile (slice offLabelUse)
* extension[offLabelUse] MS
* extension[offLabelUse] ^short = "Hors Autorisation de mise sur le marché"

// slice notCovered (FRCoreNotCoveredExtension) définie dans FRCoreMedicationRequestProfile