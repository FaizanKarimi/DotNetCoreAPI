‡
MD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Attributes\AuthorizeAdminAttribute.cs
	namespace 	
LevelsUpAPI
 
. 

Attributes  
{ 
public

 

class

 #
AuthorizeAdminAttribute

 (
:

) *
TypeFilterAttribute

+ >
{ 
public #
AuthorizeAdminAttribute &
(& '
)' (
:) *
base+ /
(/ 0
typeof0 6
(6 7 
AuthorizeAdminFilter7 K
)K L
)L M
{ 	
} 	
} 
} ‹
LD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Attributes\AuthorizeUserAttribute.cs
	namespace 	
LevelsUpAPI
 
. 

Attributes  
{ 
public

 

class

 "
AuthorizeUserAttribute

 '
:

( )
TypeFilterAttribute

* =
{ 
public "
AuthorizeUserAttribute %
(% &
)& '
:( )
base* .
(. /
typeof/ 5
(5 6
AuthorizeUserFilter6 I
)I J
)J K
{ 	
} 	
} 
} ı$
>D:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Binders\ModelBinder.cs
	namespace

 	
LevelsUpAPI


 
.

 
Binders

 
{ 
public 

class 
ModelBinder 
: 
IModelBinder +
{ 
private 
readonly 
Type 

_modelType (
;( )
public 
ModelBinder 
( 
Type 
type  $
)$ %
{ 	
this 
. 

_modelType 
= 
type "
;" #
} 	
public11 
Task11 
BindModelAsync11 "
(11" #
ModelBindingContext11# 6
bindingContext117 E
)11E F
{22 	
if33 
(33 
bindingContext33 
==33 !
null33" &
)33& '
{44 
throw55 
new55 
LevelsUpException55 +
(55+ ,
ErrorMessages55, 9
.559 :'
MODEL_BINDING_CONTEXT_ERROR55: U
,55U V

ErrorCodes55W a
.55a b

BadRequest55b l
)55l m
;55m n
}66 
string88 
valueFromBody88  
=88! "
string88# )
.88) *
Empty88* /
;88/ 0
if;; 
(;; 
bindingContext;; 
.;; 
HttpContext;; *
.;;* +
Request;;+ 2
.;;2 3
Method;;3 9
.;;9 :
ToUpper;;: A
(;;A B
);;B C
==;;D F
HttpMethods;;G R
.;;R S
Get;;S V
.;;V W
ToString;;W _
(;;_ `
);;` a
.;;a b
ToUpper;;b i
(;;i j
);;j k
);;k l
{<< 
string== 
id== 
=== 
bindingContext== *
.==* +
ActionContext==+ 8
.==8 9
	RouteData==9 B
.==B C
Values==C I
[==I J
nameof==J P
(==P Q
id==Q S
)==S T
]==T U
as==V X
string==Y _
;==_ `
if>> 
(>> 
!>> 
string>> 
.>> 
IsNullOrEmpty>> )
(>>) *
id>>* ,
)>>, -
)>>- .
{?? 
valueFromBody@@ !
=@@" #
id@@$ &
;@@& '
}AA 
elseBB 
{CC 
returnDD 
TaskDD 
.DD  
CompletedTaskDD  -
;DD- .
}EE 
}FF 
elseGG 
{HH 
usingII 
(II 
StreamReaderII #
streamReaderII$ 0
=II1 2
newII3 6
StreamReaderII7 C
(IIC D
bindingContextIID R
.IIR S
HttpContextIIS ^
.II^ _
RequestII_ f
.IIf g
BodyIIg k
)IIk l
)IIl m
{JJ 
valueFromBodyKK !
=KK" #
streamReaderKK$ 0
.KK0 1
	ReadToEndKK1 :
(KK: ;
)KK; <
;KK< =
}LL 
ifNN 
(NN 
stringNN 
.NN 
IsNullOrEmptyNN (
(NN( )
valueFromBodyNN) 6
)NN6 7
)NN7 8
{OO 
returnPP 
TaskPP 
.PP  
CompletedTaskPP  -
;PP- .
}QQ 
}RR 
tryTT 
{UU 
objectVV 
requestVV 
=VV   
JsonSerializerHelperVV! 5
.VV5 6
DeserializeVV6 A
(VVA B
valueFromBodyVVB O
,VVO P
thisVVQ U
.VVU V

_modelTypeVVV `
)VV` a
;VVa b
ifWW 
(WW 
requestWW 
!=WW 
nullWW #
)WW# $
{XX 
bindingContextYY "
.YY" #
ResultYY# )
=YY* +
ModelBindingResultYY, >
.YY> ?
SuccessYY? F
(YYF G
requestYYG N
)YYN O
;YYO P
}ZZ 
}[[ 
catch\\ 
(\\ 
	Exception\\ 
)\\ 
{]] 
throw^^ 
new^^ 
LevelsUpException^^ +
(^^+ ,
ErrorMessages^^, 9
.^^9 :.
"MODEL_BINDER_DESERIALIZATION_ERROR^^: \
,^^\ ]

ErrorCodes^^^ h
.^^h i

BadRequest^^i s
,^^s t
this^^u y
.^^y z

_modelType	^^z Ñ
.
^^Ñ Ö
Name
^^Ö â
)
^^â ä
;
^^ä ã
}__ 
returnaa 
Taskaa 
.aa 
CompletedTaskaa %
;aa% &
}bb 	
}cc 
}dd ‘
FD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Binders\ModelBinderProvider.cs
	namespace 	
LevelsUpAPI
 
. 
Binders 
{ 
public		 

class		 
ModelBinderProvider		 $
:		% & 
IModelBinderProvider		' ;
{

 
public 
IModelBinder 
	GetBinder %
(% &&
ModelBinderProviderContext& @
contextA H
)H I
{ 	
return 
new 
ModelBinder "
(" #
context# *
.* +
Metadata+ 3
.3 4
	ModelType4 =
)= >
;> ?
} 	
} 
} ÷Y
HD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Controllers\AccountController.cs
	namespace 	
LevelsUpAPI
 
. 
Controllers !
{ 
[ 
Route 

(
 
Routes 
. 
ControllerRoute !
)! "
]" #
[ 
ApiController 
] 
[ 
AllowAnonymous 
] 
public 

class 
AccountController "
:# $
BaseController% 3
{ 
private 
readonly 
RoleManager $
<$ %
IdentityRole% 1
>1 2
_roleManager3 ?
;? @
private"" 
readonly"" 
IBOUser""  
_bOUser""! (
;""( )
public,, 
AccountController,,  
(,,  !
RoleManager,,! ,
<,,, -
IdentityRole,,- 9
>,,9 :
roleManager,,; F
,,,F G
IBOUser,,H O
bOUser,,P V
),,V W
:,,X Y
base,,Z ^
(,,^ _
),,_ `
{-- 	
this.. 
... 
_roleManager.. 
=.. 
roleManager..  +
;..+ ,
this// 
.// 
_bOUser// 
=// 
bOUser// !
;//! "
}00 	
[<< 	
HttpPost<<	 
]<< 
[== 	
Route==	 
(== 
Routes== 
.== 
RegisterAdminUser== '
)==' (
]==( )
[>> 	
OpenApiIgnore>>	 
]>> 
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
RegisterAdminUser??) :
(??: ;
)??; <
{@@ 	
thisAA 
.AA 
loggerAA 
.AA 
DebugAA 
(AA 
$strAA C
)AAC D
;AAD E
RegisterRequestCC 
registerRequestCC +
=CC, -
thisCC. 2
.CC2 3
mapperCC3 9
.CC9 :
MapCC: =
<CC= >
RegisterRequestCC> M
>CCM N
(CCN O
thisCCO S
.CCS T
appSettingsCCT _
)CC_ `
;CC` a
returnEE 
thisEE 
.EE 
OKEE 
<EE 
boolEE 
>EE  
(EE  !
awaitEE! &
thisEE' +
.EE+ ,
_bOUserEE, 3
.EE3 4
RegisterUserAsyncEE4 E
(EEE F
registerRequestEEF U
,EEU V
	UserRolesEEW `
.EE` a
AdminEEa f
)EEf g
)EEg h
;EEh i
}FF 	
[QQ 	
HttpPostQQ	 
]QQ 
[RR 	
RouteRR	 
(RR 
RoutesRR 
.RR 
RegisterUserRR "
)RR" #
]RR# $
publicSS 
asyncSS 
TaskSS 
<SS 
IActionResultSS '
>SS' (
RegisterUserSS) 5
(SS5 6
RegisterRequestSS6 E
registerRequestSSF U
)SSU V
{TT 	
thisUU 
.UU 
loggerUU 
.UU 
DebugUU 
(UU 
$strUU =
)UU= >
;UU> ?
returnWW 
thisWW 
.WW 
OKWW 
<WW 
boolWW 
>WW  
(WW  !
awaitWW! &
thisWW' +
.WW+ ,
_bOUserWW, 3
.WW3 4
RegisterUserAsyncWW4 E
(WWE F
registerRequestWWF U
,WWU V
	UserRolesWWW `
.WW` a
UserWWa e
)WWe f
)WWf g
;WWg h
}XX 	
[cc 	
HttpPostcc	 
]cc 
[dd 	
Routedd	 
(dd 
Routesdd 
.dd 

CreateRoledd  
)dd  !
]dd! "
[ee 	
AuthorizeAdminee	 
]ee 
publicff 
asyncff 
Taskff 
<ff 
IActionResultff '
>ff' (

CreateRoleff) 3
(ff3 4
AddRoleRequestff4 B
addRoleRequestffC Q
)ffQ R
{gg 	
boolhh 
isExisthh 
=hh 
awaithh  
thishh! %
.hh% &
_roleManagerhh& 2
.hh2 3
RoleExistsAsynchh3 B
(hhB C
addRoleRequesthhC Q
.hhQ R
RoleNamehhR Z
)hhZ [
;hh[ \
ifii 
(ii 
isExistii 
)ii 
{jj 
throwkk 
newkk 
LevelsUpExceptionkk +
(kk+ ,
ErrorMessageskk, 9
.kk9 :
ROLE_ALREADY_EXISTkk: L
,kkL M

ErrorCodeskkN X
.kkX Y
ConflictkkY a
)kka b
;kkb c
}ll 
IdentityRolenn 
rolenn 
=nn 
newnn  #
IdentityRolenn$ 0
(nn0 1
)nn1 2
{oo 
Namepp 
=pp 
addRoleRequestpp %
.pp% &
RoleNamepp& .
}qq 
;qq 
IdentityResultss 
resultss !
=ss" #
awaitss$ )
thisss* .
.ss. /
_roleManagerss/ ;
.ss; <
CreateAsyncss< G
(ssG H
rolessH L
)ssL M
;ssM N
iftt 
(tt 
!tt 
resulttt 
.tt 
	Succeededtt !
)tt! "
{uu 
throwvv 
newvv 
LevelsUpExceptionvv +
(vv+ ,
resultvv, 2
.vv2 3
Errorsvv3 9
?vv9 :
.vv: ;
FirstOrDefaultvv; I
(vvI J
)vvJ K
?vvK L
.vvL M
DescriptionvvM X
)vvX Y
;vvY Z
}ww 
returnyy 
thisyy 
.yy 
OKyy 
(yy 
)yy 
;yy 
}zz 	
[
ÖÖ 	
HttpPost
ÖÖ	 
]
ÖÖ 
[
ÜÜ 	
Route
ÜÜ	 
(
ÜÜ 
Routes
ÜÜ 
.
ÜÜ 
ChangePassword
ÜÜ $
)
ÜÜ$ %
]
ÜÜ% &
[
áá 	
AuthorizeUser
áá	 
]
áá 
public
àà 
async
àà 
Task
àà 
<
àà 
IActionResult
àà '
>
àà' (!
ChangePasswordAsync
àà) <
(
àà< =#
ChangePasswordRequest
àà= R#
changePasswordRequest
ààS h
)
ààh i
{
ââ 	
this
ää 
.
ää 
logger
ää 
.
ää 
Debug
ää 
(
ää 
$str
ää @
)
ää@ A
;
ääA B
return
åå 
this
åå 
.
åå 
OK
åå 
(
åå 
await
åå  
this
åå! %
.
åå% &
_bOUser
åå& -
.
åå- .!
ChangePasswordAsync
åå. A
(
ååA B#
changePasswordRequest
ååB W
)
ååW X
)
ååX Y
;
ååY Z
}
çç 	
[
óó 	
HttpPost
óó	 
]
óó 
[
òò 	
Route
òò	 
(
òò 
Routes
òò 
.
òò !
AccountVerification
òò )
)
òò) *
]
òò* +
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
IActionResult
ôô '
>
ôô' (!
AccountVerification
ôô) <
(
ôô< ="
VerifyAccountRequest
ôô= Q"
verifyAccountRequest
ôôR f
)
ôôf g
{
öö 	
this
õõ 
.
õõ 
logger
õõ 
.
õõ 
Debug
õõ 
(
õõ 
$str
õõ D
)
õõD E
;
õõE F
return
ùù 
this
ùù 
.
ùù 
OK
ùù 
<
ùù 
bool
ùù 
>
ùù  
(
ùù  !
await
ùù! &
this
ùù' +
.
ùù+ ,
_bOUser
ùù, 3
.
ùù3 4
VerifyAccount
ùù4 A
(
ùùA B"
verifyAccountRequest
ùùB V
)
ùùV W
)
ùùW X
;
ùùX Y
}
ûû 	
[
©© 	
HttpPost
©©	 
]
©© 
[
™™ 	
Route
™™	 
(
™™ 
Routes
™™ 
.
™™ 
Login
™™ 
)
™™ 
]
™™ 
public
´´ 
async
´´ 
Task
´´ 
<
´´ 
IActionResult
´´ '
>
´´' (
Login
´´) .
(
´´. /
LoginRequest
´´/ ;
loginRequest
´´< H
)
´´H I
{
¨¨ 	
this
≠≠ 
.
≠≠ 
logger
≠≠ 
.
≠≠ 
Debug
≠≠ 
(
≠≠ 
$str
≠≠ 6
)
≠≠6 7
;
≠≠7 8
return
ØØ 
this
ØØ 
.
ØØ 
OK
ØØ 
(
ØØ 
await
ØØ  
this
ØØ! %
.
ØØ% &
_bOUser
ØØ& -
.
ØØ- .
Login
ØØ. 3
(
ØØ3 4
loginRequest
ØØ4 @
)
ØØ@ A
)
ØØA B
;
ØØB C
}
∞∞ 	
[
∫∫ 	
HttpPost
∫∫	 
]
∫∫ 
[
ªª 	
Route
ªª	 
(
ªª 
Routes
ªª 
.
ªª 
RefreshToken
ªª "
)
ªª" #
]
ªª# $
public
ºº 
async
ºº 
Task
ºº 
<
ºº 
IActionResult
ºº '
>
ºº' (
RefreshToken
ºº) 5
(
ºº5 6!
RefreshTokenRequest
ºº6 I!
refreshTokenRequest
ººJ ]
)
ºº] ^
{
ΩΩ 	
this
ææ 
.
ææ 
logger
ææ 
.
ææ 
Debug
ææ 
(
ææ 
$str
ææ =
)
ææ= >
;
ææ> ?
return
¿¿ 
this
¿¿ 
.
¿¿ 
OK
¿¿ 
(
¿¿ 
await
¿¿  
this
¿¿! %
.
¿¿% &
_bOUser
¿¿& -
.
¿¿- ."
GenerateRefreshToken
¿¿. B
(
¿¿B C!
refreshTokenRequest
¿¿C V
)
¿¿V W
)
¿¿W X
;
¿¿X Y
}
¡¡ 	
[
…… 	
HttpPost
……	 
]
…… 
[
   	
Route
  	 
(
   
Routes
   
.
   
Logout
   
)
   
]
   
