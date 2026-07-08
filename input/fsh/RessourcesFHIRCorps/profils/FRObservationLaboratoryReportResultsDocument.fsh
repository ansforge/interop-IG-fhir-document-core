Profile: FRObservationLaboratoryReportResultsDocument
Parent: Observation
Id: fr-observation-laboratory-report-results-document
Title: "Observation - FR Observation Laboratory Report Results Document"
Description: "FRObservationLaboratoryReportResultsDocument décrit un résultat d’examen de biologie médicale."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical() 

* status MS
* status ^short = "Niveau de complétude :
- 'final' si le résultat est présent
- 'cancelled' dans le cas où l'élément d'examen n’a pu être et ne sera pas réalisé
- 'registered' le résultat n'est pas encore disponible et est attendu"

* category MS
* category ^short = "Code du chapitre"

* code MS
* code ^short = "Code d'identification de l'analyse ou de l'observation"
* code.text ^short = "Référence à l'expression verbale dans la partie visualisable du compte-rendu"
* code.coding ^short = "Code d'identification d'attente national ou code de portée locale"

// Date et heure du résultat
* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Date et heure du résultat"
* effectivePeriod.start ^short = "Début de la période"
* effectivePeriod.end ^short = "Fin de la période"

* method MS
* method ^short = "Méthode ou technique employée"

* interpretation MS
* interpretation ^short = "Code d'interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis
//------------------------------------
// Sujet & Specimen
//------------------------------------
* subject MS
* subject 1..1
* subject ^short = """
1. Si le spécimen provient du corps du patient :
- subject = Référence vers FRPatientINSDocument
- specimen = Référence vers FRSpecimenDocument
- specimen.type contraint par le JDV jdv-specimen-type-cisis

2. Si spécimen extérieur au patient :
- subject = Référence vers FRPatientINSDocument
- specimen = Référence vers FRSpecimenDocument
- specimen.subject = Référence vers Substance
  Dans Substance :
    - substance.category depuis le JDV HL7 substance-category
    - substance.code.coding / display / system
"""

* subject only Reference(FRPatientINSDocument)

* specimen MS
* specimen ^short = "Prélèvement"
* specimen only Reference(FRSpecimenDocument)

// laboratoire executant
* performer 0..1 MS
* performer ^short = "Laboratoire exécutant"
* performer only Reference(FROrganizationDocument)

* extension contains FRActorExtension named author 0..1
and FRActorExtension named validateurResultat 0..1
and FRActorExtension named responsableExamen 0..1
and FRActorExtension named dispositifAuto 0..*

// auteur
* extension[author] ^short = "Auteur"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)


// Validateur de résultats
* extension[validateurResultat] ^short = "Validateur de résultats"
* extension[validateurResultat].extension[type].valueCode = #PART
* extension[validateurResultat].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
* extension[validateurResultat].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* extension[validateurResultat].extension[typeCode].valueCodeableConcept.coding.code = #AUTHEN

// Responsable de l'examen
* extension[responsableExamen] ^short = "Responsable de l'évaluation"
* extension[responsableExamen].extension[type].valueCode = #PART
* extension[responsableExamen].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
* extension[responsableExamen].extension[typeCode].valueCodeableConcept.coding.code = #RESP

// Dispositif automatique
* extension[dispositifAuto] ^short = "Dispositif automatique"
* extension[dispositifAuto].extension[type].valueCode = #PART
* extension[dispositifAuto].extension[actor].valueReference only Reference(Device)
* extension[dispositifAuto].extension[typeCode].valueCodeableConcept from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-participant-additionnel-resultat-cisis (required)
* extension[dispositifAuto].extension[typeCode].valueCodeableConcept.coding.code = #DEV

//------------------------------------
// Commentaire (annotation)
//------------------------------------
* note MS
* note ^short = "Commentaires associés à l'observation"

//------------------------------------
// Image illustrative
//------------------------------------
* derivedFrom MS
* derivedFrom only Reference(FRMediaDocument)
* derivedFrom ^short = "Image illustrative"

//------------------------------------
// Groupes de résultats associés
//------------------------------------
* hasMember MS
* hasMember only Reference(FRObservationLaboratoryReportResultsDocument)
* hasMember ^short = "Lien vers batterie d’examens ou résultats d’examens cliniquement pertinents ou isolat microbiologique"

* value[x] MS
* value[x] ^short = "Valeur du résultat :
Le type de valeur (value[x]) est choisi dynamiquement. 
Les autres attributs qui qualifient cette valeur (comme par exemple l'unité : unit) dépendent du type de donnée choisi. 
Les résultats qualitatifs codés peuvent le cas échéant être exprimés dans plusieurs systèmes de codage simultanément. 
De même les résultats numériques peuvent être exprimés simultanément dans plusieurs unités."

* extension contains $workflow-supportingInfo named supportingInfo 0..*
* extension[supportingInfo] MS
* extension[supportingInfo] ^short = "Résultats antérieurs"
// ou bien * hasMember only Reference(FRSimpleObservation) 
// * hasMember ^short = "Résultats antérieurs"

* valueRange MS
* valueRange ^short = "Intervalles de référence"
* valueRange.low MS
* valueRange.high MS

