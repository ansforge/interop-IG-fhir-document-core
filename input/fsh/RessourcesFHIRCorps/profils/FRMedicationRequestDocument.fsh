// Une étude devra être faite dans un second temps pour aligner ces profils à ceux d'InteropSanté
Profile: FRMedicationRequestDocument
Parent: MedicationRequest
Id: fr-medication-request-document
Title: "MedicationRequest - FR Medication Request Document"
Description: "FRMedicationRequestDocument permet de décrire un traitement prescrit avec notamment le médicament, le mode d’administration, la quantité, la durée et la fréquence d'administration."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* intent = #order
* identifier ^short = "Identifiant prescription"
* status 1..1 MS
* status ^short = "Statut"
* status = #completed
// Dosages progressifs, fractionnés 
* dosageInstruction
  * sequence MS
  * timing MS
    * ^short = "Durée du traitement et fréquence d'administration."
    * repeat MS
      * boundsPeriod ^short = "Durée du traitement"
        * start ^short = "Date de début du traitement"
        * end ^short = "Date de fin du traitement"
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
  * route ^short = "Voie d'administration"
  * site MS
  * site ^short = "Région anatomique d'administration"
  * site from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-human-substance-administration-site-cisis
  * doseAndRate.doseRange MS 
  * doseAndRate.doseRange ^short = "Dose à administrer"
    * low 1..1 MS
    * high 1..1 MS
  * doseAndRate.rateRange MS 
  * doseAndRate.rateRange ^short = "Rythme d'administration"
    * low 1..1 MS
    * high 1..1 MS
  * maxDosePerPeriod MS 
  * maxDosePerPeriod ^short = "Dose maximale"
  * maxDosePerPeriod.numerator 1..1 MS
  * maxDosePerPeriod.denominator 1..1 MS

* dispenseRequest.numberOfRepeatsAllowed MS
  * ^short = "Nombre de renouvellement(s) possible(s)"
* medication[x] MS
* medication[x] only CodeableConcept or Reference(FRMedicationDocument)
  * ^short = "Produit de santé"
* subject only Reference(FRPatientDocument or FRPatientINSDocument)
* encounter only Reference(FREncounterCareDocument)
// --- Prescripteur : Auteur du document Prescription ---
* requester MS
* requester ^short = "Prescripteur"
* requester only Reference(FRPractitionerRoleDocument or FRPractitionerDocument)

* authoredOn MS

// Motif du traitement
* reasonReference MS
  * ^short = "Motif du traitement"
* reasonReference only Reference(Observation or FRConditionDocument or FRObservationPreventionDocument or FRObservationALDDocument or FRObservationWorkRelatedAccidentDocument)

// document externe 
* instantiatesUri ^short = "Référence de la prescription"

* basedOn 0..1 MS
  * ^short = "Référence à un item du plan de traitement. Une copie du plan de traitement médicamenteux."
* basedOn only Reference(FRMedicationRequestDocument or FRCarePlanDocument or FRServiceRequestDocument or FRImmunizationRecommendationDocument)

// Instructions au patient et préconditions
* dosageInstruction.additionalInstruction ^short = "Informations supplémentaires utilisables pour instructions au Patien ou pércondition préalables à l'utilisation du médicament"

* dispenseRequest MS
  * extension contains $medicationRequest-dispenseRequest-dispenserInstruction-r5 named dispenserInstructionR5 0..1
  * extension[dispenserInstructionR5].valueAnnotation 1..1
    * ^short = "instructions au dispensateur"
  * quantity MS
    * ^short = "Quantité à dispenser" 
  * validityPeriod MS
    * ^short = "Période de validité"
  * numberOfRepeatsAllowed MS 
    * ^short = "Nombre de renouvellement(s) possible(s)"
* substitution 1..1 MS
  * allowed[x] MS
  * ^short = "Autorisation de substitution" 
  * allowedCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis
  * reason MS
  * reason.text ^short = "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle)."

* extension contains $ihe-ext-offLabel named horsAMM 0..* MS
* extension[horsAMM] ^short = "Hors Autorisation de mise sur le marché"

* extension contains FRNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "Traitement non remboursable"