Profile: FRObservationWorkRelatedAccidentDocument
Parent: Observation
Id: fr-observation-work-related-accident-document
Title: "Observation - FR Observation Work Related Accident Document"
Description: "FRObservationWorkRelatedAccidentDocument permet d'indiquer si l'élément auquel elle est associée est en rapport avec un accident du travail / une maladie professionnelle."

* code ^short = "Type de l'observation"
* code = https://smt.esante.gouv.fr/fhir/CodeSystem/terminologie-cisis#GEN-180 "En rapport avec un accident du travail ou une maladie professionnelle"
* value[x] only boolean
* valueBoolean 1..1
* value[x] ^short = """	
Résultat de l'observation : pourra prendre l'une des deux valeurs suivantes :
value='true' : le traitement est prescrit dans le cadre d'un accident du travail
value='false' : le traitement n'est pas prescrit dans le cadre d'un accident du travail
"""
* insert FRRuleSetSimpleObservation