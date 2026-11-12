Profile: FRDiagnosticReportDocument
Parent: DiagnosticReport
Id: fr-diagnostic-report-document
Title: "DiagnosticReport - FR Diagnostic Report Document"
Description: "FRDiagnosticReportDocument est un profil permettant de regrouper les types des résultats classés par type d’examens (BIO, IMG, etc…)."

* extension contains FRCompositionExtension named composition 1..1
* extension[composition] ^short = "Composition"
* identifier ^short = "Identifiant"
* category 1..
  * ^short = "Type de résultat"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains typeResultat 1..1
* category[typeResultat] ^short = "Types de résultats"
* category[typeResultat] from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-resultat-type-cisis (extensible)
* code ^short = "Code du résultat"
* status ^short = "Statut"
* status = #final
* effective[x] 1..1
* effective[x] only dateTime
  * ^short = "Date"
* encounter ^short = "L’événement de soins auquel se rapporte ce compte rendu de laboratoire (moment où l’examen a été prescrit)."
* encounter only Reference(FREncounterDocument)
* subject 1..1
* subject ^short = "Sujet concerné"
* subject only Reference(FRPatientINSDocument)
* specimen only Reference(FRSpecimenDocument)
* specimen ^short = "Échantillons sur lesquels repose ce compte rendu." 
* performer ^short = "Exécutant"
* performer only Reference (FRPractitionerDocument or FRPractitionerRoleDocument or FROrganizationDocument)
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains organization 0..*
* performer[organization] only Reference(FROrganizationDocument)
* performer[organization] ^short = "Organization productrice du CR"
* resultsInterpreter
  * ^short = "Auteur"
* resultsInterpreter only Reference (FRPractitionerDocument or FRPractitionerRoleDocument or FROrganizationDocument)  
* resultsInterpreter.extension contains FRActorExtension named author 1..*
* resultsInterpreter.extension[author] ^short = "Auteur du compte-rendu (Médecin - Radiologue - Biologiste ...)"
* resultsInterpreter.extension[author].extension[type].valueCode = #AUT
* resultsInterpreter.extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
* result 1..*
  * ^short = "Résultat"
* result only Reference (FRObservationResultDocument or FRObservationLaboratoryReportResultsDocument)
* media ^short = "Images clés associées à ce rapport"
  * link ^short = "Lien vers les images clés"
  * link only Reference(FRMediaDocument)
* conclusion ^short = "Conclusions cliniques et interprétations du rapport."
* presentedForm 1..1
* presentedForm ^short = "Copie du document"

Extension: FRCompositionExtension
Title: "FR Composition Extension"
Id: fr-composition-extension
Description: "Composition"
Context: DiagnosticReport
* value[x] only Reference(FRCompositionDocument)