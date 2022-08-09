
set idEntidad=Id

:: Array de entidades
set entidades=UsuariosPreferencias preferenciasSistema

:: Directorio de controladores
mkdir dist\Controllers

:: Directorio de entidades
mkdir dist\Entidades

:: %%w variable temporal que guarda la entidades dependiendo la posición
(for %%w in (%entidades%) do (

::  Creador de carpetas para los commandos
mkdir dist\Commands\%%w\Commands

:: ------------------------------------------- Seccion de CreateCommands -------------------------------------------

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
  echo using MediatR;
  echo using AutoMapper;
  echo using System.Linq;
  echo using System.Threading;
  echo using System.Threading.Tasks;
  echo using Microsoft.EntityFrameworkCore;
  echo using Delta.Domain.Entities;
  echo using Delta.Application.Common.Models;
  echo using Delta.Application.Common.Interface;
  echo using Delta.Application.Common.Exceptions;
  echo:
  echo namespace Delta.Application.%%wCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Create%%wCommand.
  echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
  echo     public class Create%%wCommand : IRequest^<Result^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The model
  echo         /// ^</summary^>
  echo         private readonly %%wModel _model;
  echo:         
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Create%%wQueryHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param name="%%w"^>The model.^</param^>
  echo         public Create%%wCommand^(%%wModel model^)
  echo         {
  echo             _model = model;
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Class Create%%wQueryHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{GetCampaignQuery,%%w}" /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{GetCampaignQuery, %%w}" /^>
  echo         public class Create%%wQueryHandler : IRequestHandler^<Create%%wCommand, Result^>
  echo         {
  echo             /// ^<summary^>
  echo             /// The context
  echo             /// ^</summary^>
  echo             private readonly IApplicationDbContext _context;
  echo             /// ^<summary^>
  echo             /// The mapper
  echo             /// ^</summary^>
  echo             private readonly IMapper _mapper;
  echo: 
  echo             /// ^<summary^>
  echo             /// Initializes a new instance of the ^<see cref="Create%%wCommandHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Create%%wQueryHandler^(IApplicationDbContext context, IMapper mapper^)
  echo             {
  echo                 _context = context;
  echo                 _mapper = mapper;
  echo             }
  echo: 
  echo             /// ^<summary^>
  echo             /// Handles the specified request.
  echo             /// ^</summary^>
  echo             /// ^<param name="request"^>The request.^</param^>
  echo             /// ^<param name="cancellationToken"^>The cancellation token.^</param^>
  echo             /// ^<returns^>Result^</returns^>
  echo             public async Task^<Result^> Handle^(Create%%wCommand request, CancellationToken cancellationToken^)
  echo             {
  echo                 ValidationDataAnnotations validations = new ValidationDataAnnotations^(request._model^);
  echo: 
  echo                 if ^( validations.IsValid^(^) ^)
  echo                 {
  echo                     %%w toInsert = _mapper.Map^<%%w^>^(request._model^);
  echo                     try
  echo                     {
  echo                         await _context.%%w.AddAsync^(toInsert^);
  echo                         await _context.SaveChangesAsync^(cancellationToken^);
  echo                         return Result.Success^(^);
  echo                     }
  echo                     catch ^(DbUpdateException ex^)
  echo                     {   
  echo                         return Result.Failure^(new[]{ ex.Message }^);
  echo                     }
  echo                 }
  echo                 else
  echo                 {
  echo                     return Result.Failure^(validations.Errors^(^)^);
  echo                 }
  echo             }
  echo         }
  echo     }
  echo }
  ) >  dist\Commands\%%w\Commands\Create%%wCommand.cs

