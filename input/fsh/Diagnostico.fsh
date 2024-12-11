Profile : DiagnosticoInicial
Parent : Condition
Description: "Este es un perfil para realizar diagnóstico previo al examen de biopsias realizados."


* identifier 0.. MS
* clinicalStatus 0..1 MS
  *  ^short = "Estado clinico de la condicion"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical

* verificationStatus 0..1 MS
  *  ^short = "Estado de verificacion de la condición"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status
  * coding.code = #provisional

* category 1..1
  * ^short = "Categoria del tipo condition. Permite diferenciar el perfil dentro del bundle"
* category from http://hl7.org/fhir/ValueSet/condition-category
* category = #encounter-diagnosis

* subject only Reference(Paciente)

* code 1..1 
  * ^short = "Condición Clínica que presenta el paciente"
* code from http://hl7.org/fhir/ValueSet/condition-code

* recordedDate MS


Profile : DiagnosticoFinal
Parent : Condition
Description: "Este es un perfil para realizar diagnóstico según examen de biopsias realizados."


* identifier 0.. MS
* clinicalStatus 0..1 MS
  *  ^short = "Estado clinico de la condicion"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical

* verificationStatus 0..1 MS
  *  ^short = "Estado de verificacion de la condición"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status
  * coding.code = #confirmed

* category 1..1
  * ^short = "Categoria del tipo condition. Permite diferenciar el perfil dentro del bundle"
* category from http://hl7.org/fhir/ValueSet/condition-category
* category = #encounter-diagnosis

* subject only Reference(Paciente)

* code 1..1 
  * ^short = "Condición Clínica que presenta el paciente"
* code from http://hl7.org/fhir/ValueSet/condition-code

* recordedDate MS


/*  Codigo antiguo considerando un diagnosticReport en vez de un condition
* identifier    0..1 MS
  
* status 1..1
* status ^short = "Estado, valores posibles: preliminary | final | amended | entered-in-error"
* status ^definition = "Estado del documento"

* subject 1..1
* subject MS 
* subject only Reference(PacienteFalp)

* effective[x] 1..1
* effective[x] only dateTime
 
* issued 0..1
  * ^short = "fecha y hora en que fue emitido este documento."
  * ^definition = "fecha y hora en que fue emitido el documento solicitante."

* performer 0..1
* resultsInterpreter 0..1
* specimen 0..1
* result 0..1
* media 0..1
  * comment 0..1
  * ^short = "Comentarios adicionales sobre la imagen mostrada."
* code 1..1

* conclusion 0..1
  * ^short = "Interpretación de los resultados."
* presentedForm 1..1
  *  ^short = "Informe completo de los resultados obtenidos."
*/