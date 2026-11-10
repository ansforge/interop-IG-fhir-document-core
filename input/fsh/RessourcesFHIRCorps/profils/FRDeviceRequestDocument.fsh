Profile: FRDeviceRequestDocument
Parent: DeviceRequest
Id: fr-device-request-document
Title: "DeviceRequest - FR Device request Document"
Description: "FRDeviceRequestDocument représente une demande de dispositif médical (DM) qui n’a pas encore été dispensé."

// Identifiant de la fourniture du DM
* identifier ^short = "Identifiant de la fourniture du DM - Sous la forme UID (UUID ou OID)"
// Date d'utilisation ou de présence chez le patient
// Nombre de renouvellement(s) possible(s)
* occurrenceTiming ^short = "Date d'utilisation ou de présence chez le patient"
* occurrenceTiming.repeat.count ^short = "Nombre de renouvellement(s) possible(s)"
// Durée d'utilisation
* occurrencePeriod ^short = "Durée d'utilisation"
// Quantité
* parameter 0..1
* parameter.valueQuantity ^short = "Quantité"
// Prescripteur
* requester ^short = "Prescripteur"
* requester only Reference(FRPractitionerRoleDocument)
// Dispositif médical
* codeReference only Reference(Device)
* codeReference ^short = "Dispositif médical"
// Raisons liées à l'utilisation du DM
* reasonReference
  * ^short = "Raisons liées à l'utilisation du dispositif médical"
* reasonReference only Reference(Observation or FRConditionDocument or FRObservationPreventionDocument or FRObservationALDDocument or FRObservationWorkRelatedAccidentDocument)
* extension contains FRCoreNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "DM prescrit n'est remboursable / remboursable"