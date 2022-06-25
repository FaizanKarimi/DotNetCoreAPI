¨
.D:\DotNetCore\DotNetCoreAPI\Logging\ILogger.cs
	namespace 	
Logging
 
{ 
public 

	interface 
ILogger 
{		 
void 
Debug 
( 
string 
message !
=" #
$str$ &
,& '
string( .
emailAddress/ ;
=< =
$str> @
,@ A
[B C
CallerMemberNameC S
]S T
stringT Z

memberName[ e
=f g
$strh j
,j k
[l m
CallerLineNumberm }
]} ~
int	 ‚

lineNumber
ƒ 
=
Ž 
$num
 ‘
,
‘ ’
[
“ ”
CallerFilePath
” ¢
]
¢ £
string
¤ ª
fileName
« ³
=
´ µ
$str
¶ ¸
)
¸ ¹
;
¹ º
} 
} È#
-D:\DotNetCore\DotNetCoreAPI\Logging\Logger.cs
	namespace 	
Logging
 
{		 
public 

class 
Logger 
: 
ILogger !
{ 
private 
readonly 
NLog 
. 
Logger $
_logger% ,
;, -
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public!! 
Logger!! 
(!!  
IHttpContextAccessor!! *
httpContextAccessor!!+ >
)!!> ?
{"" 	
this## 
.## 
_logger## 
=## 
NLogBuilder## &
.##& '
ConfigureNLog##' 4
(##4 5
	Constants##5 >
.##> ?

NLogConfig##? I
)##I J
.##J K!
GetCurrentClassLogger##K `
(##` a
)##a b
;##b c
this%% 
.%%  
_httpContextAccessor%% %
=%%& '
httpContextAccessor%%( ;
;%%; <
}&& 	
public22 
void22 
Debug22 
(22 
string22  
message22! (
=22) *
$str22+ -
,22- .
string22/ 5
emailAddress226 B
=22C D
$str22E G
,22G H
[22I J
CallerMemberName22J Z
]22Z [
string22\ b

memberName22c m
=22n o
$str22p r
,22r s
[22t u
CallerLineNumber	22u …
]
22… †
int
22‡ Š

lineNumber
22‹ •
=
22– —
$num
22˜ ™
,
22™ š
[
22› œ
CallerFilePath
22œ ª
]
22ª «
string
22¬ ²
fileName
22³ »
=
22¼ ½
$str
22¾ À
)
22À Á
{33 	
this44 
.44 
_logger44 
.44 
Debug44 
(44 
this44 #
.44# $
_GetMessage44$ /
(44/ 0
message440 7
,447 8
emailAddress449 E
,44E F

memberName44G Q
,44Q R

lineNumber44S ]
,44] ^
fileName44_ g
)44g h
)44h i
;44i j
}55 	
privateDD 
stringDD 
_GetMessageDD "
(DD" #
stringDD# )
textDD* .
,DD. /
stringDD0 6
emailAddressDD7 C
,DDC D
stringDDE K

methodNameDDL V
,DDV W
intDDX [

lineNumberDD\ f
,DDf g
stringDDh n
fileNameDDo w
)DDw x
{EE 	
returnFF 
(FF 
$"FF 
	Message=[FF 
{FF  
textFF  $
}FF$ %
] EmailAddress=[FF% 5
{FF5 6
thisFF6 :
.FF: ;
_GetEmailAddressFF; K
(FFK L
emailAddressFFL X
)FFX Y
}FFY Z

] Method=[FFZ d
{FFd e

methodNameFFe o
}FFo p
] File=[FFp x
{FFx y
thisFFy }
.FF} ~
_GetFileName	FF~ Š
(
FFŠ ‹
fileName
FF‹ “
)
FF“ ”
}
FF” •
] LineNumber=[
FF• £
{
FF£ ¤

lineNumber
FF¤ ®
}
FF® ¯
]
FF¯ °
"
FF° ±
)
FF± ²
;
FF² ³
}GG 	
privatePP 
stringPP 
_GetEmailAddressPP '
(PP' (
stringPP( .
emailAddressPP/ ;
)PP; <
{QQ 	
ifRR 
(RR 
stringRR 
.RR 
IsNullOrEmptyRR $
(RR$ %
emailAddressRR% 1
)RR1 2
)RR2 3
{SS 
emailAddressTT 
=TT 
thisTT #
.TT# $ 
_httpContextAccessorTT$ 8
.TT8 9
GetCurrentUserEmailTT9 L
(TTL M
)TTM N
;TTN O
}UU 
returnWW 
emailAddressWW 
;WW  
}XX 	
private__ 
string__ 
_GetFileName__ #
(__# $
string__$ *
fileName__+ 3
)__3 4
{`` 	
returnaa 
fileNameaa 
.aa 
Splitaa !
(aa! "
$charaa" &
)aa& '
.aa' (
LastOrDefaultaa( 5
(aa5 6
)aa6 7
.aa7 8
Replaceaa8 ?
(aa? @
$straa@ E
,aaE F
stringaaG M
.aaM N
EmptyaaN S
)aaS T
;aaT U
}bb 	
}dd 
}ee ‘
9D:\DotNetCore\DotNetCoreAPI\Logging\LoggingInterceptor.cs
	namespace 	
Logging
 
{ 
public 

class 
LoggingInterceptor #
:$ %
IInterceptor& 2
{		 
private 
readonly 
ILogger  
_logger! (
;( )
public 
LoggingInterceptor !
(! "
ILogger" )
logger* 0
)0 1
{ 	
this 
. 
_logger 
= 
logger !
;! "
} 	
public 
void 
	Intercept 
( 
IInvocation )

invocation* 4
)4 5
{ 	
this 
. 

BeforeSend 
( 

invocation &
)& '
;' (

invocation   
.   
Proceed   
(   
)    
;    !
this"" 
."" 
	AfterSend"" 
("" 

invocation"" %
)""% &
;""& '
}## 	
private)) 
void)) 

BeforeSend)) 
())  
IInvocation))  +

invocation)), 6
)))6 7
{** 	
this++ 
.++ 
_logger++ 
.++ 
Debug++ 
(++ 
$"++ !&
Method execution started: ++! ;
{++; <

invocation++< F
.++F G
Method++G M
.++M N
Name++N R
}++R S
, FileName: ++S _
{++_ `

invocation++` j
.++j k

TargetType++k u
.++u v
Name++v z
}++z {
"++{ |
)++| }
;++} ~
},, 	
private22 
void22 
	AfterSend22 
(22 
IInvocation22 *

invocation22+ 5
)225 6
{33 	
this44 
.44 
_logger44 
.44 
Debug44 
(44 
$"44 !$
Method execution ended: 44! 9
{449 :

invocation44: D
.44D E
Method44E K
.44K L
Name44L P
}44P Q
, FileName: 44Q ]
{44] ^

invocation44^ h
.44h i

TargetType44i s
.44s t
Name44t x
}44x y
"44y z
)44z {
;44{ |
}55 	
}66 
}77 