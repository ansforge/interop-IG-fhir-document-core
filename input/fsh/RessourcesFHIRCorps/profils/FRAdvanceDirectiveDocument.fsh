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

* status ^short = "Statut"
* dateTime ^short = "Date de la directive anticipée"
* scope = $consentscope#adr "Advanced Care Directive"
* scope ^short = "Consentement de type directive anticipée"
* provision.code from https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-directive-anticipee-cisis (required)
* provision.code ^short = "Type de la directive anticipée"
* provision.type ^short = "Procédure autorisée ou pas : le type de la directive identifiée permet d'indiquer l'autorisation ou la non-autorisation. Si l'élément `provision.code` est « Autre directive », l'élément `provision.type` n'est pas présent. Si l'élément `provision.code` est « Directives anticipées », l'élément `provision.type` n'est pas présent et un document encodé en B64 est encapsulé dans l'élément `sourceAttachment`."
* sourceReference only Reference(FRDocumentReferenceDocument)
* source[x] ^short = "Documents"
* sourceReference ^short = "Référence à un document externe"
* sourceAttachment ^short = "Document encapsulé en B64"
* sourceAttachment.data ^short = "Représentation en B64"
* sourceAttachment.url ^short = "URI"