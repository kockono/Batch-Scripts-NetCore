
set idEntidad=Id

@REM Array de entidades
set entidades=UsuariosPreferencias PreferenciasSistema

@REM Directorio de controladores
mkdir dist\Controllers

@REM Directorio de entidades
mkdir dist\Entidades

@REM Directorio de Configuraciones
mkdir dist\Configuration

@REM Directorio de entidades
mkdir dist\Models

@REM %%a variable temporal que guarda la entidades dependiendo la posición
(for %%a in (%entidades%) do (

@REM  Creador de carpetas para los commandos
mkdir dist\Commands\%%a\Commands

@REM ------------------------------------------- Seccion de CreateCommands -------------------------------------------

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
  echo namespace Delta.Application.%%aCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Create%%aCommand.
  echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
  echo     public class Create%%aCommand : IRequest^<Result^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The model
  echo         /// ^</summary^>
  echo         private readonly %%aModel _model;
  echo:         
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Create%%aQueryHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param name="%%a"^>The model.^</param^>
  echo         public Create%%aCommand^(%%aModel model^)
  echo         {
  echo             _model = model;
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Class Create%%aQueryHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{GetCampaignQuery,%%a}" /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{GetCampaignQuery, %%a}" /^>
  echo         public class Create%%aQueryHandler : IRequestHandler^<Create%%aCommand, Result^>
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
  echo             /// Initializes a new instance of the ^<see cref="Create%%aCommandHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Create%%aQueryHandler^(IApplicationDbContext context, IMapper mapper^)
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
  echo             public async Task^<Result^> Handle^(Create%%aCommand request, CancellationToken cancellationToken^)
  echo             {
  echo                 ValidationDataAnnotations validations = new ValidationDataAnnotations^(request._model^);
  echo: 
  echo                 if ^( validations.IsValid^(^) ^)
  echo                 {
  echo                     %%a toInsert = _mapper.Map^<%%a^>^(request._model^);
  echo                     try
  echo                     {
  echo                         await _context.%%a.AddAsync^(toInsert^);
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
  ) >  dist\Commands\%%a\Commands\Create%%aCommand.cs

@REM ------------------------------------------- Seccion de DeleteCommands -------------------------------------------

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
  echo namespace Delta.Application.%%aCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Delete%%aCommand.
  echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
  echo     public class Delete%%aCommand : IRequest^<Result^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The campaign model
  echo         /// ^</summary^>
  echo         private readonly ActionsTable _id;
  echo:
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Delete%%aCommandHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param ;
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Class Delete%%aCommandHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Delete%%aCommand,Result}" /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Delete%%aCommand, Result}" /^>
  echo         public class Delete%%aCommandHandler : IRequestHandler^<Delete%%aCommand, Result^>
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
  echo             /// Initializes a new instance of the ^<see cref="Delete%%aCommandHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Delete%%aCommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
  echo              public async Task^<Result^> Handle^(DeleteGruposUsuariosCommand request, CancellationToken cancellationToken^)
  echo             {
  echo:                  
  echo                 IEnumerable^<GruposUsuarios^> entitys = await _context.GruposUsuarios.Where^(o =^> request._id.Ids.Contains^(^(int^)o.Id^)^).ToListAsync(cancellationToken^);
  echo                 foreach^(GruposUsuarios entity in entitys^)
  echo                 {
  echo                     entity.Status = -1;
  echo                 }
  echo:                   
  echo                 try
  echo                 {
  echo                     _context.GruposUsuarios.UpdateRange^(entitys^);
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
  echo 
  ) >   dist\Commands\%%a\Commands\Delete%%aCommand.cs

@REM ------------------------------------------- Seccion de SUSPEND -------------------------------------------

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
  echo namespace Delta.Application.%%aCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Suspend%%aCommand.
  echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
  echo     public class Suspend%%aCommand : IRequest^<Result^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The campaign model
  echo         /// ^</summary^>
  echo         private readonly ActionsTable _id; 
  echo:
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Suspend%%aCommandHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param name="%%aModel"^>The campaign id.^</param^>
  echo         public Suspend%%aCommand^(ActionsTable id^)
  echo         {
  echo             _id = id;
  echo         }
  echo:
  echo         /// ^<summary^>
  echo         /// Class Suspend%%aCommandHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%%aCommand,Result}" /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%%aCommand, Result}" /^>
  echo         public class Suspend%%aCommandHandler : IRequestHandler^<Suspend%%aCommand, Result^>
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
  echo             /// Initializes a new instance of the ^<see cref="Suspend%%aCommandHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Suspend%%aCommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
  echo             public async Task^<Result^> Handle^(Suspend%%aCommand request, CancellationToken cancellationToken^)
  echo             { 
  echo:
  echo                 IEnumerable^<%%a^> entitys = await _context.%%a.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
  echo                 foreach^(%%a entity in entitys^)
  echo                 {
  echo                     entity.Status = request._id.Action;
  echo                 }
  echo:                 
  echo                 try
  echo                 {
  echo                     _context.%%a.UpdateRange^(entitys^);
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
  ) >  dist\Commands\%%a\Commands\Suspend%%aCommand.cs
@REM ------------------------------------------- Fin de SUSPEND -------------------------------------------


@REM ------------------------------------------- Seccion de UPDATE -------------------------------------------
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
  echo namespace Delta.Application.%%aCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class GetDataQuery.
  echo     /// Implements the ^<see cref="MediatR.IRequest{^(Result , %%aModel ^)}" /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{^(Result , %%aModel ^)"/^>
  echo     public class Update%%aCommand : IRequest^<Result^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The model
  echo         /// ^</summary^>
  echo         private readonly %%aModel _model;
  echo: 
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Update%%aCommandHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param name="%%aModel"^>The model.^</param^>
  echo         public Update%%aCommand^(%%aModel model^)
  echo         {
  echo             _model = model;
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Class Update%%aCommandHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Update%%aCommand,model}" /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Update%%aCommand, model}" /^>
  echo         public class Update%%aCommandHandler : IRequestHandler^<Update%%aCommand, Result^>
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
  echo             /// Initializes a new instance of the ^<see cref="Update%%aCommandHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Update%%aCommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
  echo             public async Task^<Result^> Handle^(Update%%aCommand request, CancellationToken cancellationToken^)
  echo             {
  echo: 
  echo                 ValidationDataAnnotations validations = new ValidationDataAnnotations^(request._model^);
  echo: 
  echo                 if ^( validations.IsValid^(^) ^)
  echo                 {                  
  echo                     %%a entity = _mapper.Map^<%%a^>^(request._model^);
  echo:                     
  echo                     try
  echo                     {
  echo                         _context.%%a.Update^(entity^);
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
) >  dist\Commands\%%a\Commands\Update%%aCommand.cs 


mkdir dist\Commands\%%a\Querys

@REM ------------------------------------------- Seccion de get All Data -------------------------------------------

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
  echo namespace Delta.Application.%%aCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Get%%aQuery.
  echo     /// Implements the ^<see cref="MediatR.IRequest{ List{%%aModel}} " /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{ List{%%aModel}} " /^>
  echo     public class Get%%aQuery : IRequest^<List^<%%aModel^>^>
  echo     {
  echo         /// ^<summary^>
  echo         /// Class Get%%aQueryHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Get%%aQuery,  List{%%aModel}} " /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Get%%aQuery,  List{%%aModel}} " /^>
  echo         public class Get%%aQueryHandler : IRequestHandler^<Get%%aQuery, List^<%%aModel^>^>
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
  echo             /// Initializes a new instance of the ^<see cref="Get%%aQueryHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Get%%aQueryHandler^(IApplicationDbContext context, IMapper mapper^)
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
  echo             /// ^<returns^>Task&lt;List&lt;%%aModel&gt;&gt;.^</returns^>
  echo             public async Task^<List^<%%aModel^>^> Handle^(Get%%aQuery request, CancellationToken cancellationToken^)
  echo             {
  echo                 IQueryable^<%%a^> datas = _context.%%a.Where^( l =^> l.Status != -1 ^); 
  echo                 List^<%%aModel^> datasResult = await datas.ProjectTo^<%%aModel^>^(_mapper.ConfigurationProvider^).ToListAsync^(cancellationToken^);
  echo: 
  echo                 return datasResult;
  echo             }
  echo         }
  echo     }
  echo }
  ) >  dist\Commands\%%a\Querys\Get%%aQuery.cs

@REM ------------------------------------------- Get Data ById -------------------------------------------

  
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
  echo namespace Delta.Application.%%aCommands
  echo {
  echo     /// ^<summary^>
  echo     /// Class Get%%aByIdQuery.
  echo     /// Implements the ^<see cref="MediatR.IRequest{ List{%%aModel}} " /^>
  echo     /// ^</summary^>
  echo     /// ^<seealso cref="MediatR.IRequest{ List{%%aModel}} " /^>
  echo     public class Get%%aByIdQuery : IRequest^<%%aModel^>
  echo     {
  echo         /// ^<summary^>
  echo         /// The model
  echo         /// ^</summary^>
  echo         private readonly int _id;
  echo: 
  echo         /// ^<summary^>
  echo         /// Initializes a new instance of the ^<see cref="Get%%aByIdQueryHandler"/^> class.
  echo         /// ^</summary^>
  echo         /// ^<param name="%%aModel"^>The model.^</param^>
  echo         public Get%%aByIdQuery^(int id^)
  echo         {
  echo             _id = id;
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Class Get%%aByIdQueryHandler.
  echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Get%%aByIdQuery,  List{%%aModel}} " /^>
  echo         /// ^</summary^>
  echo         /// ^<seealso cref="MediatR.IRequestHandler{Get%%aByIdQuery,  List{%%aModel}} " /^>
  echo         public class Get%%aByIdQueryHandler : IRequestHandler^<Get%%aByIdQuery, %%aModel^>
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
  echo             /// Initializes a new instance of the ^<see cref="Get%%aByIdQueryHandler"/^> class.
  echo             /// ^</summary^>
  echo             /// ^<param name="context"^>The context.^</param^>
  echo             /// ^<param name="mapper"^>The mapper.^</param^>
  echo             public Get%%aByIdQueryHandler^(IApplicationDbContext context, IMapper mapper^)
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
  echo             /// ^<returns^>Task&lt;List&lt;%%aModel&gt;&gt;.^</returns^>
  echo             public async Task^<%%aModel^> Handle^(Get%%aByIdQuery request, CancellationToken cancellationToken^)
  echo             {
  echo                 %%a datas = await _context.%%a.FirstOrDefaultAsync^( l =^> l.%idEntidad% == request._id ,cancellationToken^);
  echo                 %%aModel datasResult = _mapper.Map^<%%aModel^>^(datas^);
  echo: 
  echo                 return datasResult;
  echo             }
  echo         }
  echo     }
  echo }
  ) >  dist\Commands\%%a\Querys\Get%%aById.cs

@REM ------------------------------------------- Seccion de Controllers ------------------------------------------- 

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
  echo using Delta.Application.%%aCommands;
  echo: 
  echo namespace Delta.Api.Controllers
  echo {
  echo     /// ^<summary^>
  echo     /// Controlador para las llamadas de los metodos existenes.
  echo     /// ^</summary^>
  echo     public class %%aController : ApiController
  echo     {
  echo         /// ^<summary^>
  echo         /// Obtiene el listado de las campañas activas en el sistema
  echo         /// ^</summary^>
  echo         /// ^<returns^>^</returns^>
  echo         [HttpGet]
  echo         public async Task^<IActionResult^> Get^(^)
  echo         {
  echo             List^<%%aModel^> result = await Mediator.Send^(new Get%%aQuery^(^)^);
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
  echo             List^<%%aModel^> result = await Mediator.Send^(new Get%%aQuery^(^)^);
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
  echo             %%aModel result = await Mediator.Send^(new Get%%aByIdQuery^(id^)^);
  echo             return Ok^(result^);
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Creacion una nueva entrada
  echo         /// ^</summary^>
  echo         /// ^<param name="model"^>la entrada que queremos crear^</param^>
  echo         /// ^<returns^> Devuelve Ok si se pudo realizar la operacion. Devuelve un NotFound si no se fue posible^</returns^>
  echo         [HttpPost^("create"^)]
  echo         public async Task^<Result^> Create%%a^(%%aModel model^)
  echo         {
  echo             return await Mediator.Send^(new Create%%aCommand^(model^)^);
  echo         }
  echo: 
  echo         /// ^<summary^>
  echo         /// Actualiza la informacion de un registro existente en el sistema
  echo         /// ^</summary^>
  echo         /// ^<returns^>^</returns^>
  echo         [HttpPost^("update"^)]
  echo         public async Task^<Result^> Update%%a^(%%aModel model^)
  echo         {
  echo             Result result = await Mediator.Send^(new Update%%aCommand^(model^)^);
  echo: 
  echo             return result;
  echo         }
  echo     }
  echo }
  ) > dist\Controllers\%%aController.cs

@REM ------------------------------------------- Seccion de Configuration ------------------------------------------- 

@REM --------------------------------------------- Seccion de Entidades --------------------------------------------- 

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
echo     public class %%a
echo     {
echo       public long     Id { get; set; }
echo:
echo       public int      Status { get; set; }
echo     }
echo }
) >  dist\Entidades\%%a.cs

@REM --------------------------------------------- Seccion de Models -- ---------------------------------------------

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
echo     public class %%aModel : IMapFrom^<%%a^>
echo     {
echo       public long     Id { get; set; }
echo: 
echo       public int      Status { get; set; }
echo     }
echo }
) >  dist\Models\%%aModel.cs


