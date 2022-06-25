°
MD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIRequestModels\AddRoleRequest.cs
	namespace 	
Infrastructure
 
. 
APIRequestModels )
{ 
public		 

class		 
AddRoleRequest		 
:		  !
IBaseRequest		" .
{

 
[ 	
Required	 
] 
public 
string 
RoleName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ˇ
TD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIRequestModels\ChangePasswordRequest.cs
	namespace 	
Infrastructure
 
. 
APIRequestModels )
{ 
public		 

class		 !
ChangePasswordRequest		 &
:		' (
IBaseRequest		) 5
{

 
[ 	
Required	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ®
KD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIRequestModels\IBaseRequest.cs
	namespace 	
Infrastructure
 
. 
APIRequestModels )
{ 
public 

	interface 
IBaseRequest !
{ 
} 
}		 Ì
KD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIRequestModels\LoginRequest.cs
	namespace 	
Infrastructure
 
. 
APIRequestModels )
{ 
public		 

class		 
LoginRequest		 
:		 
IBaseRequest		  ,
{

 
[ 	
Required	 
] 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ä
RD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIRequestModels\RefreshTokenRequest.cs
	namespace 	
Infrastructure
 
. 
APIRequestModels )
{ 
public		 

class		 
RefreshTokenRequest		 $
:		% &
IBaseRequest		' 3
{

 
[ 	
Required	 
] 
public 
string 
AuthenticationToken )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[ 	
Required	 
] 
public 
string 
RefreshToken "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Ú
ND:\DotNetCore\DotNetCoreAPI\Infrastructure\APIRequestModels\RegisterRequest.cs
	namespace 	
Infrastructure
 
. 
APIRequestModels )
{ 
public		 

class		 
RegisterRequest		  
:		! "
IBaseRequest		# /
{

 
[ 	
Required	 
] 
public 
string 
MobileNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[## 	
Required##	 
]## 
public$$ 
string$$ 
CountryCode$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
[,, 	
Required,,	 
],, 
public-- 
string-- 
Country-- 
{-- 
get--  #
;--# $
set--% (
;--( )
}--* +
public55 
string55 
DeviceToken55 !
{55" #
get55$ '
;55' (
set55) ,
;55, -
}55. /
[== 	
Required==	 
]== 
public>> 
string>> 
Name>> 
{>> 
get>>  
;>>  !
set>>" %
;>>% &
}>>' (
publicFF 
stringFF 
RegistrationTokenFF '
{FF( )
getFF* -
;FF- .
setFF/ 2
;FF2 3
}FF4 5
[NN 	
RequiredNN	 
]NN 
publicOO 
stringOO 
PasswordOO 
{OO  
getOO! $
;OO$ %
setOO& )
;OO) *
}OO+ ,
publicWW 
stringWW 
LanguageWW 
{WW  
getWW! $
;WW$ %
setWW& )
;WW) *
}WW+ ,
[__ 	
Required__	 
]__ 
public`` 
int`` 
?`` 
DeviceTypeId``  
{``! "
get``# &
;``& '
set``( +
;``+ ,
}``- .
}aa 
}bb â
WD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIRequestModels\UpdateUserProfileRequest.cs
	namespace 	
Infrastructure
 
. 
APIRequestModels )
{ 
public		 

class		 $
UpdateUserProfileRequest		 )
:		* +
IBaseRequest		, 8
{

 
[ 	
Required	 
] 
public 
int 
? 
	ProfileId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[## 	
Required##	 
]## 
public$$ 
string$$ 
Email$$ 
{$$ 
get$$ !
;$$! "
set$$# &
;$$& '
}$$( )
[,, 	
Required,,	 
],, 
public-- 
string-- 
Country-- 
{-- 
get--  #
;--# $
set--% (
;--( )
}--* +
public55 
string55 
FootballClub55 "
{55# $
get55% (
;55( )
set55* -
;55- .
}55/ 0
public== 
string== 
Position== 
{==  
get==! $
;==$ %
set==& )
;==) *
}==+ ,
publicEE 
intEE 
?EE 
AgeEE 
{EE 
getEE 
;EE 
setEE "
;EE" #
}EE$ %
}FF 
}GG ÷
SD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIRequestModels\VerifyAccountRequest.cs
	namespace 	
Infrastructure
 
. 
APIRequestModels )
{ 
public		 

class		  
VerifyAccountRequest		 %
:		& '
IBaseRequest		( 4
{

 
[ 	
Required	 
] 
public 
string 
MobileNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[## 	
Required##	 
]## 
public$$ 
string$$ 
VerificationCode$$ &
{$$' (
get$$) ,
;$$, -
set$$. 1
;$$1 2
}$$3 4
}%% 
}&& Ñ	
MD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIResponseModels\BasicResponse.cs
	namespace 	
Infrastructure
 
. 
APIResponseModels *
{ 
public 

class 
BasicResponse 
:  
IBaseResponse! .
{ 
public 
BasicResponse 
( 
) 
{ 	
this 
. 
Success 
= 
true 
;  
this 
. 
ErrorMessage 
= 
string  &
.& '
Empty' ,
;, -
} 	
public 
dynamic 
Data 
{ 
get !
;! "
set# &
;& '
}( )
public   
bool   
Success   
{   
get   !
;  ! "
set  # &
;  & '
}  ( )
public(( 
string(( 
ErrorMessage(( "
{((# $
get((% (
;((( )
set((* -
;((- .
}((/ 0
})) 
}** ¨
MD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIResponseModels\IBaseResponse.cs
	namespace 	
Infrastructure
 
. 
APIResponseModels *
{ 
public 

	interface 
IBaseResponse "
{ 
} 
}		 á
MD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIResponseModels\TokenResponse.cs
	namespace 	
Infrastructure
 
. 
APIResponseModels *
{ 
public		 

class		 
TokenResponse		 
:		  
IBaseResponse		! .
{

 
public 
TokenResponse 
( 
) 
{ 	
this 
. 

token_type 
= 
	Constants '
.' (
	TokenType( 1
;1 2
} 	
public 
string 

auth_token  
{! "
get# &
;& '
set( +
;+ ,
}- .
public!! 
string!! 
refresh_token!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
public)) 
string)) 

token_type))  
{))! "
get))# &
;))& '
set))( +
;))+ ,
}))- .
public11 
string11 

issue_time11  
{11! "
get11# &
;11& '
set11( +
;11+ ,
}11- .
public99 
string99 
expiration_time99 %
{99& '
get99( +
;99+ ,
set99- 0
;990 1
}992 3
publicAA 
stringAA 
roleAA 
{AA 
getAA  
;AA  !
setAA" %
;AA% &
}AA' (
}BB 
}CC ¨
WD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIResponseModels\UserCategoryInformation.cs
	namespace 	
Infrastructure
 
. 
APIResponseModels *
{ 
public		 

class		 #
UserCategoryInformation		 (
:		) *
IBaseResponse		+ 8
{

 
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 

LevelValue  
{! "
get# &
;& '
set( +
;+ ,
}- .
public!! 
bool!! 
IsLocked!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
public)) 
List)) 
<)) &
UserSubCategoryInformation)) .
>)). /&
UserSubCategoryInformation))0 J
{))K L
get))M P
;))P Q
set))R U
;))U V
}))W X
}** 
}++ Ô
VD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIResponseModels\UserProfileInformation.cs
	namespace 	
Infrastructure
 
