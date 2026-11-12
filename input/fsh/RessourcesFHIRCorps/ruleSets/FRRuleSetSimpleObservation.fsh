RuleSet: FRRuleSetSimpleObservation
// Contraintes pour Observation - Fr Simple Observation

* identifier ^short = "Identifiant de l'observation"

* status = #final
* status ^short = "Statut de l'observation"

* code ^short = "Code de l'observation"

* subject 1..1
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient concerné"

* effective[x] 1..1
* effective[x] ^short = "Date de l'observation"

* value[x] 1..1
* value[x] ^short = "Valeur de l'observation"

* extension contains FRActorExtension named author 0..*
* extension[author] ^short = "Auteur de l’observation"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(
    FRPractitionerRoleDocument
    or FROrganizationDocument
    or FRPractitionerRoleDocument
    or FRPatientINSDocument
    )

* interpretation 0..1
* interpretation ^short = "Interprétation"
* interpretation from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis

* method ^short = "Méthode"
* method from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationMethod-cisis

* note ^short = "Commentaire"

* bodySite ^short = "Localisation anatomique"

* encounter only Reference (FREncounterDocument)
* encounter ^short = "Rencontre de soins durant laquelle cette observation a été effectuée"
