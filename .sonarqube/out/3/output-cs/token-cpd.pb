Þ
FD:\DotNetCore\DotNetCoreAPI\Components\Implementation\BaseComponent.cs
	namespace 	

Components
 
. 
Implementation #
{ 
public 

abstract 
class 
BaseComponent '
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
	protected)) 
BaseComponent)) 
())  
)))  !
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
}66 á(
ED:\DotNetCore\DotNetCoreAPI\Components\Implementation\EmailService.cs
	namespace		 	

Components		
 
.		 
Implementation		 #
{

 
public 

class 
EmailService 
: 
BaseComponent  -
,- .
IEmailService/ <
{ 
private 
readonly 
SendGridSettings )
_sendGridSetting* :
;: ;
private 
readonly  
IBackgroundJobClient - 
_backgroundJobClient. B
;B C
private 
readonly 
AppSettings $
_appSettings% 1
;1 2
public&& 
EmailService&& 
(&& 
AppSettings&& '

appSetting&&( 2
,&&2 3
SendGridSettings&&4 D
sendGridSetting&&E T
,&&T U 
IBackgroundJobClient&&V j
backgroundJobClient&&k ~
)&&~ 
{'' 	
this(( 
.(( 
_sendGridSetting(( !
=((" #
sendGridSetting(($ 3
;((3 4
this)) 
.))  
_backgroundJobClient)) %
=))& '
backgroundJobClient))( ;
;)); <
this** 
.** 
_appSettings** 
=** 

appSetting**  *
;*** +
}++ 	
public33 
void33 (
SendAccountVerificationEmail33 0
(330 1
string331 7
emailAddress338 D
,33D E
string33F L
username33M U
,33U V
string33W ]
verificationCode33^ n
)33n o
{44 	
this55 
.55  
_backgroundJobClient55 %
.55% &
Enqueue55& -
(55- .
(55. /
)55/ 0
=>551 3
this554 8
.558 90
$SendAccountVerificationEmailInternal559 ]
(55] ^
emailAddress55^ j
,55j k
username55l t
,55t u
verificationCode	55v †
)
55† ‡
)
55‡ ˆ
;
55ˆ ‰
}66 	
public>> 
async>> 
Task>> 0
$SendAccountVerificationEmailInternal>> >
(>>> ?
string>>? E
emailAddress>>F R
,>>R S
string>>T Z
username>>[ c
,>>c d
string>>e k
verificationCode>>l |
)>>| }
{?? 	
string@@ 
subject@@ 
=@@ 
$str@@ 9
;@@9 :
EmailAddressAA 
toAA 
=AA 
newAA !
EmailAddressAA" .
(AA. /
emailAddressAA/ ;
,AA; <
usernameAA= E
)AAE F
;AAF G
stringBB 
htmlContentBB 
=BB  
$"BB! #/
#<strong>Your verification code is: BB# F
{BBF G
verificationCodeBBG W
}BBW X
	</strong>BBX a
"BBa b
;BBb c
awaitCC 
thisCC 
.CC 
SendEmailAsyncCC %
(CC% &
toCC& (
,CC( )
subjectCC* 1
,CC1 2
htmlContentCC3 >
)CC> ?
;CC? @
}DD 	
privateLL 
asyncLL 
TaskLL 
SendEmailAsyncLL )
(LL) *
EmailAddressLL* 6
toLL7 9
,LL9 :
stringLL; A
subjectLLB I
,LLI J
stringLLK Q
htmlContentLLR ]
)LL] ^
{MM 	
SendGridClientNN 
sendGridClientNN )
=NN* +
newNN, /
SendGridClientNN0 >
(NN> ?
thisNN? C
.NNC D
_sendGridSettingNND T
.NNT U
KeyNNU X
)NNX Y
;NNY Z
EmailAddressOO 
fromOO 
=OO 
newOO  #
EmailAddressOO$ 0
(OO0 1
thisOO1 5
.OO5 6
_appSettingsOO6 B
.OOB C
SupportEmailOOC O
,OOO P
thisOOQ U
.OOU V
_appSettingsOOV b
.OOb c
SupportUsernameOOc r
)OOr s
;OOs t
SendGridMessagePP 
messagePP #
=PP$ %

MailHelperPP& 0
.PP0 1
CreateSingleEmailPP1 B
(PPB C
fromPPC G
,PPG H
toPPI K
,PPK L
subjectPPM T
,PPT U
stringPPV \
.PP\ ]
EmptyPP] b
,PPb c
htmlContentPPd o
)PPo p
;PPp q
ResponseQQ 
responseQQ 
=QQ 
awaitQQ  %
sendGridClientQQ& 4
.QQ4 5
SendEmailAsyncQQ5 C
(QQC D
messageQQD K
)QQK L
.QQL M
ConfigureAwaitQQM [
(QQ[ \
falseQQ\ a
)QQa b
;QQb c
HttpStatusCodeRR 

statusCodeRR %
=RR& '
responseRR( 0
.RR0 1

StatusCodeRR1 ;
;RR; <
thisSS 
.SS 
loggerSS 
.SS 
DebugSS 
(SS 
$"SS  '
Email sent status code is: SS  ;
{SS; <

statusCodeSS< F
}SSF G
"SSG H
)SSH I
;SSI J
}TT 	
}UU 
}VV Š*
GD:\DotNetCore\DotNetCoreAPI\Components\Implementation\TwillioService.cs
	namespace 	

Components
 