. 
APIResponseModels *
{ 
public 

class "
UserProfileInformation '
:( )
IBaseResponse* 7
{ 
public 
int 
	ProfileId 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
MobileNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
public'' 
int'' 
?'' 
Age'' 
{'' 
get'' 
;'' 
set'' "
;''" #
}''$ %
public// 
string// 
Name// 
{// 
get//  
;//  !
set//" %
;//% &
}//' (
public77 
string77 
FootballClub77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
public?? 
string?? 
Position?? 
{??  
get??! $
;??$ %
set??& )
;??) *
}??+ ,
publicGG 
stringGG 
CountryGG 
{GG 
getGG  #
;GG# $
setGG% (
;GG( )
}GG* +
publicOO 
stringOO 
CountryCodeOO !
{OO" #
getOO$ '
;OO' (
setOO) ,
;OO, -
}OO. /
}PP 
}QQ Â
`D:\DotNetCore\DotNetCoreAPI\Infrastructure\APIResponseModels\UserSubCategoryDetailInformation.cs
	namespace 	
Infrastructure
 
. 
APIResponseModels *
{ 
public 

class ,
 UserSubCategoryDetailInformation 1
:2 3
IBaseResponse4 A
{ 
public 
int 
Points 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
Reps 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
TotalNumberOfPlay $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public'' 
string'' 
Description'' !
{''" #
get''$ '
;''' (
set'') ,
;'', -
}''. /
}(( 
})) ã	
ZD:\DotNetCore\DotNetCoreAPI\Infrastructure\APIResponseModels\UserSubCategoryInformation.cs
	namespace 	
Infrastructure
 
. 
APIResponseModels *
{ 
public 

class &
UserSubCategoryInformation +
:, -
IBaseResponse. ;
{ 
public 
string 
Category 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Points 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
CurrentRepetitions %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public'' 
bool'' 
?'' 
IsLocked'' 
{'' 
get''  #
;''# $
set''% (
;''( )
}''* +
public// 
string// 
	ImagePath// 
{//  !
get//" %
;//% &
set//' *
;//* +
}//, -
}00 
}11 Ó
KD:\DotNetCore\DotNetCoreAPI\Infrastructure\Common\AutoMapperProfileNames.cs
	namespace 	
Infrastructure
 
. 
Common 
{ 
public 

static 
class "
AutoMapperProfileNames .
{ 
public 
const 
string 
LevelsUpUserProfile /
=0 1
$str2 G
;G H
public 
const 
string 
UserCategoryProfile /
=0 1
$str2 G
;G H
public 
const 
string 
UserProfile '
=( )
$str* 7
;7 8
public 
const 
string "
UserSubCategoryProfile 2
=3 4
$str5 M
;M N
public 
const 
string 
SubCategoryProfile .
=/ 0
$str1 E
;E F
}   
}!! ñ
>D:\DotNetCore\DotNetCoreAPI\Infrastructure\Common\Constants.cs
	namespace 	
Infrastructure
 
. 
Common 
{ 
public 

static 
class 
	Constants !
{ 
public 
const 
string 

EmptySpace &
=' (
$str) ,
;, -
public 
const 
string  
MobileDateTimeFormat 0
=1 2
$str3 H
;H I
public 
const 
string 

APIVerison &
=' (
$str) -
;- .
public 
const 
string 
APITitle $
=% &
$str' 1
;1 2
public 
const 
string 
APIDescription *
=+ ,
$str- ;
;; <
public$$ 
const$$ 
string$$ 
APITOS$$ "
=$$# $
$str$$% 7
;$$7 8
public)) 
const)) 
string)) 

SwaggerUrl)) &
=))' (
$str))) =
;))= >
public.. 
const.. 
string.. 

CorsPolicy.. &
=..' (
$str..) 5
;..5 6
public33 
const33 
string33 
JsonFileExtension33 -
=33. /
$str330 7
;337 8
public88 
const88 
string88 
LanguageFolder88 *
=88+ ,
$str88- <
;88< =
public== 
const== 
string== 

NLogConfig== &
===' (
$str==) 6
;==6 7
publicBB 
constBB 
stringBB  
ConnectionStringNameBB 0
=BB1 2
$strBB3 E
;BBE F
publicGG 
constGG 
stringGG 
AppSettingJsonFileGG .
=GG/ 0
$strGG1 C
;GGC D
publicLL 
constLL 
stringLL 
	TokenTypeLL %
=LL& '
$strLL( 0
;LL0 1
publicQQ 
constQQ 
stringQQ 
NullQQ  
=QQ! "
$strQQ# )
;QQ) *
publicVV 
constVV 
stringVV 
AuthorizationHeaderVV /
=VV0 1
$strVV2 A
;VVA B
public[[ 
const[[ 
string[[ 
LanguageHeader[[ *
=[[+ ,
$str[[- 7
;[[7 8
public`` 
const`` 
string`` %
ApiRequestModelsNamespace`` 5
=``6 7
$str``8 Y
;``Y Z
publicee 
constee 
stringee 

Controlleree &
=ee' (
$stree) 5
;ee5 6
publicjj 
constjj 
stringjj 
Defaultjj #
=jj$ %
$strjj& /
;jj/ 0
publicoo 
constoo 
stringoo 
ResourcePathoo (
=oo) *
$stroo+ 6
;oo6 7
}pp 
}qq ù
AD:\DotNetCore\DotNetCoreAPI\Infrastructure\Common\ContentTypes.cs
	namespace 	
Infrastructure
 
. 
Common 
{ 
public 

static 
class 
ContentTypes $
{ 
public 
const 
string 
Json  
=! "
$str# 5
;5 6
public 
const 
string 
Xml 
=  !
$str" B
;B C
} 
} á
;D:\DotNetCore\DotNetCoreAPI\Infrastructure\Common\Routes.cs
	namespace 	
Infrastructure
 
. 
Common 
{ 
public 

static 
class 
Routes 
{ 
public 
const 
string 
ControllerRoute +
=, -
$str. @
;@ A
public 
const 
string  
GetUserSubCategories 0
=1 2
$str3 G
;G H
public 
const 
string $
GetUserSubCategoryDetail 4
=5 6
$str7 U
;U V
public 
const 
string 
AccountVerification /
=0 1
$str2 H
;H I
public 
const 
string 
Login !
=" #
$str$ +
;+ ,
public$$ 
const$$ 
string$$ 
RefreshToken$$ (
=$$) *
$str$$+ :
;$$: ;
public)) 
const)) 
string)) 
Logout)) "
=))# $
$str))% -
;))- .
public.. 
const.. 
string.. 
ChangePassword.. *
=..+ ,
$str..- >
;..> ?
public33 
const33 
string33 

CreateRole33 &
=33' (
$str33) 6
;336 7
public88 
const88 
string88 
RegisterUser88 (
=88) *
$str88+ 5
;885 6
public== 
const== 
string== 
RegisterAdminUser== -
===. /
$str==0 @
;==@ A
publicBB 
constBB 
stringBB 
GetUserCategoriesBB -
=BB. /
$strBB0 @
;BB@ A
publicGG 
constGG 
stringGG 
GetUserProfileGG *
=GG+ ,
$strGG- :
;GG: ;
publicLL 
constLL 
stringLL 
UpdateUserProfileLL -
=LL. /
$strLL0 @
;LL@ A
publicQQ 
constQQ 
stringQQ 
ProcessDetailsQQ *
=QQ+ ,
$strQQ- B
;QQB C
}RR 
}SS ∂
?D:\DotNetCore\DotNetCoreAPI\Infrastructure\Common\TableNames.cs
	namespace 	
Infrastructure
 
. 
Common 
{ 
public 

static 
class 

TableNames "
{ 
public 
const 
string 
Category $
=% &
$str' 1
;1 2
public 
const 
string 
SubCategory '
=( )
$str* 7
;7 8
public 
const 
string 
UserProfile '
=( )
$str* 7
;7 8
public 
const 
string 
UserCategory (
=) *
$str+ 9
;9 :
public 
const 
string 
UserSubCategory +
=, -
$str. ?
;? @
}   
}!! ‚
HD:\DotNetCore\DotNetCoreAPI\Infrastructure\Configurations\AppSettings.cs
	namespace 	
Infrastructure
 
. 
Configurations '
{ 
public		 

class		 
AppSettings		 
:		 +
ISettingValidationStartupFilter		 >
{

 
public 
string 
LinuxIpAddress $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Required	 
] 
public 
string 
SupportEmail "
{# $
get% (
;( )
set* -
;- .
}/ 0
["" 	
Required""	 
]"" 
public## 
string## 
SupportUsername## %
{##& '
get##( +
;##+ ,
set##- 0
;##0 1
}##2 3
[++ 	
Required++	 
]++ 
public,, 
string,, 
AdminUsername,, #
{,,$ %
get,,& )
;,,) *
set,,+ .
;,,. /
},,0 1
[44 	
Required44	 
]44 
public55 
string55 
AdminPassword55 #
{55$ %
get55& )
;55) *
set55+ .
;55. /
}550 1
[== 	
Required==	 
]== 
public>> 
string>> 
AdminMobileNumber>> '
{>>( )
get>>* -
;>>- .
set>>/ 2
;>>2 3
}>>4 5
[FF 	
RequiredFF	 
]FF 
publicGG 
stringGG 
AdminCountryCodeGG &
{GG' (
getGG) ,
;GG, -
setGG. 1
;GG1 2
}GG3 4
[OO 	
RequiredOO	 
]OO 
publicPP 
stringPP 
AdminCountryPP "
{PP# $
getPP% (
;PP( )
setPP* -
;PP- .
}PP/ 0
[XX 	
RequiredXX	 
]XX 
publicYY 
stringYY 
	AdminNameYY 
{YY  !
getYY" %
;YY% &
setYY' *
;YY* +
}YY, -
public^^ 
void^^ 
Validate^^ 
(^^ 
)^^ 
{__ 	
	Validator`` 
.`` 
ValidateObject`` $
(``$ %
this``% )
,``) *
new``+ .
ValidationContext``/ @
(``@ A
this``A E
)``E F
,``F G!
validateAllProperties``H ]
:``] ^
true``_ c
)``c d
;``d e
}aa 	
}bb 
}cc è
QD:\DotNetCore\DotNetCoreAPI\Infrastructure\Configurations\JsonWebTokenSettings.cs
	namespace 	
Infrastructure
 
. 
Configurations '
{ 
public		 

class		  
JsonWebTokenSettings		 %
:		& '+
ISettingValidationStartupFilter		( G
{

 
[ 	
Required	 
] 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
Required	 
] 
public 
string 
Issuer 
{ 
get "
;" #
set$ '
;' (
}) *
[## 	
Required##	 
]## 
public$$ 
int$$ 

ExpireTime$$ 
{$$ 
get$$  #
;$$# $
set$$% (
;$$( )
}$$* +
public)) 
void)) 
Validate)) 
()) 
))) 
{** 	
	Validator++ 
.++ 
ValidateObject++ $
(++$ %
this++% )
,++) *
new+++ .
ValidationContext++/ @
(++@ A
this++A E
)++E F
,++F G!
validateAllProperties++H ]
:++] ^
true++_ c
)++c d
;++d e
},, 	
}-- 
}.. Í
MD:\DotNetCore\DotNetCoreAPI\Infrastructure\Configurations\SendGridSettings.cs
	namespace 	
Infrastructure
 
. 
Configurations '
{ 
public		 

class		 
SendGridSettings		 !
:		" #+
ISettingValidationStartupFilter		$ C
{

 
[ 	
Required	 
] 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
void 
Validate 
( 
) 
{ 	
	Validator 
. 
ValidateObject $
($ %
this% )
,) *
new+ .
ValidationContext/ @
(@ A
thisA E
)E F
,F G!
validateAllPropertiesH ]
:] ^
true_ c
)c d
;d e
} 	
} 
} ë
LD:\DotNetCore\DotNetCoreAPI\Infrastructure\Configurations\TwillioSettings.cs
	namespace 	
Infrastructure
 
. 
Configurations '
{ 
public		 

class		 
TwillioSettings		  
:		! "+
ISettingValidationStartupFilter		# B
{

 
[ 	
Required	 
] 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
string 
	AuthToken 
{  !
get" %
;% &
set' *
;* +
}, -
[## 	
Required##	 
]## 
public$$ 
string$$ 
PhoneNumber$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
public)) 
void)) 
Validate)) 
()) 
))) 
{** 	
	Validator++ 
.++ 
ValidateObject++ $
(++$ %
this++% )
,++) *
new+++ .
ValidationContext++/ @
(++@ A
this++A E
)++E F
,++F G!
validateAllProperties++H ]
:++] ^
true++_ c
)++c d
;++d e
},, 	
}-- 
}.. ·
oD:\DotNetCore\DotNetCoreAPI\Infrastructure\Configurations\ValidationServices\ISettingValidationStartupFilter.cs
	namespace 	
Infrastructure
 
. 
Configurations '
.' (
ValidationServices( :
{ 
public 

	interface +
ISettingValidationStartupFilter 4
{ 
void 
Validate 
( 
) 
; 
} 
} ú
nD:\DotNetCore\DotNetCoreAPI\Infrastructure\Configurations\ValidationServices\SettingValidationHostedService.cs
	namespace 	
Infrastructure
 
. 
Configurations '
.' (
ValidationServices( :
{ 
public 

class *
SettingValidationHostedService /
:0 1
IHostedService2 @
{ 
readonly 
IEnumerable 
< +
ISettingValidationStartupFilter <
>< =+
_settingValidationStartupFilter> ]
;] ^
public *
SettingValidationHostedService -
(- .
IEnumerable. 9
<9 :+
ISettingValidationStartupFilter: Y
>Y Z*
settingValidationStartupFilter[ y
)y z
{ 	
this 
. +
_settingValidationStartupFilter 0
=1 2*
settingValidationStartupFilter3 Q
;Q R
} 	
public## 
Task## 

StartAsync## 
(## 
CancellationToken## 0
cancellationToken##1 B
)##B C
{$$ 	
foreach%% 
(%% +
ISettingValidationStartupFilter%% 4*
settingValidationStartupFilter%%5 S
in%%T V
this%%W [
.%%[ \+
_settingValidationStartupFilter%%\ {
)%%{ |
{&& *
settingValidationStartupFilter'' .
.''. /
Validate''/ 7
(''7 8
)''8 9
;''9 :
}(( 
return** 
Task** 
.** 
CompletedTask** %
;**% &
}++ 	
public44 
Task44 
	StopAsync44 
(44 
CancellationToken44 /
cancellationToken440 A
)44A B
=>44C E
Task44F J
.44J K
CompletedTask44K X
;44X Y
}55 
}66 ˇ
nD:\DotNetCore\DotNetCoreAPI\Infrastructure\Configurations\ValidationServices\SettingValidationStartupFilter.cs
	namespace 	
Infrastructure
 
. 
Configurations '
.' (
ValidationServices( :
{ 
public 

class *
SettingValidationStartupFilter /
:0 1
IStartupFilter2 @
{ 
private 
readonly 
IEnumerable $
<$ %+
ISettingValidationStartupFilter% D
>D E,
 _settingValidationStartupFiltersF f
;f g
public *
SettingValidationStartupFilter -
(- .
IEnumerable. 9
<9 :+
ISettingValidationStartupFilter: Y
>Y Z+
settingValidationStartupFilters[ z
)z {
{ 	
this 
. ,
 _settingValidationStartupFilters 1
=2 3+
settingValidationStartupFilters4 S
;S T
} 	
public## 
Action## 
<## 
IApplicationBuilder## )
>##) *
	Configure##+ 4
(##4 5
Action##5 ;
<##; <
IApplicationBuilder##< O
>##O P
next##Q U
)##U V
{$$ 	
foreach%% 
(%% +
ISettingValidationStartupFilter%% 4*
settingValidationStartupFilter%%5 S
in%%T V
this%%W [
.%%[ \,
 _settingValidationStartupFilters%%\ |
)%%| }
{&& *
settingValidationStartupFilter'' .
.''. /
Validate''/ 7
(''7 8
)''8 9
;''9 :
}(( 
return** 
next** 
;** 
}++ 	
},, 
}-- ¯
HD:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\AspNetUsers.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

class 
AspNetUsers 
: 
IDatabaseEntity -
{		 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public   
string   
NormalizedUserName   (
{  ) *
get  + .
;  . /
set  0 3
;  3 4
}  5 6
public(( 
string(( 
Email(( 
{(( 
get(( !
;((! "
set((# &
;((& '
}((( )
public00 
string00 
NormalizedEmail00 %
{00& '
get00( +
;00+ ,
set00- 0
;000 1
}002 3
public88 
bool88 
EmailConfirmed88 "
{88# $
get88% (
;88( )
set88* -
;88- .
}88/ 0
public@@ 
string@@ 
PasswordHash@@ "
{@@# $
get@@% (
;@@( )
set@@* -
;@@- .
}@@/ 0
publicHH 
stringHH 
SecurityStampHH #
{HH$ %
getHH& )
;HH) *
setHH+ .
;HH. /
}HH0 1
publicPP 
stringPP 
ConcurrencyStampPP &
{PP' (
getPP) ,
;PP, -
setPP. 1
;PP1 2
}PP3 4
publicXX 
stringXX 
PhoneNumberXX !
{XX" #
getXX$ '
;XX' (
setXX) ,
;XX, -
}XX. /
public`` 
bool``  
PhoneNumberConfirmed`` (
{``) *
get``+ .
;``. /
set``0 3
;``3 4
}``5 6
publichh 
boolhh 
TwoFactorEnabledhh $
{hh% &
gethh' *
;hh* +
sethh, /
;hh/ 0
}hh1 2
publicpp 
objectpp 

LockoutEndpp  
{pp! "
getpp# &
;pp& '
setpp( +
;pp+ ,
}pp- .
publicxx 
boolxx 
LockoutEnabledxx "
{xx# $
getxx% (
;xx( )
setxx* -
;xx- .
}xx/ 0
public
ÄÄ 
int
ÄÄ 
AccessFailedCount
ÄÄ $
{
ÄÄ% &
get
ÄÄ' *
;
ÄÄ* +
set
ÄÄ, /
;
ÄÄ/ 0
}
ÄÄ1 2
public
àà 
DateTime
àà 
DateRegistration
àà (
{
àà) *
get
àà+ .
;
àà. /
set
àà0 3
;
àà3 4
}
àà5 6
}
ââ 
}ää •
ED:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\Category.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
Category !
:" #
IDatabaseEntity$ 3
{		 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public   
bool   
IsLocked   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
public(( 
string(( 
	CreatedBy(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public00 
DateTime00 
	CreatedOn00 !
{00" #
get00$ '
;00' (
set00) ,
;00, -
}00. /
public88 
string88 
	UpdatedBy88 
{88  !
get88" %
;88% &
set88' *
;88* +
}88, -
public@@ 
DateTime@@ 
?@@ 
	UpdatedOn@@ "
{@@# $
get@@% (
;@@( )
set@@* -
;@@- .
}@@/ 0
}AA 
}BB €
DD:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\Devices.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

class 
Devices 
: 
IDatabaseEntity *
{		 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public   
string   
MobileNumber   "
{  # $
get  % (
;  ( )
set  * -
;  - .
}  / 0
public(( 
string(( 
DeviceToken(( !
{((" #
get(($ '
;((' (
set(() ,
;((, -
}((. /
public00 
string00 
RegistrationToken00 '
{00( )
get00* -
;00- .
set00/ 2
;002 3
}004 5
public88 
int88 
?88 
DeviceTypeId88  
{88! "
get88# &
;88& '
set88( +
;88+ ,
}88- .
public@@ 
DateTime@@ 
?@@ 
	CreatedOn@@ "
{@@# $
get@@% (
;@@( )
set@@* -
;@@- .
}@@/ 0
publicHH 
DateTimeHH 
?HH 
	UpdatedOnHH "
{HH# $
getHH% (
;HH( )
setHH* -
;HH- .
}HH/ 0
}II 
}JJ ™
LD:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\IDatabaseEntity.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

	interface 
IDatabaseEntity $
{ 
} 
}		 í
ID:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\RefreshToken.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public		 

class		 
RefreshToken		 
:		 
IDatabaseEntity		  /
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public!! 
string!! 
Token!! 
{!! 
get!! !
;!!! "
set!!# &
;!!& '
}!!( )
public)) 
bool)) 
IsUsed)) 
{)) 
get))  
;))  !
set))" %
;))% &
}))' (
public11 
bool11 
	IsRevoked11 
{11 
get11  #
;11# $
set11% (
;11( )
}11* +
public99 
DateTime99 
	CreatedOn99 !
{99" #
get99$ '
;99' (
set99) ,
;99, -
}99. /
publicAA 
DateTimeAA 
?AA 
	ExpiredOnAA "
{AA# $
getAA% (
;AA( )
setAA* -
;AA- .
}AA/ 0
}BB 
}CC «
HD:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\SubCategory.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
SubCategory $
:% &
IDatabaseEntity' 6
{		 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 

CategoryId 
{ 
get  #
;# $
set% (
;( )
}* +
public   
string   
Name   
{   
get    
;    !
set  " %
;  % &
}  ' (
public(( 
string(( 
	ImagePath(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
public00 
bool00 
IsLocked00 
{00 
get00 "
;00" #
set00$ '
;00' (
}00) *
public88 
int88 
PlaysPerDay88 
{88  
get88! $
;88$ %
set88& )
;88) *
}88+ ,
public@@ 
string@@ 
Description@@ !
{@@" #
get@@$ '
;@@' (
set@@) ,
;@@, -
}@@. /
publicHH 
intHH 
RepetitionsHH 
{HH  
getHH! $
;HH$ %
setHH& )
;HH) *
}HH+ ,
publicPP 
intPP 
TotalPointsPP 
{PP  
getPP! $
;PP$ %
setPP& )
;PP) *
}PP+ ,
publicXX 
stringXX 
	CreatedByXX 
{XX  !
getXX" %
;XX% &
setXX' *
;XX* +
}XX, -
public`` 
DateTime`` 
	CreatedOn`` !
{``" #
get``$ '
;``' (
set``) ,
;``, -
}``. /
publichh 
stringhh 
	UpdatedByhh 
{hh  !
gethh" %
;hh% &
sethh' *
;hh* +
}hh, -
publicpp 
DateTimepp 
	UpdatedOnpp !
{pp" #
getpp$ '
;pp' (
setpp) ,
;pp, -
}pp. /
}qq 
}rr ∂
ID:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\UserCategory.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
UserCategory %
:& '
IDatabaseEntity( 7
{		 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public   
int   

CategoryId   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public(( 
string(( 
AttributeKey(( "
{((# $
get((% (
;((( )
set((* -
;((- .
}((/ 0
public00 
string00 
AttributeValue00 $
{00% &
get00' *
;00* +
set00, /
;00/ 0
}001 2
public88 
string88 
	UpdatedBy88 
{88  !
get88" %
;88% &
set88' *
;88* +
}88, -
public@@ 
DateTime@@ 
?@@ 
	UpdatedOn@@ "
{@@# $
get@@% (
;@@( )
set@@* -
;@@- .
}@@/ 0
}AA 
}BB ‹
HD:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\UserProfile.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
UserProfile $
:% &
IDatabaseEntity' 6
{		 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public   
string   
MobileNumber   "
{  # $
get  % (
;  ( )
set  * -
;  - .
}  / 0
public(( 
string(( 
EmailAddress(( "
{((# $
get((% (
;((( )
set((* -
;((- .
}((/ 0
public00 
int00 
?00 
Age00 
{00 
get00 
;00 
set00 "
;00" #
}00$ %
public88 
string88 
Name88 
{88 
get88  
;88  !
set88" %
;88% &
}88' (
public@@ 
string@@ 
FootballClub@@ "
{@@# $
get@@% (
;@@( )
set@@* -
;@@- .
}@@/ 0
publicHH 
stringHH 
PositionHH 
{HH  
getHH! $
;HH$ %
setHH& )
;HH) *
}HH+ ,
publicPP 
stringPP 
CountryPP 
{PP 
getPP  #
;PP# $
setPP% (
;PP( )
}PP* +
publicXX 
stringXX 
CountryCodeXX !
{XX" #
getXX$ '
;XX' (
setXX) ,
;XX, -
}XX. /
public`` 
bool`` 
?`` 
	IsDeleted`` 
{``  
get``! $
;``$ %
set``& )
;``) *
}``+ ,
publichh 
stringhh 
VerificationCodehh &
{hh' (
gethh) ,
;hh, -
sethh. 1
;hh1 2
}hh3 4
publicpp 
stringpp 
	UpdatedBypp 
{pp  !
getpp" %
;pp% &
setpp' *
;pp* +
}pp, -
publicxx 
DateTimexx 
?xx 
	CreatedOnxx "
{xx# $
getxx% (
;xx( )
setxx* -
;xx- .
}xx/ 0
public
ÄÄ 
DateTime
ÄÄ 
?
ÄÄ 
	UpdatedOn
ÄÄ "
{
ÄÄ# $
get
ÄÄ% (
;
ÄÄ( )
set
ÄÄ* -
;
ÄÄ- .
}
ÄÄ/ 0
}
ÅÅ 
}ÇÇ €
LD:\DotNetCore\DotNetCoreAPI\Infrastructure\DatabaseModels\UserSubCategory.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
UserSubCategory (
:) *
IDatabaseEntity+ :
{		 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
UserId 
{ 
get "
;" #
set$ '
;' (
}) *
public   
int   
SubCategoryId    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
public(( 
string(( 
AttributeKey(( "
{((# $
get((% (
;((( )
set((* -
;((- .
}((/ 0
public00 
string00 
AttributeValue00 $
{00% &
get00' *
;00* +
set00, /
;00/ 0
}001 2
public88 
int88 
Repetitions88 
{88  
get88! $
;88$ %
set88& )
;88) *
}88+ ,
public@@ 
string@@ 
	UpdatedBy@@ 
{@@  !
get@@" %
;@@% &
set@@' *
;@@* +
}@@, -
publicHH 
DateTimeHH 
?HH 
	UpdatedOnHH "
{HH# $
getHH% (
;HH( )
setHH* -
;HH- .
}HH/ 0
}II 
}JJ ∆
>D:\DotNetCore\DotNetCoreAPI\Infrastructure\Enums\ErrorCodes.cs
	namespace 	
Infrastructure
 
. 
Enums 
{ 
public 

enum 

ErrorCodes 
{ 
Created 
= 
$num 
, 

BadRequest 
= 
$num 
, 
Unauthorized 
= 
$num 
, 
	Forbidden 
= 
$num 
, 
NotFound 
= 
$num 
, 
Conflict$$ 
=$$ 
$num$$ 
,$$ 
UnprocessableEntity)) 
=)) 
$num)) !
,))! "
InternalServerError.. 
=.. 
$num.. !
}// 
}00 Ä
AD:\DotNetCore\DotNetCoreAPI\Infrastructure\Enums\ErrorMessages.cs
	namespace 	
Infrastructure
 
. 
Enums 
{ 
public 

enum 
ErrorMessages 
{ !
INTERNAL_SERVER_ERROR 
, .
"MODEL_BINDER_DESERIALIZATION_ERROR *
,* +'
MODEL_BINDING_CONTEXT_ERROR #
,# $+
CONTROLLER_FACTORY_CONTEXT_NULL '
,' (
UNAUTHORIZED_ERROR 
, 
FORBIDDEN_ERROR$$ 
,$$ 
USER_ALREADY_EXIST)) 
,)) 
USER_NOT_CREATED.. 
,.. "
USER_NOT_ADDED_TO_ROLE33 
,33 
ROLE_ALREADY_EXIST88 
,88 &
USER_PROFILE_ALREADY_EXIST== "
,==" #
USER_NOT_EXISTBB 
,BB 
USER_IS_DISABLEDGG 
,GG *
USER_INVALID_USERNAME_PASSWORDLL &
,LL& '=
1ERROR_OCCURED_WHILE_SENDING_MESSAGE_USING_TWILLIOQQ 9
,QQ9 :*
USER_INVALID_VERIFICATION_CODEVV &
,VV& '"
USER_PROFILE_NOT_EXIST[[ 
,[[ ,
 USER_NOT_SUCCESSFULLY_REGISTERED`` (
,``( )%
USER_CATEGORIES_NOT_EXISTee !
,ee! "#
SUB_CATEGORY_NOT_EXISTSjj 
,jj  
CATEGORY_NOT_EXISTSoo 
,oo 
CLAIMS_NOT_FOUNDtt 
,tt 
CLAIM_NOT_FOUNDyy 
,yy 
TOKEN_IS_NOT_VALID~~ 
,~~ )
SERVICE_PROVIDER_NOT_EXISTS
ÉÉ #
,
ÉÉ# $
SQL_EXCEPTION
àà 
,
àà 
TOKEN_IS_EXPIRED
çç 
}
éé 
}èè «	
AD:\DotNetCore\DotNetCoreAPI\Infrastructure\Enums\LanguageCodes.cs
	namespace 	
Infrastructure
 
. 
Enums 
{ 
public 

enum 
LanguageCodes 
{		 
[ 	
Description	 
( 
$str 
) 
] 
English 
, 
[ 	
Description	 
( 
$str 
) 
] 
Spain 
, 
[ 	
Description	 
( 
$str 
) 
] 
France 
, 
[ 	
Description	 
( 
$str 
) 
] 
Italy   
,   
[%% 	
Description%%	 
(%% 
$str%% 
)%% 
]%% 
Germany&& 
,&& 
[++ 	
Description++	 
(++ 
$str++ 
)++ 
]++ 
Denmark,, 
,,, 
[11 	
Description11	 
(11 
$str11 
)11 
]11 
Sweden22 
}33 
}44 ±
HD:\DotNetCore\DotNetCoreAPI\Infrastructure\Enums\MiddlewareClaimTypes.cs
	namespace 	
Infrastructure
 
. 
Enums 
{ 
public 

enum  
MiddlewareClaimTypes $
{		 
[ 	
Description	 
( 
$str "
)" #
]# $
Name 
, 
[ 	
Description	 
( 
$str 
) 
] 
Email 
, 
[ 	
Description	 
( 
$str 
) 
] 
UserId 
, 
[ 	
Description	 
( 
$str 
) 
] 
Role   
}!! 
}""  
=D:\DotNetCore\DotNetCoreAPI\Infrastructure\Enums\UserRoles.cs
	namespace 	
Infrastructure
 
. 
Enums 
{ 
public 

enum 
	UserRoles 
{ 
Admin 
, 
User 
, 
} 
} è
JD:\DotNetCore\DotNetCoreAPI\Infrastructure\Exceptions\LevelsUpException.cs
	namespace 	
Infrastructure
 
. 

Exceptions #
{ 
[ 
Serializable 
] 
public 

class 
LevelsUpException "
:# $
	Exception% .
{ 
public 

ErrorCodes 
	ErrorCode #
=$ %

ErrorCodes& 0
.0 1

BadRequest1 ;
;; <
public 
object 
[ 
] 
	arguments !
=" #
null$ (
;( )
public 
LevelsUpException  
(  !
)! "
: 	
base
 
( 
) 
{ 
} 
public## 
LevelsUpException##  
(##  !
ErrorMessages##! .
message##/ 6
,##6 7

ErrorCodes##8 B
	errorCode##C L
=##M N

ErrorCodes##O Y
.##Y Z

BadRequest##Z d
)##d e
:$$ 
base$$ 
($$ 
message$$ 
.$$ 
ToString$$ #
($$# $
)$$$ %
)$$% &
{%% 	
this&& 
.&& 
	ErrorCode&& 
=&& 
	errorCode&& &
;&&& '
}'' 	
public// 
LevelsUpException//  
(//  !
ErrorMessages//! .
message/// 6
,//6 7

ErrorCodes//8 B
	errorCode//C L
=//M N

ErrorCodes//O Y
.//Y Z

BadRequest//Z d
,//d e
params//f l
object//m s
[//s t
]//t u
args//v z
)//z {
://| }
base	//~ Ç
(
//Ç É
message
//É ä
.
//ä ã
ToString
//ã ì
(
//ì î
)
//î ï
)
//ï ñ
{00 	
this11 
.11 
	ErrorCode11 
=11 
	errorCode11 &
;11& '
this22 
.22 
	arguments22 
=22 
args22 !
;22! "
}33 	
public:: 
LevelsUpException::  
(::  !
string::! '
format::( .
,::. /
params::0 6
object::7 =
[::= >
]::> ?
args::@ D
)::D E
:;; 
base;; 
(;; 
string;; 
.;; 
Format;;  
(;;  !
format;;! '
,;;' (
args;;) -
);;- .
);;. /
{;;0 1
};;2 3
publicBB 
LevelsUpExceptionBB  
(BB  !
ErrorMessagesBB! .
messageBB/ 6
,BB6 7
	ExceptionBB8 A
innerExceptionBBB P
)BBP Q
:CC 
baseCC 
(CC 
messageCC 
.CC 
ToStringCC #
(CC# $
)CC$ %
,CC% &
innerExceptionCC' 5
)CC5 6
{CC7 8
}CC9 :
publicKK 
LevelsUpExceptionKK  
(KK  !
stringKK! '
formatKK( .
,KK. /
	ExceptionKK0 9
innerExceptionKK: H
,KKH I
paramsKKJ P
objectKKQ W
[KKW X
]KKX Y
argsKKZ ^
)KK^ _
:LL 
baseLL 
(LL 
stringLL 
.LL 
FormatLL  
(LL  !
formatLL! '
,LL' (
argsLL) -
)LL- .
,LL. /
innerExceptionLL0 >
)LL> ?
{LL@ A
}LLB C
	protectedSS 
LevelsUpExceptionSS #
(SS# $
SerializationInfoSS$ 5
infoSS6 :
,SS: ;
StreamingContextSS< L
contextSSM T
)SST U
:TT 
baseTT 
(TT 
infoTT 
,TT 
contextTT  
)TT  !
{TT" #
}TT$ %
}UU 
}VV Ö
TD:\DotNetCore\DotNetCoreAPI\Infrastructure\Exceptions\SettingsValidationException.cs
	namespace 	
Infrastructure
 
. 

Exceptions #
{ 
[

 
Serializable

 
]

 
public 

class '
SettingsValidationException ,
:- .
	Exception/ 8
{ 
public '
SettingsValidationException *
(* +
string+ 1
	className2 ;
,; <
string= C
propertyNameD P
,P Q
stringR X
errorY ^
)^ _
:` a
thisb f
(f g

GetMessageg q
(q r
	classNamer {
,{ |
propertyName	} â
,
â ä
error
ã ê
)
ê ë
)
ë í
{ 	
} 	
private   
static   
string   

GetMessage   (
(  ( )
string  ) /
	className  0 9
,  9 :
string  ; A
propertyName  B N
,  N O
string  P V
message  W ^
)  ^ _
{!! 	
return"" 
$@""" #
Settings were invalid: "" -
{""- .
	className"". 7
}""7 8
.""8 9
{""9 :
propertyName"": F
}""F G
. ""G I
{""I J
message""J Q
}""Q Rõ
ç. 
                    Check that your configuration has been loaded correctly, and all necessary values are set in the configuration files.	"#R â
"
##â ä
;
##ä ã
}$$ 	
public** '
SettingsValidationException** *
(*** +
string**+ 1
errorMessage**2 >
)**> ?
:**@ A
base**B F
(**F G
errorMessage**G S
)**S T
{++ 	
}-- 	
}.. 
}// Â
bD:\DotNetCore\DotNetCoreAPI\Infrastructure\ExtensionMethods\DatabaseModels\UserProfileExtension.cs
	namespace 	
Infrastructure
 
. 
ExtensionMethods )
.) *
DatabaseModels* 8
{ 
public 

static 
class  
UserProfileExtension ,
{		 
public 
static 
string 
GetMobileNumber ,
(, -
this- 1
UserProfile2 =
userProfile> I
)I J
{ 	
return 
string 
. 
Concat  
(  !
userProfile! ,
., -
CountryCode- 8
,8 9
userProfile: E
.E F
MobileNumberF R
)R S
;S T
} 	
} 
} ª
cD:\DotNetCore\DotNetCoreAPI\Infrastructure\ExtensionMethods\Framework\AutoMapperExtensionMethods.cs
	namespace 	
Infrastructure
 
. 
ExtensionMethods )
.) *
	Framework* 3
{ 
public

 

static

 
class

 &
AutoMapperExtensionMethods

 2
{ 
public 
static 
TEntity 
MapTo #
<# $
TEntity$ +
>+ ,
(, -
this- 1
IDatabaseEntity2 A
entityB H
)H I
whereJ O
TEntityP W
:X Y
classZ _
{ 	
IMapper 

automapper 
=  
ServiceHelpers! /
./ 0
	GetMapper0 9
(9 :
): ;
;; <
return 

automapper 
. 
Map !
<! "
TEntity" )
>) *
(* +
entity+ 1
)1 2
;2 3
} 	
} 
} ª
_D:\DotNetCore\DotNetCoreAPI\Infrastructure\ExtensionMethods\Framework\ClaimsExtensionMethods.cs
	namespace 	
Infrastructure
 
. 
ExtensionMethods )
.) *
	Framework* 3
{ 
public 

static 
class "
ClaimsExtensionMethods .
{ 
public 
static 
string 
GetClaimValue *
(* +
this+ /
IEnumerable0 ;
<; <
Claim< A
>A B
claimsC I
,I J
stringK Q
	claimTypeR [
)[ \
{ 	
if 
( 
claims 
== 
null 
) 
{ 
throw 
new 
LevelsUpException +
(+ ,
ErrorMessages, 9
.9 :
CLAIMS_NOT_FOUND: J
,J K

ErrorCodesL V
.V W
UnauthorizedW c
)c d
;d e
} 
if   
(   
!   
claims   
.   
Any   
(   
claim   !
=>  " $
claim  % *
.  * +
Type  + /
==  0 2
	claimType  3 <
)  < =
)  = >
{!! 
throw"" 
new"" 
LevelsUpException"" +
(""+ ,
ErrorMessages"", 9
.""9 :
CLAIM_NOT_FOUND"": I
,""I J

ErrorCodes""K U
.""U V
Unauthorized""V b
,""b c
	claimType""d m
)""m n
;""n o
}## 
return%% 
claims%% 
.%% 
FirstOrDefault%% (
(%%( )
claim%%) .
=>%%/ 1
claim%%2 7
.%%7 8
Type%%8 <
==%%= ?
	claimType%%@ I
)%%I J
.%%J K
Value%%K P
;%%P Q
}&& 	
}'' 
}(( Á
fD:\DotNetCore\DotNetCoreAPI\Infrastructure\ExtensionMethods\Framework\ConfigurationExtensionMethods.cs
	namespace 	
Infrastructure
 
. 
ExtensionMethods )
.) *
	Framework* 3
{ 
public		 

static		 
class		 )
ConfigurationExtensionMethods		 5
{

 
public 
static 
string ,
 GetLinuxServerApplicationAddress =
(= >
this> B
IConfigurationC Q
configurationR _
)_ `
{ 	
return 
configuration  
.  !

GetSection! +
(+ ,
nameof, 2
(2 3
AppSettings3 >
)> ?
)? @
.@ A
GetA D
<D E
AppSettingsE P
>P Q
(Q R
)R S
.S T
LinuxIpAddressT b
;b c
} 	
} 
} ªA
dD:\DotNetCore\DotNetCoreAPI\Infrastructure\ExtensionMethods\Framework\HttpContextExtensionMethods.cs
	namespace 	
Infrastructure
 
. 
ExtensionMethods )
.) *
	Framework* 3
{ 
public		 

static		 
class		 '
HttpContextExtensionMethods		 3
{

 
public 
static 
string 
GetCurrentUserId -
(- .
this. 2 
IHttpContextAccessor3 G
httpContextAccessorH [
)[ \
{ 	
string 
userId 
= 
string "
." #
Empty# (
;( )
HttpContext 
httpContext #
=$ %
httpContextAccessor& 9
.9 :
HttpContext: E
;E F
if 
( 
httpContext 
!= 
null #
)# $
{ 
bool 
	hasUserId 
=  
httpContext! ,
., -
User- 1
.1 2
HasClaim2 :
(: ;
x; <
=>= ?
x@ A
.A B
TypeB F
==G I

ClaimTypesJ T
.T U
NameIdentifierU c
)c d
;d e
if 
( 
	hasUserId 
) 
{ 
userId 
= 
httpContext (
.( )
User) -
.- .
	FindFirst. 7
(7 8
x8 9
=>: <
x= >
.> ?
Type? C
==D F

ClaimTypesG Q
.Q R
NameIdentifierR `
)` a
.a b
Valueb g
??h j
nullk o
;o p
} 
}   
return"" 
userId"" 
;"" 
}## 	
public,, 
static,, 
string,, 
GetCurrentUserName,, /
(,,/ 0
this,,0 4 
IHttpContextAccessor,,5 I
httpContextAccessor,,J ]
),,] ^
{-- 	
string.. 
userName.. 
=.. 
string.. $
...$ %
Empty..% *
;..* +
HttpContext00 
httpContext00 #
=00$ %
httpContextAccessor00& 9
.009 :
HttpContext00: E
;00E F
if22 
(22 
httpContext22 
!=22 
null22 #
)22# $
{33 
bool44 
hasUserName44  
=44! "
httpContext44# .
.44. /
User44/ 3
.443 4
HasClaim444 <
(44< =
x44= >
=>44? A
x44B C
.44C D
Type44D H
==44I K

ClaimTypes44L V
.44V W
Name44W [
)44[ \
;44\ ]
if66 
(66 
hasUserName66 
)66  
{77 
userName88 
=88 
httpContext88 *
.88* +
User88+ /
.88/ 0
	FindFirst880 9
(889 :
x88: ;
=>88< >
x88? @
.88@ A
Type88A E
==88F H

ClaimTypes88I S
.88S T
Name88T X
)88X Y
.88Y Z
Value88Z _
??88` b
null88c g
;88g h
}99 
}:: 
return<< 
userName<< 
;<< 
}== 	
publicFF 
staticFF 
stringFF 
GetCurrentUserEmailFF 0
(FF0 1
thisFF1 5 
IHttpContextAccessorFF6 J
httpContextAccessorFFK ^
)FF^ _
{GG 	
stringHH 
	userEmailHH 
=HH 
stringHH %
.HH% &
EmptyHH& +
;HH+ ,
HttpContextJJ 
httpContextJJ #
=JJ$ %
httpContextAccessorJJ& 9
.JJ9 :
HttpContextJJ: E
;JJE F
ifLL 
(LL 
httpContextLL 
!=LL 
nullLL #
)LL# $
{MM 
boolNN 
hasUserEmailNN !
=NN" #
httpContextNN$ /
.NN/ 0
UserNN0 4
.NN4 5
HasClaimNN5 =
(NN= >
xNN> ?
=>NN@ B
xNNC D
.NND E
TypeNNE I
==NNJ L

ClaimTypesNNM W
.NNW X
EmailNNX ]
)NN] ^
;NN^ _
ifPP 
(PP 
hasUserEmailPP  
)PP  !
{QQ 
	userEmailRR 
=RR 
httpContextRR  +
.RR+ ,
UserRR, 0
.RR0 1
	FindFirstRR1 :
(RR: ;
xRR; <
=>RR= ?
xRR@ A
.RRA B
TypeRRB F
==RRG I

ClaimTypesRRJ T
.RRT U
EmailRRU Z
)RRZ [
.RR[ \
ValueRR\ a
??RRb d
nullRRe i
;RRi j
}SS 
}TT 
returnVV 
	userEmailVV 
;VV 
}WW 	
public`` 
static`` 
string`` 
GetCurrentUserRole`` /
(``/ 0
this``0 4 
IHttpContextAccessor``5 I
httpContextAccessor``J ]
)``] ^
{aa 	
stringbb 
userRolebb 
=bb 
stringbb $
.bb$ %
Emptybb% *
;bb* +
HttpContextdd 
httpContextdd #
=dd$ %
httpContextAccessordd& 9
.dd9 :
HttpContextdd: E
;ddE F
ifff 
(ff 
httpContextff 
!=ff 
nullff #
)ff# $
{gg 
boolhh 
hasUserRolehh  
=hh! "
httpContexthh# .
.hh. /
Userhh/ 3
.hh3 4
HasClaimhh4 <
(hh< =
xhh= >
=>hh? A
xhhB C
.hhC D
TypehhD H
==hhI K

ClaimTypeshhL V
.hhV W
RolehhW [
)hh[ \
;hh\ ]
ifjj 
(jj 
hasUserRolejj 
)jj  
{kk 
userRolell 
=ll 
httpContextll *
.ll* +
Userll+ /
.ll/ 0
	FindFirstll0 9
(ll9 :
xll: ;
=>ll< >
xll? @
.ll@ A
TypellA E
==llF H

ClaimTypesllI S
.llS T
RolellT X
)llX Y
.llY Z
ValuellZ _
??ll` b
nullllc g
;llg h
}mm 
}nn 
returnpp 
userRolepp 
;pp 
}qq 	
publiczz 
staticzz 
stringzz &
GetCurrentUserMobileNumberzz 7
(zz7 8
thiszz8 < 
IHttpContextAccessorzz= Q
httpContextAccessorzzR e
)zze f
{{{ 	
string|| 
userMobileNumber|| #
=||$ %
string||& ,
.||, -
Empty||- 2
;||2 3
HttpContext~~ 
httpContext~~ #
=~~$ %
httpContextAccessor~~& 9
.~~9 :
HttpContext~~: E
;~~E F
if
ÄÄ 
(
ÄÄ 
httpContext
ÄÄ 
!=
ÄÄ 
null
ÄÄ #
)
ÄÄ# $
{
ÅÅ 
bool
ÇÇ !
hasUserMobileNumber
ÇÇ (
=
ÇÇ) *
httpContext
ÇÇ+ 6
.
ÇÇ6 7
User
ÇÇ7 ;
.
ÇÇ; <
HasClaim
ÇÇ< D
(
ÇÇD E
x
ÇÇE F
=>
ÇÇG I
x
ÇÇJ K
.
ÇÇK L
Type
ÇÇL P
==
ÇÇQ S

ClaimTypes
ÇÇT ^
.
ÇÇ^ _
MobilePhone
ÇÇ_ j
)
ÇÇj k
;
ÇÇk l
if
ÑÑ 
(
ÑÑ !
hasUserMobileNumber
ÑÑ '
)
ÑÑ' (
{
ÖÖ 
userMobileNumber
ÜÜ $
=
ÜÜ% &
httpContext
ÜÜ' 2
.
ÜÜ2 3
User
ÜÜ3 7
.
ÜÜ7 8
	FindFirst
ÜÜ8 A
(
ÜÜA B
x
ÜÜB C
=>
ÜÜD F
x
ÜÜG H
.
ÜÜH I
Type
ÜÜI M
==
ÜÜN P

ClaimTypes
ÜÜQ [
.
ÜÜ[ \
MobilePhone
ÜÜ\ g
)
ÜÜg h
.
ÜÜh i
Value
ÜÜi n
??
ÜÜo q
null
ÜÜr v
;
ÜÜv w
}
áá 
}
àà 
return
ää 
userMobileNumber
ää #
;
ää# $
}
ãã 	
}
åå 
}çç ∏

]D:\DotNetCore\DotNetCoreAPI\Infrastructure\ExtensionMethods\Framework\ListExtensionMethods.cs
	namespace 	
Infrastructure
 
. 
ExtensionMethods )
.) *
	Framework* 3
{ 
public		 

static		 
class		  
ListExtensionMethods		 ,
{

 
public 
static 
bool 
IsAny  
<  !
T! "
>" #
(# $
this$ (
IList) .
<. /
T/ 0
>0 1
source2 8
)8 9
{ 	
return 
source 
!= 
null !
&&" $
source% +
.+ ,
Any, /
(/ 0
)0 1
;1 2
} 	
public   
static   
bool   
IsNotAny   #
<  # $
T  $ %
>  % &
(  & '
this  ' +
IList  , 1
<  1 2
T  2 3
>  3 4
source  5 ;
)  ; <
{!! 	
return"" 
source"" 
=="" 
null"" !
||""" $
!""% &
source""& ,
."", -
Any""- 0
(""0 1
)""1 2
;""2 3
}## 	
}$$ 
}%% œ7
jD:\DotNetCore\DotNetCoreAPI\Infrastructure\ExtensionMethods\Framework\ServiceCollectionExtensionMethods.cs
	namespace 	
