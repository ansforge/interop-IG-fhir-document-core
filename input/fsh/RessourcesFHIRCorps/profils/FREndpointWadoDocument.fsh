Profile: FREndpointWadoDocument
Parent: Endpoint
Id: fr-endpoint-wado-document
Title: "Endpoint - FR Endpoint Wado Document"
Description: "FREndpointWadoDocument permet d'enregistrer les références Wado, les types de média et le type de connection IHE IID"

* connectionType ^short = "La référence Wado est basée sur le profil IHE Invoke Image Display"
* connectionType.code = #ihe-iid
* connectionType.display = "IHE IID"
* payloadMimeType 1..1
* payloadMimeType ^short = "Type de média"
* payloadMimeType = #application/dicom
* address ^short = "Référence WADO (url permettant d’accéder aux images sur la Drim box source Cette url, basée sur le profil IHE Invoke Image Display)"