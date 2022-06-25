‚
6D:\DotNetCore\DotNetCoreAPI\AutoMappers\IAutoMapper.cs
	namespace 	
AutoMappers
 
{ 
public 

	interface 
IAutoMapper  
{ 
} 
}		 ´&
GD:\DotNetCore\DotNetCoreAPI\AutoMappers\Profiles\LevelsUpUserProfile.cs
	namespace 	
AutoMappers
 
. 
Profiles 
{		 
public 

class 
LevelsUpUserProfile $
:% &
Profile' .
{ 
public 
override 
string 
ProfileName *
{ 	
get 
{ 
return "
AutoMapperProfileNames -
.- .
LevelsUpUserProfile. A
;A B
} 
} 	
public!! 
LevelsUpUserProfile!! "
(!!" #
)!!# $
{"" 	
this$$ 
.$$ 
	CreateMap$$ 
<$$ 
RegisterRequest$$ *
,$$* +
LevelsUpUser$$, 8
>$$8 9
($$9 :
)$$: ;
.%% 
	ForMember%% 
(%% 
dest%% 
=>%%  "
dest%%# '
.%%' (
UserName%%( 0
,%%0 1
opt%%2 5
=>%%6 8
opt%%9 <
.%%< =
MapFrom%%= D
(%%D E
src%%E H
=>%%I K
src%%L O
.%%O P
Email%%P U
)%%U V
)%%V W
.&& 
	ForMember&& 
(&& 
dest&& 
=>&&  "
dest&&# '
.&&' (
Email&&( -
,&&- .
opt&&/ 2
=>&&3 5
opt&&6 9
.&&9 :
MapFrom&&: A
(&&A B
src&&B E
=>&&F H
src&&I L
.&&L M
Email&&M R
)&&R S
)&&S T
.'' 
	ForMember'' 
('' 
dest'' 
=>''  "
dest''# '
.''' (
PhoneNumber''( 3
,''3 4
opt''5 8
=>''9 ;
opt''< ?
.''? @
MapFrom''@ G
(''G H
src''H K
=>''L N
src''O R
.''R S
MobileNumber''S _
)''_ `
)''` a
.(( 
	ForMember(( 
((( 
dest(( 
=>((  "
dest((# '
.((' (
DateRegistration((( 8
,((8 9
opt((: =
=>((> @
opt((A D
.((D E
MapFrom((E L
(((L M
src((M P
=>((Q S
DateTime((T \
.((\ ]
UtcNow((] c
)((c d
)((d e
;((e f
this++ 
.++ 
	CreateMap++ 
<++ 
AppSettings++ &
,++& '
RegisterRequest++( 7
>++7 8
(++8 9
)++9 :
.,, 
	ForMember,, 
(,, 
dest,, 
=>,,  "
dest,,# '
.,,' (
Email,,( -
,,,- .
opt,,/ 2
=>,,3 5
opt,,6 9
.,,9 :
MapFrom,,: A
(,,A B
src,,B E
=>,,F H
src,,I L
.,,L M
AdminUsername,,M Z
),,Z [
),,[ \
.-- 
	ForMember-- 
(-- 
dest-- 
=>--  "
dest--# '
.--' (
Password--( 0
,--0 1
opt--2 5
=>--6 8
opt--9 <
.--< =
MapFrom--= D
(--D E
src--E H
=>--I K
src--L O
.--O P
AdminPassword--P ]
)--] ^
)--^ _
... 
	ForMember.. 
(.. 
dest.. 
=>..  "
dest..# '
...' (
Country..( /
,../ 0
opt..1 4
=>..5 7
opt..8 ;
...; <
MapFrom..< C
(..C D
src..D G
=>..H J
src..K N
...N O
AdminCountry..O [
)..[ \
)..\ ]
.// 
	ForMember// 
(// 
dest// 
=>//  "
dest//# '
.//' (
CountryCode//( 3
,//3 4
opt//5 8
=>//9 ;
opt//< ?
.//? @
MapFrom//@ G
(//G H
src//H K
=>//L N
src//O R
.//R S
AdminCountryCode//S c
)//c d
)//d e
.00 
	ForMember00 
(00 
dest00 
=>00  "
dest00# '
.00' (
MobileNumber00( 4
,004 5
opt006 9
=>00: <
opt00= @
.00@ A
MapFrom00A H
(00H I
src00I L
=>00M O
src00P S
.00S T
AdminMobileNumber00T e
)00e f
)00f g
.11 
	ForMember11 
(11 
dest11 
=>11  "
dest11# '
.11' (
Name11( ,
,11, -
opt11. 1
=>112 4
opt115 8
.118 9
MapFrom119 @
(11@ A
src11A D
=>11E G
src11H K
.11K L
	AdminName11L U
)11U V
)11V W
;11W X
}22 	
}33 
}44 π
FD:\DotNetCore\DotNetCoreAPI\AutoMappers\Profiles\SubCategoryProfile.cs
	namespace 	
AutoMappers
 
. 
Profiles 
{ 
public 

class 
SubCategoryProfile #
:$ %
Profile& -
{ 
public 
override 
string 
ProfileName *
{ 	
get 
{ 
return "
AutoMapperProfileNames -
.- .
SubCategoryProfile. @
;@ A
} 
} 	
public 
SubCategoryProfile !
(! "
)" #
{   	
this"" 
."" 
	CreateMap"" 
<"" 
DatabaseModel"" (
.""( )
SubCategory"") 4
,""4 5,
 UserSubCategoryDetailInformation""6 V
>""V W
(""W X
)""X Y
.## 
	ForMember## 
(## 
dest## 
=>##  "
dest### '
.##' (
Points##( .
,##. /
opt##0 3
=>##4 6
opt##7 :
.##: ;
MapFrom##; B
(##B C
src##C F
=>##G I
src##J M
.##M N
TotalPoints##N Y
)##Y Z
)##Z [
.$$ 
	ForMember$$ 
($$ 
dest$$ 
=>$$  "
dest$$# '
.$$' (
Reps$$( ,
,$$, -
opt$$. 1
=>$$2 4
opt$$5 8
.$$8 9
MapFrom$$9 @
($$@ A
src$$A D
=>$$E G
src$$H K
.$$K L
Repetitions$$L W
)$$W X
)$$X Y
.%% 
	ForMember%% 
(%% 
dest%% 
=>%%  "
dest%%# '
.%%' (
TotalNumberOfPlay%%( 9
,%%9 :
opt%%; >
=>%%? A
opt%%B E
.%%E F
MapFrom%%F M
(%%M N
src%%N Q
=>%%R T
src%%U X
.%%X Y
PlaysPerDay%%Y d
)%%d e
)%%e f
.&& 
	ForMember&& 
(&& 
dest&& 
=>&&  "
dest&&# '
.&&' (
Description&&( 3
,&&3 4
opt&&5 8
=>&&9 ;
opt&&< ?
.&&? @
MapFrom&&@ G
(&&G H
src&&H K
=>&&L N
src&&O R
.&&R S
Description&&S ^
)&&^ _
)&&_ `
;&&` a
}'' 	
}(( 
})) 
GD:\DotNetCore\DotNetCoreAPI\AutoMappers\Profiles\UserCategoryProfile.cs
	namespace		 	
AutoMappers		
 
.		 
Profiles		 
{

 
public 

class 
UserCategoryProfile $
:% &
Profile' .
{ 
public 
override 
string 
ProfileName *
{ 	
get 
{ 
return "
AutoMapperProfileNames -
.- .
UserCategoryProfile. A
;A B
} 
} 	
public"" 
UserCategoryProfile"" "
(""" #
)""# $
{## 	
this%% 
.%% 
	CreateMap%% 
<%% 
DatabaseModels%% )
.%%) *
UserCategory%%* 6
,%%6 7#
UserCategoryInformation%%8 O
>%%O P
(%%P Q
)%%Q R
.&& 
	ForMember&& 
(&& 
dest&&  
=>&&! #
dest&&$ (
.&&( )
Category&&) 1
,&&1 2
opt&&3 6
=>&&7 9
opt&&: =
.&&= >
MapFrom&&> E
(&&E F
src&&F I
=>&&J L
src&&M P
.&&P Q
AttributeKey&&Q ]
.&&] ^
ToPascal&&^ f
(&&f g
)&&g h
)&&h i
)&&i j
.'' 
	ForMember'' 
('' 
dest''  
=>''! #
dest''$ (
.''( )

LevelValue'') 3
,''3 4
opt''5 8
=>''9 ;
opt''< ?
.''? @
MapFrom''@ G
(''G H
src''H K
=>''L N
src''O R
.''R S
AttributeValue''S a
)''a b
)''b c
.(( 
	ForMember(( 
((( 
dest((  
=>((! #
dest(($ (
.((( )&
UserSubCategoryInformation(() C
,((C D
opt((E H
=>((I K
opt((L O
.((O P
MapFrom((P W
<((W X.
"UserSubCategoryMemberValueResolver((X z
,((z {
List	((| Ä
<
((Ä Å
DatabaseModels
((Å è
.
((è ê
UserSubCategory
((ê ü
>
((ü †
>
((† °
(
((° ¢
s
((¢ £
=>
((§ ¶
s
((ß ®
.
((® ©
UserSubCategories
((© ∫
)
((∫ ª
)
((ª º
.)) 
	ForMember)) 
()) 
dest))  
=>))! #
dest))$ (
.))( )
IsLocked))) 1
,))1 2
opt))3 6
=>))7 9
opt)): =
.))= >
MapFrom))> E
<))E F+
UserCategoryLockedValueResolver))F e
>))e f
())f g
)))g h
)))h i
;))i j
}** 	
}++ 
},, ø[
?D:\DotNetCore\DotNetCoreAPI\AutoMappers\Profiles\UserProfile.cs
	namespace 	
AutoMappers
 
. 
Profiles 
{		 
public 

class 
UserProfile 
: 
Profile &
{ 
public 
override 
string 
ProfileName *
{ 	
get 
{ 
return "
AutoMapperProfileNames -
.- .
UserProfile. 9
;9 :
} 
} 	
public!! 
UserProfile!! 
(!! 
)!! 
{"" 	
this$$ 
.$$ 
	CreateMap$$ 
<$$ 
RegisterRequest$$ *
,$$* +
DatabaseModel$$, 9
.$$9 :
UserProfile$$: E
>$$E F
($$F G
)$$G H
.%% 
	ForMember%% 
(%% 
dest%% 
=>%%  "
dest%%# '
.%%' (
Name%%( ,
,%%, -
opt%%. 1
=>%%2 4
opt%%5 8
.%%8 9
MapFrom%%9 @
(%%@ A
src%%A D
=>%%E G
src%%H K
.%%K L
Name%%L P
)%%P Q
)%%Q R
.&& 
	ForMember&& 
(&& 
dest&& 
=>&&  "
dest&&# '
.&&' (
	CreatedOn&&( 1
,&&1 2
opt&&3 6
=>&&7 9
opt&&: =
.&&= >
MapFrom&&> E
(&&E F
src&&F I
=>&&J L
DateTime&&M U
.&&U V
UtcNow&&V \
)&&\ ]
)&&] ^
.'' 
	ForMember'' 
('' 
dest'' 
=>''  "
dest''# '
.''' (
	UpdatedOn''( 1
,''1 2
opt''3 6
=>''7 9
opt'': =
.''= >
MapFrom''> E
(''E F
src''F I
=>''J L
DateTime''M U
.''U V
UtcNow''V \
)''\ ]
)''] ^
.(( 
	ForMember(( 
((( 
dest(( 
=>((  "
dest((# '
.((' (
MobileNumber((( 4
,((4 5
opt((6 9
=>((: <
opt((= @
.((@ A
MapFrom((A H
(((H I
src((I L
=>((M O
src((P S
.((S T
MobileNumber((T `
)((` a
)((a b
.)) 
	ForMember)) 
()) 
dest)) 
=>))  "
dest))# '
.))' (
	IsDeleted))( 1
,))1 2
opt))3 6
=>))7 9
opt)): =
.))= >
MapFrom))> E
())E F
src))F I
=>))J L
src))M P
.))P Q
DeviceTypeId))Q ]
)))] ^
)))^ _
.** 
	ForMember** 
(** 
dest** 
=>**  "
dest**# '
.**' (
EmailAddress**( 4
,**4 5
opt**6 9
=>**: <
opt**= @
.**@ A
MapFrom**A H
(**H I
src**I L
=>**M O
src**P S
.**S T
Email**T Y
)**Y Z
)**Z [
.++ 
	ForMember++ 
(++ 
dest++ 
=>++  "
dest++# '
.++' (
VerificationCode++( 8
,++8 9
opt++: =
=>++> @
opt++A D
.++D E
Ignore++E K
(++K L
)++L M
)++M N
;++N O
this.. 
... 
	CreateMap.. 
<.. 
DatabaseModel.. (
...( )
UserProfile..) 4
,..4 5"
UserProfileInformation..6 L
>..L M
(..M N
)..N O
.// 
	ForMember// 
(// 
dest// 
=>//  "
dest//# '
.//' (
	ProfileId//( 1
,//1 2
opt//3 6
=>//7 9
opt//: =
.//= >
MapFrom//> E
(//E F
src//F I
=>//J L
src//M P
.//P Q
Id//Q S
)//S T
)//T U
.00 
	ForMember00 
(00 
dest00 
=>00  "
dest00# '
.00' (
Name00( ,
,00, -
opt00. 1
=>002 4
opt005 8
.008 9
MapFrom009 @
(00@ A
src00A D
=>00E G
src00H K
.00K L
Name00L P
)00P Q
)00Q R
.11 
	ForMember11 
(11 
dest11 
=>11  "
dest11# '
.11' (
Country11( /
,11/ 0
opt111 4
=>115 7
opt118 ;
.11; <
MapFrom11< C
(11C D
src11D G
=>11H J
src11K N
.11N O
Country11O V
)11V W
)11W X
.22 
	ForMember22 
(22 
dest22 
=>22  "
dest22# '
.22' (
CountryCode22( 3
,223 4
opt225 8
=>229 ;
opt22< ?
.22? @
MapFrom22@ G
(22G H
src22H K
=>22L N
src22O R
.22R S
CountryCode22S ^
)22^ _
)22_ `
.33 
	ForMember33 
(33 
dest33 
=>33  "
dest33# '
.33' (
EmailAddress33( 4
,334 5
opt336 9
=>33: <
opt33= @
.33@ A
MapFrom33A H
(33H I
src33I L
=>33M O
src33P S
.33S T
EmailAddress33T `
)33` a
)33a b
.44 
	ForMember44 
(44 
dest44 
=>44  "
dest44# '
.44' (
MobileNumber44( 4
,444 5
opt446 9
=>44: <
opt44= @
.44@ A
MapFrom44A H
(44H I
src44I L
=>44M O
src44P S
.44S T
MobileNumber44T `
)44` a
)44a b
.55 
	ForMember55 
(55 
dest55 
=>55  "
dest55# '
.55' (
FootballClub55( 4
,554 5
opt556 9
=>55: <
opt55= @
.55@ A
MapFrom55A H
(55H I
src55I L
=>55M O
src55P S
.55S T
FootballClub55T `
)55` a
)55a b
.66 
	ForMember66 
(66 
dest66 
=>66  "
dest66# '
.66' (
Age66( +
,66+ ,
opt66- 0
=>661 3
opt664 7
.667 8
MapFrom668 ?
(66? @
src66@ C
=>66D F
src66G J
.66J K
Age66K N
)66N O
)66O P
.77 
	ForMember77 
(77 
dest77 
=>77  "
dest77# '
.77' (
Position77( 0
,770 1
opt772 5
=>776 8
opt779 <
.77< =
MapFrom77= D
(77D E
src77E H
=>77I K
src77L O
.77O P
Position77P X
)77X Y
)77Y Z
;77Z [
this:: 
.:: 
	CreateMap:: 
<:: $
UpdateUserProfileRequest:: 3
,::3 4
DatabaseModel::5 B
.::B C
UserProfile::C N
>::N O
(::O P
)::P Q
.;; 
	ForMember;; 
(;; 
dest;; 
=>;;  "
dest;;# '
.;;' (
Id;;( *
,;;* +
opt;;, /
=>;;0 2
opt;;3 6
.;;6 7
MapFrom;;7 >
(;;> ?
src;;? B
=>;;C E
src;;F I
.;;I J
	ProfileId;;J S
);;S T
);;T U
.<< 
	ForMember<< 
(<< 
dest<< 
=><<  "
dest<<# '
.<<' (
EmailAddress<<( 4
,<<4 5
opt<<6 9
=><<: <
opt<<= @
.<<@ A
MapFrom<<A H
(<<H I
src<<I L
=><<M O
src<<P S
.<<S T
Email<<T Y
)<<Y Z
)<<Z [
.== 
	ForMember== 
(== 
dest== 
=>==  "
dest==# '
.==' (
Country==( /
,==/ 0
opt==1 4
=>==5 7
opt==8 ;
.==; <
MapFrom==< C
(==C D
src==D G
=>==H J
src==K N
.==N O
Country==O V
)==V W
)==W X
.>> 
	ForMember>> 
(>> 
dest>> 
=>>>  "
dest>># '
.>>' (
Position>>( 0
,>>0 1
opt>>2 5
=>>>6 8
opt>>9 <
.>>< =
MapFrom>>= D
(>>D E
src>>E H
=>>>I K
src>>L O
.>>O P
Position>>P X
)>>X Y
)>>Y Z
.?? 
	ForMember?? 
(?? 
dest?? 
=>??  "
dest??# '
.??' (
Age??( +
,??+ ,
opt??- 0
=>??1 3
opt??4 7
.??7 8
MapFrom??8 ?
(??? @
src??@ C
=>??D F
src??G J
.??J K
Age??K N
)??N O
)??O P
.@@ 
	ForMember@@ 
(@@ 
dest@@ 
=>@@  "
dest@@# '
.@@' (
FootballClub@@( 4
,@@4 5
opt@@6 9
=>@@: <
opt@@= @
.@@@ A
MapFrom@@A H
(@@H I
src@@I L
=>@@M O
src@@P S
.@@S T
FootballClub@@T `
)@@` a
)@@a b
.AA 
	ForMemberAA 
(AA 
destAA 
=>AA  "
destAA# '
.AA' (
NameAA( ,
,AA, -
optAA. 1
=>AA2 4
optAA5 8
.AA8 9
MapFromAA9 @
(AA@ A
srcAAA D
=>AAE G
srcAAH K
.AAK L
NameAAL P
)AAP Q
)AAQ R
.BB 
	ForMemberBB 
(BB 
destBB 
=>BB  "
destBB# '
.BB' (
UserIdBB( .
,BB. /
optBB0 3
=>BB4 6
optBB7 :
.BB: ;
IgnoreBB; A
(BBA B
)BBB C
)BBC D
.CC 
	ForMemberCC 
(CC 
destCC 
=>CC  "
destCC# '
.CC' (
MobileNumberCC( 4
,CC4 5
optCC6 9
=>CC: <
optCC= @
.CC@ A
IgnoreCCA G
(CCG H
)CCH I
)CCI J
.DD 
	ForMemberDD 
(DD 
destDD 
=>DD  "
destDD# '
.DD' (
CountryCodeDD( 3
,DD3 4
optDD5 8
=>DD9 ;
optDD< ?
.DD? @
IgnoreDD@ F
(DDF G
)DDG H
)DDH I
.EE 
	ForMemberEE 
(EE 
destEE 
=>EE  "
destEE# '
.EE' (
	IsDeletedEE( 1
,EE1 2
optEE3 6
=>EE7 9
optEE: =
.EE= >
IgnoreEE> D
(EED E
)EEE F
)EEF G
.FF 
	ForMemberFF 
(FF 
destFF 
=>FF  "
destFF# '
.FF' (
VerificationCodeFF( 8
,FF8 9
optFF: =
=>FF> @
optFFA D
.FFD E
IgnoreFFE K
(FFK L
)FFL M
)FFM N
.GG 
	ForMemberGG 
(GG 
destGG 
=>GG  "
destGG# '
.GG' (
	CreatedOnGG( 1
,GG1 2
optGG3 6
=>GG7 9
optGG: =
.GG= >
IgnoreGG> D
(GGD E
)GGE F
)GGF G
;GGG H
}HH 	
}II 
}JJ ¥
JD:\DotNetCore\DotNetCoreAPI\AutoMappers\Profiles\UserSubCategoryProfile.cs
	namespace 	
AutoMappers
 
. 
Profiles 
{ 
public 

class "
UserSubCategoryProfile '
:( )
Profile* 1
{ 
public 
override 
string 
ProfileName *
{ 	
get 
{ 
return "
AutoMapperProfileNames -
.- ."
UserSubCategoryProfile. D
;D E
} 
} 	
public   "
UserSubCategoryProfile   %
(  % &
)  & '
{!! 	
this## 
.## 
	CreateMap## 
<## 
DatabaseModels## )
.##) *
UserSubCategory##* 9
,##9 :&
UserSubCategoryInformation##; U
>##U V
(##V W
)##W X
.$$ 
	ForMember$$ 
($$ 
dest$$ #
=>$$$ &
dest$$' +
.$$+ ,
Category$$, 4
,$$4 5
opt$$6 9
=>$$: <
opt$$= @
.$$@ A
MapFrom$$A H
($$H I
src$$I L
=>$$M O
src$$P S
.$$S T
AttributeKey$$T `
)$$` a
)$$a b
.%% 
	ForMember%% 
(%% 
dest%% #
=>%%$ &
dest%%' +
.%%+ ,
CurrentRepetitions%%, >
,%%> ?
opt%%@ C
=>%%D F
opt%%G J
.%%J K
MapFrom%%K R
(%%R S
src%%S V
=>%%W Y
src%%Z ]
.%%] ^
Repetitions%%^ i
)%%i j
)%%j k
.&& 
	ForMember&& 
(&& 
dest&& #
=>&&$ &
dest&&' +
.&&+ ,
Points&&, 2
,&&2 3
opt&&4 7
=>&&8 :
opt&&; >
.&&> ?
MapFrom&&? F
(&&F G
src&&G J
=>&&K M
src&&N Q
.&&Q R
AttributeValue&&R `
)&&` a
)&&a b
.'' 
	ForMember'' 
('' 
dest'' #
=>''$ &
dest''' +
.''+ ,
IsLocked'', 4
,''4 5
opt''6 9
=>'': <
opt''= @
.''@ A
MapFrom''A H
<''H I.
"UserSubCategoryLockedValueResolver''I k
>''k l
(''l m
)''m n
)''n o
.(( 
	ForMember(( 
((( 
dest(( #
=>(($ &
dest((' +
.((+ ,
	ImagePath((, 5
,((5 6
opt((7 :
=>((; =
opt((> A
.((A B
MapFrom((B I
<((I J1
%UserSubCategoryImagePathValueResolver((J o
>((o p
(((p q
)((q r
)((r s
;((s t
})) 	
}** 
}++ ¿
YD:\DotNetCore\DotNetCoreAPI\AutoMappers\ValueResolvers\UserCategoryLockedValueResolver.cs
	namespace

 	
AutoMappers


 
.

 
ValueResolvers

 $
{ 
public 

class +
UserCategoryLockedValueResolver 0
:1 2
IValueResolver3 A
<A B
UserCategoryB N
,N O#
UserCategoryInformationP g
,g h
booli m
>m n
{ 
private 
readonly 
ICategoryRepository ,
_categoryRepository- @
;@ A
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly 
ILogger  
_logger! (
;( )
public&& +
UserCategoryLockedValueResolver&& .
(&&. /
ICategoryRepository&&/ B
categoryRepository&&C U
,&&U V
IUnitOfWork&&W b

unitOfWork&&c m
,&&m n
ILogger&&o v
logger&&w }
)&&} ~
{'' 	
this(( 
.(( 
_unitOfWork(( 
=(( 

unitOfWork(( )
;(() *
this)) 
.)) 
_logger)) 
=)) 
logger)) !
;))! "
this** 
.** 
_categoryRepository** $
=**% &
categoryRepository**' 9
;**9 :
this++ 
.++ 
_categoryRepository++ $
.++$ %

UnitOfWork++% /
=++0 1

unitOfWork++2 <
;++< =
},, 	
public99 
bool99 
Resolve99 
(99 
UserCategory99 (
source99) /
,99/ 0#
UserCategoryInformation991 H
destination99I T
,99T U
bool99V Z

destMember99[ e
,99e f
ResolutionContext99g x
context	99y Ä
)
99Ä Å
{:: 	
bool;; 
IsLocked;; 
=;; 
false;; !
;;;! "
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
.?? 
_logger?? 
.?? 
Debug?? "
(??" #
$"??# %*
Getting the category with id: ??% C
{??C D
source??D J
.??J K

CategoryId??K U
}??U V/
# in UserCategoryLockedValueResolver??V y
"??y z
)??z {
;??{ |
Category@@ 
category@@ !
=@@" #
this@@$ (
.@@( )
_categoryRepository@@) <
.@@< =
Get@@= @
(@@@ A
source@@A G
.@@G H

CategoryId@@H R
)@@R S
;@@S T
ifAA 
(AA 
categoryAA 
==AA 
nullAA  $
)AA$ %
{BB 
throwCC 
newCC 
LevelsUpExceptionCC /
(CC/ 0
ErrorMessagesCC0 =
.CC= >
CATEGORY_NOT_EXISTSCC> Q
,CCQ R

ErrorCodesCCS ]
.CC] ^
NotFoundCC^ f
)CCf g
;CCg h
}DD 
IsLockedFF 
=FF 
categoryFF #
.FF# $
IsLockedFF$ ,
;FF, -
}GG 
finallyHH 
{II 
thisJJ 
.JJ 
_unitOfWorkJJ  
.JJ  !
CloseJJ! &
(JJ& '
)JJ' (
;JJ( )
}KK 
returnMM 
IsLockedMM 
;MM 
}NN 	
}OO 
}PP Ë
_D:\DotNetCore\DotNetCoreAPI\AutoMappers\ValueResolvers\UserSubCategoryImagePathValueResolver.cs
	namespace

 	
AutoMappers


 
.

 
ValueResolvers

 $
{ 
public 

class 1
%UserSubCategoryImagePathValueResolver 6
:7 8
IValueResolver9 G
<G H
UserSubCategoryH W
,W X&
UserSubCategoryInformationY s
,s t
stringu {
>{ |
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly "
ISubCategoryRepository /"
_subCategoryRepository0 F
;F G
public'' 1
%UserSubCategoryImagePathValueResolver'' 4
(''4 5
IUnitOfWork''5 @

unitOfWork''A K
,''K L
ILogger''M T
logger''U [
,''[ \"
ISubCategoryRepository''] s"
subCategoryRepository	''t â
)
''â ä
{(( 	
this)) 
.)) 
_unitOfWork)) 
=)) 

unitOfWork)) )
;))) *
this** 
.** 
_logger** 
=** 
logger** !
;**! "
this++ 
.++ "
_subCategoryRepository++ '
=++( )!
subCategoryRepository++* ?
;++? @
this,, 
.,, "
_subCategoryRepository,, '
.,,' (

UnitOfWork,,( 2
=,,3 4

unitOfWork,,5 ?
;,,? @
}-- 	
public:: 
string:: 
Resolve:: 
(:: 
UserSubCategory:: -
source::. 4
,::4 5&
UserSubCategoryInformation::6 P
destination::Q \
,::\ ]
string::^ d

destMember::e o
,::o p
ResolutionContext	::q Ç
context
::É ä
)
::ä ã
{;; 	
string<< 
	ImagePath<< 
=<< 
string<< %
.<<% &
Empty<<& +
;<<+ ,
this== 
.== 
_unitOfWork== 
.== 
Open== !
(==! "
)==" #
;==# $
try>> 
{?? 
this@@ 
.@@ 
_logger@@ 
.@@ 
Debug@@ "
(@@" #
$"@@# %1
%Getting the subcategory with the id: @@% J
{@@J K
source@@K Q
.@@Q R
SubCategoryId@@R _
}@@_ `
"@@` a
)@@a b
;@@b c
SubCategoryAA 
subCategoryAA '
=AA( )
thisAA* .
.AA. /"
_subCategoryRepositoryAA/ E
.AAE F
GetAAF I
(AAI J
sourceAAJ P
.AAP Q
SubCategoryIdAAQ ^
)AA^ _
;AA_ `
ifBB 
(BB 
subCategoryBB 
==BB  "
nullBB# '
)BB' (
{CC 
throwDD 
newDD 
LevelsUpExceptionDD /
(DD/ 0
ErrorMessagesDD0 =
.DD= >#
SUB_CATEGORY_NOT_EXISTSDD> U
,DDU V

ErrorCodesDDW a
.DDa b
NotFoundDDb j
,DDj k
sourceDDl r
.DDr s
SubCategoryId	DDs Ä
)
DDÄ Å
;
DDÅ Ç
}EE 
	ImagePathGG 
=GG 
subCategoryGG '
.GG' (
	ImagePathGG( 1
;GG1 2
}HH 
finallyII 
{JJ 
thisKK 
.KK 
_unitOfWorkKK  
.KK  !
CloseKK! &
(KK& '
)KK' (
;KK( )
}LL 
returnNN 
	ImagePathNN 
;NN 
}OO 	
}PP 
}QQ ñ
\D:\DotNetCore\DotNetCoreAPI\AutoMappers\ValueResolvers\UserSubCategoryLockedValueResolver.cs
	namespace

 	
AutoMappers


 
.

 
ValueResolvers

 $
{ 
public 

class .
"UserSubCategoryLockedValueResolver 3
:4 5
IValueResolver6 D
<D E
UserSubCategoryE T
,T U&
UserSubCategoryInformationV p
,p q
boolr v
?v w
>w x
{ 
private 
readonly "
ISubCategoryRepository /"
_subCategoryRepository0 F
;F G
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly 
ILogger  
_logger! (
;( )
public&& .
"UserSubCategoryLockedValueResolver&& 1
(&&1 2"
ISubCategoryRepository&&2 H!
subCategoryRepository&&I ^
,&&^ _
IUnitOfWork&&` k

unitOfWork&&l v
,&&v w
ILogger&&x 
logger
&&Ä Ü
)
&&Ü á
{'' 	
this(( 
.(( 
_unitOfWork(( 
=(( 

unitOfWork(( )
;(() *
this)) 
.)) 
_logger)) 
=)) 
logger)) !
;))! "
this** 
.** "
_subCategoryRepository** '
=**( )!
subCategoryRepository*** ?
;**? @
this++ 
.++ "
_subCategoryRepository++ '
.++' (

UnitOfWork++( 2
=++3 4

unitOfWork++5 ?
;++? @
},, 	
public99 
bool99 
?99 
Resolve99 
(99 
UserSubCategory99 ,
source99- 3
,993 4&
UserSubCategoryInformation995 O
destination99P [
,99[ \
bool99] a
?99a b

destMember99c m
,99m n
ResolutionContext	99o Ä
context
99Å à
)
99à â
{:: 	
bool;; 
IsLocked;; 
=;; 
false;; !
;;;! "
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
.?? 
_logger?? 
.?? 
Debug?? "
(??" #
$"??# %.
"Getting the sub category with id: ??% G
{??G H
source??H N
.??N O
SubCategoryId??O \
}??\ ]3
& in UserSubCategoryLockedValueResolver	??] É
"
??É Ñ
)
??Ñ Ö
;
??Ö Ü
SubCategory@@ 
subCategory@@ '
=@@( )
this@@* .
.@@. /"
_subCategoryRepository@@/ E
.@@E F
Get@@F I
(@@I J
source@@J P
.@@P Q
SubCategoryId@@Q ^
)@@^ _
;@@_ `
ifAA 
(AA 
subCategoryAA 
==AA  "
nullAA# '
)AA' (
{BB 
throwCC 
newCC 
LevelsUpExceptionCC /
(CC/ 0
ErrorMessagesCC0 =
.CC= >#
SUB_CATEGORY_NOT_EXISTSCC> U
,CCU V

ErrorCodesCCW a
.CCa b
NotFoundCCb j
,CCj k
sourceCCl r
.CCr s
SubCategoryId	CCs Ä
)
CCÄ Å
;
CCÅ Ç
}DD 
IsLockedFF 
=FF 
subCategoryFF &
.FF& '
IsLockedFF' /
;FF/ 0
}GG 
finallyHH 
{II 
thisJJ 
.JJ 
_unitOfWorkJJ  
.JJ  !
CloseJJ! &
(JJ& '
)JJ' (
;JJ( )
}KK 
returnMM 
IsLockedMM 
;MM 
}NN 	
}OO 
}PP ©
\D:\DotNetCore\DotNetCoreAPI\AutoMappers\ValueResolvers\UserSubCategoryMemberValueResolver.cs
	namespace 	
AutoMappers
 
. 
ValueResolvers $
{		 
public 

class .
"UserSubCategoryMemberValueResolver 3
:4 5 
IMemberValueResolver6 J
<J K
DatabaseModelsK Y
.Y Z
UserCategoryZ f
,f g#
UserCategoryInformationh 
,	 Ä
List
Å Ö
<
Ö Ü
DatabaseModels
Ü î
.
î ï
UserSubCategory
ï §
>
§ •
,
• ¶
List
ß ´
<
´ ¨(
UserSubCategoryInformation
¨ ∆
>
∆ «
>
« »
{ 
public 
List 
< &
UserSubCategoryInformation .
>. /
Resolve0 7
(7 8
DatabaseModels8 F
.F G
UserCategoryG S
sourceT Z
,Z [#
UserCategoryInformation\ s
destinationt 
,	 Ä
List
Å Ö
<
Ö Ü
DatabaseModels
Ü î
.
î ï
UserSubCategory
ï §
>
§ •
sourceMember
¶ ≤
,
≤ ≥
List
¥ ∏
<
∏ π(
UserSubCategoryInformation
π ”
>
” ‘

destMember
’ ﬂ
,
ﬂ ‡
ResolutionContext
· Ú
context
Û ˙
)
˙ ˚
{ 	
List 
< &
UserSubCategoryInformation +
>+ ,'
userSubCategoryInformations- H
=I J
newK N
ListO S
<S T&
UserSubCategoryInformationT n
>n o
(o p
)p q
;q r
if 
( 
sourceMember 
== 
null  $
||% '
sourceMember( 4
.4 5
IsNotAny5 =
(= >
)> ?
)? @
{   
return!! '
userSubCategoryInformations!! 2
;!!2 3
}"" 
foreach$$ 
($$ 
DatabaseModels$$ #
.$$# $
UserSubCategory$$$ 3
userSubCategory$$4 C
in$$D F
sourceMember$$G S
)$$S T
{%% 
DatabaseModels&& 
.&& 
SubCategory&& *
subCategory&&+ 6
=&&7 8
source&&9 ?
.&&? @
SubCategories&&@ M
.&&M N
FirstOrDefault&&N \
(&&\ ]
x&&] ^
=>&&_ a
x&&b c
.&&c d
Id&&d f
==&&g i
userSubCategory&&j y
.&&y z
SubCategoryId	&&z á
)
&&á à
;
&&à â&
UserSubCategoryInformation(( *&
userSubCategoryInformation((+ E
=((F G
new((H K&
UserSubCategoryInformation((L f
(((f g
)((g h
{)) 
CurrentRepetitions** &
=**' (
userSubCategory**) 8
.**8 9
Repetitions**9 D
,**D E
Points++ 
=++ 
userSubCategory++ ,
.++, -
AttributeValue++- ;
,++; <
IsLocked,, 
=,, 
subCategory,, *
?,,* +
.,,+ ,
IsLocked,,, 4
,,,4 5
	ImagePath-- 
=-- 
subCategory--  +
?--+ ,
.--, -
	ImagePath--- 6
,--6 7
Category.. 
=.. 
userSubCategory.. .
.... /
AttributeKey../ ;
}// 
;// '
userSubCategoryInformations00 +
.00+ ,
Add00, /
(00/ 0&
userSubCategoryInformation000 J
)00J K
;00K L
}11 
return33 '
userSubCategoryInformations33 .
;33. /
}44 	
}55 
}66 