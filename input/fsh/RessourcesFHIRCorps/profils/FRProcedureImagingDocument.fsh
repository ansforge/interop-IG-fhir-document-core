Profile: FRProcedureImagingDocument
Parent: FRProcedureDocument
Id: fr-procedure-imaging-document
Title: "Procedure - FR Procedure Imaging Document"
Description: "FRProcedureImagingDocument permet d'enregistrer les différents paramètres de l’acquisition d’image :
acte d'imagerie, localisation anatomique / latéralité / topographie, d'autres paramètres de l'acte "

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

// référence à la demande d'examen d'imagerie contenant l'Accession Number comme identifiant
* basedOn  0..* MS
* basedOn ^slicing.discriminator.type = #pattern  
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains serviceRequestAccessionNumber 0..*
* basedOn[serviceRequestAccessionNumber] only Reference(FRServiceRequestDocument)
* basedOn[serviceRequestAccessionNumber] ^short = "Référence à la demande d'examen contenant l'Accession Number"

* partOf only Reference(FRMedicationAdministrationDocument)
* partOf ^short = "Produits administrés pendant l'acte d'imagerie"

* code ^short = "Code de l'acte d'imagerie"
* code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-document-imagerie-cisis (required)


* reasonReference only Reference(FRDiagnosticReportImagingDocument)

* bodySite from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-localisation-anatomique-cisis
* bodySite ^short = "Localisation anatomique"
* bodySite.extension contains http://hl7.org/fhir/StructureDefinition/procedure-targetBodyStructure named precisionTopographique 0..1 MS
* bodySite.extension[precisionTopographique] ^short = "Modificateurs topographiques"
* bodySite.extension[precisionTopographique].valueReference only Reference(FRBodyStructureDocument) 

* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer ^slicing.ordered = false

* performer contains
    intervenant 0..* and
    dispositifMedical 0..*

* performer[intervenant] ^short = "Intervenant"
* performer[intervenant].actor only Reference(FRPractitionerRoleDocument)
* performer[dispositifMedical] ^short = "Dispositif médical utilisé lors de l'acte d'imagerie"
* performer[dispositifMedical].actor only Reference(Device)

* complication.text ^short = "Complications survenues au cours de l'acte d'imagerie"