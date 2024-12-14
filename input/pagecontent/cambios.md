## Historial de Cambios 

### Versión 1.0.1

Se realizaron diferentes cambios respecto a la versión 0.0.1, sobre todo en la utilziación de perfiles y terminologías, se eliminó el uso de extensiones que abarcaban elementos ya existentes en los recursos, se agregó otrs perfiles faltantes, se realizó un validación de los perfiles con la herramienta QA report y se agregó contenido a la guía. 

### Template

Se agregó una carpeta template, proveniente de HL7 Chile, para colocar los logos de HL7 Chile y la FALP, en la parte superior de la guía

  * Cambio id de guía: --> hl7.fhir.cl.falpbiopsia
  * Cambio nombre guía: --> FALPBIOPSIA
  * Cambio canonical: --> http://FALPBIOPSIA.com
  * cambio jurisdiction: --> urn:iso:std:iso:3166#CL "Chile"
  * Se agregó dependencia versión CORE CL: --> 1.9.1
  * Se agregó dependencia minsal.eis: dev
  * Se agregó dependencia falpcore: dev

### Páginas

Se agregaron diferentes pestañas en la barra superior de la guía, además de agregar contenido explicativo en estas.

  * [Inicio](index.html)
  * [Objetivos](objetivos.html)
  * [Casos de uso](casosdeuso.html)
  * [Historial de cambios](cambios.html)

### Perfiles

  * Se eliminó el perfil AmbitoClinico
  * Se desplazó el peril ServicioSolicitante y CondiciónClinica a GI CORE FALP
  * Los perfiles Paciente, Profesional y Organización fueron reemplazados por los perfiles de la GI CORE FALP
  * Crearon los perfiles BundleSoli y BundleResultado

#### [DiagnosticoInicial](StructureDefinition-DiagnosticoInicial.html)

El perfil diagnóstico fue modificado en su recurso de dependencia, cambiando de un diagnosticReport a un recurso Condition. Por consiguiente, se cambio la totalidad de los elementos del perfil.

Además, fueron creados dos perfiles derivados de la primera versión del perfil diagnóstico: diagnóstico previo y diagnóstico final. 
Ambos perfiles se diferencian en el elemento verificationStatus.

#### DocumentoBiopsia

  * Se modificó la referencia del elemento subject y author, para referenciar la GI CORE CL.
  * Cambio discriminator.type: #pattern --> #value
  * Se agregó la section[ServiocioSolicitante]
  
#### DocumentoResultado

  * Se modificó la referencia del elemento subject y author, para referenciar la GI CORE CL.
  * Cambio discriminator.type: #pattern --> #value
  * Se agregó la section[ServiocioSolicitante]
  * Se eliminó la section[DescripcionMicroscopica]

### Terminologías 

#### CodeSystem y ValueSet

  * Se agregaron elementos a la meta a todos los CodeSystems y ValueSets 
  * Se eliminó el CodeSystem: CSEIdentificador, CSSEstadoClinico, CSSCondicionClinica, CSSCondicionClinicaDiagnostico, CSSSospechaDiagnosticada, CSSTelefono, CSSServicioSolicitante, CSSSitioCuerpo, CSSAsignacion
  * Se eliminó el ValueSet: VSSIdentificador, VSSEstadoClinico, VSSSospechaDiagnosticada, VSSCondicionClinicaDiagnostico, VSSCondicionClinica, VSSTelefono, VSSServicioSolicitante, VSSSitioCuerpo, VSSAsignacion

### Ejemplos


  * Se crearon ejemplos para los nuevos perfiles: DiagnosticoPrevio, DiagnosticoFinal, BundleSolicitud, BundleResultado
  * Se eliminaron los ejemplos: EjPAciente, EjDiagnostico, EjOrganizacionCL, EjProfesional, EjServicioSolicitante, EjAmbitoClinico
  * Se agregaron intancias tipo #inline, utilizadas para referencias

#### Ejemplo Muestra

  * Cambio elemento request: display = "Servicio Solicitante" --> Reference(EjSolicitudProcedimiento)
  * Cambio elemento request: display = "Paciente" --> Reference(EjPaciente)
    * Cambio elemento request: display = "Profesional" --> Reference(EjPrestadorIndividual)