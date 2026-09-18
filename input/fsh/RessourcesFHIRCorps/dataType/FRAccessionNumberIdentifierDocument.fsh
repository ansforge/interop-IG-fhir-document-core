/* Ce DataType existe déjà côté HL7.
Lors de la publication de la version HL7 correspondante, remplacer
ce profil par la version officielle.*/ 
Profile: FRAccessionNumberIdentifierDocument
Parent: Identifier
Id: fr-accession-number-identifier-document
Title: "FR Accession Number Identifier Document"
Description: "DataType définissant l'Accession Number d'une demande d'examen. Il s'agit d'un identifiant unique attribué à chaque demande d'examen."

* type 1..1 MS
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.ordered = false
* type.coding contains v2-0203-coding 1..1 and dcm 0..1
* type.coding[v2-0203-coding] = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN 
* type.coding[dcm] = $DCM#121022 "Accession Number"

* system 0..1 MS
* system ^short = "L'espace de nommage pour l'identifiant"

* value 1..1 MS
* value ^short = "La valeur de l'identifiant"

RuleSet: serviceRequestAccessionNumber( slicename )
* basedOn[{slicename}] only Reference( FRServiceRequestImagingDocument )
  * identifier 1..1
  * identifier only FRAccessionNumberIdentifierDocument