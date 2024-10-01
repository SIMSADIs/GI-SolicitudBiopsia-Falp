Instance: EjBundleSolicitud
InstanceOf: BundleSolicitud
Usage: #example
Title: "Ejemplo Bundle solicitud"
Description: "Ejemplo de estructura de un perfil Bundle para la solicitud de biopsia"

//* meta.profile = "http://FALPCORE.com/StructureDefinition/BundleSolicitud"
* identifier.value = "bundleSoli"  
* type = #document

* timestamp = "2024-05-28T22:12:21Z"

* entry[entryDocumento].fullUrl = "http://FALPCORE.com/ImplementationGuide/FALPCORE/DocumentoBiopsia/EjDocBiopsiaBundle"
* entry[entryDocumento].resource = EjDocBiopsiaBundle

* entry[entryPaciente].fullUrl = "http://FALPCORE.com/ImplementationGuide/FALPCORE/Paciente/1"
* entry[entryPaciente].resource = PacienteBundleSoli

* entry[entryPrestador].fullUrl = "http://FALPCORE.com/ImplementationGuide/FALPCORE/Profesional/1"
* entry[entryPrestador].resource = PrestadorBunndleSoli



Instance : PacienteBundleSoli
Title : "Ejemplo de Recurso Paciente"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio, cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es real."
InstanceOf : PacienteCl
Usage : #inline

* id = "1"
* identifier.use = #official   

* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoDNI."
* identifier.type.coding.code = #NNCHL
* identifier.type.coding.display = "RUN"

* identifier.value = "66.666.666-k"

* active = true

* name[NombreOficial].use = #official
* name[NombreOficial].family = "Vader"
* name[NombreOficial].family.extension[segundoApellido].valueString	 = "Perez" 
* name[NombreOficial].given[0] = "Anaqueen"
* name[NombreOficial].given[+] = "Darth"

* gender = #male
* birthDate = "1970-03-24"

* extension[SexoBiologico].url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico"
* extension[SexoBiologico].valueCodeableConcept.coding.system = "http://hl7.org/fhir/administrative-gender"
* extension[SexoBiologico].valueCodeableConcept.coding.code = #male



Instance: PrestadorBunndleSoli
InstanceOf: PrestadorCL
Usage: #inline
Title: "PrestadorBunndleSoli"
Description: "Ejemplo de perfil prestador individual para ejemplo de bundle de documento de solicitud de biopsia"

* id = "1"
* identifier.use = #official    //obligado

* identifier.type.coding.system = "https://hl7.org/fhir/R4/v2/0203/index.html"
* identifier.type.coding.code = #SNO
* identifier.type.coding.display = "Serial Number"

* identifier.system = "http://regcivil.cl/Validacion/RUN"
* identifier.value = "666 234 653 234"

//registro de paciente activo
* active = true
//Nombre Oficial
* name.use = #official
* name.family = "viaux"

 //dos contactos, un celular y un email
* telecom.system = #phone
* telecom.use = #mobil
* telecom.value = "943561833"

* telecom.system = #email
* telecom.use = #work
* telecom.value = "Darth@imperio.com"
* qualification.identifier.system = "http://terminology.hl7.org/CodeSystem/v2-0360|2.7"
* qualification.code.coding = #AS
* qualification.identifier.value = "Associate of Science"
* gender = #male
* birthDate = "1970-03-24"


Instance: EjAntClinicosBundle
InstanceOf: AmbitoClinico
Usage: #inline
Title: "EjAntClinicos"

* subject = Reference(PacienteBundleSoli)

* section.code.coding.system = "https://biomedica.uv.cl/fhir/CodeSystem/CSSDiagnostico"
* section.code = #03
* date = "2023-03-24"
* title = "Descripción de datos correspondientes al ámbito Clínico"
* author = Reference(PrestadorBunndleSoli)

* extension[CondicionClinica].valueCode = #01

* extension[SospechaDiagnosticada].valueCode = #confirmed
* type.text = "Ámbito Clínico"
* status = #final


Instance: EjMuestraBundle
InstanceOf: Muestra
Usage: #inline
Title: "EjMuestra"

* identifier.use = #official    //obligado

* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding.code = #ACSN
* identifier.type.coding.display = "Accession ID"
* identifier.value = "13456"

