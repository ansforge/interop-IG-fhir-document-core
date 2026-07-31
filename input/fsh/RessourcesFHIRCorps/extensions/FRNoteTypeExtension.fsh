Extension: FRNoteTypeExtension
Id: fr-note-type-extension
Title: "FR Note Type Extension"
Description: "Extension permettant de préciser le type d'information contenu dans une note associée à une demande d'examen d'imagerie."

* ^context.type = #element
* ^context.expression = "ServiceRequest.note"

* value[x] only code
* valueCode from FRValueSetNoteType


ValueSet: FRValueSetNoteType
Id: fr-vs-note-type
Title: "FR ValueSet Imaging Note Type"
Description: "ValueSet définissant les types d'informations pouvant être associés aux notes d'une demande d'examen d'imagerie."

* include codes from system FRCSNoteType

CodeSystem: FRCSNoteType
Id: fr-cs-note-type
Title: "FR CodeSystem Note Type"
Description: "CodeSystem définissant les types d'informations associés aux notes d'une demande d'examen d'imagerie."

* #finaliteExamen "Finalité de l'examen" "Finalité de l'examen d'imagerie"
* #justificationDemande "Justification de la demande" "Justification de la demande d'examen d'imagerie"