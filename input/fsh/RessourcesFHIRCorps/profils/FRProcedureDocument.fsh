Profile: FRProcedureDocument
Parent: FRCoreProcedureProfile
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

* code MS
* code ^short = "Code d'acte"
* code from FRValueSetProcedureCodeDocument (preferred)
* code ^comment = """
Aussi utilisé pour indiquer qu'il n'y a pas d'acte ou qu'on ne sait pas s'il y en a.
Si l'acte n'est pas trouvé dans CCAM, utiliser le code NCIT 'C25218' (Intervention)
et décrire l'acte en texte libre dans la partie narrative.
Pour les actes chirurgicaux inconnus, utiliser jdv-absent-or-unknown-procedure-cisis.
"""

* reasonReference only Reference(FRConditionDocument or FRDiagnosticReportDocument or FRDiagnosticReportImagingDocument or FRDiagnosticReportBIOChapterDocument)

* subject MS
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient concerné"

* performed[x] MS

// Slices priority, approachBodySite et difficulte définies dans FRCoreProcedureProfile
* extension[priority] MS

// Voie d'abord : extension standard FHIR (procedure-approachBodySite)
* extension[approachBodySite] MS
* extension[approachBodySite].valueReference only Reference(FRCoreBodyStructureProfile)

* bodySite MS

* performer MS
* performer ^short = "Performer"
* performer.actor only Reference(FRPractitionerRoleDocument or Device)

//informant
* asserter ^short = "Informateur"
* asserter only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)

// Auteur de l'acte
* recorder MS
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
* encounter only Reference(FREncounterDocument)

// Difficulté de l'acte
* extension[difficulte] MS
