Profile: FRConditionDocument
Parent: FRCoreConditionProfile
Id: fr-condition-document
Title: "Condition - FR Condition Document"
Description: "FRConditionDocument est un profil utilisé pour décrire un problème du patient (une pathologie par exemple)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()
* extension contains FRActorExtension named author 0..1
* extension[author] ^short = "Auteur du problème"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)

* identifier ^short = "Identifiant"

* clinicalStatus MS
* clinicalStatus ^short = "Statut du problème"

* verificationStatus MS

* category 1..1 MS
* category ^short = "Type d'observation"

* code MS
* code ^short = """Identification de la condition, du problème ou du diagnostic :
CIM-10 pour les pathologie  et réactions à une vaccination : Si le problème observé n'est pas trouvé dans la terminologie CIM-10, utiliser le code='R69' display='Causes inconnues et non précisées de morbidité' system='https://smt.esante.gouv.fr/terminologie-cim-10' et décrire le problème sous forme de texte libre
Réaction allergique : CIM-11 (2.16.840.1.113883.6.347) / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hyper-sensibilité
Si pas de problème ou pas d'information : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-absent-or-unknown-problem-cisis
"""
* subject MS
* subject only Reference(FRPatientINSDocument or FRPatientDocument)

* onset[x] MS
* onsetDateTime MS
* onsetDateTime ^short = "Date de début du problème"

* abatement[x] MS
* abatementDateTime MS

* bodySite MS

* severity MS

* evidence.detail only Reference(FRDocumentReferenceDocument)

// Slicing sur stage.type : le binding required ne s'applique qu'au slice healthStatus, le staging clinique reste possible
* stage ^slicing.discriminator.type = #pattern
* stage ^slicing.discriminator.path = "type"
* stage ^slicing.rules = #open
* stage ^slicing.description = "Slice sur stage.type : statut clinique du patient (LOINC 11323-3) et autres stadifications"

* stage contains statutClinique 0..1 MS
* stage[statutClinique] ^short = "Statut clinique du patient"
* stage[statutClinique].type 1..1 MS
* stage[statutClinique].type = $LNC#11323-3 "Statut clinique du patient"
* stage[statutClinique].summary 1..1 MS
* stage[statutClinique].summary ^short = "Statut clinique du patient"
* stage[statutClinique].summary from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis (required)

* note MS
* note ^short = "Commentaire"