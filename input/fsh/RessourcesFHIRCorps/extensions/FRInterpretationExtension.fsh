Extension: FRInterpretationExtension
Id: fr-interpretation-extension
Title: "FR Interpretation Extension"
Description: "Extension permettant de spécifier une interprétation."
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* value[x] only CodeableConcept
* valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
* valueCodeableConcept ^short = "Interprétation"