:: ------------------------------------------- Seccion de DeleteCommands -------------------------------------------

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
  echo using MediatR;
  echo using AutoMapper;
  echo using System.Linq;
  echo using System.Threading;
  echo using System.Threading.Tasks;
  echo using Microsoft.EntityFrameworkCore;
  echo using System.Collections.Generic;
  echo using Delta.Domain.Entities;
  echo using Delta.Application.Common.Models;
  echo using Delta.Application.Common.Interface;
  echo:
  echo namespace Delta.Application.%%wCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Delete%%wCommand.
  echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
  echo     public class Delete%%wCommand : IRequest^<Result^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The campaign model
  echo         /// ^</summary^>
  echo         private readonly ActionsTable _id;
  echo:
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Delete%%wCommandHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param ;
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Class Delete%%wCommandHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Delete%%wCommand,Result}" /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Delete%%wCommand, Result}" /^>
  echo         public class Delete%%wCommandHandler : IRequestHandler^<Delete%%wCommand, Result^>
  echo         {
  echo             /// ^<summary^>
  echo             /// The context
  echo             /// ^</summary^>
  echo             private readonly IApplicationDbContext _context;
  echo             /// ^<summary^>
  echo             /// The mapper
  echo             /// ^</summary^>
  echo             private readonly IMapper _mapper;
  echo: 
  echo             /// ^<summary^>
  echo             /// Initializes a new instance of the ^<see cref="Delete%%wCommandHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Delete%%wCommandHandler^(IApplicationDbContext context, IMapper mapper^)
  echo             {
  echo                 _context = context;
  echo                 _mapper = mapper;
  echo             }
  echo:
  echo             /// ^<summary^>
  echo             /// Handles the specified request.
  echo             /// ^</summary^>
  echo             /// ^<param name="request"^>The request.^</param^>
  echo             /// ^<param name="cancellationToken"^>The cancellation token.^</param^>
  echo             /// ^<returns^>Result^</returns^>
  echo              public async Task<Result> Handle(DeleteGruposUsuariosCommand request, CancellationToken cancellationToken)
  echo             {
  echo:                  
  echo                 IEnumerable<GruposUsuarios> entitys = await _context.GruposUsuarios.Where(o => request._id.Ids.Contains((int)o.Id)).ToListAsync(cancellationToken);
  echo                 foreach(GruposUsuarios entity in entitys)
  echo                 {
  echo                     entity.Status = -1;
  echo                 }
  echo:                   
  echo                 try
  echo                 {
  echo                     _context.GruposUsuarios.UpdateRange(entitys);
  echo                     await _context.SaveChangesAsync(cancellationToken);
  echo                     return Result.Success();
  echo                 }
  echo                 catch (DbUpdateException ex)
  echo                 {
  echo                     return Result.Failure(new[]{ ex.Message });
  echo                 }
  echo             }
  echo         }
  echo     }
  echo }
  echo 
  ) >   dist\Commands\%%w\Commands\Delete%%wCommand.cs

:: ------------------------------------------- Seccion de SUSPEND -------------------------------------------

  (
  echo /////////////////////////////////////////////////////////////////////////////////////////////////
  echo //
  echo // Sistema 911
  echo //
  echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
  echo // Este archivo es confidencial de Centinela. No distribuir.
  echo //
  echo // Developers : Heber estrada, Chris Marquez
  echo: 
  echo using MediatR;
  echo using AutoMapper;
  echo using System.Linq;
  echo using System.Threading;
  echo using System.Threading.Tasks;
  echo using Microsoft.EntityFrameworkCore;
  echo using System.Collections.Generic;
  echo using Delta.Domain.Entities;
  echo using Delta.Application.Common.Models;
  echo using Delta.Application.Common.Interface;
  echo:
  echo namespace Delta.Application.%%wCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Suspend%%wCommand.
  echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
  echo     public class Suspend%%wCommand : IRequest^<Result^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The campaign model
  echo         /// ^</summary^>
  echo         private readonly ActionsTable _id; 
  echo:
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Suspend%%wCommandHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param name="%%wModel"^>The campaign id.^</param^>
  echo         public Suspend%%wCommand^(ActionsTable id^)
  echo         {
  echo             _id = id;
  echo         }
  echo:
  echo         /// ^<summary^>
  echo         /// Class Suspend%%wCommandHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%%wCommand,Result}" /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%%wCommand, Result}" /^>
  echo         public class Suspend%%wCommandHandler : IRequestHandler^<Suspend%%wCommand, Result^>
  echo         {
  echo             /// ^<summary^>
  echo             /// The context
  echo             /// ^</summary^>
  echo             private readonly IApplicationDbContext _context;
  echo             /// ^<summary^>
  echo             /// The mapper
  echo             /// ^</summary^>
  echo             private readonly IMapper _mapper; 
  echo:
  echo             /// ^<summary^>
  echo             /// Initializes a new instance of the ^<see cref="Suspend%%wCommandHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Suspend%%wCommandHandler^(IApplicationDbContext context, IMapper mapper^)
  echo             {
  echo                 _context = context;
  echo                 _mapper = mapper;
  echo             }
  echo:
  echo             /// ^<summary^>
  echo             /// Handles the specified request.
  echo             /// ^</summary^>
  echo             /// ^<param name="request"^>The request.^</param^>
  echo             /// ^<param name="cancellationToken"^>The cancellation token.^</param^>
  echo             /// ^<returns^>Result^</returns^>
  echo             public async Task^<Result^> Handle^(Suspend%%wCommand request, CancellationToken cancellationToken^)
  echo             { 
  echo:
  echo                 IEnumerable^<%%w^> entitys = await _context.%%w.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
  echo                 foreach^(%%w entity in entitys^)
  echo                 {
  echo                     entity.Status = request._id.Action;
  echo                 }
  echo:                 
  echo                 try
  echo                 {
  echo                     _context.%%w.UpdateRange^(entitys^);
  echo                     await _context.SaveChangesAsync^(cancellationToken^);
  echo                     return Result.Success^(^);
  echo                 }
  echo                 catch ^(DbUpdateException ex^)
  echo                 {
  echo                     return Result.Failure^(new[]{ ex.Message }^);
  echo                 }
  echo             }
  echo         }
  echo     }
  echo }
  ) >  dist\Commands\%%w\Commands\Suspend%%wCommand.cs
