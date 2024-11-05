Profile: CondicionClinica
Parent: Condition
Id: CondicionClinica
Title: "CondicionClinica"
Description: "Condición clinica que presenta el paciente"

* identifier 0.. MS
* clinicalStatus 0..1
  *  ^short = "Estado clinico de la condicion"
  * coding.system 0..1
  * coding.system from http://hl7.org/fhir/ValueSet/condition-clinical

* verificationStatus 0..1
  *  ^short = "Estado de verificacion de la condición"
  * coding.system 0..1
  * coding.system from 	http://hl7.org/fhir/ValueSet/condition-ver-status

* subject only Reference(PacienteFalp)

//falta conlocar el code con algun CS 


Instance: EjCondicionClinica
InstanceOf: CondicionClinica
Usage: #example
Title: "EjCondicionClinica"
Description: "Ejemplo para condicion clinica"

* subject = Reference(EjPaciente)