Profile: FRProcedureDocument
Parent: FRCoreProcedureProfile
Id: fr-procedure-document
Title: "Procedure - FR Procedure Document"
Description: "FRProcedureDocument est un profil utilisé pour décrire un acte planifié ou réalisé."

* partOf only Reference(Observation or FRMedicationAdministrationDocument or FRProcedureDocument)
* code from FRValueSetProcedureCodeDocument (preferred)
* reasonReference only Reference(FRConditionDocument or FRDiagnosticReportDocument or FRDiagnosticReportImagingDocument or FRDiagnosticReportBIOChapterDocument)
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
// Voie d'abord
* extension[approachBodySite].valueReference only Reference(FRCoreBodyStructureProfile)
* performer.actor only Reference(FRPractitionerRoleDocument or Device)
//informant
* asserter only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)
// Auteur de l'acte
* recorder only Reference(FRPractitionerRoleDocument)
//participant
* extension contains FRActorExtension named participant 0..*
* extension[participant].extension[type].valueCode = #PART
* extension[participant].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
//Réference à un DM
* usedReference only Reference(Device)
// Rencontre associée à l'acte
* encounter only Reference(FREncounterDocument)