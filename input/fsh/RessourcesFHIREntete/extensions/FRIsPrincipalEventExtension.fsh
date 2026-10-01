Extension: FRIsPrincipalEventExtension
Id: fr-is-principal-event-extension
Title: "FR Is Principal Event Extension"
Description: "Extension permettant d'indiquer si l'évènement documenté est l'évènement documenté principal. Vaut true pour l'évènement principal. Ajout d'un indicateur à l'élément event d'une Composition."

* ^context.type = #element
* ^context.expression = "Composition.event"

* value[x] only boolean
* value[x] 1..1