Infrastructure
 
. 
ExtensionMethods )
.) *
	Framework* 3
{ 
public 

static 
class -
!ServiceCollectionExtensionMethods 9
{ 
public 
static 
IServiceCollection (&
UseConfigurationValidation) C
(C D
thisD H
IServiceCollectionI [
services\ d
)d e
{ 	
if 
( 
services 
. 
IsNetStandard2_1 )
() *
)* +
)+ ,
{ 
return 
services 
.  
AddTransient  ,
<, -
IHostedService- ;
,; <*
SettingValidationHostedService= [
>[ \
(\ ]
)] ^
;^ _
} 
else 
{   
return!! 
services!! 
.!!  
AddTransient!!  ,
<!!, -
IStartupFilter!!- ;
,!!; <*
SettingValidationStartupFilter!!= [
>!![ \
(!!\ ]
)!!] ^
;!!^ _
}"" 
}## 	
public.. 
static.. 
IServiceCollection.. ('
ConfigureValidatableSetting..) D
<..D E
TOptions..E M
>..M N
(..N O
this..O S
IServiceCollection..T f
services..g o
,..o p
IConfiguration..q 
configuration
..Ä ç
)
..ç é
where// 
TOptions// 
:// 
class// 
,// +
ISettingValidationStartupFilter//  ?
,//? @
new//A D
(//D E
)//E F
{00 	
services11 
.11 
	Configure11 
<11 
TOptions11 '
>11' (
(11( )
configuration11) 6
)116 7
;117 8
services22 
.22 
AddSingleton22 !
<22! "
TOptions22" *
>22* +
(22+ ,
ctx22, /
=>220 2
ctx223 6
.226 7
GetRequiredService227 I
<22I J
IOptions22J R
<22R S
TOptions22S [
>22[ \
>22\ ]
(22] ^
)22^ _
.22_ `
Value22` e
)22e f
;22f g
services33 
.33 
AddSingleton33 !
<33! "+
ISettingValidationStartupFilter33" A
>33A B
(33B C
ctx33C F
=>33G I
ctx33J M
.33M N
GetRequiredService33N `
<33` a
IOptions33a i
<33i j
TOptions33j r
>33r s
>33s t
(33t u
)33u v
.33v w
Value33w |
)33| }
;33} ~
return44 
services44 
;44 
}55 	
public== 
static== 
void== 
AddProxiedScoped== +
<==+ ,

