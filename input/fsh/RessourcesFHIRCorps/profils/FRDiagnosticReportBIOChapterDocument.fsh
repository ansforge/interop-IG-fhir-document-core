Profile: FRDiagnosticReportBIOChapterDocument
Parent: FRDiagnosticReportDocument
Id: fr-diagnostic-report-bio-chapter-document
Title: "DiagnosticReport - FR Diagnostic Report BIO chapter Document"
Description: "FRDiagnosticReportBIOChapterDocument utilisé pour représenter un CR de biologie"

* extension[composition] ^short = "Composition du rapport de biologie"

// référence à la demande d'examen de biologie 
* basedOn MS
* basedOn only Reference(FRServiceRequestDocument)

* code MS 
* code ^short = "Type de document"
* code = $LNC#11502-2 "CR d'examens biologiques"
* category[typeResultat]
  * ^short = "Type de résultat de biologie"
* category[typeResultat] = $LNC#26436-6 "Biologie polyvalente"

* category contains chapitreBIO 1..*
* category[chapitreBIO] ^short = "Chapitre du compte-rendu de BIO"
* category[chapitreBIO] 
  * ^short = "Codes des chapitres du compte-rendu de BIO"
  * ^definition = "Le code du chapitre doit être issu du jeu de valeurs Circuit de la biologie (https://smt.esante.gouv.fr/terminologie-jeu-de-valeurs-circuit-de-la-biologie/) onglet ‘2.Chapitres LOINC’ et contenant les codes et libellés traduits en français pour la biologie."

* effective[x] ^short = "Date et heure de création du document"

* status ^short = "Statut du rapport de BIO (final, partial ...)"

* resultsInterpreter ^short = "Interpréteur de résultat primaire"

* result 1..* MS
* result ^short = "Résultats d'examen de biologie"
* result only Reference(FRObservationLaboratoryReportResultsDocument)

* conclusion ^short = "Si le CR de BIO ne comporte pas de sous-chapitres (les commentaires seront dans les sous-chapitres)."