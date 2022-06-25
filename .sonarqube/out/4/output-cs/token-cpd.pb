‚
HD:\DotNetCore\DotNetCoreAPI\Repository\Implementations\BaseRepository.cs
	namespace 	

Repository
 
. 
Implementations $
{ 
public 

class 
BaseRepository 
<  
T  !
>! "
:# $
IBaseRepository% 4
<4 5
T5 6
>6 7
where8 =
T> ?
:@ A
classB G
{ 
public 
IUnitOfWork 

UnitOfWork %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
Delete 
( 
T 
entity #
)# $
{   	
return!! 

UnitOfWork!! 
.!! 

Connection!! (
.!!( )
Delete!!) /
<!!/ 0
T!!0 1
>!!1 2
(!!2 3
entity!!3 9
,!!9 :

UnitOfWork!!; E
.!!E F
Transaction!!F Q
)!!Q R
;!!R S
}"" 	
public++ 
T++ 
Get++ 
(++ 
int++ 
id++ 
)++ 
{,, 	
return-- 

UnitOfWork-- 
.-- 

Connection-- (
.--( )
Get--) ,
<--, -
T--- .
>--. /
(--/ 0
id--0 2
)--2 3
;--3 4
}.. 	
public66 
List66 
<66 
T66 
>66 
GetAll66 
(66 
)66 
{77 	
return88 

UnitOfWork88 
.88 

Connection88 (
.88( )
GetList88) 0
<880 1
T881 2
>882 3
(883 4
)884 5
.885 6
ToList886 <
(88< =
)88= >
;88> ?
}99 	
publicBB 
TBB 
InsertBB 
(BB 
TBB 
entityBB  
)BB  !
{CC 	

UnitOfWorkDD 
.DD 

ConnectionDD !
.DD! "
InsertDD" (
<DD( )
TDD) *
>DD* +
(DD+ ,
entityDD, 2
,DD2 3

UnitOfWorkDD4 >
.DD> ?
TransactionDD? J
)DDJ K
;DDK L
returnEE 
entityEE 
;EE 
}FF 	
publicOO 
boolOO 
UpdateOO 
(OO 
TOO 
entityOO #
)OO# $
{PP 	
returnQQ 

UnitOfWorkQQ 
.QQ 

ConnectionQQ (
.QQ( )
UpdateQQ) /
<QQ/ 0
TQQ0 1
>QQ1 2
(QQ2 3
entityQQ3 9
,QQ9 :

UnitOfWorkQQ; E
.QQE F
TransactionQQF Q
)QQQ R
;QQR S
}RR 	
public[[ 
bool[[ 
Update[[ 
([[ 
List[[ 
<[[  
T[[  !
>[[! "
entities[[# +
)[[+ ,
{\\ 	
return]] 

UnitOfWork]] 
.]] 

Connection]] (
.]]( )
Update]]) /
<]]/ 0
List]]0 4
<]]4 5
T]]5 6
>]]6 7
>]]7 8
(]]8 9
entities]]9 A
,]]A B

UnitOfWork]]C M
.]]M N
Transaction]]N Y
)]]Y Z
;]]Z [
}^^ 	
}__ 
}`` µ
LD:\DotNetCore\DotNetCoreAPI\Repository\Implementations\CategoryRepository.cs
	namespace 	

Repository
 
. 
Implementations $
{ 
public 

class 
CategoryRepository #
:$ %
BaseRepository& 4
<4 5
Category5 =
>= >
,> ?
ICategoryRepository@ S
{ 
} 
} Ü
QD:\DotNetCore\DotNetCoreAPI\Repository\Implementations\RefreshTokenRespository.cs
	namespace 	

Repository
 
. 
Implementations $
{ 
public 

class #
RefreshTokenRespository (
:) *
BaseRepository+ 9
<9 :
RefreshToken: F
>F G
,G H$
IRefreshTokenRespositoryI a
{ 
public 
RefreshToken 
Get 
(  
string  &
userId' -
,- .
string/ 5
refreshToken6 B
)B C
{ 	
IPredicateGroup 
predicateGroup *
=+ ,
new- 0
PredicateGroup1 ?
(? @
)@ A
{B C
OperatorD L
=M N
GroupOperatorO \
.\ ]
And] `
,` a

Predicatesb l
=m n
newo r
Lists w
<w x

IPredicate	x Ç
>
Ç É
(
É Ñ
)
Ñ Ö
}
Ü á
;
á à
predicateGroup 
. 

Predicates %
.% &
Add& )
() *

