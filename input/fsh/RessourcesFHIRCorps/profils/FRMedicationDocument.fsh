Profile: FRMedicationDocument
Parent: FRCoreMedicationProfile
Id: fr-medication-document
Title: "Medication - FR Medication Document"
Description: "FRMedicationDocument permet de décrire un médicament ou un vaccin."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code MS
* code.coding from $fr-core-vs-medication (required) 

// Les slices d'extension ci-dessous sont définies dans les profils parents (FRCoreMedicationProfile / MedicationEuCore)

//Nom de marque du produit : Extension IHE
* extension[productName] 1..1 MS
* form MS
* form from FRValueSetEDQMFormDocument (required)
* batch.lotNumber MS 
* batch.expirationDate MS 

//Code de regroupement ATC et Code du produit de santé conditionné (CIP) : Extension IHE
* extension[classification] MS
 // Extension IHE pour les caractéristiques du médicament
* extension[characteristic] ^short = "Caractéristique du médicament."

* ingredient
  * itemCodeableConcept MS
  * itemCodeableConcept.text MS
  * itemReference MS
  * itemReference only Reference(FRMedicationDocument)

  * strength MS
    * numerator 1..1 MS
    * denominator 1..1 MS
    // Ajout de l'extension : Substance concernée
    * extension[basisOfStrengthSubstance] MS
    * extension[basisOfStrengthSubstance] ^short = "Substance concernée."

// Ajout des éléments suivants : Substance concernée / Unité de présentation
* extension[unitOfPresentation] MS
* extension[sizeOfItem] MS

* extension[unitOfPresentation] ^short = "Unité de présentation du produit de santé (comprimé, ampoule, tube). En général, le plus petit objet dénombrable du package.
EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe UOP (Unit of Presentation).."
* extension[sizeOfItem] ^short = "Quantité de produit par unité (ex : 3 ml / 1 flacon)."

// Extensions européennes : Device et PackageType
* extension[device] MS
* extension[packageType] MS

* extension[device] ^short = "Dispositif d'administration inclus dans le produit. Les dispositifs qui ne sont pas contenus dans le conditionnement du médicament ne sont pas pris en compte."
* extension[packageType] ^short = "Conditionnement primaire (ampoule, plaquette,…) EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe CON (Récipient)."