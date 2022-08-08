
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
echo using Delta.Domain.Entities;
echo using Delta.Application.Common.Models;
echo using Delta.Application.Common.Interface;
echo using Delta.Application.Common.Exceptions;
echo:
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Create%entidad%Command.
echo     /// Implements the ^<see cref="MediatR.IRequest{Result}" /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{Result}"/^>
echo     public class Create%entidad%Command : IRequest^<Result^>
echo     {
echo         /// ^<summary^>
echo         /// The model
echo         /// ^</summary^>
echo         private readonly %entidad%Model _model;
echo:         
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Create%entidad%QueryHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%"^>The model.^</param^>
echo         public Create%entidad%Command^(%entidad%Model model^)
echo         {
echo             _model = model;
echo         }
echo: 
echo         /// ^<summary^>
echo         /// Class Create%entidad%QueryHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{GetCampaignQuery,%entidad%}" /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{GetCampaignQuery, %entidad%}" /^>
echo         public class Create%entidad%QueryHandler : IRequestHandler^<Create%entidad%Command, Result^>
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
echo             /// Initializes a new instance of the ^<see cref="Create%entidad%CommandHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Create%entidad%QueryHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<Result^> Handle^(Create%entidad%Command request, CancellationToken cancellationToken^)
echo             {
echo                 ValidationDataAnnotations validations = new ValidationDataAnnotations^(request._model^);
echo: 
echo                 if ^( validations.IsValid^(^) ^)
echo                 {
echo                     %entidad% toInsert = _mapper.Map^<%entidad%^>^(request._model^);
echo                     try
echo                     {
echo                         await _context.%entidad%.AddAsync^(toInsert^);
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
) > Commands/%entidad%/Commands/Create%entidad%Command.cs


