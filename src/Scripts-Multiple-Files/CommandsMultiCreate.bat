set entidades=_name1 _name2 _name3 _name4

(for %%a in (%entidades%) do (
 
mkdir Commands\%%a\Commands

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
  ) > Commands\%%a\Commands\Create%%aCommand.cs
))