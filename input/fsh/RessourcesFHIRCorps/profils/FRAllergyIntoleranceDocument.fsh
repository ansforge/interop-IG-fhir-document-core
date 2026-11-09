Profile: FRAllergyIntoleranceDocument
Parent: FRCoreAllergyIntoleranceProfile
Id: fr-allergy-intolerance-document
Title: "AllergyIntolerance - FR Allergy and intolerance Document"
Description: "FRAllergyIntoleranceDocument est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier ^short = "Identifiant"
* type MS
// Extension officielle xver-r5.r4 (backport AllergyIntolerance.type R5, CodeableConcept, binding preferred) — https://hl7.org/fhir/uv/xver-r5.r4/0.1.0/StructureDefinition-profile-AllergyIntolerance.html
// Slice "type" définie dans FRCoreAllergyIntoleranceProfile
* type.extension[type].valueCodeableConcept from FRValueSetAllergyInoleranceTypeDocument (preferred)
* type.extension[type] ^short = "Type d'allergie ou d'intolérance"
* code MS
* code from FRValueSetAllergyCodeDocument (extensible)
* onset[x] MS
* onsetPeriod MS

* criticality MS

* verificationStatus MS

* clinicalStatus MS

* patient MS
* patient only Reference(FRPatientINSDocument or FRPatientDocument)

* reaction MS

* reaction.substance MS
* reaction.substance from FRValueSetAllergySubstanceDocument (required)

* reaction.manifestation MS
* reaction.manifestation ^short = "Symptômes/signes cliniques associés à l’événement"

* reaction.severity MS

* reaction.note MS
* reaction.note ^short = "Commentaire"

* reaction.onset MS
