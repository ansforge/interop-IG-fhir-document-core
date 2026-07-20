Profile: FRObservationALDDocument
Parent: Observation
Id: fr-observation-ald-document
Title: "Observation - FR Observation ALD Document"
Description: "FRObservationALDDocument permet d'indiquer si l'élément auquel elle est associée est en rapport avec une affection longue durée (ALD)."

* code ^short = "Type de l'observation"
* code MS
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#MED-574 "En rapport avec une ALD"
* value[x] only boolean
* valueBoolean 1..1 MS
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'une affection longue durée (ALD)
value='false' : le traitement n'est pas prescrit dans le cadre d'une affection longue durée (ALD)
"""	