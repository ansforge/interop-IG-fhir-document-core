Profile: FRDocumentReferenceDocument
Parent: DocumentReference
Id: fr-document-reference-document
Title: "DocumentReference - FR Document reference Document"
Description: "FRDocumentReferenceDocument restreint pour les documents PDF."

* identifier ^short = "Identifiant principal unique du document"
// Statut du document //
* docStatus  ^short = "Statut du document"
* docStatus = #final
// Type de document attaché //
* type 1..1
* type  ^short = "type du document"
* date ^short = "Quand cette référence a été créée"
// Document attaché encodé en Base64 //
* content ^short = "Document référencé"
* content.attachment ^short = "Document attaché"
* content.attachment.data ^short = "Representation en B64"
* content.attachment.url ^short = "URI"
* context.related ^short = "Ressources ou identifiants liés" 