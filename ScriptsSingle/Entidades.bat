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