:: ------------------------------------------- Fin de SUSPEND -------------------------------------------


:: ------------------------------------------- Seccion de UPDATE -------------------------------------------
  (
  echo /////////////////////////////////////////////////////////////////////////////////////////////////
  echo //
  echo // Sistema 911
  echo //
  echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
  echo // Este archivo es confidencial de Centinela. No distribuir.
  echo //
  echo // Developers : Heber estrada, Chris Marquez
  echo: 
  echo using MediatR;
  echo using AutoMapper;
  echo using System.Linq;
  echo using System.Threading;
  echo using Delta.Domain.Entities;
  echo using System.Threading.Tasks;
  echo using Microsoft.EntityFrameworkCore;
  echo using Delta.Application.Common.Models;
  echo using Delta.Application.Common.Interface;
  echo using Delta.Application.Common.Exceptions;
  echo: 
  echo namespace Delta.Application.%%wCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class GetDataQuery.
  echo     /// Implements the ^<see cref="MediatR.IRequest{^(Result , %%wModel ^)}" /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{^(Result , %%wModel ^)"/^>
  echo     public class Update%%wCommand : IRequest^<Result^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The model
  echo         /// ^</summary^>
  echo         private readonly %%wModel _model;
  echo: 
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Update%%wCommandHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param name="%%wModel"^>The model.^</param^>
  echo         public Update%%wCommand^(%%wModel model^)
  echo         {
  echo             _model = model;
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Class Update%%wCommandHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Update%%wCommand,model}" /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Update%%wCommand, model}" /^>
  echo         public class Update%%wCommandHandler : IRequestHandler^<Update%%wCommand, Result^>
  echo         {
  echo             /// ^<summary^>
  echo             /// The context
  echo             /// ^</summary^>
  echo             private readonly IApplicationDbContext _context;
  echo             /// ^<summary^>
  echo             /// The mapper
  echo             /// ^</summary^>
  echo             private readonly IMapper _mapper;
  echo: 
  echo             /// ^<summary^>
  echo             /// Initializes a new instance of the ^<see cref="Update%%wCommandHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Update%%wCommandHandler^(IApplicationDbContext context, IMapper mapper^)
  echo             {
  echo                 _context = context;
  echo                 _mapper = mapper;
  echo             }
  echo: 
  echo             /// ^<summary^>
  echo             /// Handles the specified request.
  echo             /// ^</summary^>
  echo             /// ^<param name="request"^>The request.^</param^>
  echo             /// ^<param name="cancellationToken"^>The cancellation token.^</param^>
  echo             /// ^<returns^>Result^</returns^>
  echo             public async Task^<Result^> Handle^(Update%%wCommand request, CancellationToken cancellationToken^)
  echo             {
  echo: 
  echo                 ValidationDataAnnotations validations = new ValidationDataAnnotations^(request._model^);
  echo: 
  echo                 if ^( validations.IsValid^(^) ^)
  echo                 {                  
  echo                     %%w entity = _mapper.Map^<%%w^>^(request._model^);
  echo:                     
  echo                     try
  echo                     {
  echo                         _context.%%w.Update^(entity^);
  echo                         await _context.SaveChangesAsync^(cancellationToken^);                        
  echo: 
  echo                         return Result.Success^(^);
  echo                     }
  echo                     catch ^(DbUpdateException ex^)
  echo                     {   
  echo                         return Result.Failure^(new[]{ ex.Message }^);
  echo                     }
  echo                 }
  echo                 else
  echo                 {
  echo                     return Result.Failure^(validations.Errors^(^)^);
  echo                 }
  echo             }
echo         }
echo     }
echo }
:: Guardalos ene l siguiente estino con la extension .cs
) >  dist\Commands\%%w\Commands\Update%%wCommand.cs 


