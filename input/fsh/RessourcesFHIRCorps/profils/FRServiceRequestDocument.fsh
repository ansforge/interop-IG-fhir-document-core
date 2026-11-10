Profile: FRServiceRequestDocument
Parent: FRCoreServiceRequestProfile
Id: fr-service-request-document
Title: "ServiceRequest - FR Service Request Document"
Description: "FRServiceRequestDocument profil permet de porter des demandes d'examens (analyses biologiques, évaluations, étude d'imagerie, etc…) ou de suivis particuliers à programmer dans le cadre d'un plan de soins."

* obeys fr-invariant-intent

* extension contains FRActorExtension named author 0..1 and
     http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.reason named reason 0..*
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or Device or FRDeviceAuteurDocument or FROrganizationDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)

Invariant: fr-invariant-intent
Description: "L'intention doit être order, plan ou proposal."
Expression: "intent = 'order' or intent = 'plan' or intent = 'proposal'"
Severity: #error