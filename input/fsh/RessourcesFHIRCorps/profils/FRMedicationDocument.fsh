Profile: FRMedicationDocument
Parent: FRCoreMedicationProfile
Id: fr-medication-document
Title: "Medication - FR Medication Document"
Description: "FRMedicationDocument permet de décrire un médicament ou un vaccin."
 
//Nom de marque du produit : Extension IHE
* extension[productName] 1..1
* form from FRValueSetEDQMFormDocument (required)
* ingredient
  * itemReference only Reference(FRMedicationDocument)
  * strength
    * numerator 1..1
    * denominator 1..1