Predicates* 4
.4 5
Field5 :
<: ;
RefreshToken; G
>G H
(H I
fieldI N
=>O Q
fieldR W
.W X
UserIdX ^
,^ _
Operator` h
.h i
Eqi k
,k l
userIdm s
)s t
)t u
;u v
predicateGroup 
. 

Predicates %
.% &
Add& )
() *

Predicates* 4
.4 5
Field5 :
<: ;
RefreshToken; G
>G H
(H I
fieldI N
=>O Q
fieldR W
.W X
TokenX ]
,] ^
Operator_ g
.g h
Eqh j
,j k
refreshTokenl x
)x y
)y z
;z {
return 

UnitOfWork 
. 

Connection (
.( )
GetList) 0
<0 1
RefreshToken1 =
>= >
(> ?
predicateGroup? M
)M N
.N O
FirstOrDefaultO ]
(] ^
)^ _
;_ `
} 	
} 
}   ¯

OD:\DotNetCore\DotNetCoreAPI\Repository\Implementations\SubCategoryRepository.cs
	namespace 	

Repository
 
. 
Implementations $
{ 
public 

class !
SubCategoryRepository &
:' (
BaseRepository) 7
<7 8
SubCategory8 C
>C D
,D E"
ISubCategoryRepositoryF \
{ 
public 
List 
< 
SubCategory 
>  
GetSubCategories! 1
(1 2
int2 5

categoryId6 @
)@ A
{ 	

IPredicate 
	predicate  
=! "

Predicates# -
.- .
Field. 3
<3 4
SubCategory4 ?
>? @
(@ A
fieldA F
=>G I
fieldJ O
.O P

CategoryIdP Z
,Z [
Operator\ d
.d e
Eqe g
,g h

categoryIdi s
)s t
;t u
return 

UnitOfWork 
. 

Connection (
.( )
GetList) 0
<0 1
SubCategory1 <
>< =
(= >
	predicate> G
)G H
.H I
ToListI O
(O P
)P Q
;Q R
} 	
} 
} È

PD:\DotNetCore\DotNetCoreAPI\Repository\Implementations\UserCategoryRepository.cs
	namespace 	

Repository
 
. 
Implementations $
{ 
public 

class "
UserCategoryRepository '
:( )
BaseRepository* 8
<8 9
UserCategory9 E
>E F
,F G#
IUserCategoryRepositoryH _
{ 
public 
List 
< 
UserCategory  
>  !
Get" %
(% &
string& ,
userId- 3
)3 4
{ 	

IPredicate 
	predicate  
=! "

Predicates# -
.- .
Field. 3
<3 4
UserCategory4 @
>@ A
(A B
fieldB G
=>H J
fieldK P
.P Q
UserIdQ W
,W X
OperatorY a
.a b
Eqb d
,d e
userIdf l
)l m
;m n
return 

UnitOfWork 
. 

Connection (
.( )
GetList) 0
<0 1
UserCategory1 =
>= >
(> ?
	predicate? H
)H I
.I J
ToListJ P
(P Q
)Q R
;R S
} 	
} 
} ì
OD:\DotNetCore\DotNetCoreAPI\Repository\Implementations\UserProfileRepository.cs
	namespace 	

Repository
 