TInterface==, 6
,==6 7
TImplementation==8 G
>==G H
(==H I
this==I M
IServiceCollection==N `
services==a i
)==i j
where>> 

TInterface>> 
:>> 
class>> $
where?? 
TImplementation?? !
:??" #
class??$ )
,??) *

TInterface??+ 5
{@@ 	
servicesAA 
.AA 
	AddScopedAA 
<AA 
TImplementationAA .
>AA. /
(AA/ 0
)AA0 1
;AA1 2
servicesBB 
.BB 
	AddScopedBB 
(BB 
typeofBB %
(BB% &

TInterfaceBB& 0
)BB0 1
,BB1 2
serviceProviderBB3 B
=>BBC E
{CC 
ProxyGeneratorDD 
proxyGeneratorDD -
=DD. /
serviceProviderDD0 ?
.DD? @
GetRequiredServiceDD@ R
<DDR S
ProxyGeneratorDDS a
>DDa b
(DDb c
)DDc d
;DDd e
TImplementationEE 
actualEE  &
=EE' (
serviceProviderEE) 8
.EE8 9
GetRequiredServiceEE9 K
<EEK L
TImplementationEEL [
>EE[ \
(EE\ ]
)EE] ^
;EE^ _
IInterceptorFF 
[FF 
]FF 
interceptorsFF +
=FF, -
serviceProviderFF. =
.FF= >
GetServicesFF> I
<FFI J
IInterceptorFFJ V
>FFV W
(FFW X
)FFX Y
.FFY Z
ToArrayFFZ a
(FFa b
)FFb c
;FFc d
returnGG 
proxyGeneratorGG %
.GG% &*
CreateInterfaceProxyWithTargetGG& D
(GGD E
typeofGGE K
(GGK L

TInterfaceGGL V
)GGV W
,GGW X
actualGGY _
,GG_ `
interceptorsGGa m
)GGm n
;GGn o
}HH 
)HH 
;HH 
}II 	
publicSS 
staticSS 
voidSS 
AddProxiedScopedSS +
(SS+ ,
thisSS, 0
IServiceCollectionSS1 C
servicesSSD L
,SSL M
TypeSSN R

@interfaceSSS ]
,SS] ^
TypeSS_ c
implementationSSd r
)SSr s
{TT 	
servicesUU 
.UU 
	AddScopedUU 
(UU 
implementationUU -
)UU- .
;UU. /
servicesVV 
.VV 
	AddScopedVV 
(VV 

@interfaceVV )
,VV) *
serviceProviderVV+ :
=>VV; =
{WW 
ProxyGeneratorXX 
proxyGeneratorXX -
=XX. /
serviceProviderXX0 ?
.XX? @
GetRequiredServiceXX@ R
<XXR S
ProxyGeneratorXXS a
>XXa b
(XXb c
)XXc d
;XXd e
objectYY 
actualYY 
=YY 
serviceProviderYY  /
.YY/ 0
GetRequiredServiceYY0 B
(YYB C
implementationYYC Q
)YYQ R
;YYR S
IInterceptorZZ 
[ZZ 
]ZZ 
interceptorsZZ +
=ZZ, -
serviceProviderZZ. =
.ZZ= >
GetServicesZZ> I
<ZZI J
IInterceptorZZJ V
>ZZV W
(ZZW X
)ZZX Y
.ZZY Z
ToArrayZZZ a
(ZZa b
)ZZb c
;ZZc d
return[[ 
proxyGenerator[[ %
.[[% &*
CreateInterfaceProxyWithTarget[[& D
([[D E

@interface[[E O
,[[O P
actual[[Q W
,[[W X
interceptors[[Y e
)[[e f
;[[f g
}\\ 
)\\ 
;\\ 
}]] 	
publicee 
staticee 
boolee 
IsNetStandard2_1ee +
(ee+ ,
thisee, 0
IServiceCollectionee1 C
serviceseeD L
)eeL M
{ff 	
returnhh 
truehh 
;hh 
}ll 	
}mm 
}nn ≤+
_D:\DotNetCore\DotNetCoreAPI\Infrastructure\ExtensionMethods\Framework\StringExtensionMethods.cs
	namespace		 	
Infrastructure		
 
.		 
ExtensionMethods		 )
.		) *
	Framework		* 3
{

 
public 

static 
class "
StringExtensionMethods .
{ 
public 
static 
string 
ToPascal %
(% &
this& *
string+ 1
value2 7
)7 8
{ 	
StringBuilder 
resultBuilder '
=( )
new* -
StringBuilder. ;
(; <
)< =
;= >
foreach 
( 
char 
	character #
in$ &
value' ,
), -
{ 
if 
( 
! 
char 
. 
IsLetterOrDigit )
() *
	character* 3
)3 4
)4 5
{ 
resultBuilder !
.! "
Append" (
(( )
	Constants) 2
.2 3

EmptySpace3 =
)= >
;> ?
}   
else!! 
{"" 
resultBuilder## !
.##! "
Append##" (
(##( )
	character##) 2
)##2 3
;##3 4
}$$ 
}%% 
string'' 
result'' 
='' 
resultBuilder'' )
.'') *
ToString''* 2
(''2 3
)''3 4
;''4 5
result)) 
=)) 
result)) 
.)) 
ToLower)) #
())# $
)))$ %
;))% &
TextInfo++ 
textInfo++ 
=++ 
new++  #
CultureInfo++$ /
(++/ 0
EnumHelpers++0 ;
.++; <
GetDescription++< J
(++J K
LanguageCodes++K X
.++X Y
English++Y `
)++` a
,++a b
false++c h
)++h i
.++i j
TextInfo++j r
;++r s
result-- 
=-- 
textInfo-- 
.-- 
ToTitleCase-- )
(--) *
result--* 0
)--0 1
.--1 2
Replace--2 9
(--9 :
	Constants--: C
.--C D

EmptySpace--D N
,--N O
string--P V
.--V W
Empty--W \
)--\ ]
;--] ^
return// 
result// 
;// 
}00 	
public99 
static99 
string99 #
GetCommaSeperatedString99 4
<994 5
T995 6
>996 7
(997 8
this998 <
List99= A
<99A B
T99B C
>99C D
value99E J
)99J K
{:: 	
StringBuilder;; 
stringBuilder;; '
=;;( )
new;;* -
StringBuilder;;. ;
(;;; <
);;< =
;;;= >
for== 
(== 
int== 
i== 
=== 
$num== 
;== 
i== 
<== 
value==  %
.==% &
Count==& +
;==+ ,
i==- .
++==. 0
)==0 1
{>> 
if?? 
(?? 
i?? 
<?? 
value?? 
.?? 
Count?? #
-??$ %
$num??& '
)??' (
{@@ 
stringBuilderAA !
.AA! "
AppendAA" (
(AA( )
valueAA) .
[AA. /
iAA/ 0
]AA0 1
.AA1 2
ToStringAA2 :
(AA: ;
)AA; <
+AA= >
$strAA? B
)AAB C
;AAC D
}BB 
elseCC 
{DD 
stringBuilderEE !
.EE! "
AppendEE" (
(EE( )
valueEE) .
[EE. /
iEE/ 0
]EE0 1
.EE1 2
ToStringEE2 :
(EE: ;
)EE; <
)EE< =
;EE= >
}FF 
}GG 
returnII 
stringBuilderII  
.II  !
ToStringII! )
(II) *
)II* +
;II+ ,
}JJ 	
publicSS 
staticSS 
boolSS 
IsNotNullOrEmptySS +
(SS+ ,
thisSS, 0
stringSS1 7
valueSS8 =
)SS= >
{TT 	
returnUU 
!UU 
stringUU 
.UU 
IsNullOrEmptyUU (
(UU( )
valueUU) .
)UU. /
&&UU0 2
!UU3 4
valueUU4 9
.UU9 :
EqualsUU: @
(UU@ A
	ConstantsUUA J
.UUJ K
NullUUK O
)UUO P
;UUP Q
}VV 	
public__ 
static__  
SymmetricSecurityKey__ *)
ConvertToSymmetricSecurityKey__+ H
(__H I
this__I M
string__N T
value__U Z
)__Z [
{`` 	
returnaa 
newaa  
SymmetricSecurityKeyaa +
(aa+ ,
valueaa, 1
.aa1 2
GetEncodedBytesaa2 A
(aaA B
)aaB C
)aaC D
;aaD E
}bb 	
publickk 
statickk 
bytekk 
[kk 
]kk 
GetEncodedByteskk ,
(kk, -
thiskk- 1
stringkk2 8
valuekk9 >
)kk> ?
{ll 	
returnmm 
Encodingmm 
.mm 
ASCIImm !
.mm! "
GetBytesmm" *
(mm* +
valuemm+ 0
)mm0 1
;mm1 2
}nn 	
}oo 
}pp ¥
ID:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\ActionResultHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public 

