/* Ce DataType existe déjà côté HL7 (Imaging Report Europe).
Lors de la publication de la version HL7 correspondante, remplacer
ce profil par la version officielle.*/ 
Profile: FRStudyInstanceUidIdentifierDocument
Parent: Identifier
Id: fr-study-instance-uid-identifier-document
Title: "FR Study Instance Uid Identifier Document"
Description: "DataType définissant l’UID de l’instance Study (0020,000D) d'une demande d'examen d'imagerie"
* system = "urn:dicom:uid"
* value 1..1
* type 0..1
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.ordered = false
* type.coding contains dcm 1..1
* type.coding[dcm] = http://dicom.nema.org/resources/ontology/DCM#110180 "Study Instance UID"


RuleSet: ImagingStudyImagingReference( slicename )
* basedOn[{slicename}] only Reference(FRServiceRequestImagingDocument)
  * identifier 1..1
  * identifier only FRStudyInstanceUidIdentifierDocument