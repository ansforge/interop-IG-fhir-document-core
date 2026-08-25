Profile: FRPatientINSDocument
Parent: FRCorePatientINSProfile
Id: fr-patient-ins-document
Title: "FR Patient INS Document"
Description: "Ce profil représente le patient concerné par le document."

* contact
  * name 1..1 
  * name only fr-human-name-document
  * address 0..1
// relationship
  * relationship[RelationType] from $JDV_J11_RelationPatient_CISIS (required)
  * relationship[RelationType].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R216-HL7RoleCode/FHIR/TRE-R216-HL7RoleCode"

  * relationship[Role] from $jdv-role-informateur-cisis (required)
  * relationship[Role].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R260-HL7RoleClass/FHIR/TRE-R260-HL7RoleClass"

* extension contains
    $sexForClinicalUse named sex-for-clinical-use 0..*
* extension[sex-for-clinical-use] ^short = "Sexe clinique du patient"

* generalPractitioner only Reference(FRPractitionerDocument)