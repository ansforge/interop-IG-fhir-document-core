Profile: FRConditionDocument
Parent: FRCoreConditionProfile
Id: fr-condition-document
Title: "Condition - FR Condition Document"
Description: "FRConditionDocument est un profil utilisé pour décrire un problème du patient (une pathologie par exemple)."

* extension contains FRActorExtension named author 0..1
* extension[author].extension[type].valueCode = #AUT
* extension[author].extension[actor].valueReference only Reference(FRPractitionerRoleDocument)
* category 1..1
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* evidence.detail only Reference(FRDocumentReferenceDocument)