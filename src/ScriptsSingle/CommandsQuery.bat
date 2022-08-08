
set entidad=Detenidos
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
echo namespace Delta.Application.%entidad%Commands
echo {
echo     /// ^<summary^>
echo     /// Class Get%entidad%Query.
echo     /// Implements the ^<see cref="MediatR.IRequest{ List{%entidad%Model}} " /^>
echo     /// ^</summary^>
echo     /// ^<seealso cref="MediatR.IRequest{ List{%entidad%Model}} " /^>
echo     public class Get%entidad%Query : IRequest^<List^<%entidad%Model^>^>
echo     {
echo         /// ^<summary^>
echo         /// Class Get%entidad%QueryHandler.
echo         /// Implements the ^<see cref="MediatR.IRequestHandler{Get%entidad%Query,  List{%entidad%Model}} " /^>
echo         /// ^</summary^>
echo         /// ^<seealso cref="MediatR.IRequestHandler{Get%entidad%Query,  List{%entidad%Model}} " /^>
echo         public class Get%entidad%QueryHandler : IRequestHandler^<Get%entidad%Query, List^<%entidad%Model^>^>
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
echo             /// Initializes a new instance of the ^<see cref="Get%entidad%QueryHandler"/^> class.
echo             /// ^</summary^>
echo             /// ^<param name="context"^>The context.^</param^>
echo             /// ^<param name="mapper"^>The mapper.^</param^>
echo             public Get%entidad%QueryHandler^(IApplicationDbContext context, IMapper mapper^)
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
echo             public async Task^<List^<%entidad%Model^>^> Handle^(Get%entidad%Query request, CancellationToken cancellationToken^)
echo             {
echo                 IQueryable^<%entidad%^> datas = _context.%entidad%.Where^( l =^> l.Status != -1 ^); 
echo                 List^<%entidad%Model^> datasResult = await datas.ProjectTo^<%entidad%Model^>^(_mapper.ConfigurationProvider^).ToListAsync^(cancellationToken^);
echo: 
echo                 return datasResult;
echo             }
echo         }
echo     }
echo }
) > Commands/%entidad%/Querys/Get%entidad%Query.cs