static 
class 
ActionResultHelpers +
{ 
public 
static 

JsonResult  %
GetUnauthorizedJsonResult! :
(: ;
); <
{ 	
BasicResponse 
basicResponse '
=( )
new* -
BasicResponse. ;
(; <
)< =
{ 
ErrorMessage 
= 
ErrorMessages ,
., -
UNAUTHORIZED_ERROR- ?
.? @
ToString@ H
(H I
)I J
,J K
Success 
= 
false 
} 
; 

JsonResult 

jsonResult !
=" #
new$ '

JsonResult( 2
(2 3
basicResponse3 @
)@ A
;A B

jsonResult 
. 

StatusCode !
=" #
StatusCodes$ /
./ 0!
Status401Unauthorized0 E
;E F

jsonResult 
. 
ContentType "
=# $
ContentTypes% 1
.1 2
Json2 6
;6 7
return   

jsonResult   
;   
}!! 	
public)) 
static)) 

JsonResult))  "
GetForbiddenJsonResult))! 7
())7 8
)))8 9
{** 	
BasicResponse++ 
basicResponse++ '
=++( )
new++* -
BasicResponse++. ;
(++; <
)++< =
{,, 
ErrorMessage-- 
=-- 
ErrorMessages-- ,
.--, -
FORBIDDEN_ERROR--- <
.--< =
ToString--= E
(--E F
)--F G
,--G H
Success.. 
=.. 
false.. 
}// 
;// 

JsonResult11 

jsonResult11 !
=11" #
new11$ '

JsonResult11( 2
(112 3
basicResponse113 @
)11@ A
;11A B

jsonResult22 
.22 

StatusCode22 !
=22" #
StatusCodes22$ /
.22/ 0
Status403Forbidden220 B
;22B C

jsonResult33 
.33 
ContentType33 "
=33# $
ContentTypes33% 1
.331 2
Json332 6
;336 7
return55 

jsonResult55 
;55 
}66 	
public?? 
static?? 

JsonResult??  #
GetBadRequestJsonResult??! 8
(??8 9
string??9 ?
errorMessage??@ L
)??L M
{@@ 	
BasicResponseAA 
basicResponseAA '
=AA( )
newAA* -
BasicResponseAA. ;
(AA; <
)AA< =
{BB 
ErrorMessageCC 
=CC 
$"CC !
{CC! "
errorMessageCC" .
}CC. /
"CC/ 0
,CC0 1
SuccessDD 
=DD 
falseDD 
}EE 
;EE 

JsonResultGG 

jsonResultGG !
=GG" #
newGG$ '

JsonResultGG( 2
(GG2 3
basicResponseGG3 @
)GG@ A
;GGA B

jsonResultHH 
.HH 

StatusCodeHH !
=HH" #
StatusCodesHH$ /
.HH/ 0
Status400BadRequestHH0 C
;HHC D

jsonResultII 
.II 
ContentTypeII "
=II# $
ContentTypesII% 1
.II1 2
JsonII2 6
;II6 7
returnKK 

jsonResultKK 
;KK 
}LL 	
}MM 
}NN ¿
CD:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\CommonHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public

 

static

 
class

 
CommonHelpers

 %
{ 
public 
static 
string 
GetDomainName *
(* +
)+ ,
{ 	
return 
Path 
. 
GetDirectoryName (
(( )
Assembly) 1
.1 2 
GetExecutingAssembly2 F
(F G
)G H
.H I
LocationI Q
)Q R
;R S
} 	
public 
static 
string 
GenrateRandomNumber 0
(0 1
)1 2
{ 	
Random 
random 
= 
new 
Random  &
(& '
)' (
;( )
int 
number 
= 
random 
.  
Next  $
($ %
$num% *
,* +
$num, 1
)1 2
;2 3
int 
finalnumber 
= 
$num 
;  
for 
( 
int 
i 
= 
$num 
; 
i 
< 
Convert  '
.' (
ToString( 0
(0 1
number1 7
)7 8
.8 9
Length9 ?
;? @
iA B
++B D
)D E
{ 
finalnumber   
=   
random   $
.  $ %
Next  % )
(  ) *
number  * 0
,  0 1
$num  2 7
)  7 8
;  8 9
}!! 
return## 
finalnumber## 
.## 
ToString## '
(##' (
)##( )
;##) *
}$$ 	
}%% 
}&& ”+
AD:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\EnumHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public 

