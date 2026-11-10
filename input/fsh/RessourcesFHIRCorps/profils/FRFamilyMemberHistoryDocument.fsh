Profile: FRFamilyMemberHistoryDocument
Parent: FamilyMemberHistory
Id: fr-family-member-history-document
Title: "FamilyMemberHistory - FR Family Member History Document"
Description: "FRFamilyMemberHistoryDocument est un profil utilisé pour apporter des informations complémentaires relatives aux membres de la famille du patient (pathologies, etc…)."

* status ^short = "Statut de l'antécédent familial"
* status = #completed
* relationship ^short = "Lien avec un autre sujet"
* relationship from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-PersonalRelationshipRoleType-cisis
* patient ^short = "Patient concerné"
* patient only Reference(FRPatientINSDocument or FRPatientDocument)
* date ^short = "Date de la mise à jour de l'historique"
* extension contains FRActorExtension named author 0..1
* extension[author] ^short = "Auteur"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FRPatientINSDocument or FRDeviceAuteurDocument or FRPatientDocument)
* condition ^short = "Problème"
* condition.code ^short = "Problème rencontré par le patient"
* condition.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis (required)
* condition.outcome 1..1
* condition.outcome ^short = "Résultat de l'observation effectuée"
* condition.extension contains
    FRFamilyMemberHistoryBodySiteExtension named bodySite 0..1 and
    FRInterpretationExtension named interpretation 0..1 and
    FRCoreMethodExtension named method 0..1
* condition.extension[bodySite] ^short = "Localisation anatomique"