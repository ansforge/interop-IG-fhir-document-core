Profile: FRObservationPreventionDocument
Parent: Observation
Id: fr-observation-prevention-document
Title: "Observation - FR Observation Prevention Document"
Description: "FRObservationPreventionDocument permet d'indiquer si l'élément auquel elle est associée est en rapport avec une prévention."

* code ^short = "Type de l'observation"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-295 "En rapport avec la prévention"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'une prévention
value='false' : le traitement n'est pas prescrit dans le cadre d'une prévention
"""