* type.coding.system  = "http://terminology.hl7.org/CodeSystem/v2-0487"
* type.coding.code = #ABS
* type.coding.display = "Abscess"

* accessionIdentifier.system = "http://snomed.info/sct"
* accessionIdentifier.value = "imágenes"
* accessionIdentifier.type.coding.system = "http://snomed.info/sct"
* accessionIdentifier.type.coding.code = #111002
* accessionIdentifier.type.coding.display = "Parathyroid"

* receivedTime = "2024-06-22T14:15:30-03:00"
* parent.display = "Estómago"
* request.display = "servicio solicitante"
* collection
  * collector.display = "Profesional"
  * quantity.value = 1

* container.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0487"
* container.type.coding.code = #CST
* container.type.coding.display = "Fluid, Cyst"

* subject.display = "Paciente"
* status = #available
* note.text = "Las células principales del estómago son:  zimogénicas, peptídicas,​ las cuales son un tipo de célula que forman parte de las glándulas gástricas del estómago, y están encargadas de la secreción de pepsinógeno, lipasa gástrica y quimosina." 


Instance: EjDiagnosticoBundle
InstanceOf: Diagnostico
Usage: #inline
Title: "EjDiagnosticoBundle"

* identifier.use = #official    //obligado

* identifier.type.coding.system = "https://hl7.org/fhir/R4/v2/0203"
* identifier.type.coding.code = #SNO
* identifier.type.coding.display = "Serial Number"

* code = #100-8
* code.coding.system = "http://loinc.org"

* identifier.value = "12.676.445-k"

* effectiveDateTime = "2023-07-13T14:15:30-04:00"
* subject.display = "Paciente"
* status = #final
* issued = "2024-06-22T14:15:30-03:00"
* performer.display = "profesional"
* resultsInterpreter.display = "profesional"
* specimen.display = "Extracto de colón"
* result.display = "Se observa hipertrofia de la epidermis con presencia de queratinocitos displásicos,
La dermis muestra un infiltrado inflamatorio crónico con predominancia de linfocitos."
* conclusion = "La biopsia realizada en el tejido del paciente ha revelado la presencia de células malignas, compatibles con un carcinoma de tipo adenocarcinoma. Las características histológicas observadas sugieren que la neoplasia es de grado intermedio, con infiltración en tejidos adyacentes y evidencia de mitosis aumentada."
* presentedForm.title = "Resultado de Biopsia"
* presentedForm.title = "Descripción Microscopica"
* presentedForm.title = "Descripción Macroscopica"
* presentedForm.url = 	"http://hl7.org/fhir/ValueSet/languages"


Instance: EjDocBiopsiaBundle
Description: "Ejemplo de documento de solicitud de biopsia."
InstanceOf: DocumentoBiopsia
Usage: #inline

* identifier.value = "Documento"
* status = #final 
* type.coding.system = "http://loinc.org"
* type.coding.code =  #52121-1 
* type.coding.display = "Biopsy [Interpretation] in Specimen Narrative"

* subject = Reference(PacienteBundleSoli)

* date = "2024-05-20"
* section.title = "Documento de Biopsia"

* author = Reference(PrestadorBunndleSoli)

* event.period.start = "2024-04-20"
* event.period.end = "2024-07-20"
 
 
* section[AntecedentesClinicos].title = "Antecedentes Clínicos"
* section[AntecedentesClinicos].code.coding.system = "http://FALPCORE.com/CodeSystem/CSSDocumento1"
* section[AntecedentesClinicos].code.coding.code = #01
* section[AntecedentesClinicos].entry = Reference(EjAntClinicosBundle)

* section[ProcedimientosQuirurgicos].title = "Procedimientos Quirurgicos."
* section[ProcedimientosQuirurgicos].code.coding.system = "http://FALPCORE.com/CodeSystem/CSSDocumento1"
* section[ProcedimientosQuirurgicos].code.coding.code = #03
* section[ProcedimientosQuirurgicos].entry = Reference(EjMuestraBundle)

* section[Diagnostico].title = "Diagnostico."
* section[Diagnostico].code.coding.system = "http://FALPCORE.com/CodeSystem/CSSDocumento1"
* section[Diagnostico].code.coding.code = #05
* section[Diagnostico].entry = Reference(EjDiagnosticoBundle)




