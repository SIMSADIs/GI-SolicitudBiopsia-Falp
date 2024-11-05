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
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * title 1..1


* section.code 0.. MS
* section.code from VSSDocumento1 (extensible)
* section contains 

         AntecedentesClinicos 0..1 and
         ExamenMacroscopico 0.. and
         DescripcionMicroscopica 0.. and
         DiagnosticoInicial 0.. and
         DiagnosticoFinal 0..1
  


* section[AntecedentesClinicos]
  * ^definition = "En esta sección van todos los antecedentes clínicos del paciente."
  * code = $CSSDocumento1#01
  * entry only Reference(CondicionClinica)

* section[ExamenMacroscopico]
  
  * ^definition = "En esta sección van todos las descripciones generales  del examen macroscópico de la muestra."
  * code = $CSSDocumento1#02
  * entry only Reference(Muestra)

* section[DescripcionMicroscopica]
  * ^definition = "En esta sección van todos las descripciones específicas de la muestra."
  * code = $CSSDocumento1#04
  * entry only Reference(Muestra)

* section[DiagnosticoInicial]
  * ^definition = "En esta sección va el resultado inicial  del procedimiento."
  * code = $CSSDocumento1#06
  * entry only Reference(Diagnostico)

* section[DiagnosticoFinal]
  * ^definition = "En esta sección va el resultado final del procedimiento."
  * code = $CSSDocumento1#07
  * entry only Reference(Diagnostico)



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

* section[AntecedentesClinicos].title = "Antecedentes Clínicos."
* section[AntecedentesClinicos].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[AntecedentesClinicos].code.coding.code = #01
* section[AntecedentesClinicos].entry.display = "Ámbitoclinico"

* section[ExamenMacroscopico].title = "Examen Macróscopico."
* section[ExamenMacroscopico].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[ExamenMacroscopico].code.coding.code = #02
* section[ExamenMacroscopico].entry = Reference(EjMuestra)

* section[DescripcionMicroscopica].title = "DescripciónMicroscópica."
* section[DescripcionMicroscopica].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[DescripcionMicroscopica].code.coding.code = #04
* section[DescripcionMicroscopica].entry = Reference(EjMuestra)

* section[DiagnosticoInicial].title = "Diagnóstico Inicial."
* section[DiagnosticoInicial].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[DiagnosticoInicial].code.coding.code = #06
* section[DiagnosticoInicial].entry = Reference(EjDiagnostico)

* section[DiagnosticoFinal].title = "Diagnóstico Final."
* section[DiagnosticoFinal].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[DiagnosticoFinal].code.coding.code = #07
* section[DiagnosticoFinal].entry = Reference(EjDiagnostico)
