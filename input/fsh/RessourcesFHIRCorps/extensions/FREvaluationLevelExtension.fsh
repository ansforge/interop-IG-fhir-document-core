Extension: FREvaluationLevelExtension
Id: fr-evaluation-level-extension
Title: "FR Evaluation Level Extension"
Description: "Extension permettant d'indiquer le niveau (N1 ou N2) d'un composant d'une évaluation."
* ^context[+].type = #element
* ^context[=].expression = "Observation.component"
* value[x] only code
