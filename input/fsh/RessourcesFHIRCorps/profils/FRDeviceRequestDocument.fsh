Profile: FRDeviceRequestDocument
Parent: DeviceRequest
Id: fr-device-request-document
Title: "DeviceRequest - FR Device request Document"
Description: "FRDeviceRequestDocument représente une demande de dispositif médical (DM) qui n’a pas encore été dispensé."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Identifiant de la fourniture du DM
* identifier ^short = "Identifiant de la fourniture du DM - Sous la forme UID (UUID ou OID)"

// Date d'utilisation ou de présence chez le patient
* occurrence[x] MS
// Nombre de renouvellement(s) possible(s)
* occurrenceTiming MS
* occurrenceTiming ^short = "Date d'utilisation ou de présence chez le patient"
* occurrenceTiming.repeat.count MS
* occurrenceTiming.repeat.count ^short = "Nombre de renouvellement(s) possible(s)"

// Durée d'utilisation
* occurrencePeriod MS
* occurrencePeriod ^short = "Durée d'utilisation"

// Quantité
* parameter 0..1 MS
* parameter.valueQuantity MS
* parameter.valueQuantity ^short = "Quantité"

// Prescripteur
* requester MS
* requester ^short = "Prescripteur"
* requester only Reference(FRPractitionerRoleDocument)

// Dispositif médical
* codeReference MS
* codeReference only Reference(Device)
* codeReference ^short = "Dispositif médical"

// Raisons liées à l'utilisation du DM
* reasonReference MS
  * ^short = "Raisons liées à l'utilisation du dispositif médical"
* reasonReference only Reference(Observation or FRConditionDocument or FRObservationPreventionDocument or FRObservationALDDocument or FRObservationWorkRelatedAccidentDocument)

* extension contains FRNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "DM prescrit n'est remboursable / remboursable"