Profile: FRProcedureDocument
Parent: Procedure
Id: fr-procedure-document
Title: "Procedure - FR Procedure Document"
Description: "FRProcedureDocument est un profil utilisé pour décrire un acte planifié ou réalisé."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier ^short = "Identifiant"

* partOf MS
* partOf ^short = "Événement associé : score (Cormack ou ASA), administration de médicament ou procédure associée à l’acte (ex. produit administré lors d’un acte d’imagerie)."
* partOf only Reference(Observation or FRMedicationAdministrationDocument or FRProcedureDocument)
* status MS
* status ^short = "Statut de l'acte"

* code 1..1 MS
* code ^short = "Code d'acte"
* code from FRValueSetProcedureCodeDocument (preferred)
* code ^comment = """
Aussi utilisé pour indiquer qu'il n'y a pas d'acte ou qu'on ne sait pas s'il y en a.
Si l'acte n'est pas trouvé dans CCAM, utiliser le code NCIT 'C25218' (Intervention)
et décrire l'acte en texte libre dans la partie narrative.
Pour les actes chirurgicaux inconnus, utiliser jdv-absent-or-unknown-procedure-cisis.
"""

* reasonReference ^short = "Motif de l'acte / Justification de la réalisation de l'acte"
* reasonReference only Reference(FRConditionDocument or FRDiagnosticReportDocument or FRDiagnosticReportImagingDocument or FRDiagnosticReportBIOChapterDocument)

* subject MS
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient concerné"

* performed[x] MS
* performed[x] ^short = "Date de l'acte"

* extension contains FRProcedurePriorityExtension named priority 0..1 MS

// Voie d'abord : extension standard FHIR (procedure-approachBodySite)
* extension contains
    http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure named approachBodySite 0..* MS
* extension[approachBodySite] ^short = "Voie d'abord"
* extension[approachBodySite].valueReference only Reference(FRBodyStructureDocument)

* bodySite MS
* bodySite ^short = "Localisation anatomique"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* performer 0..* MS
* performer ^short = "Performer"
* performer.actor only Reference(FRPractitionerRoleDocument or Device)

//informant
* asserter ^short = "Informateur"
* asserter only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)

// Auteur de l'acte
* recorder 0..1 MS
* recorder ^short = "Auteur"
* recorder only Reference(FRPractitionerRoleDocument)

//participant
* extension contains FRActorExtension named participant 0..* MS
* extension[participant] ^short = "Participant à l'acte"
* extension[participant].extension[type].valueCode = #PART
* extension[participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

//Réference à un DM
* usedReference MS
* usedReference ^short = "Réference à un DM"
* usedReference only Reference(Device)

// Rencontre associée à l'acte
* encounter MS
* encounter ^short = "Rencontre associée à l'acte"
* encounter only Reference(FREncounterDocument)

// Difficulté de l'acte
* extension contains
    FRProcedureDifficultyExtension named difficulte 0..1 MS
* extension[difficulte] ^short = "Difficulté de l'acte"
