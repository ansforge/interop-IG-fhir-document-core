Profile: FRAdverseEventDocument
Parent: FRCoreAdverseEventProfile
Id: fr-adverse-event-document
Title: "AdverseEvent - FR adverse event Document"
Description: "FRAdverseEventDocument permet de décrire un effet indésirable prévisible lié à un médicament"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category MS
* category from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis (required)
* category ^short = "Type d'effet indésirable"

// date de début de l'effet indésirable
// la date de fin de l'effet indésirable est à renseigner dans resultingCondition.abatementDateTime
* date 1.. MS

* detected 1.. MS
* detected ^short = "Date de détection de l'effet indésirable"

* suspectEntity 1.. MS

* suspectEntity ^short = "Agent soupçonné d’être à l’origine de l’événement indésirable"
* suspectEntity.instance MS
* suspectEntity.instance only Reference(FRMedicationAdministrationDocument)

* resultingCondition MS
* resultingCondition only Reference(FRConditionDocument)

* suspectEntity.causality MS

* suspectEntity.causality.assessment MS

* severity 1.. MS
* severity from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis (required)
* severity ^short = "Gravité de l'effet indésirable"

* outcome MS
* outcome from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis (required)
* outcome ^short = "Évolution de l'effet indésirable"
