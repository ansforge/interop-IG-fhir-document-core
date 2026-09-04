Profile: FRServiceRequestDocument
Parent: ServiceRequest
Id: fr-service-request-document
Title: "ServiceRequest - FR Service Request Document"
Description: "FRServiceRequestDocument profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins."
// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* category MS
* category ^short = "Catégorie de la demande"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

* identifier contains accessionNumber 0..1
* identifier[accessionNumber] only FRAccessionNumberIdentifierDocument
* identifier[accessionNumber] ^short = "Accession Number de la demande d’examen d’imagerie"

* intent MS
* intent ^short = "Intention de la demande : order, plan ou proposal"
* obeys fr-invariant-intent
* code 1..1 MS
* code ^short = "Type de la demande : Si aucun code n'est trouvé dans des terminologies existantes, utiliser le code : GEN-092.04.20 'Autre demande d’examen ou de suivi'"
//* code = $terminologie-cisis#GEN-092.04.20 "Autre demande d’examen ou de suivi"
* occurrence[x] 1..1 MS
* occurrence[x] ^short = "Date prévisionnelle de l'examen, du suivi, de l'objectif"
* orderDetail MS
* orderDetail ^short = "Informations complémentaires sur la demande d'acte, par exemple : INR cible."

// * supportingInfo ^short = "Résultat de la demande"
// * supportingInfo only Reference(Observation)

* bodySite MS
* bodySite ^short = "Cible"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* extension contains FRMethodExtension named method 0..* and
     FRActorExtension named author 0..1 and 
     http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.reason named reason 0..*

* extension[method] MS
* extension[method] ^short = "Méthode"
* extension[author] ^short = "Auteur de la demande"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or Device or FRDeviceAuteurDocument or FROrganizationDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)

* requester MS
* requester ^short = "Prescripteur"

* note MS
* note ^short = "Justification de la demande d’examen / Finalité de l'examen"

Invariant: fr-invariant-intent
Description: "L'intention doit être order, plan ou proposal."
Expression: "intent = 'order' or intent = 'plan' or intent = 'proposal'"
Severity: #error