mkdir dist\Commands\%%w\Querys

:: ------------------------------------------- Seccion de get All Data -------------------------------------------

  (
  echo /////////////////////////////////////////////////////////////////////////////////////////////////
  echo //
  echo // Sistema 911
  echo //
  echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
  echo // Este archivo es confidencial de Centinela. No distribuir.
  echo //
  echo // Developers : Heber Estrada, Chris Marquez
  echo: 
  echo using MediatR;
  echo using AutoMapper;
  echo using System.Linq;
  echo using System.Threading;
  echo using System.Threading.Tasks;
  echo using System.Collections.Generic;
  echo using Microsoft.EntityFrameworkCore;
  echo using AutoMapper.QueryableExtensions;
  echo using Delta.Domain.Entities;
  echo using Delta.Application.Common.Models;
  echo using Delta.Application.Common.Interface;
  echo: 
  echo namespace Delta.Application.%%wCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Get%%wQuery.
  echo     /// Implements the ^<see cref="MediatR.IRequest{ List{%%wModel}} " /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{ List{%%wModel}} " /^>
  echo     public class Get%%wQuery : IRequest^<List^<%%wModel^>^>
  echo     {
  echo         /// ^<summary^>
  echo         /// Class Get%%wQueryHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Get%%wQuery,  List{%%wModel}} " /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Get%%wQuery,  List{%%wModel}} " /^>
  echo         public class Get%%wQueryHandler : IRequestHandler^<Get%%wQuery, List^<%%wModel^>^>
  echo         {
  echo             /// ^<summary^>
  echo             /// The context
  echo             /// ^</summary^>
  echo             private readonly IApplicationDbContext _context;
  echo:             
  echo             /// ^<summary^>
  echo             /// The mapper
  echo             /// ^</summary^>
  echo             private readonly IMapper _mapper;
  echo: 
  echo             /// ^<summary^>
  echo             /// Initializes a new instance of the ^<see cref="Get%%wQueryHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Get%%wQueryHandler^(IApplicationDbContext context, IMapper mapper^)
  echo             {
  echo                 _context = context;
  echo                 _mapper = mapper;
  echo             }
  echo: 
  echo             /// ^<summary^>
  echo             /// Handles the specified request.
  echo             /// ^</summary^>
  echo             /// ^<param name="request"^>The request.^</param^>
  echo             /// ^<param name="cancellationToken"^>The cancellation token.^</param^>
  echo             /// ^<returns^>Task&lt;List&lt;%%wModel&gt;&gt;.^</returns^>
  echo             public async Task^<List^<%%wModel^>^> Handle^(Get%%wQuery request, CancellationToken cancellationToken^)
  echo             {
  echo                 IQueryable^<%%w^> datas = _context.%%w.Where^( l =^> l.Status != -1 ^); 
  echo                 List^<%%wModel^> datasResult = await datas.ProjectTo^<%%wModel^>^(_mapper.ConfigurationProvider^).ToListAsync^(cancellationToken^);
  echo: 
  echo                 return datasResult;
  echo             }
  echo         }
  echo     }
  echo }
  ) >  dist\Commands\%%w\Querys\Get%%wQuery.cs

