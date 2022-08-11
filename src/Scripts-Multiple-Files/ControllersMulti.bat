set idEntidad=id
set entidad=Detenidos
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
echo using System.Threading.Tasks;
echo using Microsoft.AspNetCore.Mvc;
echo using System.Collections.Generic;
echo using Delta.Application.Common.Models;
echo using Delta.Application.%entidad%Commands;
echo: 
echo namespace Delta.Api.Controllers
echo {
echo     /// ^<summary^>
echo     /// Controlador para las llamadas de los metodos existenes.
echo     /// ^</summary^>
echo     public class %entidad%Controller : ApiController
echo     {
echo         /// ^<summary^>
echo         /// Obtiene el listado de las campañas activas en el sistema
echo         /// ^</summary^>
echo         /// ^<returns^>^</returns^>
echo         [HttpGet]
echo         public async Task^<IActionResult^> Get^(^)
echo         {
echo             List^<%entidad%Model^> result = await Mediator.Send^(new Get%entidad%Query^(^)^);
echo             return Ok^(result^);
echo         }
echo: 
echo         /// ^<summary^>
echo         /// Obtiene el listado de las campañas activas en el sistema
echo         /// ^</summary^>
echo         /// ^<returns^>^</returns^>
echo         [HttpGet^("getOptions"^)]
echo         public async Task^<IActionResult^> GetOptions^(^)
echo         {
echo             List^<%entidad%Model^> result = await Mediator.Send^(new Get%entidad%Query^(^)^);
echo             return Ok^(result^);
echo         }
echo: 
echo         /// ^<summary^>
echo         /// Obtiene el listado de un registro activo en el sistema por id
echo         /// ^</summary^>
echo         /// ^<returns^>^</returns^>
echo         [HttpGet^("getbyid/{id:int}"^)]
echo         public async Task^<IActionResult^> GetById^(int id^)
echo         {
echo             %entidad%Model result = await Mediator.Send^(new Get%entidad%ByIdQuery^(id^)^);
echo             return Ok^(result^);
echo         }
echo: 
echo         /// ^<summary^>
echo         /// Creacion una nueva entrada
echo         /// ^</summary^>
echo         /// ^<param name="model"^>la entrada que queremos crear^</param^>
echo         /// ^<returns^> Devuelve Ok si se pudo realizar la operacion. Devuelve un NotFound si no se fue posible^</returns^>
echo         [HttpPost^("create"^)]
echo         public async Task^<Result^> Create%entidad%^(%entidad%Model model^)
echo         {
echo             return await Mediator.Send^(new Create%entidad%Command^(model^)^);
echo         }
echo: 
echo         /// ^<summary^>
echo         /// Actualiza la informacion de un registro existente en el sistema
echo         /// ^</summary^>
echo         /// ^<returns^>^</returns^>
echo         [HttpPost^("update"^)]
echo         public async Task^<Result^> Update%entidad%^(%entidad%Model model^)
echo         {
echo             Result result = await Mediator.Send^(new Update%entidad%Command^(model^)^);
echo: 
echo             return result;
echo         }
echo     }
echo }
) > Controllers/%entidad%Controller.cs

