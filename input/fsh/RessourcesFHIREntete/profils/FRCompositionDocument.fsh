Profile: FRCompositionDocument
Parent: composition-eu-core
Id: fr-composition-document
Title: "FR Composition Document"
Description: "Ce profil est utilisé pour représenter un document médical."

* ^extension[$imposeProfile].valueCanonical = Canonical(http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/clinical-document-composition)
* meta 1..1 MS
* meta.profile 1..* MS
//Composition.meta.profile : templateId
* meta.profile ^short = "Modèle du document et version du modèle."
* meta.profile ^slicing.discriminator.type = #value
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.description = "Modèle du document et version du modèle"
* meta.profile contains canonicalEU 1..1  and 
    canonicalFR 1..1 and canonicalClinicalDocument 1..1

* meta.profile[canonicalEU] = Canonical(composition-eu-core)
* meta.profile[canonicalFR] = Canonical(fr-composition-document)
* meta.profile[canonicalClinicalDocument] = Canonical(clinical-document-composition)

* text MS

// Extensions absentes du profil Europe, reprises de clinical-document
* extension contains
    $data-enterer-extension named data-enterer 0..1 and
    $informant-extension named informant 0..* and
    $ParticipantExtension named participant 0..* MS and
    $consent-extension named consent 0..* and
    $event-basedOn named basedOn 0..*

// version-extension Europe
* extension[version] 1..1
* extension[version] ^short = "Numéro de version du document."
* extension[version] obeys comp-1

// diagnosticReportReference-extension Europe
* extension[diagnosticReport] ^short = "Pièces jointes"
* extension[diagnosticReport].value[x] only Reference(FRDiagnosticReportDocument)

// data-enterer-extension
* extension[data-enterer] ^short = "Opérateur de saisie"
* extension[data-enterer].extension[type] 1..1
* extension[data-enterer].extension[type] ^short = "Type de participation : opérateur de saisie"
* extension[data-enterer].extension[time] 1..1
* extension[data-enterer].extension[time] ^short = "Date de la saisie"
* extension[data-enterer].extension[party] ^short = "Opérateur"
* extension[data-enterer].extension[party].valueReference only Reference(FRPractitionerRoleDocument)

// informant-extension
* extension[informant] ^short = "Informateur"
* extension[informant].extension[type] 1..1 
* extension[informant].extension[type] ^short = "Type de participation : Informateur"
* extension[informant].extension[party] ^short = "Informateur"
* extension[informant].extension[party].valueReference only Reference(FRPractitionerRoleDocument or FRRelatedPersonDocument or FRPatientINSDocument or FRPatientDocument)

// information-recipient-extension Europe
* extension[informationRecipient] ^short = "Destinataire prévu du document."
* extension[informationRecipient].value[x] only Reference(FRPractitionerRoleDocument)

// participant-extension
* extension[participant] ^short = "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire."
* extension[participant].extension[type] 1..1 
* extension[participant].extension[type] ^short = "Type de participation"
* extension[participant].extension[type].valueCodeableConcept from FrValueSetParticipationTypeParticipant (required)
* extension[participant].extension[function] 0..1 
* extension[participant].extension[function] ^short = "Précision sur le rôle fonctionnel"
* extension[participant].extension[function].valueCodeableConcept from $JDV_J47-FunctionCode-CISIS (required)
* extension[participant].extension[time] 1..1 
* extension[participant].extension[time] ^short = "Date de début et/ou de fin de la participation"
* extension[participant].extension[party] ^short = "Identification du participant"
* extension[participant].extension[party].valueReference only Reference(FRPractitionerRoleDocument)
* extension[participant].extension[party] obeys comp-3

// basedOn-extension
* extension[basedOn] ^short = "Prescription ou Plan"

// Consent extension
* extension[consent] ^short = "Consentement associé au document."

* language 1..1 MS
* identifier ^short = "Identifiant du lot de versions du même document."
* identifier 1..1 MS
* status MS
* status ^short = "Statut du document"
* status.extension contains $R5-Composition-status named R5-Composition-status 0..1
* type only CodeableConcept
* type MS
* type ^short = "Type de document"
* category ^short = "Catégorie du document"
// Slicing category : classe du document, discriminée par le binding required sur le JDV_J06
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains classCode 1..1
* category[classCode] ^short = "Classe du document"
* category[classCode] from $JDV_J06-XdsClassCode-CISIS (required)
* title MS
* title ^short = "Titre du document CDA"
* title ^definition = "Les volets de contenus du CI-SIS fixent parfois le titre du document. Dans les autres cas, le titre provient soit de la saisie directe par le professionnel ou le patient/usager, soit d’une valeur par défaut générée par le logiciel et modifiable par le professionnel ou le patient/usager."
* subject 1.. MS
* subject ^short = "Patient / Usager"
* subject only Reference(FRPatientINSDocument or FRPatientDocument)
* subject.reference 1.. MS
* date MS
* date ^short = "Date de création du document."
* confidentiality 1..1 MS
* confidentiality ^short = "Niveau de confidentialité du document."
* author MS
* author ^short = "Auteur du document"
* author ^definition = "author permet d’enregistrer un auteur du document. Un document peut avoir un ou plusieurs auteurs. Un professionnel de santé auteur d'un document est toujours dans une situation d'exercice donnée (FRPractitionerRoleDocument)."
* author only Reference(FRPractitionerRoleDocument or FRPatientINSDocument or FRPatientDocument or FRDeviceAuteurDocument)
* author.extension contains fr-author-time-extension named time 1..1

