Profile: FRObservationAssessmentDocument
Parent: Observation
Id: fr-observation-assessment-document
Title: "Observation - FR Observation Assessment Document"
Description: "FRObservationAssessmentDocument permet de rapporter un résultat (score) répondant à une question faisant partie d'une évaluation (questionnaire d'enquête par exemple)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category 1..1 MS
* category ^short = "Catégorie"
* category.coding 1..1
* category = $observation-category#survey "Survey"

* status ^short = "Statut métier de l’évaluation"
* status.extension contains FRStatusReasonExtension   
    named statusReason 0..1
* status.extension[statusReason] ^short = "Motif du statut métier"

* code MS
* code from FRValueSetEvaluationTypeDocument (extensible)
* code ^short = "Type d'évaluation"
* code ^comment = """
Si aucun code approprié n’est trouvé dans les systèmes proposés,
utiliser le code LOINC '54522-8' (Statut fonctionnel),
et préciser le type d’évaluation exact dans un texte libre.
"""

* value[x] 1..1 MS
* value[x] ^short = "Valeur de l'évaluation"

* interpretation 0..1 MS
* interpretation ^short = "Interprétation"

// Evaluateur
* performer 0..1 MS
* performer ^short = "Evaluateur"
* performer only Reference(FROrganizationDocument)


* extension contains
    FRActorExtension named author 0..1 and
    FRActorExtension named participant 0..1

// auteur
* extension[author] ^short = "Auteur de l'évaluation"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

// Participant
* extension[participant] ^short = "Responsable de l'évaluation"
* extension[participant].extension[type].valueCode = #PART
* extension[participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
* extension[participant].extension[typeCode].valueCodeableConcept.coding.code = #RESP

// ----------------------
// Rattachement Composants N1 / N2 via hasMember
// ----------------------
* hasMember MS
* hasMember only Reference(FRObservationAssessmentDocument)
* hasMember ^short = "Sous-évaluations (composants N2) rattachées à cette évaluation N1"

// Commentaires
* note ^short = "Commentaires (Annotations)"