. 
Implementations $
{ 
public 

class !
UserProfileRepository &
:' (
BaseRepository) 7
<7 8
UserProfile8 C
>C D
,D E"
IUserProfileRepositoryF \
{ 
public 
UserProfile 
Get 
( 
int "
?" #
	profileId$ -
,- .
string/ 5
userId6 <
== >
null? C
,C D
stringE K
mobileNumberL X
=Y Z
null[ _
)_ `
{ 	

IPredicate 
	predicate  
;  !
if 
( 
	profileId 
!= 
null !
&&" $
	profileId% .
!=/ 1
$num2 3
)3 4
{ 
	predicate 
= 

Predicates &
.& '
Field' ,
<, -
UserProfile- 8
>8 9
(9 :
field: ?
=>@ B
fieldC H
.H I
IdI K
,K L
OperatorM U
.U V
EqV X
,X Y
	profileIdZ c
)c d
;d e
} 
else 
if 
( 
! 
string 
. 
IsNullOrEmpty *
(* +
userId+ 1
)1 2
)2 3
{ 
	predicate   
=   

Predicates   &
.  & '
Field  ' ,
<  , -
UserProfile  - 8
>  8 9
(  9 :
field  : ?
=>  @ B
field  C H
.  H I
UserId  I O
,  O P
Operator  Q Y
.  Y Z
Eq  Z \
,  \ ]
userId  ^ d
)  d e
;  e f
}!! 
else"" 
{## 
	predicate$$ 
=$$ 

Predicates$$ &
.$$& '
Field$$' ,
<$$, -
UserProfile$$- 8
>$$8 9
($$9 :
field$$: ?
=>$$@ B
field$$C H
.$$H I
MobileNumber$$I U
,$$U V
Operator$$W _
.$$_ `
Eq$$` b
,$$b c
mobileNumber$$d p
)$$p q
;$$q r
}%% 
return'' 

UnitOfWork'' 
.'' 

Connection'' (
.''( )
GetList'') 0
<''0 1
UserProfile''1 <
>''< =
(''= >
	predicate''> G
)''G H
.''H I
FirstOrDefault''I W
(''W X
)''X Y
;''Y Z
}(( 	
})) 
}** –
HD:\DotNetCore\DotNetCoreAPI\Repository\Implementations\UserRepository.cs
	namespace 	

Repository
 
. 
Implementations $
{ 
public 

class 
UserRepository 
:  !
BaseRepository" 0
<0 1
AspNetUsers1 <
>< =
,= >
IUserRepository? N
{ 
public 
AspNetUsers 
Get 
( 
string %
userId& ,
=- .
null/ 3
,3 4
string5 ;
mobileNumber< H
=I J
nullK O
)O P
{ 	

IPredicate 
	predicate  
;  !
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
userId& ,
), -
)- .
{ 
	predicate 
= 

Predicates &
.& '
Field' ,
<, -
AspNetUsers- 8
>8 9
(9 :
field: ?
=>@ B
fieldC H
.H I
IdI K
,K L
OperatorM U
.U V
EqV X
,X Y
userIdZ `
)` a
;a b
} 
else 
{ 
	predicate   
=   

Predicates   &
.  & '
Field  ' ,
<  , -
AspNetUsers  - 8
>  8 9
(  9 :
field  : ?
=>  @ B
field  C H
.  H I
PhoneNumber  I T
,  T U
Operator  V ^
.  ^ _
Eq  _ a
,  a b
mobileNumber  c o
)  o p
;  p q
}!! 
return## 

UnitOfWork## 
.## 

Connection## (
.##( )
GetList##) 0
<##0 1
AspNetUsers##1 <
>##< =
(##= >
	predicate##> G
)##G H
.##H I
FirstOrDefault##I W
(##W X
)##X Y
;##Y Z
}$$ 	
}%% 
}&& Ø
SD:\DotNetCore\DotNetCoreAPI\Repository\Implementations\UserSubCategoryRepository.cs
	namespace 	

Repository
 
. 
Implementations $
{ 
public 

class %
UserSubCategoryRepository *
:+ ,
BaseRepository- ;
<; <
UserSubCategory< K
>K L
,L M&
IUserSubCategoryRepositoryN h
{ 
public 
List 
< 
UserSubCategory #
># $
Get% (
(( )
string) /
userId0 6
)6 7
{ 	

IPredicate 
	predicate  
=! "

Predicates# -
.- .
Field. 3
<3 4
UserSubCategory4 C
>C D
(D E
fieldE J
=>K M
fieldN S
.S T
UserIdT Z
,Z [
Operator\ d
.d e
Eqe g
,g h
userIdi o
)o p
;p q
return 

UnitOfWork 
. 

Connection (
.( )
GetList) 0
<0 1
UserSubCategory1 @
>@ A
(A B
	predicateB K
)K L
.L M
ToListM S
(S T
)T U
;U V
} 	
public%% 
List%% 
<%% 
UserSubCategory%% #
>%%# $ 
GetUserSubCategories%%% 9
(%%9 :
string%%: @
userId%%A G
,%%G H
int%%I L
[%%L M
]%%M N
subCategoryIds%%O ]
)%%] ^
{&& 	
IPredicateGroup'' 
predicateGroup'' *
=''+ ,
new''- 0
PredicateGroup''1 ?
(''? @
)''@ A
{''B C
Operator''D L
=''M N
GroupOperator''O \
.''\ ]
And''] `
,''` a

Predicates''b l
=''m n
new''o r
List''s w
<''w x

IPredicate	''x Ç
>
''Ç É
(
''É Ñ
)
''Ñ Ö
}
''Ü á
;
''á à
predicateGroup(( 
.(( 

Predicates(( %
.((% &
Add((& )
((() *

Predicates((* 4
.((4 5
Field((5 :
<((: ;
UserSubCategory((; J
>((J K
(((K L
field((L Q
=>((R T
field((U Z
.((Z [
UserId(([ a
,((a b
Operator((c k
.((k l
Eq((l n
,((n o
userId((p v
)((v w
)((w x
;((x y
predicateGroup)) 
.)) 

Predicates)) %
.))% &
Add))& )
())) *

Predicates))* 4
.))4 5
Field))5 :
<)): ;
UserSubCategory)); J
>))J K
())K L
field))L Q
=>))R T
field))U Z
.))Z [
SubCategoryId))[ h
,))h i
Operator))j r
.))r s
Eq))s u
,))u v
subCategoryIds	))w Ö
)
))Ö Ü
)
))Ü á
;
))á à
return** 

UnitOfWork** 
.** 

Connection** (
.**( )
GetList**) 0
<**0 1
UserSubCategory**1 @
>**@ A
(**A B
predicateGroup**B P
)**P Q
.**Q R
ToList**R X
(**X Y
)**Y Z
;**Z [
}++ 	
},, 
}-- ‰
DD:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\IBaseRepository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public

 

	interface

 
IBaseRepository

 $
<

$ %
T

% &
>

& '
:

( )
IRepository

* 5
{ 
T 	
Insert
 
( 
T 
entity 
) 
; 
bool 
Delete 
( 
T 
entity 
) 
; 
bool%% 
Update%% 
(%% 
T%% 
entity%% 
)%% 
;%% 
bool.. 
Update.. 
(.. 
List.. 
<.. 
T.. 
>.. 
entities.. $
)..$ %
;..% &
T77 	
Get77
 
(77 
int77 
id77 
)77 
;77 
List?? 
<?? 
T?? 
>?? 
GetAll?? 
(?? 
)?? 
;?? 
}@@ 
}AA Ç
HD:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\ICategoryRepository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public		 

	interface		 
ICategoryRepository		 (
:		) *
IBaseRepository		+ :
<		: ;
Category		; C
>		C D
{

 
} 
} Õ
MD:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\IRefreshTokenRespository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public		 

	interface		 $
IRefreshTokenRespository		 -
:		. /
IBaseRepository		0 ?
<		? @
RefreshToken		@ L
>		L M
{

 
RefreshToken 
Get 
( 
string 
userId  &
,& '
string( .
refreshToken/ ;
); <
;< =
} 
} °
@D:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\IRepository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public 

	interface 
IRepository  
{		 
IUnitOfWork 

UnitOfWork 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} »
KD:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\ISubCategoryRepository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public

 

	interface

 "
ISubCategoryRepository

 +
:

, -
IBaseRepository

. =
<

= >
SubCategory

> I
>

I J
{ 
List 
< 
SubCategory 
> 
GetSubCategories *
(* +
int+ .

categoryId/ 9
)9 :
;: ;
} 
} æ
LD:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\IUserCategoryRepository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public

 

	interface

 #
IUserCategoryRepository

 ,
:

- .
IBaseRepository

/ >
<

> ?
UserCategory

? K
>

K L
{ 
List 
< 
UserCategory 
> 
Get 
( 
string %
userId& ,
), -
;- .
} 
} œ
KD:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\IUserProfileRepository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public		 

	interface		 "
IUserProfileRepository		 +
:		, -
IBaseRepository		. =
<		= >
UserProfile		> I
>		I J
{

 
UserProfile 
Get 
( 
int 
? 
	profileId &
,& '
string( .
userId/ 5
=6 7
null8 <
,< =
string> D
mobileNumberE Q
=R S
nullT X
)X Y
;Y Z
} 
} ˚
DD:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\IUserRepository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public		 

	interface		 
IUserRepository		 $
:		% &
IBaseRepository		' 6
<		6 7
AspNetUsers		7 B
>		B C
{

 
AspNetUsers 
Get 
( 
string 
userId %
=& '
null( ,
,, -
string. 4
mobileNumber5 A
=B C
nullD H
)H I
;I J
} 
} Ë
OD:\DotNetCore\DotNetCoreAPI\Repository\Interfaces\IUserSubCategoryRepository.cs
	namespace 	

Repository
 
. 

Interfaces 
{ 
public

 

	interface

 &
IUserSubCategoryRepository

 /
:

0 1
IBaseRepository

2 A
<

A B
UserSubCategory

B Q
>

Q R
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
;0 1
List 
< 
UserSubCategory 
>  
GetUserSubCategories 2
(2 3
string3 9
userId: @
,@ A
intB E
[E F
]F G
subCategoryIdsH V
)V W
;W X
} 
} ¢
>D:\DotNetCore\DotNetCoreAPI\Repository\Provider\IUnitOfWork.cs
	namespace 	

Repository
 
. 
Provider 
{ 
public		 

	interface		 
IUnitOfWork		  
:		! "
IDisposable		# .
{

 
IDbConnection 

Connection  
{! "
get# &
;& '
set( +
;+ ,
}- .
IDbTransaction 
Transaction "
{# $
get% (
;( )
set* -
;- .
}/ 0
void 
Open 
( 
) 
; 
void## 
Close## 
(## 
)## 
;## 
IDbTransaction)) 
BeginTransaction)) '
())' (
)))( )
;))) *
void.. 
RollBackTransaction..  
(..  !
)..! "
;.." #
void33 
CommitTransaction33 
(33 
)33  
;33  !
}44 
}55 Ï(
8D:\DotNetCore\DotNetCoreAPI\Repository\Provider\MSSQL.cs
	namespace 	

Repository
 
. 
Provider 
{ 
public 

class 
MSSQL 
: 
IDbConnection &
{ 
public 
string 
ConnectionString &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
readonly 
SqlConnection &
_connection' 2
;2 3
public!! 
MSSQL!! 
(!! 
IConfiguration!! #
configuration!!$ 1
)!!1 2
{"" 	
ConnectionString## 
=## 
configuration## ,
.##, -
GetConnectionString##- @
(##@ A
	Constants##A J
.##J K 
ConnectionStringName##K _
)##_ `
;##` a
this$$ 
.$$ 
_connection$$ 
=$$ 
new$$ "
SqlConnection$$# 0
($$0 1
ConnectionString$$1 A
)$$A B
;$$B C
}%% 	
public,, 
void,, 
Open,, 
(,, 
),, 
{-- 	
if.. 
(.. 
this.. 
... 
_connection..  
...  !
State..! &
==..' )
ConnectionState..* 9
...9 :
Closed..: @
||..A C
this..D H
...H I
_connection..I T
...T U
State..U Z
==..[ ]
ConnectionState..^ m
...m n
Broken..n t
)..t u
{// 
this00 
.00 
_connection00  
.00  !
Open00! %
(00% &
)00& '
;00' (
}11 
}22 	
public77 
void77 
Close77 
(77 
)77 
{88 	
if99 
(99 
this99 
.99 
_connection99  
!=99! #
null99$ (
&&99) +
this99, 0
.990 1
_connection991 <
.99< =
State99= B
==99C E
ConnectionState99F U
.99U V
Open99V Z
)99Z [
{:: 
this;; 
.;; 
_connection;;  
.;;  !
Close;;! &
(;;& '
);;' (
;;;( )
}<< 
}== 	
publicCC 
voidCC 
ChangeDatabaseCC "
(CC" #
stringCC# )
databaseNameCC* 6
)CC6 7
{DD 	
thisEE 
.EE 
_connectionEE 
.EE 
ChangeDatabaseEE +
(EE+ ,
databaseNameEE, 8
)EE8 9
;EE9 :
}FF 	
publicKK 
intKK 
ConnectionTimeoutKK $
{LL 	
getMM 
{MM 
returnMM 
thisMM 
.MM 
_connectionMM )
.MM) *
ConnectionTimeoutMM* ;
;MM; <
}MM= >
}NN 	
publicSS 
stringSS 
DatabaseSS 
{TT 	
getUU 
{UU 
returnUU 
thisUU 
.UU 
_connectionUU )
.UU) *
DatabaseUU* 2
;UU2 3
}UU4 5
}VV 	
public[[ 
ConnectionState[[ 
State[[ $
{\\ 	
get]] 
{]] 
return]] 
this]] 
.]] 
_connection]] )
.]]) *
State]]* /
;]]/ 0
}]]1 2
}^^ 	
publicff 