[
ÀÀ 	
AuthorizeUser
ÀÀ	 
]
ÀÀ 
public
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 
IActionResult
ÃÃ '
>
ÃÃ' (
LogOutAsync
ÃÃ) 4
(
ÃÃ4 5
)
ÃÃ5 6
{
ÕÕ 	
this
ŒŒ 
.
ŒŒ 
logger
ŒŒ 
.
ŒŒ 
Debug
ŒŒ 
(
ŒŒ 
$str
ŒŒ 7
)
ŒŒ7 8
;
ŒŒ8 9
return
–– 
this
–– 
.
–– 
OK
–– 
(
–– 
await
––  
this
––! %
.
––% &
_bOUser
––& -
.
––- .
Logout
––. 4
(
––4 5
)
––5 6
)
––6 7
;
––7 8
}
—— 	
public
ÿÿ 
override
ÿÿ 
void
ÿÿ 
Dispose
ÿÿ $
(
ÿÿ$ %
)
ÿÿ% &
{
ŸŸ 	
this
⁄⁄ 
.
⁄⁄ 
_roleManager
⁄⁄ 
.
⁄⁄ 
Dispose
⁄⁄ %
(
⁄⁄% &
)
⁄⁄& '
;
⁄⁄' (
base
€€ 
.
€€ 
Dispose
€€ 
(
€€ 
)
€€ 
;
€€ 
}
‹‹ 	
}
ﬁﬁ 
}ﬂﬂ ¬
ED:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Controllers\BaseController.cs
	namespace 	
LevelsUpAPI
 
. 
Controllers !
{ 
public 

class 
BaseController 
:  !
ControllerBase" 0
,0 1
IDisposable2 =
{ 
private 
IServiceProvider  
_serviceProvider! 1
{ 	
get 
{ 
return 
ServiceHelpers %
.% &
GetServiceProvider& 8
(8 9
)9 :
;: ;
} 
} 	
	protected$$ 
readonly$$ 
ILogger$$ "
logger$$# )
;$$) *
	protected)) 
readonly))  
IHttpContextAccessor)) /
httpContextAccessor))0 C
;))C D
	protected.. 
readonly.. 
AppSettings.. &
appSettings..' 2
;..2 3
	protected33 
