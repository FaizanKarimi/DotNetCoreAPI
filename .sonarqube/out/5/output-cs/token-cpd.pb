÷
CD:\DotNetCore\DotNetCoreAPI\Services\Implementations\BaseService.cs
	namespace 	
Services
 
. 
Implementations "
{ 
public 

abstract 
class 
BaseService %
{ 
private 
IServiceProvider  
_serviceProvider! 1
{ 	
get 
{ 
return 
ServiceHelpers %
.% &
GetServiceProvider& 8
(8 9
)9 :
;: ;
} 
} 	
	protected 
readonly 
ILogger "
logger# )
;) *
	protected$$ 
readonly$$  
IHttpContextAccessor$$ /
httpContextAccessor$$0 C
;$$C D
	protected)) 
BaseService)) 
()) 
))) 
{** 	
if++ 
(++ 
this++ 
.++ 
logger++ 
==++ 
null++ #
)++# $
{,, 
this-- 
.-- 
logger-- 
=-- 
this-- "
.--" #
_serviceProvider--# 3
.--3 4
GetRequiredService--4 F
<--F G
ILogger--G N
>--N O
(--O P
)--P Q
;--Q R
}.. 
if00 
(00 
this00 
.00 
httpContextAccessor00 (
==00) +
null00, 0
)000 1
{11 
this22 
.22 
httpContextAccessor22 (
=22) *
ServiceHelpers22+ 9
.229 :"
GetHttpContextAccessor22: P
(22P Q
)22Q R
;22R S
}33 
}44 	
}55 
}66 ∏
JD:\DotNetCore\DotNetCoreAPI\Services\Implementations\SubCategoryService.cs
	namespace 	
Services
 
. 
Implementations "
{ 
public 

class 
SubCategoryService #
:$ %
BaseService& 1
,1 2
ISubCategoryService3 F
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly "
ISubCategoryRepository /"
_subCategoryRepository0 F
;F G
public 
SubCategoryService !
(! "
IUnitOfWork" -

unitOfWork. 8
,8 9"
ISubCategoryRepository: P!
subCategoryRepositoryQ f
)f g
:h i
basej n
(n o
)o p
{ 	
this 
. 
_unitOfWork 
= 

unitOfWork )
;) *
this   
.   "
_subCategoryRepository   '
=  ( )!
subCategoryRepository  * ?
;  ? @
this!! 
.!! "
_subCategoryRepository!! '
.!!' (

UnitOfWork!!( 2
=!!3 4

unitOfWork!!5 ?
;!!? @
}"" 	
public++ 
SubCategory++ 
Get++ 
(++ 
int++ "
id++# %
)++% &
{,, 	
SubCategory-- 
subCategory-- #
=--$ %
null--& *
;--* +
this.. 
... 
_unitOfWork.. 
... 
Open.. !
(..! "
).." #
;..# $
try// 
{00 
this11 
.11 
logger11 
.11 
Debug11 !
(11! "
$"11" $9
-Getting the subcategory information with id: 11$ Q
{11Q R
id11R T
}11T U
"11U V
)11V W
;11W X
subCategory22 
=22 
this22 "
.22" #"
_subCategoryRepository22# 9
.229 :
Get22: =
(22= >
id22> @
)22@ A
;22A B
}33 
finally44 
{55 
this66 
.66 
_unitOfWork66  
.66  !
Close66! &
(66& '
)66' (
;66( )
}77 
return99 
subCategory99 
;99 
}:: 	
};; 
}<< ≈;
KD:\DotNetCore\DotNetCoreAPI\Services\Implementations\UserCategoryService.cs
	namespace		 	
Services		
 
