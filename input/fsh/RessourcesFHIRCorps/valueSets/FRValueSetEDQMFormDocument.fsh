ValueSet: FRValueSetEDQMFormDocument
Id: fr-vs-edqm-form-document
Title: "ValueSet - FR ValueSet EDQM Form Document"
Description: "ValueSet basé sur le CodeSystem EDQM fourni par SMT. classe PDF (forme galénique)."

// pas trouvé dans la liste des systèmes externes de l'UTG HL7, à garder pour suivi futur
* include codes from system https://smt.esante.gouv.fr/terminologie-standardterms
    where concept is-a #PDF
* ^experimental = false
