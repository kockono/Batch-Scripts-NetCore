set entidad=Agentes
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   Nombre { get; set; }
echo       public string   NombreCompleto { get; set; }
echo       public string   NumeroEmpleado { get; set; }
echo       public string   ApellidoPaterno { get; set; }
echo       public string   ApellidoMaterno { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Eventos
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     Folio { get; set; }
echo       public long     Latitud { get; set; }
echo       public string   Origen { get; set; }
echo       public string   Telefono { get; set; }
echo       public string   Referencia { get; set; }
echo       public string   Prioridad { get; set; }
echo       public string   Colonia { get; set; }
echo       public string   Calle { get; set; }
echo       public string   CodigoPostal { get; set; }
echo       public string   CruzeFronterizo { get; set; }
echo       public string   Destino { get; set; }
echo       public string   Direccion { get; set; }
echo       public string   EntreCalles { get; set; }
echo       public string   Estado { get; set; }
echo       public string   Estatus { get; set; }
echo       public string   Municipio { get; set; }
echo       public string   Kilometraje { get; set; } 
echo       public string   NumeroInterior { get; set; }
echo       public string   NumeroExterior { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo:
echo       public ICollection<ObjetosSospechosos> ObjetosSospechosos { get; set; }
echo       public ICollection<Alcohol> Alcohol { get; set; }
echo       public ICollection<Drogas> Drogas { get; set; }
echo       public ICollection<Incidencias> Incidencias { get; set; }
echo       public ICollection<Vehiculos> Vehiculos { get; set; }
echo       public ICollection<Narrativa> Narrativa { get; set; }
echo       public ICollection<Armas> Armas { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs


set entidad=Alcohol
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     Folio { get; set; }
echo       public string   Conclusiones { get; set; }
echo       public string   Comentarios { get; set; }
echo       public int      Presencia { get; set; }
echo       public string   Estatus { get; set; }
echo       public string   Especificaciones { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Drogas
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     Folio { get; set; }
echo       public string   Conclusiones { get; set; }
echo       public int      Presencia { get; set; }
echo       public int      Cantidad { get; set; }
echo       public string   Estatus { get; set; }
echo       public string   UnidadMedida { get; set; }
echo       public string   Localizacion { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs


set entidad=Armas
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     Folio { get; set; }
echo       public string   Presencia       { get; set; }
echo       public string   TipoArma        { get; set; }
echo       public string   Calibre         { get; set; }
echo       public string   Marca           { get; set; }
echo       public string   Modelo          { get; set; }
echo       public string   Matricula       { get; set; }
echo       public string   MatriculaCanon  { get; set; }
echo       public string   Cantidad        { get; set; }
echo       public string   Observaciones   { get; set; }
echo       public string   Conclusiones    { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=ObjetosSospechosos
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     Folio { get; set; }
echo       public string   Conclusiones   { get; set; }
echo       public string   Especificaciones   { get; set; }
echo       public string   Presencia  { get; set; }
echo       public int      Selector   { get; set; }
echo       public string   Titulo   { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs


set entidad=Incidencias
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   NombreClave { get; set; }
echo       public string   Codigo { get; set; }
echo       public string   Descripcion { get; set; }
echo       public string   CodigoFecha { get; set; }
echo       public string   Incidencia { get; set; }
echo       public string   Prioridad { get; set; }
echo       public string   Status { get; set; }
echo       public string   SubTipo { get; set; }
echo       public string   Tipo { get; set; }
echo       public string   VersionCodigo { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo:
echo       public Preguntas Pregunta { get; set; }
echo       public ICollection<Preguntas> Preguntas { get; set; }
echo       public ICollection<Servicios> Servicios { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Servicios
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   IdServicio { get; set; }
echo       public string   IdIncidencia { get; set; }
echo       public string   Codigo { get; set; }
echo       public string   Nombre { get; set; }
echo       public int      Requerido { get; set; }
echo       public int      Opcional { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Narrativa
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   Folio { get; set; }
echo       public string   Narrativa { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Vehiculos
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     Folio { get; set; }
echo       public string   ApellidoPaterno { get; set; }
echo       public string   ApellidoMaterno { get; set; }
echo       public string   Color { get; set; }
echo       public string   BoardStatus { get; set; }
echo       public string   Extranjera { get; set; }
echo       public string   Marca { get; set; }
echo       public string   Modelo { get; set; }
echo       public string   NombrePropietario { get; set; }
echo       public string   NumeroSerie { get; set; }
echo       public string   Observaciones { get; set; }
echo       public string   Placas { get; set; }
echo       public string   RolVehiculo { get; set; }
echo       public string   Submarca { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Perfiles
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   Nombre  { get; set; }
echo       public string   Descripcion  { get; set; }
echo       public string   Permisos  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Permisos
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   Nombre  { get; set; }
echo       public string   Descripcion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs


set entidad=Unidades
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   Marcas { get; set; }
echo       public string   Modelo { get; set; }
echo       public string   Tipo { get; set; }
echo       public string   Color { get; set; }
echo       public string   IdAgente { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Usuarios
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   Nombre  { get; set; }
echo       public string   NombreUsuario  { get; set; }
echo       public string   ApellidoPaterno  { get; set; }
echo       public string   ApellidoMaterno  { get; set; }
echo       public string   Contraseña  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo
echo
echo       public ICollection<Permisos> Permisos { get; set; }
echo       public ICollection<Grupos> PermisosGpo { get; set; }
echo       public ICollection<Perfiles> Perfiles { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Grupos
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   Nombre  { get; set; }
echo       public string   Descripcion  { get; set; }
echo       public int      GrupoUnico  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo
echo
echo       public ICollection<Permisos> Permisos { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Camaras
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { oget; set; }
echo       public string   Estatus { get; set; }
echo       public number   Latitud { get; set; }
echo       public number   Longitud { get; set; }
echo       public string   Marca { get; set; }
echo       public string   Modelo { get; set; }
echo       public string   Tipo { get; set; }
echo       public string   Icono { get; set; }
echo       public string   Color { get; set; }
echo       public string   Nombre { get; set; }
echo       public string   Ubicacion { get; set; }
echo       public string   Referencia { get; set; }
echo       public long     DireccionIp { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Zonas
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long       Id { get; set; }
echo       public string     Nombre { get; set; }
echo       public string     Color  { get; set; }
echo       public string     Borde  { get; set; }
echo       public long[]      Area  { get; set; }
echo       public long        IdUsarioActualizacion  { get; set; }
echo       public string      UsuarioActualizo  { get; set; }
echo       public DateTime    FechaDeCreacion  { get; set; }
echo       public DateTime    FechaDeActualizacion  { get; set; }
echo       public int         Status { get; set; }
echo:
echo       public List<Cordenadas> AreaParche  { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Cordenadas
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     Lat { get; set; }
echo       public long     long { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs


set entidad=Tablets
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long      Id { get; set; }
echo       public long[]    AgenteId { get; set; }
echo       public string    Estatus { get; set; }
echo       public string    Imei { get; set; }
echo       public string    Marca { get; set; }
echo       public string    Modelo { get; set; }
echo       public string    NumeroModelo { get; set; }
echo       public string    NumeroSerie { get; set; }
echo       public long      IdUsarioCreacion  { get; set; }
echo       public string    NombreUsarioDeCreacion  { get; set; }
echo       public long      IdUsarioActualizacion  { get; set; }
echo       public string    UsuarioActualizo  { get; set; }
echo       public DateTime  FechaDeCreacion  { get; set; }
echo       public DateTime  FechaDeActualizacion  { get; set; }
echo       public int       Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs



set entidad=Radios
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   AgenteAsignado { get; set; }
echo       public long     AgenteId { get; set; }
echo       public int      Bateria { get; set; }
echo       public string   BateriaEstado { get; set; }
echo       public string   BateriaModelo { get; set; }
echo       public string   BateriaSerie { get; set; }
echo       public string   BateriaTipo { get; set; }
echo       public int      Cargador { get; set; }
echo       public string   CargadorModelo { get; set; }
echo       public string   CargadorSerie { get; set; }
echo       public string   CargadorTipo { get; set; }
echo       public string   ConfiguracionTwp { get; set; }
echo       public string   ContratoPedido { get; set; }
echo       public int      Funda { get; set; }
echo       public string   FundaModelo { get; set; }
echo       public string   FundaResumen { get; set; }
echo       public string   FundaSerie { get; set; }
echo       public string   FundaTipo { get; set; }
echo       public string   Marca { get; set; }
echo       public string   Modelo { get; set; }
echo       public string   NumeroSerie { get; set; }
echo       public string   Observaciones { get; set; }
echo       public long     Placas { get; set; }
echo       public string   Rfsi { get; set; }
echo       public string   SerieCabezal { get; set; }
echo       public string   SerieElectronica { get; set; }
echo       public long     SerieFisica { get; set; }
echo       public long     SerieGps { get; set; }
echo       public string   SerieMicro { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=EventosHistorial
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=EventoTiempoVida
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=EventoNarrativa
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=Personas
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public long     Folio { get; set; }
echo       public string   RolPersona       { get; set; }
echo       public string   Nombre           { get; set; }
echo       public string   ApellidoPaterno  { get; set; }
echo       public string   ApellidoMaterno  { get; set; }
echo       public string   Sexo             { get; set; }
echo       public int      Edad             { get; set; }
echo       public string   EdadConcepto     { get; set; }
echo       public string   Nacionalidad     { get; set; }
echo       public string   Correo           { get; set; }
echo       public long     Celular          { get; set; }
echo       public string   Condicion        { get; set; }
echo       public string   Etnia            { get; set; }
echo       public string   PlayeraColor     { get; set; }
echo       public string   GorrraColor      { get; set; }
echo       public string   LentesColor      { get; set; }
echo       public string   SombreroColor   { get; set; }
echo       public string   PantalonColor   { get; set; }
echo       public string   ZapatosColor    { get; set; }
echo       public string   Descripcion      { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs

set entidad=TabletResources
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez
echo:
echo using System;
echo using System.ComponentModel.DataAnnotations.Schema;
echo:
echo namespace Delta.Domain.Entities
echo {
echo     public class %entidad%
echo     {
echo       public long     Id { get; set; }
echo       public string   EstatusId { get; set; }
echo       public string   DispositivoId { get; set; }
echo       public string   BateriaCargando { get; set; }
echo       public string   NivelBateria { get; set; }
echo       public string   Evento { get; set; }
echo       public string   LocalizacionGps { get; set; }
echo       public long     Latitud { get; set; }
echo       public long     Longitud { get; set; }
echo       public string   Unidad { get; set; }
echo       public string   NombreUsuario { get; set; }
echo       public long     IdUsarioCreacion  { get; set; }
echo       public string   NombreUsarioDeCreacion  { get; set; }
echo       public long     IdUsarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Entidades/%entidad%.cs