IDbCommandff 
CreateCommandff '
(ff' (
)ff( )
{gg 	
returnhh 
thishh 
.hh 
_connectionhh #
.hh# $
CreateCommandhh$ 1
(hh1 2
)hh2 3
;hh3 4
}ii 	
publicss 
IDbTransactionss 
BeginTransactionss .
(ss. /
)ss/ 0
{tt 	
returnuu 
thisuu 
.uu 
_connectionuu #
.uu# $
BeginTransactionuu$ 4
(uu4 5
)uu5 6
;uu6 7
}vv 	
public 
IDbTransaction 
BeginTransaction .
(. /
IsolationLevel/ =
il> @
)@ A
{
ÄÄ 	
return
ÅÅ 
this
ÅÅ 
.
ÅÅ 
_connection
ÅÅ #
.
ÅÅ# $
BeginTransaction
ÅÅ$ 4
(
ÅÅ4 5
il
ÅÅ5 7
)
ÅÅ7 8
;
ÅÅ8 9
}
ÇÇ 	
public
ââ 
void
ââ 
Dispose
ââ 
(
ââ 
)
ââ 
{
ää 	
Dispose
ãã 
(
ãã 
true
ãã 
)
ãã 
;
ãã 
}
åå 	
	protected
íí 
virtual
íí 
void
íí 
Dispose
íí &
(
íí& '
bool
íí' +
	disposing
íí, 5
)
íí5 6
{
ìì 	
if
îî 
(
îî 
	disposing
îî 
)
îî 
{
ïï 
Close
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 
}
òò 	
}
öö 
}õõ ï
=D:\DotNetCore\DotNetCoreAPI\Repository\Provider\UnitOfWork.cs
	namespace 	

