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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Delete%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Delete%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The campaign model
echo         /// ^</summary^>
echo         private readonly ActionsTable _id;
echo:
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Delete%entidad%CommandHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="ActionsTable"^>ActionsTable.^</param^>
echo         public Delete%entidad%Command^(ActionsTable id^)
echo         {
echo             _id = id;
echo         }
echo: 
echo         /// ^<summary^>
echo         /// Class Delete%entidad%CommandHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Delete%entidad%Command,Result}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Delete%entidad%Command, Result}" /^>
echo         public class Delete%entidad%CommandHandler : IRequestHandler^<Delete%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Delete%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Delete%entidad%CommandHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Delete%entidad%Command request, CancellationToken cancellationToken^)
echo             {
echo:                 
echo                 IEnumerable^<%entidad%^> entitys = await _context.%entidad%.Where^(o =^> request._id.Ids.Contains^(^(int^)o.%idEntidad%^)^).ToListAsync^(cancellationToken^);
echo                 foreach^(%entidad% entity in entitys^)
echo                 {
echo                     entity.Status = -1;
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
) > Commands/%entidad%/Commands/Delete%entidad%Command.cs