:: ------------------------------------------- Get Data ById -------------------------------------------

  
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
  echo using MediatR;
  echo using AutoMapper;
  echo using System.Threading;
  echo using Delta.Domain.Entities;
  echo using System.Threading.Tasks;
  echo using System.Collections.Generic;
  echo using Microsoft.EntityFrameworkCore;
  echo using Delta.Application.Common.Models;
  echo using Delta.Application.Common.Interface;
  echo: 
  echo namespace Delta.Application.%%wCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Get%%wByIdQuery.
  echo     /// Implements the ^<see cref="MediatR.IRequest{ List{%%wModel}} " /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{ List{%%wModel}} " /^>
  echo     public class Get%%wByIdQuery : IRequest^<%%wModel^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The model
  echo         /// ^</summary^>
  echo         private readonly int _id;
  echo: 
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Get%%wByIdQueryHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param name="%%wModel"^>The model.^</param^>
  echo         public Get%%wByIdQuery^(int id^)
  echo         {
  echo             _id = id;
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Class Get%%wByIdQueryHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Get%%wByIdQuery,  List{%%wModel}} " /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Get%%wByIdQuery,  List{%%wModel}} " /^>
  echo         public class Get%%wByIdQueryHandler : IRequestHandler^<Get%%wByIdQuery, %%wModel^>
  echo         {
  echo             /// ^<summary^>
  echo             /// The context
  echo             /// ^</summary^>
  echo             private readonly IApplicationDbContext _context;
  echo             /// ^<summary^>
  echo             /// The mapper
  echo             /// ^</summary^>
  echo             private readonly IMapper _mapper;
  echo: 
  echo             /// ^<summary^>
  echo             /// Initializes a new instance of the ^<see cref="Get%%wByIdQueryHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Get%%wByIdQueryHandler^(IApplicationDbContext context, IMapper mapper^)
  echo             {
  echo                 _context = context;
  echo                 _mapper = mapper;
  echo             }
  echo: 
  echo             /// ^<summary^>
  echo             /// Handles the specified request.
  echo             /// ^</summary^>
  echo             /// ^<param name="request"^>The request.^</param^>
  echo             /// ^<param name="cancellationToken"^>The cancellation token.^</param^>
  echo             /// ^<returns^>Task&lt;List&lt;%%wModel&gt;&gt;.^</returns^>
  echo             public async Task^<%%wModel^> Handle^(Get%%wByIdQuery request, CancellationToken cancellationToken^)
  echo             {
  echo                 %%w datas = await _context.%%w.FirstOrDefaultAsync^( l =^> l.%idEntidad% == request._id ,cancellationToken^);
  echo                 %%wModel datasResult = _mapper.Map^<%%wModel^>^(datas^);
  echo: 
  echo                 return datasResult;
  echo             }
  echo         }
  echo     }
  echo }
  ) >  dist\Commands\%%w\Querys\Get%%wById.cs

:: ------------------------------------------- Seccion de Controllers ------------------------------------------- 

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
  echo using Delta.Application.%%wCommands;
  echo: 
  echo namespace Delta.Api.Controllers
  echo {
  echo     /// ^<summary^>
  echo     /// Controlador para las llamadas de los metodos existenes.
  echo     /// ^</summary^>
  echo     public class %%wController : ApiController
  echo     {
  echo         /// ^<summary^>
  echo         /// Obtiene el listado de las campañas activas en el sistema
  echo         /// ^</summary^>
  echo         /// ^<returns^>^</returns^>
  echo         [HttpGet]
  echo         public async Task^<IActionResult^> Get^(^)
  echo         {
  echo             List^<%%wModel^> result = await Mediator.Send^(new Get%%wQuery^(^)^);
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
  echo             List^<%%wModel^> result = await Mediator.Send^(new Get%%wQuery^(^)^);
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
  echo             %%wModel result = await Mediator.Send^(new Get%%wByIdQuery^(id^)^);
  echo             return Ok^(result^);
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Creacion una nueva entrada
  echo         /// ^</summary^>
  echo         /// ^<param name="model"^>la entrada que queremos crear^</param^>
  echo         /// ^<returns^> Devuelve Ok si se pudo realizar la operacion. Devuelve un NotFound si no se fue posible^</returns^>
  echo         [HttpPost^("create"^)]
  echo         public async Task^<Result^> Create%%w^(%%wModel model^)
  echo         {
  echo             return await Mediator.Send^(new Create%%wCommand^(model^)^);
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Actualiza la informacion de un registro existente en el sistema
  echo         /// ^</summary^>
  echo         /// ^<returns^>^</returns^>
  echo         [HttpPost^("update"^)]
  echo         public async Task^<Result^> Update%%w^(%%wModel model^)
  echo         {
  echo             Result result = await Mediator.Send^(new Update%%wCommand^(model^)^);
  echo: 
  echo             return result;
  echo         }
  echo     }
  echo }
  ) > dist\Controllers\%%wController.cs

:: ------------------------------------------- Seccion de Configuration ------------------------------------------- 

:: --------------------------------------------- Seccion de Entidades --------------------------------------------- 

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
echo     public class %%w
echo     {
echo       public long     Id { get; set; }
echo:
echo       public int      Status { get; set; }
echo     }
echo }
) >  dist\Entidades\%%w.cs

:: --------------------------------------------- Seccion de Models -- ---------------------------------------------

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
echo     public class %%wModel : IMapFrom^<%%w>
echo     {
echo       public long     Id { get; set; }
echo: 
echo       public int      Status { get; set; }
echo     }
echo }
) >  dist\Entidades\%%w.cs

))

