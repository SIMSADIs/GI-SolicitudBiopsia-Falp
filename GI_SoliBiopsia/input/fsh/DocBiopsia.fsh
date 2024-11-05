Alias: $CSSDocumento1 = http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1

Profile: DocumentoBiopsia
Parent: Composition
Id: DocumentoBiopsia
Title: "Documento de solicitud de biopsia"
Description: "Documento de entrada para solicitud de biopsia"

//* text MS
//* identifier MS

* identifier 1..1 MS
* identifier ^short = "Identificador local para recurso de documeto que puede ser distinto para cada versión del mismo"
* identifier ^definition = "Identificador para el recurso que contiene documento, puede ser usado de manera local. Este idetificador es independiente de la versión del documento"
* status MS
* status ^short = "Estado, valores posibles: preliminary | final | amended | entered-in-error"
* status ^definition = "Estado del documento"
* status = #final
* status from http://hl7.org/fhir/ValueSet/composition-status

//* ---- Paciente ----- 
* subject 0..1
* subject only Reference(PacienteFalp)
* subject MS
* subject ^definition = "Paciente sobre el cual se ha generado este documento."
* subject ^short = "Paciente sobre el cual se ha generado este documento."
* subject.reference 0..1 MS
* subject.reference ^short = "Corresponde al paciente."

//* --- Titulo de documento -----
* title MS
* title ^short = "Título del documento."
* title ^definition = "Título del documento."
* title = "Documento de solicitud de Biopsia."

//* --- Fecha de obtención----
* date MS 
* date ^short = "Fecha en la cual se obtiene el documento."
* date ^definition = "Definición de la fecha en la cual se logra obtener el documento."


//*--- profesional---
* author 1..*
* author only Reference(PrestadorFalp)
* author MS
* author ^definition = "Prestador encargado de  generar  este documento."
* author ^short = "Prestador  el cual genera el documento."
* author.reference 0..1 MS
* author.reference ^short = "Corresponde al prestador."

//*--servicio---
* event 0..1
* event MS
* event ^short = "servicio clínicos asociados."
* event ^definition = "servicio clínico asociado al documento."

//*--organización----
//** organization 0..*
//* organization MS
//* organization only Reference(OrganizacionCL)
//* organization ^short = "organización que solicita el documento."
//* organzation  ^definition = "organización solicitante del documento."



* section 0..*
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * title 1..1

* section.code 0..1 MS
* section.code from VSSDocumento1 (extensible)

* section contains

  AntecedentesClinicos 0..* and
  ProcedimientosQuirurgicos 0..* and
  Diagnostico 0..*
  

* section[AntecedentesClinicos] 
  * ^definition = "antecedentes clínicos del paciente."
  * code = $CSSDocumento1#01
  * entry only Reference(CondicionClinica)

* section[ProcedimientosQuirurgicos]
  * ^definition = "En esta sección van todos las descripciones generales  del examen macroscópico de la muestra."
  * code = $CSSDocumento1#03
  * entry only Reference(Muestra)

* section[Diagnostico]
  * ^definition = "En esta sección va el resultado final del procedimiento."
  * code = $CSSDocumento1#05
  * entry only Reference(Diagnostico)


Instance: EjDocumentoBiopsia
Description: "Ejemplo de documento de solicitud de biopsia."
InstanceOf: DocumentoBiopsia
Usage: #example

* identifier.value = "Documento"
* status = #final 
* type.coding.system = "http://loinc.org"
* type.coding.code =  #66108-2
* type.coding.display = "Bone Pathology biopsy report"

* author = Reference(EjPrestadorIndividual)

* date = "2024-05-20"
//* title = "documento de Biopsia"


* subject = Reference(EjPaciente)

* event.period.start = "2024-04-20"
* event.period.end = "2024-07-20"
 
* section[AntecedentesClinicos].title = "Antecedentes Clínicos"
* section[AntecedentesClinicos].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[AntecedentesClinicos].code.coding.code = #01
* section[AntecedentesClinicos].entry.display = "AntecedentesClinicos"

* section[ProcedimientosQuirurgicos].title = "Procedimientos Quirurgicos"
* section[ProcedimientosQuirurgicos].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[ProcedimientosQuirurgicos].code.coding.code = #03
* section[ProcedimientosQuirurgicos].entry.display = "ProcedimientosQuirurgicos"

* section[Diagnostico].title = "Diagnostico"
* section[Diagnostico].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[Diagnostico].code.coding.code = #05
* section[Diagnostico].entry = Reference(EjDiagnostico)
