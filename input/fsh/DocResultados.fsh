Alias: $CSSDocumento1 = http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1

Profile: DocumentoResultados
Parent: Composition
Id: DocumentoResultados
Title: "Documento de informe de resultados de exámen de Biopsia."
Description: "Documento de salida de informe con resultados del procedimiento realizado."


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
* subject only Reference(Paciente)
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
* author only Reference(PrestadorIndividual)
* author MS
* author ^definition = "Prestador encargado de  generar  este documento."
* author ^short = "Prestador  el cual genera el documento."
* author.reference 1..1 MS
* author.reference ^short = "Corresponde al prestador."

//*--servicio---
* event 0.. MS
* event MS
* event ^short = "servicio clínicos asociados."
* event ^definition = "servicio clínico asociado al documento."

/*
* type 1..1
* type.text = "extracto de"
*/

* section 0..
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * title 1..1


* section.code 0.. MS
* section.code from VSSDocumento1 (extensible)

* section contains 
         ServicioSolicitante 0..1 and
         AntecedentesClinicos 0..1 and
         ExamenMacroscopico 0.. and
         //DescripcionMicroscopica 0.. and
         DiagnosticoInicial 0.. and
         DiagnosticoFinal 0..1
  

* section[ServicioSolicitante]
  * ^definition = "En esta sección van todos los antecedentes clínicos del paciente."
  * code = $CSSDocumento1#00
  * entry only Reference(ServicioSolicitante)

* section[AntecedentesClinicos]
  * ^definition = "En esta sección van todos los antecedentes clínicos del paciente."
  * code = $CSSDocumento1#01
  * entry only Reference(CondicionClinica)

* section[ExamenMacroscopico]
  * ^definition = "En esta sección van todos las descripciones generales  del examen macroscópico de la muestra."
  * code = $CSSDocumento1#02
  * entry only Reference(Muestra)

/* section[DescripcionMicroscopica]
  * ^definition = "En esta sección van todos las descripciones específicas de la muestra."
  * code = $CSSDocumento1#04
  * entry only Reference(Muestra)*/

* section[DiagnosticoInicial]
  * ^definition = "En esta sección va el resultado inicial  del procedimiento."
  * code = $CSSDocumento1#06
  * entry only Reference(DiagnosticoInicial)

* section[DiagnosticoFinal]
  * ^definition = "En esta sección va el resultado final del procedimiento."
  * code = $CSSDocumento1#07
  * entry only Reference(DiagnosticoFinal)



Instance: EjDocumentoResultados 
Description: "Ejemplo de documento de resultados de Biopsia"
InstanceOf: DocumentoResultados
Usage: #example

* identifier.value = "Documento deq resultados"
* status = #final 
* type.coding.system = "http://loinc.org"
* type.coding.code =  #66121-5 
* type.coding.display = "Tissue Pathology biopsy report"


//* subject.reference = "Paciente"
* subject = Reference(EjPaciente)

* date = "2024-05-12"

* author = Reference(EjPrestadorIndividual)

* event.period.start = "2024-04-13"
* event.period.end = "2024-07-23"

* section[0].title = "Servicio Solicitante"
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #00
* section[=].entry = Reference(EjServicioSolicitante)

* section[+].title = "Antecedentes Clínicos."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #01
* section[=].entry = Reference(EjCondicionClinica)

* section[+].title = "Examen Macróscopico."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #02
* section[=].entry = Reference(EjMuestra)


* section[+].title = "Diagnóstico Inicial."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #06
* section[=].entry = Reference(EjDiagnosticoInicial)

* section[+].title = "Diagnóstico Final."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #07
* section[=].entry = Reference(EjDiagnosticoFinal)
