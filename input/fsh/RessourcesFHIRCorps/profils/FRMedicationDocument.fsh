Profile: FRMedicationDocument
Parent: Medication
Id: fr-medication-document
Title: "Medication - FR Medication Document"
Description: "FRMedicationDocument permet de décrire un médicament ou un vaccin."

//* ^extension[$imposeProfile].valueCanonical = Canonical()

* code 1..1 MS
  * ^short = "Code du produit de santé"
* code.coding from FRValueSetMedicationTranslationDocument (required) 

//Nom de marque du produit : Extension IHE
* extension contains $ihe-ext-medication-productname named productName 1..1 MS
* extension[productName] ^short = "Nom de marque du produit." 
* form MS
* form from FRValueSetEDQMFormDocument (required)
* batch.lotNumber MS 
  * ^short = "Numéro de lot"
* batch.expirationDate MS 
  * ^short = "Date d'expiration du produit"

//Code de regroupement ATC et Code du produit de santé conditionné (CIP) : Extension IHE
* extension contains $ihe-ext-medication-classification named classification 0..* MS
* extension[classification] ^short = "Classification ATC."
 // Extension IHE pour les caractéristiques du médicament
* extension contains $ihe-ext-medication-characteristic named characteristic  0..*
* extension[characteristic] ^short = "Caractéristique du médicament."

* ingredient
  * itemCodeableConcept MS
  * itemCodeableConcept from https://smt.esante.gouv.fr/terminologie-sms?vs
  * itemCodeableConcept ^short = "Code SMS de la substance active"
  * itemCodeableConcept.text MS
  * itemCodeableConcept.text ^short = "Nom de la substance"
  * itemReference MS
  * itemReference only Reference(FRMedicationDocument)

  * strength MS
  * strength ^short = "Quantité de substance présente dans le médicament"
    * numerator 1..1 MS
    * denominator 1..1 MS
    // Ajout de l'extension : Substance concernée
    * extension contains $ihe-ext-medication-strengthsubstance named basisOfStrengthSubstance 0..1 MS
    * extension[basisOfStrengthSubstance] ^short = "Substance concernée."

// Ajout des éléments suivants : Substance concernée / Unité de présentation
* extension contains
    $ihe-ext-medication-unitofpresentation named unitOfPresentation 0..1 MS and
    $ihe-ext-medication-sizeofitem named sizeOfItem 0..1 MS

* extension[unitOfPresentation] ^short = "Unité de présentation du produit de santé (comprimé, ampoule, tube). En général, le plus petit objet dénombrable du package.
EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe UOP (Unit of Presentation).."
* extension[sizeOfItem] ^short = "Quantité de produit par unité (ex : 3 ml / 1 flacon)."