Extension: FRPerformerEventExtension
Id: fr-performer-event-extension
Title: "FR Performer Event Extension"
Description: "Extension permettant d'ajouter l'exécutant de l'évènement documenté. Ajout d'un performer à l'élément event d'une Composition."

* ^context.type = #element
* ^context.expression = "Composition.event"

* valueReference only Reference(FRPractitionerRoleDocument)
