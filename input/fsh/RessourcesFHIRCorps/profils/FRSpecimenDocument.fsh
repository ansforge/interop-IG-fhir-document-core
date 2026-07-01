Profile: FRSpecimenDocument
Parent: Specimen
Id: fr-specimen-document
Title: "Specimen - FR Specimen Document"
Description: "FRSpecimenDocument est un profil utilisé pour décrire le prélèvement et l'échantillon biologique (le matériel)."

// mettre le bon canonical à partir de HL7 Europe Base and Core FHIR IG
//* ^extension[$imposeProfile].valueCanonical = Canonical()

* identifier ^short = """
Identifiant de l'échantillon : L'identifiant de l'échantillon est éventuellement multiple (premier identifiant attribué par le préleveur, puis réidentification par le laboratoire).
L'un des identifiants est visible sur l'échantillon matériel (par exemple en code barre sur le tube ou le bocal).
"""

* type 1..1 MS
* type ^short = "Échantillon prélevé (Si specimen provenant du corps du patient)"

// à discuter avec Nicolas RISS si on doit mettre le JDV en required extensible ou bien preferred
// Si specimen provenant du corps du patient :
* type from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-specimen-type-cisis (extensible)

* status MS
* status ^short = "Statut du specimen"

* processing.additive ^short = "Produit utilisé"
* processing.additive MS
* processing.additive only Reference(Substance)

// Si specimen extérieur au patient :
* subject 1..1 MS
* subject only Reference(Substance)
* subject ^short = "Source de l’échantillon(substance) : Si specimen extérieur au patient"

* receivedTime MS
* receivedTime ^short = "Date de réception de l'échantillon"

* parent only Reference(FRSpecimenDocument)

* collection MS
* collection.method ^short = "Actes de prélèvement"

* collection.collector only Reference(FRPractitionerRoleDocument or FRPractitionerDocument)
* collection.collector ^short = "Organisation prélevante"
* collection.collected[x] MS
* collection.collected[x] ^short = """
Date du prélèvement :
La date et heure de prélèvement doit être renseignée si elle est connue. En cas d'acte ponctuel, c'est la date et heure de fin (élément collectedPeriod.end) qui horodate le prélèvement.
"""

* collection.bodySite MS
* collection.bodySite ^short = "Localisation anatomique"
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* container MS
* container ^short = "Dispositif utilisé"
* container.type 1..1 MS
* container.type ^short = "Code du dispositif"