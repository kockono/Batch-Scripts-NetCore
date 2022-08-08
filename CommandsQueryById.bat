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
echo using System.Threading;
echo using Delta.Domain.Entities;
echo using System.Threading.Tasks;
echo using System.Collections.Generic;
echo using Microsoft.EntityFrameworkCore;
echo using Delta.Application.Common.Models;
echo using Delta.Application.Common.Interface;
echo: 
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Get%entidad%ByIdQuery.
echo     /// Implements the ^<see cref="MediatR.IRequest{ List{%entidad%Model}} " /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{ List{%entidad%Model}} " /^>
echo     public class Get%entidad%ByIdQuery : IRequest^<%entidad%Model^>
echo     {
echo         /// ^<summary^>
echo         /// The model
echo         /// ^</summary^>
echo         private readonly int _id;
echo: 
echo         /// ^<summary^>
echo         /// Initializes a new instance of the ^<see cref="Get%entidad%ByIdQueryHandler"/^> class.
echo         /// ^</summary^>
echo         /// ^<param name="%entidad%Model"^>The model.^</param^>
echo         public Get%entidad%ByIdQuery^(int id^)
echo         {
echo             _id = id;
echo         }
echo: 
echo         /// ^<summary^>
echo         /// Class Get%entidad%ByIdQueryHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Get%entidad%ByIdQuery,  List{%entidad%Model}} " /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Get%entidad%ByIdQuery,  List{%entidad%Model}} " /^>
echo         public class Get%entidad%ByIdQueryHandler : IRequestHandler^<Get%entidad%ByIdQuery, %entidad%Model^>
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
echo             /// Initializes a new instance of the ^<see cref="Get%entidad%ByIdQueryHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Get%entidad%ByIdQueryHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             /// ^<returns^>Task&lt;List&lt;%entidad%Model&gt;&gt;.^</returns^>
echo             public async Task^<%entidad%Model^> Handle^(Get%entidad%ByIdQuery request, CancellationToken cancellationToken^)
echo             {
echo                 %entidad% datas = await _context.%entidad%.FirstOrDefaultAsync^( l =^> l.%idEntidad% == request._id ,cancellationToken^);
echo                 %entidad%Model datasResult = _mapper.Map^<%entidad%Model^>^(datas^);
echo: 
echo                 return datasResult;
echo             }
echo         }
echo     }
echo }
) > Commands/%entidad%/Querys/Get%entidad%ById.cs

