Instance: EjBundleSolicitud
InstanceOf: BundleSolicitud
Usage: #Example
Title: "Ejemplo Bundle solicitud"
Description: "Ejemplo de estructura de un perfil Bundle para la solicitud de biopsia"

* meta.lastUpdated = "2024-05-20T14:15:00-03:00"
* identifier.value = "bundleSoli"  
* type = #document

* timestamp = "2024-05-28T22:12:21Z"

* entry[0].fullUrl = "urn:uuid:871153f1-383d-4cf5-bcf2-5ff175de4657"
* entry[=].resource = 871153f1-383d-4cf5-bcf2-5ff175de4657
//* entry[=].resource.meta = ""
* entry[+].fullUrl = "urn:uuid:4f212000-9b14-4b3a-b055-466fc34a01c1"
* entry[=].resource = 4f212000-9b14-4b3a-b055-466fc34a01c1
* entry[+].fullUrl = "urn:uuid:1d1a47c3-611b-4a59-8f06-f384eb4b71e7"
* entry[=].resource = 1d1a47c3-611b-4a59-8f06-f384eb4b71e7
* entry[+].fullUrl = "urn:uuid:15f466c9-c4be-48f3-a372-25ebff93b310"
* entry[=].resource = 15f466c9-c4be-48f3-a372-25ebff93b310
* entry[+].fullUrl = "urn:uuid:68da446d-8012-4f03-bd3a-e5a70773db44"
* entry[=].resource = 68da446d-8012-4f03-bd3a-e5a70773db44
* entry[+].fullUrl = "urn:uuid:b8dd3cef-5b58-4ef1-a919-f8cb8e634187"
* entry[=].resource = b8dd3cef-5b58-4ef1-a919-f8cb8e634187

Instance : 4f212000-9b14-4b3a-b055-466fc34a01c1
Title : "Ejemplo de Recurso Paciente"
Description: "Paciente ficticio nacional CI Chilena, sin sistema de validación \"http://regcivil.cl/Validacion/RUN\" ficticio, cuyo nombre se decribe mediante el oficial y uno social. La dirección tampoco es real."
InstanceOf : Paciente
Usage : #inline


* extension[Sexobiologico].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSSexoBiologico"
* extension[Sexobiologico].valueCodeableConcept.coding = #1 "Hombre"

* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152 "Chile"


* name[NombreOficial].family = "Perez"
* name[NombreOficial].given[0] = "Juan"
* name[NombreOficial].use = #official

* birthDate = "1980-01-01"

* identifier.use = #secondary
* identifier.type = #01
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
* identifier.type.coding.display = "Rol Único Nacional o RUN"
* identifier.value = "30.696.558-7"

* active = true

* address.use = #home
* address.line[0] = "Calle 6 Norte, 52, pieza 802"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"


* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N "Next of Kin"

* contact.address.use = #home
* contact.address.line[0] = "Gregorio Mira 123" 

* contact.address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* contact.address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* contact.address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"


* contact.name.use =  #official
* contact.name.family = "Gonzalez"
* contact.name.given[0] = "Maria"
 
* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"

// esto sería el slice de tutID obligatorio 
* contact.extension.extension.url = "tutId"
* contact.extension.extension.valueIdentifier.use = #official "Official"
* contact.extension.extension.valueIdentifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* contact.extension.extension.valueIdentifier.type.coding.code = #3
* contact.extension.extension.valueIdentifier.type.coding.display = "PPN"
* contact.extension.extension.valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension.valueIdentifier.value = "12.435.789-k"

* contact.telecom[0].system = #phone
* contact.telecom[=].value = "+56912345678"
* contact.telecom[=].use = #mobile
* contact.telecom[=].system = #email
* contact.telecom[=].value = "maria.gonzalez@example.com"
* contact.telecom[=].use = #home

* contact.telecom[0].extension[MyTelecomExtension].valueString = "ejemplo@correoaompañante.cl"