Repository
 
. 
Provider 
{ 
public		 

class		 

UnitOfWork		 
:		 
IUnitOfWork		 )
{

 
public 
IDbConnection 

Connection '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
IDbTransaction 
Transaction )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public"" 

UnitOfWork"" 
("" 
IDbConnection"" '

connection""( 2
)""2 3
{## 	

Connection$$ 
=$$ 

connection$$ #
;$$# $
}%% 	
public,, 
void,, 
Open,, 
(,, 
),, 
{-- 	
this.. 
... 

Connection.. 
... 
Open..  
(..  !
)..! "
;.." #
}// 	
public44 
void44 
Close44 
(44 
)44 
{55 	
if66 
(66 

Connection66 
.66 
State66  
==66! #
ConnectionState66$ 3
.663 4
Open664 8
||669 ;

Connection66< F
.66F G
State66G L
==66M O
ConnectionState66P _
.66_ `
Broken66` f
)66f g
{77 
this88 
.88 

Connection88 
.88  
Close88  %
(88% &
)88& '
;88' (
}99 
}:: 	
publicCC 
IDbTransactionCC 
BeginTransactionCC .
(CC. /
)CC/ 0
{DD 	
returnEE 
thisEE 
.EE 
TransactionEE #
=EE$ %

ConnectionEE& 0
.EE0 1
BeginTransactionEE1 A
(EEA B
)EEB C
;EEC D
}FF 	
publicKK 
voidKK 
RollBackTransactionKK '
(KK' (
)KK( )
{LL 	
ifMM 
(MM 
thisMM 
.MM 
TransactionMM  
!=MM! #
nullMM$ (
)MM( )
{NN 
thisOO 
.OO 
TransactionOO  
.OO  !
RollbackOO! )
(OO) *
)OO* +
;OO+ ,
}PP 
}QQ 	
publicVV 
voidVV 
CommitTransactionVV %
(VV% &
)VV& '
{WW 	
thisXX 
.XX 
TransactionXX 
.XX 
CommitXX #
(XX# $
)XX$ %
;XX% &
}YY 	
public__ 
void__ 
Dispose__ 
(__ 
)__ 
{`` 	
Disposeaa 
(aa 
trueaa 
)aa 
;aa 
}bb 	
publichh 
voidhh 
Disposehh 
(hh 
boolhh  
	disposinghh! *
)hh* +
{ii 	
ifjj 
(jj 
	disposingjj 
)jj 
{kk 
thisll 
.ll 
Closell 
(ll 
)ll 
;ll 
}mm 
}nn 	
}pp 
}qq 