@REM --------------------------------------------- Seccion de Configuration ----------------------------------------------
  (
  echo /////////////////////////////////////////////////////////////////////////////////////////////////
  echo //
  echo // Centinela
  echo //
  echo // Copyright ^(c^) 2022, Centinela. Todos los derechos reservados.
  echo // Este archivo es confidencial de Centinela. No distribuir.
  echo //
  echo // Developers : Chris Marquez
  echo:  
  echo using Delta.Domain.Entities;
  echo using Microsoft.EntityFrameworkCore;
  echo using Microsoft.EntityFrameworkCore.Metadata.Builders;
  echo:  
  echo namespace Delta.Infrastructure.Persistence.Configurations
  echo {
  echo     /// ^<summary^>
  echo     /// Clase de configuración
  echo     /// ^</summary^>
  echo     class %%aConfiguration : IEntityTypeConfiguration^<%%a^>
  echo     {
  echo         /// ^<summary^>
  echo         /// Implementa la configuración
  echo         /// ^</summary^>
  echo         /// ^<param name="entity"^> objeto que compila la configuración y la lleva a cabo ^</param^>
  echo         public void Configure^(EntityTypeBuilder^<%%a^> entity^)
  echo         {
  echo             entity.HasKey^(e =^> e.Id^).HasName^("%%a_pkey"^);
  echo:             
  echo             entity.Property^(e =^> e.Id^)
  echo                 .ValueGeneratedOnAdd^(^);
  echo: 
  echo             entity.ToTable^("%%a"^);
  echo             entity.HasComment^("Id consecutiva que otorga el sistema"^);
  echo:
  echo              entity.Property^(e =^> e.Status^) 
  echo                  .HasColumnName^("status"^)
  echo                  .HasColumnType^("bigint"^)
  echo                  .HasComment^("1 = Activo, 0 = Inactivo, -1 Eliminado"^); 
  echo: 
  echo:                  
  echo         }
  echo     }
  echo }
  ) >  dist\Configuration\%%aConfiguration.cs
))
@REM Fin del ciclo for