readonly33 
IMapper33 "
mapper33# )
;33) *
public88 
BaseController88 
(88 
)88 
{99 	
if:: 
(:: 
this:: 
.:: 
logger:: 
==:: 
null:: #
)::# $
{;; 
this<< 
.<< 
logger<< 
=<< 
this<< "
.<<" #
_serviceProvider<<# 3
.<<3 4
GetRequiredService<<4 F
<<<F G
ILogger<<G N
><<N O
(<<O P
)<<P Q
;<<Q R
}== 
if?? 
(?? 
this?? 
.?? 
appSettings??  
==??! #
null??$ (
)??( )
{@@ 
thisAA 
.AA 
appSettingsAA  
=AA! "
SettingsHelperAA# 1
.AA1 2
GetAppSettingsAA2 @
(AA@ A
)AAA B
;AAB C
}BB 
ifDD 
(DD 
thisDD 
.DD 
mapperDD 
==DD 
nullDD #
)DD# $
{EE 
thisFF 
.FF 
mapperFF 
=FF 
ServiceHelpersFF ,
.FF, -
	GetMapperFF- 6
(FF6 7
)FF7 8
;FF8 9
}GG 
ifII 
(II 
thisII 
.II 
httpContextAccessorII (
==II) +
nullII, 0
)II0 1
{JJ 
thisKK 
.KK 
httpContextAccessorKK (
=KK) *
ServiceHelpersKK+ 9
.KK9 :"
GetHttpContextAccessorKK: P
(KKP Q
)KKQ R
;KKR S
}LL 
}MM 	
publicWW 
OkObjectResultWW 
OKWW  
<WW  !
TWW! "
>WW" #
(WW# $
TWW$ %
valueWW& +
)WW+ ,
{XX 	
returnYY 
baseYY 
.YY 
OkYY 
(YY 
newYY 
BasicResponseYY ,
(YY, -
)YY- .
{ZZ 
Data[[ 
=[[ 
value[[ 
}\\ 
)\\ 
;\\ 
}]] 	
publicee 
OkObjectResultee 
OKee  
(ee  !
)ee! "
{ff 	
returngg 
basegg 
.gg 
Okgg 
(gg 
newgg 
BasicResponsegg ,
(gg, -
)gg- .
)gg. /
;gg/ 0
}hh 	
publicmm 
virtualmm 
voidmm 
Disposemm #
(mm# $
)mm$ %
{nn 	
}pp 	
}qq 
}rr ¬
MD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Controllers\UserCategoryController.cs
	namespace		 	
LevelsUpAPI		
 
.		 
Controllers		 !
{

 
[ 
Route 

(
 
Routes 
. 
ControllerRoute !
)! "
]" #
[ 
ApiController 
] 
[ 
AuthorizeUser 
] 
public 

class "
UserCategoryController '
:( )
BaseController* 8
{ 
private 
readonly 
IBOUserCategory (
_bOUserCategory) 8
;8 9
public "
UserCategoryController %
(% &
IBOUserCategory& 5
bOUserCategory6 D
)D E
:F G
baseH L
(L M
)M N
{ 	
this 
. 
_bOUserCategory  
=! "
bOUserCategory# 1
;1 2
}   	
[&& 	
HttpGet&&	 
]&& 
['' 	
Route''	 
('' 
Routes'' 
.'' 
GetUserCategories'' '
)''' (
]''( )
public(( 
IActionResult(( 
GetUserCategories(( .
(((. /
)((/ 0
{)) 	
string** 
userId** 
=** 
this**  
.**  !
httpContextAccessor**! 4
.**4 5
GetCurrentUserId**5 E
(**E F
)**F G
;**G H
return,, 
this,, 
.,, 
OK,, 
<,, 
List,, 
<,,  #
UserCategoryInformation,,  7
>,,7 8
>,,8 9
(,,9 :
this,,: >
.,,> ?
_bOUserCategory,,? N
.,,N O
Get,,O R
(,,R S
userId,,S Y
),,Y Z
),,Z [
;,,[ \
}-- 	
}.. 
}// ≥
LD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Controllers\UserProfileController.cs
	namespace		 	
LevelsUpAPI		
 
.		 
Controllers		 !
{

 
[ 
Route 

(
 
Routes 
. 
ControllerRoute !
)! "
]" #
[ 
ApiController 
] 
[ 
AuthorizeUser 
] 
public 

class !
UserProfileController &
:' (
BaseController) 7
{ 
private 
readonly 
IBOUser  
_bOUser! (
;( )
public !
UserProfileController $
($ %
IBOUser% ,
bOUser- 3
)3 4
:5 6
base7 ;
(; <
)< =
{ 	
this 
. 
_bOUser 
= 
bOUser !
;! "
}   	
[(( 	
HttpGet((	 
](( 
[)) 	
Route))	 
()) 
Routes)) 
.)) 
GetUserProfile)) $
)))$ %
]))% &
public** 
IActionResult** 

GetProfile** '
(**' (
)**( )
{++ 	
string,, 
userId,, 
=,, 
this,,  
.,,  !
httpContextAccessor,,! 4
.,,4 5
GetCurrentUserId,,5 E
(,,E F
),,F G
;,,G H
return.. 
this.. 
... 
OK.. 
<.. "
UserProfileInformation.. 1
>..1 2
(..2 3
this..3 7
...7 8
_bOUser..8 ?
...? @
GetUserProfile..@ N
(..N O
userId..O U
)..U V
)..V W
;..W X
}// 	
[88 	
HttpPut88	 
]88 
[99 	
Route99	 
(99 
Routes99 
.99 
UpdateUserProfile99 '
)99' (
]99( )
public:: 
IActionResult:: 
UpdateProfile:: *
(::* +$
UpdateUserProfileRequest::+ C$
updateUserProfileRequest::D \
)::\ ]
{;; 	
return<< 
this<< 
.<< 
OK<< 
<<< 
bool<< 
><<  
(<<  !
this<<! %
.<<% &
_bOUser<<& -
.<<- .
UpdateProfile<<. ;
(<<; <$
updateUserProfileRequest<<< T
)<<T U
)<<U V
;<<V W
}== 	
}>> 
}?? ›
PD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Controllers\UserSubCategoryController.cs
	namespace		 	
LevelsUpAPI		
 
.		 
Controllers		 !
{

 
[ 
Route 

(
 
Routes 
. 
ControllerRoute !
)! "
]" #
[ 
ApiController 
] 
[ 
AuthorizeUser 
] 
public 

class %
UserSubCategoryController *
:+ ,
BaseController- ;
{ 
private 
readonly 
IBOUserSubCategory +
_bOUserSubCategory, >
;> ?
private 
readonly 
IBOSubCategory '
_bOSubCategory( 6
;6 7
public## %
UserSubCategoryController## (
(##( )
IBOUserSubCategory##) ;
bOUserSubCategory##< M
,##M N
IBOSubCategory##O ]
bOSubCategory##^ k
)##k l
:##m n
base##o s
(##s t
)##t u
{$$ 	
this%% 
.%% 
_bOUserSubCategory%% #
=%%$ %
bOUserSubCategory%%& 7
;%%7 8
this&& 
.&& 
_bOSubCategory&& 
=&&  !
bOSubCategory&&" /
;&&/ 0
}'' 	
[// 	
HttpGet//	 
]// 
[00 	
Route00	 
(00 
Routes00 
.00  
GetUserSubCategories00 *
)00* +
]00+ ,
public11 
IActionResult11  
GetUserSubCategories11 1
(111 2
)112 3
{22 	
string33 
userId33 
=33 
this33  
.33  !
httpContextAccessor33! 4
.334 5
GetCurrentUserId335 E
(33E F
)33F G
;33G H
return55 
this55 
.55 
OK55 
<55 
List55 
<55  &
UserSubCategoryInformation55  :
>55: ;
>55; <
(55< =
this55= A
.55A B
_bOUserSubCategory55B T
.55T U
Get55U X
(55X Y
userId55Y _
)55_ `
)55` a
;55a b
}66 	
[>> 	
HttpGet>>	 
]>> 
[?? 	
Route??	 
(?? 
Routes?? 
.?? $
GetUserSubCategoryDetail?? .
)??. /
]??/ 0
public@@ 
IActionResult@@ $
GetUserSubCategoryDetail@@ 5
(@@5 6
int@@6 9
id@@: <
)@@< =
{AA 	
returnBB 
thisBB 
.BB 
OKBB 
<BB ,
 UserSubCategoryDetailInformationBB ;
>BB; <
(BB< =
thisBB= A
.BBA B
_bOSubCategoryBBB P
.BBP Q
GetBBQ T
(BBT U
idBBU W
)BBW X
)BBX Y
;BBY Z
}CC 	
}DD 
}EE ∂
HD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Controllers\UtilityController.cs
	namespace 	
LevelsUpAPI
 
. 
Controllers !
{ 
[ 
Route 

(
 
Routes 
. 
ControllerRoute !
)! "
]" #
[ 
ApiController 
] 
[ 
AllowAnonymous 
] 
public 

class 
UtilityController "
:# $
BaseController% 3
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public 
UtilityController  
(  !
IConfiguration! /
configuration0 =
)= >
{ 	
this 
. 
_configuration 
=  !
configuration" /
;/ 0
} 	
[&& 	
HttpGet&&	 
]&& 
['' 	
Route''	 
('' 
Routes'' 
.'' 
ProcessDetails'' $
)''$ %
]''% &
public(( 
IActionResult(( 
GetProcessDetails(( .
(((. /
)((/ 0
{)) 	
return** 
this** 
.** 
OK** 
(** 
new** 
{++ 
	ProcessId,, 
=,, 
Process,, #
.,,# $
GetCurrentProcess,,$ 5
(,,5 6
),,6 7
.,,7 8
Id,,8 :
,,,: ;
ProcessName-- 
=-- 
Process-- %
.--% &
GetCurrentProcess--& 7
(--7 8
)--8 9
.--9 :
ProcessName--: E
,--E F
DatabaseName.. 
=.. 
this.. #
...# $
_configuration..$ 2
...2 3
GetConnectionString..3 F
(..F G
	Constants..G P
...P Q 
ConnectionStringName..Q e
)..e f
}// 
)// 
;// 
}00 	
}11 
}22 å“
GD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Extensions\StartupExtensions.cs
	namespace%% 	
LevelsUpAPI%%
 
.%% 

Extensions%%  
{&& 
public** 

static** 
class** 
StartupExtensions** )
{++ 
public00 
static00 
void00  
ConfigureLinuxServer00 /
(00/ 0
this000 4
IServiceCollection005 G
services00H P
)00P Q
{11 	
services22 
.22 
	Configure22 
<22 #
ForwardedHeadersOptions22 6
>226 7
(227 8
config228 >
=>22? A
{33 
config44 
.44 
KnownProxies44 #
.44# $
Add44$ '
(44' (
	IPAddress44( 1
.441 2
Parse442 7
(447 8
Startup448 ?
.44? @
Configuration44@ M
.44M N,
 GetLinuxServerApplicationAddress44N n
(44n o
)44o p
)44p q
)44q r
;44r s
}55 
)55 
;55 
}66 	
public<< 
static<< 
void<< %
ConfigureIISServerOptions<< 4
(<<4 5
this<<5 9
IServiceCollection<<: L
services<<M U
)<<U V
{== 	
services>> 
.>> 
	Configure>> 
<>> 
IISServerOptions>> /
>>>/ 0
(>>0 1
options>>1 8
=>>>9 ;
{?? 
options@@ 
.@@ 
AllowSynchronousIO@@ *
=@@+ ,
true@@- 1
;@@1 2
}AA 
)AA 
;AA 
}BB 	
publicHH 
staticHH 
voidHH (
ConfigureAPIBehaviourOptionsHH 7
(HH7 8
thisHH8 <
IServiceCollectionHH= O
servicesHHP X
)HHX Y
{II 	
servicesJJ 
.JJ 
	ConfigureJJ 
<JJ 
ApiBehaviorOptionsJJ 1
>JJ1 2
(JJ2 3
optionsJJ3 :
=>JJ; =
{KK 
optionsLL 
.LL +
SuppressModelStateInvalidFilterLL 7
=LL8 9
trueLL: >
;LL> ?
}MM 
)MM 
;MM 
}NN 	
publicTT 
staticTT 
voidTT 
ConfigureHangfireTT ,
(TT, -
thisTT- 1
IServiceCollectionTT2 D
servicesTTE M
)TTM N
{UU 	
servicesVV 
.VV 
AddHangfireVV  
(VV  !
(VV! "
providerVV" *
,VV* +
configVV, 2
)VV2 3
=>VV4 6
configWW! '
.WW' (
UseSqlServerStorageWW( ;
(WW; <
StartupWW< C
.WWC D
ConfigurationWWD Q
.WWQ R
GetConnectionStringWWR e
(WWe f
	ConstantsWWf o
.WWo p!
ConnectionStringName	WWp Ñ
)
WWÑ Ö
,
WWÖ Ü
newXX< ?#
SqlServerStorageOptionsXX@ W
(XXW X
)XXX Y
{YY< =
DisableGlobalLocksZZ@ R
=ZZS T
trueZZU Y
,ZZY Z(
UseRecommendedIsolationLevel[[@ \
=[[] ^
true[[_ c
,[[c d
QueuePollInterval\\@ Q
=\\R S
TimeSpan\\T \
.\\\ ]
Zero\\] a
,\\a b"
CommandBatchMaxTimeout]]@ V
=]]W X
TimeSpan]]Y a
.]]a b
FromMinutes]]b m
(]]m n
$num]]n o
)]]o p
,]]p q&
SlidingInvisibilityTimeout^^@ Z
=^^[ \
TimeSpan^^] e
.^^e f
FromMinutes^^f q
(^^q r
$num^^r s
)^^s t
,^^t u$
PrepareSchemaIfNecessary__@ X
=__Y Z
true__[ _
}``< =
)``= >
.aa! "
	UseFilteraa" +
(aa+ ,
newaa, /&
HangfireJobExecutionFilteraa0 J
(aaJ K
provideraaK S
.aaS T
GetRequiredServiceaaT f
<aaf g
ILoggeraag n
>aan o
(aao p
)aap q
)aaq r
)aar s
.bb! "
	UseFilterbb" +
(bb+ ,
newbb, /#
AutomaticRetryAttributebb0 G
(bbG H
)bbH I
{bbJ K
AttemptsbbL T
=bbU V
$numbbW X
,bbX Y
OnAttemptsExceededbbZ l
=bbm n#
AttemptsExceededAction	bbo Ö
.
bbÖ Ü
Fail
bbÜ ä
}
bbã å
)
bbå ç
)dd 
;dd 
servicesff 
.ff 
AddHangfireServerff &
(ff& '
optionsff' .
=>ff/ 1
{gg 
optionshh 
.hh 

ServerNamehh "
=hh# $'
MachineConfigurationHelpershh% @
.hh@ A
GetMachineNamehhA O
(hhO P
)hhP Q
;hhQ R
optionsii 
.ii 
Queuesii 
=ii  
newii! $
[ii$ %
]ii% &
{ii' ('
MachineConfigurationHelpersii) D
.iiD E
GetMachineNameiiE S
(iiS T
)iiT U
,iiU V
	ConstantsiiW `
.ii` a
Defaultiia h
}iii j
;iij k
optionsjj 
.jj 
WorkerCountjj #
=jj$ %
$numjj& '
;jj' (
}kk 
)kk 
;kk 
}ll 	
publicrr 
staticrr 
voidrr 
AddHttpContextrr )
(rr) *
thisrr* .
IServiceCollectionrr/ A
servicesrrB J
)rrJ K
{ss 	
servicestt 
.tt "
AddHttpContextAccessortt +
(tt+ ,
)tt, -
;tt- .
servicesuu 
.uu 
AddSingletonuu !
<uu! " 
IHttpContextAccessoruu" 6
,uu6 7
HttpContextAccessoruu8 K
>uuK L
(uuL M
)uuM N
;uuN O
}vv 	
public|| 
static|| 
void|| 
AddNLogLogging|| )
(||) *
this||* .
IServiceCollection||/ A
services||B J
)||J K
{}} 	
services~~ 
.~~ 
AddSingleton~~ !
<~~! "
ProxyGenerator~~" 0
>~~0 1
(~~1 2
)~~2 3
;~~3 4
services 
. 
AddSingleton !
<! "
ILogger" )
,) *
Logger+ 1
>1 2
(2 3
)3 4
;4 5
services
ÄÄ 
.
ÄÄ 
	AddScoped
ÄÄ 
<
ÄÄ 
IInterceptor
ÄÄ +
,
ÄÄ+ , 
LoggingInterceptor
ÄÄ- ?
>
ÄÄ? @
(
ÄÄ@ A
)
ÄÄA B
;
ÄÄB C
}
ÅÅ 	
public
áá 
static
áá 
void
áá %
AddSwaggerConfiguration
áá 2
(
áá2 3
this
áá3 7 
IServiceCollection
áá8 J
services
ááK S
)
ááS T
{
àà 	
services
ââ 
.
ââ  
AddSwaggerDocument
ââ '
(
ââ' (
config
ââ( .
=>
ââ/ 1
{
ää 
config
ãã 
.
ãã 
PostProcess
ãã "
=
ãã# $
document
ãã% -
=>
ãã. 0
{
åå 
document
çç 
.
çç 
Info
çç !
.
çç! "
Version
çç" )
=
çç* +
	Constants
çç, 5
.
çç5 6

APIVerison
çç6 @
;
çç@ A
document
éé 
.
éé 
Info
éé !
.
éé! "
Title
éé" '
=
éé( )
	Constants
éé* 3
.
éé3 4
APITitle
éé4 <
;
éé< =
document
èè 
.
èè 
Info
èè !
.
èè! "
Description
èè" -
=
èè. /
	Constants
èè0 9
.
èè9 :
APIDescription
èè: H
;
èèH I
document
êê 
.
êê 
Info
êê !
.
êê! "
TermsOfService
êê" 0
=
êê1 2
	Constants
êê3 <
.
êê< =
APITOS
êê= C
;
êêC D
}
ëë 
;
ëë 
}
íí 
)
íí 
;
íí 
}
ìì 	
public
ôô 
static
ôô 
void
ôô "
AddCorsConfiguration
ôô /
(
ôô/ 0
this
ôô0 4 
IServiceCollection
ôô5 G
services
ôôH P
)
ôôP Q
{
öö 	
services
õõ 
.
õõ 
AddCors
õõ 
(
õõ 
options
õõ $
=>
õõ% '
{
úú 
options
ùù 
.
ùù 
	AddPolicy
ùù !
(
ùù! "
	Constants
ùù" +
.
ùù+ ,

CorsPolicy
ùù, 6
,
ùù6 7
builder
ùù8 ?
=>
ùù@ B
builder
ùùC J
.
ùùJ K
AllowAnyOrigin
ùùK Y
(
ùùY Z
)
ùùZ [
.
ûûJ K
AllowAnyMethod
ûûK Y
(
ûûY Z
)
ûûZ [
.
üüJ K
AllowAnyHeader
üüK Y
(
üüY Z
)
üüZ [
)
üü[ \
;
üü\ ]
}
†† 
)
†† 
;
†† 
}
°° 	
public
ßß 
static
ßß 
void
ßß $
AddApplicationSettings
ßß 1
(
ßß1 2
this
ßß2 6 
IServiceCollection
ßß7 I
services
ßßJ R
)
ßßR S
{
®® 	
services
©© 
.
©© (
UseConfigurationValidation
©© /
(
©©/ 0
)
©©0 1
;
©©1 2
services
™™ 
.
™™ )
ConfigureValidatableSetting
™™ 0
<
™™0 1
AppSettings
™™1 <
>
™™< =
(
™™= >
Startup
™™> E
.
™™E F
Configuration
™™F S
.
™™S T

GetSection
™™T ^
(
™™^ _
nameof
™™_ e
(
™™e f
AppSettings
™™f q
)
™™q r
)
™™r s
)
™™s t
;
™™t u
services
´´ 
.
´´ )
ConfigureValidatableSetting
´´ 0
<
´´0 1"
JsonWebTokenSettings
´´1 E
>
´´E F
(
´´F G
Startup
´´G N
.
´´N O
Configuration
´´O \
.
´´\ ]

GetSection
´´] g
(
´´g h
nameof
´´h n
(
´´n o#
JsonWebTokenSettings´´o É
)´´É Ñ
)´´Ñ Ö
)´´Ö Ü
;´´Ü á
services
¨¨ 
.
¨¨ )
ConfigureValidatableSetting
¨¨ 0
<
¨¨0 1
TwillioSettings
¨¨1 @
>
¨¨@ A
(
¨¨A B
Startup
¨¨B I
.
¨¨I J
Configuration
¨¨J W
.
¨¨W X

GetSection
¨¨X b
(
¨¨b c
nameof
¨¨c i
(
¨¨i j
TwillioSettings
¨¨j y
)
¨¨y z
)
¨¨z {
)
¨¨{ |
;
¨¨| }
services
≠≠ 
.
≠≠ )
ConfigureValidatableSetting
≠≠ 0
<
≠≠0 1
SendGridSettings
≠≠1 A
>
≠≠A B
(
≠≠B C
Startup
≠≠C J
.
≠≠J K
Configuration
≠≠K X
.
≠≠X Y

GetSection
≠≠Y c
(
≠≠c d
nameof
≠≠d j
(
≠≠j k
SendGridSettings
≠≠k {
)
≠≠{ |
)
≠≠| }
)
≠≠} ~
;
≠≠~ 
}
ÆÆ 	
public
¥¥ 
static
¥¥ 
void
¥¥ 
AddApiController
¥¥ +
(
¥¥+ ,
this
¥¥, 0 
IServiceCollection
¥¥1 C
services
¥¥D L
)
¥¥L M
{
µµ 	
services
∂∂ 
.
∂∂ 
AddControllers
∂∂ #
(
∂∂# $
options
∂∂$ +
=>
∂∂, .
{
∑∑ 
options
ππ 
.
ππ "
ModelBinderProviders
ππ ,
.
ππ, -
Insert
ππ- 3
(
ππ3 4
$num
ππ4 5
,
ππ5 6
new
ππ7 :!
ModelBinderProvider
ππ; N
(
ππN O
)
ππO P
)
ππP Q
;
ππQ R
options
ºº 
.
ºº 
Filters
ºº 
.
ºº  
Add
ºº  #
(
ºº# $
typeof
ºº$ *
(
ºº* +#
ModelValidationFilter
ºº+ @
)
ºº@ A
)
ººA B
;
ººB C
options
øø 
.
øø 
Filters
øø 
.
øø  
Add
øø  #
(
øø# $
typeof
øø$ *
(
øø* +
ExceptionFilter
øø+ :
)
øø: ;
)
øø; <
;
øø< =
options
¬¬ 
.
¬¬ 
OutputFormatters
¬¬ (
.
¬¬( )
Clear
¬¬) .
(
¬¬. /
)
¬¬/ 0
;
¬¬0 1
options
≈≈ 
.
≈≈ 
OutputFormatters
≈≈ (
.
≈≈( )
Insert
≈≈) /
(
≈≈/ 0
$num
≈≈0 1
,
≈≈1 2
new
≈≈3 6)
JsonResponseOutputFormatter
≈≈7 R
(
≈≈R S
)
≈≈S T
)
≈≈T U
;
≈≈U V
options
∆∆ 
.
∆∆ 
OutputFormatters
∆∆ (
.
∆∆( )
Insert
∆∆) /
(
∆∆/ 0
$num
∆∆0 1
,
∆∆1 2
new
∆∆3 6(
XmlResponseOutputFormatter
∆∆7 Q
(
∆∆Q R
)
∆∆R S
)
∆∆S T
;
∆∆T U
options
…… 
.
…… 
InputFormatters
…… '
.
……' (
Clear
……( -
(
……- .
)
……. /
;
……/ 0
options
ÃÃ 
.
ÃÃ 
InputFormatters
ÃÃ '
.
ÃÃ' (
Insert
ÃÃ( .
(
ÃÃ. /
$num
ÃÃ/ 0
,
ÃÃ0 1
new
ÃÃ2 5'
JsonRequestInputFormatter
ÃÃ6 O
(
ÃÃO P
new
ÃÃP S
JsonOptions
ÃÃT _
(
ÃÃ_ `
)
ÃÃ` a
,
ÃÃa b
null
ÃÃc g
)
ÃÃg h
)
ÃÃh i
;
ÃÃi j
}
ÕÕ 
)
ÕÕ 
.
ŒŒ &
AddControllersAsServices
ŒŒ %
(
ŒŒ% &
)
ŒŒ& '
;
ŒŒ' (
services
—— 
.
—— 
AddSingleton
—— !
<
——! " 
IControllerFactory
——" 4
,
——4 5
ControllerFactory
——6 G
>
——G H
(
——H I
)
——I J
;
——J K
}
““ 	
public
ÿÿ 
static
ÿÿ 
void
ÿÿ (
AddApplicationLocalization
ÿÿ 5
(
ÿÿ5 6
this
ÿÿ6 : 
IServiceCollection
ÿÿ; M
services
ÿÿN V
)
ÿÿV W
{
ŸŸ 	
services
⁄⁄ 
.
⁄⁄ 
AddLocalization
⁄⁄ $
(
⁄⁄$ %
options
⁄⁄% ,
=>
⁄⁄- /
options
⁄⁄0 7
.
⁄⁄7 8
ResourcesPath
⁄⁄8 E
=
⁄⁄F G
	Constants
⁄⁄H Q
.
⁄⁄Q R
ResourcePath
⁄⁄R ^
)
⁄⁄^ _
;
⁄⁄_ `
services
€€ 
.
€€ 
	Configure
€€ 
<
€€ (
RequestLocalizationOptions
€€ 9
>
€€9 :
(
€€: ;
options
€€; B
=>
€€C E
{
‹‹ 
options
›› 
.
›› #
DefaultRequestCulture
›› -
=
››. /
LanguageHelpers
››0 ?
.
››? @&
GetDefaultRequestCulture
››@ X
(
››X Y
)
››Y Z
;
››Z [
options
ﬁﬁ 
.
ﬁﬁ 
SupportedCultures
ﬁﬁ )
=
ﬁﬁ* +
LanguageHelpers
ﬁﬁ, ;
.
ﬁﬁ; <&
GetSupportedCultureInfos
ﬁﬁ< T
(
ﬁﬁT U
)
ﬁﬁU V
;
ﬁﬁV W
options
ﬂﬂ 
.
ﬂﬂ !
SupportedUICultures
ﬂﬂ +
=
ﬂﬂ, -
LanguageHelpers
ﬂﬂ. =
.
ﬂﬂ= >(
GetSupportedUICultureInfos
ﬂﬂ> X
(
ﬂﬂX Y
)
ﬂﬂY Z
;
ﬂﬂZ [
}
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 	
public
ÁÁ 
static
ÁÁ 
void
ÁÁ 
AddDBContext
ÁÁ '
(
ÁÁ' (
this
ÁÁ( , 
IServiceCollection
ÁÁ- ?
services
ÁÁ@ H
)
ÁÁH I
{
ËË 	
services
ÈÈ 
.
ÈÈ 
AddDbContext
ÈÈ !
<
ÈÈ! "
LevelsUpDbContext
ÈÈ" 3
>
ÈÈ3 4
(
ÈÈ4 5
options
ÈÈ5 <
=>
ÈÈ= ?
{
ÍÍ 
options
ÎÎ 
.
ÎÎ 
UseSqlServer
ÎÎ $
(
ÎÎ$ %
Startup
ÎÎ% ,
.
ÎÎ, -
Configuration
ÎÎ- :
.
ÎÎ: ;!
GetConnectionString
ÎÎ; N
(
ÎÎN O
	Constants
ÎÎO X
.
ÎÎX Y"
ConnectionStringName
ÎÎY m
)
ÎÎm n
)
ÎÎn o
;
ÎÎo p
}
ÏÏ 
)
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
public
ÛÛ 
static
ÛÛ 
void
ÛÛ 
AddIdentity
ÛÛ &
(
ÛÛ& '
this
ÛÛ' + 
IServiceCollection
ÛÛ, >
services
ÛÛ? G
)
ÛÛG H
{
ÙÙ 	
services
ıı 
.
ıı 
AddIdentity
ıı  
<
ıı  !
LevelsUpUser
ıı! -
,
ıı- .
IdentityRole
ıı/ ;
>
ıı; <
(
ıı< =
options
ıı= D
=>
ııE G
{
ˆˆ 
options
˜˜ 
.
˜˜ 
Password
˜˜  
.
˜˜  !
RequireDigit
˜˜! -
=
˜˜. /
false
˜˜0 5
;
˜˜5 6
options
¯¯ 
.
¯¯ 
Password
¯¯  
.
¯¯  !
RequiredLength
¯¯! /
=
¯¯0 1
$num
¯¯2 3
;
¯¯3 4
options
˘˘ 
.
˘˘ 
Password
˘˘  
.
˘˘  !$
RequireNonAlphanumeric
˘˘! 7
=
˘˘8 9
false
˘˘: ?
;
˘˘? @
options
˙˙ 
.
˙˙ 
Password
˙˙  
.
˙˙  !
RequireUppercase
˙˙! 1
=
˙˙2 3
false
˙˙4 9
;
˙˙9 :
options
˚˚ 
.
˚˚ 
Password
˚˚  
.
˚˚  !
RequireLowercase
˚˚! 1
=
˚˚2 3
false
˚˚4 9
;
˚˚9 :
options
˛˛ 
.
˛˛ 
User
˛˛ 
.
˛˛  
RequireUniqueEmail
˛˛ /
=
˛˛0 1
true
˛˛2 6
;
˛˛6 7
options
ÅÅ 
.
ÅÅ 
SignIn
ÅÅ 
.
ÅÅ #
RequireConfirmedEmail
ÅÅ 4
=
ÅÅ5 6
true
ÅÅ7 ;
;
ÅÅ; <
options
ÑÑ 
.
ÑÑ 
SignIn
ÑÑ 
.
ÑÑ )
RequireConfirmedPhoneNumber
ÑÑ :
=
ÑÑ; <
true
ÑÑ= A
;
ÑÑA B
}
ÖÖ 
)
ÖÖ 
.
ÜÜ &
AddEntityFrameworkStores
ÜÜ %
<
ÜÜ% &
LevelsUpDbContext
ÜÜ& 7
>
ÜÜ7 8
(
ÜÜ8 9
)
ÜÜ9 :
.
áá &
AddDefaultTokenProviders
áá %
(
áá% &
)
áá& '
;
áá' (
}
àà 	
public
éé 
static
éé 
void
éé '
AddAuthenticationServices
éé 4
(
éé4 5
this
éé5 9 
IServiceCollection
éé: L
services
ééM U
)
ééU V
{
èè 	
services
êê 
.
êê 
AddAuthentication
êê &
(
êê& '
JwtBearerDefaults
êê' 8
.
êê8 9"
AuthenticationScheme
êê9 M
)
êêM N
.
ëë 
AddJwtBearer
ëë 
(
ëë 
options
ëë !
=>
ëë" $
{
íí 
options
ìì 
.
ìì "
RequireHttpsMetadata
ìì ,
=
ìì- .
false
ìì/ 4
;
ìì4 5
options
îî 
.
îî 
	SaveToken
îî !
=
îî" #
true
îî$ (
;
îî( )
options
ïï 
.
ïï '
TokenValidationParameters
ïï 1
=
ïï2 3-
TokenValidationParameterHelpers
ïï4 S
.
ïïS T*
GetTokenValidationParameters
ïïT p
(
ïïp q
)
ïïq r
;
ïïr s
}
ññ 
)
ññ 
;
ññ 
services
ôô 
.
ôô 
	AddScoped
ôô 
<
ôô %
JwtSecurityTokenHandler
ôô 6
>
ôô6 7
(
ôô7 8
)
ôô8 9
;
ôô9 :
}
öö 	
public
†† 
static
†† 
void
†† &
AddAuthorizationServices
†† 3
(
††3 4
this
††4 8 
IServiceCollection
††9 K
services
††L T
)
††T U
{
°° 	
services
¢¢ 
.
¢¢ 
AddAuthorization
¢¢ %
(
¢¢% &
authorization
¢¢& 3
=>
¢¢4 6
{
££ 
authorization
§§ 
.
§§ 
DefaultPolicy
§§ +
=
§§, -
new
§§. 1(
AuthorizationPolicyBuilder
§§2 L
(
§§L M
)
§§M N
.
••1 2&
AddAuthenticationSchemes
••2 J
(
••J K
JwtBearerDefaults
••K \
.
••\ ]"
AuthenticationScheme
••] q
)
••q r
.
¶¶1 2&
RequireAuthenticatedUser
¶¶2 J
(
¶¶J K
)
¶¶K L
.
ßß1 2
Build
ßß2 7
(
ßß7 8
)
ßß8 9
;
ßß9 :
}
®® 
)
®® 
;
®® 
}
©© 	
public
ØØ 
static
ØØ 
void
ØØ 
AddAutoMapper
ØØ (
(
ØØ( )
this
ØØ) - 
IServiceCollection
ØØ. @
services
ØØA I
)
ØØI J
{
∞∞ 	
Assembly
±± 
assembly
±± 
=
±± 
typeof
±±  &
(
±±& '
IAutoMapper
±±' 2
)
±±2 3
.
±±3 4
Assembly
±±4 <
;
±±< =
services
≤≤ 
.
≤≤ 
AddAutoMapper
≤≤ "
(
≤≤" #
assembly
≤≤# +
)
≤≤+ ,
;
≤≤, -
}
≥≥ 	
public
ππ 
static
ππ 
void
ππ 
AddRepositories
ππ *
(
ππ* +
this
ππ+ / 
IServiceCollection
ππ0 B
services
ππC K
)
ππK L
{
∫∫ 	
services
ªª 
.
ªª 
Scan
ªª 
(
ªª 
scan
ªª 
=>
ªª !
scan
ªª" &
.
ºº" #
FromAssemblyOf
ºº# 1
<
ºº1 2
IRepository
ºº2 =
>
ºº= >
(
ºº> ?
)
ºº? @
.
ΩΩ" #

AddClasses
ΩΩ# -
(
ΩΩ- .
)
ΩΩ. /
.
ææ" #%
AsImplementedInterfaces
ææ# :
(
ææ: ;
)
ææ; <
.
øø" # 
WithScopedLifetime
øø# 5
(
øø5 6
)
øø6 7
)
øø7 8
;
øø8 9
}
¿¿ 	
public
∆∆ 
static
∆∆ 
void
∆∆ 
AddServices
∆∆ &
(
∆∆& '
this
∆∆' + 
IServiceCollection
∆∆, >
services
∆∆? G
,
∆∆G H
bool
∆∆I M 
loggingInterceptor
∆∆N `
=
∆∆a b
true
∆∆c g
)
∆∆g h
{
«« 	
if
»» 
(
»»  
loggingInterceptor
»» "
)
»»" #
{
…… 
Type
   
[
   
]
   
userDefinedTypes
   '
=
  ( )
typeof
  * 0
(
  0 1
IService
  1 9
)
  9 :
.
  : ;
Assembly
  ; C
.
  C D
GetExportedTypes
  D T
(
  T U
)
  U V
.
  V W
Where
  W \
(
  \ ]
x
  ] ^
=>
  _ a
x
  b c
.
  c d
IsClass
  d k
&&
  l n
x
  o p
.
  p q
IsPublic
  q y
&&
  z |
typeof  } É
(  É Ñ
IService  Ñ å
)  å ç
.  ç é 
IsAssignableFrom  é û
(  û ü
x  ü †
)  † °
)  ° ¢
.  ¢ £
ToArray  £ ™
(  ™ ´
)  ´ ¨
;  ¨ ≠
foreach
ÀÀ 
(
ÀÀ 
Type
ÀÀ 
implementation
ÀÀ ,
in
ÀÀ- /
userDefinedTypes
ÀÀ0 @
)
ÀÀ@ A
{
ÃÃ 
foreach
ÕÕ 
(
ÕÕ 
Type
ÕÕ !

@interface
ÕÕ" ,
in
ÕÕ- /
implementation
ÕÕ0 >
.
ÕÕ> ?
GetInterfaces
ÕÕ? L
(
ÕÕL M
)
ÕÕM N
.
ÕÕN O
Where
ÕÕO T
(
ÕÕT U
impl
ÕÕU Y
=>
ÕÕZ \
impl
ÕÕ] a
.
ÕÕa b
Name
ÕÕb f
!=
ÕÕg i
nameof
ÕÕj p
(
ÕÕp q
IService
ÕÕq y
)
ÕÕy z
)
ÕÕz {
)
ÕÕ{ |
{
ŒŒ 
services
œœ  
.
œœ  !
AddProxiedScoped
œœ! 1
(
œœ1 2

@interface
œœ2 <
,
œœ< =
implementation
œœ> L
)
œœL M
;
œœM N
}
–– 
}
—— 
}
““ 
else
”” 
{
‘‘ 
services
’’ 
.
’’ 
Scan
’’ 
(
’’ 
scan
’’ "
=>
’’# %
scan
’’& *
.
÷÷& '
FromAssemblyOf
÷÷' 5
<
÷÷5 6
IService
÷÷6 >
>
÷÷> ?
(
÷÷? @
)
÷÷@ A
.
◊◊& '

AddClasses
◊◊' 1
(
◊◊1 2
)
◊◊2 3
.
ÿÿ& '%
AsImplementedInterfaces
ÿÿ' >
(
ÿÿ> ?
)
ÿÿ? @
.
ŸŸ& ' 
WithScopedLifetime
ŸŸ' 9
(
ŸŸ9 :
)
ŸŸ: ;
)
ŸŸ; <
;
ŸŸ< =
}
⁄⁄ 
}
€€ 	
public
·· 
static
·· 
void
·· #
AddBusinessOperations
·· 0
(
··0 1
this
··1 5 
IServiceCollection
··6 H
services
··I Q
)
··Q R
{
‚‚ 	
services
„„ 
.
„„ 
Scan
„„ 
(
„„ 
scan
„„ 
=>
„„ !
scan
„„" &
.
‰‰" #
FromAssemblyOf
‰‰# 1
<
‰‰1 2 
IBusinessOperation
‰‰2 D
>
‰‰D E
(
‰‰E F
)
‰‰F G
.
ÂÂ" #

AddClasses
ÂÂ# -
(
ÂÂ- .
)
ÂÂ. /
.
ÊÊ" #%
AsImplementedInterfaces
ÊÊ# :
(
ÊÊ: ;
)
ÊÊ; <
.
ÁÁ" # 
WithScopedLifetime
ÁÁ# 5
(
ÁÁ5 6
)
ÁÁ6 7
)
ÁÁ7 8
;
ÁÁ8 9
}
ËË 	
public
ÓÓ 
static
ÓÓ 
void
ÓÓ 
AddComponents
ÓÓ (
(
ÓÓ( )
this
ÓÓ) - 
IServiceCollection
ÓÓ. @
services
ÓÓA I
)
ÓÓI J
{
ÔÔ 	
services
 
.
 
Scan
 
(
 
scan
 
=>
 !
scan
" &
.
ÒÒ" #
FromAssemblyOf
ÒÒ# 1
<
ÒÒ1 2

IComponent
ÒÒ2 <
>
ÒÒ< =
(
ÒÒ= >
)
ÒÒ> ?
.
ÚÚ" #

AddClasses
ÚÚ# -
(
ÚÚ- .
)
ÚÚ. /
.
ÛÛ" #%
AsImplementedInterfaces
ÛÛ# :
(
ÛÛ: ;
)
ÛÛ; <
.
ÙÙ" ##
WithTransientLifetime
ÙÙ# 8
(
ÙÙ8 9
)
ÙÙ9 :
)
ÙÙ: ;
;
ÙÙ; <
}
ıı 	
}
ˆˆ 
}˜˜ ≥
DD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Factory\ControllerFactory.cs
	namespace 	
LevelsUpAPI
 
. 
Factory 
{		 
public 

class 
ControllerFactory "
:# $
IControllerFactory% 7
{ 
public 
object 
CreateController &
(& '
ControllerContext' 8
context9 @
)@ A
{ 	
if 
( 
context 
== 
null 
)  
{ 
throw 
new 
LevelsUpException +
(+ ,
ErrorMessages, 9
.9 :+
CONTROLLER_FACTORY_CONTEXT_NULL: Y
,Y Z

ErrorCodes[ e
.e f

BadRequestf p
)p q
;q r
} 
Type 
controllerType 
=  !
context" )
.) *
ActionDescriptor* :
.: ;
ControllerTypeInfo; M
.M N
AsTypeN T
(T U
)U V
;V W
return   
context   
.   
HttpContext   &
.  & '
RequestServices  ' 6
.  6 7
GetRequiredService  7 I
(  I J
controllerType  J X
)  X Y
;  Y Z
}!! 	
public(( 
void(( 
ReleaseController(( %
(((% &
ControllerContext((& 7
context((8 ?
,((? @
object((A G

controller((H R
)((R S
{)) 	
if** 
(** 

controller** 
is** 
IDisposable** )
)**) *
{++ 
(,, 

controller,, 
as,, 
IDisposable,, *
),,* +
.,,+ ,
Dispose,,, 3
(,,3 4
),,4 5
;,,5 6
}-- 
}.. 	
}// 
}00 ∞
GD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Filters\AuthorizeAdminFilter.cs
	namespace 	
LevelsUpAPI
 
. 
Filters 
{ 
public 

class  
AuthorizeAdminFilter %
:& ' 
IAuthorizationFilter( <
{ 
public 
void 
OnAuthorization #
(# $&
AuthorizationFilterContext$ >
context? F
)F G
{ 	
HttpContext 
httpContext #
=$ %
context& -
.- .
HttpContext. 9
;9 :
if 
( 
context 
. 
Filters 
.  
Any  #
(# $
filter$ *
=>+ -
filter. 4
is5 7
IAllowAnonymous8 G
)G H
)H I
{ 
return 
; 
} 
if!! 
(!! 
!!! 
httpContext!! 
.!! 
User!! !
.!!! "
Identity!!" *
.!!* +
IsAuthenticated!!+ :
)!!: ;
{"" 
throw## 
new## 
LevelsUpException## +
(##+ ,
ErrorMessages##, 9
.##9 :
UNAUTHORIZED_ERROR##: L
,##L M

ErrorCodes##N X
.##X Y
Unauthorized##Y e
)##e f
;##f g
}$$ 
if&& 
(&& 
!&& 
httpContext&& 
.&& 
User&& !
.&&! "
HasClaim&&" *
(&&* +
x&&+ ,
=>&&- /
x&&0 1
.&&1 2
Type&&2 6
==&&7 9

ClaimTypes&&: D
.&&D E
Role&&E I
)&&I J
)&&J K
{'' 
throw(( 
new(( 
LevelsUpException(( +
(((+ ,
ErrorMessages((, 9
.((9 :
UNAUTHORIZED_ERROR((: L
,((L M

ErrorCodes((N X
.((X Y
Unauthorized((Y e
)((e f
;((f g
})) 
	UserRoles++ 
role++ 
=++ 
EnumHelpers++ (
.++( )
ToEnum++) /
<++/ 0
	UserRoles++0 9
>++9 :
(++: ;
httpContext++; F
.++F G
User++G K
.++K L
Claims++L R
.++R S
GetClaimValue++S `
(++` a

ClaimTypes++a k
.++k l
Role++l p
)++p q
)++q r
;++r s
if,, 
(,, 
role,, 
!=,, 
	UserRoles,, !
.,,! "
Admin,," '
),,' (
{-- 
throw.. 
new.. 
LevelsUpException.. +
(..+ ,
ErrorMessages.., 9
...9 :
UNAUTHORIZED_ERROR..: L
,..L M

ErrorCodes..N X
...X Y
Unauthorized..Y e
)..e f
;..f g
}// 
}00 	
}11 
}22 ’
FD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Filters\AuthorizeUserFilter.cs
	namespace 	
LevelsUpAPI
 
. 
Filters 
{ 
public 

class 
AuthorizeUserFilter $
:% & 
IAuthorizationFilter' ;
{ 
public 
void 
OnAuthorization #
(# $&
AuthorizationFilterContext$ >
context? F
)F G
{ 	
HttpContext 
httpContext #
=$ %
context& -
.- .
HttpContext. 9
;9 :
if 
( 
context 
. 
Filters 
.  
Any  #
(# $
filter$ *
=>+ -
filter. 4
is5 7
IAllowAnonymous8 G
)G H
)H I
{ 
return 
; 
} 
if!! 
(!! 
httpContext!! 
.!! 
User!!  
.!!  !
Identity!!! )
.!!) *
IsAuthenticated!!* 9
==!!: <
false!!= B
)!!B C
{"" 
throw## 
new## 
LevelsUpException## +
(##+ ,
ErrorMessages##, 9
.##9 :
UNAUTHORIZED_ERROR##: L
,##L M

ErrorCodes##N X
.##X Y
Unauthorized##Y e
)##e f
;##f g
}$$ 
if&& 
(&& 
httpContext&& 
.&& 
User&&  
.&&  !
HasClaim&&! )
(&&) *
x&&* +
=>&&, .
x&&/ 0
.&&0 1
Type&&1 5
==&&6 8

ClaimTypes&&9 C
.&&C D
Role&&D H
)&&H I
==&&J L
false&&M R
)&&R S
{'' 
throw(( 
new(( 
LevelsUpException(( +
(((+ ,
ErrorMessages((, 9
.((9 :
UNAUTHORIZED_ERROR((: L
,((L M

ErrorCodes((N X
.((X Y
Unauthorized((Y e
)((e f
;((f g
})) 
	UserRoles++ 
role++ 
=++ 
EnumHelpers++ (
.++( )
ToEnum++) /
<++/ 0
	UserRoles++0 9
>++9 :
(++: ;
httpContext++; F
.++F G
User++G K
.++K L
Claims++L R
.++R S
GetClaimValue++S `
(++` a

ClaimTypes++a k
.++k l
Role++l p
)++p q
)++q r
;++r s
if,, 
(,, 
role,, 
!=,, 
	UserRoles,, !
.,,! "
User,," &
),,& '
{-- 
throw.. 
new.. 
LevelsUpException.. +
(..+ ,
ErrorMessages.., 9
...9 :
UNAUTHORIZED_ERROR..: L
,..L M

ErrorCodes..N X
...X Y
Unauthorized..Y e
)..e f
;..f g
}// 
}00 	
}11 
}22 ø
BD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Filters\ExceptionFilter.cs
	namespace 	
LevelsUpAPI
 
. 
Filters 
{ 
public 

class 
ExceptionFilter  
:! "
IExceptionFilter# 3
{ 
public 
void 
OnException 
(  
ExceptionContext  0
context1 8
)8 9
{ 	
if 
( 
! 
context 
. 
ExceptionHandled )
)) *
{ 
context 
. 
ExceptionHandled (
=) *
true+ /
;/ 0
} 
string 
	exception 
= 
context &
.& '
	Exception' 0
.0 1
GetType1 8
(8 9
)9 :
.: ;
Name; ?
;? @
switch 
( 
	exception 
) 
{ 
case 
nameof 
( 
LevelsUpException -
)- .
:. /
throw 
context !
.! "
	Exception" +
;+ ,
case 
nameof 
( 
SqlException (
)( )
:) *
throw 
new 
LevelsUpException /
(/ 0
ErrorMessages0 =
.= >
SQL_EXCEPTION> K
,K L

ErrorCodesM W
.W X
NotFoundX `
)` a
;a b
default   
:   
throw!! 
new!! 
LevelsUpException!! /
(!!/ 0
ErrorMessages!!0 =
.!!= >!
INTERNAL_SERVER_ERROR!!> S
,!!S T

ErrorCodes!!U _
.!!_ `
InternalServerError!!` s
)!!s t
;!!t u
}"" 
}$$ 	
}%% 
}&& Ï
ND:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Filters\HangfireAuthorizationFilter.cs
	namespace 	
LevelsUpAPI
 
. 
Filters 
{ 
public 

class '
HangfireAuthorizationFilter ,
:- .)
IDashboardAuthorizationFilter/ L
{ 
public 
bool 
	Authorize 
( 
DashboardContext .
context/ 6
)6 7
{ 	
HttpContext 
httpContext #
=$ %
context& -
.- .
GetHttpContext. <
(< =
)= >
;> ?
if 
( 
httpContext 
. 
User  
!=! #
null$ (
&&) +
httpContext, 7
.7 8
User8 <
.< =
Identity= E
.E F
IsAuthenticatedF U
)U V
{ 
return 
true 
; 
} 
return 
false 
; 
}## 	
}$$ 
}%% µ-
MD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Filters\HangfireJobExecutionFilter.cs
	namespace 	
LevelsUpAPI
 
. 
Filters 
{		 
public 

class &
HangfireJobExecutionFilter +
:, -
JobFilterAttribute. @
,@ A
IClientFilterB O
,O P
IServerFilterQ ^
,^ _
IElectStateFilter` q
,q r
IApplyStateFilter	s Ñ
{ 
private 
readonly 
ILogger  
_logger! (
;( )
public &
HangfireJobExecutionFilter )
() *
ILogger* 1
logger2 8
)8 9
{ 	
this 
. 
_logger 
= 
logger !
;! "
}   	
public&& 
void&& 

OnCreating&& 
(&& 
CreatingContext&& .
filterContext&&/ <
)&&< =
{'' 	
this(( 
.(( 
_logger(( 
.(( 
Debug(( 
((( 
$"(( !,
 Creating a job based on method [((! A
{((A B
filterContext((B O
.((O P
Job((P S
.((S T
Method((T Z
.((Z [
Name(([ _
}((_ `
]((` a
"((a b
)((b c
;((c d
})) 	
public// 
void// 
	OnCreated// 
(// 
CreatedContext// ,
filterContext//- :
)//: ;
{00 	
this11 
.11 
_logger11 
.11 
Debug11 
(11 
$"11 !)
Job that is based on method [11! >
{11> ?
filterContext11? L
.11L M
Job11M P
.11P Q
Method11Q W
.11W X
Name11X \
}11\ ](
] has been created with id [11] y
{11y z
filterContext	11z á
.
11á à
BackgroundJob
11à ï
?
11ï ñ
.
11ñ ó
Id
11ó ô
}
11ô ö
]
11ö õ
"
11õ ú
)
11ú ù
;
11ù û
}22 	
public88 
void88 
OnPerforming88  
(88  !
PerformingContext88! 2
filterContext883 @
)88@ A
{99 	
this:: 
.:: 
_logger:: 
.:: 
Debug:: 
(:: 
$":: !%
Starting to perform job [::! :
{::: ;
filterContext::; H
.::H I
BackgroundJob::I V
.::V W
Id::W Y
}::Y Z
]::Z [
"::[ \
)::\ ]
;::] ^
};; 	
publicAA 
voidAA 
OnPerformedAA 
(AA  
PerformedContextAA  0
filterContextAA1 >
)AA> ?
{BB 	
thisCC 
.CC 
_loggerCC 
.CC 
DebugCC 
(CC 
$"CC !
Job [CC! &
{CC& '
filterContextCC' 4
.CC4 5
BackgroundJobCC5 B
.CCB C
IdCCC E
}CCE F 
] has been performedCCF Z
"CCZ [
)CC[ \
;CC\ ]
}DD 	
publicNN 
voidNN 
OnStateElectionNN #
(NN# $
ElectStateContextNN$ 5
contextNN6 =
)NN= >
{OO 	
FailedStatePP 
failedStatePP #
=PP$ %
contextPP& -
.PP- .
CandidateStatePP. <
asPP= ?
FailedStatePP@ K
;PPK L
ifQQ 
(QQ 
failedStateQQ 
!=QQ 
nullQQ #
)QQ# $
{RR 
thisSS 
.SS 
_loggerSS 
.SS 
DebugSS "
(SS" #
$"SS# %
Job [SS% *
{SS* +
contextSS+ 2
.SS2 3
BackgroundJobSS3 @
.SS@ A
IdSSA C
}SSC D3
'] has been failed due to an exception [SSD k
{SSk l
failedStateSSl w
.SSw x
	Exception	SSx Å
}
SSÅ Ç
]
SSÇ É
"
SSÉ Ñ
)
SSÑ Ö
;
SSÖ Ü
}TT 
}UU 	
public]] 
void]] 
OnStateApplied]] "
(]]" #
ApplyStateContext]]# 4
context]]5 <
,]]< =!
IWriteOnlyTransaction]]> S
transaction]]T _
)]]_ `
{^^ 	
this__ 
.__ 
_logger__ 
.__ 
Debug__ 
(__ 
$"__ !
Job [__! &
{__& '
context__' .
.__. /
BackgroundJob__/ <
.__< =
Id__= ?
}__? @&
] state was changed from [__@ Z
{__Z [
context__[ b
.__b c
OldStateName__c o
}__o p
] to [__p v
{__v w
context__w ~
.__~ 
NewState	__ á
.
__á à
Name
__à å
}
__å ç
]
__ç é
"
__é è
)
__è ê
;
__ê ë
}`` 	
publichh 
voidhh 
OnStateUnappliedhh $
(hh$ %
ApplyStateContexthh% 6
contexthh7 >
,hh> ?!
IWriteOnlyTransactionhh@ U
transactionhhV a
)hha b
{ii 	
thisjj 
.jj 
_loggerjj 
.jj 
Debugjj 
(jj 
$"jj !
Job [jj! &
{jj& '
contextjj' .
.jj. /
BackgroundJobjj/ <
.jj< =
Idjj= ?
}jj? @
	] state [jj@ I
{jjI J
contextjjJ Q
.jjQ R
OldStateNamejjR ^
}jj^ _
] was unapplied.jj_ o
"jjo p
)jjp q
;jjq r
}kk 	
}ll 
}mm …
HD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Filters\ModelValidationFilter.cs
	namespace 	
LevelsUpAPI
 
. 
Filters 
{ 
public 

class !
ModelValidationFilter &
:' (
IActionFilter) 6
{ 
public 
void 
OnActionExecuting %
(% &"
ActionExecutingContext& <
context= D
)D E
{ 	
if 
( 
! 
context 
. 

ModelState #
.# $
IsValid$ +
)+ ,
{ 
string 
errorMessage #
=$ %
this& *
.* +
GetErrorMessage+ :
(: ;
context; B
)B C
;C D
context 
. 
Result 
=  
ActionResultHelpers! 4
.4 5#
GetBadRequestJsonResult5 L
(L M
errorMessageM Y
)Y Z
;Z [
} 
} 	
public 
void 
OnActionExecuted $
($ %!
ActionExecutedContext% :
context; B
)B C
{ 	
}!! 	
private** 
string** 
GetErrorMessage** &
(**& '"
ActionExecutingContext**' =
context**> E
)**E F
{++ 	
return,, 
context,, 
.,, 

ModelState,, %
.,,% &
Values,,& ,
.--% &

SelectMany--& 0
(--0 1
x--1 2
=>--3 5
x--6 7
.--7 8
Errors--8 >
...% &
Select..& ,
(.., -
e..- .
=>../ 1
e..2 3
...3 4
ErrorMessage..4 @
)..@ A
)..A B
.//% &
FirstOrDefault//& 4
(//4 5
)//5 6
;//6 7
}00 	
}11 
}22 Ñ
_D:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Formatters\InputFormatters\JsonRequestInputFormatter.cs
	namespace 	
LevelsUpAPI
 
. 

Formatters  
.  !
InputFormatters! 0
{ 
public 

class %
JsonRequestInputFormatter *
:+ ,(
SystemTextJsonInputFormatter- I
{ 
private 
Type $
_currentDeserializedType -
;- .
public %
JsonRequestInputFormatter (
(( )
JsonOptions) 4
options5 <
,< =
ILogger> E
<E F(
SystemTextJsonInputFormatterF b
>b c
loggerd j
)j k
: 
base 
( 
options 
, 
logger "
)" #
{ 	
}   	
	protected** 
override** 
bool** 
CanReadType**  +
(**+ ,
Type**, 0
type**1 5
)**5 6
{++ 	
if,, 
(,, 
typeof,, 
(,, 
IBaseRequest,, #
),,# $
.,,$ %
IsAssignableFrom,,% 5
(,,5 6
type,,6 :
),,: ;
),,; <
{-- 
this.. 
... $
_currentDeserializedType.. -
=... /
type..0 4
;..4 5
return// 
true// 
;// 
}00 
return22 
false22 
;22 
}33 	
public:: 
override:: 
Task:: 
<::  
InputFormatterResult:: 1
>::1 2 
ReadRequestBodyAsync::3 G
(::G H!
InputFormatterContext::H ]
context::^ e
)::e f
{;; 	
string<< 
data<< 
=<< 
string<<  
.<<  !
Empty<<! &
;<<& '
HttpRequest>> 
request>> 
=>>  !
context>>" )
.>>) *
HttpContext>>* 5
.>>5 6
Request>>6 =
;>>= >
using@@ 
(@@ 
StreamReader@@ 
streamReader@@  ,
=@@- .
new@@/ 2
StreamReader@@3 ?
(@@? @
request@@@ G
.@@G H
Body@@H L
)@@L M
)@@M N
{AA 
dataBB 
=BB 
streamReaderBB #
.BB# $
ReadToEndAsyncBB$ 2
(BB2 3
)BB3 4
.BB4 5
ResultBB5 ;
;BB; <
}CC 
returnEE  
InputFormatterResultEE '
.EE' (
SuccessAsyncEE( 4
(EE4 5 
JsonSerializerHelperEE5 I
.EEI J
DeserializeEEJ U
(EEU V
dataEEV Z
,EEZ [
thisEE\ `
.EE` a$
_currentDeserializedTypeEEa y
)EEy z
)EEz {
;EE{ |
}FF 	
}GG 
}HH ®
bD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Formatters\OutputFormatters\JsonResponseOutputFormatter.cs
	namespace 	
LevelsUpAPI
 
. 

Formatters  
.  !
OutputFormatters! 1
{ 
public 

class '
JsonResponseOutputFormatter ,
:- .
TextOutputFormatter/ B
{ 
public '
JsonResponseOutputFormatter *
(* +
)+ ,
{ 	
this 
. 
SupportedMediaTypes $
.$ %
Add% (
(( ) 
MediaTypeHeaderValue) =
.= >
Parse> C
(C D
ContentTypesD P
.P Q
JsonQ U
)U V
)V W
;W X
this 
. 
SupportedEncodings #
.# $
Add$ '
(' (
Encoding( 0
.0 1
UTF81 5
)5 6
;6 7
this 
. 
SupportedEncodings #
.# $
Add$ '
(' (
Encoding( 0
.0 1
Unicode1 8
)8 9
;9 :
} 	
	protected"" 
override"" 
bool"" 
CanWriteType""  ,
("", -
Type""- 1
type""2 6
)""6 7
{## 	
if$$ 
($$ 
typeof$$ 
($$ 
IBaseResponse$$ $
)$$$ %
.$$% &
IsAssignableFrom$$& 6
($$6 7
type$$7 ;
)$$; <
)$$< =
{%% 
return&& 
true&& 
;&& 
}'' 
return)) 
false)) 
;)) 
}** 	
public44 
override44 
Task44 "
WriteResponseBodyAsync44 3
(443 4'
OutputFormatterWriteContext444 O
context44P W
,44W X
Encoding44Y a
selectedEncoding44b r
)44r s
{55 	
HttpResponse66 
response66 !
=66" #
context66$ +
.66+ ,
HttpContext66, 7
.667 8
Response668 @
;66@ A
string88 
buffer88 
=88 
string88 "
.88" #
Empty88# (
;88( )
if:: 
(:: 
context:: 
.:: 
Object:: 
is:: !
IBaseResponse::" /
)::/ 0
{;; 
buffer<< 
=<<  
JsonSerializerHelper<< -
.<<- .
	Serialize<<. 7
<<<7 8
BasicResponse<<8 E
><<E F
(<<F G
context<<G N
.<<N O
Object<<O U
as<<V X
BasicResponse<<Y f
)<<f g
;<<g h
}== 
return?? 
response?? 
.?? 

WriteAsync?? &
(??& '
buffer??' -
)??- .
;??. /
}@@ 	
}AA 
}BB »
aD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Formatters\OutputFormatters\XmlResponseOutputFormatter.cs
	namespace 	
LevelsUpAPI
 
. 

Formatters  
.  !
OutputFormatters! 1
{ 
public 

class &
XmlResponseOutputFormatter +
:, -
TextOutputFormatter. A
{ 
public &
XmlResponseOutputFormatter )
() *
)* +
{ 	
this 
. 
SupportedMediaTypes $
.$ %
Add% (
(( ) 
MediaTypeHeaderValue) =
.= >
Parse> C
(C D
ContentTypesD P
.P Q
XmlQ T
)T U
)U V
;V W
this 
. 
SupportedEncodings #
.# $
Add$ '
(' (
Encoding( 0
.0 1
UTF81 5
)5 6
;6 7
this 
. 
SupportedEncodings #
.# $
Add$ '
(' (
Encoding( 0
.0 1
Unicode1 8
)8 9
;9 :
} 	
	protected"" 
override"" 
bool"" 
CanWriteType""  ,
("", -
Type""- 1
type""2 6
)""6 7
{## 	
if$$ 
($$ 
typeof$$ 
($$ 
IBaseResponse$$ $
)$$$ %
.$$% &
IsAssignableFrom$$& 6
($$6 7
type$$7 ;
)$$; <
)$$< =
{%% 
return&& 
true&& 
;&& 
}'' 
return)) 
false)) 
;)) 
}** 	
public44 
override44 
Task44 "
WriteResponseBodyAsync44 3
(443 4'
OutputFormatterWriteContext444 O
context44P W
,44W X
Encoding44Y a
selectedEncoding44b r
)44r s
{55 	
HttpResponse66 
response66 !
=66" #
context66$ +
.66+ ,
HttpContext66, 7
.667 8
Response668 @
;66@ A
string88 
buffer88 
=88 
string88 "
.88" #
Empty88# (
;88( )
if:: 
(:: 
context:: 
.:: 
Object:: 
is:: !
IBaseResponse::" /
)::/ 0
{;; 
BasicResponse<< 
basicResponse<< +
=<<, -
context<<. 5
.<<5 6
Object<<6 <
as<<= ?
BasicResponse<<@ M
;<<M N
buffer== 
=== 

XmlHelpers== #
.==# $
	Serialize==$ -
(==- .
basicResponse==. ;
,==; <

XmlHelpers=== G
.==G H"
GetResponsesKnownTypes==H ^
(==^ _
)==_ `
)==` a
;==a b
}>> 
return@@ 
response@@ 
.@@ 

WriteAsync@@ &
(@@& '
buffer@@' -
)@@- .
;@@. /
}AA 	
}BB 
}CC ˝
MD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Middlewares\ApplicationMiddlewares.cs
	namespace 	
LevelsUpAPI
 
. 
Middlewares !
{ 
public 

static 
class "
ApplicationMiddlewares .
{		 
public 
static 
IApplicationBuilder )*
UseLevelsUpExceptionMiddleware* H
(H I
thisI M
IApplicationBuilderN a
builderb i
)i j
{ 	
return 
builder 
. 
UseMiddleware (
<( )
ExceptionMiddleware) <
>< =
(= >
)> ?
;? @
} 	
public 
static 
IApplicationBuilder )7
+UseLevelsUpResponseRequestLoggingMiddleware* U
(U V
thisV Z
IApplicationBuilder[ n
buildero v
)v w
{ 	
return 
builder 
. 
UseMiddleware (
<( ),
 RequestResponseLoggingMiddleware) I
>I J
(J K
)K L
;L M
}   	
public)) 
static)) 
IApplicationBuilder)) )/
#UseLevelsUpAuthenticationMiddleware))* M
())M N
this))N R
IApplicationBuilder))S f
builder))g n
)))n o
{** 	
return++ 
builder++ 
.++ 
UseMiddleware++ (
<++( )'
JwtAuthenticationMiddleware++) D
>++D E
(++E F
)++F G
;++G H
},, 	
public55 
static55 
IApplicationBuilder55 )

UseSwagger55* 4
(554 5
this555 9
IApplicationBuilder55: M
builder55N U
)55U V
{66 	
builder77 
=77 
builder77 
.77 

UseOpenApi77 (
(77( )
)77) *
;77* +
return88 
builder88 
.88 
UseSwaggerUi388 (
(88( )
)88) *
;88* +
}99 	
}:: 
};; Ü6
JD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Middlewares\ExceptionMiddleware.cs
	namespace 	
LevelsUpAPI
 
. 
Middlewares !
{ 
public 

class 
ExceptionMiddleware $
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
private 
readonly 
ILogger  
_logger! (
;( )
private"" 
readonly"" 
IStringLocalizer"" )
<"") *
SharedResources""* 9
>""9 :

_localizer""; E
;""E F
public,, 
ExceptionMiddleware,, "
(,," #
RequestDelegate,,# 2
next,,3 7
,,,7 8
ILogger,,9 @
logging,,A H
,,,H I
IStringLocalizer,,J Z
<,,Z [
SharedResources,,[ j
>,,j k
	localizer,,l u
),,u v
{-- 	
this.. 
... 
_next.. 
=.. 
next.. 
;.. 
this// 
.// 
_logger// 
=// 
logging// "
;//" #
this00 
.00 

_localizer00 
=00 
	localizer00 '
;00' (
}11 	
public99 
async99 
Task99 
Invoke99  
(99  !
HttpContext99! ,
context99- 4
)994 5
{:: 	
try;; 
{<< 
Stream== 
originalBody== #
===$ %
context==& -
.==- .
Response==. 6
.==6 7
Body==7 ;
;==; <
try>> 
{?? 
string@@ 
responseBody@@ '
=@@( )
null@@* .
;@@. /
usingBB 
(BB 
MemoryStreamBB '
	memStreamBB( 1
=BB2 3
newBB4 7
MemoryStreamBB8 D
(BBD E
)BBE F
)BBF G
{CC 
contextDD 
.DD  
ResponseDD  (
.DD( )
BodyDD) -
=DD. /
	memStreamDD0 9
;DD9 :
awaitEE 
thisEE "
.EE" #
_nextEE# (
.EE( )
InvokeEE) /
(EE/ 0
contextEE0 7
)EE7 8
;EE8 9
	memStreamFF !
.FF! "
PositionFF" *
=FF+ ,
$numFF- .
;FF. /
responseBodyGG $
=GG% &
newGG' *
StreamReaderGG+ 7
(GG7 8
	memStreamGG8 A
)GGA B
.GGB C
	ReadToEndGGC L
(GGL M
)GGM N
;GGN O
}HH 
byteJJ 
[JJ 
]JJ 
bufferJJ !
=JJ" #
responseBodyJJ$ 0
.JJ0 1
GetEncodedBytesJJ1 @
(JJ@ A
)JJA B
;JJB C
usingKK 
(KK 
MemoryStreamKK '
outputKK( .
=KK/ 0
newKK1 4
MemoryStreamKK5 A
(KKA B
bufferKKB H
)KKH I
)KKI J
{LL 
awaitMM 
outputMM $
.MM$ %
CopyToAsyncMM% 0
(MM0 1
originalBodyMM1 =
,MM= >
intMM? B
.MMB C
MaxValueMMC K
)MMK L
;MML M
}NN 
}OO 
finallyPP 
{QQ 
contextRR 
.RR 
ResponseRR $
.RR$ %
BodyRR% )
=RR* +
originalBodyRR, 8
;RR8 9
}SS 
}TT 
catchUU 
(UU 
LevelsUpExceptionUU $
exUU% '
)UU' (
{VV 
awaitWW 
thisWW 
.WW  
HandleExceptionAsyncWW /
(WW/ 0
contextWW0 7
,WW7 8
exWW9 ;
)WW; <
;WW< =
}XX 
}YY 	
privatebb 
asyncbb 
Taskbb  
HandleExceptionAsyncbb /
(bb/ 0
HttpContextbb0 ;
contextbb< C
,bbC D
LevelsUpExceptionbbE V
	exceptionbbW `
)bb` a
{cc 	
thisdd 
.dd 
_loggerdd 
.dd 
Debugdd 
(dd 
$"dd !
Exception is: dd! /
{dd/ 0
	exceptiondd0 9
}dd9 :
"dd: ;
)dd; <
;dd< =
HttpStatusCodeee 
httpStatusCodeee )
=ee* +
(ee, -
HttpStatusCodeee- ;
)ee; <
	exceptionee< E
.eeE F
	ErrorCodeeeF O
;eeO P
BasicResponseff 
basicResponseff '
=ff( )
newff* -
BasicResponseff. ;
(ff; <
)ff< =
{gg 
Datahh 
=hh 
nullhh 
,hh 
Successii 
=ii 
falseii 
,ii  
ErrorMessagejj 
=jj 
thisjj #
.jj# $

_localizerjj$ .
.jj. /
	GetStringjj/ 8
(jj8 9
	exceptionjj9 B
.jjB C
MessagejjC J
,jjJ K
	exceptionjjL U
.jjU V
	argumentsjjV _
==jj` b
nulljjc g
?jjh i
newjjj m
objectjjn t
[jjt u
$numjju v
]jjv w
:jjx y
	exception	jjz É
.
jjÉ Ñ
	arguments
jjÑ ç
)
jjç é
}kk 
;kk 
stringmm 
resultmm 
;mm 
ifnn 
(nn 
contextnn 
.nn 
Requestnn 
.nn  
ContentTypenn  +
.nn+ ,
Containsnn, 4
(nn4 5
ContentTypesnn5 A
.nnA B
JsonnnB F
)nnF G
)nnG H
{oo 
resultpp 
=pp  
JsonSerializerHelperpp -
.pp- .
	Serializepp. 7
(pp7 8
basicResponsepp8 E
)ppE F
;ppF G
}qq 
elserr 
{ss 
resulttt 
=tt 

XmlHelperstt #
.tt# $
	Serializett$ -
(tt- .
basicResponsett. ;
,tt; <

XmlHelperstt= G
.ttG H"
GetResponsesKnownTypesttH ^
(tt^ _
)tt_ `
)tt` a
;tta b
}uu 
contextww 
.ww 
Responseww 
.ww 
ContentTypeww (
=ww) *
contextww+ 2
.ww2 3
Requestww3 :
.ww: ;
ContentTypeww; F
;wwF G
contextxx 
.xx 
Responsexx 
.xx 

StatusCodexx '
=xx( )
(xx* +
intxx+ .
)xx. /
httpStatusCodexx/ =
;xx= >
awaityy 
contextyy 
.yy 
Responseyy "
.yy" #

WriteAsyncyy# -
(yy- .
resultyy. 4
)yy4 5
;yy5 6
}zz 	
}|| 
}}} ∞9
RD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Middlewares\JwtAuthenticationMiddleware.cs
	namespace 	
LevelsUpAPI
 
. 
Middlewares !
{ 
public 

class '
JwtAuthenticationMiddleware ,
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public '
JwtAuthenticationMiddleware *
(* +
RequestDelegate+ :
next; ?
)? @
{ 	
this   
.   
_next   
=   
next   
;   
}!! 	
public)) 
async)) 
Task)) 
Invoke))  
())  !
HttpContext))! ,
context))- 4
,))4 5#
JwtSecurityTokenHandler))6 M#
jwtSecurityTokenHandler))N e
)))e f
{** 	
string++ 
accessToken++ 
=++  
context++! (
.++( )
Request++) 0
.++0 1
Headers++1 8
[++8 9
	Constants++9 B
.++B C
AuthorizationHeader++C V
]++V W
;++W X
if,, 
(,, 
!,, 
string,, 
.,, 
IsNullOrEmpty,, %
(,,% &
accessToken,,& 1
),,1 2
),,2 3
{-- 
accessToken.. 
=.. 
accessToken.. )
...) *
Replace..* 1
(..1 2
	Constants..2 ;
...; <
	TokenType..< E
,..E F
string..G M
...M N
Empty..N S
,..S T
StringComparison..U e
...e f
OrdinalIgnoreCase..f w
)..w x
...x y
Trim..y }
(..} ~
)..~ 
;	.. Ä
SecurityToken// 

validToken// (
;//( )
try11 
{22 #
jwtSecurityTokenHandler33 +
.33+ ,
ValidateToken33, 9
(339 :
accessToken33: E
,33E F+
TokenValidationParameterHelpers33G f
.33f g)
GetTokenValidationParameters	33g É
(
33É Ñ
)
33Ñ Ö
,
33Ö Ü
out
33á ä

validToken
33ã ï
)
33ï ñ
;
33ñ ó
}44 
catch55 
(55 )
SecurityTokenExpiredException55 4
)554 5
{66 
throw77 
new77 
LevelsUpException77 /
(77/ 0
ErrorMessages770 =
.77= >
TOKEN_IS_EXPIRED77> N
,77N O

ErrorCodes77P Z
.77Z [
Unauthorized77[ g
)77g h
;77h i
}88 
catch99 
(99 
ArgumentException99 (
)99( )
{:: 
throw;; 
new;; 
LevelsUpException;; /
(;;/ 0
ErrorMessages;;0 =
.;;= >
TOKEN_IS_NOT_VALID;;> P
,;;P Q

ErrorCodes;;R \
.;;\ ]
Unauthorized;;] i
);;i j
;;;j k
}<< 
JwtSecurityToken>>  
validJwtToken>>! .
=>>/ 0

validToken>>1 ;
as>>< >
JwtSecurityToken>>? O
;>>O P
if@@ 
(@@ 
validJwtToken@@ !
==@@" $
null@@% )
)@@) *
{AA 
throwBB 
newBB 
LevelsUpExceptionBB /
(BB/ 0
ErrorMessagesBB0 =
.BB= >
UNAUTHORIZED_ERRORBB> P
,BBP Q

ErrorCodesBBR \
.BB\ ]
UnauthorizedBB] i
)BBi j
;BBj k
}CC 
ifEE 
(EE 
!EE 
validJwtTokenEE "
.EE" #
HeaderEE# )
.EE) *
AlgEE* -
.EE- .
EqualsEE. 4
(EE4 5
SecurityAlgorithmsEE5 G
.EEG H

HmacSha256EEH R
,EER S
StringComparisonEET d
.EEd e
OrdinalIgnoreCaseEEe v
)EEv w
)EEw x
{FF 
throwGG 
newGG 
LevelsUpExceptionGG /
(GG/ 0
ErrorMessagesGG0 =
.GG= >
UNAUTHORIZED_ERRORGG> P
,GGP Q

ErrorCodesGGR \
.GG\ ]
UnauthorizedGG] i
)GGi j
;GGj k
}HH 
contextJJ 
.JJ 
UserJJ 
=JJ 
thisJJ #
.JJ# $
_GetClaimsPrincipalJJ$ 7
(JJ7 8
validJwtTokenJJ8 E
)JJE F
;JJF G
}KK 
awaitMM 
thisMM 
.MM 
_nextMM 
(MM 
contextMM $
)MM$ %
;MM% &
}NN 	
privateWW 
ClaimsPrincipalWW 
_GetClaimsPrincipalWW  3
(WW3 4
JwtSecurityTokenWW4 D
validJwtTokenWWE R
)WWR S
{XX 	
ListYY 
<YY 
ClaimYY 
>YY 
claimsYY 
=YY  
newYY! $
ListYY% )
<YY) *
ClaimYY* /
>YY/ 0
{ZZ 
new[[ 
Claim[[ 
([[ 

ClaimTypes[[ $
.[[$ %
Name[[% )
,[[) *
validJwtToken[[+ 8
.[[8 9
Claims[[9 ?
.[[? @
GetClaimValue[[@ M
([[M N
EnumHelpers[[N Y
.[[Y Z
GetDescription[[Z h
([[h i 
MiddlewareClaimTypes[[i }
.[[} ~
Name	[[~ Ç
)
[[Ç É
)
[[É Ñ
)
[[Ñ Ö
,
[[Ö Ü
new\\ 
Claim\\ 
(\\ 

ClaimTypes\\ $
.\\$ %
Role\\% )
,\\) *
validJwtToken\\+ 8
.\\8 9
Claims\\9 ?
.\\? @
GetClaimValue\\@ M
(\\M N
EnumHelpers\\N Y
.\\Y Z
GetDescription\\Z h
(\\h i 
MiddlewareClaimTypes\\i }
.\\} ~
Role	\\~ Ç
)
\\Ç É
)
\\É Ñ
)
\\Ñ Ö
,
\\Ö Ü
new]] 
Claim]] 
(]] 

ClaimTypes]] $
.]]$ %
Email]]% *
,]]* +
validJwtToken]], 9
.]]9 :
Claims]]: @
.]]@ A
GetClaimValue]]A N
(]]N O
EnumHelpers]]O Z
.]]Z [
GetDescription]][ i
(]]i j 
MiddlewareClaimTypes]]j ~
.]]~ 
Email	]] Ñ
)
]]Ñ Ö
)
]]Ö Ü
)
]]Ü á
,
]]á à
new^^ 
Claim^^ 
(^^ 

ClaimTypes^^ $
.^^$ %
NameIdentifier^^% 3
,^^3 4
validJwtToken^^5 B
.^^B C
Claims^^C I
.^^I J
GetClaimValue^^J W
(^^W X
EnumHelpers^^X c
.^^c d
GetDescription^^d r
(^^r s!
MiddlewareClaimTypes	^^s á
.
^^á à
UserId
^^à é
)
^^é è
)
^^è ê
)
^^ê ë
}__ 
;__ 
ClaimsIdentityaa 
identityaa #
=aa$ %
newaa& )
ClaimsIdentityaa* 8
(aa8 9
claimsaa9 ?
,aa? @
	ConstantsaaA J
.aaJ K
	TokenTypeaaK T
)aaT U
;aaU V
returnbb 
newbb 
ClaimsPrincipalbb &
(bb& '
identitybb' /
)bb/ 0
;bb0 1
}cc 	
}dd 
}ee Èr
WD:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Middlewares\RequestResponseLoggingMiddleware.cs
	namespace

 	
LevelsUpAPI


 
.

 
Middlewares

 !
{ 
public 

class ,
 RequestResponseLoggingMiddleware 1
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly )
RecyclableMemoryStreamManager 6*
_recyclableMemoryStreamManager7 U
;U V
public%% ,
 RequestResponseLoggingMiddleware%% /
(%%/ 0
RequestDelegate%%0 ?
next%%@ D
,%%D E
ILogger%%F M
logger%%N T
)%%T U
{&& 	
this'' 
.'' 
_next'' 
='' 
next'' 
;'' 
this(( 
.(( 
_logger(( 
=(( 
logger(( !
;((! "
this)) 
.)) *
_recyclableMemoryStreamManager)) /
=))0 1
new))2 5)
RecyclableMemoryStreamManager))6 S
())S T
)))T U
;))U V
}** 	
public00 
async00 
Task00 
Invoke00  
(00  !
HttpContext00! ,
httpContext00- 8
)008 9
{11 	
await33 
this33 
.33 
_LogRequest33 "
(33" #
httpContext33# .
)33. /
;33/ 0
await66 
this66 
.66 
_LogResponse66 #
(66# $
httpContext66$ /
)66/ 0
;660 1
}77 	
private@@ 
async@@ 
Task@@ 
_LogRequest@@ &
(@@& '
HttpContext@@' 2
context@@3 :
)@@: ;
{AA 	
contextBB 
.BB 
RequestBB 
.BB 
EnableBufferingBB +
(BB+ ,
)BB, -
;BB- .
awaitCC 
usingCC 
MemoryStreamCC $
requestStreamCC% 2
=CC3 4
thisCC5 9
.CC9 :*
_recyclableMemoryStreamManagerCC: X
.CCX Y
	GetStreamCCY b
(CCb c
)CCc d
;CCd e
awaitDD 
contextDD 
.DD 
RequestDD !
.DD! "
BodyDD" &
.DD& '
CopyToAsyncDD' 2
(DD2 3
requestStreamDD3 @
)DD@ A
;DDA B
stringEE 
messageEE 
=EE 
thisEE !
.EE! ",
 GetFormattedStringRequestMessageEE" B
(EEB C
contextEEC J
,EEJ K
requestStreamEEL Y
)EEY Z
;EEZ [
thisFF 
.FF 
_loggerFF 
.FF 
DebugFF 
(FF 
messageFF &
)FF& '
;FF' (
contextGG 
.GG 
RequestGG 
.GG 
BodyGG  
.GG  !
PositionGG! )
=GG* +
$numGG, -
;GG- .
}HH 	
privateQQ 
asyncQQ 
TaskQQ 
_LogResponseQQ '
(QQ' (
HttpContextQQ( 3
contextQQ4 ;
)QQ; <
{RR 	
StreamSS 
originalBodyStreamSS %
=SS& '
contextSS( /
.SS/ 0
ResponseSS0 8
.SS8 9
BodySS9 =
;SS= >
awaitTT 
usingTT 
MemoryStreamTT $
responseBodyTT% 1
=TT2 3
thisTT4 8
.TT8 9*
_recyclableMemoryStreamManagerTT9 W
.TTW X
	GetStreamTTX a
(TTa b
)TTb c
;TTc d
contextUU 
.UU 
ResponseUU 
.UU 
BodyUU !
=UU" #
responseBodyUU$ 0
;UU0 1
awaitXX 
thisXX 
.XX 
_nextXX 
(XX 
contextXX $
)XX$ %
;XX% &
contextZZ 
.ZZ 
ResponseZZ 
.ZZ 
BodyZZ !
.ZZ! "
SeekZZ" &
(ZZ& '
$numZZ' (
,ZZ( )

SeekOriginZZ* 4
.ZZ4 5
BeginZZ5 :
)ZZ: ;
;ZZ; <
string[[ 
text[[ 
=[[ 
await[[ 
new[[  #
StreamReader[[$ 0
([[0 1
context[[1 8
.[[8 9
Response[[9 A
.[[A B
Body[[B F
)[[F G
.[[G H
ReadToEndAsync[[H V
([[V W
)[[W X
;[[X Y
context\\ 
.\\ 
Response\\ 
.\\ 
Body\\ !
.\\! "
Seek\\" &
(\\& '
$num\\' (
,\\( )

SeekOrigin\\* 4
.\\4 5
Begin\\5 :
)\\: ;
;\\; <
string]] 
message]] 
=]] 
this]] !
.]]! "-
!GetFormattedStringResponseMessage]]" C
(]]C D
context]]D K
,]]K L
text]]M Q
)]]Q R
;]]R S
this^^ 
.^^ 
_logger^^ 
.^^ 
Debug^^ 
(^^ 
message^^ &
)^^& '
;^^' (
await__ 
responseBody__ 
.__ 
CopyToAsync__ *
(__* +
originalBodyStream__+ =
)__= >
;__> ?
}`` 	
privatejj 
stringjj ,
 GetFormattedStringRequestMessagejj 7
(jj7 8
HttpContextjj8 C
contextjjD K
,jjK L
MemoryStreamjjM Y
requestStreamjjZ g
)jjg h
{kk 	
StringBuilderll 
stringBuilderll '
=ll( )
newll* -
StringBuilderll. ;
(ll; <
)ll< =
;ll= >
stringBuildernn 
.nn 
Appendnn  
(nn  !
$"nn! #&
Http Request Information: nn# =
{nn= >
Environmentnn> I
.nnI J
NewLinennJ Q
}nnQ R
"nnR S
)nnS T
;nnT U
ifpp 
(pp 
!pp 
stringpp 
.pp 
IsNullOrEmptypp %
(pp% &
contextpp& -
.pp- .
Requestpp. 5
.pp5 6
Schemepp6 <
)pp< =
)pp= >
{qq 
stringBuilderrr 
.rr 
Appendrr $
(rr$ %
$"rr% '
Schema:rr' .
{rr. /
contextrr/ 6
.rr6 7
Requestrr7 >
.rr> ?
Schemerr? E
}rrE F
"rrG H
)rrH I
;rrI J
}ss 
ifuu 
(uu 
contextuu 
.uu 
Requestuu 
.uu  
Hostuu  $
.uu$ %
HasValueuu% -
)uu- .
{vv 
stringBuilderww 
.ww 
Appendww $
(ww$ %
$"ww% '
Host: ww' -
{ww- .
contextww. 5
.ww5 6
Requestww6 =
.ww= >
Hostww> B
}wwB C
"wwD E
)wwE F
;wwF G
}xx 
ifzz 
(zz 
contextzz 
.zz 
Requestzz 
.zz  
Pathzz  $
.zz$ %
HasValuezz% -
)zz- .
{{{ 
stringBuilder|| 
.|| 
Append|| $
(||$ %
$"||% '
Path: ||' -
{||- .
context||. 5
.||5 6
Request||6 =
.||= >
Path||> B
}||B C
"||D E
)||E F
;||F G
}}} 
if 
( 
context 
. 
Request 
.  
QueryString  +
.+ ,
HasValue, 4
)4 5
{
ÄÄ 
stringBuilder
ÅÅ 
.
ÅÅ 
Append
ÅÅ $
(
ÅÅ$ %
$"
ÅÅ% '
Path: 
ÅÅ' -
{
ÅÅ- .
context
ÅÅ. 5
.
ÅÅ5 6
Request
ÅÅ6 =
.
ÅÅ= >
Path
ÅÅ> B
}
ÅÅB C
"
ÅÅD E
)
ÅÅE F
;
ÅÅF G
}
ÇÇ 
string
ÑÑ 
requestBody
ÑÑ 
=
ÑÑ  
this
ÑÑ! %
.
ÑÑ% &!
_ReadStreamInChunks
ÑÑ& 9
(
ÑÑ9 :
requestStream
ÑÑ: G
)
ÑÑG H
;
ÑÑH I
if
ÖÖ 
(
ÖÖ 
requestBody
ÖÖ 
.
ÖÖ 
IsNotNullOrEmpty
ÖÖ ,
(
ÖÖ, -
)
ÖÖ- .
)
ÖÖ. /
{
ÜÜ 
stringBuilder
áá 
.
áá 
Append
áá $
(
áá$ %
$"
áá% '
RequestBody: 
áá' 4
{
áá4 5
requestBody
áá5 @
}
áá@ A
"
ááA B
)
ááB C
;
ááC D
}
àà 
return
ää 
stringBuilder
ää  
.
ää  !
ToString
ää! )
(
ää) *
)
ää* +
;
ää+ ,
}
ãã 	
private
ïï 
string
ïï /
!GetFormattedStringResponseMessage
ïï 8
(
ïï8 9
HttpContext
ïï9 D
context
ïïE L
,
ïïL M
string
ïïN T
text
ïïU Y
)
ïïY Z
{
ññ 	
StringBuilder
óó 
stringBuilder
óó '
=
óó( )
new
óó* -
StringBuilder
óó. ;
(
óó; <
)
óó< =
;
óó= >
stringBuilder
ôô 
.
ôô 
Append
ôô  
(
ôô  !
$"
ôô! #)
Http Response Information: 
ôô# >
{
ôô> ?
Environment
ôô? J
.
ôôJ K
NewLine
ôôK R
}
ôôR S
"
ôôS T
)
ôôT U
;
ôôU V
if
õõ 
(
õõ 
!
õõ 
string
õõ 
.
õõ 
IsNullOrEmpty
õõ %
(
õõ% &
context
õõ& -
.
õõ- .
Request
õõ. 5
.
õõ5 6
Scheme
õõ6 <
)
õõ< =
)
õõ= >
{
úú 
stringBuilder
ùù 
.
ùù 
Append
ùù $
(
ùù$ %
$"
ùù% '
Schema:
ùù' .
{
ùù. /
context
ùù/ 6
.
ùù6 7
Request
ùù7 >
.
ùù> ?
Scheme
ùù? E
}
ùùE F
"
ùùG H
)
ùùH I
;
ùùI J
}
ûû 
if
†† 
(
†† 
context
†† 
.
†† 
Request
†† 
.
††  
Host
††  $
.
††$ %
HasValue
††% -
)
††- .
{
°° 
stringBuilder
¢¢ 
.
¢¢ 
Append
¢¢ $
(
¢¢$ %
$"
¢¢% '
Host: 
¢¢' -
{
¢¢- .
context
¢¢. 5
.
¢¢5 6
Request
¢¢6 =
.
¢¢= >
Host
¢¢> B
}
¢¢B C
"
¢¢D E
)
¢¢E F
;
¢¢F G
}
££ 
if
•• 
(
•• 
context
•• 
.
•• 
Request
•• 
.
••  
Path
••  $
.
••$ %
HasValue
••% -
)
••- .
{
¶¶ 
stringBuilder
ßß 
.
ßß 
Append
ßß $
(
ßß$ %
$"
ßß% '
Path: 
ßß' -
{
ßß- .
context
ßß. 5
.
ßß5 6
Request
ßß6 =
.
ßß= >
Path
ßß> B
}
ßßB C
"
ßßD E
)
ßßE F
;
ßßF G
}
®® 
if
™™ 
(
™™ 
context
™™ 
.
™™ 
Request
™™ 
.
™™  
QueryString
™™  +
.
™™+ ,
HasValue
™™, 4
)
™™4 5
{
´´ 
stringBuilder
¨¨ 
.
¨¨ 
Append
¨¨ $
(
¨¨$ %
$"
¨¨% '
Path: 
¨¨' -
{
¨¨- .
context
¨¨. 5
.
¨¨5 6
Request
¨¨6 =
.
¨¨= >
Path
¨¨> B
}
¨¨B C
"
¨¨D E
)
¨¨E F
;
¨¨F G
}
≠≠ 
if
ØØ 
(
ØØ 
text
ØØ 
.
ØØ 
IsNotNullOrEmpty
ØØ %
(
ØØ% &
)
ØØ& '
)
ØØ' (
{
∞∞ 
stringBuilder
±± 
.
±± 
Append
±± $
(
±±$ %
$"
±±% '
ResponseBody: 
±±' 5
{
±±5 6
text
±±6 :
}
±±: ;
"
±±; <
)
±±< =
;
±±= >
}
≤≤ 
return
¥¥ 
stringBuilder
¥¥  
.
¥¥  !
ToString
¥¥! )
(
¥¥) *
)
¥¥* +
;
¥¥+ ,
}
µµ 	
private
ææ 
string
ææ !
_ReadStreamInChunks
ææ *
(
ææ* +
Stream
ææ+ 1
stream
ææ2 8
)
ææ8 9
{
øø 	
const
¿¿ 
int
¿¿ #
readChunkBufferLength
¿¿ +
=
¿¿, -
$num
¿¿. 2
;
¿¿2 3
stream
¡¡ 
.
¡¡ 
Seek
¡¡ 
(
¡¡ 
$num
¡¡ 
,
¡¡ 

SeekOrigin
¡¡ %
.
¡¡% &
Begin
¡¡& +
)
¡¡+ ,
;
¡¡, -
using
¬¬ 
StringWriter
¬¬ 

textWriter
¬¬ )
=
¬¬* +
new
¬¬, /
StringWriter
¬¬0 <
(
¬¬< =
)
¬¬= >
;
¬¬> ?
using
√√ 
StreamReader
√√ 
reader
√√ %
=
√√& '
new
√√( +
StreamReader
√√, 8
(
√√8 9
stream
√√9 ?
)
√√? @
;
√√@ A
char
ƒƒ 
[
ƒƒ 
]
ƒƒ 
	readChunk
ƒƒ 
=
ƒƒ 
new
ƒƒ "
char
ƒƒ# '
[
ƒƒ' (#
readChunkBufferLength
ƒƒ( =
]
ƒƒ= >
;
ƒƒ> ?
int
≈≈ 
readChunkLength
≈≈ 
;
≈≈  
do
∆∆ 
{
«« 
readChunkLength
»» 
=
»»  !
reader
»»" (
.
»»( )
	ReadBlock
»») 2
(
»»2 3
	readChunk
»»3 <
,
»»< =
$num
»»> ?
,
»»? @#
readChunkBufferLength
»»A V
)
»»V W
;
»»W X

textWriter
…… 
.
…… 
Write
……  
(
……  !
	readChunk
……! *
,
……* +
$num
……, -
,
……- .
readChunkLength
……/ >
)
……> ?
;
……? @
}
   
while
ÀÀ 
(
ÀÀ 
readChunkLength
ÀÀ "
>
ÀÀ# $
$num
ÀÀ% &
)
ÀÀ& '
;
ÀÀ' (
return
ÕÕ 

textWriter
ÕÕ 
.
ÕÕ 
ToString
ÕÕ &
(
ÕÕ& '
)
ÕÕ' (
.
ÕÕ( )
Trim
ÕÕ) -
(
ÕÕ- .
)
ÕÕ. /
;
ÕÕ/ 0
}
ŒŒ 	
}
œœ 
}–– ü

2D:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Program.cs
	namespace 	
LevelsUpAPI
 
{ 
public		 

static		 
class		 
Program		 
{

 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
}   Ê
:D:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\SharedResources.cs
	namespace 	
LevelsUpAPI
 
{ 
public 

class 
SharedResources  
{ 
} 
}		 ”;
2D:\DotNetCore\DotNetCoreAPI\LevelsUpAPI\Startup.cs
	namespace 	
LevelsUpAPI
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public&& 
static&& 
IConfiguration&& $
Configuration&&% 2
{&&3 4
get&&5 8
;&&8 9
private&&: A
set&&B E
;&&E F
}&&G H
public,, 
void,, 
ConfigureServices,, %
(,,% &
IServiceCollection,,& 8
services,,9 A
),,A B
{-- 	
if.. 
(.. 
!.. 
string.. 
... 
IsNullOrEmpty.. %
(..% &
Configuration..& 3
...3 4,
 GetLinuxServerApplicationAddress..4 T
(..T U
)..U V
)..V W
)..W X
{// 
services11 
.11  
ConfigureLinuxServer11 -
(11- .
)11. /
;11/ 0
}22 
services55 
.55 %
ConfigureIISServerOptions55 .
(55. /
)55/ 0
;550 1
services88 
.88 (
ConfigureAPIBehaviourOptions88 1
(881 2
)882 3
;883 4
services;; 
.;;  
AddCorsConfiguration;; )
(;;) *
);;* +
;;;+ ,
services>> 
.>> #
AddSwaggerConfiguration>> ,
(>>, -
)>>- .
;>>. /
servicesAA 
.AA 
AddDBContextAA !
(AA! "
)AA" #
;AA# $
servicesDD 
.DD 
AddIdentityDD  
(DD  !
)DD! "
;DD" #
servicesGG 
.GG %
AddAuthenticationServicesGG .
(GG. /
)GG/ 0
;GG0 1
servicesJJ 
.JJ $
AddAuthorizationServicesJJ -
(JJ- .
)JJ. /
;JJ/ 0
servicesMM 
.MM "
AddApplicationSettingsMM +
(MM+ ,
)MM, -
;MM- .
servicesPP 
.PP 
AddNLogLoggingPP #
(PP# $
)PP$ %
;PP% &
servicesSS 
.SS 
AddHttpContextSS #
(SS# $
)SS$ %
;SS% &
servicesVV 
.VV 
AddAutoMapperVV "
(VV" #
)VV# $
;VV$ %
servicesYY 
.YY 
AddComponentsYY "
(YY" #
)YY# $
;YY$ %
services\\ 
.\\ 
AddRepositories\\ $
(\\$ %
)\\% &
;\\& '
services__ 
.__ 
AddServices__  
(__  !
)__! "
;__" #
servicesbb 
.bb !
AddBusinessOperationsbb *
(bb* +
)bb+ ,
;bb, -
servicesee 
.ee 
ConfigureHangfireee &
(ee& '
)ee' (
;ee( )
serviceshh 
.hh 
AddApiControllerhh %
(hh% &
)hh& '
;hh' (
serviceskk 
.kk &
AddApplicationLocalizationkk /
(kk/ 0
)kk0 1
;kk1 2
}ll 	
publicss 
voidss 
	Configuress 
(ss 
IApplicationBuilderss 1
applicationss2 =
,ss= >
IWebHostEnvironmentss? R
environmentssS ^
)ss^ _
{tt 	
ifvv 
(vv 
!vv 
stringvv 
.vv 
IsNullOrEmptyvv %
(vv% &
Configurationvv& 3
.vv3 4,
 GetLinuxServerApplicationAddressvv4 T
(vvT U
)vvU V
)vvV W
)vvW X
{ww 
applicationxx 
.xx 
UseForwardedHeadersxx /
(xx/ 0
newxx0 3#
ForwardedHeadersOptionsxx4 K
(xxK L
)xxL M
{yy 
ForwardedHeaderszz $
=zz% &
ForwardedHeaderszz' 7
.zz7 8
XForwardedForzz8 E
|zzF G
ForwardedHeaderszzH X
.zzX Y
XForwardedProtozzY h
}{{ 
){{ 
;{{ 
}|| 
if~~ 
(~~ 
environment~~ 
.~~ 
IsDevelopment~~ )
(~~) *
)~~* +
)~~+ ,
{ 
application
ÄÄ 
.
ÄÄ '
UseDeveloperExceptionPage
ÄÄ 5
(
ÄÄ5 6
)
ÄÄ6 7
;
ÄÄ7 8
}
ÅÅ 
application
ÑÑ 
.
ÑÑ 
UseCors
ÑÑ 
(
ÑÑ  
	Constants
ÑÑ  )
.
ÑÑ) *

CorsPolicy
ÑÑ* 4
)
ÑÑ4 5
;
ÑÑ5 6
application
áá 
.
áá 

UseSwagger
áá "
(
áá" #
)
áá# $
;
áá$ %
application
ää 
.
ää 

UseRouting
ää "
(
ää" #
)
ää# $
;
ää$ %
application
çç 
.
çç $
UseRequestLocalization
çç .
(
çç. /
LanguageHelpers
çç/ >
.
çç> ?'
GetSupportedLocalizations
çç? X
(
ççX Y
)
ççY Z
)
ççZ [
;
çç[ \
application
êê 
.
êê ,
UseLevelsUpExceptionMiddleware
êê 6
(
êê6 7
)
êê7 8
;
êê8 9
application
ìì 
.
ìì 1
#UseLevelsUpAuthenticationMiddleware
ìì ;
(
ìì; <
)
ìì< =
;
ìì= >
application
ññ 
.
ññ 
UseAuthorization
ññ (
(
ññ( )
)
ññ) *
;
ññ* +
application
ôô 
.
ôô 9
+UseLevelsUpResponseRequestLoggingMiddleware
ôô C
(
ôôC D
)
ôôD E
;
ôôE F
ServiceHelpers
úú 
.
úú 
	Configure
úú $
(
úú$ %
application
úú% 0
.
úú0 1!
ApplicationServices
úú1 D
)
úúD E
;
úúE F
application
üü 
.
üü 
UseEndpoints
üü $
(
üü$ %
	endpoints
üü% .
=>
üü/ 1
{
†† 
	endpoints
°° 
.
°° 
MapControllers
°° (
(
°°( )
)
°°) *
;
°°* +
	endpoints
§§ 
.
§§ "
MapHangfireDashboard
§§ .
(
§§. /
new
§§/ 2
DashboardOptions
§§3 C
(
§§C D
)
§§D E
{
•• 
Authorization
¶¶ !
=
¶¶" #
new
¶¶$ '
[
¶¶' (
]
¶¶( )
{
¶¶* +
new
¶¶, /)
HangfireAuthorizationFilter
¶¶0 K
(
¶¶K L
)
¶¶L M
}
¶¶N O
}
ßß 
,
ßß 

JobStorage
®® 
.
®® 
Current
®® "
)
®®" #
;
®®# $
}
©© 
)
©© 
;
©© 
application
¨¨ 
.
¨¨ 
Run
¨¨ 
(
¨¨ 
(
¨¨ 
context
¨¨ $
)
¨¨$ %
=>
¨¨& (
{
≠≠ 
context
ÆÆ 
.
ÆÆ 
Response
ÆÆ  
.
ÆÆ  !
Redirect
ÆÆ! )
(
ÆÆ) *
	Constants
ÆÆ* 3
.
ÆÆ3 4

SwaggerUrl
ÆÆ4 >
)
ÆÆ> ?
;
ÆÆ? @
return
ØØ 
Task
ØØ 
.
ØØ 
CompletedTask
ØØ )
;
ØØ) *
}
∞∞ 
)
∞∞ 
;
∞∞ 
}
±± 	
}
≤≤ 
}≥≥ 