Profile: FRAdvanceDirectiveDocument
Parent: FRCoreConsentProfile
Id: fr-advance-directive-document
Title: "Consent - FR Advance directive Document"
Description: "FRAdvanceDirectiveDocument permet  d’indiquer si les directives anticipées du patient.
Article L1111-11 du Code de la Santé Publique : 
« Toute personne majeure peut rédiger des directives anticipées pour le cas où elle serait un 
jour hors d'état d'exprimer sa volonté. Ces directives anticipées expriment la volonté de la personne 
relative à sa fin de vie en ce qui concerne les conditions de la poursuite, de la limitation, 
de l'arrêt ou du refus de traitement ou d'acte médicaux.»"

* scope = $consentscope#adr "Advanced Care Directive"
* provision.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-directive-anticipee-cisis (required)
* sourceReference only Reference(FRDocumentReferenceDocument)