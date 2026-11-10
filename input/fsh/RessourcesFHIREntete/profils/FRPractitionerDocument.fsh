Profile: FRPractitionerDocument
Parent: FRCorePractitionerProfile
Id: fr-practitioner-document
Title: "FR Practitioner Document"
Description: "Ce profil permet de décrire un professionnel de santé dans le cadre d'un document médical"
* identifier 1..* 
* name 1..1
* name only fr-human-name-document
  * family 1..1
  * given 0..1 

// Savoir-faire / rôle

// Rôle (Profession 41 et 99) 
* qualification contains role 0..1
* qualification[role].code.coding from FRValueSetRolePriseCharge (required)