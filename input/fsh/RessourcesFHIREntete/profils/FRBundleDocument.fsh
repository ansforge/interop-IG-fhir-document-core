/// INVARIANTS
Invariant:  bdle-document-1
Description: "Un Bundle DOIT inclure une et une seule ressource Composition."
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

// PROFILE
Profile: FRBundleDocument
Parent: Bundle
Id: fr-bundle-document
Title: "FR Bundle Document"
Description: "Ce profil permet d’assembler les éléments de l’en-tête et du corps d’un document."
* obeys bdle-document-1
* identifier 1..
* identifier ^short = "Identifiant unique du document"
* type = #document
* timestamp 1..1

* entry MS
// Slicing sur entry
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Ressource Entry dans le FRBundleDocument"
* entry ^definition = "Une ressource Entry incluse dans le bundle de ressources du document"
* entry ^comment = "Doit contenir la Composition comme première entrée"

* entry.fullUrl 1.. MS
// Définition de l'entrée composition
* entry contains composition 1..1
* entry[composition].resource only FRCompositionDocument

// Définition de l'entrée patient
* entry contains patient 1..1
* entry[patient].resource only FRPatientINSDocument or FRPatientDocument