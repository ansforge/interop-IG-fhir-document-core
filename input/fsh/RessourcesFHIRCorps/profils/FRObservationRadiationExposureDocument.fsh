Profile: FRObservationRadiationExposureDocument
Parent: Observation
Id: fr-observation-radiation-exposure-document
Title: "Observation - FR Observation Radiation Exposure Document"
Description: "FRObservationRadiationExposureDocument permet d'enregistrer les informations relatives à l’exposition du patient aux rayonnements et les informations de radioprotection."

* identifier ^short = "Identifiant de l'exposition aux radiations"

// référence à la demande d'examen d'imagerie contenant l'Accession Number comme identifiant
* basedOn MS
* basedOn ^slicing.discriminator.type = #type  
* basedOn ^slicing.discriminator.path = "$this"
* basedOn ^slicing.rules = #open
* basedOn contains serviceRequestAccessionNumber 0..*
* basedOn[serviceRequestAccessionNumber] ^short = "Référence à la demande d'examen contenant l'Accession Number"
* insert serviceRequestAccessionNumber( serviceRequestAccessionNumber )

* partOf ^short = "Ressources liées à cette exposition aux radiations (administration de produits radiopharmaceutiques, techniques d'imagerie)" 
* partOf only Reference(FRMedicationAdministrationDocument or FRProcedureImagingDocument)

* code MS
  * coding 1..*
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "code"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * coding contains radiationDose 1..1
  * coding[radiationDose].system
    * ^fixedUri = $LNC
  * coding[radiationDose].code
    * ^fixedCode = #73569-6

* subject 1..1 MS
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* subject ^short = "Patient exposé aux radiations"

* effective[x] only dateTime
* effective[x] 1..1 MS
* effective[x] ^short = "Date de début de l'exposition aux radiations"

* bodySite 1..1 MS
* bodySite ^short = "Localisation anatomique en SNOMED CT"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

// Mesures quantitatives telles que les mesures linéaires, les mesures de surface, de volume et numériques
* component ^short = "Mesures quantitatives liées à l'exposition aux rayonnements"
* component.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis (required)
* component.value[x] 1..1 MS
* component.value[x] only Quantity
* component.valueQuantity MS
* component.valueQuantity ^short = "Quantité mesurée"

// Device utilisé pour l’irradiation
* device MS
* device only Reference(Device)
* device ^short = "Modalité d’irradiation utilisée pour l’exposition aux rayonnements"

* derivedFrom ^short = "Étude d'imagerie à partir de laquelle cette observation est dérivée"
* derivedFrom only Reference(FRImagingStudyDocument)

// Irradiation Authorizing Person
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "reference"
* performer ^slicing.rules = #closed

* performer contains professionnelAutorisantExposition 1..1 MS
* performer[professionnelAutorisantExposition] only Reference(FRPractitionerRoleDocument)
* performer 1..1 MS
* performer[professionnelAutorisantExposition] ^short = "Identité du professionnel de santé ayant donné l'autorisation de l'exposition du patient aux rayonnements"