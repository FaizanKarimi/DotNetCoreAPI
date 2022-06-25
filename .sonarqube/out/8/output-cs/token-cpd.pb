à
WD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Implementations\BaseBusinessOperation.cs
	namespace 	
BusinessOperations
 
. 
Implementations ,
{		 
public 

abstract 
class !
BaseBusinessOperation /
{ 
private 
IServiceProvider  
_serviceProvider! 1
{ 	
get 
{ 
return 
ServiceHelpers %
.% &
GetServiceProvider& 8
(8 9
)9 :
;: ;
} 
} 	
	protected   
readonly   
ILogger   "
logger  # )
;  ) *
	protected%% 
readonly%%  
IHttpContextAccessor%% /
httpContextAccessor%%0 C
;%%C D
	protected** 
readonly** 
IMapper** "
mapper**# )
;**) *
	protected// !
BaseBusinessOperation// '
(//' (
)//( )
{00 	
if11 
(11 
this11 
.11 
logger11 
==11 
null11 #
)11# $
{22 
this33 
.33 
logger33 
=33 
this33 "
.33" #
_serviceProvider33# 3
.333 4
GetRequiredService334 F
<33F G
ILogger33G N
>33N O
(33O P
)33P Q
;33Q R
}44 
if66 
(66 
this66 
.66 
httpContextAccessor66 (
==66) +
null66, 0
)660 1
{77 
this88 
.88 
httpContextAccessor88 (
=88) *
ServiceHelpers88+ 9
.889 :"
GetHttpContextAccessor88: P
(88P Q
)88Q R
;88R S
}99 
if;; 
(;; 
this;; 
.;; 
mapper;; 
==;; 
null;; #
);;# $
{<< 
this== 
.== 
mapper== 
=== 
ServiceHelpers== ,
.==, -
	GetMapper==- 6
(==6 7
)==7 8
;==8 9
}>> 
}?? 	
	protectedEE !
BaseBusinessOperationEE '
(EE' (
IMapperEE( /
mapperEE0 6
)EE6 7
:EE8 9
thisEE: >
(EE> ?
)EE? @
{FF 	
thisGG 
.GG 
mapperGG 
=GG 
mapperGG  
;GG  !
}HH 	
}II 
}JJ ã
OD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Implementations\BOSubCategory.cs
	namespace 	
BusinessOperations
 
. 
Implementations ,
{		 
public 

class 
BOSubCategory 
:  !
BaseBusinessOperation! 6
,6 7
IBOSubCategory8 F
{ 
private 
readonly 
ISubCategoryService ,
_subCategoryService- @
;@ A
public 
BOSubCategory 
( 
ISubCategoryService 0
subCategoryService1 C
)C D
:E F
baseG K
(K L
)L M
{ 	
this 
. 
_subCategoryService $
=% &
subCategoryService' 9
;9 :
} 	
public%% ,
 UserSubCategoryDetailInformation%% /
Get%%0 3
(%%3 4
int%%4 7
id%%8 :
)%%: ;
{&& 	
this'' 
.'' 
logger'' 
.'' 
Debug'' 
('' 
$str'' \
)''\ ]
;''] ^
SubCategory)) 
subCategory)) #
=))$ %
this))& *
.))* +
_subCategoryService))+ >
.))> ?
Get))? B
())B C
id))C E
)))E F
;))F G
if** 
(** 
subCategory** 
==** 
null** #
)**# $
{++ 
throw,, 
new,, 
LevelsUpException,, +
(,,+ ,
ErrorMessages,,, 9
.,,9 :#
SUB_CATEGORY_NOT_EXISTS,,: Q
,,,Q R

ErrorCodes,,S ]
.,,] ^
NotFound,,^ f
,,,f g
id,,h j
),,j k
;,,k l
}-- ,
 UserSubCategoryDetailInformation// ,,
 userSubCategoryDetailInformation//- M
=//N O
this//P T
.//T U
mapper//U [
.//[ \
Map//\ _
<//_ `-
 UserSubCategoryDetailInformation	//` Ä
>
//Ä Å
(
//Å Ç
subCategory
//Ç ç
)
//ç é
;
//é è
this11 
.11 
logger11 
.11 
Debug11 
(11 
$str11 Z
)11Z [
;11[ \
return33 ,
 userSubCategoryDetailInformation33 3
;333 4
}44 	
}55 
}66 Ô∆
HD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Implementations\BOUser.cs
	namespace 	
BusinessOperations
 