. 
Implementation #
{ 
public 

class 
TwillioService 
:  !
BaseComponent" /
,/ 0
ITwillioService1 @
{ 
private 
readonly 
TwillioSettings (
_twillioSettings) 9
;9 :
private 
readonly  
IBackgroundJobClient - 
_backgroundJobClient. B
;B C
public&& 
TwillioService&& 
(&& 
TwillioSettings&& -
twillioSettings&&. =
,&&= > 
IBackgroundJobClient&&? S
backgroundJobClient&&T g
)&&g h
{'' 	
this(( 
.(( 
_twillioSettings(( !
=((" #
twillioSettings(($ 3
;((3 4
this)) 
.))  
_backgroundJobClient)) %
=))& '
backgroundJobClient))( ;
;)); <
}** 	
public77 
bool77 *
SendAccountVerificationMessage77 2
(772 3
string773 9
mobileNumber77: F
,77F G
string77H N
verificationCode77O _
)77_ `
{88 	
bool99 
IsSend99 
=99 
true99 
;99 
try;; 
{<< 
this== 
.==  
_backgroundJobClient== )
.==) *
Enqueue==* 1
(==1 2
(==2 3
)==3 4
=>==5 7
this==8 <
.==< =2
&SendAccountVerificationMessageInternal=== c
(==c d
mobileNumber==d p
,==p q
verificationCode	==r ‚
)
==‚ ƒ
)
==ƒ „
;
==„ …
}>> 
catch?? 
(?? 
	Exception?? 
)?? 
{@@ 
throwAA 
newAA 
LevelsUpExceptionAA +
(AA+ ,
ErrorMessagesAA, 9
.AA9 :=
1ERROR_OCCURED_WHILE_SENDING_MESSAGE_USING_TWILLIOAA: k
,AAk l

ErrorCodesAAm w
.AAw x

BadRequest	AAx ‚
)
AA‚ ƒ
;
AAƒ „
}BB 
finallyCC 
{DD 
TwilioClientEE 
.EE 

InvalidateEE '
(EE' (
)EE( )
;EE) *
}FF 
returnHH 
IsSendHH 
;HH 
}II 	
publicPP 
voidPP 2
&SendAccountVerificationMessageInternalPP :
(PP: ;
stringPP; A
mobileNumberPPB N
,PPN O
stringPPP V
verificationCodePPW g
)PPg h
{QQ 	
stringRR 
bodyRR 
=RR 
stringRR  
.RR  !
ConcatRR! '
(RR' (
verificationCodeRR( 8
,RR8 9
$strRR: Y
)RRY Z
;RRZ [
thisSS 
.SS 
SendSmsSS 
(SS 
bodySS 
,SS 
mobileNumberSS +
)SS+ ,
;SS, -
}TT 	
private]] 
void]] 
SendSms]] 
(]] 
string]] #
body]]$ (
,]]( )
string]]* 0
mobileNumber]]1 =
)]]= >
{^^ 	
TwilioClient__ 
.__ 
Init__ 
(__ 
this__ "
.__" #
_twillioSettings__# 3
.__3 4
UserName__4 <
,__< =
this__> B
.__B C
_twillioSettings__C S
.__S T
	AuthToken__T ]
)__] ^
;__^ _
MessageResource`` 
messageResource`` +
=``, -
MessageResource``. =
.``= >
Create``> D
(``D E
to``E G
:``G H
new``I L
PhoneNumber``M X
(``X Y
mobileNumber``Y e
)``e f
,``f g
from``h l
:``l m
new``n q
PhoneNumber``r }
(``} ~
this	``~ ‚
.
``‚ ƒ
_twillioSettings
``ƒ “
.
``“ ”
PhoneNumber
``” Ÿ
)
``Ÿ  
,
``  ¡
body
``¢ ¦
:
``¦ §
body
``¨ ¬
)
``¬ ­
;
``­ ®
thisaa 
.aa 
loggeraa 
.aa 
Debugaa 
(aa 
$"aa  
Message status is: aa  3
{aa3 4
messageResourceaa4 C
.aaC D
StatusaaD J
}aaJ K
"aaK L
)aaL M
;aaM N
boolbb 
IsSendbb 
=bb 
thisbb 
.bb 
_IsMessageSendbb -
(bb- .
messageResourcebb. =
)bb= >
;bb> ?
}cc 	
privatell 
boolll 
_IsMessageSendll #
(ll# $
MessageResourcell$ 3
messageResourcell4 C
)llC D
{mm 	
returnnn 
messageResourcenn "
.nn" #
Statusnn# )
==nn* ,
MessageResourcenn- <
.nn< =

StatusEnumnn= G
.nnG H
QueuednnH N
||nnO Q
messageResourcennR a
.nna b
Statusnnb h
==nni k
MessageResourcennl {
.nn{ |

StatusEnum	nn| †
.
nn† ‡
Sent
nn‡ ‹
;
nn‹ Œ
}oo 	
}qq 
}rr 
?D:\DotNetCore\DotNetCoreAPI\Components\Interfaces\IComponent.cs
	namespace 	

Components
 
. 

Interfaces 
{ 
public 

	interface 

IComponent 
{ 
} 
}		 Î
BD:\DotNetCore\DotNetCoreAPI\Components\Interfaces\IEmailService.cs
	namespace 	

Components
 
. 

Interfaces 
{ 
public 

	interface 
IEmailService "
:# $

IComponent% /
{ 
void (
SendAccountVerificationEmail )
() *
string* 0
emailAddress1 =
,= >
string? E
usernameF N
,N O
stringP V
verificationCodeW g
)g h
;h i
} 
} ›
DD:\DotNetCore\DotNetCoreAPI\Components\Interfaces\ITwillioService.cs
	namespace 	

Components
 
. 

Interfaces 
{ 
public 

	interface 
ITwillioService $
:% &

IComponent' 1
{ 
bool *
SendAccountVerificationMessage +
(+ ,
string, 2
mobileNumber3 ?
,? @
stringA G
verificationCodeH X
)X Y
;Y Z
} 
} 