// Référence à la demande d'examen d'imagerie identifiée par son Accession Number
// (datatype HL7 Europe Imaging : AccessionNumberIdentifierEuImaging)
RuleSet: serviceRequestAccessionNumber( slicename )
* basedOn[{slicename}] only Reference( FRServiceRequestImagingDocument )
  * identifier 1..1
  * identifier only AccessionNumberIdentifierEuImaging
