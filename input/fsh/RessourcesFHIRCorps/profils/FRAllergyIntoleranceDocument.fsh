Profile: FRAllergyIntoleranceDocument
Parent: FRCoreAllergyIntoleranceProfile
Id: fr-allergy-intolerance-document
Title: "AllergyIntolerance - FR Allergy and intolerance Document"
Description: "FRAllergyIntoleranceDocument est un profil utilisé pourdécrire une allergie ou une hypersensibilité non allergique ou une intolérance ou une idiosyncrasie."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier ^short = "Identifiant"
* type MS

* code MS
* onset[x] MS
* onsetPeriod MS

* criticality MS

* verificationStatus MS

* clinicalStatus MS

* patient MS
* patient only Reference(FRPatientINSDocument or FRPatientDocument)

* reaction MS

* reaction.substance MS

* reaction.manifestation MS

* reaction.severity MS

* reaction.note MS
* reaction.note ^short = "Commentaire"

* reaction.onset MS