// Responsable du document : legalAuthenticator
* attester[legalAuthenticator] 1..1
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time 1..1
* attester[legalAuthenticator].party 1..1
* attester[legalAuthenticator].party only Reference(FRPractitionerRoleDocument)
* attester[legalAuthenticator] ^short = "Responsable du document"

// Professionnel attestant la validité du contenu du document : authenticator
* attester[validator].mode = #professional
* attester[validator].time 1..1
* attester[validator].party 1..1
* attester[validator].party only Reference(FRPractitionerRoleDocument)
* attester[validator] ^short = "Professionnel attestant la validité du contenu du document"

* event 1..*
* event ^short = "Evènement documenté et notamment le cadre d'exercice."
* event.period ^short = "Date et heure de l’évènement documenté"
* event.code ^short = "Code de l'évènement documenté"

// Extension performer : event.detail ne permet pas de porter l'exécutant de l'évènement (hors de son périmètre), d'où l'ajout de cette extension
* event.extension contains fr-performer-event-extension named performer 0..1
* event.extension[performer] ^short = "Exécutant de l'évènement documenté"
// En FHIR R4, Composition.event ne dispose d'aucun élément natif permettant d'identifier l'évènement documenté principal d'où l'ajout de cette extension isPrincipal (boolean, true si l'évènement est principal) sert donc de discriminant au slicing ci-dessous.
// TODO : à supprimer lors du passage à une version ultérieure de FHIR (R5) au profit de #position (discriminant sur la position de l'event).
* event.extension contains fr-is-principal-event-extension named isPrincipal 0..1
* event.extension[isPrincipal] ^short = "Indique si l'évènement documenté est l'évènement principal"
// Slicing event : évènement documenté principal, discriminé par la valeur de l'extension isPrincipal
* event ^slicing.discriminator.type = #value
* event ^slicing.discriminator.path = "extension('https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-is-principal-event-extension').value"
* event ^slicing.rules = #open

* event contains principalEvent 1..1
* event[principalEvent] ^short = "Evènement documenté principal"
//* event[principalEvent].id ^short = "Identifiant de l'évènement documenté"
* event[principalEvent].code ^short = "Code de l'évènement documenté"
* event[principalEvent].period 1..1 
* event[principalEvent].period ^short = "Date et heure de l’évènement documenté principal"
* event[principalEvent].extension[isPrincipal] 1..1
* event[principalEvent].extension[isPrincipal].valueBoolean = true
* event[principalEvent].extension[performer] 1..1 
* event[principalEvent].extension[performer] ^short = "Exécutant de l'évènement documenté principal"
* event[principalEvent].detail.identifier ^short = "Identifiant de l'évènement documenté"
* relatesTo ^short = "Document de référence (à remplacer, transformé, …)."
* relatesTo.target[x] only Identifier or Reference(FRCompositionDocument)
* relatesTo.targetIdentifier.type 1..1
* relatesTo.targetIdentifier.system 1..1
* relatesTo.targetIdentifier.value 1..1

// Slicing relatesTo (auparavant défini dans clinical-document)
* relatesTo ^slicing.discriminator.type = #value
* relatesTo ^slicing.discriminator.path = "code"
* relatesTo ^slicing.rules = #open
* relatesTo contains
    replaced_document 0..1 and
    transformed_document 0..1 and
    appended_document 0..*

* relatesTo[replaced_document].code = #replaces

* relatesTo[transformed_document].code = #transforms

* relatesTo[appended_document].code = #appends
* relatesTo[appended_document].target[x] only Identifier
* relatesTo[appended_document].targetIdentifier.use 1..1

* custodian 1..1 MS
* custodian ^short = "Structure chargée de la conservation du document"
* custodian only Reference(FROrganizationDocument)
* encounter 1..1 MS
* encounter ^short = "Association du document à une prise en charge."
* encounter only Reference(FREncounterCareDocument)

* section 1..* MS
// Binder section.code sur le ValueSet
* section.code 1..1 MS
* section.code from $jdv-section-document-cisis
* section.title 1..1 MS
* section.text 1..1 MS
* section obeys comp-4

// Libellés des éléments de section
* section ^short = "Section"
* section.id ^short = "Identifiant technique"
* section.title ^short = "Titre de la section"
* section.code ^short = "Code de la section"
* section.author ^short = "Auteur de la section"
* section.focus ^short = "Sujet de la section (si différent du sujet de la composition)"
* section.text ^short = "Partie narrative de la section (pour affichage à un humain)"
* section.mode ^short = "Type de section (Liste de référence, Liste à date, Liste des modifications)"
* section.orderedBy ^short = "Ordre des entrées"
* section.entry ^short = "Entrée"
* section.emptyReason ^short = "Raison pour laquelle la section est vide"
* section.section ^short = "Sous-section"

// section-note-extension Europe
* section.extension[section-note] ^short = "Commentaires."
* section.extension[section-note] ^definition = "Permet de porter des commentaires dans chaque section."

/// INVARIANTS
Invariant: comp-1
Description: "La valeur de l'extension versionNumber doit être un entier."
Expression: "value.matches('^[0-9]+$')" 
Severity: #error

Invariant: comp-3
Description: "La valeur du PractitionerRole.code dans l'extension[party]' doit être 'PROV' ou 'AGNT'."
Expression: "value.resolve().code.coding.code.contains('PROV') or value.resolve().code.coding.code.contains('AGNT')"
Severity: #error

Invariant: comp-4
Description: "Une section ne peut pas contenir à la fois des entrées et des sous-sections."
Expression: "entry.exists().not() or section.exists().not()"
Severity: #error
