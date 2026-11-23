Profile: FRMedicationDocument
Parent: FRCoreMedicationProfile
Id: fr-medication-document
Title: "Medication - FR Medication Document"
Description: "FRMedicationDocument permet de décrire un médicament ou un vaccin."
 
//Nom de marque du produit : Extension IHE
* extension[productName] 1..1
* extension[unitOfPresentation] ^short = "Unité de présentation du produit de santé (comprimé, ampoule, tube)"
* extension[sizeOfItem] ^short = "Quantité de produit par unité (ex : 3 ml / 1 flacon)"
* extension[device] ^short = "Dispositif d'administration inclus dans le produit"
* extension[packageType] ^short = "Conditionnement primaire (ampoule, plaquette…)"
* form from FRValueSetEDQMFormDocument (required)
* ingredient
  * itemReference only Reference(FRMedicationDocument)
  * strength
    * numerator 1..1
    * denominator 1..1
    * extension[basisOfStrengthSubstance] ^short = "Substance concernée"