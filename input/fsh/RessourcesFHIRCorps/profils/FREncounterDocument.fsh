Profile: FREncounterDocument
Parent: FRCoreEncounterProfile
Id: fr-encounter-document
Title: "Encounter - FR Encounter Document"
Description: "FREncounterDocument est un profil permettant de conserver les modalités d'une rencontre du patient. Il peut s'agir d'une rencontre passée ou à venir"

* obeys fr-encounter-status
* priority ^short = "Si la rencontre est prévue non confirmée et qu'une confirmation est attendue : `system` = `http://terminology.hl7.org/CodeSystem/v3-ActPriority`, `code` = `CS`. Sinon, non fourni."
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* participant.individual.extension contains
    FRActorExtension named executant 0..* and
    FRActorExtension named author 0..* and
    FRActorExtension named informant 0..*
* participant.individual.extension[executant].extension[type].valueCode = #PRF
* participant.individual.extension[author].extension[type].valueCode = #AUT
* participant.individual.extension[informant].extension[type].valueCode = #INF
* location 0..1
* location.location only Reference(FRLocationDocument)
* hospitalization.dischargeDisposition from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-sortie-cisis (preferred)

Invariant: fr-encounter-status
Description: "Le statut de la rencontre doit être 'finished' (rencontre réalisée), 'planned' (rencontre planifiée) ou 'proposed' (rencontre prévue mais non confirmée)."
Severity: #error
Expression: "status = 'finished' or status = 'planned' or status = 'proposed'"