. 
Implementations ,
{ 
public 

class 
BOUser 
: !
BaseBusinessOperation /
,/ 0
IBOUser1 8
{   
private%% 
readonly%% 
IUserProfileService%% ,
_userProfileService%%- @
;%%@ A
private** 
readonly** 
ITwillioService** (
_twillioService**) 8
;**8 9
private// 
readonly// 
IUserService// %
_userService//& 2
;//2 3
private44 
readonly44 
IEmailService44 &
_emailService44' 4
;444 5
private99 
readonly99 
UserManager99 $
<99$ %
LevelsUpUser99% 1
>991 2
_userManager993 ?
;99? @
private>> 
readonly>> 
SignInManager>> &
<>>& '
LevelsUpUser>>' 3
>>>3 4
_signInManager>>5 C
;>>C D
privateCC 
readonlyCC  
JsonWebTokenSettingsCC - 
_jsonWebTokenSettingCC. B
;CCB C
privateHH 
readonlyHH #
JwtSecurityTokenHandlerHH 0$
_jwtSecurityTokenHandlerHH1 I
;HHI J
publicWW 
BOUserWW 
(WW 
IUserProfileServiceWW )
userProfileServiceWW* <
,WW< =
ITwillioServiceWW> M
twillioServiceWWN \
,WW\ ]
IUserServiceWW^ j
userServiceWWk v
,WWv w
IEmailService	WWx Ö
emailService
WWÜ í
,
WWí ì
UserManager
WWî ü
<
WWü †
LevelsUpUser
WW† ¨
>
WW¨ ≠
userManager
WWÆ π
,
WWπ ∫
SignInManagerXX 
<XX 
LevelsUpUserXX &
>XX& '
signInManagerXX( 5
,XX5 6 
JsonWebTokenSettingsXX7 K
jsonWebTokenSettingXXL _
,XX_ `#
JwtSecurityTokenHandlerXXa x$
jwtSecurityTokenHandler	XXy ê
)
XXê ë
:
XXí ì
base
XXî ò
(
XXò ô
)
XXô ö
{YY 	
thisZZ 
.ZZ 
_userProfileServiceZZ $
=ZZ% &
userProfileServiceZZ' 9
;ZZ9 :
this[[ 
.[[ 
_twillioService[[  
=[[! "
twillioService[[# 1
;[[1 2
this\\ 
.\\ 
_userService\\ 
=\\ 
userService\\  +
;\\+ ,
this]] 
.]] 
_emailService]] 
=]]  
emailService]]! -
;]]- .
this^^ 
.^^ 
_userManager^^ 
=^^ 
userManager^^  +
;^^+ ,
this__ 
.__ 
_signInManager__ 
=__  !
signInManager__" /
;__/ 0
this`` 
.``  
_jsonWebTokenSetting`` %
=``& '
jsonWebTokenSetting``( ;
;``; <
thisaa 
.aa $
_jwtSecurityTokenHandleraa )
=aa* +#
jwtSecurityTokenHandleraa, C
;aaC D
}bb 	
publicmm 
asyncmm 
Taskmm 
<mm 
boolmm 
>mm 
RegisterUserAsyncmm  1
(mm1 2
RegisterRequestmm2 A
registerRequestmmB Q
,mmQ R
	UserRolesmmS \
userRolemm] e
)mme f
{nn 	
booloo 
IsRegisteredoo 
=oo 
falseoo  %
;oo% &
thisqq 
.qq 
loggerqq 
.qq 
Debugqq 
(qq 
$"qq  -
!Checking the user with the email qq  A
{qqA B
registerRequestqqB Q
.qqQ R
EmailqqR W
}qqW X
 in the systemqqX f
"qqf g
)qqg h
;qqh i
LevelsUpUserss 
dbUserss 
=ss  !
awaitss" '
thisss( ,
.ss, -
_userManagerss- 9
.ss9 :
FindByEmailAsyncss: J
(ssJ K
registerRequestssK Z
.ssZ [
Emailss[ `
)ss` a
;ssa b
iftt 
(tt 
dbUsertt 
!=tt 
nulltt 
)tt 
{uu 
throwvv 
newvv 
LevelsUpExceptionvv +
(vv+ ,
ErrorMessagesvv, 9
.vv9 :
USER_ALREADY_EXISTvv: L
,vvL M

ErrorCodesvvN X
.vvX Y
NotFoundvvY a
)vva b
;vvb c
}ww 
thisyy 
.yy 
loggeryy 
.yy 
Debugyy 
(yy 
$"yy  8
,User not exist in the system with the email yy  L
{yyL M
registerRequestyyM \
.yy\ ]
Emailyy] b
}yyb c
"yyc d
)yyd e
;yye f
LevelsUpUser{{ 
user{{ 
={{ 
this{{  $
.{{$ %
mapper{{% +
.{{+ ,
Map{{, /
<{{/ 0
LevelsUpUser{{0 <
>{{< =
({{= >
registerRequest{{> M
){{M N
;{{N O
this}} 
.}} 
logger}} 
.}} 
Debug}} 
(}} 
$str}} B
)}}B C
;}}C D
IdentityResult~~ 
result~~ !
=~~" #
await~~$ )
this~~* .
.~~. /
_userManager~~/ ;
.~~; <
CreateAsync~~< G
(~~G H
user~~H L
,~~L M
registerRequest~~N ]
.~~] ^
Password~~^ f
)~~f g
;~~g h
if 
( 
! 
result 
. 
	Succeeded !
)! "
{
ÄÄ 
throw
ÅÅ 
new
ÅÅ 
LevelsUpException
ÅÅ +
(
ÅÅ+ ,
ErrorMessages
ÅÅ, 9
.
ÅÅ9 :
USER_NOT_CREATED
ÅÅ: J
,
ÅÅJ K

ErrorCodes
ÅÅL V
.
ÅÅV W
Conflict
ÅÅW _
)
ÅÅ_ `
;
ÅÅ` a
}
ÇÇ 
this
ÑÑ 
.
ÑÑ 
logger
ÑÑ 
.
ÑÑ 
Debug
ÑÑ 
(
ÑÑ 
$str
ÑÑ 4
)
ÑÑ4 5
;
ÑÑ5 6
IdentityResult
ÖÖ 

roleResult
ÖÖ %
=
ÖÖ& '
await
ÖÖ( -
this
ÖÖ. 2
.
ÖÖ2 3
_userManager
ÖÖ3 ?
.
ÖÖ? @
AddToRoleAsync
ÖÖ@ N
(
ÖÖN O
user
ÖÖO S
,
ÖÖS T
userRole
ÖÖU ]
.
ÖÖ] ^
ToString
ÖÖ^ f
(
ÖÖf g
)
ÖÖg h
)
ÖÖh i
;
ÖÖi j
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 

roleResult
ÜÜ 
.
ÜÜ 
	Succeeded
ÜÜ %
)
ÜÜ% &
{
áá 
throw
àà 
new
àà 
LevelsUpException
àà +
(
àà+ ,
ErrorMessages
àà, 9
.
àà9 :$
USER_NOT_ADDED_TO_ROLE
àà: P
,
ààP Q

ErrorCodes
ààR \
.
àà\ ]
Conflict
àà] e
)
ààe f
;
ààf g
}
ââ 
LevelsUpUser
ãã 
newUser
ãã  
=
ãã! "
await
ãã# (
this
ãã) -
.
ãã- .
_userManager
ãã. :
.
ãã: ;
FindByEmailAsync
ãã; K
(
ããK L
registerRequest
ããL [
.
ãã[ \
Email
ãã\ a
)
ããa b
;
ããb c
this
åå 
.
åå 
logger
åå 
.
åå 
Debug
åå 
(
åå 
$str
åå G
)
ååG H
;
ååH I
UserProfile
éé 
userProfile
éé #
=
éé$ %
this
éé& *
.
éé* +
mapper
éé+ 1
.
éé1 2
Map
éé2 5
<
éé5 6
UserProfile
éé6 A
>
ééA B
(
ééB C
registerRequest
ééC R
)
ééR S
;
ééS T
userProfile
èè 
.
èè 
UserId
èè 
=
èè  
newUser
èè! (
.
èè( )
Id
èè) +
;
èè+ ,
this
ëë 
.
ëë 
logger
ëë 
.
ëë 
Debug
ëë 
(
ëë 
$str
ëë =
)
ëë= >
;
ëë> ?
string
ìì 
code
ìì 
=
ìì 
CommonHelpers
ìì '
.
ìì' (!
GenrateRandomNumber
ìì( ;
(
ìì; <
)
ìì< =
;
ìì= >
this
ïï 
.
ïï 
logger
ïï 
.
ïï 
Debug
ïï 
(
ïï 
$"
ïï  I
;Sending the verification code to registered mobile number: 
ïï  [
{
ïï[ \
code
ïï\ `
}
ïï` a
"
ïïa b
)
ïïb c
;
ïïc d
bool
óó 
IsMessageSend
óó 
=
óó  
this
óó! %
.
óó% &
_twillioService
óó& 5
.
óó5 6,
SendAccountVerificationMessage
óó6 T
(
óóT U
userProfile
óóU `
.
óó` a
GetMobileNumber
óóa p
(
óóp q
)
óóq r
,
óór s
code
óót x
)
óóx y
;
óóy z
this
ôô 
.
ôô 
logger
ôô 
.
ôô 
Debug
ôô 
(
ôô 
$"
ôô  >
0Sending the verification code to email address: 
ôô  P
{
ôôP Q
userProfile
ôôQ \
.
ôô\ ]
EmailAddress
ôô] i
}
ôôi j
"
ôôj k
)
ôôk l
;
ôôl m
this
õõ 
.
õõ 
_emailService
õõ 
.
õõ *
SendAccountVerificationEmail
õõ ;
(
õõ; <
userProfile
õõ< G
.
õõG H
EmailAddress
õõH T
,
õõT U
userProfile
õõV a
.
õõa b
Name
õõb f
,
õõf g
code
õõh l
)
õõl m
;
õõm n
if
ùù 
(
ùù 
IsMessageSend
ùù 
)
ùù 
{
ûû 
this
üü 
.
üü 
logger
üü 
.
üü 
Debug
üü !
(
üü! "
$str
üü" O
)
üüO P
;
üüP Q
userProfile
°° 
.
°° 
VerificationCode
°° ,
=
°°- .
code
°°/ 3
;
°°3 4
IsRegistered
££ 
=
££ 
this
££ #
.
££# $
_userService
££$ 0
.
££0 1
RegisterUser
££1 =
(
££= >
userProfile
££> I
,
££I J
null
££K O
,
££O P
null
££Q U
)
££U V
;
££V W
}
§§ 
this
¶¶ 
.
¶¶ 
logger
¶¶ 
.
¶¶ 
Debug
¶¶ 
(
¶¶ 
$str
¶¶ A
)
¶¶A B
;
¶¶B C
return
®® 
IsRegistered
®® 
;
®®  
}
©© 	
public
≥≥ 
async
≥≥ 
Task
≥≥ 
<
≥≥ 
bool
≥≥ 
>
≥≥ 
VerifyAccount
≥≥  -
(
≥≥- ."
VerifyAccountRequest
≥≥. B"
verifyAccountRequest
≥≥C W
)
≥≥W X
{
¥¥ 	
this
µµ 
.
µµ 
logger
µµ 
.
µµ 
Debug
µµ 
(
µµ 
$str
µµ 6
)
µµ6 7
;
µµ7 8
LevelsUpUser
∑∑ 
user
∑∑ 
=
∑∑ 
await
∑∑  %
this
∑∑& *
.
∑∑* +
_userManager
∑∑+ 7
.
∑∑7 8
FindByEmailAsync
∑∑8 H
(
∑∑H I"
verifyAccountRequest
∑∑I ]
.
∑∑] ^
Email
∑∑^ c
)
∑∑c d
;
∑∑d e
if
∏∏ 
(
∏∏ 
user
∏∏ 
==
∏∏ 
null
∏∏ 
)
∏∏ 
{
ππ 
throw
∫∫ 
new
∫∫ 
LevelsUpException
∫∫ +
(
∫∫+ ,
ErrorMessages
∫∫, 9
.
∫∫9 :,
USER_INVALID_USERNAME_PASSWORD
∫∫: X
,
∫∫X Y

ErrorCodes
∫∫Z d
.
∫∫d e

BadRequest
∫∫e o
)
∫∫o p
;
∫∫p q
}
ªª 
bool
ΩΩ 

IsVerified
ΩΩ 
=
ΩΩ 
this
ΩΩ "
.
ΩΩ" #
_userService
ΩΩ# /
.
ΩΩ/ 0
VerifyAccount
ΩΩ0 =
(
ΩΩ= >"
verifyAccountRequest
ΩΩ> R
.
ΩΩR S
MobileNumber
ΩΩS _
,
ΩΩ_ `"
verifyAccountRequest
ΩΩa u
.
ΩΩu v
VerificationCodeΩΩv Ü
)ΩΩÜ á
;ΩΩá à
this
øø 
.
øø 
logger
øø 
.
øø 
Debug
øø 
(
øø 
$str
øø B
)
øøB C
;
øøC D
return
¡¡ 

