Profile: FRAdverseEventDocument
Parent: FRCoreAdverseEventProfile
Id: fr-adverse-event-document
Title: "AdverseEvent - FR adverse event Document"
Description: "FRAdverseEventDocument permet de décrire un effet indésirable prévisible lié à un médicament"

// date de début de l'effet indésirable
// la date de fin de l'effet indésirable est à renseigner dans resultingCondition.abatementDateTime
* date 1..
* detected 1..
* suspectEntity 1..
* suspectEntity.instance only Reference(FRMedicationAdministrationDocument)
* resultingCondition only Reference(FRConditionDocument)
* severity 1..
* severity from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis (required)