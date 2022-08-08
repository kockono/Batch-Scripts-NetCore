set idEntidad=Id
set entidad=Detenidos
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Status = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=Pertenencias
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=Medico
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=ExamenMedicoDetenido
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=ExamenMedicoPersonal
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=CaracteristicasFisicas
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=Tatuajes
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=Juez
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=Trasalado
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


set idEntidad=Id
set entidad=Celdas
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Suspend%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Suspend%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id; 
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The campaign id.^</param^>
echo         public Suspend%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo:
echo         /// ^<summary^>
echo         /// Class Suspend%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Suspend%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Suspend%entidad%Command, Result}" /^>
echo         public class Suspend%entidad%CommandHandler : IRequestHandler^<Suspend%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Suspend%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Suspend%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Suspend%entidad%Command request, CancellationToken cancellationToken^)
echo             { 
echo:
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Bitactivo = request._id.Action;
echo                 }
echo:                 
echo                 try
echo                 {
echo                     _context.%entidad%.UpdateRange^(entitys^);
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
) > Commands/%entidad%/Commands/Suspend%entidad%Command.cs


