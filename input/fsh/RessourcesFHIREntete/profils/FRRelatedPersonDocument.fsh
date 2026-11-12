Profile: FRRelatedPersonDocument
Parent: FRCoreRelatedPersonProfile
Id: fr-related-person-document
Title: "FR RelatedPerson Document"
Description: "Ce profil représente l'informateur non professionnel."

* relationship[Role] = $TRE_R260-HL7RoleClass#CON "Informateur"
* relationship[RelationType] 0..1
* relationship[RelationType] from $JDV_J11_RelationPatient_CISIS (required)
* name 1..1
* name only fr-human-name-document
  * given 0..1