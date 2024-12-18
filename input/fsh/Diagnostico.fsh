Profile : DiagnosticoInicial
Parent : CoreDiagnosticoCl
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
* category.coding.code = #encounter-diagnosis

* subject only Reference(PacienteFalp)

* code 1..1 
  * ^short = "Condición Clínica que presenta el paciente"
* code from http://hl7.org/fhir/ValueSet/condition-code

* recordedDate MS


Profile : DiagnosticoFinal
Parent : CoreDiagnosticoCl
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
* category.coding.code = #encounter-diagnosis

* subject only Reference(PacienteFalp)

* code 1..1 
  * ^short = "Condición Clínica que presenta el paciente"
* code from http://hl7.org/fhir/ValueSet/condition-code

* recordedDate MS