IsVerified
¡¡ 
;
¡¡ 
}
¬¬ 	
public
ÃÃ $
UserProfileInformation
ÃÃ %
GetUserProfile
ÃÃ& 4
(
ÃÃ4 5
string
ÃÃ5 ;
userId
ÃÃ< B
)
ÃÃB C
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
ŒŒ ;
)
ŒŒ; <
;
ŒŒ< =
this
–– 
.
–– 
logger
–– 
.
–– 
Debug
–– 
(
–– 
$"
––  8
*Getting the user profile with the userId: 
––  J
{
––J K
userId
––K Q
}
––Q R
"
––R S
)
––S T
;
––T U
UserProfile
““ 
userProfile
““ #
=
““$ %
this
““& *
.
““* +!
_userProfileService
““+ >
.
““> ?
GetUserProfile
““? M
(
““M N
$num
““N O
,
““O P
userId
““Q W
:
““W X
userId
““Y _
)
““_ `
;
““` a
if
‘‘ 
(
‘‘ 
userProfile
‘‘ 
==
‘‘ 
null
‘‘ #
)
‘‘# $
{
’’ 
throw
÷÷ 
new
÷÷ 
LevelsUpException
÷÷ +
(
÷÷+ ,
ErrorMessages
÷÷, 9
.
÷÷9 :$
USER_PROFILE_NOT_EXIST
÷÷: P
,
÷÷P Q

ErrorCodes
÷÷R \
.
÷÷\ ]
NotFound
÷÷] e
)
÷÷e f
;
÷÷f g
}
◊◊ $
UserProfileInformation
ŸŸ "$
userProfileInformation
ŸŸ# 9
=
ŸŸ: ;
this
ŸŸ< @
.
ŸŸ@ A
mapper
ŸŸA G
.
ŸŸG H
Map
ŸŸH K
<
ŸŸK L$
UserProfileInformation
ŸŸL b
>
ŸŸb c
(
ŸŸc d
userProfile
ŸŸd o
)
ŸŸo p
;
ŸŸp q
this
€€ 
.
€€ 
logger
€€ 
.
€€ 
Debug
€€ 
(
€€ 
$str
€€ 9
)
€€9 :
;
€€: ;
return
›› $
userProfileInformation
›› )
;
››) *
}
ﬁﬁ 	
public
ËË 
bool
ËË 
UpdateProfile
ËË !
(
ËË! "&
UpdateUserProfileRequest
ËË" :&
updateUserProfileRequest
ËË; S
)
ËËS T
{
ÈÈ 	
this
ÍÍ 
.
ÍÍ 
logger
ÍÍ 
.
ÍÍ 
Debug
ÍÍ 
(
ÍÍ 
$str
ÍÍ <
)
ÍÍ< =
;
ÍÍ= >
UserProfile
ÏÏ 
userProfile
ÏÏ #
=
ÏÏ$ %
this
ÏÏ& *
.
ÏÏ* +!
_userProfileService
ÏÏ+ >
.
ÏÏ> ?
GetUserProfile
ÏÏ? M
(
ÏÏM N
	profileId
ÏÏN W
:
ÏÏW X&
updateUserProfileRequest
ÏÏY q
.
ÏÏq r
	ProfileId
ÏÏr {
)
ÏÏ{ |
;
ÏÏ| }
if
ÓÓ 
(
ÓÓ 
userProfile
ÓÓ 
==
ÓÓ 
null
ÓÓ #
)
ÓÓ# $
{
ÔÔ 
throw
 
new
 
LevelsUpException
 +
(
+ ,
ErrorMessages
, 9
.
9 :$
USER_PROFILE_NOT_EXIST
: P
,
P Q

ErrorCodes
R \
.
\ ]
NotFound
] e
)
e f
;
f g
}
ÒÒ 
userProfile
ÛÛ 
=
ÛÛ 
this
ÛÛ 
.
ÛÛ 
mapper
ÛÛ %
.
ÛÛ% &
Map
ÛÛ& )
<
ÛÛ) *&
UpdateUserProfileRequest
ÛÛ* B
,
ÛÛB C
UserProfile
ÛÛD O
>
ÛÛO P
(
ÛÛP Q&
updateUserProfileRequest
ÛÛQ i
,
ÛÛi j
userProfile
ÛÛk v
)
ÛÛv w
;
ÛÛw x
bool
ıı 
	IsUpdated
ıı 
=
ıı 
this
ıı !
.
ıı! "!
_userProfileService
ıı" 5
.
ıı5 6
UpdateUserProfile
ıı6 G
(
ııG H
userProfile
ııH S
)
ııS T
;
ııT U
this
˜˜ 
.
˜˜ 
logger
˜˜ 
.
˜˜ 
Debug
˜˜ 
(
˜˜ 
$str
˜˜ :
)
˜˜: ;
;
˜˜; <
return
˘˘ 
	IsUpdated
