�
9D:\DotNetCore\DotNetCoreAPI\Identity\LevelsUpDbContext.cs
	namespace 	
Identity
 
{ 
public 

class 
LevelsUpDbContext "
:# $
IdentityDbContext% 6
<6 7
LevelsUpUser7 C
>C D
{ 
public 
LevelsUpDbContext  
(  !
)! "
{# $
}% &
public 
LevelsUpDbContext  
(  !
DbContextOptions! 1
<1 2
LevelsUpDbContext2 C
>C D
optionsE L
)L M
:N O
baseP T
(T U
optionsU \
)\ ]
{^ _
}` a
	protected,, 
override,, 
void,, 

(,,- .#
DbContextOptionsBuilder,,. E
optionsBuilder,,F T
),,T U
{-- 	
if.. 
(.. 
!.. 
optionsBuilder.. 
...  
IsConfigured..  ,
).., -
{// 
IConfigurationRoot00 "

=001 2
new003 6 
ConfigurationBuilder007 K
(00K L
)00L M
.117 8
SetBasePath118 C
(11C D
	Directory11D M
.11M N
GetCurrentDirectory11N a
(11a b
)11b c
)11c d
.227 8
AddJsonFile228 C
(22C D
	Constants22D M
.22M N
AppSettingJsonFile22N `
)22` a
.337 8
Build338 =
(33= >
)33> ?
;33? @
string55 
connectionString55 '
=55( )

.557 8
GetConnectionString558 K
(55K L
	Constants55L U
.55U V 
ConnectionStringName55V j
)55j k
;55k l
optionsBuilder66 
.66 
UseSqlServer66 +
(66+ ,
connectionString66, <
)66< =
;66= >
}77 
}88 	
}99 
}:: �
4D:\DotNetCore\DotNetCoreAPI\Identity\LevelsUpUser.cs
	namespace 	
Identity
 
{ 
public

 

class

 
LevelsUpUser

 
:

 
IdentityUser

  ,
{ 
public 
DateTime 
DateRegistration (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ��
MD:\DotNetCore\DotNetCoreAPI\Identity\Migrations\20200815104251_MyMigration.cs
	namespace 	
Identity
 
. 

Migrations 
{ 
public 

partial 
class 
MyMigration $
:% &
	Migration' 0
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns
:
table
=>
new
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email   
=   
table   !
.  ! "
Column  " (
<  ( )
string  ) /
>  / 0
(  0 1
	maxLength  1 :
:  : ;
$num  < ?
,  ? @
nullable  A I
:  I J
true  K O
)  O P
,  P Q
NormalizedEmail!! #
=!!$ %
table!!& +
.!!+ ,
Column!!, 2
<!!2 3
string!!3 9
>!!9 :
(!!: ;
	maxLength!!; D
:!!D E
$num!!F I
,!!I J
nullable!!K S
:!!S T
true!!U Y
)!!Y Z
,!!Z [
EmailConfirmed"" "
=""# $
table""% *
.""* +
Column""+ 1
<""1 2
bool""2 6
>""6 7
(""7 8
nullable""8 @
:""@ A
false""B G
)""G H
,""H I
PasswordHash##  
=##! "
table### (
.##( )
Column##) /
<##/ 0
string##0 6
>##6 7
(##7 8
nullable##8 @
:##@ A
true##B F
)##F G
,##G H

=$$" #
table$$$ )
.$$) *
Column$$* 0
<$$0 1
string$$1 7
>$$7 8
($$8 9
nullable$$9 A
:$$A B
true$$C G
)$$G H
,$$H I
ConcurrencyStamp%% $
=%%% &
table%%' ,
.%%, -
Column%%- 3
<%%3 4
string%%4 :
>%%: ;
(%%; <
nullable%%< D
:%%D E
true%%F J
)%%J K
,%%K L
PhoneNumber&& 
=&&  !
table&&" '
.&&' (
Column&&( .
<&&. /
string&&/ 5
>&&5 6
(&&6 7
nullable&&7 ?
:&&? @
true&&A E
)&&E F
,&&F G 
PhoneNumberConfirmed'' (
='') *
table''+ 0
.''0 1
Column''1 7
<''7 8
bool''8 <
>''< =
(''= >
nullable''> F
:''F G
false''H M
)''M N
,''N O
TwoFactorEnabled(( $
=((% &
table((' ,
.((, -
Column((- 3
<((3 4
bool((4 8
>((8 9
(((9 :
nullable((: B
:((B C
false((D I
)((I J
,((J K

LockoutEnd)) 
=))  
table))! &
.))& '
Column))' -
<))- .
DateTimeOffset)). <
>))< =
())= >
nullable))> F
:))F G
true))H L
)))L M
,))M N
LockoutEnabled** "
=**# $
table**% *
.*** +
Column**+ 1
<**1 2
bool**2 6
>**6 7
(**7 8
nullable**8 @
:**@ A
false**B G
)**G H
,**H I
AccessFailedCount++ %
=++& '
table++( -
.++- .
Column++. 4
<++4 5
int++5 8
>++8 9
(++9 :
nullable++: B
:++B C
false++D I
)++I J
,++J K
DateRegistration,, $
=,,% &
table,,' ,
.,,, -
Column,,- 3
<,,3 4
DateTime,,4 <
>,,< =
(,,= >
nullable,,> F
:,,F G
false,,H M
),,M N
}-- 
,-- 
constraints.. 
:.. 
table.. "
=>..# %
{// 
table00 
.00 

PrimaryKey00 $
(00$ %
$str00% 5
,005 6
x007 8
=>009 ;
x00< =
.00= >
Id00> @
)00@ A
;00A B
}11 
)11 
;11 
migrationBuilder33 
.33 
CreateTable33 (
(33( )
name44 
:44 
$str44 (
,44( )
columns55 
:55 
table55 
=>55 !
new55" %
{66 
Id77 
=77 
table77 
.77 
Column77 %
<77% &
int77& )
>77) *
(77* +
nullable77+ 3
:773 4
false775 :
)77: ;
.88 

Annotation88 #
(88# $
$str88$ G
,88G H,
 SqlServerValueGenerationStrategy88I i
.88i j
IdentityColumn88j x
)88x y
,88y z
RoleId99 
=99 
table99 "
.99" #
Column99# )
<99) *
string99* 0
>990 1
(991 2
nullable992 :
:99: ;
false99< A
)99A B
,99B C
	ClaimType:: 
=:: 
table::  %
.::% &
Column::& ,
<::, -
string::- 3
>::3 4
(::4 5
nullable::5 =
:::= >
true::? C
)::C D
,::D E

ClaimValue;; 
=;;  
table;;! &
.;;& '
Column;;' -
<;;- .
string;;. 4
>;;4 5
(;;5 6
nullable;;6 >
:;;> ?
true;;@ D
);;D E
}<< 
,<< 
constraints== 
:== 
table== "
=>==# %
{>> 
table?? 
.?? 

PrimaryKey?? $
(??$ %
$str??% :
,??: ;
x??< =
=>??> @
x??A B
.??B C
Id??C E
)??E F
;??F G
table@@ 
.@@ 

ForeignKey@@ $
(@@$ %
nameAA 
:AA 
$strAA F
,AAF G
columnBB 
:BB 
xBB  !
=>BB" $
xBB% &
.BB& '
RoleIdBB' -
,BB- .
principalTableCC &
:CC& '
$strCC( 5
,CC5 6
principalColumnDD '
:DD' (
$strDD) -
,DD- .
onDeleteEE  
:EE  !
ReferentialActionEE" 3
.EE3 4
CascadeEE4 ;
)EE; <
;EE< =
}FF 
)FF 
;FF 
migrationBuilderHH 
.HH 
CreateTableHH (
(HH( )
nameII 
:II 
$strII (
,II( )
columnsJJ 
:JJ 
tableJJ 
=>JJ !
newJJ" %
{KK 
IdLL 
=LL 
tableLL 
.LL 
ColumnLL %
<LL% &
intLL& )
>LL) *
(LL* +
nullableLL+ 3
:LL3 4
falseLL5 :
)LL: ;
.MM 

AnnotationMM #
(MM# $
$strMM$ G
,MMG H,
 SqlServerValueGenerationStrategyMMI i
.MMi j
IdentityColumnMMj x
)MMx y
,MMy z
UserIdNN 
=NN 
tableNN "
.NN" #
ColumnNN# )
<NN) *
stringNN* 0
>NN0 1
(NN1 2
nullableNN2 :
:NN: ;
falseNN< A
)NNA B
,NNB C
	ClaimTypeOO 
=OO 
tableOO  %
.OO% &
ColumnOO& ,
<OO, -
stringOO- 3
>OO3 4
(OO4 5
nullableOO5 =
:OO= >
trueOO? C
)OOC D
,OOD E

ClaimValuePP 
=PP  
tablePP! &
.PP& '
ColumnPP' -
<PP- .
stringPP. 4
>PP4 5
(PP5 6
nullablePP6 >
:PP> ?
truePP@ D
)PPD E
}QQ 
,QQ 
constraintsRR 
:RR 
tableRR "
=>RR# %
{SS 
tableTT 
.TT 

PrimaryKeyTT $
(TT$ %
$strTT% :
,TT: ;
xTT< =
=>TT> @
xTTA B
.TTB C
IdTTC E
)TTE F
;TTF G
tableUU 
.UU 

ForeignKeyUU $
(UU$ %
nameVV 
:VV 
$strVV F
,VVF G
columnWW 
:WW 
xWW  !
=>WW" $
xWW% &
.WW& '
UserIdWW' -
,WW- .
principalTableXX &
:XX& '
$strXX( 5
,XX5 6
principalColumnYY '
:YY' (
$strYY) -
,YY- .
onDeleteZZ  
:ZZ  !
ReferentialActionZZ" 3
.ZZ3 4
CascadeZZ4 ;
)ZZ; <
;ZZ< =
}[[ 
)[[ 
;[[ 
migrationBuilder]] 
.]] 
CreateTable]] (
(]]( )
name^^ 
:^^ 
$str^^ (
,^^( )
columns__ 
:__ 
table__ 
=>__ !
new__" %
{`` 

=aa" #
tableaa$ )
.aa) *
Columnaa* 0
<aa0 1
stringaa1 7
>aa7 8
(aa8 9
nullableaa9 A
:aaA B
falseaaC H
)aaH I
,aaI J
ProviderKeybb 
=bb  !
tablebb" '
.bb' (
Columnbb( .
<bb. /
stringbb/ 5
>bb5 6
(bb6 7
nullablebb7 ?
:bb? @
falsebbA F
)bbF G
,bbG H
ProviderDisplayNamecc '
=cc( )
tablecc* /
.cc/ 0
Columncc0 6
<cc6 7
stringcc7 =
>cc= >
(cc> ?
nullablecc? G
:ccG H
trueccI M
)ccM N
,ccN O
UserIddd 
=dd 
tabledd "
.dd" #
Columndd# )
<dd) *
stringdd* 0
>dd0 1
(dd1 2
nullabledd2 :
:dd: ;
falsedd< A
)ddA B
}ee 
,ee 
constraintsff 
:ff 
tableff "
=>ff# %
{gg 
tablehh 
.hh 

PrimaryKeyhh $
(hh$ %
$strhh% :
,hh: ;
xhh< =
=>hh> @
newhhA D
{hhE F
xhhG H
.hhH I

,hhV W
xhhX Y
.hhY Z
ProviderKeyhhZ e
}hhf g
)hhg h
;hhh i
tableii 
.ii 

ForeignKeyii $
(ii$ %
namejj 
:jj 
$strjj F
,jjF G
columnkk 
:kk 
xkk  !
=>kk" $
xkk% &
.kk& '
UserIdkk' -
,kk- .
principalTablell &
:ll& '
$strll( 5
,ll5 6
principalColumnmm '
:mm' (
$strmm) -
,mm- .
onDeletenn  
:nn  !
ReferentialActionnn" 3
.nn3 4
Cascadenn4 ;
)nn; <
;nn< =
}oo 
)oo 
;oo 
migrationBuilderqq 
.qq 
CreateTableqq (
(qq( )
namerr 
:rr 
$strrr '
,rr' (
columnsss 
:ss 
tabless 
=>ss !
newss" %
{tt 
UserIduu 
=uu 
tableuu "
.uu" #
Columnuu# )
<uu) *
stringuu* 0
>uu0 1
(uu1 2
nullableuu2 :
:uu: ;
falseuu< A
)uuA B
,uuB C
RoleIdvv 
=vv 
tablevv "
.vv" #
Columnvv# )
<vv) *
stringvv* 0
>vv0 1
(vv1 2
nullablevv2 :
:vv: ;
falsevv< A
)vvA B
}ww 
,ww 
constraintsxx 
:xx 
tablexx "
=>xx# %
{yy 
tablezz 
.zz 

PrimaryKeyzz $
(zz$ %
$strzz% 9
,zz9 :
xzz; <
=>zz= ?
newzz@ C
{zzD E
xzzF G
.zzG H
UserIdzzH N
,zzN O
xzzP Q
.zzQ R
RoleIdzzR X
}zzY Z
)zzZ [
;zz[ \
table{{ 
.{{ 

ForeignKey{{ $
({{$ %
name|| 
:|| 
$str|| E
,||E F
column}} 
:}} 
x}}  !
=>}}" $
x}}% &
.}}& '
RoleId}}' -
,}}- .
principalTable~~ &
:~~& '
$str~~( 5
,~~5 6
principalColumn '
:' (
$str) -
,- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� E
,
��E F
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateTable
�� (
(
��( )
name
�� 
:
�� 
$str
�� (
,
��( )
columns
�� 
:
�� 
table
�� 
=>
�� !
new
��" %
{
�� 
UserId
�� 
=
�� 
table
�� "
.
��" #
Column
��# )
<
��) *
string
��* 0
>
��0 1
(
��1 2
nullable
��2 :
:
��: ;
false
��< A
)
��A B
,
��B C

�� !
=
��" #
table
��$ )
.
��) *
Column
��* 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
nullable
��9 A
:
��A B
false
��C H
)
��H I
,
��I J
Name
�� 
=
�� 
table
��  
.
��  !
Column
��! '
<
��' (
string
��( .
>
��. /
(
��/ 0
nullable
��0 8
:
��8 9
false
��: ?
)
��? @
,
��@ A
Value
�� 
=
�� 
table
�� !
.
��! "
Column
��" (
<
��( )
string
��) /
>
��/ 0
(
��0 1
nullable
��1 9
:
��9 :
true
��; ?
)
��? @
}
�� 
,
�� 
constraints
�� 
:
�� 
table
�� "
=>
��# %
{
�� 
table
�� 
.
�� 

PrimaryKey
�� $
(
��$ %
$str
��% :
,
��: ;
x
��< =
=>
��> @
new
��A D
{
��E F
x
��G H
.
��H I
UserId
��I O
,
��O P
x
��Q R
.
��R S

��S `
,
��` a
x
��b c
.
��c d
Name
��d h
}
��i j
)
��j k
;
��k l
table
�� 
.
�� 

ForeignKey
�� $
(
��$ %
name
�� 
:
�� 
$str
�� F
,
��F G
column
�� 
:
�� 
x
��  !
=>
��" $
x
��% &
.
��& '
UserId
��' -
,
��- .
principalTable
�� &
:
��& '
$str
��( 5
,
��5 6
principalColumn
�� '
:
��' (
$str
��) -
,
��- .
onDelete
��  
:
��  !
ReferentialAction
��" 3
.
��3 4
Cascade
��4 ;
)
��; <
;
��< =
}
�� 
)
�� 
;
�� 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� (
,
��( )
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 2
,
��2 3
table
�� 
:
�� 
$str
�� )
,
��) *
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 1
,
��1 2
table
�� 
:
�� 
$str
�� (
,
��( )
column
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� "
,
��" #
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� )
)
��) *
;
��* +
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� %
,
��% &
table
�� 
:
�� 
$str
�� $
,
��$ %
column
�� 
:
�� 
$str
�� ,
,
��, -
unique
�� 
:
�� 
true
�� 
,
�� 
filter
�� 
:
�� 
$str
�� :
)
��: ;
;
��; <
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� '
)
��' (
;
��( )
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� (
)
��( )
;
��) *
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� 