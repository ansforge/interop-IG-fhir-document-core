Profile: FRObservationVitalSignsPanelDocument
Parent: http://hl7.org/fhir/StructureDefinition/vitalspanel
Id: fr-observation-vital-signs-panel-document
Title: "Observation - FR Observation Vital Signs Panel Document"
Description: "FRObservationVitalSignsPanelDocument permet de regrouper des informations relatives aux mesures cliniques du patient."

//* ^extension[$imposeProfile].valueCanonical = Canonical()
* identifier ^short = "Identifiant"
* code MS 
* status MS
* status ^short = "Statut"
* status = #final
* effective[x] only dateTime
* effectiveDateTime MS
  * ^short = "Date"

* extension contains FRActorExtension named author 0..1
* extension[author] ^short = "Auteur de l’observation"
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(
    FRPractitionerRoleDocument
    or FROrganizationDocument
    or FRPractitionerRoleDocument
    or FRPatientINSDocument
    )
* hasMember MS 
* hasMember only Reference (FRObservationVitalSignsDocument)