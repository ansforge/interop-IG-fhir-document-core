Profile: FRSpecimenDocument
Parent: Specimen
Id: fr-specimen-document
Title: "Specimen - FR Specimen Document"
Description: "FRSpecimenDocument est un profil utilisé pour décrire le prélèvement et l'échantillon biologique (le matériel)."

* identifier ^short = """
Identifiant de l'échantillon : L'identifiant de l'échantillon est éventuellement multiple (premier identifiant attribué par le préleveur, puis réidentification par le laboratoire).
L'un des identifiants est visible sur l'échantillon matériel (par exemple en code barre sur le tube ou le bocal).
"""
* type 1..1
* type ^short = "Échantillon prélevé (Si specimen provenant du corps du patient)"
// Si specimen provenant du corps du patient
* type from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-specimen-type-cisis (extensible)
* status ^short = "Statut du specimen"
* processing.additive ^short = "Produit utilisé"
* processing.additive only Reference(Substance)
// Si specimen extérieur au patient
* subject 1..1
* subject only Reference(Substance)
* subject ^short = "Source de l’échantillon(substance) : Si specimen extérieur au patient"
* receivedTime ^short = "Date de réception de l'échantillon"
* parent only Reference(FRSpecimenDocument)
* collection.method ^short = "Actes de prélèvement"
* collection.collector only Reference(FRPractitionerRoleDocument or FRPractitionerDocument)
* collection.collector ^short = "Organisation prélevante"
* collection.collected[x] ^short = """
Date du prélèvement :
La date et heure de prélèvement doit être renseignée si elle est connue. En cas d'acte ponctuel, c'est la date et heure de fin (élément collectedPeriod.end) qui horodate le prélèvement.
"""
* collection.bodySite ^short = "Localisation anatomique"
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* container ^short = "Dispositif utilisé"
* container.type 1..1
* container.type ^short = "Code du dispositif"
// Ajout de l'extension R5 :  ExtensionSpecimen_Container_Device
  * extension contains $extension-Specimen.container.device named device 0..*
  * extension[device] ^short = "Dispositif utilisé"