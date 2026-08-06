Profile: FRAllergyIntoleranceDocument
Parent: AllergyIntolerance
Id: fr-allergy-intolerance-document
Title: "AllergyIntolerance - FR Allergy and intolerance Document"
Description: "FRAllergyIntoleranceDocument est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier ^short = "Identifiant"
* type MS
// Extension officielle xver-r5.r4 (backport AllergyIntolerance.type R5, CodeableConcept, binding preferred) — https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-AllergyIntolerance.html
* type.extension contains $allergy-intolerance-type-r5 named type 0..1
* type.extension[type].valueCodeableConcept from FRValueSetAllergyInoleranceTypeDocument (preferred)
* type.extension[type] ^short = "Type d'allergie ou d'intolérance"
* code 1..1 MS
* code ^short = "agent allergique"
* code from FRValueSetAllergyCodeDocument (extensible)
* onset[x] MS
* onset[x] ^short = "Date d'identification d'allergie ou d'intolérance"
* onsetPeriod MS
* onsetPeriod ^short = "Dates de début et de fin"
* onsetPeriod.start 1..1

* criticality MS
* criticality ^short = "Criticité"

* verificationStatus MS
* verificationStatus ^short = "Certitude"

* clinicalStatus MS
* clinicalStatus ^short = "Statut clinique"

* patient MS
* patient ^short = "Patient concerné par l'allergie ou intolérance"
* patient only Reference(FRPatientINSDocument or FRPatientDocument)

* reaction MS
* reaction ^short = "Réaction observée"

* reaction.substance MS
* reaction.substance ^short = "Substance responsable de la réaction"
* reaction.substance from FRValueSetAllergySubstanceDocument (required)

* reaction.manifestation MS
* reaction.manifestation ^short = "Symptômes/signes cliniques associés à l’événement"

* reaction.severity MS
* reaction.severity ^short = "Sévérité"

* reaction.note MS
* reaction.note ^short = "Commentaire"

* reaction.onset MS
* reaction.onset ^short = "Dates de début et de fin du problème"
