Profile: FRDeviceUseStatementDocument
Parent: DeviceUseStatement
Id: fr-device-use-statement-document
Title: "DeviceUseStatement - FR Device Use Statement Document"
Description: "FRDeviceUseStatementDocument représente les informations sur un dispositif médical"

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// Identifiant
* identifier ^short = "Identifiant de la fourniture du DM."

// Date/heure de l'utilisation
* timing[x] only Timing or Period

// Dispensateur  
* extension contains FRActorExtension named performer 0..1
* extension[performer] ^short = "Dispensateur: référence au professionnel de santé ou à l'organisation ayant initié ou dispensé le dispositif"
* extension[performer].extension[type].valueCode = #PRF
* extension[performer].extension[actor].valueReference only Reference(FRPractitionerRoleDocument or FROrganizationDocument)

// Élément device
* device MS
* device only Reference(Device)
* device ^short = "Dispositif médical"

// Raisons liées à l'utilisation du DM
* reasonReference MS
  * ^short = "Raisons liées à l'utilisation du dispositif médical"
* reasonReference only Reference(Observation or FRConditionDocument or FRObservationPreventionDocument or FRObservationALDDocument or FRObservationWorkRelatedAccidentDocument)

* extension contains FRNotCoveredExtension named notCovered 0..1
* extension[notCovered] ^short = "DM n'est remboursable / remboursable"