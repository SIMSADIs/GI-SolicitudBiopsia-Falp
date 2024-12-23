Profile: BundleSolicitud
Parent: Bundle
Id: BundleSolicitud
Title: "Bundle Solicitud"
Description: "Bundle para agrupar recursos para el envío de la solicitud de biopsia"

* identifier 1.. MS
* type 1..1
  * ^short = "Tipo de Bundle" 
* type from http://hl7.org/fhir/ValueSet/bundle-type (required)
* type = #document

* timestamp 1.. MS

* entry 1.. MS
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[=].path = "resource"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "Entradas del bundle que refenciarán a las diferentes secciones del documento de soicitud de biopsia."
  * ^slicing.ordered = false 

  * ^short = "Secciones del documento"
  * ^definition = "Entradas para documento de solicitud de biopsia"


* entry contains 
    entryDocumento  1..1 MS and
    entryPaciente  1..1 MS and
    entryPrestador 1..1 MS and
    entryServSolicitante 0..1 MS and
    entryCondicionClinicos 0..* MS and
    entryProcedimientosQuirurgicos 0..* MS and 
    entryDiagnostico 0..*

* entry[entryDocumento] 
  * ^short = "Documento solicitud de biopsia"
  * ^definition = "Documento composition "
  * fullUrl 0..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only DocumentoBiopsia

* entry[entryPaciente]
  * ^short = "Paciente al que corresponde la solicitud"
  * ^definition = "Paciente al que se le debe realizar la biopsia, solicitada mediante el documento "
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Paciente que se realizará la biopsia"
  * resource only PacienteFalp

* entry[entryPrestador]
  * ^short = "Prestador que solicita la biopsia"
  * ^definition = "Prestador que solocita la biopsia"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Prestador solicitante"
  * resource only PrestadorIndFalp

* entry[entryServSolicitante]
  * ^short = "Servicio Solicitante"
  * ^definition = "Servicio que solicita el examen"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Servicio Solicitante"
  * resource only ServicioSolicitante

* entry[entryCondicionClinicos]
  * ^short = "Antecedentes clínicos"
  * ^definition = "Antecedentes clinicos que presenta el paciente "
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Antecedentes Clínicos"
  * resource only CondicionClinica

* entry[entryProcedimientosQuirurgicos]
  * ^short = "Procedimiento quirúrgico a realizar"
  * ^definition = "En esta sección van todos las descripciones generales  del examen macroscópico de la muestra."
  * fullUrl 0..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Procedimientos quirúrgicos"
  * resource only Muestra

* entry[entryDiagnostico]
  * ^short = "Diagnóstico inicial"
  * ^definition = "Diagnóstico del prestador antes de realizar el examen de biopsia"
  * fullUrl 0..1 
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1
    * ^short = "Diagnpostico inicial"
  * resource only DiagnosticoInicial


