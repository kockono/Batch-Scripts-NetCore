set entidad=Agentes
(
echo /////////////////////////////////////////////////////////////////////////////////////////////////
echo //
echo // Sistema 911
echo //
echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
echo // Este archivo es confidencial de Centinela. No distribuir.
echo //
echo // Developers : Chris Marquez, Adrian Navarro
echo:
echo using System;
echo using System.Collections.Generic;
echo using Delta.Domain.Entities;
echo using Delta.Application.Common.Interface;
echo: 
echo namespace Delta.Application.Common.Models
echo {
echo     public class %Entidad%Model : IMapFrom^<%entidad%^>
echo     {
echo       public long     Id { get; set; }
echo       public string   Nombre { get; set; }
echo       public string   NombreCompleto { get; set; }
echo       public string   NumeroEmpleado { get; set; }
echo       public string   ApellidoPaterno { get; set; }
echo       public string   ApellidoMaterno { get; set; }
echo       public long     IdUsuarioCreacion  { get; set; }
echo       public string   NombreUsarioCreacion  { get; set; }
echo       public long     IdUsuarioActualizacion  { get; set; }
echo       public string   UsuarioActualizo  { get; set; }
echo       public DateTime FechaDeCreacion  { get; set; }
echo       public DateTime FechaDeActualizacion  { get; set; }
echo       public int      Status { get; set; }
echo     }
echo }
) > Models/%entidad%Model.cs