static 
class 
EnumHelpers #
{ 
public 
static 
bool 
IsEnum !
<! "
TEnum" '
>' (
(( )
string) /
value0 5
)5 6
where7 <
TEnum= B
:C D
structE K
{ 	
bool 
IsParsed 
= 
false !
;! "
if 
( 
Enum 
. 
TryParse 
< 
TEnum #
># $
($ %
value% *
,* +
out, /
_0 1
)1 2
)2 3
{ 
IsParsed 
= 
true 
;  
} 
return 
IsParsed 
; 
} 	
public)) 
static)) 
TEnum)) 
ToEnum)) "
<))" #
TEnum))# (
>))( )
())) *
string))* 0
value))1 6
)))6 7
where))8 =
TEnum))> C
:))D E
struct))F L
{** 	
Enum++ 
.++ 
TryParse++ 
<++ 
TEnum++ 
>++  
(++  !
value++! &
,++& '
out++( +
TEnum++, 1
val++2 5
)++5 6
;++6 7
return-- 
val-- 
;-- 
}.. 	
public77 
static77 
T77 '
GetEnumValueFromDescription77 3
<773 4
T774 5
>775 6
(776 7
string777 =
description77> I
)77I J
where77K P
T77Q R
:77S T
struct77U [
{88 	
Type99 
type99 
=99 
typeof99 
(99 
T99  
)99  !
;99! "
if;; 
(;; 
!;; 
type;; 
.;; 
IsEnum;; 
);; 
{<< 
throw== 
new== %
InvalidOperationException== 3
(==3 4
)==4 5
;==5 6
}>> 
foreach@@ 
(@@ 
	FieldInfo@@ 
	fieldInfo@@ (
in@@) +
type@@, 0
.@@0 1
	GetFields@@1 :
(@@: ;
)@@; <
)@@< =
{AA  
DescriptionAttributeBB $
	attributeBB% .
=BB/ 0
	AttributeBB1 :
.BB: ;
GetCustomAttributeBB; M
(BBM N
	fieldInfoBBN W
,BBW X
typeofBBY _
(BB_ ` 
DescriptionAttributeBB` t
)BBt u
)BBu v
asBBw y!
DescriptionAttribute	BBz é
;
BBé è
ifCC 
(CC 
	attributeCC 
!=CC  
nullCC! %
)CC% &
{DD 
ifEE 
(EE 
	attributeEE !
.EE! "
DescriptionEE" -
.EE- .
EqualsEE. 4
(EE4 5
descriptionEE5 @
)EE@ A
)EEA B
{FF 
returnGG 
(GG  
TGG  !
)GG! "
	fieldInfoGG" +
.GG+ ,
GetValueGG, 4
(GG4 5
nullGG5 9
)GG9 :
;GG: ;
}HH 
}II 
elseJJ 
{KK 
ifLL 
(LL 
	fieldInfoLL !
.LL! "
NameLL" &
.LL& '
EqualsLL' -
(LL- .
descriptionLL. 9
)LL9 :
)LL: ;
{MM 
returnNN 
(NN  
TNN  !
)NN! "
	fieldInfoNN" +
.NN+ ,
GetValueNN, 4
(NN4 5
nullNN5 9
)NN9 :
;NN: ;
}OO 
}PP 
}QQ 
returnSS 
defaultSS 
;SS 
}TT 	
public[[ 
static[[ 
string[[ 
GetDescription[[ +
([[+ ,
Enum[[, 0
value[[1 6
)[[6 7
{\\ 	
Type]] 
type]] 
=]] 
value]] 
.]] 
GetType]] %
(]]% &
)]]& '
;]]' (
	FieldInfo__ 
	fieldInfo__ 
=__  !
type__" &
.__& '
GetField__' /
(__/ 0
value__0 5
.__5 6
ToString__6 >
(__> ?
)__? @
)__@ A
;__A B 
DescriptionAttributeaa  
[aa  !
]aa! "

attributesaa# -
=aa. /
	fieldInfoaa0 9
.aa9 :
GetCustomAttributesaa: M
(aaM N
typeofaaN T
(aaT U 
DescriptionAttributeaaU i
)aai j
,aaj k
falseaal q
)aaq r
asaas u!
DescriptionAttribute	aav ä
[
aaä ã
]
aaã å
;
aaå ç
ifcc 
(cc 

attributescc 
!=cc 
nullcc "
&&cc# %

attributescc& 0
.cc0 1
Anycc1 4
(cc4 5
)cc5 6
)cc6 7
{dd 
returnee 

attributesee !
.ee! "
FirstOrDefaultee" 0
(ee0 1
)ee1 2
?ee2 3
.ee3 4
Descriptionee4 ?
;ee? @
}ff 
returnhh 
valuehh 
.hh 
ToStringhh !
(hh! "
)hh" #
;hh# $
}ii 	
}jj 
}kk Ë-
JD:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\JsonSerializerHelper.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public

 

static

 
class

  
JsonSerializerHelper

 ,
{ 
public 
static 
string 
	Serialize &
<& '
T' (
>( )
() *
T* +
request, 3
)3 4
{ 	
return 
JsonConvert 
. 
SerializeObject .
(. /
request/ 6
,6 7)
DefaultJsonSerializerSettings8 U
(U V
outV Y
_Z [
)[ \
)\ ]
;] ^
} 	
public"" 
static"" 
string"" 
	Serialize"" &
<""& '
T""' (
>""( )
("") *
T""* +
request"", 3
,""3 4
out""5 8
string""9 ?
errorMessage""@ L
)""L M
{## 	
return$$ 
JsonConvert$$ 
.$$ 
SerializeObject$$ .
($$. /
request$$/ 6
,$$6 7)
DefaultJsonSerializerSettings$$8 U
($$U V
out$$V Y
errorMessage$$Z f
)$$f g
)$$g h
;$$h i
}%% 	
public// 
static// 
T// 
Deserialize// #
<//# $
T//$ %
>//% &
(//& '
string//' -

jsonString//. 8
)//8 9
{00 	
return11 
JsonConvert11 
.11 
DeserializeObject11 0
<110 1
T111 2
>112 3
(113 4

jsonString114 >
,11> ?)
DefaultJsonSerializerSettings11@ ]
(11] ^
out11^ a
_11b c
)11c d
)11d e
;11e f
}22 	
public<< 
static<< 
object<< 
Deserialize<< (
(<<( )
string<<) /

jsonString<<0 :
,<<: ;
Type<<< @
type<<A E
)<<E F
{== 	
return>> 
JsonConvert>> 
.>> 
DeserializeObject>> 0
(>>0 1

jsonString>>1 ;
,>>; <
type>>= A
)>>A B
;>>B C
}?? 	
publicJJ 
staticJJ 
TJJ 
DeserializeJJ #
<JJ# $
TJJ$ %
>JJ% &
(JJ& '
stringJJ' -

jsonStringJJ. 8
,JJ8 9
outJJ: =
stringJJ> D
errorMessageJJE Q
)JJQ R
{KK 	
returnLL 
JsonConvertLL 
.LL 
DeserializeObjectLL 0
<LL0 1
TLL1 2
>LL2 3
(LL3 4

jsonStringLL4 >
,LL> ?)
DefaultJsonSerializerSettingsLL@ ]
(LL] ^
outLL^ a
errorMessageLLb n
)LLn o
)LLo p
;LLp q
}MM 	
publicXX 
staticXX 
TXX 
DeserializeXX #
<XX# $
TXX$ %
>XX% &
(XX& '
stringXX' -

jsonStringXX. 8
,XX8 9
paramsXX: @
JsonConverterXXA N
[XXN O
]XXO P
jsonConvertersXXQ _
)XX_ `
{YY 	
stringZZ 
errorMessgeZZ 
;ZZ "
JsonSerializerSettings[[ "
settings[[# +
=[[, -)
DefaultJsonSerializerSettings[[. K
([[K L
out[[L O
errorMessge[[P [
)[[[ \
;[[\ ]
settings\\ 
.\\ 

Converters\\ 
=\\  !
jsonConverters\\" 0
;\\0 1
return]] 
JsonConvert]] 
.]] 
DeserializeObject]] 0
<]]0 1
T]]1 2
>]]2 3
(]]3 4

jsonString]]4 >
,]]> ?
settings]]@ H
)]]H I
;]]I J
}^^ 	
privategg 
staticgg "
JsonSerializerSettingsgg -)
DefaultJsonSerializerSettingsgg. K
(ggK L
outggL O
stringggP V
errorMessageggW c
)ggc d
{hh 	
stringii  
errorMessageInternalii '
=ii( )
stringii* 0
.ii0 1
Emptyii1 6
;ii6 7"
JsonSerializerSettingskk ")
defaultJsonSerializerSettingskk# @
=kkA B
newkkC F"
JsonSerializerSettingskkG ]
(kk] ^
)kk^ _
{ll 

Formattingmm 
=mm 

Formattingmm '
.mm' (
Indentedmm( 0
,mm0 1
NullValueHandlingnn !
=nn" #
NullValueHandlingnn$ 5
.nn5 6
Includenn6 =
,nn= >
ContractResolveroo  
=oo! "
newoo# &2
&CamelCasePropertyNamesContractResolveroo' M
(ooM N
)ooN O
,ooO P
Errorpp 
=pp 
delegatepp  
(pp! "
objectpp" (
senderpp) /
,pp/ 0
ErrorEventArgspp1 ?
	errorArgspp@ I
)ppI J
{qq  
errorMessageInternalrr (
=rr) *
stringrr+ 1
.rr1 2
Concatrr2 8
(rr8 9
$strrr9 ^
,rr^ _
	errorArgsrr` i
.rri j
ErrorContextrrj v
.rrv w
Errorrrw |
.rr| }
Message	rr} Ñ
)
rrÑ Ö
;
rrÖ Ü
	errorArgsss 
