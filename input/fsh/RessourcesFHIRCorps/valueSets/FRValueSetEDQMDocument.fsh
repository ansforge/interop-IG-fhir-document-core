ValueSet: FRValueSetEDQMDocument
Id: fr-vs-edqm-document
Title: "ValueSet - FR ValueSet EDQM Container Document"
Description: "ValueSet basé sur le CodeSystem EDQM Standard Terms fourni par le SMT, restreint à la classe CON (Récipient). Utilisé pour l'unité de la quantité dispensée."

* include codes from system https://smt.esante.gouv.fr/terminologie-standardterms
    where concept is-a #CON
* ^experimental = false
