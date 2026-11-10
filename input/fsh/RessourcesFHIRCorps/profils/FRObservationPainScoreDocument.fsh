// ne fait partie du modèle Européen EHDS, on le garde pour des prochaines versions
Profile: FRObservationPainScoreDocument
Parent: Observation
Id: fr-observation-pain-score-document
Title: "Observation - FR Observation Pain Score Document"
Description: "FRObservationPainScoreDocument permet d'enregistrer l'évaluation du patient de sa douleur sur une échelle de 1 à 10."

* identifier ^short = "Identifiant de l'observation"
* code.coding.system = $LNC
* code.coding.code = #38208-5
* code.coding.display = "Sévérité de la douleur"
* status = #final
* status ^short = "Statut de l'observation"
* effectiveDateTime 1..1
  * ^short = "Date de l'observation"
* interpretation 0..1
* interpretation ^short = "Interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evaluation-douleur-cisis
* bodySite ^short = "Localisation de la douleur"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* value[x] only integer
* valueInteger 1..1
  * ^short = "Valeur de l'observation. entier de 0 à 10"
* hasMember 0..1
* hasMember only Reference(Observation)