˘˘ 
;
˘˘ 
}
˙˙ 	
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
bool
ÖÖ 
>
ÖÖ !
ChangePasswordAsync
ÖÖ  3
(
ÖÖ3 4#
ChangePasswordRequest
ÖÖ4 I#
changePasswordRequest
ÖÖJ _
)
ÖÖ_ `
{
ÜÜ 	
this
áá 
.
áá 
logger
áá 
.
áá 
Debug
áá 
(
áá 
$"
áá  %
Getting user by email: 
áá  7
{
áá7 8#
changePasswordRequest
áá8 M
.
ááM N
Email
ááN S
}
ááS T
"
ááT U
)
ááU V
;
ááV W
LevelsUpUser
àà 
user
àà 
=
àà 
await
àà  %
this
àà& *
.
àà* +
_userManager
àà+ 7
.
àà7 8
FindByEmailAsync
àà8 H
(
ààH I#
changePasswordRequest
ààI ^
.
àà^ _
Email
àà_ d
)
ààd e
;
ààe f
if
ââ 
(
ââ 
user
ââ 
==
ââ 
null
ââ 
)
ââ 
{
ää 
throw
ãã 
new
ãã 
LevelsUpException
ãã +
(
ãã+ ,
ErrorMessages
ãã, 9
.
ãã9 :
USER_NOT_EXIST
ãã: H
,
ããH I

ErrorCodes
ããJ T
.
ããT U
NotFound
ããU ]
)
ãã] ^
;
ãã^ _
}
åå 
this
éé 
.
éé 
logger
éé 
.
éé 
Debug
éé 
(
éé 
$"
éé  1
#Removing the password of the user: 
éé  C
{
ééC D
user
ééD H
.
ééH I
UserName
ééI Q
}
ééQ R
"
ééR S
)
ééS T
;
ééT U
IdentityResult
èè 
removedResult
èè (
=
èè) *
await
èè+ 0
this
èè1 5
.
èè5 6
_userManager
èè6 B
.
èèB C!
RemovePasswordAsync
èèC V
(
èèV W
user
èèW [
)
èè[ \
;
èè\ ]
if
êê 
(
êê 
!
êê 
removedResult
êê 
.
êê 
	Succeeded
êê (
)
êê( )
{
ëë 
throw
íí 
new
íí 
LevelsUpException
íí +
(
íí+ ,
removedResult
íí, 9
.
íí9 :
Errors
íí: @
?
íí@ A
.
ííA B
FirstOrDefault
ííB P
(
ííP Q
)
ííQ R
?
ííR S
.
ííS T
Description
ííT _
)
íí_ `
;
íí` a
}
ìì 
this
ïï 
.
ïï 
logger
ïï 
.
ïï 
Debug
ïï 
(
ïï 
$"
ïï  /
!Adding new password of the user: 
ïï  A
{
ïïA B
user
ïïB F
.
ïïF G
UserName
ïïG O
}
ïïO P
"
ïïP Q
)
ïïQ R
;
ïïR S
IdentityResult
ññ 
result
ññ !
=
ññ" #
await
ññ$ )
this
ññ* .
.
ññ. /
_userManager
ññ/ ;
.
ññ; <
AddPasswordAsync
ññ< L
(
ññL M
user
ññM Q
,
ññQ R#
changePasswordRequest
ññS h
.
ññh i
NewPassword
ññi t
)
ññt u
;
ññu v
if
óó 
(
óó 
!
óó 
result
óó 
.
óó 
	Succeeded
óó !
)
óó! "
{
òò 
throw
ôô 
new
ôô 
LevelsUpException
ôô +
(
ôô+ ,
result
ôô, 2
.
ôô2 3
Errors
ôô3 9
?
ôô9 :
.
ôô: ;
FirstOrDefault
ôô; I
(
ôôI J
)
ôôJ K
?
ôôK L
.
ôôL M
Description
ôôM X
)
ôôX Y
;
ôôY Z
}
öö 
this
úú 
.
úú 
logger
úú 
.
úú 
Debug
úú 
(
úú 
$str
úú >
)
úú> ?
;
úú? @
return
ûû 
true
ûû 
;
ûû 
}
üü 	
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
TokenResponse
™™ '
>
™™' (
Login
™™) .
(
™™. /
LoginRequest
™™/ ;
loginRequest
™™< H
)
™™H I
{
´´ 	
this
¨¨ 
.
¨¨ 
logger
¨¨ 
.
¨¨ 
Debug
¨¨ 
(
¨¨ 
$"
¨¨  .
 Getting user with the username: 
¨¨  @
{
¨¨@ A
loginRequest
¨¨A M
.
¨¨M N
UserName
¨¨N V
}
¨¨V W
"
¨¨W X
)
¨¨X Y
;
¨¨Y Z
LevelsUpUser
≠≠ 
user
≠≠ 
=
≠≠ 
await
≠≠  %
this
≠≠& *
.
≠≠* +
_userManager
≠≠+ 7
.
≠≠7 8
FindByEmailAsync
≠≠8 H
(
≠≠H I
loginRequest
≠≠I U
.
≠≠U V
UserName
≠≠V ^
)
≠≠^ _
;
≠≠_ `
if
ÆÆ 
(
ÆÆ 
user
ÆÆ 
==
ÆÆ 
null
ÆÆ 
)
ÆÆ 
{
ØØ 
throw
∞∞ 
new
∞∞ 
LevelsUpException
∞∞ +
(
∞∞+ ,
ErrorMessages
∞∞, 9
.
∞∞9 :
USER_NOT_EXIST
∞∞: H
,
∞∞H I

ErrorCodes
∞∞J T
.
∞∞T U
NotFound
∞∞U ]
)
∞∞] ^
;
∞∞^ _
}
±± 
this
≥≥ 
.
≥≥ 
logger
≥≥ 
.
≥≥ 
Debug
≥≥ 
(
≥≥ 
$"
≥≥  <
.Password sign for the user with the username: 
≥≥  N
{
≥≥N O
loginRequest
≥≥O [
.
≥≥[ \
UserName
≥≥\ d
}
≥≥d e
"
≥≥e f
)
≥≥f g
;
≥≥g h
SignInResult
¥¥ 
result
¥¥ 
=
¥¥  !
await
¥¥" '
this
¥¥( ,
.
¥¥, -
_signInManager
¥¥- ;
.
¥¥; <!
PasswordSignInAsync
¥¥< O
(
¥¥O P
loginRequest
¥¥P \
.
¥¥\ ]
UserName
¥¥] e
,
¥¥e f
loginRequest
¥¥g s
.
¥¥s t
Password
¥¥t |
,
¥¥| }
false¥¥~ É
,¥¥É Ñ
false¥¥Ö ä
)¥¥ä ã
;¥¥ã å
if
µµ 
(
µµ 
!
µµ 
result
µµ 
.
µµ 
	Succeeded
µµ !
)
µµ! "
{
∂∂ 
throw
∑∑ 
new
∑∑ 
LevelsUpException
∑∑ +
(
∑∑+ ,
ErrorMessages
∑∑, 9
.
∑∑9 :,
USER_INVALID_USERNAME_PASSWORD
∑∑: X
,
∑∑X Y

ErrorCodes
∑∑Z d
.
∑∑d e

BadRequest
∑∑e o
)
∑∑o p
;
∑∑p q
}
∏∏ 
else
ππ 
if
ππ 
(
ππ 
result
ππ 
.
ππ 
IsLockedOut
ππ '
)
ππ' (
{
∫∫ 
throw
ªª 
new
ªª 
LevelsUpException
ªª +
(
ªª+ ,
ErrorMessages
ªª, 9
.
ªª9 :
USER_IS_DISABLED
ªª: J
,
ªªJ K

ErrorCodes
ªªL V
.
ªªV W!
UnprocessableEntity
ªªW j
)
ªªj k
;
ªªk l
}
ºº 
this
ææ 
.
ææ 
logger
ææ 
.
ææ 
Debug
ææ 
(
ææ 
$str
ææ :
)
ææ: ;
;
ææ; <
IList
øø 
<
øø 
string
øø 
>
øø 
roles
øø 
=
øø  !
await
øø" '
this
øø( ,
.
øø, -
_userManager
øø- 9
.
øø9 :
GetRolesAsync
øø: G
(
øøG H
user
øøH L
)
øøL M
;
øøM N
this
¡¡ 
.
¡¡ 
logger
¡¡ 
.
¡¡ 
Debug
¡¡ 
(
¡¡ 
$"
¡¡  :
,Generating token of user with the username: 
¡¡  L
{
¡¡L M
user
¡¡M Q
.
¡¡Q R
UserName
¡¡R Z
}
¡¡Z [
 and role: 
¡¡[ f
{
¡¡f g
roles
¡¡g l
.
¡¡l m
FirstOrDefault
¡¡m {
(
¡¡{ |
)
¡¡| }
}
¡¡} ~
"
¡¡~ 
)¡¡ Ä
;¡¡Ä Å
TokenResponse
√√ 
tokenResponse
√√ '
=
√√( )
this
√√* .
.
√√. /#
_GenerateJSONWebToken
√√/ D
(
√√D E
user
√√E I
,
√√I J
roles
√√K P
)
√√P Q
;
√√Q R
this
≈≈ 
.
≈≈ 
logger
≈≈ 
.
≈≈ 
Debug
≈≈ 
(
≈≈ 
$str
≈≈ 4
)
≈≈4 5
;
≈≈5 6
return
«« 
tokenResponse
««  
;
««  !
}
»» 	
public
”” 
async
”” 
Task
”” 
<
”” 
TokenResponse
”” '
>
””' ("
GenerateRefreshToken
””) =
(
””= >!
RefreshTokenRequest
””> Q!
refreshTokenRequest
””R e
)
””e f
{
‘‘ 	
SecurityToken
’’ 
securityToken
’’ '
;
’’' (
ClaimsPrincipal
÷÷ 
	principle
÷÷ %
=
÷÷& '
this
÷÷( ,
.
÷÷, -&
_jwtSecurityTokenHandler
÷÷- E
.
÷÷E F
ValidateToken
÷÷F S
(
÷÷S T!
refreshTokenRequest
÷÷T g
.
÷÷g h!
AuthenticationToken
÷÷h {
,
÷÷{ |.
TokenValidationParameterHelpers÷÷} ú
.÷÷ú ù3
#GetExpiredTokenValidationParameters÷÷ù ¿
(÷÷¿ ¡
)÷÷¡ ¬
,÷÷¬ √
out÷÷ƒ «
securityToken÷÷» ’
)÷÷’ ÷
;÷÷÷ ◊
JwtSecurityToken
◊◊ 
jwtToken
◊◊ %
=
◊◊& '
securityToken
◊◊( 5
as
◊◊6 8
JwtSecurityToken
◊◊9 I
;
◊◊I J
if
ŸŸ 
(
ŸŸ 
jwtToken
ŸŸ 
==
ŸŸ 
null
ŸŸ  
||
ŸŸ! #
!
ŸŸ$ %
jwtToken
ŸŸ% -
.
ŸŸ- .
Header
ŸŸ. 4
.
ŸŸ4 5
Alg
ŸŸ5 8
.
ŸŸ8 9
Equals
ŸŸ9 ?
(
ŸŸ? @ 
SecurityAlgorithms
ŸŸ@ R
.
ŸŸR S

HmacSha256
ŸŸS ]
)
ŸŸ] ^
)
ŸŸ^ _
{
⁄⁄ 
throw
€€ 
new
€€ 
LevelsUpException
€€ +
(
€€+ ,
ErrorMessages
€€, 9
.
€€9 : 
UNAUTHORIZED_ERROR
€€: L
,
€€L M

ErrorCodes
€€N X
.
€€X Y
Unauthorized
€€Y e
)
€€e f
;
€€f g
}
‹‹ 
this
ﬁﬁ 
.
ﬁﬁ 
logger
ﬁﬁ 
.
ﬁﬁ 
Debug
ﬁﬁ 
(
ﬁﬁ 
$"
ﬁﬁ  2
$Getting the userId from the jwtToken
ﬁﬁ  D
"
ﬁﬁD E
)
ﬁﬁE F
;
ﬁﬁF G
string
ﬂﬂ 
userId
ﬂﬂ 
=
ﬂﬂ 
jwtToken
ﬂﬂ $
.
ﬂﬂ$ %
Claims
ﬂﬂ% +
.
ﬂﬂ+ ,
GetClaimValue
ﬂﬂ, 9
(
ﬂﬂ9 :
EnumHelpers
ﬂﬂ: E
.
ﬂﬂE F
GetDescription
ﬂﬂF T
(
ﬂﬂT U"
MiddlewareClaimTypes
ﬂﬂU i
.
ﬂﬂi j
UserId
ﬂﬂj p
)
ﬂﬂp q
)
ﬂﬂq r
;
ﬂﬂr s
this
·· 
.
·· 
logger
·· 
.
·· 
Debug
·· 
(
·· 
$"
··  K
=Getting the refresh token from the database with the userId: 
··  ]
{
··] ^
userId
··^ d
}
··d e
"
··e f
)
··f g
;
··g h
RefreshToken
‚‚ 
refreshToken
‚‚ %
=
‚‚& '
this
‚‚( ,
.
‚‚, -
_userService
‚‚- 9
.
‚‚9 :
GetRefreshToken
‚‚: I
(
‚‚I J
userId
‚‚J P
,
‚‚P Q!
refreshTokenRequest
‚‚R e
.
‚‚e f
RefreshToken
‚‚f r
)
‚‚r s
;
‚‚s t
if
„„ 
(
„„ 
refreshToken
„„ 
==
„„ 
null
„„  $
||
„„% '
refreshToken
„„( 4
.
„„4 5
IsUsed
„„5 ;
)
„„; <
{
‰‰ 
throw
ÂÂ 
new
ÂÂ 
LevelsUpException
ÂÂ +
(
ÂÂ+ ,
ErrorMessages
ÂÂ, 9
.
ÂÂ9 :
USER_NOT_EXIST
ÂÂ: H
,
ÂÂH I

ErrorCodes
ÂÂJ T
.
ÂÂT U
Unauthorized
ÂÂU a
)
ÂÂa b
;
ÂÂb c
}
ÊÊ 
string
ËË 
username
ËË 
=
ËË 
	principle
ËË '
.
ËË' (
Identity
ËË( 0
.
ËË0 1
Name
ËË1 5
;
ËË5 6
this
ÈÈ 
.
ÈÈ 
logger
ÈÈ 
.
ÈÈ 
Debug
ÈÈ 
(
ÈÈ 
$"
ÈÈ  .
 Getting user with the username: 
ÈÈ  @
{
ÈÈ@ A
username
ÈÈA I
}
ÈÈI J
"
ÈÈJ K
)
ÈÈK L
;
ÈÈL M
LevelsUpUser
ÍÍ 
user
ÍÍ 
=
ÍÍ 
await
ÍÍ  %
this
ÍÍ& *
.
ÍÍ* +
_userManager
ÍÍ+ 7
.
ÍÍ7 8
FindByEmailAsync
ÍÍ8 H
(
ÍÍH I
username
ÍÍI Q
)
ÍÍQ R
;
ÍÍR S
if
ÎÎ 
(
ÎÎ 
user
ÎÎ 
==
ÎÎ 
null
ÎÎ 
)
ÎÎ 
{
ÏÏ 
throw
ÌÌ 
new
ÌÌ 
LevelsUpException
ÌÌ +
(
ÌÌ+ ,
ErrorMessages
ÌÌ, 9
.
ÌÌ9 :
USER_NOT_EXIST
ÌÌ: H
,
ÌÌH I

ErrorCodes
ÌÌJ T
.
ÌÌT U
NotFound
ÌÌU ]
)
ÌÌ] ^
;
ÌÌ^ _
}
ÓÓ 
this
 
.
 
logger
 
.
 
Debug
 
(
 
$str
 :
)
: ;
;
; <
IList
ÒÒ 
<
ÒÒ 
string
ÒÒ 
>
ÒÒ 
roles
ÒÒ 
=
ÒÒ  !
await
ÒÒ" '
this
ÒÒ( ,
.
ÒÒ, -
_userManager
ÒÒ- 9
.
ÒÒ9 :
GetRolesAsync
ÒÒ: G
(
ÒÒG H
user
ÒÒH L
)
ÒÒL M
;
ÒÒM N
this
ÛÛ 
.
ÛÛ 
logger
ÛÛ 
.
ÛÛ 
Debug
ÛÛ 
(
ÛÛ 
$"
ÛÛ  :
,Generating token of user with the username: 
ÛÛ  L
{
ÛÛL M
user
ÛÛM Q
.
ÛÛQ R
UserName
ÛÛR Z
}
ÛÛZ [
 and role: 
ÛÛ[ f
{
ÛÛf g
roles
ÛÛg l
.
ÛÛl m
FirstOrDefault
ÛÛm {
(
ÛÛ{ |
)
ÛÛ| }
}
ÛÛ} ~
"
ÛÛ~ 
)ÛÛ Ä
;ÛÛÄ Å
this
ıı 
.
ıı 
logger
ıı 
.
ıı 
Debug
ıı 
(
ıı 
$"
ıı  
"
ıı  !
)
ıı! "
;
ıı" #
refreshToken
ˆˆ 
.
ˆˆ 
IsUsed
ˆˆ 
=
ˆˆ  !
true
ˆˆ" &
;
ˆˆ& '
this
˜˜ 
.
˜˜ 
_userService
˜˜ 
.
˜˜  
UpdateRefreshToken
˜˜ 0
(
˜˜0 1
refreshToken
˜˜1 =
)
˜˜= >
;
˜˜> ?
TokenResponse
˘˘ 
tokenResponse
˘˘ '
=
˘˘( )
this
˘˘* .
.
˘˘. /#
_GenerateJSONWebToken
˘˘/ D
(
˘˘D E
user
˘˘E I
,
˘˘I J
roles
˘˘K P
)
˘˘P Q
;
˘˘Q R
this
˚˚ 
.
˚˚ 
logger
˚˚ 
.
˚˚ 
Debug
˚˚ 
(
˚˚ 
$str
˚˚ ;
)
˚˚; <
;
˚˚< =
return
˝˝ 
tokenResponse
˝˝  
;
˝˝  !
}
˛˛ 	
public
ÜÜ 
async
ÜÜ 
Task
ÜÜ 
<
ÜÜ 
bool
ÜÜ 
>
ÜÜ 
Logout
ÜÜ  &
(
ÜÜ& '
)
ÜÜ' (
{
áá 	
string
àà 
userId
àà 
=
àà 
this
àà  
.
àà  !!
httpContextAccessor
àà! 4
.
àà4 5
GetCurrentUserId
àà5 E
(
ààE F
)
ààF G
;
ààG H
this
ââ 
.
ââ 
logger
ââ 
.
ââ 
Debug
ââ 
(
ââ 
$"
ââ  "
Getting user by id: 
ââ  4
{
ââ4 5
userId
ââ5 ;
}
ââ; <
"
ââ< =
)
ââ= >
;
ââ> ?
LevelsUpUser
ãã 
user
ãã 
=
ãã 
await
ãã  %
this
ãã& *
.
ãã* +
_userManager
ãã+ 7
.
ãã7 8
FindByIdAsync
ãã8 E
(
ããE F
userId
ããF L
)
ããL M
;
ããM N
if
åå 
(
åå 
user
åå 
!=
åå 
null
åå 
)
åå 
{
çç 
await
éé 
this
éé 
.
éé 
_signInManager
éé )
.
éé) *
SignOutAsync
éé* 6
(
éé6 7
)
éé7 8
;
éé8 9
}
èè 
this
ëë 
.
ëë 
logger
ëë 
.
ëë 
Debug
ëë 
(
ëë 
$str
ëë 5
)
ëë5 6
;
ëë6 7
return
ìì 
true
ìì 
;
ìì 
}
îî 	
private
†† 
TokenResponse
†† #
_GenerateJSONWebToken
†† 3
(
††3 4
LevelsUpUser
††4 @
applicationUser
††A P
,
††P Q
IList
††R W
<
††W X
string
††X ^
>
††^ _
roles
††` e
)
††e f
{
°° 	
List
¢¢ 
<
¢¢ 
Claim
¢¢ 
>
¢¢ 
claims
¢¢ 
=
¢¢  
new
¢¢! $
List
¢¢% )
<
¢¢) *
Claim
¢¢* /
>
¢¢/ 0
(
¢¢0 1
)
¢¢1 2
{
££ 
new
§§ 
Claim
§§ 
(
§§ 

ClaimTypes
§§ $
.
§§$ %
Name
§§% )
,
§§) *
applicationUser
§§+ :
.
§§: ;
UserName
§§; C
)
§§C D
,
§§D E
new
•• 
Claim
•• 
(
•• 

ClaimTypes
•• $
.
••$ %
Email
••% *
,
••* +
applicationUser
••, ;
.
••; <
Email
••< A
)
••A B
,
••B C
new
¶¶ 
Claim
¶¶ 
(
¶¶ 

ClaimTypes
¶¶ $
.
¶¶$ %
Role
¶¶% )
,
¶¶) *
roles
¶¶+ 0
.
¶¶0 1
FirstOrDefault
¶¶1 ?
(
¶¶? @
)
¶¶@ A
)
¶¶A B
,
¶¶B C
new
ßß 
Claim
ßß 
(
ßß 

ClaimTypes
ßß $
.
ßß$ %
NameIdentifier
ßß% 3
,
ßß4 5
applicationUser
ßß6 E
.
ßßE F
Id
ßßF H
)
ßßH I
}
®® 
;
®® 

Dictionary
™™ 
<
™™ 
string
™™ 
,
™™ 
object
™™ %
>
™™% &
claimsDictionary
™™' 7
=
™™8 9
claims
™™: @
.
™™@ A
ToDictionary
™™A M
(
™™M N
x
™™N O
=>
™™P R
x
™™S T
.
™™T U
Type
™™U Y
,
™™Y Z
x
™™[ \
=>
™™] _
(
™™` a
object
™™a g
)
™™g h
x
™™h i
.
™™i j
Value
™™j o
)
™™o p
;
™™p q%
SecurityTokenDescriptor
¨¨ #
tokenDescriptor
¨¨$ 3
=
¨¨4 5
new
¨¨6 9%
SecurityTokenDescriptor
¨¨: Q
(
¨¨Q R
)
¨¨R S
{
≠≠ 
Subject
ÆÆ 
=
ÆÆ 
new
ÆÆ 
ClaimsIdentity
ÆÆ ,
(
ÆÆ, -
claims
ÆÆ- 3
,
ÆÆ3 4
	Constants
ÆÆ5 >
.
ÆÆ> ?
	TokenType
ÆÆ? H
)
ÆÆH I
,
ÆÆI J
Claims
ØØ 
=
ØØ 
claimsDictionary
ØØ )
,
ØØ) *
Expires
∞∞ 
=
∞∞ 
DateTime
∞∞ "
.
∞∞" #
UtcNow
∞∞# )
.
∞∞) *