.ss 
ErrorContextss *
.ss* +
Handledss+ 2
=ss3 4
truess5 9
;ss9 :
}tt 
}uu 
;uu 
errorMessageww 
=ww  
errorMessageInternalww /
;ww/ 0
returnyy )
defaultJsonSerializerSettingsyy 0
;yy0 1
}zz 	
}{{ 
}|| «%
ED:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\LanguageHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public 

static 
class 
LanguageHelpers '
{ 
public 
static &
RequestLocalizationOptions 0%
GetSupportedLocalizations1 J
(J K
)K L
{ 	
List 
< 
CultureInfo 
> 
supportedCultures /
=0 1
new2 5
List6 :
<: ;
CultureInfo; F
>F G
(G H
)H I
{ 
new 
CultureInfo 
(  
EnumHelpers  +
.+ ,
GetDescription, :
(: ;
LanguageCodes; H
.H I
EnglishI P
)P Q
)Q R
,R S
new 
CultureInfo 
(  
EnumHelpers  +
.+ ,
GetDescription, :
(: ;
LanguageCodes; H
.H I
FranceI O
)O P
)P Q
} 
; &
RequestLocalizationOptions &&
requestLocalizationOptions' A
=B C
newD G&
RequestLocalizationOptionsH b
(b c
)c d
{ !
DefaultRequestCulture %
=& '
new( +
RequestCulture, :
(: ;
EnumHelpers; F
.F G
GetDescriptionG U
(U V
LanguageCodesV c
.c d
Englishd k
)k l
)l m
,m n
SupportedCultures !
=" #
supportedCultures$ 5
,5 6
SupportedUICultures   #
=  $ %
supportedCultures  & 7
}!! 
;!! 
return## &
requestLocalizationOptions## -
;##- .
}$$ 	
public,, 
static,, 
List,, 
<,, 
CultureInfo,, &
>,,& '$
GetSupportedCultureInfos,,( @
(,,@ A
),,A B
{-- 	
List.. 
<.. 
CultureInfo.. 
>.. 
supportedCultures.. /
=..0 1
new..2 5
List..6 :
<..: ;
CultureInfo..; F
>..F G
(..G H
)..H I
{// 
new00 
CultureInfo00 
(00  
EnumHelpers00  +
.00+ ,
GetDescription00, :
(00: ;
LanguageCodes00; H
.00H I
English00I P
)00P Q
)00Q R
,00R S
new11 
CultureInfo11 
(11  
EnumHelpers11  +
.11+ ,
GetDescription11, :
(11: ;
LanguageCodes11; H
.11H I
France11I O
)11O P
)11P Q
}22 
;22 
return44 
supportedCultures44 $
;44$ %
}55 	
public== 
static== 
List== 
<== 
CultureInfo== &
>==& '&
GetSupportedUICultureInfos==( B
(==B C
)==C D
{>> 	
List?? 
<?? 
CultureInfo?? 
>?? 
supportedUICultures?? 1
=??2 3
new??4 7
List??8 <
<??< =
CultureInfo??= H
>??H I
(??I J
)??J K
{@@ 
newAA 
CultureInfoAA 
(AA  
EnumHelpersAA  +
.AA+ ,
GetDescriptionAA, :
(AA: ;
LanguageCodesAA; H
.AAH I
EnglishAAI P
)AAP Q
)AAQ R
,AAR S
newBB 
CultureInfoBB 
(BB  
EnumHelpersBB  +
.BB+ ,
GetDescriptionBB, :
(BB: ;
LanguageCodesBB; H
.BBH I
FranceBBI O
)BBO P
)BBP Q
}CC 
;CC 
returnEE 
supportedUICulturesEE &
;EE& '
}FF 	
publicNN 
staticNN 
RequestCultureNN $$
GetDefaultRequestCultureNN% =
(NN= >
)NN> ?
{OO 	
returnPP 
newPP 
RequestCulturePP %
(PP% &
culturePP& -
:PP- .
EnumHelpersPP/ :
.PP: ;
GetDescriptionPP; I
(PPI J
LanguageCodesPPJ W
.PPW X
EnglishPPX _
)PP_ `
,PP` a
	uiCulturePPb k
:PPk l
EnumHelpersPPm x
.PPx y
GetDescription	PPy á
(
PPá à
LanguageCodes
PPà ï
.
PPï ñ
English
PPñ ù
)
PPù û
)
PPû ü
;
PPü †
}QQ 	
}RR 
}SS ™
QD:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\MachineConfigurationHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public 

static 
class '
MachineConfigurationHelpers 3
{		 
public 
static 
string 
GetMachineName +
(+ ,
), -
{ 	
try 
{ 
return 
Environment "
." #
MachineName# .
;. /
} 
catch 
( 
	Exception 
) 
{ 
return 
string 
. 
Empty #
;# $
} 
} 	
} 
} Ò
DD:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\ServiceHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{		 
public 

static 
class 
ServiceHelpers &
{ 
private 
static 
IServiceProvider '
ServiceProvider( 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
static 
void 
	Configure $
($ %
IServiceProvider% 5
serviceProvider6 E
)E F
{ 	
ServiceProvider 
= 
serviceProvider -
;- .
} 	
public&& 
static&& 
IServiceProvider&& &
GetServiceProvider&&' 9
(&&9 :
)&&: ;
{'' 	
return(( 
ServiceProvider(( "
;((" #
})) 	
public22 
static22 
IMapper22 
	GetMapper22 '
(22' (
)22( )
{33 	
if44 
(44 
ServiceProvider44 
==44  "
null44# '
)44' (
{55 
throw66 
new66 
LevelsUpException66 +
(66+ ,
ErrorMessages66, 9
.669 :'
SERVICE_PROVIDER_NOT_EXISTS66: U
,66U V

ErrorCodes66W a
.66a b
NotFound66b j
)66j k
;66k l
}77 
return99 
ServiceProvider99 "
.99" #
GetRequiredService99# 5
<995 6 
IServiceScopeFactory996 J
>99J K
(99K L
)99L M
.99M N
CreateScope99N Y
(99Y Z
)99Z [
.99[ \
ServiceProvider99\ k
.99k l
GetRequiredService99l ~
<99~ 
IMapper	99 Ü
>
99Ü á
(
99á à
)
99à â
;
99â ä
}:: 	
publicBB 
staticBB  
IHttpContextAccessorBB *"
GetHttpContextAccessorBB+ A
(BBA B
)BBB C
{CC 	
ifDD 
(DD 
ServiceProviderDD 
==DD  "
nullDD# '
)DD' (
{EE 
throwFF 
newFF 
LevelsUpExceptionFF +
(FF+ ,
ErrorMessagesFF, 9
.FF9 :'
SERVICE_PROVIDER_NOT_EXISTSFF: U
,FFU V

ErrorCodesFFW a
.FFa b
NotFoundFFb j
)FFj k
;FFk l
}GG 
returnII 
ServiceProviderII "
.II" #
GetRequiredServiceII# 5
<II5 6 
IHttpContextAccessorII6 J
>IIJ K
(IIK L
)IIL M
;IIM N
}JJ 	
}KK 
}LL ¸
DD:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\SettingsHelper.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public 

static 
class 
SettingsHelper &
{ 
public 
static  
JsonWebTokenSettings *#
GetJsonWebTokenSettings+ B
(B C
)C D
{ 	
IServiceProvider 
serviceProvider ,
=- .
ServiceHelpers/ =
.= >
GetServiceProvider> P
(P Q
)Q R
;R S
if 
( 
serviceProvider 
==  "
null# '
)' (
{ 
throw 
new 
LevelsUpException +
(+ ,
ErrorMessages, 9
.9 :'
SERVICE_PROVIDER_NOT_EXISTS: U
,U V

ErrorCodesW a
.a b
NotFoundb j
)j k
;k l
} 
return 
serviceProvider "
." #
GetRequiredService# 5
<5 6 
JsonWebTokenSettings6 J
>J K
(K L
)L M
;M N
} 	
public(( 
static(( 
AppSettings(( !
GetAppSettings((" 0
(((0 1
)((1 2
{)) 	
IServiceProvider** 
serviceProvider** ,
=**- .
ServiceHelpers**/ =
.**= >
GetServiceProvider**> P
(**P Q
)**Q R
;**R S
if,, 
(,, 
serviceProvider,, 
==,,  "
null,,# '
),,' (
{-- 
throw.. 
new.. 
LevelsUpException.. +
(..+ ,
ErrorMessages.., 9
...9 :'
SERVICE_PROVIDER_NOT_EXISTS..: U
,..U V

ErrorCodes..W a
...a b
NotFound..b j
)..j k
;..k l
}// 
return11 
serviceProvider11 "
.11" #
GetRequiredService11# 5
<115 6
AppSettings116 A
>11A B
(11B C
)11C D
;11D E
}22 	
public;; 
static;; 
TwillioSettings;; %
GetTwillioSettings;;& 8
(;;8 9
);;9 :
{<< 	
IServiceProvider== 
serviceProvider== ,
===- .
ServiceHelpers==/ =
.=== >
GetServiceProvider==> P
(==P Q
)==Q R
;==R S
if?? 
(?? 
serviceProvider?? 
==??  "
null??# '
)??' (
{@@ 
throwAA 
newAA 
LevelsUpExceptionAA +
(AA+ ,
ErrorMessagesAA, 9
.AA9 :'
SERVICE_PROVIDER_NOT_EXISTSAA: U
,AAU V

ErrorCodesAAW a
.AAa b
NotFoundAAb j
)AAj k
;AAk l
}BB 
returnDD 
serviceProviderDD "
.DD" #
GetRequiredServiceDD# 5
<DD5 6
TwillioSettingsDD6 E
>DDE F
(DDF G
)DDG H
;DDH I
}EE 	
}FF 
}GG ‰
UD:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\TokenValidationParameterHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public 

static 
class +
TokenValidationParameterHelpers 7
{ 
public 
static %
TokenValidationParameters /(
GetTokenValidationParameters0 L
(L M
)M N
{ 	 
JsonWebTokenSettings   
jsonWebTokenSettings! 5
=6 7
SettingsHelper8 F
.F G#
GetJsonWebTokenSettingsG ^
(^ _
)_ `
;` a
return 
new %
TokenValidationParameters 0
(0 1
)1 2
{ 
ValidateIssuer 
=  
true! %
,% &
ValidateAudience  
=! "
true# '
,' (
ValidateLifetime  
=! "
true# '
,' ($
ValidateIssuerSigningKey (
=) *
true+ /
,/ 0
ValidIssuer 
=  
jsonWebTokenSettings 2
.2 3
Issuer3 9
,9 :
ValidAudience 
=  
jsonWebTokenSettings  4
.4 5
Issuer5 ;
,; <
IssuerSigningKey  
=! " 
jsonWebTokenSettings# 7
.7 8
Key8 ;
.; <)
ConvertToSymmetricSecurityKey< Y
(Y Z
)Z [
,[ \
	ClockSkew   
=   
TimeSpan   $
.  $ %
Zero  % )
}!! 
;!! 
}"" 	
public** 
static** %
TokenValidationParameters** //
#GetExpiredTokenValidationParameters**0 S
(**S T
)**T U
{++ 	 
JsonWebTokenSettings,,   
jsonWebTokenSettings,,! 5
=,,6 7
SettingsHelper,,8 F
.,,F G#
GetJsonWebTokenSettings,,G ^
(,,^ _
),,_ `
;,,` a
return.. 
new.. %
TokenValidationParameters.. 0
(..0 1
)..1 2
{// 
ValidateIssuer00 
=00  
false00! &
,00& '
ValidateAudience11  
=11! "
false11# (
,11( )
ValidateLifetime22  
=22! "
false22# (
,22( )$
ValidateIssuerSigningKey33 (
=33) *
true33+ /
,33/ 0
ValidIssuer44 
=44  
jsonWebTokenSettings44 2
.442 3
Issuer443 9
,449 :
ValidAudience55 
=55  
jsonWebTokenSettings55  4
.554 5
Issuer555 ;
,55; <
IssuerSigningKey66  
=66! " 
jsonWebTokenSettings66# 7
.667 8
Key668 ;
.66; <)
ConvertToSymmetricSecurityKey66< Y
(66Y Z
)66Z [
,66[ \
	ClockSkew77 
=77 
TimeSpan77 $
.77$ %
Zero77% )
}88 
;88 
}99 	
}:: 
};; Ã
@D:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\UrlHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public 

static 
class 

UrlHelpers "
{ 
public 
static 
string 

ActionName '
<' (
TController( 3
>3 4
(4 5

Expression5 ?
<? @
Func@ D
<D E
TControllerE P
,P Q
objectR X
>X Y
>Y Z
actionExpression[ k
)k l
wherem r
TControllers ~
:	 Ä
ControllerBase
Å è
{ 	
string 

actionName 
= 
actionExpression  0
.0 1
GetActionName1 >
(> ?
)? @
;@ A
return 

actionName 
; 
} 	
public## 
static## 
string## 
GetControllerName## .
<##. /
TController##/ :
>##: ;
(##; <
)##< =
where##> C
TController##D O
:##P Q
ControllerBase##R `
{$$ 	
return%% 
typeof%% 
(%% 
TController%% %
)%%% &
.%%& '
Name%%' +
.%%+ ,
Replace%%, 3
(%%3 4
	Constants%%4 =
.%%= >

Controller%%> H
,%%H I
string%%J P
.%%P Q
Empty%%Q V
)%%V W
;%%W X
}&& 	
public// 
static// 
string// 
GetActionName// *
(//* +
this//+ /
LambdaExpression//0 @
actionExpression//A Q
)//Q R
{00 	
return11 
(11 
(11  
MethodCallExpression11 )
)11) *
actionExpression11* :
.11: ;
Body11; ?
)11? @
.11@ A
Method11A G
.11G H
Name11H L
;11L M
}22 	
}33 
}44 ˛d
@D:\DotNetCore\DotNetCoreAPI\Infrastructure\Helpers\XmlHelpers.cs
	namespace 	
Infrastructure
 
. 
Helpers  
{ 
public 

static 
class 

XmlHelpers "
{ 
public 
static 
string 
	Serialize &
<& '
T' (
>( )
() *
object* 0
obj1 4
)4 5
{ 	
string 
buffer 
= 
string "
." #
Empty# (
;( )
using 
( 
StringWriter 
stringWriter  ,
=- .
new/ 2
StringWriter3 ?
(? @
)@ A
)A B
{   
using!! 
(!! 
XmlTextWriter!! $
xmlTextWriter!!% 2
=!!3 4
new!!5 8
XmlTextWriter!!9 F
(!!F G
stringWriter!!G S
)!!S T
{!!U V

Formatting!!W a
=!!b c

Formatting!!d n
.!!n o
Indented!!o w
}!!x y
)!!y z
{"" "
DataContractSerializer## *"
dataContractSerializer##+ A
=##B C
new##D G"
DataContractSerializer##H ^
(##^ _
typeof##_ e
(##e f
T##f g
)##g h
)##h i
;##i j"
dataContractSerializer$$ *
.$$* +
WriteObject$$+ 6
($$6 7
xmlTextWriter$$7 D
,$$D E
obj$$F I
)$$I J
;$$J K
buffer%% 
=%% 

XmlHelpers%% '
.%%' (
RemoveAllNamespaces%%( ;
(%%; <
stringWriter%%< H
.%%H I
GetStringBuilder%%I Y
(%%Y Z
)%%Z [
.%%[ \
ToString%%\ d
(%%d e
)%%e f
)%%f g
;%%g h
}&& 
}'' 
return)) 
buffer)) 
;)) 
}** 	
public55 
static55 
string55 
	Serialize55 &
<55& '
T55' (
>55( )
(55) *
T55* +
obj55, /
,55/ 0
IEnumerable551 <
<55< =
Type55= A
>55A B

knownTypes55C M
)55M N
{66 	
string77 
buffer77 
=77 
string77 "
.77" #
Empty77# (
;77( )
using99 
(99 
StringWriter99 
stringWriter99  ,
=99- .
new99/ 2
StringWriter993 ?
(99? @
)99@ A
)99A B
{:: 
using;; 
(;; 
XmlTextWriter;; $
xmlTextWriter;;% 2
=;;3 4
new;;5 8
XmlTextWriter;;9 F
(;;F G
stringWriter;;G S
);;S T
{;;U V

Formatting;;W a
=;;b c

Formatting;;d n
.;;n o
Indented;;o w
};;x y
);;y z
{<< "
DataContractSerializer== *"
dataContractSerializer==+ A
===B C
new==D G"
DataContractSerializer==H ^
(==^ _
typeof==_ e
(==e f
T==f g
)==g h
,==h i

knownTypes==j t
)==t u
;==u v"
dataContractSerializer>> *
.>>* +
WriteObject>>+ 6
(>>6 7
xmlTextWriter>>7 D
,>>D E
obj>>F I
)>>I J
;>>J K
buffer?? 
=?? 

XmlHelpers?? '
.??' (
RemoveAllNamespaces??( ;
(??; <
stringWriter??< H
.??H I
GetStringBuilder??I Y
(??Y Z
)??Z [
.??[ \
ToString??\ d
(??d e
)??e f
)??f g
;??g h
}@@ 
}AA 
returnCC 
bufferCC 
;CC 
}DD 	
publicNN 
staticNN 
TNN 
DeserializeNN #
<NN# $
TNN$ %
>NN% &
(NN& '
stringNN' -
xmlNN. 1
)NN1 2
{OO 	
usingPP 
(PP 
MemoryStreamPP 
memoryStreamPP  ,
=PP- .
newPP/ 2
MemoryStreamPP3 ?
(PP? @
)PP@ A
)PPA B
{QQ 
byteRR 
[RR 
]RR 
dataRR 
=RR 
EncodingRR &
.RR& '
UTF8RR' +
.RR+ ,
GetBytesRR, 4
(RR4 5
xmlRR5 8
)RR8 9
;RR9 :
memoryStreamSS 
.SS 
WriteSS "
(SS" #
dataSS# '
,SS' (
$numSS) *
,SS* +
dataSS, 0
.SS0 1
LengthSS1 7
)SS7 8
;SS8 9
memoryStreamTT 
.TT 
PositionTT %
=TT& '
$numTT( )
;TT) *"
DataContractSerializerUU &"
dataContractSerializerUU' =
=UU> ?
newUU@ C"
DataContractSerializerUUD Z
(UUZ [
typeofUU[ a
(UUa b
TUUb c
)UUc d
)UUd e
;UUe f
returnVV 
(VV 
TVV 
)VV "
dataContractSerializerVV 0
.VV0 1

ReadObjectVV1 ;
(VV; <
memoryStreamVV< H
)VVH I
;VVI J
}WW 
}XX 	
publiccc 
staticcc 
Tcc 
Deserializecc #
<cc# $
Tcc$ %
>cc% &
(cc& '
stringcc' -
xmlcc. 1
,cc1 2
IEnumerablecc3 >
<cc> ?
Typecc? C
>ccC D

knownTypesccE O
)ccO P
{dd 	
usingee 
(ee 
MemoryStreamee 
memoryStreamee  ,
=ee- .
newee/ 2
MemoryStreamee3 ?
(ee? @
)ee@ A
)eeA B
{ff 
bytegg 
[gg 
]gg 
datagg 
=gg 
Encodinggg &
.gg& '
UTF8gg' +
.gg+ ,
GetBytesgg, 4
(gg4 5
xmlgg5 8
)gg8 9
;gg9 :
memoryStreamhh 
.hh 
Writehh "
(hh" #
datahh# '
,hh' (
$numhh) *
,hh* +
datahh, 0
.hh0 1
Lengthhh1 7
)hh7 8
;hh8 9
memoryStreamii 
.ii 
Positionii %
=ii& '
$numii( )
;ii) *"
DataContractSerializerjj &"
dataContractSerializerjj' =
=jj> ?
newjj@ C"
DataContractSerializerjjD Z
(jjZ [
typeofjj[ a
(jja b
Tjjb c
)jjc d
,jjd e

knownTypesjjf p
)jjp q
;jjq r
returnkk 
(kk 
Tkk 
)kk "
dataContractSerializerkk 0
.kk0 1

ReadObjectkk1 ;
(kk; <
memoryStreamkk< H
)kkH I
;kkI J
}ll 
}mm 	
publicuu 
staticuu 
Listuu 
<uu 
Typeuu 
>uu  "
GetResponsesKnownTypesuu! 7
(uu7 8
)uu8 9
{vv 	
Listww 
<ww 
Typeww 
>ww 

knownTypesww !
=ww" #
GetSingleKnownTypesww$ 7
(ww7 8
typeofww8 >
(ww> ?
IBaseResponseww? L
)wwL M
.wwM N
AssemblywwN V
)wwV W
.wwW X
ToListwwX ^
(ww^ _
)ww_ `
;ww` a
Listxx 
<xx 
Typexx 
>xx 
knownListTypesxx %
=xx& '
GetListKnownTypesxx( 9
(xx9 :

knownTypesxx: D
)xxD E
.xxE F
ToListxxF L
(xxL M
)xxM N
;xxN O

knownTypeszz 
.zz 
AddRangezz 
(zz  
knownListTypeszz  .
)zz. /
;zz/ 0
return|| 

knownTypes|| 
;|| 
}}} 	
private
ÜÜ 
static
ÜÜ 
IEnumerable
ÜÜ "
<
ÜÜ" #
Type
ÜÜ# '
>
ÜÜ' (!
GetSingleKnownTypes
ÜÜ) <
(
ÜÜ< =
params
ÜÜ= C
Assembly
ÜÜD L
[
ÜÜL M
]
ÜÜM N

assemblies
ÜÜO Y
)
ÜÜY Z
{
áá 	
foreach
àà 
(
àà 
Assembly
àà 
assembly
àà &
in
àà' )

assemblies
àà* 4
)
àà4 5
{
ââ 
foreach
ää 
(
ää 
Type
ää 
type
ää "
in
ää# %
assembly
ää& .
.
ää. /
GetTypes
ää/ 7
(
ää7 8
)
ää8 9
)
ää9 :
{
ãã 
if
åå 
(
åå 
!
åå 
type
åå 
.
åå 

IsAbstract
åå (
&&
åå) +
typeof
åå, 2
(
åå2 3
IBaseResponse
åå3 @
)
åå@ A
.
ååA B
IsAssignableFrom
ååB R
(
ååR S
type
ååS W
)
ååW X
)
ååX Y
{
çç 
yield
éé 
return
éé $
type
éé% )
;
éé) *
}
èè 
}
êê 
}
ëë 
}
íí 	
private
õõ 
static
õõ 
IEnumerable
õõ "
<
õõ" #
Type
õõ# '
>
õõ' (
GetListKnownTypes
õõ) :
(
õõ: ;
IEnumerable
õõ; F
<
õõF G
Type
õõG K
>
õõK L
types
õõM R
)
õõR S
{
úú 	
foreach
ùù 
(
ùù 
Type
ùù 
type
ùù 
in
ùù !
types
ùù" '
)
ùù' (
{
ûû 
if
üü 
(
üü 
!
üü 
type
üü 
.
üü 

IsAbstract
üü $
&&
üü% '
typeof
üü( .
(
üü. /
IBaseResponse
üü/ <
)
üü< =
.
üü= >
IsAssignableFrom
üü> N
(
üüN O
type
üüO S
)
üüS T
)
üüT U
{
†† 
yield
°° 
return
°°  
typeof
°°! '
(
°°' (
List
°°( ,
<
°°, -
>
°°- .
)
°°. /
.
°°/ 0
MakeGenericType
°°0 ?
(
°°? @
type
°°@ D
)
°°D E
;
°°E F
}
¢¢ 
}
££ 
}
§§ 	
private
≠≠ 
static
≠≠ 
string
≠≠ !
RemoveAllNamespaces
≠≠ 1
(
≠≠1 2
string
≠≠2 8
xmlDocument
≠≠9 D
)
≠≠D E
{
ÆÆ 	
XElement
ØØ "
xmlDocumentWithoutNs
ØØ )
=
ØØ* +!
RemoveAllNamespaces
ØØ, ?
(
ØØ? @
XElement
ØØ@ H
.
ØØH I
Parse
ØØI N
(
ØØN O
xmlDocument
ØØO Z
)
ØØZ [
)
ØØ[ \
;
ØØ\ ]
return
±± "
xmlDocumentWithoutNs
±± '
.
±±' (
ToString
±±( 0
(
±±0 1
)
±±1 2
;
±±2 3
}
≤≤ 	
private
ªª 
static
ªª 
XElement
ªª !
RemoveAllNamespaces
ªª  3
(
ªª3 4
XElement
ªª4 <
xmlDocument
ªª= H
)
ªªH I
{
ºº 	
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
xmlDocument
ΩΩ 
.
ΩΩ 
HasElements
ΩΩ (
)
ΩΩ( )
{
ææ 
XElement
øø 
xElement
øø !
=
øø" #
new
øø$ '
XElement
øø( 0
(
øø0 1
xmlDocument
øø1 <
.
øø< =
Name
øø= A
.
øøA B
	LocalName
øøB K
)
øøK L
;
øøL M
xElement
¿¿ 
.
¿¿ 
Value
¿¿ 
=
¿¿  
xmlDocument
¿¿! ,
.
¿¿, -
Value
¿¿- 2
;
¿¿2 3
foreach
¬¬ 
(
¬¬ 

XAttribute
¬¬ #
	attribute
¬¬$ -
in
¬¬. 0
xmlDocument
¬¬1 <
.
¬¬< =

Attributes
¬¬= G
(
¬¬G H
)
¬¬H I
)
¬¬I J
{
√√ 
xElement
ƒƒ 
.
ƒƒ 
Add
ƒƒ  
(
ƒƒ  !
	attribute
ƒƒ! *
)
ƒƒ* +
;
ƒƒ+ ,
}
≈≈ 
return
«« 
xElement
«« 
;
««  
}
»» 
return
   
new
   
XElement
   
(
    
xmlDocument
    +
.
  + ,
Name
  , 0
.
  0 1
	LocalName
  1 :
,
  : ;
xmlDocument
  < G
.
  G H
Elements
  H P
(
  P Q
)
  Q R
.
  R S
Select
  S Y
(
  Y Z
element
  Z a
=>
  b d!
RemoveAllNamespaces
  e x
(
  x y
element  y Ä
)  Ä Å
)  Å Ç
)  Ç É
;  É Ñ
}
ÀÀ 	
}
ÃÃ 
}ÕÕ π
?D:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\Category.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
Category !
{		 
public 
Category 
( 
) 
{ 	
this 
. 
UserCategories 
=  !
new" %
List& *
<* +
UserCategory+ 7
>7 8
(8 9
)9 :
;: ;
} 	
public 
List 
< 
UserCategory  
>  !
UserCategories" 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} 
} ê
RD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\ClassMappers\CategoryMapper.cs
	namespace 	
Infrastructure
 
. 
Partials !
.! "
ClassMappers" .
{ 
public 

class 
CategoryMapper 
:  !
ClassMapper" -
<- .
Category. 6
>6 7
{ 
public 
CategoryMapper 
( 
) 
{ 	
this 
. 
Table 
( 

TableNames !
.! "
Category" *
)* +
;+ ,
this 
. 
Map 
( 
m 
=> 
m 
. 
UserCategories *
)* +
.+ ,
Ignore, 2
(2 3
)3 4
;4 5
this 
. 
AutoMap 
( 
) 
; 
} 	
} 
} ô
UD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\ClassMappers\SubCategoryMapper.cs
	namespace 	
Infrastructure
 
. 
Partials !
.! "
ClassMappers" .
{ 
public 

class 
SubCategoryMapper "
:# $
ClassMapper% 0
<0 1
SubCategory1 <
>< =
{ 
public 
SubCategoryMapper  
(  !
)! "
{ 	
this 
. 
Table 
( 

TableNames !
.! "
SubCategory" -
)- .
;. /
this 
. 
Map 
( 
x 
=> 
x 
. 
Category $
)$ %
.% &
Ignore& ,
(, -
)- .
;. /
this 
. 
AutoMap 
( 
) 
; 
} 	
} 
} í
VD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\ClassMappers\UserCategoryMapper.cs
	namespace 	
Infrastructure
 
. 
Partials !
.! "
ClassMappers" .
{ 
public 

class 
UserCategoryMapper #
:$ %
ClassMapper& 1
<1 2
UserCategory2 >
>> ?
{ 
public 
UserCategoryMapper !
(! "
)" #
{ 	
this 
. 
Table 
( 

TableNames !
.! "
UserCategory" .
). /
;/ 0
this 
. 
Map 
( 
x 
=> 
x 
. 
Category $
)$ %
.% &
Ignore& ,
(, -
)- .
;. /
this 
. 
Map 
( 
x 
=> 
x 
. 
SubCategories )
)) *
.* +
Ignore+ 1
(1 2
)2 3
;3 4
this 
. 
Map 
( 
x 
=> 
x 
. 
UserSubCategories -
)- .
.. /
Ignore/ 5
(5 6
)6 7
;7 8
this 
. 
AutoMap 
( 
) 
; 
} 	
} 
} ï
UD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\ClassMappers\UserProfileMapper.cs
	namespace 	
Infrastructure
 
. 
Partials !
.! "
ClassMappers" .
{ 
public 

class 
UserProfileMapper "
:# $
ClassMapper% 0
<0 1
UserProfile1 <
>< =
{ 
public 
UserProfileMapper  
(  !
)! "
{ 	
this 
. 
Table 
( 

TableNames !
.! "
UserProfile" -
)- .
;. /
this 
. 
Map 
( 
x 
=> 
x 
. 
User  
)  !
.! "
Ignore" (
(( )
)) *
;* +
this 
. 
AutoMap 
( 
) 
; 
} 	
} 
} ü

YD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\ClassMappers\UserSubCategoryMapper.cs
	namespace 	
Infrastructure
 
. 
Partials !
.! "
ClassMappers" .
{ 
public 

class !
UserSubCategoryMapper &
:' (
ClassMapper) 4
<4 5
UserSubCategory5 D
>D E
{ 
public !
UserSubCategoryMapper $
($ %
)% &
{ 	
this 
. 
Table 
( 

TableNames !
.! "
UserSubCategory" 1
)1 2
;2 3
this 
. 
Map 
( 
x 
=> 
x 
. 
SubCategory '
)' (
.( )
Ignore) /
(/ 0
)0 1
;1 2
this 
. 
Map 
( 
x 
=> 
x 
. 
User  
)  !
.! "
Ignore" (
(( )
)) *
;* +
this 
. 
AutoMap 
( 
) 
; 
} 	
} 
} ¥
BD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\SubCategory.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
SubCategory $
{ 
public 
SubCategory 
( 
) 
{ 	
} 	
public 
Category 
Category  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ’

CD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\UserCategory.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
UserCategory %
{		 
public 
UserCategory 
( 
) 
{ 	
UserSubCategories 
= 
new  #
List$ (
<( )
UserSubCategory) 8
>8 9
(9 :
): ;
;; <
SubCategories 
= 
new 
List  $
<$ %
SubCategory% 0
>0 1
(1 2
)2 3
;3 4
} 	
public 
Category 
Category  
{! "
get# &
;& '
set( +
;+ ,
}- .
public!! 
List!! 
<!! 
SubCategory!! 
>!!  
SubCategories!!! .
{!!/ 0
get!!1 4
;!!4 5
set!!6 9
;!!9 :
}!!; <
public)) 
List)) 
<)) 
UserSubCategory)) #
>))# $
UserSubCategories))% 6
{))7 8
get))9 <
;))< =
set))> A
;))A B
}))C D
}** 
}++ ≥
BD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\UserProfile.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
UserProfile $
{ 
public 
UserProfile 
( 
) 
{ 	
} 	
public 
AspNetUsers 
User 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} „
FD:\DotNetCore\DotNetCoreAPI\Infrastructure\Partials\UserSubCategory.cs
	namespace 	
Infrastructure
 
. 
DatabaseModels '
{ 
public 

partial 
class 
UserSubCategory (
{ 
public 
UserSubCategory 
( 
)  
{ 	
} 	
public 
SubCategory 
SubCategory &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
AspNetUsers 
User 
{  !
get" %
;% &
set' *
;* +
}, -
} 
}   