.		 
Implementations		 "
{

 
public 

class 
UserCategoryService $
:% &
BaseService' 2
,2 3 
IUserCategoryService4 H
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly #
IUserCategoryRepository 0#
_userCategoryRepository1 H
;H I
private 
readonly 
ICategoryRepository ,
_categoryRepository- @
;@ A
private## 
readonly## &
IUserSubCategoryRepository## 3&
_userSubCategoryRepository##4 N
;##N O
private(( 
readonly(( "
ISubCategoryRepository(( /"
_subCategoryRepository((0 F
;((F G
public22 
UserCategoryService22 "
(22" #
IUnitOfWork22# .

unitOfWork22/ 9
,229 :#
IUserCategoryRepository22; R"
userCategoryRepository22S i
,22i j
ICategoryRepository22k ~
categoryRepository	22 ë
,
22ë í(
IUserSubCategoryRepository
22ì ≠'
userSubCategoryRepository
22Æ «
,
22« »"
ISubCategoryRepository33 "!
subCategoryRepository33# 8
)338 9
:33: ;
base33< @
(33@ A
)33A B
{44 	
this55 
.55 
_unitOfWork55 
=55 

unitOfWork55 )
;55) *
this66 
.66 #
_userCategoryRepository66 (
=66) *"
userCategoryRepository66+ A
;66A B
this77 
.77 #
_userCategoryRepository77 (
.77( )

UnitOfWork77) 3
=774 5

unitOfWork776 @
;77@ A
this88 
.88 
_categoryRepository88 $
=88% &
categoryRepository88' 9
;889 :
this99 
.99 
_categoryRepository99 $
.99$ %

UnitOfWork99% /
=990 1

unitOfWork992 <
;99< =
this:: 
.:: &
_userSubCategoryRepository:: +
=::, -%
userSubCategoryRepository::. G
;::G H
this;; 
.;; &
_userSubCategoryRepository;; +
.;;+ ,

UnitOfWork;;, 6
=;;7 8

unitOfWork;;9 C
;;;C D
this<< 
.<< "
_subCategoryRepository<< '
=<<( )!
subCategoryRepository<<* ?
;<<? @
this== 
.== "
_subCategoryRepository== '
.==' (

UnitOfWork==( 2
===3 4

unitOfWork==5 ?
;==? @
}>> 	
publicGG 
ListGG 
<GG 
UserCategoryGG  
>GG  !
GetGG" %
(GG% &
stringGG& ,
userIdGG- 3
)GG3 4
{HH 	
thisII 
.II 
_unitOfWorkII 
.II 
OpenII !
(II! "
)II" #
;II# $
ListJJ 
<JJ 
UserCategoryJJ 
>JJ 
userCategoriesJJ -
=JJ. /
nullJJ0 4
;JJ4 5
tryKK 
{LL 
userCategoriesMM 
=MM  
thisMM! %
.MM% &#
_userCategoryRepositoryMM& =
.MM= >
GetMM> A
(MMA B
userIdMMB H
)MMH I
;MMI J
ListNN 
<NN 
intNN 
>NN 
categoriesIdNN &
=NN' (
userCategoriesNN) 7
.NN7 8
SelectNN8 >
(NN> ?
xNN? @
=>NNA C
xNND E
.NNE F

CategoryIdNNF P
)NNP Q
.NNQ R
ToListNNR X
(NNX Y
)NNY Z
;NNZ [
thisOO 
.OO 
loggerOO 
.OO 
DebugOO !
(OO! "
$"OO" $)
Categories with the ids are: OO$ A
{OOA B
categoriesIdOOB N
.OON O#
GetCommaSeperatedStringOOO f
<OOf g
intOOg j
>OOj k
(OOk l
)OOl m
}OOm n
"OOn o
)OOo p
;OOp q
categoriesIdPP 
?PP 
.PP 
ForEachPP %
(PP% &

categoryIdPP& 0
=>PP1 3
{QQ 
thisRR 
.RR 
loggerRR 
.RR  
DebugRR  %
(RR% &
$"RR& (.
"Getting the category with the id: RR( J
{RRJ K

categoryIdRRK U
}RRU V
"RRV W
)RRW X
;RRX Y
CategorySS 
categorySS %
=SS& '
thisSS( ,
.SS, -
_categoryRepositorySS- @
.SS@ A
GetSSA D
(SSD E

categoryIdSSE O
)SSO P
;SSP Q
ifTT 
(TT 
userCategoriesTT &
.TT& '
ExistsTT' -
(TT- .
xTT. /
=>TT0 2
xTT3 4
.TT4 5

CategoryIdTT5 ?
==TT@ B

categoryIdTTC M
)TTM N
)TTN O
{UU 
UserCategoryVV $
userCategoryVV% 1
=VV2 3
userCategoriesVV4 B
.VVB C
FirstOrDefaultVVC Q
(VVQ R
xVVR S
=>VVT V
xVVW X
.VVX Y

CategoryIdVVY c
==VVd f

categoryIdVVg q
)VVq r
;VVr s
ifWW 
(WW 
userCategoryWW (
.WW( )
CategoryWW) 1
==WW2 4
nullWW5 9
)WW9 :
{XX 
userCategoryYY (
.YY( )
CategoryYY) 1
=YY2 3
categoryYY4 <
;YY< =
}ZZ 
userCategory\\ $
.\\$ %
SubCategories\\% 2
=\\3 4
this\\5 9
.\\9 :"
_subCategoryRepository\\: P
.\\P Q
GetSubCategories\\Q a
(\\a b
userCategory\\b n
.\\n o
Category\\o w
.\\w x
Id\\x z
)\\z {
;\\{ |
List]] 
<]] 
int]]  
>]]  !
subCategoriesId]]" 1
=]]2 3
userCategory]]4 @
.]]@ A
SubCategories]]A N
.]]N O
Select]]O U
(]]U V
x]]V W
=>]]X Z
x]][ \
.]]\ ]
Id]]] _
)]]_ `
.]]` a
ToList]]a g
(]]g h
)]]h i
;]]i j
int^^ 
[^^ 
]^^ 
ids^^ !
=^^" #
subCategoriesId^^$ 3
.^^3 4
ToArray^^4 ;
(^^; <
)^^< =
;^^= >
if__ 
(__ 
ids__ 
.__  
Length__  &
>__' (
$num__) *
)__* +
{`` 
userCategoryaa (
.aa( )
UserSubCategoriesaa) :
=aa; <
thisaa= A
.aaA B&
_userSubCategoryRepositoryaaB \
.aa\ ] 
GetUserSubCategoriesaa] q
(aaq r
userIdaar x
,aax y
idsaaz }
)aa} ~
;aa~ 
}bb 
}cc 
}dd 
)dd 
;dd 
}ee 
finallyff 
{gg 
thishh 
.hh 
_unitOfWorkhh  
.hh  !
Closehh! &
(hh& '
)hh' (
;hh( )
}ii 
returnkk 
userCategorieskk !
;kk! "
}ll 	
}mm 
}nn ∑;
JD:\DotNetCore\DotNetCoreAPI\Services\Implementations\UserProfileService.cs
	namespace		 	
Services		
 
.		 
Implementations		 "
{

 
public 

class 
UserProfileService #
:$ %
BaseService& 1
,1 2
IUserProfileService3 F
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly "
IUserProfileRepository /"
_userProfileRepository0 F
;F G
public   
UserProfileService   !
(  ! "
IUnitOfWork  " -

unitOfWork  . 8
,  8 9"
IUserProfileRepository  : P!
userProfileRepository  Q f
)  f g
:  h i
base  j n
(  n o
)  o p
{!! 	
this"" 
."" 
_unitOfWork"" 
="" 

unitOfWork"" )
;"") *
this## 
.## "
_userProfileRepository## '
=##( )!
userProfileRepository##* ?
;##? @
this$$ 
.$$ "
_userProfileRepository$$ '
.$$' (

UnitOfWork$$( 2
=$$3 4

unitOfWork$$5 ?
;$$? @
}%% 	
public11 
bool11 
AddUserProfile11 "
(11" #
UserProfile11# .
userProfile11/ :
,11: ;
Devices11< C
device11D J
,11J K
string11L R
language11S [
)11[ \
{22 	
bool33 
IsAdded33 
=33 
false33  
;33  !
this44 
.44 
_unitOfWork44 
.44 
Open44 !
(44! "
)44" #
;44# $
try55 
{66 
this77 
.77 
logger77 
.77 
Debug77 !
(77! "
$"77" $A
5Getting the user profile information with the email: 77$ Y
{77Y Z
userProfile77Z e
.77e f
EmailAddress77f r
}77r s
"77s t
)77t u
;77u v
UserProfile88 
dbUserProfile88 )
=88* +
this88, 0
.880 1"
_userProfileRepository881 G
.88G H
Get88H K
(88K L
$num88L M
,88M N
userProfile88O Z
.88Z [
UserId88[ a
)88a b
;88b c
if99 
(99 
dbUserProfile99 !
==99" $
null99% )
)99) *
{:: 
this;; 
.;; 
_unitOfWork;; $
.;;$ %
BeginTransaction;;% 5
(;;5 6
);;6 7
;;;7 8
this<< 
.<< 
logger<< 
.<<  
Debug<<  %
(<<% &
$str<<& I
)<<I J
;<<J K
this== 
.== "
_userProfileRepository== /
.==/ 0
Insert==0 6
(==6 7
userProfile==7 B
)==B C
;==C D
this>> 
.>> 
_unitOfWork>> $
.>>$ %
CommitTransaction>>% 6
(>>6 7
)>>7 8
;>>8 9
IsAdded?? 
=?? 
true?? "
;??" #
}@@ 
elseAA 
{BB 
throwCC 
newCC 
LevelsUpExceptionCC /
(CC/ 0
ErrorMessagesCC0 =
.CC= >&
USER_PROFILE_ALREADY_EXISTCC> X
,CCX Y

ErrorCodesCCZ d
.CCd e
ConflictCCe m
)CCm n
;CCn o
}DD 
}EE 
catchFF 
(FF 
	ExceptionFF 
)FF 
{GG 
thisHH 
.HH 
_unitOfWorkHH  
.HH  !
RollBackTransactionHH! 4
(HH4 5
)HH5 6
;HH6 7
throwII 
;II 
}JJ 
finallyKK 
{LL 
thisMM 
.MM 
_unitOfWorkMM  
.MM  !
CloseMM! &
(MM& '
)MM' (
;MM( )
}NN 
returnPP 
IsAddedPP 
;PP 
}QQ 	
public]] 
UserProfile]] 
GetUserProfile]] )
(]]) *
int]]* -
?]]- .
	profileId]]/ 8