AddMinutes
∞∞* 4
(
∞∞4 5
this
∞∞5 9
.
∞∞9 :"
_jsonWebTokenSetting
∞∞: N
.
∞∞N O

ExpireTime
∞∞O Y
)
∞∞Y Z
,
∞∞Z [ 
SigningCredentials
±± "
=
±±# $
new
±±% ( 
SigningCredentials
±±) ;
(
±±; <
this
±±< @
.
±±@ A"
_jsonWebTokenSetting
±±A U
.
±±U V
Key
±±V Y
.
±±Y Z+
ConvertToSymmetricSecurityKey
±±Z w
(
±±w x
)
±±x y
,
±±y z!
SecurityAlgorithms±±{ ç
.±±ç é

HmacSha256±±é ò
)±±ò ô
,±±ô ö
IssuedAt
≤≤ 
=
≤≤ 
DateTime
≤≤ #
.
≤≤# $
UtcNow
≤≤$ *
,
≤≤* +
Issuer
≥≥ 
=
≥≥ 
this
≥≥ 
.
≥≥ "
_jsonWebTokenSetting
≥≥ 2
.
≥≥2 3
Issuer
≥≥3 9
,
≥≥9 :
Audience
¥¥ 
=
¥¥ 
this
¥¥ 
.
¥¥  "
_jsonWebTokenSetting
¥¥  4
.
¥¥4 5
Issuer
¥¥5 ;
,
¥¥; <
}
µµ 
;
µµ 
SecurityToken
∑∑ 
jwtToken
∑∑ "
=
∑∑# $
this
∑∑% )
.
∑∑) *&
_jwtSecurityTokenHandler
∑∑* B
.
∑∑B C
CreateToken
∑∑C N
(
∑∑N O
tokenDescriptor
∑∑O ^
)
∑∑^ _
;
∑∑_ `
string
∏∏ 
token
∏∏ 
=
∏∏ 
this
∏∏ 
.
∏∏  &
_jwtSecurityTokenHandler
∏∏  8
.
∏∏8 9

WriteToken
∏∏9 C
(
∏∏C D
jwtToken
∏∏D L
)
∏∏L M
;
∏∏M N
string
ππ 
refreshToken
ππ 
=
ππ  !
this
ππ" &
.
ππ& '
_GetRefreshToken
ππ' 7
(
ππ7 8
applicationUser
ππ8 G
.
ππG H
Id
ππH J
)
ππJ K
;
ππK L
TokenResponse
ªª 
tokenResponse
ªª '
=
ªª( )
new
ªª* -
TokenResponse
ªª. ;
(
ªª; <
)
ªª< =
{
ºº 

auth_token
ΩΩ 
=
ΩΩ 
token
ΩΩ "
,
ΩΩ" #
refresh_token
ææ 
=
ææ 
refreshToken
ææ  ,
,
ææ, -
expiration_time
øø 
=
øø  !
jwtToken
øø" *
.
øø* +
ValidTo
øø+ 2
.
øø2 3
ToString
øø3 ;
(
øø; <
	Constants
øø< E
.
øøE F"
MobileDateTimeFormat
øøF Z
)
øøZ [
,
øø[ \

issue_time
¿¿ 
=
¿¿ 
jwtToken
¿¿ %
.
¿¿% &
	ValidFrom
¿¿& /
.
¿¿/ 0
ToString
¿¿0 8
(
¿¿8 9
	Constants
¿¿9 B
.
¿¿B C"
MobileDateTimeFormat
¿¿C W
)
¿¿W X
,
¿¿X Y
role
¡¡ 
=
¡¡ 
roles
¡¡ 
.
¡¡ 
FirstOrDefault
¡¡ +
(
¡¡+ ,
)
¡¡, -
}
¬¬ 
;
¬¬ 
return
ƒƒ 
tokenResponse
ƒƒ  
;
ƒƒ  !
}
≈≈ 	
private
ŒŒ 
string
ŒŒ 
_GetRefreshToken
ŒŒ '
(
ŒŒ' (
string
ŒŒ( .
userId
ŒŒ/ 5
)
ŒŒ5 6
{
œœ 	
string
–– 
refreshToken
–– 
=
––  !
string
––" (
.
––( )
Empty
––) .
;
––. /
byte
—— 
[
—— 
]
—— 
randomNumber
—— 
=
——  !
new
——" %
byte
——& *
[
——* +
$num
——+ -
]
——- .
;
——. /
using
““ 
(
““ #
RandomNumberGenerator
““ (#
randomNumberGenerator
““) >
=
““? @#
RandomNumberGenerator
““A V
.
““V W
Create
““W ]
(
““] ^
)
““^ _
)
““_ `
{
”” #
randomNumberGenerator
‘‘ %
.
‘‘% &
GetBytes
‘‘& .
(
‘‘. /
randomNumber
‘‘/ ;
)
‘‘; <
;
‘‘< =
refreshToken
’’ 
=
’’ 
Convert
’’ &
.
’’& '
ToBase64String
’’' 5
(
’’5 6
randomNumber
’’6 B
)
’’B C
;
’’C D
}
÷÷ 
RefreshToken
ÿÿ 
refreshTokenObj
ÿÿ (
=
ÿÿ) *
new
ÿÿ+ .
RefreshToken
ÿÿ/ ;
(
ÿÿ; <
)
ÿÿ< =
{
ŸŸ 
UserId
⁄⁄ 
=
⁄⁄ 
userId
⁄⁄ 
,
⁄⁄  
Token
€€ 
=
€€ 
refreshToken
€€ $
,
€€$ %
IsUsed
‹‹ 
=
‹‹ 
false
‹‹ 
,
‹‹ 
	IsRevoked
›› 
=
›› 
false
›› !
,
››! "
	CreatedOn
ﬁﬁ 
=
ﬁﬁ 
DateTime
ﬁﬁ $
.
ﬁﬁ$ %
UtcNow
ﬁﬁ% +
}
ﬂﬂ 
;
ﬂﬂ 
this
‡‡ 
.
‡‡ 
_userService
‡‡ 
.
‡‡ 
AddRefreshToken
‡‡ -
(
‡‡- .
refreshTokenObj
‡‡. =
)
‡‡= >
;
‡‡> ?
return
‚‚ 
refreshToken
‚‚ 
;
‚‚  
}
„„ 	
}
ÂÂ 
}ÊÊ ˚
PD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Implementations\BOUserCategory.cs
	namespace

 	
