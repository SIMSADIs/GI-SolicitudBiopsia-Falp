Profile: CondicionClinica
Parent: Condition
Id: CondicionClinica
Title: "CondicionClinica"
Description: "Condición clinica que presenta el paciente"

* identifier 0.. MS
* clinicalStatus 0..1 MS
  *  ^short = "Estado clinico de la condicion"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical

* verificationStatus 0..1 MS
  *  ^short = "Estado de verificacion de la condición"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status

* category 1..1 MS
* category from http://hl7.org/fhir/ValueSet/condition-category
* category = #problem-list-item

* subject only Reference(Paciente)

* code 1..1 
  * ^short = "Condición Clínica que presenta el paciente"
* code from http://hl7.org/fhir/ValueSet/condition-code

* recordedDate MS


