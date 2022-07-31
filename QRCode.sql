/*
 Navicat Premium Data Transfer

 Source Server         : localhost_27017
 Source Server Type    : MongoDB
 Source Server Version : 50006
 Source Host           : localhost:27017
 Source Schema         : QRCode

 Target Server Type    : MongoDB
 Target Server Version : 50006
 File Encoding         : 65001

 Date: 29/04/2022 09:50:08
*/


// ----------------------------
// Collection structure for AbpAuditLogs
// ----------------------------
db.getCollection("AbpAuditLogs").drop();
db.createCollection("AbpAuditLogs");

// ----------------------------
// Documents of AbpAuditLogs
// ----------------------------
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("23f9c282-bb78-122a-2e62-3a03724fce1d"),
    ConcurrencyStamp: "3a49ac2a3c0f45619072c3aa1a1d0fa9",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-25T16:51:57.293Z"),
    ExecutionDuration: NumberInt("28314"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "715397352f83476aafcc5262a3ae0cb9",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("0df5b7b8-fdbf-5800-086a-3a03724fce1e"),
            TenantId: null,
            AuditLogId: UUID("23f9c282-bb78-122a-2e62-3a03724fce1d"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"ABC\",\"idParent\":null,\"description\":null,\"deadline\":0}}",
            ExecutionTime: ISODate("2022-04-25T09:52:10.724Z"),
            ExecutionDuration: NumberInt("11445"),
            ExtraProperties: { }
        },
        {
            _id: UUID("4b5d8e4e-2f99-1a40-5a3e-3a03724fce21"),
            TenantId: null,
            AuditLogId: UUID("23f9c282-bb78-122a-2e62-3a03724fce1d"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-25T09:51:57.3Z"),
            ExecutionDuration: NumberInt("28291"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("aa541997-ae4a-0dd7-97c2-3a0372553bcb"),
    ConcurrencyStamp: "97fc991a1ecd49d7b4aa3f8b90b9aaaa",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-25T16:58:13.642Z"),
    ExecutionDuration: NumberInt("7733"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "908e8c19cb704b2884f5854e49b0803b",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("cfca7a8c-bc15-53ef-a025-3a0372553bcc"),
            TenantId: null,
            AuditLogId: UUID("aa541997-ae4a-0dd7-97c2-3a0372553bcb"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"Trái cây\",\"idParent\":null,\"description\":null,\"deadline\":-4}}",
            ExecutionTime: ISODate("2022-04-25T09:58:19.347Z"),
            ExecutionDuration: NumberInt("2015"),
            ExtraProperties: { }
        },
        {
            _id: UUID("1748e53a-0208-4e32-906d-3a0372553bcf"),
            TenantId: null,
            AuditLogId: UUID("aa541997-ae4a-0dd7-97c2-3a0372553bcb"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-25T09:58:13.649Z"),
            ExecutionDuration: NumberInt("7717"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("ee5e1edf-d206-8b95-66e2-3a0375c85aad"),
    ConcurrencyStamp: "fac91df61735487cbde54bec69ef0a13",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:02:41.053Z"),
    ExecutionDuration: NumberInt("16515"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "18d3b9b74dfb40da9147cdfff1ee1d0f",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'source')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'source')\\r\\nSTACK TRACE:    at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source)\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListCategoryNavigation(Nullable`1 Id, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 80\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 37\\r\\n   at lambda_method1897(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("800681b3-c12c-58d1-1d09-3a0375c85aad"),
            TenantId: null,
            AuditLogId: UUID("ee5e1edf-d206-8b95-66e2-3a0375c85aad"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"idParent asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T02:02:41.693Z"),
            ExecutionDuration: NumberInt("15822"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("0faa481c-707d-bba6-dcff-3a0375c9e49c"),
    ConcurrencyStamp: "47ea40bb00174b0c8b534241a0642076",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:03:21.757Z"),
    ExecutionDuration: NumberInt("76678"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "181d08ffeefa4fceb984fdf401fc080f",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'source')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'source')\\r\\nSTACK TRACE:    at System.Linq.Queryable.FirstOrDefault[TSource](IQueryable`1 source)\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListCategoryNavigation(Nullable`1 Id, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 80\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 37\\r\\n   at lambda_method1897(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("190a8dcd-6b94-a3bb-76c3-3a0375c9e49c"),
            TenantId: null,
            AuditLogId: UUID("0faa481c-707d-bba6-dcff-3a0375c9e49c"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"idParent asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T02:03:21.76Z"),
            ExecutionDuration: NumberInt("76668"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("4c965300-68dd-c599-4deb-3a0375d7f3e9"),
    ConcurrencyStamp: "29e51c3a3f9b4cb4b8488c745fdfa9fe",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:19:59.349Z"),
    ExecutionDuration: NumberInt("488"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "277724d14fcc4e709f8ba10cbeefef59",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"No items provided for select attribute.\",\r\n    \"details\": \"Exception: No items provided for select attribute.\\r\\nSTACK TRACE:    at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form.AbpSelectTagHelperService.GetSelectItems(TagHelperContext context, TagHelperOutput output)\\r\\n   at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form.AbpSelectTagHelperService.GetSelectTagAsync(TagHelperContext context, TagHelperOutput output, TagHelperContent childContent)\\r\\n   at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form.AbpSelectTagHelperService.GetFormInputGroupAsHtmlAsync(TagHelperContext context, TagHelperOutput output, TagHelperContent childContent)\\r\\n   at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form.AbpSelectTagHelperService.ProcessAsync(TagHelperContext context, TagHelperOutput output)\\r\\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner.<RunAsync>g__Awaited|0_0(Task task, TagHelperExecutionContext executionContext, Int32 i, Int32 count)\\r\\n   at AspNetCore._Pages_Categories_EditModal.<ExecuteAsync>b__18_3() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml:line 18\\r\\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()\\r\\n   at AspNetCore._Pages_Categories_EditModal.<ExecuteAsync>b__18_1() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml:line 14\\r\\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.GetChildContentAsync(Boolean useCachedResult, HtmlEncoder encoder)\\r\\n   at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Modal.AbpModalTagHelperService.ProcessAsync(TagHelperContext context, TagHelperOutput output)\\r\\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner.<RunAsync>g__Awaited|0_0(Task task, TagHelperExecutionContext executionContext, Int32 i, Int32 count)\\r\\n   at AspNetCore._Pages_Categories_EditModal.<ExecuteAsync>b__18_0() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml:line 13\\r\\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.GetChildContentAsync(Boolean useCachedResult, HtmlEncoder encoder)\\r\\n   at Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper.ProcessAsync(TagHelperContext context, TagHelperOutput output)\\r\\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner.<RunAsync>g__Awaited|0_0(Task task, TagHelperExecutionContext executionContext, Int32 i, Int32 count)\\r\\n   at AspNetCore._Pages_Categories_EditModal.ExecuteAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml:line 9\\r\\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)\\r\\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)\\r\\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)\\r\\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)\\r\\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|30_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeResultFilters>g__Awaited|28_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResourceFilter>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResourceExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)\\r\\n   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)\\r\\n   at Volo.Abp.AspNetCore.Serilog.AbpSerilogMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)\\r\\n   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Volo.Abp.AspNetCore.Auditing.AbpAuditingMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [ ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("22f8d2e2-f55e-5e09-7052-3a0375da939d"),
    ConcurrencyStamp: "21d57e5052384572880459aa4ffed518",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:22:31.846Z"),
    ExecutionDuration: NumberInt("19944"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "55378cc81c5346f9a048a31ecf666901",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Missing type map configuration or unsupported mapping.\\r\\n\\r\\nMapping types:\\r\\nObject -> CategoryDto\\r\\nSystem.Object -> QRCode.Categories.CategoryDto\",\r\n    \"details\": \"AutoMapperMappingException: Missing type map configuration or unsupported mapping.\\r\\n\\r\\nMapping types:\\r\\nObject -> CategoryDto\\r\\nSystem.Object -> QRCode.Categories.CategoryDto\\r\\nSTACK TRACE:    at lambda_method1985(Closure , Object , CategoryDto , ResolutionContext )\\r\\n   at Volo.Abp.AutoMapper.AutoMapperAutoObjectMappingProvider.Map[TSource,TDestination](Object source)\\r\\n   at Volo.Abp.ObjectMapping.DefaultObjectMapper.AutoMap[TSource,TDestination](Object source)\\r\\n   at Volo.Abp.ObjectMapping.DefaultObjectMapper.Map[TSource,TDestination](TSource source)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 72\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  },\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Missing type map configuration or unsupported mapping.\\r\\n\\r\\nMapping types:\\r\\nObject -> CategoryDto\\r\\nSystem.Object -> QRCode.Categories.CategoryDto\",\r\n    \"details\": \"AutoMapperMappingException: Missing type map configuration or unsupported mapping.\\r\\n\\r\\nMapping types:\\r\\nObject -> CategoryDto\\r\\nSystem.Object -> QRCode.Categories.CategoryDto\\r\\nSTACK TRACE:    at lambda_method1985(Closure , Object , CategoryDto , ResolutionContext )\\r\\n   at Volo.Abp.AutoMapper.AutoMapperAutoObjectMappingProvider.Map[TSource,TDestination](Object source)\\r\\n   at Volo.Abp.ObjectMapping.DefaultObjectMapper.AutoMap[TSource,TDestination](Object source)\\r\\n   at Volo.Abp.ObjectMapping.DefaultObjectMapper.Map[TSource,TDestination](TSource source)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 72\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("03b2efff-5436-f38a-9687-3a0375da93a6"),
            TenantId: null,
            AuditLogId: UUID("22f8d2e2-f55e-5e09-7052-3a0375da939d"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"14a7cb57-46cf-096c-b495-3a0372553b0c\",\"input\":{\"name\":\"Trái cây mmmm\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T02:22:31.873Z"),
            ExecutionDuration: NumberInt("19636"),
            ExtraProperties: { }
        },
        {
            _id: UUID("ecb67c70-bedd-46d0-125a-3a0375da93a8"),
            TenantId: null,
            AuditLogId: UUID("22f8d2e2-f55e-5e09-7052-3a0375da939d"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T02:22:31.861Z"),
            ExecutionDuration: NumberInt("19896"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2fe96c5f-41e6-15d7-a6b3-3a0375dc7e72"),
    ConcurrencyStamp: "24868999615f48f0a730cf5c353d10dd",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:24:31.676Z"),
    ExecutionDuration: NumberInt("25759"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "3a684cc3c12248f29657e19d44cbca56",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Missing type map configuration or unsupported mapping.\\r\\n\\r\\nMapping types:\\r\\nObject -> Category\\r\\nSystem.Object -> QRCode.Categories.Category\",\r\n    \"details\": \"AutoMapperMappingException: Missing type map configuration or unsupported mapping.\\r\\n\\r\\nMapping types:\\r\\nObject -> Category\\r\\nSystem.Object -> QRCode.Categories.Category\\r\\nSTACK TRACE:    at lambda_method1989(Closure , Object , Category , ResolutionContext )\\r\\n   at Volo.Abp.AutoMapper.AutoMapperAutoObjectMappingProvider.Map[TSource,TDestination](Object source)\\r\\n   at Volo.Abp.ObjectMapping.DefaultObjectMapper.AutoMap[TSource,TDestination](Object source)\\r\\n   at Volo.Abp.ObjectMapping.DefaultObjectMapper.Map[TSource,TDestination](TSource source)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 77\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  },\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Missing type map configuration or unsupported mapping.\\r\\n\\r\\nMapping types:\\r\\nObject -> Category\\r\\nSystem.Object -> QRCode.Categories.Category\",\r\n    \"details\": \"AutoMapperMappingException: Missing type map configuration or unsupported mapping.\\r\\n\\r\\nMapping types:\\r\\nObject -> Category\\r\\nSystem.Object -> QRCode.Categories.Category\\r\\nSTACK TRACE:    at lambda_method1989(Closure , Object , Category , ResolutionContext )\\r\\n   at Volo.Abp.AutoMapper.AutoMapperAutoObjectMappingProvider.Map[TSource,TDestination](Object source)\\r\\n   at Volo.Abp.ObjectMapping.DefaultObjectMapper.AutoMap[TSource,TDestination](Object source)\\r\\n   at Volo.Abp.ObjectMapping.DefaultObjectMapper.Map[TSource,TDestination](TSource source)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 77\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("16b10363-4ca2-7b8b-96cc-3a0375dc7e74"),
            TenantId: null,
            AuditLogId: UUID("2fe96c5f-41e6-15d7-a6b3-3a0375dc7e72"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"14a7cb57-46cf-096c-b495-3a0372553b0c\",\"input\":{\"name\":\"Trái cây mmmm\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T02:24:31.694Z"),
            ExecutionDuration: NumberInt("25543"),
            ExtraProperties: { }
        },
        {
            _id: UUID("f9de71bc-6586-e052-a321-3a0375dc7e76"),
            TenantId: null,
            AuditLogId: UUID("2fe96c5f-41e6-15d7-a6b3-3a0375dc7e72"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T02:24:31.687Z"),
            ExecutionDuration: NumberInt("25711"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("3ae914e0-6249-1a63-fa15-3a0375de65a0"),
    ConcurrencyStamp: "863300ba3ec5431f8d16f4abeff7c1fc",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:26:29.264Z"),
    ExecutionDuration: NumberInt("32887"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "55aef4c4009543f8a3427458c51ee371",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\",\r\n    \"details\": \"AbpDbConcurrencyException: Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\\r\\nSTACK TRACE:    at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.ThrowOptimisticConcurrencyException()\\r\\n   at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.UpdateAsync(TEntity entity, Boolean autoSave, CancellationToken cancellationToken)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 78\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  },\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\",\r\n    \"details\": \"AbpDbConcurrencyException: Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\\r\\nSTACK TRACE:    at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.ThrowOptimisticConcurrencyException()\\r\\n   at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.UpdateAsync(TEntity entity, Boolean autoSave, CancellationToken cancellationToken)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 78\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("409"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("a4806aef-1fc4-2df6-a6d0-3a0375de65a0"),
            TenantId: null,
            AuditLogId: UUID("3ae914e0-6249-1a63-fa15-3a0375de65a0"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"14a7cb57-46cf-096c-b495-3a0372553b0c\",\"input\":{\"name\":\"Trái cây mmmm\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T02:26:29.281Z"),
            ExecutionDuration: NumberInt("32607"),
            ExtraProperties: { }
        },
        {
            _id: UUID("da665277-1559-4442-ba74-3a0375de65a3"),
            TenantId: null,
            AuditLogId: UUID("3ae914e0-6249-1a63-fa15-3a0375de65a0"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T02:26:29.274Z"),
            ExecutionDuration: NumberInt("32843"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("9726ff25-d25b-eead-3574-3a0375e30d0b"),
    ConcurrencyStamp: "d3ac7344387644cc9586601aaa46f722",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:31:51.809Z"),
    ExecutionDuration: NumberInt("15359"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "e8de7221bb5e43a18ab456d365e5df33",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("988fed35-b0f8-d76f-209e-3a0375e30d0c"),
            TenantId: null,
            AuditLogId: UUID("9726ff25-d25b-eead-3574-3a0375e30d0b"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"14a7cb57-46cf-096c-b495-3a0372553b0c\",\"input\":{\"name\":\"Trái cây mmmm\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T02:31:51.826Z"),
            ExecutionDuration: NumberInt("12392"),
            ExtraProperties: { }
        },
        {
            _id: UUID("f55ced27-7979-d183-1ec2-3a0375e30d0e"),
            TenantId: null,
            AuditLogId: UUID("9726ff25-d25b-eead-3574-3a0375e30d0b"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T02:31:51.817Z"),
            ExecutionDuration: NumberInt("15342"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("72929adf-3efb-f8de-ffe1-3a0375e857e0"),
    ConcurrencyStamp: "7341a9166f8b468c851c0a2bc9c82311",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:37:53.165Z"),
    ExecutionDuration: NumberInt("825"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "60e76fe06dbc43d0a095bcb28a39b455",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\",\r\n    \"details\": \"AbpDbConcurrencyException: Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\\r\\nSTACK TRACE:    at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.ThrowOptimisticConcurrencyException()\\r\\n   at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.UpdateAsync(TEntity entity, Boolean autoSave, CancellationToken cancellationToken)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 84\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  },\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\",\r\n    \"details\": \"AbpDbConcurrencyException: Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\\r\\nSTACK TRACE:    at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.ThrowOptimisticConcurrencyException()\\r\\n   at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.UpdateAsync(TEntity entity, Boolean autoSave, CancellationToken cancellationToken)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 84\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("409"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("ce6b343d-b875-9c85-cd8e-3a0375e857e1"),
            TenantId: null,
            AuditLogId: UUID("72929adf-3efb-f8de-ffe1-3a0375e857e0"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"14a7cb57-46cf-096c-b495-3a0372553b0c\",\"input\":{\"name\":\"Trái cây\",\"idParent\":\"49e0afda-3a41-a98a-eb1f-3a03724fb2a2\",\"description\":null,\"deadline\":2}}",
            ExecutionTime: ISODate("2022-04-26T02:37:53.2Z"),
            ExecutionDuration: NumberInt("472"),
            ExtraProperties: { }
        },
        {
            _id: UUID("ca89aabe-d213-9975-1443-3a0375e857e4"),
            TenantId: null,
            AuditLogId: UUID("72929adf-3efb-f8de-ffe1-3a0375e857e0"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T02:37:53.187Z"),
            ExecutionDuration: NumberInt("772"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2d5a1a02-04ee-ff65-f667-3a0375e9b639"),
    ConcurrencyStamp: "a2e453e867a04d6cacfab6efa46639e9",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T09:38:21.994Z"),
    ExecutionDuration: NumberInt("61712"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "c12fd6c96d1b425382a93cc7d2637728",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\",\r\n    \"details\": \"AbpDbConcurrencyException: Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\\r\\nSTACK TRACE:    at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.ThrowOptimisticConcurrencyException()\\r\\n   at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.UpdateAsync(TEntity entity, Boolean autoSave, CancellationToken cancellationToken)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 84\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  },\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\",\r\n    \"details\": \"AbpDbConcurrencyException: Database operation expected to affect 1 row but actually affected 0 row. Data may have been modified or deleted since entities were loaded. This exception has been thrown on optimistic concurrency check.\\r\\nSTACK TRACE:    at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.ThrowOptimisticConcurrencyException()\\r\\n   at Volo.Abp.Domain.Repositories.MongoDB.MongoDbRepository`2.UpdateAsync(TEntity entity, Boolean autoSave, CancellationToken cancellationToken)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.UpdateAsync(Guid Id, CreateUpdateCategory input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 84\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.GlobalFeatures.GlobalFeatureInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.ProceedByLoggingAsync(IAbpMethodInvocation invocation, IAuditingHelper auditingHelper, IAuditLogScope auditLogScope)\\r\\n   at Volo.Abp.Auditing.AuditingInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Validation.ValidationInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Web.Pages.Categories.EditModalModel.OnPostAsync() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\EditModal.cshtml.cs:line 48\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Convert[T](Object taskAsObject)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.GenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("409"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("e4d52d77-d55d-f27c-8c73-3a0375e9b639"),
            TenantId: null,
            AuditLogId: UUID("2d5a1a02-04ee-ff65-f667-3a0375e9b639"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"14a7cb57-46cf-096c-b495-3a0372553b0c\",\"input\":{\"name\":\"Trái cây\",\"idParent\":null,\"description\":null,\"deadline\":2}}",
            ExecutionTime: ISODate("2022-04-26T02:38:21.999Z"),
            ExecutionDuration: NumberInt("61583"),
            ExtraProperties: { }
        },
        {
            _id: UUID("ebafce85-51a6-3315-55b4-3a0375e9b639"),
            TenantId: null,
            AuditLogId: UUID("2d5a1a02-04ee-ff65-f667-3a0375e9b639"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T02:38:21.997Z"),
            ExecutionDuration: NumberInt("61706"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("7f43f2ab-ed54-4370-56f6-3a0375fdc458"),
    ConcurrencyStamp: "edc094121ea448edb80883c052ee467e",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:01:17.831Z"),
    ExecutionDuration: NumberInt("200"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "b1ebd219ace44329a8b865343d817929",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "DELETE",
    Url: "/api/app/category",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("2d6f969d-82c4-473d-e9ba-3a0375fdc459"),
            TenantId: null,
            AuditLogId: UUID("7f43f2ab-ed54-4370-56f6-3a0375fdc458"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "DeleteAsync",
            Parameters: "{\"id\":\"14a7cb57-46cf-096c-b495-3a0372553b0c\"}",
            ExecutionTime: ISODate("2022-04-26T03:01:17.842Z"),
            ExecutionDuration: NumberInt("185"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("6cbbbcee-ca62-eaaa-86ab-3a0375fdf979"),
    ConcurrencyStamp: "73044885f069429590f5485cf6826f4b",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:01:28.599Z"),
    ExecutionDuration: NumberInt("3042"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "ccaac8beb6154243b10dd52e8e5fed10",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("a62a0c2d-25b4-eee2-cdcd-3a0375fdf979"),
            TenantId: null,
            AuditLogId: UUID("6cbbbcee-ca62-eaaa-86ab-3a0375fdf979"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"49e0afda-3a41-a98a-eb1f-3a03724fb2a2\",\"input\":{\"name\":\"ABC\",\"idParent\":null,\"description\":null,\"deadline\":2}}",
            ExecutionTime: ISODate("2022-04-26T03:01:28.616Z"),
            ExecutionDuration: NumberInt("3014"),
            ExtraProperties: { }
        },
        {
            _id: UUID("88a5f203-b5be-4b7e-720b-3a0375fdf979"),
            TenantId: null,
            AuditLogId: UUID("6cbbbcee-ca62-eaaa-86ab-3a0375fdf979"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:01:28.609Z"),
            ExecutionDuration: NumberInt("3023"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("73aeadd7-0ae8-f572-7f78-3a0375feb512"),
    ConcurrencyStamp: "7d350851934f40d6b0df0c4ce6f7ed52",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:02:17.974Z"),
    ExecutionDuration: NumberInt("1692"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "52f279b6f50a49d4b4b6093ef349a233",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("dd1c48d5-5b3f-d42f-bdde-3a0375feb512"),
            TenantId: null,
            AuditLogId: UUID("73aeadd7-0ae8-f572-7f78-3a0375feb512"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"49e0afda-3a41-a98a-eb1f-3a03724fb2a2\",\"input\":{\"name\":\"ABC\",\"idParent\":null,\"description\":null,\"deadline\":3}}",
            ExecutionTime: ISODate("2022-04-26T03:02:17.978Z"),
            ExecutionDuration: NumberInt("1687"),
            ExtraProperties: { }
        },
        {
            _id: UUID("79d74848-7c50-804d-3aef-3a0375feb512"),
            TenantId: null,
            AuditLogId: UUID("73aeadd7-0ae8-f572-7f78-3a0375feb512"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:02:17.977Z"),
            ExecutionDuration: NumberInt("1689"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2ea49efb-a5c5-ff26-1eb4-3a037609474e"),
    ConcurrencyStamp: "efaeaf60bc5e416a826a6604442f558f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:13:52.12Z"),
    ExecutionDuration: NumberInt("328"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "2d1973daf30c42959be30977ae3cbbb5",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/49e0afda-3a41-a98a-eb1f-3a03724fb2a2",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("985d309a-ab01-5fab-ee28-3a037609474e"),
            TenantId: null,
            AuditLogId: UUID("2ea49efb-a5c5-ff26-1eb4-3a037609474e"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"49e0afda-3a41-a98a-eb1f-3a03724fb2a2\"}",
            ExecutionTime: ISODate("2022-04-26T03:13:52.134Z"),
            ExecutionDuration: NumberInt("310"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("b5c433f8-31c5-31ec-e719-3a03760a0ac3"),
    ConcurrencyStamp: "4432ce7c61194b97ba6ae531599b8ff0",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:14:42.455Z"),
    ExecutionDuration: NumberInt("40"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "2717380a74ea4d7688f7f7eaca4b0b96",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/49e0afda-3a41-a98a-eb1f-3a03724fb2a2",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("c6084767-90e9-8ed9-065d-3a03760a0ac3"),
            TenantId: null,
            AuditLogId: UUID("b5c433f8-31c5-31ec-e719-3a03760a0ac3"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"49e0afda-3a41-a98a-eb1f-3a03724fb2a2\"}",
            ExecutionTime: ISODate("2022-04-26T03:14:42.457Z"),
            ExecutionDuration: NumberInt("36"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("84014a2a-f190-34c7-a9aa-3a03760a3e3b"),
    ConcurrencyStamp: "cbcdae85e80f4cc6a562d11c821f1c2b",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:14:55.64Z"),
    ExecutionDuration: NumberInt("35"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "54b2ca1a2d2e43c68bceab14ba10de47",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/49e0afda-3a41-a98a-eb1f-3a03724fb2a2",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("363217fc-baec-d166-a3c7-3a03760a3e3b"),
            TenantId: null,
            AuditLogId: UUID("84014a2a-f190-34c7-a9aa-3a03760a3e3b"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"49e0afda-3a41-a98a-eb1f-3a03724fb2a2\"}",
            ExecutionTime: ISODate("2022-04-26T03:14:55.642Z"),
            ExecutionDuration: NumberInt("32"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("4d4f9f71-5b5b-9ce8-23f1-3a03760a8ef2"),
    ConcurrencyStamp: "7b4fd133145142a590b1cdf10cae5f48",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:15:16.235Z"),
    ExecutionDuration: NumberInt("103"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "d79a12c7cb6e459893e697d2950e1a22",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "DELETE",
    Url: "/api/app/category",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("23472208-1dbb-a4b7-8727-3a03760a8ef2"),
            TenantId: null,
            AuditLogId: UUID("4d4f9f71-5b5b-9ce8-23f1-3a03760a8ef2"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "DeleteAsync",
            Parameters: "{\"id\":\"49e0afda-3a41-a98a-eb1f-3a03724fb2a2\"}",
            ExecutionTime: ISODate("2022-04-26T03:15:16.25Z"),
            ExecutionDuration: NumberInt("86"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2dac827c-2eda-c522-dab7-3a03760acc05"),
    ConcurrencyStamp: "7a9e43564e844dce9dba41ac1544706a",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:15:31.917Z"),
    ExecutionDuration: NumberInt("56"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "a7a7156889e04ac08efc4e4a974b7926",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("7eee89fa-77d8-e00d-f452-3a03760acc05"),
            TenantId: null,
            AuditLogId: UUID("2dac827c-2eda-c522-dab7-3a03760acc05"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"aaa\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:15:31.938Z"),
            ExecutionDuration: NumberInt("26"),
            ExtraProperties: { }
        },
        {
            _id: UUID("b92be257-08d0-d62a-2daa-3a03760acc05"),
            TenantId: null,
            AuditLogId: UUID("2dac827c-2eda-c522-dab7-3a03760acc05"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:15:31.926Z"),
            ExecutionDuration: NumberInt("41"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("33ddfab3-b010-4ef3-8ab6-3a03760ae730"),
    ConcurrencyStamp: "e616bc10e33544519a2f562f0a874d2f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:15:38.896Z"),
    ExecutionDuration: NumberInt("32"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "010cf3b07d474287b9cf1cc258cc7738",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/5667e3f6-85cf-8951-aa2f-3a03760acbf0",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("83de4ca0-7276-05c0-c6b0-3a03760ae730"),
            TenantId: null,
            AuditLogId: UUID("33ddfab3-b010-4ef3-8ab6-3a03760ae730"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"5667e3f6-85cf-8951-aa2f-3a03760acbf0\"}",
            ExecutionTime: ISODate("2022-04-26T03:15:38.899Z"),
            ExecutionDuration: NumberInt("29"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("b8a638d7-b5c3-0ca1-aaae-3a03760b091a"),
    ConcurrencyStamp: "2cbbec281af6432397b7265c193d8d16",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:15:47.579Z"),
    ExecutionDuration: NumberInt("31"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "429b0515bd2b4ad3951a7a1e59d125f8",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/5667e3f6-85cf-8951-aa2f-3a03760acbf0",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("bdceebc7-3a25-60fc-3f83-3a03760b091a"),
            TenantId: null,
            AuditLogId: UUID("b8a638d7-b5c3-0ca1-aaae-3a03760b091a"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"5667e3f6-85cf-8951-aa2f-3a03760acbf0\"}",
            ExecutionTime: ISODate("2022-04-26T03:15:47.581Z"),
            ExecutionDuration: NumberInt("29"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("44b83b0e-4b81-6cb1-0a77-3a03760e7048"),
    ConcurrencyStamp: "c337182060f646efb83885b8c1702945",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:19:30.425Z"),
    ExecutionDuration: NumberInt("198"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "09464e7b553341a3b19e09da8d4a20ac",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("eb19b1ff-dea4-6591-1e9d-3a03760e7048"),
            TenantId: null,
            AuditLogId: UUID("44b83b0e-4b81-6cb1-0a77-3a03760e7048"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 1\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:19:30.459Z"),
            ExecutionDuration: NumberInt("153"),
            ExtraProperties: { }
        },
        {
            _id: UUID("90659b6d-2254-f535-7bea-3a03760e704a"),
            TenantId: null,
            AuditLogId: UUID("44b83b0e-4b81-6cb1-0a77-3a03760e7048"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:19:30.436Z"),
            ExecutionDuration: NumberInt("179"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("118b1321-8b61-c593-b637-3a03760ee269"),
    ConcurrencyStamp: "06f7dbbd058c4bda908f7ec816cbdf4c",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:19:59.836Z"),
    ExecutionDuration: NumberInt("12"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "f498071d491f4a6bbb785a969c03a221",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("d3a0226f-c309-d8a3-ea9e-3a03760ee269"),
            TenantId: null,
            AuditLogId: UUID("118b1321-8b61-c593-b637-3a03760ee269"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 2\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:19:59.841Z"),
            ExecutionDuration: NumberInt("7"),
            ExtraProperties: { }
        },
        {
            _id: UUID("eeddb6cf-3a5d-4647-93bc-3a03760ee269"),
            TenantId: null,
            AuditLogId: UUID("118b1321-8b61-c593-b637-3a03760ee269"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:19:59.84Z"),
            ExecutionDuration: NumberInt("8"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("95f265bb-833e-2fa5-a077-3a03760efceb"),
    ConcurrencyStamp: "87f0a4cebdee4c0abb3b720d269ee2e4",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:20:06.609Z"),
    ExecutionDuration: NumberInt("25"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "8b2f439bad814247a5c81a68423b0a8e",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("d6a7d5df-055e-1446-cf47-3a03760efcec"),
            TenantId: null,
            AuditLogId: UUID("95f265bb-833e-2fa5-a077-3a03760efceb"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 3\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:20:06.616Z"),
            ExecutionDuration: NumberInt("9"),
            ExtraProperties: { }
        },
        {
            _id: UUID("cbe938ea-0f96-d621-321d-3a03760efcec"),
            TenantId: null,
            AuditLogId: UUID("95f265bb-833e-2fa5-a077-3a03760efceb"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:20:06.614Z"),
            ExecutionDuration: NumberInt("17"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("16f063ed-69db-2f2e-d33e-3a03760f166c"),
    ConcurrencyStamp: "adef4c95ee4a451285e87573b26475d4",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:20:13.139Z"),
    ExecutionDuration: NumberInt("23"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "a955f057479d4ab890ba441ffc7dd4d1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("5bdb9805-82c0-21b9-d71c-3a03760f166c"),
            TenantId: null,
            AuditLogId: UUID("16f063ed-69db-2f2e-d33e-3a03760f166c"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 4\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:20:13.143Z"),
            ExecutionDuration: NumberInt("8"),
            ExtraProperties: { }
        },
        {
            _id: UUID("243f4af2-33fd-d513-69e1-3a03760f166c"),
            TenantId: null,
            AuditLogId: UUID("16f063ed-69db-2f2e-d33e-3a03760f166c"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:20:13.142Z"),
            ExecutionDuration: NumberInt("16"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("52b1dbee-8d3d-fc2e-40ae-3a03760f2d6c"),
    ConcurrencyStamp: "cb903086f55a456d99c85f47f04f42c5",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:20:19.028Z"),
    ExecutionDuration: NumberInt("24"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "5f9ea7138e74425293fd922c2e7f1554",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("c163620f-e5a0-63f8-e207-3a03760f2d6c"),
            TenantId: null,
            AuditLogId: UUID("52b1dbee-8d3d-fc2e-40ae-3a03760f2d6c"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 5\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:20:19.033Z"),
            ExecutionDuration: NumberInt("9"),
            ExtraProperties: { }
        },
        {
            _id: UUID("cb91de5a-62bf-15d4-0573-3a03760f2d6c"),
            TenantId: null,
            AuditLogId: UUID("52b1dbee-8d3d-fc2e-40ae-3a03760f2d6c"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:20:19.031Z"),
            ExecutionDuration: NumberInt("17"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("61dc5ec6-2776-754f-0824-3a03760f5212"),
    ConcurrencyStamp: "00eb9f607c03474e939c818cd700168d",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:20:28.407Z"),
    ExecutionDuration: NumberInt("25"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "de3e9e6baee24acaa7dea0c0a8a00cf2",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("70e9ab6f-16c7-609d-d37e-3a03760f5212"),
            TenantId: null,
            AuditLogId: UUID("61dc5ec6-2776-754f-0824-3a03760f5212"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 6\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:20:28.412Z"),
            ExecutionDuration: NumberInt("9"),
            ExtraProperties: { }
        },
        {
            _id: UUID("010e30dd-1f93-dfee-400f-3a03760f5212"),
            TenantId: null,
            AuditLogId: UUID("61dc5ec6-2776-754f-0824-3a03760f5212"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:20:28.41Z"),
            ExecutionDuration: NumberInt("16"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("877b2738-2a6b-440e-4217-3a03760f6dde"),
    ConcurrencyStamp: "09111e85d907411d83bf742c4dac0d0c",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:20:35.523Z"),
    ExecutionDuration: NumberInt("27"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "8f926cc5587f4b8da3facf8cdab20d15",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("59e0a385-de2e-fba7-56c2-3a03760f6dde"),
            TenantId: null,
            AuditLogId: UUID("877b2738-2a6b-440e-4217-3a03760f6dde"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 7\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:20:35.529Z"),
            ExecutionDuration: NumberInt("9"),
            ExtraProperties: { }
        },
        {
            _id: UUID("83222a55-295f-1575-c220-3a03760f6dde"),
            TenantId: null,
            AuditLogId: UUID("877b2738-2a6b-440e-4217-3a03760f6dde"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:20:35.527Z"),
            ExecutionDuration: NumberInt("17"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("525d39c1-accd-914c-85d5-3a03760f9758"),
    ConcurrencyStamp: "5e0f0e1533bb4162ade2c378ad3798bc",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:20:46.143Z"),
    ExecutionDuration: NumberInt("24"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "82d9327912a8458ba9a9e9ff6a387b02",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("9f90a61e-e1ac-9d66-3c51-3a03760f9758"),
            TenantId: null,
            AuditLogId: UUID("525d39c1-accd-914c-85d5-3a03760f9758"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 8\",\"idParent\":\"bec662e3-8b68-2500-585b-3a03760f6dc9\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:20:46.148Z"),
            ExecutionDuration: NumberInt("9"),
            ExtraProperties: { }
        },
        {
            _id: UUID("e6ed9957-565c-e12c-0cf5-3a03760f9758"),
            TenantId: null,
            AuditLogId: UUID("525d39c1-accd-914c-85d5-3a03760f9758"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:20:46.146Z"),
            ExecutionDuration: NumberInt("17"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("f4966aa2-eb7c-74d6-08af-3a03760fe145"),
    ConcurrencyStamp: "b6a1d79cc42e4909a47e98d98fc4235f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:21:05.066Z"),
    ExecutionDuration: NumberInt("26"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "0a5ec008f43241d0a4fdd7a15fe69a6d",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("d4691413-e79f-9fc7-81d8-3a03760fe145"),
            TenantId: null,
            AuditLogId: UUID("f4966aa2-eb7c-74d6-08af-3a03760fe145"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 9\",\"idParent\":\"7ca30a0e-7929-6546-bd1e-3a03760f51fd\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:21:05.073Z"),
            ExecutionDuration: NumberInt("9"),
            ExtraProperties: { }
        },
        {
            _id: UUID("14f41e24-4416-ad92-6ec8-3a03760fe145"),
            TenantId: null,
            AuditLogId: UUID("f4966aa2-eb7c-74d6-08af-3a03760fe145"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:21:05.072Z"),
            ExecutionDuration: NumberInt("16"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("0409a5f1-c40d-48b4-ca54-3a0376103e4c"),
    ConcurrencyStamp: "4e1ee0ef29dd45efb6d8c6cb71b503da",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:21:26.911Z"),
    ExecutionDuration: NumberInt("1996"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "a73fa1a247084aa3b6fade603d5bf290",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("26c51cce-f414-dbb2-5c86-3a0376103e4c"),
            TenantId: null,
            AuditLogId: UUID("0409a5f1-c40d-48b4-ca54-3a0376103e4c"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"a9b50ff2-7ef5-220c-6297-3a03760fe132\",\"input\":{\"name\":\"loai 9\",\"idParent\":\"7ca30a0e-7929-6546-bd1e-3a03760f51fd\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:21:26.919Z"),
            ExecutionDuration: NumberInt("1988"),
            ExtraProperties: { }
        },
        {
            _id: UUID("0700f085-353b-66a2-194e-3a0376103e4c"),
            TenantId: null,
            AuditLogId: UUID("0409a5f1-c40d-48b4-ca54-3a0376103e4c"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:21:26.916Z"),
            ExecutionDuration: NumberInt("1992"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("245084b4-a609-1c72-b102-3a0376114a42"),
    ConcurrencyStamp: "0a31106b680343bea00cb4363834be8e",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:22:37.482Z"),
    ExecutionDuration: NumberInt("24"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "ee3e195aea5249c291524ee5d335d376",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("7c3196af-fb09-d14a-2da2-3a0376114a42"),
            TenantId: null,
            AuditLogId: UUID("245084b4-a609-1c72-b102-3a0376114a42"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 10\",\"idParent\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:22:37.487Z"),
            ExecutionDuration: NumberInt("8"),
            ExtraProperties: { }
        },
        {
            _id: UUID("d15bd362-adf4-669e-541a-3a0376114a43"),
            TenantId: null,
            AuditLogId: UUID("245084b4-a609-1c72-b102-3a0376114a42"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:22:37.485Z"),
            ExecutionDuration: NumberInt("16"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2246fe82-59b0-2d52-bf0c-3a037611a719"),
    ConcurrencyStamp: "611f1196bc8f4923b82a156f5560b5cb",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:23:01.248Z"),
    ExecutionDuration: NumberInt("24"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "599b95440fe64ed39c88950788edc339",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("24f9ef8d-a71b-e0af-527c-3a037611a719"),
            TenantId: null,
            AuditLogId: UUID("2246fe82-59b0-2d52-bf0c-3a037611a719"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 11\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T03:23:01.253Z"),
            ExecutionDuration: NumberInt("9"),
            ExtraProperties: { }
        },
        {
            _id: UUID("1e4364df-0c1c-5be4-7f2c-3a037611a719"),
            TenantId: null,
            AuditLogId: UUID("2246fe82-59b0-2d52-bf0c-3a037611a719"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:23:01.251Z"),
            ExecutionDuration: NumberInt("17"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("d235cb55-f63e-a653-d0a6-3a037632a7e5"),
    ConcurrencyStamp: "57a1d043053743539849d9a5f348395d",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T10:59:03.921Z"),
    ExecutionDuration: NumberInt("229"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "46da8c71ad6444e1833712eb2cc7eb9a",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("95f81620-4934-76fb-6892-3a037632a7e5"),
            TenantId: null,
            AuditLogId: UUID("d235cb55-f63e-a653-d0a6-3a037632a7e5"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 12\",\"idParent\":\"fc8a318f-3252-4196-23a1-3a03760e6fa9\",\"description\":null,\"deadline\":2}}",
            ExecutionTime: ISODate("2022-04-26T03:59:03.949Z"),
            ExecutionDuration: NumberInt("191"),
            ExtraProperties: { }
        },
        {
            _id: UUID("22ee43e7-059e-c9f0-6ae3-3a037632a7e9"),
            TenantId: null,
            AuditLogId: UUID("d235cb55-f63e-a653-d0a6-3a037632a7e5"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T03:59:03.931Z"),
            ExecutionDuration: NumberInt("211"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("60182c0d-30cb-0439-8a11-3a037657143d"),
    ConcurrencyStamp: "e799dfe11f134d4292825dbdcadfa08f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T11:38:46.636Z"),
    ExecutionDuration: NumberInt("4550"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "ec2def5df6f34eedb0e6da4f55edf441",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"The method TakeLast is not supported in the expression tree: aggregate([]).TakeLast(2147483647).\",\r\n    \"details\": \"NotSupportedException: The method TakeLast is not supported in the expression tree: aggregate([]).TakeLast(2147483647).\\r\\nSTACK TRACE:    at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindMethodCall(MethodCallExpression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.Bind(Expression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindPipeline(Expression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindMethodCall(MethodCallExpression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.Bind(Expression node)\\r\\n   at MongoDB.Driver.Linq.Processors.Pipeline.PipelineBinder.Bind(Expression node, IBsonSerializerRegistry serializerRegistry)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.Prepare(Expression expression)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.Translate(Expression expression)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.ExecuteAsync[TResult](Expression expression, CancellationToken cancellationToken)\\r\\n   at MongoDB.Driver.Linq.MongoQueryable.LongCountAsync[TSource](IMongoQueryable`1 source, CancellationToken cancellationToken)\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 52\\r\\n   at lambda_method1898(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("7d454cf3-99bd-5ff6-615f-3a037657143d"),
            TenantId: null,
            AuditLogId: UUID("60182c0d-30cb-0439-8a11-3a037657143d"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T04:38:47.077Z"),
            ExecutionDuration: NumberInt("4061"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("f0df5e18-26d7-1cd7-9fb8-3a037659179e"),
    ConcurrencyStamp: "fb4bbd55f87e4de1a4f86ee4bf3f5d13",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T11:41:02.941Z"),
    ExecutionDuration: NumberInt("177"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "2dcd2e6309f14511ab742d1b77b701d5",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "DELETE",
    Url: "/api/app/category",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("a9ef1d54-f1cd-3695-a903-3a037659179f"),
            TenantId: null,
            AuditLogId: UUID("f0df5e18-26d7-1cd7-9fb8-3a037659179e"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "DeleteAsync",
            Parameters: "{\"id\":\"5667e3f6-85cf-8951-aa2f-3a03760acbf0\"}",
            ExecutionTime: ISODate("2022-04-26T04:41:02.95Z"),
            ExecutionDuration: NumberInt("164"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("29aedbdc-05dc-0b65-af80-3a03766372ff"),
    ConcurrencyStamp: "9c578384092845e0bf2a5f18a47a15d7",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T11:52:17.604Z"),
    ExecutionDuration: NumberInt("4264"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "c0b51afb86d94f05a99bbafb8b6f2ea9",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"The method TakeWhile is not supported in the expression tree: aggregate([]).TakeWhile((e, i) => ((i >= 0) AndAlso (i < 2147483647))).\",\r\n    \"details\": \"NotSupportedException: The method TakeWhile is not supported in the expression tree: aggregate([]).TakeWhile((e, i) => ((i >= 0) AndAlso (i < 2147483647))).\\r\\nSTACK TRACE:    at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindMethodCall(MethodCallExpression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.Bind(Expression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindPipeline(Expression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindMethodCall(MethodCallExpression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.Bind(Expression node)\\r\\n   at MongoDB.Driver.Linq.Processors.Pipeline.PipelineBinder.Bind(Expression node, IBsonSerializerRegistry serializerRegistry)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.Prepare(Expression expression)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.Translate(Expression expression)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.ExecuteAsync[TResult](Expression expression, CancellationToken cancellationToken)\\r\\n   at MongoDB.Driver.Linq.MongoQueryable.LongCountAsync[TSource](IMongoQueryable`1 source, CancellationToken cancellationToken)\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 52\\r\\n   at lambda_method1898(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("69bf09ba-cc72-1c76-d6a5-3a0376637300"),
            TenantId: null,
            AuditLogId: UUID("29aedbdc-05dc-0b65-af80-3a03766372ff"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T04:52:17.994Z"),
            ExecutionDuration: NumberInt("3799"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("d3d4b5ea-9f7d-a50d-70a0-3a037663baf7"),
    ConcurrencyStamp: "28d12068e5c84ec5827c255c4b52b574",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T11:52:36.652Z"),
    ExecutionDuration: NumberInt("3658"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "949b812822554a5cba3dcbcef14730f0",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"The method TakeWhile is not supported in the expression tree: aggregate([]).TakeWhile((e, i) => ((i >= 0) AndAlso (i < 2147483647))).\",\r\n    \"details\": \"NotSupportedException: The method TakeWhile is not supported in the expression tree: aggregate([]).TakeWhile((e, i) => ((i >= 0) AndAlso (i < 2147483647))).\\r\\nSTACK TRACE:    at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindMethodCall(MethodCallExpression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindPipeline(Expression node)\\r\\n   at MongoDB.Driver.Linq.Processors.PipelineBinderBase`1.BindMethodCall(MethodCallExpression node)\\r\\n   at MongoDB.Driver.Linq.Processors.Pipeline.PipelineBinder.Bind(Expression node, IBsonSerializerRegistry serializerRegistry)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.Prepare(Expression expression)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.Translate(Expression expression)\\r\\n   at MongoDB.Driver.Linq.MongoQueryProviderImpl`1.ExecuteAsync[TResult](Expression expression, CancellationToken cancellationToken)\\r\\n   at MongoDB.Driver.Linq.MongoQueryable.LongCountAsync[TSource](IMongoQueryable`1 source, CancellationToken cancellationToken)\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 52\\r\\n   at lambda_method1898(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("2dc94658-ed89-3d36-5c5c-3a037663baf7"),
            TenantId: null,
            AuditLogId: UUID("d3d4b5ea-9f7d-a50d-70a0-3a037663baf7"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T04:52:36.655Z"),
            ExecutionDuration: NumberInt("3645"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("c5ead905-26f6-e92d-f183-3a0376f197ab"),
    ConcurrencyStamp: "18e6905f4313402798312782742b2073",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:27:37.163Z"),
    ExecutionDuration: NumberInt("215"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "579c35c97c7a440697ecac3b9f73ac14",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("af5269bc-360c-878b-5f11-3a0376f197ab"),
            TenantId: null,
            AuditLogId: UUID("c5ead905-26f6-e92d-f183-3a0376f197ab"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:27:37.177Z"),
            ExecutionDuration: NumberInt("199"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("ed7369ca-ff09-f993-1896-3a0376f1fe32"),
    ConcurrencyStamp: "acb9f1963c7c42d4a29e86bae614a8c8",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:28:03.609Z"),
    ExecutionDuration: NumberInt("25"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "12ccaf6a84ad43d294ba1a37d34ad275",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/fc8a318f-3252-4196-23a1-3a03760e6fa9",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("df160a9b-c7cf-cc0d-5a98-3a0376f1fe32"),
            TenantId: null,
            AuditLogId: UUID("ed7369ca-ff09-f993-1896-3a0376f1fe32"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"fc8a318f-3252-4196-23a1-3a03760e6fa9\"}",
            ExecutionTime: ISODate("2022-04-26T07:28:03.611Z"),
            ExecutionDuration: NumberInt("23"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("c1056559-d76e-c9f0-1be1-3a0376f37a48"),
    ConcurrencyStamp: "a672825698d2401ab4fcc4b51448ba28",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:29:40.773Z"),
    ExecutionDuration: NumberInt("156"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "a9acd268718047a38f8929ab9a2651dc",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("ef74ea7c-c204-ff29-0839-3a0376f37a49"),
            TenantId: null,
            AuditLogId: UUID("c1056559-d76e-c9f0-1be1-3a0376f37a48"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:29:40.782Z"),
            ExecutionDuration: NumberInt("145"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("8d193d8a-843f-9750-26bc-3a0376f5bb11"),
    ConcurrencyStamp: "2bb35380d9b04c83a69f64391fc1f5a9",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:32:08.574Z"),
    ExecutionDuration: NumberInt("19"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "42da47f1e8464e08b0e130fa965ad44b",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("6a6df8b4-83b4-6869-39b2-3a0376f5bb11"),
            TenantId: null,
            AuditLogId: UUID("8d193d8a-843f-9750-26bc-3a0376f5bb11"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:32:08.576Z"),
            ExecutionDuration: NumberInt("17"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("a4bd71ab-33b9-5036-0a43-3a03770521e7"),
    ConcurrencyStamp: "2012a11a07cc4b088c7d6b7f3a8cf164",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:48:57.942Z"),
    ExecutionDuration: NumberInt("17"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "170ba2b2fc8c4c0badc6dddfafa16490",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("157ca611-7ff1-6ad1-879a-3a03770521e7"),
            TenantId: null,
            AuditLogId: UUID("a4bd71ab-33b9-5036-0a43-3a03770521e7"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:48:57.944Z"),
            ExecutionDuration: NumberInt("15"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("701e6960-1916-3793-6888-3a037706bf47"),
    ConcurrencyStamp: "33a3d4b0d9064526a86ee39352114339",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:50:43.764Z"),
    ExecutionDuration: NumberInt("18"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "734ac5c0626d4ef49c4976230469c14e",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("1ef130e3-e472-5138-0752-3a037706bf47"),
            TenantId: null,
            AuditLogId: UUID("701e6960-1916-3793-6888-3a037706bf47"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:50:43.766Z"),
            ExecutionDuration: NumberInt("16"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("7c86a9ff-19fd-0544-f1ac-3a0377090d3c"),
    ConcurrencyStamp: "07db60e69547407499ed0cde60fc3363",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:53:14.781Z"),
    ExecutionDuration: NumberInt("31"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "4a76dd7ad5f9436789b065b20220aa6e",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("ba045286-4aa4-e2f7-fa78-3a0377090d3d"),
            TenantId: null,
            AuditLogId: UUID("7c86a9ff-19fd-0544-f1ac-3a0377090d3c"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:53:14.784Z"),
            ExecutionDuration: NumberInt("28"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("71ed02f0-6201-c76f-d36c-3a03770932d0"),
    ConcurrencyStamp: "cbce976cbba249bebe0c402997f866f1",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:53:24.411Z"),
    ExecutionDuration: NumberInt("21"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "955ecd39a91f4c259f3ce18adcf419be",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("ac6eddfa-bcf7-29eb-c7e0-3a03770932d0"),
            TenantId: null,
            AuditLogId: UUID("71ed02f0-6201-c76f-d36c-3a03770932d0"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:53:24.414Z"),
            ExecutionDuration: NumberInt("18"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("0666fb4b-b04c-6c0e-2e6e-3a037709811d"),
    ConcurrencyStamp: "6ff42c13d7a94b4787fdde381c5745de",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:53:44.452Z"),
    ExecutionDuration: NumberInt("24"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "ff759d3b3f1a462a80bab004289b35b9",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("6eee8f2f-3897-f35e-e3c3-3a037709811d"),
            TenantId: null,
            AuditLogId: UUID("0666fb4b-b04c-6c0e-2e6e-3a037709811d"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:53:44.454Z"),
            ExecutionDuration: NumberInt("22"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("36c4dcc1-09c1-a93f-d357-3a037709f3a9"),
    ConcurrencyStamp: "92e24e01b6e34dff90f9586fe04fa07d",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T14:54:13.785Z"),
    ExecutionDuration: NumberInt("16"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "4067ef85d43c41ddade327fb284949b4",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/eaa18cf1-c03a-22cd-f701-3a03760ee261",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("5fce999d-9be8-0402-2664-3a037709f3a9"),
            TenantId: null,
            AuditLogId: UUID("36c4dcc1-09c1-a93f-d357-3a037709f3a9"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"eaa18cf1-c03a-22cd-f701-3a03760ee261\"}",
            ExecutionTime: ISODate("2022-04-26T07:54:13.786Z"),
            ExecutionDuration: NumberInt("15"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("555bc8dc-40bb-ff7f-4ed3-3a037717a536"),
    ConcurrencyStamp: "49ff44092a6640d5ac020c85757dfc76",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:09:10.292Z"),
    ExecutionDuration: NumberInt("914"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "6a0e8fc4f981420ba7d40c59ba1c2b81",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'ordering')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'ordering')\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Validation.Check.NotEmpty(String value, String parameterName)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 55\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 56\\r\\n   at lambda_method1897(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("d4b3b3f2-3fc0-2692-15e9-3a037717a537"),
            TenantId: null,
            AuditLogId: UUID("555bc8dc-40bb-ff7f-4ed3-3a037717a536"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:09:10.738Z"),
            ExecutionDuration: NumberInt("427"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("207261c1-547d-c768-41dc-3a037717e1ee"),
    ConcurrencyStamp: "12abf30891364395bbbee981439d27cb",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:09:26.441Z"),
    ExecutionDuration: NumberInt("325"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "04fa4b075d504b839dda93081d5cead0",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'ordering')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'ordering')\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Validation.Check.NotEmpty(String value, String parameterName)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 55\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 56\\r\\n   at lambda_method1897(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("bec257f4-5d06-e727-7b63-3a037717e1ee"),
            TenantId: null,
            AuditLogId: UUID("207261c1-547d-c768-41dc-3a037717e1ee"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:09:26.446Z"),
            ExecutionDuration: NumberInt("317"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("1cb809e2-ca93-e954-118c-3a037718c8c3"),
    ConcurrencyStamp: "49d629bb245c43309da3701b27c56d9d",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:10:24.797Z"),
    ExecutionDuration: NumberInt("1046"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "53f28ddd8fe941a89103d27aa05a9530",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'ordering')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'ordering')\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Validation.Check.NotEmpty(String value, String parameterName)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 55\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 56\\r\\n   at lambda_method1897(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("389f5992-fc12-435d-cb1f-3a037718c8c4"),
            TenantId: null,
            AuditLogId: UUID("1cb809e2-ca93-e954-118c-3a037718c8c3"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:10:25.252Z"),
            ExecutionDuration: NumberInt("535"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("0184d70e-e5b8-c06c-278b-3a0377190d97"),
    ConcurrencyStamp: "fb1187687c7f4d6588f07d06d4c66bd9",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:10:43.126Z"),
    ExecutionDuration: NumberInt("353"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "c10959a4ad804400839a9cdfe6f64e0b",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'ordering')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'ordering')\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Validation.Check.NotEmpty(String value, String parameterName)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 55\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 56\\r\\n   at lambda_method1897(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("f5ef3216-33fb-22d4-3ac9-3a0377190d97"),
            TenantId: null,
            AuditLogId: UUID("0184d70e-e5b8-c06c-278b-3a0377190d97"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:10:43.13Z"),
            ExecutionDuration: NumberInt("344"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("5e243ae3-3520-4904-59a9-3a037719218c"),
    ConcurrencyStamp: "406c234436a44574ae78f8b76d0c8a5f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:10:48.335Z"),
    ExecutionDuration: NumberInt("253"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "67a769d6ad3440a7a0a13a249c879266",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'ordering')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'ordering')\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Validation.Check.NotEmpty(String value, String parameterName)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 55\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 56\\r\\n   at lambda_method1897(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("c4d03027-75a4-a12e-cbff-3a037719218c"),
            TenantId: null,
            AuditLogId: UUID("5e243ae3-3520-4904-59a9-3a037719218c"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:10:48.337Z"),
            ExecutionDuration: NumberInt("247"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("34987552-b94e-b877-b2c5-3a03771c47a9"),
    ConcurrencyStamp: "0d8b2978801842658c8ef35efc83a174",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:14:07.766Z"),
    ExecutionDuration: NumberInt("7168"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "6dcc9a8f7b5b47b28ddf28dc2c3a9976",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'ordering')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'ordering')\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Validation.Check.NotEmpty(String value, String parameterName)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 54\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 56\\r\\n   at lambda_method1897(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("ac73a583-2918-e32d-b3b9-3a03771c47aa"),
            TenantId: null,
            AuditLogId: UUID("34987552-b94e-b877-b2c5-3a03771c47a9"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:14:08.364Z"),
            ExecutionDuration: NumberInt("6515"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2a97db5a-9d2e-17a4-5ac8-3a03772a7c56"),
    ConcurrencyStamp: "e598f1e7a78649cf81343a00fad5b7aa",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:29:11.173Z"),
    ExecutionDuration: NumberInt("34752"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "fb593b8bd331443da5133591c1c011c0",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Index and length must refer to a location within the string. (Parameter 'length')\",\r\n    \"details\": \"ArgumentOutOfRangeException: Index and length must refer to a location within the string. (Parameter 'length')\\r\\nSTACK TRACE:    at System.String.Substring(Int32 startIndex, Int32 length)\\r\\n   at QRCode.Categories.MongoCategoryRepository.UpCaseFirstChar(String str) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 50\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 60\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListAsync(String filterText, String name, String sorting, Int32 maxResultCount, Int32 skipCount, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 31\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListCategoryNavigation(String filterText, String name, String sorting, Int32 maxResultCount, Int32 skipCount, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 88\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 60\\r\\n   at lambda_method1905(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("3f539170-3db8-d773-d1af-3a03772a7c58"),
            TenantId: null,
            AuditLogId: UUID("2a97db5a-9d2e-17a4-5ac8-3a03772a7c56"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:29:11.513Z"),
            ExecutionDuration: NumberInt("34366"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("e57bd4fe-e803-e8c0-24ae-3a03772b9884"),
    ConcurrencyStamp: "119c3388b7964e888d71f58c2a9f1f51",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:30:15.755Z"),
    ExecutionDuration: NumberInt("42936"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "b293dc657d464feeab369fa987c5a670",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Index and length must refer to a location within the string. (Parameter 'length')\",\r\n    \"details\": \"ArgumentOutOfRangeException: Index and length must refer to a location within the string. (Parameter 'length')\\r\\nSTACK TRACE:    at System.String.Substring(Int32 startIndex, Int32 length)\\r\\n   at QRCode.Categories.MongoCategoryRepository.UpCaseFirstChar(String str) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 50\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 60\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListAsync(String filterText, String name, String sorting, Int32 maxResultCount, Int32 skipCount, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 31\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListCategoryNavigation(String filterText, String name, String sorting, Int32 maxResultCount, Int32 skipCount, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 88\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 60\\r\\n   at lambda_method1905(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("17fd27c5-6248-3609-edcb-3a03772b9884"),
            TenantId: null,
            AuditLogId: UUID("e57bd4fe-e803-e8c0-24ae-3a03772b9884"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:30:15.759Z"),
            ExecutionDuration: NumberInt("42928"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("61511150-f0cc-830f-3ace-3a0377318767"),
    ConcurrencyStamp: "516822ac16f04b5d99f3051cc64b98f5",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:37:27.377Z"),
    ExecutionDuration: NumberInt("143"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "8f0b5388fd9f4985ac7aea783d676d80",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("22696f6a-c659-8f3d-c5cb-3a0377318768"),
            TenantId: null,
            AuditLogId: UUID("61511150-f0cc-830f-3ace-3a0377318767"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 1\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:37:27.4Z"),
            ExecutionDuration: NumberInt("113"),
            ExtraProperties: { }
        },
        {
            _id: UUID("8c15c217-2a02-62b8-803e-3a0377318769"),
            TenantId: null,
            AuditLogId: UUID("61511150-f0cc-830f-3ace-3a0377318767"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:37:27.384Z"),
            ExecutionDuration: NumberInt("130"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("df093749-a963-f377-df54-3a037732ab8f"),
    ConcurrencyStamp: "a8a6d3209b8e4df5b18e44ae5a152d15",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:38:39.841Z"),
    ExecutionDuration: NumberInt("2451"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "21ebd19425164b1a920180c51d712a81",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'ordering')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'ordering')\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Validation.Check.NotEmpty(String value, String parameterName)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 62\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 56\\r\\n   at lambda_method1898(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("8e163b43-eee8-a7d8-9ed8-3a037732ab90"),
            TenantId: null,
            AuditLogId: UUID("df093749-a963-f377-df54-3a037732ab8f"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:38:40.21Z"),
            ExecutionDuration: NumberInt("2029"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("218a45ea-7783-bcd0-07e5-3a0377331ee8"),
    ConcurrencyStamp: "57926404d92e4696a8bae1365f0e554e",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:39:03.069Z"),
    ExecutionDuration: NumberInt("8778"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "83f61ce89ec5411a8bde1531889e0c7c",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Value cannot be null. (Parameter 'ordering')\",\r\n    \"details\": \"ArgumentNullException: Value cannot be null. (Parameter 'ordering')\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Validation.Check.NotEmpty(String value, String parameterName)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 62\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetCountAsync(String filterText, String name, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 25\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 56\\r\\n   at lambda_method1898(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("5eed1dfe-b6b2-6875-28d1-3a0377331ee8"),
            TenantId: null,
            AuditLogId: UUID("218a45ea-7783-bcd0-07e5-3a0377331ee8"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"name asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:39:03.074Z"),
            ExecutionDuration: NumberInt("8765"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2f7bd872-63a2-dc4c-24de-3a0377357f89"),
    ConcurrencyStamp: "38c2ffaa1aec4083ad5d4fd5a82d048f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:41:47.521Z"),
    ExecutionDuration: NumberInt("128"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "8050ed2539974859914799120e884875",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("2338e4b8-2f64-7df5-c130-3a0377357f89"),
            TenantId: null,
            AuditLogId: UUID("2f7bd872-63a2-dc4c-24de-3a0377357f89"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 2\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:41:47.542Z"),
            ExecutionDuration: NumberInt("101"),
            ExtraProperties: { }
        },
        {
            _id: UUID("ecbf54bb-4e60-0d92-9f7e-3a0377357f8a"),
            TenantId: null,
            AuditLogId: UUID("2f7bd872-63a2-dc4c-24de-3a0377357f89"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:41:47.531Z"),
            ExecutionDuration: NumberInt("113"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("ed6d11c3-9337-fd76-a231-3a0377361534"),
    ConcurrencyStamp: "9e93b8a6dbaf4645aec8491e7ac8dc3f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:42:25.962Z"),
    ExecutionDuration: NumberInt("10"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "96ed010a9a7a4be282e3de02a3b64776",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("055307e0-4c6d-fcb7-5607-3a0377361534"),
            TenantId: null,
            AuditLogId: UUID("ed6d11c3-9337-fd76-a231-3a0377361534"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 3\",\"idParent\":\"26669c08-49d1-e8d2-81a9-3a0377357f1f\",\"description\":null,\"deadline\":3}}",
            ExecutionTime: ISODate("2022-04-26T08:42:25.966Z"),
            ExecutionDuration: NumberInt("4"),
            ExtraProperties: { }
        },
        {
            _id: UUID("bce41500-56f6-fc0a-3c6c-3a0377361534"),
            TenantId: null,
            AuditLogId: UUID("ed6d11c3-9337-fd76-a231-3a0377361534"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:42:25.964Z"),
            ExecutionDuration: NumberInt("7"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("9b4b74ad-a1df-6ce0-0271-3a037736cf12"),
    ConcurrencyStamp: "c9952abcf3ae41429481f2c04176c064",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:43:01.627Z"),
    ExecutionDuration: NumberInt("11926"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "2a536b8b9b0c4c23bb65080b6552b5a3",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"No property or field 'parentName' exists in type 'Category'\",\r\n    \"details\": \"ParseException: No property or field 'parentName' exists in type 'Category'\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseMemberAccess(Type type, Expression expression)\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseIdentifier()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParsePrimaryStart()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParsePrimary()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseUnary()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseMultiplicative()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseAdditive()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseShiftOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseComparisonOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseLogicalAndOrOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseIn()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseAndOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseOrOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseLambdaOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseNullCoalescingOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseConditionalOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseOrdering(Boolean forceThenBy)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy(IQueryable source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 62\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListAsync(String filterText, String name, String sorting, Int32 maxResultCount, Int32 skipCount, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 31\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListCategoryNavigation(String filterText, String name, String sorting, Int32 maxResultCount, Int32 skipCount, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 88\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 60\\r\\n   at lambda_method1898(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("d2f637c2-f6c8-b4a1-b101-3a037736cf12"),
            TenantId: null,
            AuditLogId: UUID("9b4b74ad-a1df-6ce0-0271-3a037736cf12"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"parentName asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T08:43:01.629Z"),
            ExecutionDuration: NumberInt("11901"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("d2173936-b661-6d8e-c916-3a037739b713"),
    ConcurrencyStamp: "76542132c5554279886c7fd0c5fc0e52",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:46:23.845Z"),
    ExecutionDuration: NumberInt("166"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "b91aefa280474b95aed200c1f1968756",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/5ff6bed9-eecd-243f-5485-3a03773186f8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("19fc9a07-dc36-faf4-a464-3a037739b714"),
            TenantId: null,
            AuditLogId: UUID("d2173936-b661-6d8e-c916-3a037739b713"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"5ff6bed9-eecd-243f-5485-3a03773186f8\"}",
            ExecutionTime: ISODate("2022-04-26T08:46:23.853Z"),
            ExecutionDuration: NumberInt("155"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("b7da5d80-c09a-d29f-784f-3a037739dffe"),
    ConcurrencyStamp: "683a9293566244fc968d8d3d02df8bcd",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:46:34.443Z"),
    ExecutionDuration: NumberInt("51"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "c36dd773b25047caa120b27e21b96ca5",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("1859c3f1-917c-6b2a-e925-3a037739dffe"),
            TenantId: null,
            AuditLogId: UUID("b7da5d80-c09a-d29f-784f-3a037739dffe"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 4\",\"idParent\":\"7dc3c95a-80a8-416c-d538-3a037736152f\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:46:34.462Z"),
            ExecutionDuration: NumberInt("18"),
            ExtraProperties: { }
        },
        {
            _id: UUID("ccc9f5a5-c778-81bb-8ba1-3a037739dffe"),
            TenantId: null,
            AuditLogId: UUID("b7da5d80-c09a-d29f-784f-3a037739dffe"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:46:34.45Z"),
            ExecutionDuration: NumberInt("36"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("f06b949f-74c5-cb72-26d9-3a03773a0645"),
    ConcurrencyStamp: "54e3bf0cbc3848fcb25bc29009b36a89",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:46:44.285Z"),
    ExecutionDuration: NumberInt("8"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "ff70229acf984d33bff827c19d8f4d60",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("4ed1ce63-22cb-7c6e-7785-3a03773a0645"),
            TenantId: null,
            AuditLogId: UUID("f06b949f-74c5-cb72-26d9-3a03773a0645"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 5\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:46:44.289Z"),
            ExecutionDuration: NumberInt("4"),
            ExtraProperties: { }
        },
        {
            _id: UUID("56d53d7b-ec22-653c-bf83-3a03773a0645"),
            TenantId: null,
            AuditLogId: UUID("f06b949f-74c5-cb72-26d9-3a03773a0645"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:46:44.287Z"),
            ExecutionDuration: NumberInt("5"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("9ab3316a-fc2e-b579-0cad-3a03773e4a5a"),
    ConcurrencyStamp: "51c4458d175142f2b16514d5a913360b",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:51:23.71Z"),
    ExecutionDuration: NumberInt("148"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "92cb4f271ea94ae386129c5a290aa2dd",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("162a9fd8-2300-ad2c-36f5-3a03773e4a5b"),
            TenantId: null,
            AuditLogId: UUID("9ab3316a-fc2e-b579-0cad-3a03773e4a5a"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 6\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:51:23.726Z"),
            ExecutionDuration: NumberInt("114"),
            ExtraProperties: { }
        },
        {
            _id: UUID("33b447f6-5f2a-edc7-d7e5-3a03773e4a5c"),
            TenantId: null,
            AuditLogId: UUID("9ab3316a-fc2e-b579-0cad-3a03773e4a5a"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:51:23.717Z"),
            ExecutionDuration: NumberInt("127"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("48f6a886-b0be-e06f-9f21-3a03773e63a4"),
    ConcurrencyStamp: "b6891bbaa287474fba8d6076a524b4a4",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:51:30.331Z"),
    ExecutionDuration: NumberInt("9"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "a2c8b1680d6a4e45a9deb1a0888a8533",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("64155e3e-44ae-d3c1-f3a4-3a03773e63a4"),
            TenantId: null,
            AuditLogId: UUID("48f6a886-b0be-e06f-9f21-3a03773e63a4"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 7\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:51:30.336Z"),
            ExecutionDuration: NumberInt("4"),
            ExtraProperties: { }
        },
        {
            _id: UUID("c6f946d4-6ef9-9834-cdd6-3a03773e63a4"),
            TenantId: null,
            AuditLogId: UUID("48f6a886-b0be-e06f-9f21-3a03773e63a4"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:51:30.334Z"),
            ExecutionDuration: NumberInt("6"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("ad10161f-3031-a0bd-96aa-3a03773e7c2a"),
    ConcurrencyStamp: "f99a3d581f9f43d2bb4b968f357a681a",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:51:36.604Z"),
    ExecutionDuration: NumberInt("13"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "f8f28f82523f48898115e7522600c426",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("c01bc945-0cae-fae0-d4a9-3a03773e7c2a"),
            TenantId: null,
            AuditLogId: UUID("ad10161f-3031-a0bd-96aa-3a03773e7c2a"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 8\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:51:36.607Z"),
            ExecutionDuration: NumberInt("5"),
            ExtraProperties: { }
        },
        {
            _id: UUID("478f91b2-ac49-5920-0f82-3a03773e7c2a"),
            TenantId: null,
            AuditLogId: UUID("ad10161f-3031-a0bd-96aa-3a03773e7c2a"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:51:36.606Z"),
            ExecutionDuration: NumberInt("9"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("96c420a9-0dbc-76d5-c8c8-3a03773e92d3"),
    ConcurrencyStamp: "423f12ecd6a54dfdb69d71acb4501c58",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:51:42.403Z"),
    ExecutionDuration: NumberInt("16"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "ea2b11b17c024f2da4ce8350ce2d50f1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("bc5f16dc-0537-c4c0-c6f6-3a03773e92d3"),
            TenantId: null,
            AuditLogId: UUID("96c420a9-0dbc-76d5-c8c8-3a03773e92d3"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 9\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:51:42.407Z"),
            ExecutionDuration: NumberInt("5"),
            ExtraProperties: { }
        },
        {
            _id: UUID("a4fd2790-c465-cb94-1aea-3a03773e92d3"),
            TenantId: null,
            AuditLogId: UUID("96c420a9-0dbc-76d5-c8c8-3a03773e92d3"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:51:42.405Z"),
            ExecutionDuration: NumberInt("10"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("0f793bf3-56f1-173d-054d-3a03773eb4fd"),
    ConcurrencyStamp: "5565be7ea277468586e562f010d4d011",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:51:51.15Z"),
    ExecutionDuration: NumberInt("15"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "2bd946f327ad4faa94832d08fecdf40b",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("1556db30-cac4-8c64-6cc1-3a03773eb4fd"),
            TenantId: null,
            AuditLogId: UUID("0f793bf3-56f1-173d-054d-3a03773eb4fd"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 10\",\"idParent\":\"092d058b-d564-0655-1f9b-3a03773e63a0\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:51:51.154Z"),
            ExecutionDuration: NumberInt("5"),
            ExtraProperties: { }
        },
        {
            _id: UUID("97c98cbf-3165-11d2-d5a4-3a03773eb4fd"),
            TenantId: null,
            AuditLogId: UUID("0f793bf3-56f1-173d-054d-3a03773eb4fd"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:51:51.151Z"),
            ExecutionDuration: NumberInt("11"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("bea65dac-93d7-517f-08b3-3a03773ecce9"),
    ConcurrencyStamp: "09d33327bad14986bdb41ac3ec464ca1",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:51:57.272Z"),
    ExecutionDuration: NumberInt("16"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "04da9a69cfe647e7ad89b92f1983d1d0",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("3df0a5de-f513-ef33-f13e-3a03773ecce9"),
            TenantId: null,
            AuditLogId: UUID("bea65dac-93d7-517f-08b3-3a03773ecce9"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 11\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:51:57.277Z"),
            ExecutionDuration: NumberInt("6"),
            ExtraProperties: { }
        },
        {
            _id: UUID("31adccb5-6680-5310-58bb-3a03773ecce9"),
            TenantId: null,
            AuditLogId: UUID("bea65dac-93d7-517f-08b3-3a03773ecce9"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:51:57.275Z"),
            ExecutionDuration: NumberInt("11"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("13df5b6c-02f4-3968-7d1f-3a0377413468"),
    ConcurrencyStamp: "daa45b3f87614724b4069e1a51a33c3a",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T15:54:34.85Z"),
    ExecutionDuration: NumberInt("6"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "4be7458f474e4889a3483f9b227d24a9",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("9a0e0aba-8450-8188-bf77-3a0377413468"),
            TenantId: null,
            AuditLogId: UUID("13df5b6c-02f4-3968-7d1f-3a0377413468"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 12\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-26T08:54:34.854Z"),
            ExecutionDuration: NumberInt("2"),
            ExtraProperties: { }
        },
        {
            _id: UUID("2ee0092d-dcae-9a7d-f6d6-3a0377413468"),
            TenantId: null,
            AuditLogId: UUID("13df5b6c-02f4-3968-7d1f-3a0377413468"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T08:54:34.852Z"),
            ExecutionDuration: NumberInt("4"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("821ac557-4876-c52e-c2b7-3a03775244ce"),
    ConcurrencyStamp: "fc05647028144e40b1d95c3572f5a3e7",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T16:13:12.802Z"),
    ExecutionDuration: NumberInt("343"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "11652d02266d423c908f44f513ace1a5",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/api/app/category",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"No property or field 'stt' exists in type 'Category'\",\r\n    \"details\": \"ParseException: No property or field 'stt' exists in type 'Category'\\r\\nSTACK TRACE:    at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseMemberAccess(Type type, Expression expression)\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseIdentifier()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParsePrimary()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseUnary()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseMultiplicative()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseAdditive()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseShiftOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseComparisonOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseLogicalAndOrOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseIn()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseAndOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseOrOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseLambdaOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseNullCoalescingOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseConditionalOperator()\\r\\n   at System.Linq.Dynamic.Core.Parser.ExpressionParser.ParseOrdering(Boolean forceThenBy)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.InternalOrderBy(IQueryable source, ParsingConfig config, String ordering, IComparer comparer, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, ParsingConfig config, String ordering, Object[] args)\\r\\n   at System.Linq.Dynamic.Core.DynamicQueryableExtensions.OrderBy[TSource](IQueryable`1 source, String ordering, Object[] args)\\r\\n   at QRCode.Categories.MongoCategoryRepository.ApplyFilter(IQueryable`1 query, String filterText, String name, Nullable`1 Id, String sorting) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 56\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListAsync(String filterText, String name, String sorting, Int32 maxResultCount, Int32 skipCount, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 31\\r\\n   at QRCode.Categories.MongoCategoryRepository.GetListCategoryNavigation(String filterText, String name, String sorting, Int32 maxResultCount, Int32 skipCount, CancellationToken cancellationToken) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.MongoDB\\\\Categories\\\\MongoCategoryRepository.cs:line 82\\r\\n   at Castle.DynamicProxy.AsyncInterceptorBase.ProceedAsynchronous[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAbpMethodInvocationAdapterWithReturnValue`1.ProceedAsync()\\r\\n   at Volo.Abp.Uow.UnitOfWorkInterceptor.InterceptAsync(IAbpMethodInvocation invocation)\\r\\n   at Volo.Abp.Castle.DynamicProxy.CastleAsyncAbpInterceptorAdapter`1.InterceptAsync[TResult](IInvocation invocation, IInvocationProceedInfo proceedInfo, Func`3 proceed)\\r\\n   at QRCode.Categories.CategoryAppService.GetListAsync(GetCategoryInput input) in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Application\\\\Categories\\\\CategoryAppService.cs:line 60\\r\\n   at lambda_method1899(Closure , Object )\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.AwaitableObjectResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("500"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("7afc180e-cf43-d1b5-b5ba-3a03775244d0"),
            TenantId: null,
            AuditLogId: UUID("821ac557-4876-c52e-c2b7-3a03775244ce"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetListAsync",
            Parameters: "{\"input\":{\"filterText\":null,\"name\":null,\"sorting\":\"stt asc\",\"skipCount\":0,\"maxResultCount\":10}}",
            ExecutionTime: ISODate("2022-04-26T09:13:12.804Z"),
            ExecutionDuration: NumberInt("289"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("9165638d-87b2-4e10-8565-3a037773bb0d"),
    ConcurrencyStamp: "3d1e214a9551492997e975d3e58989b3",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T16:49:45.978Z"),
    ExecutionDuration: NumberInt("140"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "4cfe7b7a4c0f4a2eb614a27ff25b983c",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/5ff6bed9-eecd-243f-5485-3a03773186f8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("ed1fe351-64d3-fb7f-3454-3a037773bb0d"),
            TenantId: null,
            AuditLogId: UUID("9165638d-87b2-4e10-8565-3a037773bb0d"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"5ff6bed9-eecd-243f-5485-3a03773186f8\"}",
            ExecutionTime: ISODate("2022-04-26T09:49:45.988Z"),
            ExecutionDuration: NumberInt("127"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("3e04e60d-7660-3c75-b30e-3a037775b75d"),
    ConcurrencyStamp: "76e636e17b1c46e1aaf22e1a449facb6",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T16:51:56.088Z"),
    ExecutionDuration: NumberInt("157"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "eeaa21e5b4a44d81a00cfdb909fe58fe",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/5ff6bed9-eecd-243f-5485-3a03773186f8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("e55993cc-57b9-ea38-f48c-3a037775b75e"),
            TenantId: null,
            AuditLogId: UUID("3e04e60d-7660-3c75-b30e-3a037775b75d"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"5ff6bed9-eecd-243f-5485-3a03773186f8\"}",
            ExecutionTime: ISODate("2022-04-26T09:51:56.096Z"),
            ExecutionDuration: NumberInt("148"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("fd771374-8a8b-23cc-a0fc-3a03777b8d48"),
    ConcurrencyStamp: "11dbdbd715024448b1ac8b4dfd866c87",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T16:58:18.499Z"),
    ExecutionDuration: NumberInt("188"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "4b1489a852a14d17adaa67dfb41a6bfc",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "DELETE",
    Url: "/api/app/category",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("cee72dc1-a01d-8e87-427c-3a03777b8d49"),
            TenantId: null,
            AuditLogId: UUID("fd771374-8a8b-23cc-a0fc-3a03777b8d48"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "DeleteAsync",
            Parameters: "{\"id\":\"5ff6bed9-eecd-243f-5485-3a03773186f8\"}",
            ExecutionTime: ISODate("2022-04-26T09:58:18.505Z"),
            ExecutionDuration: NumberInt("179"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("e89b34c7-f3d8-5670-2ad2-3a037787d9a4"),
    ConcurrencyStamp: "14fd5035de414f05a42a283f500fc46d",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-26T17:11:35.709Z"),
    ExecutionDuration: NumberInt("8954"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "130b8b6d6054443481e2c979d934579a",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/Categories",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Object reference not set to an instance of an object.\",\r\n    \"details\": \"NullReferenceException: Object reference not set to an instance of an object.\\r\\nSTACK TRACE:    at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form.AbpInputTagHelperService.GetInputTagHelper(TagHelperContext context, TagHelperOutput output)\\r\\n   at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form.AbpInputTagHelperService.GetInputTagHelperOutputAsync(TagHelperContext context, TagHelperOutput output)\\r\\n   at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form.AbpInputTagHelperService.GetFormInputGroupAsHtmlAsync(TagHelperContext context, TagHelperOutput output)\\r\\n   at Volo.Abp.AspNetCore.Mvc.UI.Bootstrap.TagHelpers.Form.AbpInputTagHelperService.ProcessAsync(TagHelperContext context, TagHelperOutput output)\\r\\n   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner.<RunAsync>g__Awaited|0_0(Task task, TagHelperExecutionContext executionContext, Int32 i, Int32 count)\\r\\n   at AspNetCore._Pages_Categories_Index.ExecuteAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)\\r\\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)\\r\\n   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)\\r\\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)\\r\\n   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|30_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResourceFilter>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResourceExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeFilterPipelineAsync()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)\\r\\n   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)\\r\\n   at Volo.Abp.AspNetCore.Serilog.AbpSerilogMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)\\r\\n   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Volo.Abp.AspNetCore.Auditing.AbpAuditingMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("05207b68-a397-20e2-6ecc-3a037787d9a4"),
            TenantId: null,
            AuditLogId: UUID("e89b34c7-f3d8-5670-2ad2-3a037787d9a4"),
            ServiceName: "QRCode.Web.Pages.Categories.IndexModel",
            MethodName: "OnGet",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-26T10:11:35.713Z"),
            ExecutionDuration: NumberInt("0"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("474b409c-53a0-33cc-4c58-3a03811f54f0"),
    ConcurrencyStamp: "23f2e28024494930afce426e7fc4f810",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T13:53:46.763Z"),
    ExecutionDuration: NumberInt("334"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "4337e45e026a40c5aa43ce201e7f7c9b",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("bcb7d24b-9d4d-65bd-531f-3a03811f54f2"),
            TenantId: null,
            AuditLogId: UUID("474b409c-53a0-33cc-4c58-3a03811f54f0"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 13\",\"idParent\":\"5c752871-dd8d-d6ec-e1db-3a0377413466\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-28T06:53:46.818Z"),
            ExecutionDuration: NumberInt("260"),
            ExtraProperties: { }
        },
        {
            _id: UUID("8bbdf833-7e45-e069-612b-3a03811f54f5"),
            TenantId: null,
            AuditLogId: UUID("474b409c-53a0-33cc-4c58-3a03811f54f0"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T06:53:46.786Z"),
            ExecutionDuration: NumberInt("298"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("ddc485f6-7010-d8b8-da70-3a03811fa2d8"),
    ConcurrencyStamp: "c463424590a24280956ad65859301ea8",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T13:54:07.043Z"),
    ExecutionDuration: NumberInt("21"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "b8d718083b164807af87b056c8d03149",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("684a8648-df5e-2b9a-4f80-3a03811fa2d8"),
            TenantId: null,
            AuditLogId: UUID("ddc485f6-7010-d8b8-da70-3a03811fa2d8"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 13\",\"idParent\":\"5c752871-dd8d-d6ec-e1db-3a0377413466\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-28T06:54:07.051Z"),
            ExecutionDuration: NumberInt("10"),
            ExtraProperties: { }
        },
        {
            _id: UUID("2d791dab-c7a9-a3e1-3910-3a03811fa2d8"),
            TenantId: null,
            AuditLogId: UUID("ddc485f6-7010-d8b8-da70-3a03811fa2d8"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T06:54:07.047Z"),
            ExecutionDuration: NumberInt("15"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("c7114e64-878c-87d7-be17-3a03812128bc"),
    ConcurrencyStamp: "3d9f521633c040fba138bf65f303b77a",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T13:55:09.31Z"),
    ExecutionDuration: NumberInt("37566"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "e252b847c4614aee98acb0c842c80999",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("0fb47b10-0332-08be-97bb-3a03812128bc"),
            TenantId: null,
            AuditLogId: UUID("c7114e64-878c-87d7-be17-3a03812128bc"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 13\",\"idParent\":\"5c752871-dd8d-d6ec-e1db-3a0377413466\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-28T06:55:46.75Z"),
            ExecutionDuration: NumberInt("108"),
            ExtraProperties: { }
        },
        {
            _id: UUID("dab46367-c6e8-1033-adbe-3a03812128bc"),
            TenantId: null,
            AuditLogId: UUID("c7114e64-878c-87d7-be17-3a03812128bc"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T06:55:09.316Z"),
            ExecutionDuration: NumberInt("37559"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("070246e0-f8af-6b14-055e-3a0381231ff9"),
    ConcurrencyStamp: "008a88139941471a8b0ef91319206e13",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T13:57:55.492Z"),
    ExecutionDuration: NumberInt("201"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "82e4e3c6ebf140489802d1c3956fb4b4",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "DELETE",
    Url: "/api/app/category",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("6e5ee43b-9488-67d1-cd7f-3a0381231ff9"),
            TenantId: null,
            AuditLogId: UUID("070246e0-f8af-6b14-055e-3a0381231ff9"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "DeleteAsync",
            Parameters: "{\"id\":\"b944e913-12ab-ac3b-ef45-3a03811fa2cc\"}",
            ExecutionTime: ISODate("2022-04-28T06:57:55.501Z"),
            ExecutionDuration: NumberInt("188"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("d659c1eb-597d-feaa-794a-3a0381232c91"),
    ConcurrencyStamp: "2db6e1646a194de483492f13d32a6aa4",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T13:57:58.906Z"),
    ExecutionDuration: NumberInt("23"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "3f7b374407d8452ab48a59bf8837f1f8",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "DELETE",
    Url: "/api/app/category",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("3bbe8332-6e7c-49de-c2a8-3a0381232c91"),
            TenantId: null,
            AuditLogId: UUID("d659c1eb-597d-feaa-794a-3a0381232c91"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "DeleteAsync",
            Parameters: "{\"id\":\"87c210e2-de7b-8f82-1378-3a03811f53db\"}",
            ExecutionTime: ISODate("2022-04-28T06:57:58.907Z"),
            ExecutionDuration: NumberInt("20"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("53121ca8-25bb-68ad-5ff3-3a0381233733"),
    ConcurrencyStamp: "f8cb7d872a364bbc94c9e46919e35c7a",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T13:58:01.632Z"),
    ExecutionDuration: NumberInt("19"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "e70bdc11582447c4a1d093f23647ad31",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "DELETE",
    Url: "/api/app/category",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("4dacef1f-079c-f811-ecb4-3a0381233733"),
            TenantId: null,
            AuditLogId: UUID("53121ca8-25bb-68ad-5ff3-3a0381233733"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "DeleteAsync",
            Parameters: "{\"id\":\"befe0b85-efe8-63ba-9d81-3a0381212846\"}",
            ExecutionTime: ISODate("2022-04-28T06:58:01.633Z"),
            ExecutionDuration: NumberInt("17"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("7048002c-d00e-48c6-f431-3a0381248de2"),
    ConcurrencyStamp: "6fcf6408e2584cdca24160422bcf7398",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T13:58:25.972Z"),
    ExecutionDuration: NumberInt("63406"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "c03877cda113441d960216b1a2182b60",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("70061b01-036e-dc0d-b734-3a0381248de2"),
            TenantId: null,
            AuditLogId: UUID("7048002c-d00e-48c6-f431-3a0381248de2"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 13\",\"idParent\":\"5c752871-dd8d-d6ec-e1db-3a0377413466\",\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-28T06:59:29.329Z"),
            ExecutionDuration: NumberInt("38"),
            ExtraProperties: { }
        },
        {
            _id: UUID("9d4ce25c-7a1d-788c-c958-3a0381248de2"),
            TenantId: null,
            AuditLogId: UUID("7048002c-d00e-48c6-f431-3a0381248de2"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T06:58:25.984Z"),
            ExecutionDuration: NumberInt("63383"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("7c8cd55a-f0fb-150f-794f-3a038126405e"),
    ConcurrencyStamp: "213e441f19374536b7877869c4001dd9",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T14:00:36.165Z"),
    ExecutionDuration: NumberInt("44441"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "3ab5c9cced374cbdb869171b4ece5164",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("91bb440f-2029-0495-9ef7-3a038126405e"),
            TenantId: null,
            AuditLogId: UUID("7c8cd55a-f0fb-150f-794f-3a038126405e"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 14\",\"idParent\":\"8253003a-795a-c590-ed61-3a0381248dbe\",\"description\":\"<ol><li>13&nbsp;</li><li>13</li></ol>\",\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-28T07:01:20.493Z"),
            ExecutionDuration: NumberInt("113"),
            ExtraProperties: { }
        },
        {
            _id: UUID("eec91add-f75d-b6fa-3475-3a038126405f"),
            TenantId: null,
            AuditLogId: UUID("7c8cd55a-f0fb-150f-794f-3a038126405e"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T07:00:36.168Z"),
            ExecutionDuration: NumberInt("44438"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("988bac9c-59d4-6eba-1728-3a038129e939"),
    ConcurrencyStamp: "8bc81dbc0015483f963699a081f9929e",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T14:05:02.635Z"),
    ExecutionDuration: NumberInt("17795"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "7682f3c85fbf4256941ecb84c4ca5cbc",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("58333921-fc1c-82ab-520d-3a038129e93a"),
            TenantId: null,
            AuditLogId: UUID("988bac9c-59d4-6eba-1728-3a038129e939"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "{\"input\":{\"name\":\"loai 15\",\"idParent\":null,\"description\":null,\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-28T07:05:20.248Z"),
            ExecutionDuration: NumberInt("172"),
            ExtraProperties: { }
        },
        {
            _id: UUID("23be6080-4e43-82b5-70e3-3a038129e93c"),
            TenantId: null,
            AuditLogId: UUID("988bac9c-59d4-6eba-1728-3a038129e939"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T07:05:02.648Z"),
            ExecutionDuration: NumberInt("17776"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("5bd29031-49a3-441d-a1f9-3a03812abc89"),
    ConcurrencyStamp: "cc488371d4ea4bbbb087f92260ba239f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T14:06:06.531Z"),
    ExecutionDuration: NumberInt("8006"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "76ce0809684a427eab7b1745a7818c25",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/CreateModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("e76ee0e3-02ec-0964-6ea1-3a03812abc89"),
            TenantId: null,
            AuditLogId: UUID("5bd29031-49a3-441d-a1f9-3a03812abc89"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "CreateAsync",
            Parameters: "",
            ExecutionTime: ISODate("2022-04-28T07:06:14.531Z"),
            ExecutionDuration: NumberInt("6"),
            ExtraProperties: { }
        },
        {
            _id: UUID("43e5b022-cb04-5574-5745-3a03812abc8a"),
            TenantId: null,
            AuditLogId: UUID("5bd29031-49a3-441d-a1f9-3a03812abc89"),
            ServiceName: "QRCode.Web.Pages.Categories.CreateModalModel",
            MethodName: "OnPost",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T07:06:06.535Z"),
            ExecutionDuration: NumberInt("8002"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("0992afcd-9702-397e-6a5d-3a038139cb62"),
    ConcurrencyStamp: "6e30ef060d0a4ac0b2c6b3ec3acd8d59",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T14:22:30.557Z"),
    ExecutionDuration: NumberInt("10814"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "26b0bc89bb704fffa64549d416321939",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("6ac56d86-26df-bba1-cb8e-3a038139cb63"),
            TenantId: null,
            AuditLogId: UUID("0992afcd-9702-397e-6a5d-3a038139cb62"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "",
            ExecutionTime: ISODate("2022-04-28T07:22:41.237Z"),
            ExecutionDuration: NumberInt("127"),
            ExtraProperties: { }
        },
        {
            _id: UUID("9480a7ea-0089-6676-4ebe-3a038139cb64"),
            TenantId: null,
            AuditLogId: UUID("0992afcd-9702-397e-6a5d-3a038139cb62"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T07:22:30.571Z"),
            ExecutionDuration: NumberInt("10794"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("34b90de7-abc2-84c7-519c-3a038149d725"),
    ConcurrencyStamp: "1f833d918a5745b58d369e80ceaa80fc",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T14:40:11.414Z"),
    ExecutionDuration: NumberInt("1535"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "77b2115233f44f0ebce47c102969d8ef",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("ab54c8eb-6547-7f43-3f9a-3a038149d726"),
            TenantId: null,
            AuditLogId: UUID("34b90de7-abc2-84c7-519c-3a038149d725"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T07:40:11.654Z"),
            ExecutionDuration: NumberInt("1287"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("f86a8a88-82aa-acc6-2a0d-3a03815bfe3d"),
    ConcurrencyStamp: "c28cb6d137e8498f818fc54b8ba8ed4f",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:00:01.699Z"),
    ExecutionDuration: NumberInt("914"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "6bce853beeca4bbfb88a6b0ae9e4719e",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("46bafb19-5a27-0199-a335-3a03815bfe3d"),
            TenantId: null,
            AuditLogId: UUID("f86a8a88-82aa-acc6-2a0d-3a03815bfe3d"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T08:00:01.862Z"),
            ExecutionDuration: NumberInt("746"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("b7a66755-bf87-d7a0-5232-3a0381655f2b"),
    ConcurrencyStamp: "b8d17c2f63074724b3f94315321ff6b3",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:10:16.388Z"),
    ExecutionDuration: NumberInt("860"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "de2b27d9bbbe47f7aaa9354324469dd5",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("c1e007c9-935d-0d2d-7657-3a0381655f2b"),
            TenantId: null,
            AuditLogId: UUID("b7a66755-bf87-d7a0-5232-3a0381655f2b"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T08:10:16.535Z"),
            ExecutionDuration: NumberInt("709"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("19bff0db-8ad8-aa55-b10d-3a03816699f9"),
    ConcurrencyStamp: "a244df1bd1f845679d23fc52047105e5",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:11:37.761Z"),
    ExecutionDuration: NumberInt("87"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "ebcea2a7875040dab31978da72774c6c",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("8b817552-6b5f-22b4-6baf-3a03816699f9"),
            TenantId: null,
            AuditLogId: UUID("19bff0db-8ad8-aa55-b10d-3a03816699f9"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"c3e7421f-4998-c000-2b5c-3a03773eb4f2\",\"input\":{\"name\":\"loai 10\",\"idParent\":\"092d058b-d564-0655-1f9b-3a03773e63a0\",\"description\":\"<p><u>loai 7</u></p>\",\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-28T08:11:37.774Z"),
            ExecutionDuration: NumberInt("69"),
            ExtraProperties: { }
        },
        {
            _id: UUID("6d622cc5-11cf-db39-8ea8-3a03816699f9"),
            TenantId: null,
            AuditLogId: UUID("19bff0db-8ad8-aa55-b10d-3a03816699f9"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T08:11:37.764Z"),
            ExecutionDuration: NumberInt("80"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("1c983637-6e6b-4f6c-04aa-3a0381677d0f"),
    ConcurrencyStamp: "2b8c2ab7d9e241458cd52bc43488e1ee",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:12:34.945Z"),
    ExecutionDuration: NumberInt("1020"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "274c302113c240768995e989f6870ee8",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("a6e286c1-adf8-6b14-bfb5-3a0381677d10"),
            TenantId: null,
            AuditLogId: UUID("1c983637-6e6b-4f6c-04aa-3a0381677d0f"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T08:12:35.126Z"),
            ExecutionDuration: NumberInt("834"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("fab17229-ca4d-5f08-dd50-3a038167be89"),
    ConcurrencyStamp: "381767bd4b49436286eb00fd521dd663",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:12:52.659Z"),
    ExecutionDuration: NumberInt("86"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "45bdf3ff651547ada90c849ad6baa4cc",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Categories/EditModal",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("1ad3117c-2018-c195-89e0-3a038167be89"),
            TenantId: null,
            AuditLogId: UUID("fab17229-ca4d-5f08-dd50-3a038167be89"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "UpdateAsync",
            Parameters: "{\"id\":\"c3e7421f-4998-c000-2b5c-3a03773eb4f2\",\"input\":{\"name\":\"loai 10\",\"idParent\":\"092d058b-d564-0655-1f9b-3a03773e63a0\",\"description\":\"<p><u>loai 7 777</u></p>\",\"deadline\":1}}",
            ExecutionTime: ISODate("2022-04-28T08:12:52.669Z"),
            ExecutionDuration: NumberInt("72"),
            ExtraProperties: { }
        },
        {
            _id: UUID("f5c8c749-918b-2046-a130-3a038167be89"),
            TenantId: null,
            AuditLogId: UUID("fab17229-ca4d-5f08-dd50-3a038167be89"),
            ServiceName: "QRCode.Web.Pages.Categories.EditModalModel",
            MethodName: "OnPostAsync",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T08:12:52.662Z"),
            ExecutionDuration: NumberInt("80"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("cf8b4f56-569b-125f-c49d-3a0381693aff"),
    ConcurrencyStamp: "430c88c1638a46c2aa73353a81e393d9",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:14:29.307Z"),
    ExecutionDuration: NumberInt("828"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "2cb0410f7e67447aafafbbb8c06db0a3",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("ea426a08-d276-24e9-e870-3a0381693b00"),
            TenantId: null,
            AuditLogId: UUID("cf8b4f56-569b-125f-c49d-3a0381693aff"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T08:14:29.44Z"),
            ExecutionDuration: NumberInt("689"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("26189b98-4f28-a9ff-4b14-3a03816d2f10"),
    ConcurrencyStamp: "c45d89afb6d549dd8a7bbd66253c0dd2",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:18:49.153Z"),
    ExecutionDuration: NumberInt("78"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "5bfbbc4d65ac4248819205aebb9d1c35",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c3e7421f-4998-c000-2b5c-3a03773eb4f2",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("f3ed1fdd-b859-d264-bf71-3a03816d2f10"),
            TenantId: null,
            AuditLogId: UUID("26189b98-4f28-a9ff-4b14-3a03816d2f10"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c3e7421f-4998-c000-2b5c-3a03773eb4f2\"}",
            ExecutionTime: ISODate("2022-04-28T08:18:49.16Z"),
            ExecutionDuration: NumberInt("71"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("89405f0e-f0eb-d8bd-b5c1-3a03816f4fce"),
    ConcurrencyStamp: "797cecedc7714a19a1cfcfa4f026da2f",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:21:08.658Z"),
    ExecutionDuration: NumberInt("28"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "7c44d3a262194192b09de0924af089d7",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/444864af-caed-3b16-dbd5-3a03773a0641",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("a066e864-6c1a-cfeb-639a-3a03816f4fce"),
            TenantId: null,
            AuditLogId: UUID("89405f0e-f0eb-d8bd-b5c1-3a03816f4fce"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"444864af-caed-3b16-dbd5-3a03773a0641\"}",
            ExecutionTime: ISODate("2022-04-28T08:21:08.66Z"),
            ExecutionDuration: NumberInt("25"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("8da75e22-7b9a-548a-652b-3a03816ff494"),
    ConcurrencyStamp: "5248a41c606f4ff2927ec32393cb6ef2",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:21:50.837Z"),
    ExecutionDuration: NumberInt("31"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "59aa5c2ac4274c18ab01b606f2d7bb0a",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c3e7421f-4998-c000-2b5c-3a03773eb4f2",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("13c28295-8d15-6e35-0e57-3a03816ff494"),
            TenantId: null,
            AuditLogId: UUID("8da75e22-7b9a-548a-652b-3a03816ff494"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c3e7421f-4998-c000-2b5c-3a03773eb4f2\"}",
            ExecutionTime: ISODate("2022-04-28T08:21:50.839Z"),
            ExecutionDuration: NumberInt("29"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2e8abc79-cb9d-65cf-4148-3a03816fffd7"),
    ConcurrencyStamp: "63a9dd8ecbc344119256d4423b6584fc",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T15:21:53.726Z"),
    ExecutionDuration: NumberInt("25"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "86ae648720ea4d4d918d424ae794643e",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c3e7421f-4998-c000-2b5c-3a03773eb4f2",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("26379392-96d0-f5a9-f9fa-3a03816fffd7"),
            TenantId: null,
            AuditLogId: UUID("2e8abc79-cb9d-65cf-4148-3a03816fffd7"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c3e7421f-4998-c000-2b5c-3a03773eb4f2\"}",
            ExecutionTime: ISODate("2022-04-28T08:21:53.728Z"),
            ExecutionDuration: NumberInt("20"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("1de06975-9de9-c11f-c100-3a0381aebaa4"),
    ConcurrencyStamp: "3fd3a2ef341e45c9b7f67fb10f713574",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T16:30:22.119Z"),
    ExecutionDuration: NumberInt("2668"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "63413a7043be4f468b77138770aa5528",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("3c7d4473-b8c8-30ca-024f-3a0381aebaa5"),
            TenantId: null,
            AuditLogId: UUID("1de06975-9de9-c11f-c100-3a0381aebaa4"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T09:30:23.644Z"),
            ExecutionDuration: NumberInt("1135"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("cafefb6b-9913-88fd-718b-3a0381bf7783"),
    ConcurrencyStamp: "5676e30e9efd4c9e8f2dc21595a3a7b0",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T16:48:40.742Z"),
    ExecutionDuration: NumberInt("975"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "72642f52ffdb44358399bcad804ab700",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("9c7a0a56-c4e8-7e44-5330-3a0381bf7784"),
            TenantId: null,
            AuditLogId: UUID("cafefb6b-9913-88fd-718b-3a0381bf7783"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T09:48:40.879Z"),
            ExecutionDuration: NumberInt("829"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("a55e4c3e-ac27-47ce-eeab-3a0381bffb01"),
    ConcurrencyStamp: "56132f4842854ea987d4c6e537fa29a7",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T16:49:15.272Z"),
    ExecutionDuration: NumberInt("120"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "55a84641256343839e52be3924a485c4",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/444864af-caed-3b16-dbd5-3a03773a0641",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("61501ca1-6010-bacb-5b4d-3a0381bffb01"),
            TenantId: null,
            AuditLogId: UUID("a55e4c3e-ac27-47ce-eeab-3a0381bffb01"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"444864af-caed-3b16-dbd5-3a03773a0641\"}",
            ExecutionTime: ISODate("2022-04-28T09:49:15.28Z"),
            ExecutionDuration: NumberInt("112"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("b33e996f-dfe0-6497-c03d-3a0381c62dd7"),
    ConcurrencyStamp: "2df4f3d1a82740e5876ab7da25f0face",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T16:56:01.587Z"),
    ExecutionDuration: NumberInt("36"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "8b82748a21694eacb811b8837a776fba",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("7e0e618b-ebbe-c27e-0261-3a0381c62dd7"),
            TenantId: null,
            AuditLogId: UUID("b33e996f-dfe0-6497-c03d-3a0381c62dd7"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T09:56:01.589Z"),
            ExecutionDuration: NumberInt("32"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("38930a5f-320d-3d4c-74ee-3a0381c8a559"),
    ConcurrencyStamp: "d85ee4a9c3fd49639b3eefa9e8df6517",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T16:58:43.26Z"),
    ExecutionDuration: NumberInt("29"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "fb11aa5f362f452fa8ba6a9ce9c7e407",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("db853d91-9dad-765b-a040-3a0381c8a559"),
            TenantId: null,
            AuditLogId: UUID("38930a5f-320d-3d4c-74ee-3a0381c8a559"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T09:58:43.262Z"),
            ExecutionDuration: NumberInt("26"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2812c16e-a819-e9ef-40a4-3a0381c94e07"),
    ConcurrencyStamp: "3a47f9a4252a46f08976c7590d261538",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T16:59:26.446Z"),
    ExecutionDuration: NumberInt("25"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "3a1391f238fd4695a4351fe8ac93d78f",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("0f127327-7cf8-3408-2f58-3a0381c94e07"),
            TenantId: null,
            AuditLogId: UUID("2812c16e-a819-e9ef-40a4-3a0381c94e07"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T09:59:26.448Z"),
            ExecutionDuration: NumberInt("23"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("f2e3577d-1555-e006-3d33-3a0381c9ee80"),
    ConcurrencyStamp: "e04d2279c05d4dea8ad0cd881d3ed396",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:00:07.52Z"),
    ExecutionDuration: NumberInt("31"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "a81d0985a7c04ba2b70ba5267c3eac06",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("166a7cac-ad39-b955-11e8-3a0381c9ee80"),
            TenantId: null,
            AuditLogId: UUID("f2e3577d-1555-e006-3d33-3a0381c9ee80"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:00:07.523Z"),
            ExecutionDuration: NumberInt("28"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("81b7aa58-f519-3ce6-cd16-3a0381ca44de"),
    ConcurrencyStamp: "01c2e8b76e92456f9c239b2833b265fd",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:00:29.629Z"),
    ExecutionDuration: NumberInt("32"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "e03f82466aa744a28d7a5425f17b4ca9",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("6cf6454a-c7d3-b9af-4d48-3a0381ca44de"),
            TenantId: null,
            AuditLogId: UUID("81b7aa58-f519-3ce6-cd16-3a0381ca44de"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:00:29.632Z"),
            ExecutionDuration: NumberInt("29"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("43bad1ad-ffda-3c06-6dc4-3a0381ca9963"),
    ConcurrencyStamp: "06f16884b722420ba24a0be3a8e52f66",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:00:51.275Z"),
    ExecutionDuration: NumberInt("24"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "b566d788aa59471fab35e4d61cc690c9",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/49bac39c-3676-098c-522b-3a03773e7c1f",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("f106d08f-e4c9-e344-3f4c-3a0381ca9963"),
            TenantId: null,
            AuditLogId: UUID("43bad1ad-ffda-3c06-6dc4-3a0381ca9963"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"49bac39c-3676-098c-522b-3a03773e7c1f\"}",
            ExecutionTime: ISODate("2022-04-28T10:00:51.277Z"),
            ExecutionDuration: NumberInt("22"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("d7a2ae2f-b40d-0203-caa1-3a0381cb39e4"),
    ConcurrencyStamp: "644e5fe917ea4c2583adb67194520ee2",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:01:32.362Z"),
    ExecutionDuration: NumberInt("25"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "8494a85897284e2f887a3fad50beca65",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("8ec888cb-b2df-fd30-2316-3a0381cb39e4"),
            TenantId: null,
            AuditLogId: UUID("d7a2ae2f-b40d-0203-caa1-3a0381cb39e4"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:01:32.364Z"),
            ExecutionDuration: NumberInt("23"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("2af4ac33-7818-166c-bfae-3a0381cd95d7"),
    ConcurrencyStamp: "32b44e0b6f62469da046679b4717f0b7",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:04:06.969Z"),
    ExecutionDuration: NumberInt("30"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "d7603488cf7d413582f9856062b7b76e",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("6d6ed78f-b682-66a0-81c2-3a0381cd95d7"),
            TenantId: null,
            AuditLogId: UUID("2af4ac33-7818-166c-bfae-3a0381cd95d7"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:04:06.971Z"),
            ExecutionDuration: NumberInt("28"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("b76b8d89-6beb-30e6-a32d-3a0381cdda7a"),
    ConcurrencyStamp: "15a668eaf1964bd78b1efb975f2308be",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:04:24.536Z"),
    ExecutionDuration: NumberInt("34"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "77b68674f98845799274670dc38ad797",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/49bac39c-3676-098c-522b-3a03773e7c1f",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("c9343704-fee9-f99e-5ec3-3a0381cdda7a"),
            TenantId: null,
            AuditLogId: UUID("b76b8d89-6beb-30e6-a32d-3a0381cdda7a"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"49bac39c-3676-098c-522b-3a03773e7c1f\"}",
            ExecutionTime: ISODate("2022-04-28T10:04:24.537Z"),
            ExecutionDuration: NumberInt("32"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("5ebe3d3e-3231-c0c9-9074-3a0381ceac1b"),
    ConcurrencyStamp: "af0c9c0fd7ec4ad4952a6f869189226c",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:05:18.206Z"),
    ExecutionDuration: NumberInt("29"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "5ec623ae1e094b6882cc12fe43cc1853",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("358b9c82-2df0-2b89-d19f-3a0381ceac1b"),
            TenantId: null,
            AuditLogId: UUID("5ebe3d3e-3231-c0c9-9074-3a0381ceac1b"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:05:18.209Z"),
            ExecutionDuration: NumberInt("25"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("751450b6-b32d-8d14-0ff3-3a0381cebbb6"),
    ConcurrencyStamp: "51133977edee49bf8979754cad2f94b8",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:05:22.171Z"),
    ExecutionDuration: NumberInt("59"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "817f99ea8e4a43a19cc6813b29f09c74",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("7e620bd0-2d70-2993-c98f-3a0381cebbb6"),
            TenantId: null,
            AuditLogId: UUID("751450b6-b32d-8d14-0ff3-3a0381cebbb6"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:05:22.176Z"),
            ExecutionDuration: NumberInt("53"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("50354391-e387-d85b-5454-3a0381ceccd5"),
    ConcurrencyStamp: "c6170febadbf4c24a60f71421b6e22ff",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:05:26.585Z"),
    ExecutionDuration: NumberInt("28"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "9d5a545dfe8d4c9590ee797057d252cc",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("90f2c2e2-d8a7-d89c-8b84-3a0381ceccd5"),
            TenantId: null,
            AuditLogId: UUID("50354391-e387-d85b-5454-3a0381ceccd5"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:05:26.587Z"),
            ExecutionDuration: NumberInt("26"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("b457ace1-b23a-bc7e-f8a5-3a0381d0bf7d"),
    ConcurrencyStamp: "e46b87d747b14d8b99dd3804936c827e",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:07:34.246Z"),
    ExecutionDuration: NumberInt("23"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "06d8140a7cbd446f8a85d427a29886bc",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/444864af-caed-3b16-dbd5-3a03773a0641",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("68c96349-11f6-2b62-f7b6-3a0381d0bf7d"),
            TenantId: null,
            AuditLogId: UUID("b457ace1-b23a-bc7e-f8a5-3a0381d0bf7d"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"444864af-caed-3b16-dbd5-3a03773a0641\"}",
            ExecutionTime: ISODate("2022-04-28T10:07:34.248Z"),
            ExecutionDuration: NumberInt("21"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("1da11d84-643a-5132-b225-3a0381d12aaa"),
    ConcurrencyStamp: "9710655812954e5b9eba820fa50de9ea",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:08:01.677Z"),
    ExecutionDuration: NumberInt("29"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "66798a588f0c45218c73fb6f37b17531",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("f2065749-3dfc-906e-d8d5-3a0381d12aaa"),
            TenantId: null,
            AuditLogId: UUID("1da11d84-643a-5132-b225-3a0381d12aaa"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:08:01.679Z"),
            ExecutionDuration: NumberInt("27"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("afa06f78-0e84-7c3d-89d0-3a0381d18a98"),
    ConcurrencyStamp: "6b2064ae80c94ced855a3cd45b9393ef",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:08:26.24Z"),
    ExecutionDuration: NumberInt("25"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "ded8a8b95a3b4ecdb0589f274e57dc80",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/444864af-caed-3b16-dbd5-3a03773a0641",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("474fc0ce-78bf-8259-2612-3a0381d18a98"),
            TenantId: null,
            AuditLogId: UUID("afa06f78-0e84-7c3d-89d0-3a0381d18a98"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"444864af-caed-3b16-dbd5-3a03773a0641\"}",
            ExecutionTime: ISODate("2022-04-28T10:08:26.242Z"),
            ExecutionDuration: NumberInt("22"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("3f0b7d64-45f4-7d61-e353-3a0381d24679"),
    ConcurrencyStamp: "8eb6fe1ce27645a1acba5bf2846975a2",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:09:14.335Z"),
    ExecutionDuration: NumberInt("25"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "60e8afa12c3d48f394d2abb8f324a968",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("3ae594bb-8d38-59fd-4494-3a0381d24679"),
            TenantId: null,
            AuditLogId: UUID("3f0b7d64-45f4-7d61-e353-3a0381d24679"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:09:14.337Z"),
            ExecutionDuration: NumberInt("19"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("f58045c4-9ef7-5ed7-58e9-3a0381d27694"),
    ConcurrencyStamp: "bc8f2920e7044a06ad8315428cd19ebe",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:09:26.648Z"),
    ExecutionDuration: NumberInt("27"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "fec6f84aa01c4a72b1d08317f2880238",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/api/app/category/change-status/c7f5480b-9270-6aa4-2812-3a03773e49d8",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("204"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("206becae-d35c-f426-d9c0-3a0381d27694"),
            TenantId: null,
            AuditLogId: UUID("f58045c4-9ef7-5ed7-58e9-3a0381d27694"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "ChangeStatus",
            Parameters: "{\"id\":\"c7f5480b-9270-6aa4-2812-3a03773e49d8\"}",
            ExecutionTime: ISODate("2022-04-28T10:09:26.65Z"),
            ExecutionDuration: NumberInt("25"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("855b9f50-1472-e14f-b2b7-3a0381d6ef65"),
    ConcurrencyStamp: "63716701a67a40fcaecdc392da362dc7",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:14:18.754Z"),
    ExecutionDuration: NumberInt("985"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "9d88be7842f446a89b878ed7bf152dd4",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("b68c0cd0-17d4-5240-d49b-3a0381d6ef66"),
            TenantId: null,
            AuditLogId: UUID("855b9f50-1472-e14f-b2b7-3a0381d6ef65"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T10:14:18.926Z"),
            ExecutionDuration: NumberInt("809"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("5ffbe447-1ec1-de2f-465d-3a0381d7979d"),
    ConcurrencyStamp: "22c09f62ca8b46edbcce4b9fafbee241",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:15:02.683Z"),
    ExecutionDuration: NumberInt("130"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "b0da36541cd948aa959db86ba16fafd5",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/Categories/DetailModal",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Nullable object must have a value.\",\r\n    \"details\": \"InvalidOperationException: Nullable object must have a value.\\r\\nSTACK TRACE:    at System.Nullable`1.get_Value()\\r\\n   at QRCode.Web.Pages.Categories.DetailModalModel.OnGet() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\DetailModal.cshtml.cs:line 28\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.NonGenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.Rethrow(PageHandlerExecutedContext context)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeInnerFilterAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ExceptionContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResourceFilter>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResourceExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)\\r\\n   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)\\r\\n   at Volo.Abp.AspNetCore.Serilog.AbpSerilogMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)\\r\\n   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Volo.Abp.AspNetCore.Auditing.AbpAuditingMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("eae52256-79eb-42b0-9fef-3a0381d7979e"),
            TenantId: null,
            AuditLogId: UUID("5ffbe447-1ec1-de2f-465d-3a0381d7979d"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetCategoryAsync",
            Parameters: "{\"id\":\"561219c3-8932-92f2-784a-3a03773eccdd\"}",
            ExecutionTime: ISODate("2022-04-28T10:15:02.687Z"),
            ExecutionDuration: NumberInt("10"),
            ExtraProperties: { }
        },
        {
            _id: UUID("6ec85728-4a40-5b08-d5b0-3a0381d7979e"),
            TenantId: null,
            AuditLogId: UUID("5ffbe447-1ec1-de2f-465d-3a0381d7979d"),
            ServiceName: "QRCode.Web.Pages.Categories.DetailModalModel",
            MethodName: "OnGet",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T10:15:02.686Z"),
            ExecutionDuration: NumberInt("120"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("aa0c88bb-6b47-b6e4-0564-3a0381d87db4"),
    ConcurrencyStamp: "6f59578b3b114d2294924e42acb21600",
    ApplicationName: null,
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:16:01.65Z"),
    ExecutionDuration: NumberInt("66"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "c4c6eec3508444ceb29b1a3dfc11e3be",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "GET",
    Url: "/Categories/DetailModal",
    Exceptions: "[\r\n  {\r\n    \"code\": null,\r\n    \"message\": \"Nullable object must have a value.\",\r\n    \"details\": \"InvalidOperationException: Nullable object must have a value.\\r\\nSTACK TRACE:    at System.Nullable`1.get_Value()\\r\\n   at QRCode.Web.Pages.Categories.DetailModalModel.OnGet() in D:\\\\SDC\\\\ManageQRCode\\\\QRCode\\\\src\\\\QRCode.Web\\\\Pages\\\\Categories\\\\DetailModal.cshtml.cs:line 28\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.ExecutorFactory.NonGenericTaskHandlerMethod.Execute(Object receiver, Object[] arguments)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeHandlerMethodAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeNextPageFilterAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.Rethrow(PageHandlerExecutedContext context)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.RazorPages.Infrastructure.PageActionInvoker.InvokeInnerFilterAsync()\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|26_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ExceptionContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResourceFilter>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResourceExecutedContextSealed context)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)\\r\\n   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Logged|17_1(ResourceInvoker invoker)\\r\\n   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)\\r\\n   at Volo.Abp.AspNetCore.Serilog.AbpSerilogMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)\\r\\n   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()\\r\\n--- End of stack trace from previous location ---\\r\\n   at Volo.Abp.AspNetCore.Auditing.AbpAuditingMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)\\r\\n\",\r\n    \"data\": null,\r\n    \"validationErrors\": null\r\n  }\r\n]",
    Comments: "",
    HttpStatusCode: NumberInt("200"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("cfdbb52b-739c-2433-50d6-3a0381d87db4"),
            TenantId: null,
            AuditLogId: UUID("aa0c88bb-6b47-b6e4-0564-3a0381d87db4"),
            ServiceName: "QRCode.Categories.CategoryAppService",
            MethodName: "GetCategoryAsync",
            Parameters: "{\"id\":\"561219c3-8932-92f2-784a-3a03773eccdd\"}",
            ExecutionTime: ISODate("2022-04-28T10:16:01.656Z"),
            ExecutionDuration: NumberInt("11"),
            ExtraProperties: { }
        },
        {
            _id: UUID("213d294e-b320-0c6b-9a7d-3a0381d87db4"),
            TenantId: null,
            AuditLogId: UUID("aa0c88bb-6b47-b6e4-0564-3a0381d87db4"),
            ServiceName: "QRCode.Web.Pages.Categories.DetailModalModel",
            MethodName: "OnGet",
            Parameters: "{}",
            ExecutionTime: ISODate("2022-04-28T10:16:01.655Z"),
            ExecutionDuration: NumberInt("51"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("3c8aa618-6aff-c131-3e67-3a0381da0744"),
    ConcurrencyStamp: "4d831266c3b2419c82f6789b43891cdf",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:17:41.589Z"),
    ExecutionDuration: NumberInt("870"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "daa739c381184e359c9936d2bbf53840",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("5c512414-748f-18d2-b560-3a0381da0744"),
            TenantId: null,
            AuditLogId: UUID("3c8aa618-6aff-c131-3e67-3a0381da0744"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T10:17:41.69Z"),
            ExecutionDuration: NumberInt("762"),
            ExtraProperties: { }
        }
    ]
} ]);
db.getCollection("AbpAuditLogs").insert([ {
    _id: UUID("5503b2b7-5254-bb49-a350-3a0381e61ac9"),
    ConcurrencyStamp: "11c0516734bc46c3ab47d9f5a8423a4c",
    ApplicationName: null,
    UserId: null,
    UserName: null,
    TenantId: null,
    TenantName: null,
    ImpersonatorUserId: null,
    ImpersonatorUserName: null,
    ImpersonatorTenantId: null,
    ImpersonatorTenantName: null,
    ExecutionTime: ISODate("2022-04-28T17:30:53.099Z"),
    ExecutionDuration: NumberInt("787"),
    ClientIpAddress: "::1",
    ClientName: null,
    ClientId: null,
    CorrelationId: "1761d897f9354eebac5db2a3ae5e405d",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    HttpMethod: "POST",
    Url: "/Account/Login",
    Exceptions: null,
    Comments: "",
    HttpStatusCode: NumberInt("302"),
    EntityChanges: [ ],
    Actions: [
        {
            _id: UUID("57acb8c7-3498-3301-de3f-3a0381e61aca"),
            TenantId: null,
            AuditLogId: UUID("5503b2b7-5254-bb49-a350-3a0381e61ac9"),
            ServiceName: "Volo.Abp.Account.Web.Pages.Account.LoginModel",
            MethodName: "OnPostAsync",
            Parameters: "{\"action\":\"Login\"}",
            ExecutionTime: ISODate("2022-04-28T10:30:53.219Z"),
            ExecutionDuration: NumberInt("662"),
            ExtraProperties: { }
        }
    ]
} ]);

// ----------------------------
// Collection structure for AbpBackgroundJobs
// ----------------------------
db.getCollection("AbpBackgroundJobs").drop();
db.createCollection("AbpBackgroundJobs");

// ----------------------------
// Documents of AbpBackgroundJobs
// ----------------------------

// ----------------------------
// Collection structure for AbpClaimTypes
// ----------------------------
db.getCollection("AbpClaimTypes").drop();
db.createCollection("AbpClaimTypes");

// ----------------------------
// Documents of AbpClaimTypes
// ----------------------------
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("28b6ac6a-e61d-c5b5-b910-3a0371ae42f0"),
    ConcurrencyStamp: "ea9fce540a6544e7b126455ebda3e98a",
    Name: "sub",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("d4e7878c-69d9-d2ba-38dc-3a0371ae431f"),
    ConcurrencyStamp: "5e00e6fae07c4651a308ef2cd253d050",
    Name: "name",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("c88b77f2-0468-236e-2b91-3a0371ae4327"),
    ConcurrencyStamp: "9e165d9cdfa44a99a8f9c40e38e1cc52",
    Name: "family_name",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("df0695a7-33f6-0459-8c3e-3a0371ae4332"),
    ConcurrencyStamp: "865d98625a924eafaee04445d721a888",
    Name: "given_name",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("963a0021-3f39-79f0-ed8c-3a0371ae4339"),
    ConcurrencyStamp: "b34a27c33f184c20bb060b3e4729816e",
    Name: "middle_name",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("88c9cd24-a413-72b7-3bf6-3a0371ae4340"),
    ConcurrencyStamp: "82d397e5bc1541acb750505d1c1ff0b6",
    Name: "nickname",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("293936a0-6860-8e6a-fde1-3a0371ae4348"),
    ConcurrencyStamp: "2261dfa0787f45808fb87f3c9f2caa8d",
    Name: "preferred_username",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("1cadca09-bd27-bddd-8e6b-3a0371ae4350"),
    ConcurrencyStamp: "69dccb4cd7d34b3a9f14ae50aa89d451",
    Name: "profile",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("d57bb01a-5ff2-b9c5-8218-3a0371ae4358"),
    ConcurrencyStamp: "48ed230d611a4feb9f252de9709d24cb",
    Name: "picture",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("24cfb598-04d0-3933-5ce8-3a0371ae4361"),
    ConcurrencyStamp: "d032d23965e04e7abf3bc4c0e03e24a8",
    Name: "website",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("d042f11a-2133-d781-104c-3a0371ae436b"),
    ConcurrencyStamp: "20e293d9fed04f75bdc5bec55c28463b",
    Name: "gender",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("1488afac-7d8a-3623-19ce-3a0371ae4373"),
    ConcurrencyStamp: "5c9ebc3e24324c7ca016a35419200157",
    Name: "birthdate",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("685fbf43-c829-8864-0a20-3a0371ae437c"),
    ConcurrencyStamp: "0b97e5b15012411092263de4b2f451be",
    Name: "zoneinfo",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("e00b3390-43a7-0a8a-d37b-3a0371ae4384"),
    ConcurrencyStamp: "98e9b9d1df9e42129c84577809b20799",
    Name: "locale",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("d7f903fb-af7f-cb59-c0ff-3a0371ae4393"),
    ConcurrencyStamp: "ef779b98a4e740daa840c5d9590c0d73",
    Name: "updated_at",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("2f7b5043-a71f-7f59-713b-3a0371ae43a5"),
    ConcurrencyStamp: "b9a0ff6a0fb042cf883af3407ddcf846",
    Name: "email",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("98b43bf6-6eeb-e186-d36a-3a0371ae43af"),
    ConcurrencyStamp: "1ceb30fea9a046a6a35fdba648a250b2",
    Name: "email_verified",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("6944a3a5-aafd-c82f-a8ba-3a0371ae43c6"),
    ConcurrencyStamp: "1d83819743d74405ad38569519e7fc72",
    Name: "address",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("6e97bcac-f356-276e-4851-3a0371ae43d9"),
    ConcurrencyStamp: "b2b5ea458e5a486da4e5fb7638f5f415",
    Name: "phone_number",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("1e2e7524-14e9-9b80-3d7c-3a0371ae43e3"),
    ConcurrencyStamp: "2a02b005557449f39b28a32614092a04",
    Name: "phone_number_verified",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);
db.getCollection("AbpClaimTypes").insert([ {
    _id: UUID("6ce0053a-1c50-8ee7-167e-3a0371ae43f4"),
    ConcurrencyStamp: "0007ba98362d441bbdae86b26a19f7cb",
    Name: "role",
    Required: false,
    IsStatic: true,
    Regex: null,
    RegexDescription: null,
    Description: null,
    ValueType: NumberInt("0")
} ]);

// ----------------------------
// Collection structure for AbpFeatureValues
// ----------------------------
db.getCollection("AbpFeatureValues").drop();
db.createCollection("AbpFeatureValues");

// ----------------------------
// Documents of AbpFeatureValues
// ----------------------------

// ----------------------------
// Collection structure for AbpLinkUsers
// ----------------------------
db.getCollection("AbpLinkUsers").drop();
db.createCollection("AbpLinkUsers");

// ----------------------------
// Documents of AbpLinkUsers
// ----------------------------

// ----------------------------
// Collection structure for AbpOrganizationUnits
// ----------------------------
db.getCollection("AbpOrganizationUnits").drop();
db.createCollection("AbpOrganizationUnits");

// ----------------------------
// Documents of AbpOrganizationUnits
// ----------------------------

// ----------------------------
// Collection structure for AbpPermissionGrants
// ----------------------------
db.getCollection("AbpPermissionGrants").drop();
db.createCollection("AbpPermissionGrants");

// ----------------------------
// Documents of AbpPermissionGrants
// ----------------------------
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("8a9f9f54-b201-44c1-83be-3a0371ae3e62"),
    TenantId: null,
    Name: "AbpIdentity.Roles",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("7ad4ac6d-2c30-fb98-9279-3a0371ae3e68"),
    TenantId: null,
    Name: "AbpIdentity.Roles.Create",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("a00b10cf-4771-d637-b619-3a0371ae3e6c"),
    TenantId: null,
    Name: "AbpIdentity.Roles.Update",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("ed4be9ff-180e-8471-fee8-3a0371ae3e6f"),
    TenantId: null,
    Name: "AbpIdentity.Roles.Delete",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("9599b314-924d-04e2-d8d4-3a0371ae3e71"),
    TenantId: null,
    Name: "AbpIdentity.Roles.ManagePermissions",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("afabba30-2f73-7b3c-e71e-3a0371ae3e73"),
    TenantId: null,
    Name: "AbpIdentity.Users",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("b400e7ff-7972-f8ce-81b3-3a0371ae3e76"),
    TenantId: null,
    Name: "AbpIdentity.Users.Create",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("d2943dc4-0933-2ecf-7af7-3a0371ae3e78"),
    TenantId: null,
    Name: "AbpIdentity.Users.Update",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("b5eea6d1-48ec-5131-b645-3a0371ae3e7a"),
    TenantId: null,
    Name: "AbpIdentity.Users.Delete",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("8c29cb9f-b5d1-8473-e603-3a0371ae3e7d"),
    TenantId: null,
    Name: "AbpIdentity.Users.ManagePermissions",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("7a52353b-62d2-77d9-96b5-3a0371ae3e80"),
    TenantId: null,
    Name: "FeatureManagement.ManageHostFeatures",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("13b220d8-e88e-0dfb-1a74-3a0371ae3e82"),
    TenantId: null,
    Name: "SettingManagement.Emailing",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("8b3b6052-238f-e212-fdf2-3a0371ae3e85"),
    TenantId: null,
    Name: "AbpTenantManagement.Tenants",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("dafb3f9d-132f-ca09-42b0-3a0371ae3e88"),
    TenantId: null,
    Name: "AbpTenantManagement.Tenants.Create",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("6075f4db-032f-f2a2-15a9-3a0371ae3e8a"),
    TenantId: null,
    Name: "AbpTenantManagement.Tenants.Update",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("a06cdbd3-f77c-12cd-f6d7-3a0371ae3e8d"),
    TenantId: null,
    Name: "AbpTenantManagement.Tenants.Delete",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("de5e4b46-fbb8-1d22-aadb-3a0371ae3e8f"),
    TenantId: null,
    Name: "AbpTenantManagement.Tenants.ManageFeatures",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);
db.getCollection("AbpPermissionGrants").insert([ {
    _id: UUID("baafc7bc-66a8-7fca-f1df-3a0371ae3e92"),
    TenantId: null,
    Name: "AbpTenantManagement.Tenants.ManageConnectionStrings",
    ProviderName: "R",
    ProviderKey: "admin"
} ]);

// ----------------------------
// Collection structure for AbpRoles
// ----------------------------
db.getCollection("AbpRoles").drop();
db.createCollection("AbpRoles");

// ----------------------------
// Documents of AbpRoles
// ----------------------------
db.getCollection("AbpRoles").insert([ {
    _id: UUID("fe3673ae-6d21-8714-ef7a-3a0371ae3c37"),
    ConcurrencyStamp: "f701e347-a346-4b1b-a9b9-0022fb353495",
    TenantId: null,
    Name: "admin",
    NormalizedName: "ADMIN",
    Claims: [ ],
    IsDefault: false,
    IsStatic: true,
    IsPublic: true
} ]);

// ----------------------------
// Collection structure for AbpSecurityLogs
// ----------------------------
db.getCollection("AbpSecurityLogs").drop();
db.createCollection("AbpSecurityLogs");

// ----------------------------
// Documents of AbpSecurityLogs
// ----------------------------
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("09e03f2b-549f-c96a-468d-3a038149d593"),
    ConcurrencyStamp: "098934b83a284bdbbb73ce37693def24",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "77b2115233f44f0ebce47c102969d8ef",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T14:40:12.549Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("469185f7-4bbc-0bf9-5495-3a03815bfd7b"),
    ConcurrencyStamp: "a29063de752546a8b8eb6e43a7fc9f83",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "6bce853beeca4bbfb88a6b0ae9e4719e",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T15:00:02.418Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("79037996-c488-ebf6-3770-3a0381655e58"),
    ConcurrencyStamp: "75030a7866a9436d98c86c4033e759ad",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "de2b27d9bbbe47f7aaa9354324469dd5",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T15:10:17.042Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("7b079121-688a-ed52-1578-3a0381677c34"),
    ConcurrencyStamp: "17b20e1efa684fb4871eb03b46c1c97d",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "274c302113c240768995e989f6870ee8",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T15:12:35.756Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("8b1f19cf-1708-5d5c-2a5b-3a0381693a4a"),
    ConcurrencyStamp: "dbe90561f4614e74bcada1e832871067",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "2cb0410f7e67447aafafbbb8c06db0a3",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T15:14:29.952Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("8d8d8a15-432e-a239-fd98-3a0381aeb947"),
    ConcurrencyStamp: "5ff951d599d246c19ef16648110ad05a",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "63413a7043be4f468b77138770aa5528",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T16:30:24.449Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("6a756900-2c0c-cc88-cc63-3a0381bf7665"),
    ConcurrencyStamp: "92565f220d834634a60579c6bdfbc1a5",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "72642f52ffdb44358399bcad804ab700",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T16:48:41.436Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("08bde22c-ec92-cdfa-5fba-3a0381d6ee9a"),
    ConcurrencyStamp: "a397cc5f54314a9c9fd16077bd0c6fe1",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "9d88be7842f446a89b878ed7bf152dd4",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T17:14:19.539Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("4ba287f1-8176-9476-6edd-3a0381da066d"),
    ConcurrencyStamp: "901acdd153ce47f899e1b9d4f112178a",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "daa739c381184e359c9936d2bbf53840",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T17:17:42.242Z")
} ]);
db.getCollection("AbpSecurityLogs").insert([ {
    _id: UUID("a3f21f43-9f77-22d6-9b0b-3a0381e61a18"),
    ConcurrencyStamp: "75d5bae1e65b420b9804cec622d439e9",
    TenantId: null,
    ApplicationName: null,
    Identity: "Identity",
    Action: "LoginSucceeded",
    UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    UserName: "admin",
    TenantName: null,
    ClientId: null,
    CorrelationId: "1761d897f9354eebac5db2a3ae5e405d",
    ClientIpAddress: "::1",
    BrowserInfo: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
    CreationTime: ISODate("2022-04-28T17:30:53.715Z")
} ]);

// ----------------------------
// Collection structure for AbpSettings
// ----------------------------
db.getCollection("AbpSettings").drop();
db.createCollection("AbpSettings");

// ----------------------------
// Documents of AbpSettings
// ----------------------------

// ----------------------------
// Collection structure for AbpTenants
// ----------------------------
db.getCollection("AbpTenants").drop();
db.createCollection("AbpTenants");

// ----------------------------
// Documents of AbpTenants
// ----------------------------

// ----------------------------
// Collection structure for AbpUsers
// ----------------------------
db.getCollection("AbpUsers").drop();
db.createCollection("AbpUsers");

// ----------------------------
// Documents of AbpUsers
// ----------------------------
db.getCollection("AbpUsers").insert([ {
    _id: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    ConcurrencyStamp: "6cce74e004a14ff7bb7f6697872cb845",
    CreationTime: ISODate("2022-04-25T13:55:56.422Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-25T13:55:57.167Z"),
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    TenantId: null,
    UserName: "admin",
    NormalizedUserName: "ADMIN",
    Name: "admin",
    Surname: null,
    Email: "admin@abp.io",
    NormalizedEmail: "ADMIN@ABP.IO",
    EmailConfirmed: false,
    PasswordHash: "AQAAAAEAACcQAAAAENxdpki6NSL/XDyDfIH7Gtz+zPFdcjuApyPZTjeqfXw8/QUgItH9pht0mJK/dkGoVg==",
    SecurityStamp: "IQKG2F32A67SRIQSMLEEVBZN6BOXPW76",
    IsExternal: false,
    PhoneNumber: null,
    PhoneNumberConfirmed: false,
    IsActive: true,
    TwoFactorEnabled: false,
    LockoutEnd: null,
    LockoutEnabled: true,
    AccessFailedCount: NumberInt("0"),
    Roles: [
        {
            TenantId: null,
            UserId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
            RoleId: UUID("fe3673ae-6d21-8714-ef7a-3a0371ae3c37")
        }
    ],
    Claims: [ ],
    Logins: [ ],
    Tokens: [ ],
    OrganizationUnits: [ ]
} ]);

// ----------------------------
// Collection structure for Categories
// ----------------------------
db.getCollection("Categories").drop();
db.createCollection("Categories");

// ----------------------------
// Documents of Categories
// ----------------------------
db.getCollection("Categories").insert([ {
    _id: UUID("089c6626-d149-d2e8-81a9-3a0377357f1f"),
    ConcurrencyStamp: "13bc6aed412c495e8cddbb74be31e3fe",
    CreationTime: ISODate("2022-04-26T15:41:47.553Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 2",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("5ac9c37d-a880-6c41-d538-3a037736152f"),
    ConcurrencyStamp: "2dd5d74ac8ef4354b4ca6e5162fbae8a",
    CreationTime: ISODate("2022-04-26T15:42:25.967Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 3",
    idParent: UUID("089c6626-d149-d2e8-81a9-3a0377357f1f"),
    description: null,
    deadline: NumberInt("3"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("5e60c10d-528a-3a90-c3e9-3a037739dfe5"),
    ConcurrencyStamp: "f407fd61bfac43fea04d3baab0f9c65f",
    CreationTime: ISODate("2022-04-26T15:46:34.47Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 4",
    idParent: UUID("5ac9c37d-a880-6c41-d538-3a037736152f"),
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("af644844-edca-163b-dbd5-3a03773a0641"),
    ConcurrencyStamp: "dfdbf53c1d904f7ca454a64430209230",
    CreationTime: ISODate("2022-04-26T15:46:44.289Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-28T17:08:26.252Z"),
    LastModifierId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    name: "loai 5",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("0b48f5c7-7092-a46a-2812-3a03773e49d8"),
    ConcurrencyStamp: "5ffce7cf6711439990462cc06d33f89f",
    CreationTime: ISODate("2022-04-26T15:51:23.738Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-28T17:09:26.66Z"),
    LastModifierId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    name: "loai 6",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: false
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("8b052d09-64d5-5506-1f9b-3a03773e63a0"),
    ConcurrencyStamp: "c4cc63cf5d7e4665a86988f23b66e1df",
    CreationTime: ISODate("2022-04-26T15:51:30.336Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 7",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("9cc3ba49-7636-8c09-522b-3a03773e7c1f"),
    ConcurrencyStamp: "d727d165788449cd95d6c4affab5472d",
    CreationTime: ISODate("2022-04-26T15:51:36.607Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-28T17:04:24.555Z"),
    LastModifierId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    name: "loai 8",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("7970d948-5ccf-dede-cbf9-3a03773e92c7"),
    ConcurrencyStamp: "560b90302013495d8e09d0988155e8b8",
    CreationTime: ISODate("2022-04-26T15:51:42.407Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 9",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("1f42e7c3-9849-00c0-2b5c-3a03773eb4f2"),
    ConcurrencyStamp: "bfb9a4edfdf2456d8b571836b9bcb188",
    CreationTime: ISODate("2022-04-26T15:51:51.154Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-28T15:21:53.739Z"),
    LastModifierId: UUID("427bb889-e521-8e77-415d-3a0371ae398e"),
    name: "loai 10",
    idParent: UUID("8b052d09-64d5-5506-1f9b-3a03773e63a0"),
    description: "<p><u>loai 7 777</u></p>",
    deadline: NumberInt("1"),
    Status: false
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("c3191256-3289-f292-784a-3a03773eccdd"),
    ConcurrencyStamp: "ec7b7643a7d34336b53859e662cd12ed",
    CreationTime: ISODate("2022-04-26T15:51:57.277Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 11",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("7128755c-8ddd-ecd6-e1db-3a0377413466"),
    ConcurrencyStamp: "b8ac3e376b3140cd97b19e975909b87f",
    CreationTime: ISODate("2022-04-26T15:54:34.854Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 12",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("3a005382-5a79-90c5-ed61-3a0381248dbe"),
    ConcurrencyStamp: "4ec2ef9eb8204b338d71bb000b876162",
    CreationTime: ISODate("2022-04-28T13:59:29.345Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 13",
    idParent: UUID("7128755c-8ddd-ecd6-e1db-3a0377413466"),
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("8a33e6a9-bc30-c065-dcaa-3a0381263fee"),
    ConcurrencyStamp: "fc9c380173ac4955bf03677e50980d13",
    CreationTime: ISODate("2022-04-28T14:01:20.494Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 14",
    idParent: UUID("3a005382-5a79-90c5-ed61-3a0381248dbe"),
    description: "<ol><li>13&nbsp;</li><li>13</li></ol>",
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("90eee292-3371-92aa-b87f-3a038129e889"),
    ConcurrencyStamp: "0710b07b343b41cf8fab13fc306b8320",
    CreationTime: ISODate("2022-04-28T14:05:20.268Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    name: "loai 15",
    idParent: null,
    description: null,
    deadline: NumberInt("1"),
    Status: true
} ]);
db.getCollection("Categories").insert([ {
    _id: UUID("aca64e51-ba4d-0ca6-90be-3a03812abc84"),
    ConcurrencyStamp: "f50186e8b18d421995070bf81420f123",
    CreationTime: ISODate("2022-04-28T14:06:14.532Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-28T14:22:41.254Z"),
    LastModifierId: null,
    name: "loai 16",
    idParent: UUID("90eee292-3371-92aa-b87f-3a038129e889"),
    description: "<p><img src=\"data:image/jpeg;base64,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\" style=\"width: 270px;\" data-filename=\"product-5.jpg\"></p><p><b>loai 16</b></p>",
    deadline: NumberInt("1"),
    Status: true
} ]);

// ----------------------------
// Collection structure for IdentityServerApiResources
// ----------------------------
db.getCollection("IdentityServerApiResources").drop();
db.createCollection("IdentityServerApiResources");

// ----------------------------
// Documents of IdentityServerApiResources
// ----------------------------
db.getCollection("IdentityServerApiResources").insert([ {
    _id: UUID("5e598ab5-5bf2-ebb5-2675-3a0371ae4410"),
    ConcurrencyStamp: "3fe795c7463c4dcab8e57bdbc81033e8",
    CreationTime: ISODate("2022-04-25T13:55:58.994Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-26T15:36:13.695Z"),
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    Name: "QRCode",
    DisplayName: "QRCode API",
    Description: null,
    Enabled: true,
    AllowedAccessTokenSigningAlgorithms: null,
    ShowInDiscoveryDocument: true,
    Secrets: [ ],
    Scopes: [
        {
            ApiResourceId: UUID("5e598ab5-5bf2-ebb5-2675-3a0371ae4410"),
            Scope: "QRCode"
        }
    ],
    UserClaims: [
        {
            Type: "email",
            ApiResourceId: UUID("5e598ab5-5bf2-ebb5-2675-3a0371ae4410")
        },
        {
            Type: "email_verified",
            ApiResourceId: UUID("5e598ab5-5bf2-ebb5-2675-3a0371ae4410")
        },
        {
            Type: "name",
            ApiResourceId: UUID("5e598ab5-5bf2-ebb5-2675-3a0371ae4410")
        },
        {
            Type: "phone_number",
            ApiResourceId: UUID("5e598ab5-5bf2-ebb5-2675-3a0371ae4410")
        },
        {
            Type: "phone_number_verified",
            ApiResourceId: UUID("5e598ab5-5bf2-ebb5-2675-3a0371ae4410")
        },
        {
            Type: "role",
            ApiResourceId: UUID("5e598ab5-5bf2-ebb5-2675-3a0371ae4410")
        }
    ],
    Properties: [ ]
} ]);

// ----------------------------
// Collection structure for IdentityServerApiScopes
// ----------------------------
db.getCollection("IdentityServerApiScopes").drop();
db.createCollection("IdentityServerApiScopes");

// ----------------------------
// Documents of IdentityServerApiScopes
// ----------------------------
db.getCollection("IdentityServerApiScopes").insert([ {
    _id: UUID("ed33f90c-052e-e1dd-fcb0-3a0371ae442b"),
    ConcurrencyStamp: "a67ed4876ce64860a08d67b3f52cee4f",
    CreationTime: ISODate("2022-04-25T13:55:59.021Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    Enabled: true,
    Name: "QRCode",
    DisplayName: "QRCode API",
    Description: null,
    Required: false,
    Emphasize: false,
    ShowInDiscoveryDocument: true,
    UserClaims: [ ],
    Properties: [ ]
} ]);

// ----------------------------
// Collection structure for IdentityServerClients
// ----------------------------
db.getCollection("IdentityServerClients").drop();
db.createCollection("IdentityServerClients");

// ----------------------------
// Documents of IdentityServerClients
// ----------------------------
db.getCollection("IdentityServerClients").insert([ {
    _id: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
    ConcurrencyStamp: "00015e3a37744c898277f98080c21abe",
    CreationTime: ISODate("2022-04-25T13:55:59.046Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-26T15:36:13.845Z"),
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    ClientId: "QRCode_App",
    ClientName: "QRCode_App",
    Description: "QRCode_App",
    ClientUri: null,
    LogoUri: null,
    Enabled: true,
    ProtocolType: "oidc",
    RequireClientSecret: false,
    RequireConsent: false,
    AllowRememberConsent: true,
    AlwaysIncludeUserClaimsInIdToken: true,
    RequirePkce: false,
    AllowPlainTextPkce: false,
    RequireRequestObject: false,
    AllowAccessTokensViaBrowser: false,
    FrontChannelLogoutUri: null,
    FrontChannelLogoutSessionRequired: true,
    BackChannelLogoutUri: null,
    BackChannelLogoutSessionRequired: true,
    AllowOfflineAccess: true,
    IdentityTokenLifetime: NumberInt("300"),
    AllowedIdentityTokenSigningAlgorithms: null,
    AccessTokenLifetime: NumberInt("31536000"),
    AuthorizationCodeLifetime: NumberInt("300"),
    ConsentLifetime: null,
    AbsoluteRefreshTokenLifetime: NumberInt("31536000"),
    SlidingRefreshTokenLifetime: NumberInt("1296000"),
    RefreshTokenUsage: NumberInt("1"),
    UpdateAccessTokenClaimsOnRefresh: false,
    RefreshTokenExpiration: NumberInt("1"),
    AccessTokenType: NumberInt("0"),
    EnableLocalLogin: true,
    IncludeJwtId: false,
    AlwaysSendClientClaims: false,
    ClientClaimsPrefix: "client_",
    PairWiseSubjectSalt: null,
    UserSsoLifetime: null,
    UserCodeType: null,
    DeviceCodeLifetime: NumberInt("300"),
    AllowedScopes: [
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            Scope: "email"
        },
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            Scope: "openid"
        },
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            Scope: "profile"
        },
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            Scope: "role"
        },
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            Scope: "phone"
        },
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            Scope: "address"
        },
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            Scope: "QRCode"
        }
    ],
    ClientSecrets: [
        {
            Type: "SharedSecret",
            Value: "E5Xd4yMqjP5kjWFKrYgySBju6JVfCzMyFp7n2QmMrME=",
            Description: null,
            Expiration: null,
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444")
        }
    ],
    AllowedGrantTypes: [
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            GrantType: "password"
        },
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            GrantType: "client_credentials"
        },
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            GrantType: "authorization_code"
        }
    ],
    AllowedCorsOrigins: [
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            Origin: "http://localhost:4200"
        }
    ],
    RedirectUris: [
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            RedirectUri: "http://localhost:4200"
        }
    ],
    PostLogoutRedirectUris: [
        {
            ClientId: UUID("93ce096b-d93a-201b-3a7f-3a0371ae4444"),
            PostLogoutRedirectUri: "http://localhost:4200"
        }
    ],
    IdentityProviderRestrictions: [ ],
    Claims: [ ],
    Properties: [ ]
} ]);
db.getCollection("IdentityServerClients").insert([ {
    _id: UUID("70608155-4676-044a-a334-3a0371ae4469"),
    ConcurrencyStamp: "ea96844397dc486ea03fd99108378c9b",
    CreationTime: ISODate("2022-04-25T13:55:59.081Z"),
    CreatorId: null,
    LastModificationTime: ISODate("2022-04-26T15:36:13.872Z"),
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    ClientId: "QRCode_Swagger",
    ClientName: "QRCode_Swagger",
    Description: "QRCode_Swagger",
    ClientUri: null,
    LogoUri: null,
    Enabled: true,
    ProtocolType: "oidc",
    RequireClientSecret: false,
    RequireConsent: false,
    AllowRememberConsent: true,
    AlwaysIncludeUserClaimsInIdToken: true,
    RequirePkce: false,
    AllowPlainTextPkce: false,
    RequireRequestObject: false,
    AllowAccessTokensViaBrowser: false,
    FrontChannelLogoutUri: null,
    FrontChannelLogoutSessionRequired: true,
    BackChannelLogoutUri: null,
    BackChannelLogoutSessionRequired: true,
    AllowOfflineAccess: true,
    IdentityTokenLifetime: NumberInt("300"),
    AllowedIdentityTokenSigningAlgorithms: null,
    AccessTokenLifetime: NumberInt("31536000"),
    AuthorizationCodeLifetime: NumberInt("300"),
    ConsentLifetime: null,
    AbsoluteRefreshTokenLifetime: NumberInt("31536000"),
    SlidingRefreshTokenLifetime: NumberInt("1296000"),
    RefreshTokenUsage: NumberInt("1"),
    UpdateAccessTokenClaimsOnRefresh: false,
    RefreshTokenExpiration: NumberInt("1"),
    AccessTokenType: NumberInt("0"),
    EnableLocalLogin: true,
    IncludeJwtId: false,
    AlwaysSendClientClaims: false,
    ClientClaimsPrefix: "client_",
    PairWiseSubjectSalt: null,
    UserSsoLifetime: null,
    UserCodeType: null,
    DeviceCodeLifetime: NumberInt("300"),
    AllowedScopes: [
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            Scope: "email"
        },
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            Scope: "openid"
        },
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            Scope: "profile"
        },
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            Scope: "role"
        },
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            Scope: "phone"
        },
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            Scope: "address"
        },
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            Scope: "QRCode"
        }
    ],
    ClientSecrets: [
        {
            Type: "SharedSecret",
            Value: "E5Xd4yMqjP5kjWFKrYgySBju6JVfCzMyFp7n2QmMrME=",
            Description: null,
            Expiration: null,
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469")
        }
    ],
    AllowedGrantTypes: [
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            GrantType: "authorization_code"
        }
    ],
    AllowedCorsOrigins: [
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            Origin: "https://localhost:44367"
        }
    ],
    RedirectUris: [
        {
            ClientId: UUID("70608155-4676-044a-a334-3a0371ae4469"),
            RedirectUri: "https://localhost:44367/swagger/oauth2-redirect.html"
        }
    ],
    PostLogoutRedirectUris: [ ],
    IdentityProviderRestrictions: [ ],
    Claims: [ ],
    Properties: [ ]
} ]);

// ----------------------------
// Collection structure for IdentityServerDeviceFlowCodes
// ----------------------------
db.getCollection("IdentityServerDeviceFlowCodes").drop();
db.createCollection("IdentityServerDeviceFlowCodes");

// ----------------------------
// Documents of IdentityServerDeviceFlowCodes
// ----------------------------

// ----------------------------
// Collection structure for IdentityServerIdentityResources
// ----------------------------
db.getCollection("IdentityServerIdentityResources").drop();
db.createCollection("IdentityServerIdentityResources");

// ----------------------------
// Documents of IdentityServerIdentityResources
// ----------------------------
db.getCollection("IdentityServerIdentityResources").insert([ {
    _id: UUID("59956454-e0a6-a467-fca4-3a0371ae430d"),
    ConcurrencyStamp: "34ba5c6cc2ed435faeba357006e9303a",
    CreationTime: ISODate("2022-04-25T13:55:58.736Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    Name: "openid",
    DisplayName: "Your user identifier",
    Description: null,
    Enabled: true,
    Required: true,
    Emphasize: false,
    ShowInDiscoveryDocument: true,
    UserClaims: [
        {
            Type: "sub",
            IdentityResourceId: UUID("59956454-e0a6-a467-fca4-3a0371ae430d")
        }
    ],
    Properties: [ ]
} ]);
db.getCollection("IdentityServerIdentityResources").insert([ {
    _id: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c"),
    ConcurrencyStamp: "cc0277ebc89b491baf9694aaef1168e2",
    CreationTime: ISODate("2022-04-25T13:55:58.876Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    Name: "profile",
    DisplayName: "User profile",
    Description: "Your user profile information (first name, last name, etc.)",
    Enabled: true,
    Required: false,
    Emphasize: true,
    ShowInDiscoveryDocument: true,
    UserClaims: [
        {
            Type: "name",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "family_name",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "given_name",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "middle_name",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "nickname",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "preferred_username",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "profile",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "picture",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "website",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "gender",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "birthdate",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "zoneinfo",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "locale",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        },
        {
            Type: "updated_at",
            IdentityResourceId: UUID("e12f15d9-ec1d-7e66-8887-3a0371ae439c")
        }
    ],
    Properties: [ ]
} ]);
db.getCollection("IdentityServerIdentityResources").insert([ {
    _id: UUID("da569b82-b1cc-5c66-dec6-3a0371ae43bc"),
    ConcurrencyStamp: "48ab16b41caf462fb98fd37dc912aaf5",
    CreationTime: ISODate("2022-04-25T13:55:58.908Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    Name: "email",
    DisplayName: "Your email address",
    Description: null,
    Enabled: true,
    Required: false,
    Emphasize: true,
    ShowInDiscoveryDocument: true,
    UserClaims: [
        {
            Type: "email",
            IdentityResourceId: UUID("da569b82-b1cc-5c66-dec6-3a0371ae43bc")
        },
        {
            Type: "email_verified",
            IdentityResourceId: UUID("da569b82-b1cc-5c66-dec6-3a0371ae43bc")
        }
    ],
    Properties: [ ]
} ]);
db.getCollection("IdentityServerIdentityResources").insert([ {
    _id: UUID("b05ea17d-7489-8524-2948-3a0371ae43d0"),
    ConcurrencyStamp: "2cc548c0a08a4bbba50b3e8ddb41d226",
    CreationTime: ISODate("2022-04-25T13:55:58.928Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    Name: "address",
    DisplayName: "Your postal address",
    Description: null,
    Enabled: true,
    Required: false,
    Emphasize: true,
    ShowInDiscoveryDocument: true,
    UserClaims: [
        {
            Type: "address",
            IdentityResourceId: UUID("b05ea17d-7489-8524-2948-3a0371ae43d0")
        }
    ],
    Properties: [ ]
} ]);
db.getCollection("IdentityServerIdentityResources").insert([ {
    _id: UUID("99fce25f-a087-0a5d-457b-3a0371ae43eb"),
    ConcurrencyStamp: "e730171f3c8e4af395de17e4a93aa63c",
    CreationTime: ISODate("2022-04-25T13:55:58.956Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    Name: "phone",
    DisplayName: "Your phone number",
    Description: null,
    Enabled: true,
    Required: false,
    Emphasize: true,
    ShowInDiscoveryDocument: true,
    UserClaims: [
        {
            Type: "phone_number",
            IdentityResourceId: UUID("99fce25f-a087-0a5d-457b-3a0371ae43eb")
        },
        {
            Type: "phone_number_verified",
            IdentityResourceId: UUID("99fce25f-a087-0a5d-457b-3a0371ae43eb")
        }
    ],
    Properties: [ ]
} ]);
db.getCollection("IdentityServerIdentityResources").insert([ {
    _id: UUID("d3bd464a-a1e3-0d7b-a5df-3a0371ae43fe"),
    ConcurrencyStamp: "020eae6806804c6fbc221f18037dc49c",
    CreationTime: ISODate("2022-04-25T13:55:58.974Z"),
    CreatorId: null,
    LastModificationTime: null,
    LastModifierId: null,
    IsDeleted: false,
    DeleterId: null,
    DeletionTime: null,
    Name: "role",
    DisplayName: "Roles of the user",
    Description: null,
    Enabled: true,
    Required: false,
    Emphasize: false,
    ShowInDiscoveryDocument: true,
    UserClaims: [
        {
            Type: "role",
            IdentityResourceId: UUID("d3bd464a-a1e3-0d7b-a5df-3a0371ae43fe")
        }
    ],
    Properties: [ ]
} ]);

// ----------------------------
// Collection structure for IdentityServerPersistedGrants
// ----------------------------
db.getCollection("IdentityServerPersistedGrants").drop();
db.createCollection("IdentityServerPersistedGrants");

// ----------------------------
// Documents of IdentityServerPersistedGrants
// ----------------------------