Instance: 1d1a47c3-611b-4a59-8f06-f384eb4b71e7
InstanceOf: PrestadorIndividual
Usage: #inline
Title: "PrestadorBunndleSoli"
Description: "Ejemplo de perfil prestador individual para ejemplo de bundle de documento de solicitud de biopsia"

* name.family = "Gonzaléz"
* name.given = "Pedro"
* birthDate = "1980-12-25" 


* identifier.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* identifier.value = "15.666.378-2"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSIdentificadores"
* identifier.type.coding.code = #2
* identifier.type.coding.display = "RNPI"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

* extension[Mension].valueString = "NEFROLOGO" 


Instance: 15f466c9-c4be-48f3-a372-25ebff93b310
InstanceOf: CondicionClinica
Usage: #example
Title: "EjCondicionClinica"
Description: "Ejemplo para condicion clinica"

* meta.profile = "http://FALPBIOPSIA.com/StructureDefinition/CondicionClinica"

* subject = Reference(urn:uuid:4f212000-9b14-4b3a-b055-466fc34a01c1)

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #problem-list-item

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #219006
* code.coding.display = "Alcohol user"

* recordedDate = "2023-08-23"


Instance: 68da446d-8012-4f03-bd3a-e5a70773db44
InstanceOf: Muestra
Usage: #inline
Title: "EjMuestra"


* id = "1"
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


Instance: b8dd3cef-5b58-4ef1-a919-f8cb8e634187
InstanceOf: DiagnosticoInicial
Usage: #inline
Title: "EjDiagnosticoBundle"

* id = "2"
* meta.profile = "http://FALPBIOPSIA.com/StructureDefinition/DiagnosticoInicial"

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #provisional

* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #encounter-diagnosis

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #1663004
* code.coding.display = "Tumor grade G2"

* subject = Reference(urn:uuid:4f212000-9b14-4b3a-b055-466fc34a01c1)
* recordedDate = "2023-08-23"


Instance: 871153f1-383d-4cf5-bcf2-5ff175de4657
Description: "Ejemplo de documento de solicitud de biopsia."
InstanceOf: DocumentoBiopsia
Usage: #inline

* identifier.value = "Documento"
* status = #final 
* type.coding.system = "http://loinc.org"
* type.coding.code =  #66108-2
* type.coding.display = "Bone Pathology biopsy report"

* subject = Reference(urn:uuid:4f212000-9b14-4b3a-b055-466fc34a01c1)

* date = "2024-05-20"
* section.title = "Documento de Biopsia"

* author = Reference(urn:uuid:1d1a47c3-611b-4a59-8f06-f384eb4b71e7)

* event.period.start = "2024-04-20"
* event.period.end = "2024-07-20"
 
* relatesTo.code = #appends //este documento agrega informacion adicional al documento de destino

//un OID es un identificador para estándares, en este caso FHIR. los 1ros numeros representan el país, el resto representa una institucion
* relatesTo.targetIdentifier.system = "urn:oid:2.16.152.1.10.1" //identificador ficticio; el OID 2.16.152.1 es del MINSAL, para identificar a Chile
* relatesTo.targetIdentifier.value = "IPS-CL-2024-001"

* section[0].title = "Antecedentes Clínicos"
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #01
* section[=].entry = Reference(urn:uuid:15f466c9-c4be-48f3-a372-25ebff93b310)

* section[+].title = "Procedimientos Quirurgicos."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #03
* section[=].entry = Reference(urn:uuid:68da446d-8012-4f03-bd3a-e5a70773db44)

* section[+].title = "Diagnostico."
* section[=].code.coding.system = "http://FALPBIOPSIA.com/CodeSystem/CSSDocumento1"
* section[=].code.coding.code = #05
* section[=].entry = Reference(urn:uuid:b8dd3cef-5b58-4ef1-a919-f8cb8e634187)