BusinessOperations


 
.

 
Implementations

 ,
{ 
public 

class 
BOUserCategory 
:  !!
BaseBusinessOperation" 7
,7 8
IBOUserCategory9 H
{ 
private 
readonly  
IUserCategoryService - 
_userCategoryService. B
;B C
public 
BOUserCategory 
(  
IUserCategoryService 2
userCategoryService3 F
)F G
:H I
baseJ N
(N O
)O P
{ 	
this 
.  
_userCategoryService %
=& '
userCategoryService( ;
;; <
} 	
public'' 
List'' 
<'' #
UserCategoryInformation'' +
>''+ ,
Get''- 0
(''0 1
string''1 7
userId''8 >
)''> ?
{(( 	
this)) 
.)) 
logger)) 
.)) 
Debug)) 
()) 
$str)) >
)))> ?
;))? @
this++ 
.++ 
logger++ 
.++ 
Debug++ 
(++ 
$"++  C
7Getting the user category information with the userId: ++  W
{++W X
userId++X ^
}++^ _
"++_ `
)++` a
;++a b
List-- 
<-- 
UserCategory-- 
>-- 
userCategories-- -
=--. /
this--0 4
.--4 5 
_userCategoryService--5 I
.--I J
Get--J M
(--M N
userId--N T
)--T U
;--U V
this.. 
... 
logger.. 
... 
Debug.. 
(.. 
$"..  $
User category count is: ..  8
{..8 9
userCategories..9 G
...G H
Count..H M
}..M N
"..N O
)..O P
;..P Q
if// 
(// 
userCategories// 
.// 
IsNotAny// '
(//' (
)//( )
)//) *
{00 
throw11 
new11 
LevelsUpException11 +
(11+ ,
ErrorMessages11, 9
.119 :%
USER_CATEGORIES_NOT_EXIST11: S
,11S T

ErrorCodes11U _
.11_ `
NotFound11` h
)11h i
;11i j
}22 
List44 
<44 #
UserCategoryInformation44 (
>44( )#
userCategoryInformation44* A
=44B C
this44D H
.44H I
mapper44I O
.44O P
Map44P S
<44S T
List44T X
<44X Y#
UserCategoryInformation44Y p
>44p q
>44q r
(44r s
userCategories	44s Å
)
44Å Ç
;
44Ç É
this66 
.66 
logger66 
.66 
Debug66 
(66 
$str66 <
)66< =
;66= >
return88 #
userCategoryInformation88 *
;88* +
}99 	
}:: 
};; œ
SD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Implementations\BOUserSubCategory.cs
	namespace 	
BusinessOperations
 
. 
Implementations ,
{		 
public 

class 
BOUserSubCategory "
:# $!
BaseBusinessOperation% :
,: ;
IBOUserSubCategory< N
{ 
private 
readonly #
IUserSubCategoryService 0#
_userSubCategoryService1 H
;H I
public 
BOUserSubCategory  
(  !#
IUserSubCategoryService! 8"
userSubCategoryService9 O
)O P
:Q R
baseS W
(W X
)X Y
{ 	
this 
. #
_userSubCategoryService (
=) *"
userSubCategoryService+ A
;A B
} 	
public%% 
List%% 
<%% &
UserSubCategoryInformation%% .
>%%. /
Get%%0 3
(%%3 4
string%%4 :
userId%%; A
)%%A B
{&& 	
if'' 
('' 
string'' 
.'' 
IsNullOrEmpty'' $
(''$ %
userId''% +
)''+ ,
)'', -
{(( 
this)) 
.)) 
logger)) 
.)) 
Debug)) !
())! "
$str))" 6
)))6 7
;))7 8
userId** 
=** 
this** 
.** 
httpContextAccessor** 1
.**1 2
GetCurrentUserId**2 B
(**B C
)**C D
;**D E
}++ 
List-- 
<-- 
UserSubCategory--  
>--  !
subCategories--" /
=--0 1
this--2 6
.--6 7#
_userSubCategoryService--7 N
.--N O
Get--O R
(--R S
userId--S Y
)--Y Z
;--Z [
return// 
this// 
.// 
mapper// 
.// 
Map// "
<//" #
List//# '
<//' (&
UserSubCategoryInformation//( B
>//B C
>//C D
(//D E
subCategories//E R
)//R S
;//S T
}00 	
}11 
}22 ‰
KD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Interfaces\IBOSubCategory.cs
	namespace 	
BusinessOperations
 
. 

Interfaces '
{ 
public		 

	interface		 
IBOSubCategory		 #
:		$ %
IBusinessOperation		& 8
{

 ,
 UserSubCategoryDetailInformation (
Get) ,
(, -
int- 0
id1 3
)3 4
;4 5
} 
}  
DD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Interfaces\IBOUser.cs
	namespace 	
BusinessOperations
 
. 

Interfaces '
{ 
public 

	interface 
IBOUser 
: 
IBusinessOperation 1
{ 
Task 
< 
bool 
> 
RegisterUserAsync $
($ %
RegisterRequest% 4
registerRequest5 D
,D E
	UserRolesF O
userRoleP X
)X Y
;Y Z
Task 
< 
bool 
> 
VerifyAccount  
(  ! 
VerifyAccountRequest! 5 
verifyAccountRequest6 J
)J K
;K L"
UserProfileInformation(( 
GetUserProfile(( -
(((- .
string((. 4
userId((5 ;
)((; <
;((< =
bool11 
UpdateProfile11 
(11 $
UpdateUserProfileRequest11 3$
updateUserProfileRequest114 L
)11L M
;11M N
Task:: 
<:: 
bool:: 
>:: 
ChangePasswordAsync:: &
(::& '!
ChangePasswordRequest::' <!
changePasswordRequest::= R
)::R S
;::S T
TaskCC 
<CC 
TokenResponseCC 
>CC 
LoginCC !
(CC! "
LoginRequestCC" .
loginRequestCC/ ;
)CC; <
;CC< =
TaskLL 
<LL 
TokenResponseLL 
>LL  
GenerateRefreshTokenLL 0
(LL0 1
RefreshTokenRequestLL1 D
refreshTokenRequestLLE X
)LLX Y
;LLY Z
TaskTT 
<TT 
boolTT 
>TT 
LogoutTT 
(TT 
)TT 
;TT 
}UU 
}VV î
LD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Interfaces\IBOUserCategory.cs
	namespace 	
BusinessOperations
 
. 

Interfaces '
{ 
public

 

	interface

 
IBOUserCategory

 $
:

% &
IBusinessOperation

' 9
{ 
List 
< #
UserCategoryInformation $
>$ %
Get& )
() *
string* 0
userId1 7
)7 8
;8 9
} 
} ù
OD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Interfaces\IBOUserSubCategory.cs
	namespace 	
BusinessOperations
 
. 

Interfaces '
{ 
public

 

	interface

 
IBOUserSubCategory

 '
:

( )
IBusinessOperation

* <
{ 
List 
< &
UserSubCategoryInformation '
>' (
Get) ,
(, -
string- 3
userId4 :
): ;
;; <
} 
} ∞
OD:\DotNetCore\DotNetCoreAPI\BusinessOperations\Interfaces\IBusinessOperation.cs
	namespace 	
BusinessOperations
 
. 

Interfaces '
{ 
public 

	interface 
IBusinessOperation '
{ 
} 
}		 µ
JD:\DotNetCore\DotNetCoreAPI\BusinessOperations\PostSharp\ProfilerAspect.cs
	namespace		 	
BusinessOperations		
 
.		 
	PostSharp		 &
{

 
[ 
Serializable 
] 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Assembly% -
|. /
AttributeTargets0 @
.@ A
MethodA G
)G H
]H I
public 

class 
ProfilerAspect 
:  !
OnExceptionAspect" 3
{ 
public 
override 
void 
OnException (
(( )
MethodExecutionArgs) <
args= A
)A B
{ 	
IServiceProvider 
serviceProvider ,
=- .
ServiceHelpers/ =
.= >
GetServiceProvider> P
(P Q
)Q R
;R S
ILogger 
logger 
= 
serviceProvider ,
., -
GetRequiredService- ?
<? @
ILogger@ G
>G H
(H I
)I J
;J K
Type 
type 
= 
args 
. 
	Exception &
.& '
GetType' .
(. /
)/ 0
;0 1
logger 
. 
Debug 
( 
args 
. 
	Exception '
.' (
Message( /
)/ 0
;0 1
if 
( 
type 
== 
typeof 
( 
LevelsUpException 0
)0 1
)1 2
{   
throw!! 
args!! 
.!! 
	Exception!! $
;!!$ %
}"" 
else## 
{$$ 
throw%% 
new%% 
LevelsUpException%% +
(%%+ ,
ErrorMessages%%, 9
.%%9 :!
INTERNAL_SERVER_ERROR%%: O
,%%O P

ErrorCodes%%Q [
.%%[ \
InternalServerError%%\ o
)%%o p
;%%p q
}&& 
}'' 	
}(( 
})) ≤
ID:\DotNetCore\DotNetCoreAPI\BusinessOperations\Properties\AssemblyInfo.cs
[		 
assembly		 	
:			 

AssemblyTitle		 
(		 
$str		 -
)		- .
]		. /
[

 
assembly

 	
:

	 

AssemblyDescription

 
(

 
$str

 !
)

! "
]

" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[$$ 
assembly$$ 	
:$$	 

AssemblyVersion$$ 
($$ 
$str$$ $
)$$$ %
]$$% &
[%% 
assembly%% 	
:%%	 

AssemblyFileVersion%% 
(%% 
$str%% (
)%%( )
]%%) *
[&& 
assembly&& 	
:&&	 

ProfilerAspect&& 
(&&  
AttributeTargetTypes&& .
=&&/ 0
$str&&1 G
)&&G H
]&&H I