,]]8 9
string]]: @
userId]]A G
=]]H I
null]]J N
,]]N O
string]]P V
mobileNumber]]W c
=]]d e
null]]f j
)]]j k
{^^ 	
this__ 
.__ 
_unitOfWork__ 
.__ 
Open__ !
(__! "
)__" #
;__# $
UserProfile`` 
userProfile`` #
=``$ %
null``& *
;``* +
tryaa 
{bb 
userProfilecc 
=cc 
thiscc "
.cc" #"
_userProfileRepositorycc# 9
.cc9 :
Getcc: =
(cc= >
	profileIdcc> G
,ccG H
userIdccI O
,ccO P
mobileNumberccQ ]
)cc] ^
;cc^ _
}dd 
catchee 
(ee 
	Exceptionee 
)ee 
{ff 
thisgg 
.gg 
_unitOfWorkgg  
.gg  !
RollBackTransactiongg! 4
(gg4 5
)gg5 6
;gg6 7
throwhh 
;hh 
}ii 
finallyjj 
{kk 
thisll 
.ll 
_unitOfWorkll  
.ll  !
Closell! &
(ll& '
)ll' (
;ll( )
}mm 
returnoo 
userProfileoo 
;oo 
}pp 	
publicyy 
boolyy 
UpdateUserProfileyy %
(yy% &
UserProfileyy& 1
userProfileyy2 =
)yy= >
{zz 	
bool{{ 
	IsUpdated{{ 
={{ 
false{{ "
;{{" #
this|| 
.|| 
_unitOfWork|| 
.|| 
Open|| !
(||! "
)||" #
;||# $
try}} 
{~~ 
this 
. 
logger 
. 
Debug !
(! "
$str" K
)K L
;L M
this
ÄÄ 
.
ÄÄ 
_unitOfWork
ÄÄ  
.
ÄÄ  !
BeginTransaction
ÄÄ! 1
(
ÄÄ1 2
)
ÄÄ2 3
;
ÄÄ3 4
	IsUpdated
ÅÅ 
=
ÅÅ 
this
ÅÅ  
.
ÅÅ  !$
_userProfileRepository
ÅÅ! 7
.
ÅÅ7 8
Update
ÅÅ8 >
(
ÅÅ> ?
userProfile
ÅÅ? J
)
ÅÅJ K
;
ÅÅK L
this
ÇÇ 
.
ÇÇ 
_unitOfWork
ÇÇ  
.
ÇÇ  !
CommitTransaction
ÇÇ! 2
(
ÇÇ2 3
)
ÇÇ3 4
;
ÇÇ4 5
this
ÉÉ 
.
ÉÉ 
logger
ÉÉ 
.
ÉÉ 
Debug
ÉÉ !
(
ÉÉ! "
$str
ÉÉ" J
)
ÉÉJ K
;
ÉÉK L
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
	Exception
ÖÖ 
)
ÖÖ 
{
ÜÜ 
this
áá 
.
áá 
_unitOfWork
áá  
.
áá  !!
RollBackTransaction
áá! 4
(
áá4 5
)
áá5 6
;
áá6 7
throw
àà 
;
àà 
}
ââ 
finally
ää 
{
ãã 
this
åå 
.
åå 
_unitOfWork
åå  
.
åå  !
Close
åå! &
(
åå& '
)
åå' (
;
åå( )
}
çç 
return
èè 
	IsUpdated
èè 
;
èè 
}
êê 	
}
ëë 
}íí ÆŒ
CD:\DotNetCore\DotNetCoreAPI\Services\Implementations\UserService.cs
	namespace 	
Services
 
. 
Implementations "
{ 
public 

class 
UserService 
: 
BaseService *
,* +
IUserService, 8
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly "
IUserProfileRepository /"
_userProfileRepository0 F
;F G
private"" 
readonly"" 
IUserRepository"" (
_userRepository"") 8
;""8 9
private'' 
readonly'' #
IUserCategoryRepository'' 0#
_userCategoryRepository''1 H
;''H I
private,, 
readonly,, 
ICategoryRepository,, ,
_categoryRepository,,- @
;,,@ A
private11 
readonly11 "
ISubCategoryRepository11 /"
_subCategoryRepository110 F
;11F G
private66 
readonly66 &
IUserSubCategoryRepository66 3&
_userSubCategoryRepository664 N
;66N O
private;; 
readonly;; $
IRefreshTokenRespository;; 1$
_refreshTokenRespository;;2 J
;;;J K
publicJJ 
UserServiceJJ 
(JJ 
IUnitOfWorkJJ &

unitOfWorkJJ' 1
,JJ1 2"
IUserProfileRepositoryJJ3 I!
userProfileRepositoryJJJ _
,JJ_ `
IUserRepositoryJJa p
userRepositoryJJq 
,	JJ Ä%
IUserCategoryRepository
JJÅ ò$
userCategoryRepository
JJô Ø
,
JJØ ∞
ICategoryRepositoryKK 
categoryRepositoryKK  2
,KK2 3"
ISubCategoryRepositoryKK4 J!
subCategoryRepositoryKKK `
,KK` a&
IUserSubCategoryRepositoryKKb |&
userSubCategoryRepository	KK} ñ
,
KKñ ó&
IRefreshTokenRespository
KKò ∞%
refreshTokenRespository
KK± »
)
KK» …
:
KK  À
base
KKÃ –
(
KK– —
)
KK— “
{LL 	
thisMM 
.MM 
_unitOfWorkMM 
=MM 

unitOfWorkMM )
;MM) *
thisNN 
.NN "
_userProfileRepositoryNN '
=NN( )!
userProfileRepositoryNN* ?
;NN? @
thisOO 
.OO "
_userProfileRepositoryOO '
.OO' (

UnitOfWorkOO( 2
=OO3 4

unitOfWorkOO5 ?
;OO? @
thisPP 
.PP 
_userRepositoryPP  
=PP! "
userRepositoryPP# 1
;PP1 2
thisQQ 
.QQ 
_userRepositoryQQ  
.QQ  !

UnitOfWorkQQ! +
=QQ, -

unitOfWorkQQ. 8
;QQ8 9
thisRR 
.RR #
_userCategoryRepositoryRR (
=RR) *"
userCategoryRepositoryRR+ A
;RRA B
thisSS 
.SS #
_userCategoryRepositorySS (
.SS( )

UnitOfWorkSS) 3
=SS4 5

unitOfWorkSS6 @
;SS@ A
thisTT 
.TT 
_categoryRepositoryTT $
=TT% &
categoryRepositoryTT' 9
;TT9 :
thisUU 
.UU "
_subCategoryRepositoryUU '
=UU( )!
subCategoryRepositoryUU* ?
;UU? @
thisVV 
.VV "
_subCategoryRepositoryVV '
.VV' (

UnitOfWorkVV( 2
=VV3 4

unitOfWorkVV5 ?
;VV? @
thisWW 
.WW 
_categoryRepositoryWW $
.WW$ %

UnitOfWorkWW% /
=WW0 1

unitOfWorkWW2 <
;WW< =
thisXX 
.XX &
_userSubCategoryRepositoryXX +
=XX, -%
userSubCategoryRepositoryXX. G
;XXG H
thisYY 
.YY $
_refreshTokenRespositoryYY )
=YY* +#
refreshTokenRespositoryYY, C
;YYC D
thisZZ 
.ZZ $
_refreshTokenRespositoryZZ )
.ZZ) *

UnitOfWorkZZ* 4
=ZZ5 6

unitOfWorkZZ7 A
;ZZA B
this[[ 
.[[ &
_userSubCategoryRepository[[ +
.[[+ ,

UnitOfWork[[, 6
=[[7 8

unitOfWork[[9 C
;[[C D
}\\ 	
publicgg 
boolgg 
AddRefreshTokengg #
(gg# $
RefreshTokengg$ 0
refreshTokengg1 =
)gg= >
{hh 	
boolii 
IsAddedii 
=ii 
falseii  
;ii  !
thisjj 
.jj 
_unitOfWorkjj 
.jj 
Openjj !
(jj! "
)jj" #
;jj# $
tryll 
{mm 
thisnn 
.nn 
_unitOfWorknn  
.nn  !
BeginTransactionnn! 1
(nn1 2
)nn2 3
;nn3 4
refreshTokenoo 
=oo 
thisoo #
.oo# $$
_refreshTokenRespositoryoo$ <
.oo< =
Insertoo= C
(ooC D
refreshTokenooD P
)ooP Q
;ooQ R
thispp 
.pp 
_unitOfWorkpp  
.pp  !
CommitTransactionpp! 2
(pp2 3
)pp3 4
;pp4 5
ifqq 
(qq 
refreshTokenqq  
!=qq! #
nullqq$ (
)qq( )
{rr 
IsAddedss 
=ss 
truess "
;ss" #
}tt 
}uu 
catchvv 
(vv 
	Exceptionvv 
)vv 
{ww 
thisxx 
.xx 
_unitOfWorkxx  
.xx  !
RollBackTransactionxx! 4
(xx4 5
)xx5 6
;xx6 7
throwyy 
;yy 
}zz 
finally{{ 
{|| 
this}} 
.}} 
_unitOfWork}}  
.}}  !
Close}}! &
(}}& '
)}}' (
;}}( )
}~~ 
return
ÄÄ 
IsAdded
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
ää 
bool
ää  
UpdateRefreshToken
ää &
(
ää& '
RefreshToken
ää' 3
refreshToken
ää4 @
)
ää@ A
{
ãã 	
bool
åå 
	IsUpdated
åå 
=
åå 
false
åå "
;
åå" #
this
çç 
.
çç 
_unitOfWork
çç 
.
çç 
Open
çç !
(
çç! "
)
çç" #
;
çç# $
try
éé 
{
èè 
this
êê 
.
êê 
_unitOfWork
êê  
.
êê  !
BeginTransaction
êê! 1
(
êê1 2
)
êê2 3
;
êê3 4
	IsUpdated
ëë 
=
ëë 
this
ëë  
.
ëë  !&
_refreshTokenRespository
ëë! 9
.
ëë9 :
Update
ëë: @
(
ëë@ A
refreshToken
ëëA M
)
ëëM N
;
ëëN O
this
íí 
.
íí 
_unitOfWork
íí  
.
íí  !
CommitTransaction
íí! 2
(
íí2 3
)
íí3 4
;
íí4 5
}
ìì 
catch
îî 
(
îî 
	Exception
îî 
)
îî 
{
ïï 
this
ññ 
.
ññ 
_unitOfWork
ññ  
.
ññ  !!
RollBackTransaction
ññ! 4
(
ññ4 5
)
ññ5 6
;
ññ6 7
throw
óó 
;
óó 
}
òò 
finally
ôô 
{
öö 
this
õõ 
.
õõ 
_unitOfWork
õõ  
.
õõ  !
Close
õõ! &
(
õõ& '
)
õõ' (
;
õõ( )
}
úú 
return
ûû 
	IsUpdated
ûû 
;
ûû 
}
üü 	
public
©© 
RefreshToken
©© 
GetRefreshToken
©© +
(
©©+ ,
string
©©, 2
userId
©©3 9
,
©©9 :
string
©©; A
refreshToken
©©B N
)
©©N O
{
™™ 	
RefreshToken
´´ 
refreshTokenObj
´´ (
=
´´) *
null
´´+ /
;
´´/ 0
this
¨¨ 
.
¨¨ 
_unitOfWork
¨¨ 
.
¨¨ 
Open
¨¨ !
(
¨¨! "
)
¨¨" #
;
¨¨# $
try
ÆÆ 
{
ØØ 
refreshTokenObj
∞∞ 
=
∞∞  !
this
∞∞" &
.
∞∞& '&
_refreshTokenRespository
∞∞' ?
.
∞∞? @
Get
∞∞@ C
(
∞∞C D
userId
∞∞D J
,
∞∞J K
refreshToken
∞∞L X
)
∞∞X Y
;
∞∞Y Z
}
±± 
finally
≤≤ 
{
≥≥ 
this
¥¥ 
.
¥¥ 
_unitOfWork
¥¥  
.
¥¥  !
Close
¥¥! &
(
¥¥& '
)
¥¥' (
;
¥¥( )
}
µµ 
return
∑∑ 
refreshTokenObj
∑∑ "
;
∑∑" #
}
∏∏ 	
public
ƒƒ 
bool
ƒƒ 
RegisterUser
ƒƒ  
(
ƒƒ  !
UserProfile
ƒƒ! ,
userProfile
ƒƒ- 8
,
ƒƒ8 9
Devices
ƒƒ: A
device
ƒƒB H
,
ƒƒH I
string
ƒƒJ P
language
ƒƒQ Y
)
ƒƒY Z
{
≈≈ 	
bool
∆∆ 
IsRegistered
∆∆ 
=
∆∆ 
false
∆∆  %
;
∆∆% &
this
«« 
.
«« 
_unitOfWork
«« 
.
«« 
Open
«« !
(
««! "
)
««" #
;
««# $
try
»» 
{
…… 
this
   
.
   
logger
   
.
   
Debug
   !
(
  ! "
$"
  " $C
5Getting the user profile information with the email: 
  $ Y
{
  Y Z
userProfile
  Z e
.
  e f
EmailAddress
  f r
}
  r s
"
  s t
)
  t u
;
  u v
UserProfile
ÀÀ 
dbUserProfile
ÀÀ )
=
ÀÀ* +
this
ÀÀ, 0
.
ÀÀ0 1$
_userProfileRepository
ÀÀ1 G
.
ÀÀG H
Get
ÀÀH K
(
ÀÀK L
$num
ÀÀL M
,
ÀÀM N
userProfile
ÀÀO Z
.
ÀÀZ [
UserId
ÀÀ[ a
)
ÀÀa b
;
ÀÀb c
if
ÃÃ 
(
ÃÃ 
dbUserProfile
ÃÃ !
!=
ÃÃ" $
null
ÃÃ% )
)
ÃÃ) *
{
ÕÕ 
throw
ŒŒ 
new
ŒŒ 
LevelsUpException
ŒŒ /
(
ŒŒ/ 0
ErrorMessages
ŒŒ0 =
.
ŒŒ= >(
USER_PROFILE_ALREADY_EXIST
ŒŒ> X
,
ŒŒX Y

ErrorCodes
ŒŒZ d
.
ŒŒd e
Conflict
ŒŒe m
)
ŒŒm n
;
ŒŒn o
}
œœ 
this
—— 
.
—— 
_unitOfWork
——  
.
——  !
BeginTransaction
——! 1
(
——1 2
)
——2 3
;
——3 4
this
““ 
.
““ 
logger
““ 
.
““ 
Debug
““ !
(
““! "
$str
““" E
)
““E F
;
““F G
this
”” 
.
”” $
_userProfileRepository
”” +
.
””+ ,
Insert
””, 2
(
””2 3
userProfile
””3 >
)
””> ?
;
””? @
this
‘‘ 
.
‘‘ 
_unitOfWork
‘‘  
.
‘‘  !
CommitTransaction
‘‘! 2
(
‘‘2 3
)
‘‘3 4
;
‘‘4 5
IsRegistered
’’ 
=
’’ 
true
’’ #
;
’’# $
}
÷÷ 
catch
◊◊ 
(
◊◊ 
	Exception
◊◊ 
)
◊◊ 
{
ÿÿ 
this
ŸŸ 
.
ŸŸ 
_unitOfWork
ŸŸ  
.
ŸŸ  !!
RollBackTransaction
ŸŸ! 4
(
ŸŸ4 5
)
ŸŸ5 6
;
ŸŸ6 7
throw
⁄⁄ 
;
⁄⁄ 
}
€€ 
finally
‹‹ 
{
›› 
this
ﬁﬁ 
.
ﬁﬁ 
_unitOfWork
ﬁﬁ  
.
ﬁﬁ  !
Close
ﬁﬁ! &
(
ﬁﬁ& '
)
ﬁﬁ' (
;
ﬁﬁ( )
}
ﬂﬂ 
return
·· 
IsRegistered
·· 
;
··  
}
‚‚ 	
public
ÓÓ 
bool
ÓÓ 
VerifyAccount
ÓÓ !
(
ÓÓ! "
string
ÓÓ" (
mobileNumber
ÓÓ) 5
,
ÓÓ5 6
string
ÓÓ7 =
verificationCode
ÓÓ> N
)
ÓÓN O
{
ÔÔ 	
bool
 
	IsUpdated
 
=
 
false
 "
;
" #
this
ÒÒ 
.
ÒÒ 
_unitOfWork
ÒÒ 
.
ÒÒ 
Open
ÒÒ !
(
ÒÒ! "
)
ÒÒ" #
;
ÒÒ# $
try
ÚÚ 
{
ÛÛ 
this
ÙÙ 
.
ÙÙ 
logger
ÙÙ 
.
ÙÙ 
Debug
ÙÙ !
(
ÙÙ! "
$"
ÙÙ" $K
=Getting the user profile information with the mobile number: 
ÙÙ$ a
{
ÙÙa b
mobileNumber
ÙÙb n
}
ÙÙn o
"
ÙÙo p
)
ÙÙp q
;
ÙÙq r
UserProfile
ıı 
userProfile
ıı '
=
ıı( )
this
ıı* .
.
ıı. /$
_userProfileRepository
ıı/ E
.
ııE F
Get
ııF I
(
ııI J
$num
ııJ K
,
ııK L
mobileNumber
ııM Y
:
ııY Z
mobileNumber
ıı[ g
)
ııg h
;
ııh i
AspNetUsers
ˆˆ 
user
ˆˆ  
=
ˆˆ! "
this
ˆˆ# '
.
ˆˆ' (
_userRepository
ˆˆ( 7
.
ˆˆ7 8
Get
ˆˆ8 ;
(
ˆˆ; <
mobileNumber
ˆˆ< H
:
ˆˆH I
mobileNumber
ˆˆJ V
)
ˆˆV W
;
ˆˆW X
List
˜˜ 
<
˜˜ 
UserCategory
˜˜ !
>
˜˜! "
dbUserCategories
˜˜# 3
=
˜˜4 5
this
˜˜6 :
.
˜˜: ;%
_userCategoryRepository
˜˜; R
.
˜˜R S
Get
˜˜S V
(
˜˜V W
user
˜˜W [
.
˜˜[ \
Id
˜˜\ ^
)
˜˜^ _
;
˜˜_ `
List
¯¯ 
<
¯¯ 
UserSubCategory
¯¯ $
>
¯¯$ %!
dbUserSubCategories
¯¯& 9
=
¯¯: ;
this
¯¯< @
.
¯¯@ A(
_userSubCategoryRepository
¯¯A [
.
¯¯[ \
Get
¯¯\ _
(
¯¯_ `
user
¯¯` d
.
¯¯d e
Id
¯¯e g
)
¯¯g h
;
¯¯h i
if
˙˙ 
(
˙˙ 
userProfile
˙˙ 
==
˙˙  "
null
˙˙# '
)
˙˙' (
{
˚˚ 
throw
¸¸ 
new
¸¸ 
LevelsUpException
¸¸ /
(
¸¸/ 0
ErrorMessages
¸¸0 =
.
¸¸= >$
USER_PROFILE_NOT_EXIST
¸¸> T
,
¸¸T U

ErrorCodes
¸¸V `
.
¸¸` a
NotFound
¸¸a i
)
¸¸i j
;
¸¸j k
}
˝˝ 
if
ˇˇ 
(
ˇˇ 
!
ˇˇ 
userProfile
ˇˇ  
.
ˇˇ  !
VerificationCode
ˇˇ! 1
.
ˇˇ1 2
Equals
ˇˇ2 8
(
ˇˇ8 9
verificationCode
ˇˇ9 I
)
ˇˇI J
)
ˇˇJ K
{
ÄÄ 
throw
ÅÅ 
new
ÅÅ 
LevelsUpException
ÅÅ /
(
ÅÅ/ 0
ErrorMessages
ÅÅ0 =
.
ÅÅ= >,
USER_INVALID_VERIFICATION_CODE
ÅÅ> \
,
ÅÅ\ ]

ErrorCodes
ÅÅ^ h
.
ÅÅh i

BadRequest
ÅÅi s
)
ÅÅs t
;
ÅÅt u
}
ÇÇ 
this
ÑÑ 
.
ÑÑ 
logger
ÑÑ 
.
ÑÑ 
Debug
ÑÑ !
(
ÑÑ! "
$"
ÑÑ" $7
)Getting the user with the mobile number: 
ÑÑ$ M
{
ÑÑM N
mobileNumber
ÑÑN Z
}
ÑÑZ [
"
ÑÑ[ \
)
ÑÑ\ ]
;
ÑÑ] ^
AspNetUsers
ÖÖ 
aspNetUsers
ÖÖ '
=
ÖÖ( )
this
ÖÖ* .
.
ÖÖ. /
_userRepository
ÖÖ/ >
.
ÖÖ> ?
Get
ÖÖ? B
(
ÖÖB C
mobileNumber
ÖÖC O
:
ÖÖO P
mobileNumber
ÖÖQ ]
)
ÖÖ] ^
;
ÖÖ^ _
aspNetUsers
ÜÜ 
.
ÜÜ "
PhoneNumberConfirmed
ÜÜ 0
=
ÜÜ1 2
true
ÜÜ3 7
;
ÜÜ7 8
aspNetUsers
áá 
.
áá 
EmailConfirmed
áá *
=
áá+ ,
true
áá- 1
;
áá1 2
this
ââ 
.
ââ 
logger
ââ 
.
ââ 
Debug
ââ !
(
ââ! "
$str
ââ" :
)
ââ: ;
;
ââ; <
List
ää 
<
ää 
Category
ää 
>
ää 

categories
ää )
=
ää* +
this
ää, 0
.
ää0 1!
_categoryRepository
ää1 D
.
ääD E
GetAll
ääE K
(
ääK L
)
ääL M
;
ääM N

Dictionary
åå 
<
åå 
int
åå 
,
åå 
List
åå  $
<
åå$ %
SubCategory
åå% 0
>
åå0 1
>
åå1 2#
subCategoryDictionary
åå3 H
=
ååI J
new
ååK N

Dictionary
ååO Y
<
ååY Z
int
ååZ ]
,
åå] ^
List
åå_ c
<
ååc d
SubCategory
ååd o
>
ååo p
>
ååp q
(
ååq r
)
åår s
;
åås t
if
çç 
(
çç 

categories
çç 
.
çç 
IsAny
çç $
(
çç$ %
)
çç% &
)
çç& '
{
éé 
foreach
èè 
(
èè 
Category
èè %
category
èè& .
in
èè/ 1

categories
èè2 <
)
èè< =
{
êê 
this
ëë 
.
ëë 
logger
ëë #
.
ëë# $
Debug
ëë$ )
(
ëë) *
$"
ëë* ,3
%Getting the subcategory with the Id: 
ëë, Q
{
ëëQ R
category
ëëR Z
.
ëëZ [
Id
ëë[ ]
}
ëë] ^
 and Name: 
ëë^ i
{
ëëi j
category
ëëj r
.
ëër s
Name
ëës w
}
ëëw x
"
ëëx y
)
ëëy z
;
ëëz {
List
íí 
<
íí 
SubCategory
íí (
>
íí( )
subCategories
íí* 7
=
íí8 9
this
íí: >
.
íí> ?$
_subCategoryRepository
íí? U
.
ííU V
GetSubCategories
ííV f
(
ííf g
category
ííg o
.
íío p
Id
ííp r
)
íír s
;
íís t
this
ìì 
.
ìì 
logger
ìì #
.
ìì# $
Debug
ìì$ )
(
ìì) *
$"
ìì* ,6
(SubCategories for the category with Id: 
ìì, T
{
ììT U
category
ììU ]
.
ìì] ^
Id
ìì^ `
}
ìì` a
 and Name: 
ììa l
{
ììl m
category
ììm u
.
ììu v
Name
ììv z
}
ììz {
 count is: ìì{ Ü
{ììÜ á
subCategoriesììá î
.ììî ï
Countììï ö
}ììö õ
"ììõ ú
)ììú ù
;ììù û
if
îî 
(
îî 
subCategories
îî )
.
îî) *
IsAny
îî* /
(
îî/ 0
)
îî0 1
)
îî1 2
{
ïï #
subCategoryDictionary
ññ 1
.
ññ1 2
Add
ññ2 5
(
ññ5 6
category
ññ6 >
.
ññ> ?
Id
ññ? A
,
ññA B
subCategories
ññC P
)
ññP Q
;
ññQ R
}
óó 
}
òò 
}
ôô 
this
õõ 
.
õõ 
_unitOfWork
õõ  
.
õõ  !
BeginTransaction
õõ! 1
(
õõ1 2
)
õõ2 3
;
õõ3 4
this
ùù 
.
ùù 
logger
ùù 
.
ùù 
Debug
ùù !
(
ùù! "
$str
ùù" O
)
ùùO P
;
ùùP Q
	IsUpdated
ûû 
=
ûû 
this
ûû  
.
ûû  !
_userRepository
ûû! 0
.
ûû0 1
Update
ûû1 7
(
ûû7 8
aspNetUsers
ûû8 C
)
ûûC D
;
ûûD E
List
†† 
<
†† 
UserCategory
†† !
>
††! "
userCategories
††# 1
=
††2 3
new
††4 7
List
††8 <
<
††< =
UserCategory
††= I
>
††I J
(
††J K
)
††K L
;
††L M
List
°° 
<
°° 
UserSubCategory
°° $
>
°°$ %
userSubCategories
°°& 7
=
°°8 9
new
°°: =
List
°°> B
<
°°B C
UserSubCategory
°°C R
>
°°R S
(
°°S T
)
°°T U
;
°°U V
foreach
¢¢ 
(
¢¢ 
Category
¢¢ !
category
¢¢" *
in
¢¢+ -

categories
¢¢. 8
)
¢¢8 9
{
££ 
if
§§ 
(
§§ 
dbUserCategories
§§ (
.
§§( )
Exists
§§) /
(
§§/ 0
x
§§0 1
=>
§§2 4
x
§§5 6
.
§§6 7

CategoryId
§§7 A
==
§§B D
category
§§E M
.
§§M N
Id
§§N P
)
§§P Q
==
§§R T
false
§§U Z
)
§§Z [
{
•• 
UserCategory
¶¶ $
userCategory
¶¶% 1
=
¶¶2 3
new
¶¶4 7
UserCategory
¶¶8 D
(
¶¶D E
)
¶¶E F
{
ßß 
AttributeKey
®® (
=
®®) *
category
®®+ 3
.
®®3 4
Name
®®4 8
.
®®8 9
ToPascal
®®9 A
(
®®A B
)
®®B C
,
®®C D
AttributeValue
©© *
=
©©+ ,
$str
©©- 0
,
©©0 1
UserId
™™ "
=
™™# $
userProfile
™™% 0
.
™™0 1
UserId
™™1 7
,
™™7 8

CategoryId
´´ &
=
´´' (
category
´´) 1
.
´´1 2
Id
´´2 4
}
¨¨ 
;
¨¨ 
userCategories
≠≠ &
.
≠≠& '
Add
≠≠' *
(
≠≠* +
userCategory
≠≠+ 7
)
≠≠7 8
;
≠≠8 9
}
ÆÆ 
List
∞∞ 
<
∞∞ 
SubCategory
∞∞ $
>
∞∞$ %
subCategories
∞∞& 3
=
∞∞4 5#
subCategoryDictionary
∞∞6 K
.
∞∞K L
Where
∞∞L Q
(
∞∞Q R
x
∞∞R S
=>
∞∞T V
x
∞∞W X
.
∞∞X Y
Key
∞∞Y \
==
∞∞] _
category
∞∞` h
.
∞∞h i
Id
∞∞i k
)
∞∞k l
?
∞∞l m
.
∞∞m n

SelectMany
∞∞n x
(
∞∞x y
y
∞∞y z
=>
∞∞{ }
y
∞∞~ 
.∞∞ Ä
Value∞∞Ä Ö
)∞∞Ö Ü
?∞∞Ü á
.∞∞á à
ToList∞∞à é
(∞∞é è
)∞∞è ê
;∞∞ê ë
subCategories
±± !
?
±±! "
.
±±" #
ForEach
±±# *
(
±±* +
subCategory
±±+ 6
=>
±±7 9
{
≤≤ 
if
≥≥ 
(
≥≥ !
dbUserSubCategories
≥≥ /
.
≥≥/ 0
Exists
≥≥0 6
(
≥≥6 7
x
≥≥7 8
=>
≥≥9 ;
x
≥≥< =
.
≥≥= >
SubCategoryId
≥≥> K
==
≥≥L N
subCategory
≥≥O Z
.
≥≥Z [
Id
≥≥[ ]
)
≥≥] ^
==
≥≥_ a
false
≥≥b g
)
≥≥g h
{
¥¥ 
UserSubCategory
µµ +
userSubCategory
µµ, ;
=
µµ< =
new
µµ> A
UserSubCategory
µµB Q
(
µµQ R
)
µµR S
{
∂∂ 
UserId
∑∑  &
=
∑∑' (
userProfile
∑∑) 4
.
∑∑4 5
UserId
∑∑5 ;
,
∑∑; <
AttributeKey
∏∏  ,
=
∏∏- .
subCategory
∏∏/ :
.
∏∏: ;
Name
∏∏; ?
,
∏∏? @
AttributeValue
ππ  .
=
ππ/ 0
$str
ππ1 4
,
ππ4 5
Repetitions
∫∫  +
=
∫∫, -
$num
∫∫. /
,
∫∫/ 0
SubCategoryId
ªª  -
=
ªª. /
subCategory
ªª0 ;
.
ªª; <
Id
ªª< >
}
ΩΩ 
;
ΩΩ 
userSubCategories
ææ -
.
ææ- .
Add
ææ. 1
(
ææ1 2
userSubCategory
ææ2 A
)
ææA B
;
ææB C
}
øø 
}
¿¿ 
)
¿¿ 
;
¿¿ 
}
¡¡ 
if
√√ 
(
√√ 
userCategories
√√ "
.
√√" #
IsAny
√√# (
(
√√( )
)
√√) *
)
√√* +
{
ƒƒ 
this
≈≈ 
.
≈≈ 
logger
≈≈ 
.
≈≈  
Debug
≈≈  %
(
≈≈% &
$str
≈≈& E
)
≈≈E F
;
≈≈F G
foreach
∆∆ 
(
∆∆ 
UserCategory
∆∆ )
userCategory
∆∆* 6
in
∆∆7 9
userCategories
∆∆: H
)
∆∆H I
{
«« 
this
»» 
.
»» %
_userCategoryRepository
»» 4
.
»»4 5
Insert
»»5 ;
(
»»; <
userCategory
»»< H
)
»»H I
;
»»I J
}
…… 
if
ÀÀ 
(
ÀÀ 
userSubCategories
ÀÀ )
.
ÀÀ) *
IsAny
ÀÀ* /
(
ÀÀ/ 0
)
ÀÀ0 1
)
ÀÀ1 2
{
ÃÃ 
this
ÕÕ 
.
ÕÕ 
logger
ÕÕ #
.
ÕÕ# $
Debug
ÕÕ$ )
(
ÕÕ) *
$str
ÕÕ* M
)
ÕÕM N
;
ÕÕN O
foreach
ŒŒ 
(
ŒŒ  !
UserSubCategory
ŒŒ! 0
userSubCategory
ŒŒ1 @
in
ŒŒA C
userSubCategories
ŒŒD U
)
ŒŒU V
{
œœ 
this
––  
.
––  !(
_userSubCategoryRepository
––! ;
.
––; <
Insert
––< B
(
––B C
userSubCategory
––C R
)
––R S
;
––S T
}
—— 
}
““ 
}
”” 
this
’’ 
.
’’ 
_unitOfWork
’’  
.
’’  !
CommitTransaction
’’! 2
(
’’2 3
)
’’3 4
;
’’4 5
	IsUpdated
◊◊ 
=
◊◊ 
true
◊◊  
;
◊◊  !
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ 
	Exception
ŸŸ 
)
ŸŸ 
{
⁄⁄ 
this
€€ 
.
€€ 
_unitOfWork
€€  
.
€€  !!
RollBackTransaction
€€! 4
(
€€4 5
)
€€5 6
;
€€6 7
throw
‹‹ 
;
‹‹ 
}
›› 
finally
ﬁﬁ 
{
ﬂﬂ 
this
‡‡ 
.
‡‡ 
_unitOfWork
‡‡  
.
‡‡  !
Close
‡‡! &
(
‡‡& '
)
‡‡' (
;
‡‡( )
}
·· 
return
„„ 
	IsUpdated
„„ 
;
„„ 
}
‰‰ 	
}
ÊÊ 
}ÁÁ ∞)
ND:\DotNetCore\DotNetCoreAPI\Services\Implementations\UserSubCategoryService.cs
	namespace		 	
Services		
 
.		 
Implementations		 "
{

 
public 

class "
UserSubCategoryService '
:( )
BaseService* 5
,5 6#
IUserSubCategoryService7 N
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly &
IUserSubCategoryRepository 3&
_userSubCategoryRepository4 N
;N O
private 
readonly "
ISubCategoryRepository /"
_subCategoryRepository0 F
;F G
public(( "
UserSubCategoryService(( %
(((% &
IUnitOfWork((& 1

unitOfWork((2 <
,((< =&
IUserSubCategoryRepository((> X%
userSubCategoryRepository((Y r
,((r s#
ISubCategoryRepository	((t ä#
subCategoryRepository
((ã †
)
((† °
:)) 
base)) 
()) 
))) 
{** 	
this++ 
.++ 
_unitOfWork++ 
=++ 

unitOfWork++ )
;++) *
this,, 
.,, &
_userSubCategoryRepository,, +
=,,, -%
userSubCategoryRepository,,. G
;,,G H
this-- 
.-- &
_userSubCategoryRepository-- +
.--+ ,

UnitOfWork--, 6
=--7 8

unitOfWork--9 C
;--C D
this.. 
... "
_subCategoryRepository.. '
=..( )!
subCategoryRepository..* ?
;..? @
this// 
.// "
_subCategoryRepository// '
.//' (

UnitOfWork//( 2
=//3 4

unitOfWork//5 ?
;//? @
}00 	
public99 
List99 
<99 
UserSubCategory99 #
>99# $
Get99% (
(99( )
string99) /
userId990 6
)996 7
{:: 	
List;; 
<;; 
UserSubCategory;;  
>;;  !
userSubCategories;;" 3
=;;4 5
null;;6 :
;;;: ;
this<< 
.<< 
_unitOfWork<< 
.<< 
Open<< !
(<<! "
)<<" #
;<<# $
try== 
{>> 
this?? 
.?? 
logger?? 
.?? 
Debug?? !
(??! "
$"??" $=
1Getting the user sub categories with the userId: ??$ U
{??U V
userId??V \
}??\ ]
"??] ^
)??^ _
;??_ `
userSubCategories@@ !
=@@" #
this@@$ (
.@@( )&
_userSubCategoryRepository@@) C
.@@C D
Get@@D G
(@@G H
userId@@H N
)@@N O
;@@O P
ListAA 
<AA 
intAA 
>AA 
subCategoriesIdAA )
=AA* +
userSubCategoriesAA, =
.AA= >
SelectAA> D
(AAD E
xAAE F
=>AAG I
xAAJ K
.AAK L
SubCategoryIdAAL Y
)AAY Z
.AAZ [
ToListAA[ a
(AAa b
)AAb c
;AAc d
thisBB 
.BB 
loggerBB 
.BB 
DebugBB !
(BB! "
$"BB" $#
SubCategories ids are: BB$ ;
{BB; <
subCategoriesIdBB< K
.BBK L#
GetCommaSeperatedStringBBL c
<BBc d
intBBd g
>BBg h
(BBh i
)BBi j
}BBj k
"BBk l
)BBl m
;BBm n
subCategoriesIdCC 
?CC  
.CC  !
ForEachCC! (
(CC( )
subCategoryIdCC) 6
=>CC7 9
{DD 
thisEE 
.EE 
loggerEE 
.EE  
DebugEE  %
(EE% &
$"EE& (2
&Getting the sub category with the id: EE( N
{EEN O
subCategoryIdEEO \
}EE\ ]
"EE] ^
)EE^ _
;EE_ `
SubCategoryFF 
subCategoryFF  +
=FF, -
thisFF. 2
.FF2 3"
_subCategoryRepositoryFF3 I
.FFI J
GetFFJ M
(FFM N
subCategoryIdFFN [
)FF[ \
;FF\ ]
ifGG 
(GG 
userSubCategoriesGG )
.GG) *
ExistsGG* 0
(GG0 1
xGG1 2
=>GG3 5
xGG6 7
.GG7 8
SubCategoryIdGG8 E
==GGF H
subCategoryIdGGI V
)GGV W
)GGW X
{HH 
userSubCategoriesII )
.II) *
FirstOrDefaultII* 8
(II8 9
xII9 :
=>II; =
xII> ?
.II? @
SubCategoryIdII@ M
==IIN P
subCategoryIdIIQ ^
)II^ _
.II_ `
SubCategoryII` k
=IIl m
subCategoryIIn y
;IIy z
}JJ 
}KK 
)KK 
;KK 
}LL 
finallyMM 
{NN 
thisOO 
.OO 
_unitOfWorkOO  
.OO  !
CloseOO! &
(OO& '
)OO' (
;OO( )
}PP 
returnRR 
userSubCategoriesRR $
;RR$ %
}SS 	
}TT 
}UU à
;D:\DotNetCore\DotNetCoreAPI\Services\Interfaces\IService.cs
	namespace 	
Services
 
. 

Interfaces 
{ 
public 

	interface 
IService 
{ 
}		 
}

 ª
FD:\DotNetCore\DotNetCoreAPI\Services\Interfaces\ISubCategoryService.cs
	namespace 	
Services
 
. 

Interfaces 
{ 
public		 

	interface		 
ISubCategoryService		 (
:		) *
IService		+ 3
{

 
SubCategory 
Get 
( 
int 
id 
) 
;  
} 
} ı
GD:\DotNetCore\DotNetCoreAPI\Services\Interfaces\IUserCategoryService.cs
	namespace 	
Services
 
. 

Interfaces 
{ 
public

 

	interface

  
IUserCategoryService

 )
:

* +
IService

, 4
{ 
List 
< 
UserCategory 
> 
Get 
( 
string %
userId& ,
), -
;- .
} 
} †
FD:\DotNetCore\DotNetCoreAPI\Services\Interfaces\IUserProfileService.cs
	namespace 	
Services
 
. 

Interfaces 
{ 
public 

	interface 
IUserProfileService (
:) *
IService+ 3
{ 
bool 
AddUserProfile 
( 
UserProfile '
userProfile( 3
,3 4
Devices5 <
device= C
,C D
stringE K
languageL T
)T U
;U V
UserProfile 
GetUserProfile "
(" #
int# &
?& '
	profileId( 1
,1 2
string3 9
userId: @
=A B
nullC G
,G H
stringI O
mobileNumberP \
=] ^
null_ c
)c d
;d e
bool$$ 
UpdateUserProfile$$ 
($$ 
UserProfile$$ *
userProfile$$+ 6
)$$6 7
;$$7 8
}%% 
}&& Ê	
?D:\DotNetCore\DotNetCoreAPI\Services\Interfaces\IUserService.cs
	namespace 	
Services
 
. 

Interfaces 
{ 
public		 

	interface		 
IUserService		 !
:		" #
IService		$ ,
{

 
bool 
VerifyAccount 
( 
string !
mobileNumber" .
,. /
string0 6
verificationCode7 G
)G H
;H I
bool 
RegisterUser 
( 
UserProfile %
userProfile& 1
,1 2
Devices3 :
device; A
,A B
stringC I
languageJ R
)R S
;S T
RefreshToken$$ 
GetRefreshToken$$ $
($$$ %
string$$% +
userId$$, 2
,$$2 3
string$$4 :
refreshToken$$; G
)$$G H
;$$H I
bool-- 
AddRefreshToken-- 
(-- 
RefreshToken-- )
refreshToken--* 6
)--6 7
;--7 8
bool66 
UpdateRefreshToken66 
(66  
RefreshToken66  ,
refreshToken66- 9
)669 :
;66: ;
}77 
}88 ˛
JD:\DotNetCore\DotNetCoreAPI\Services\Interfaces\IUserSubCategoryService.cs
	namespace 	
Services
 
. 

Interfaces 
{ 
public

 

	interface

 #
IUserSubCategoryService

 ,
:

- .
IService

/ 7
{ 
List 
< 
UserSubCategory 
> 
Get !
(! "
string" (
userId) /
)/ 0
;0 1
} 
} 