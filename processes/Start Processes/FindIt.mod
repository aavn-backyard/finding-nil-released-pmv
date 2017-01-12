[Ivy]
[>Created: Wed Jan 11 18:24:07 ICT 2017]
15741EE9640321A7 3.18 #module
>Proto >Proto Collection #zClass
Ft0 FindIt Big #zClass
Ft0 B #cInfo
Ft0 #process
Ft0 @TextInP .resExport .resExport #zField
Ft0 @TextInP .type .type #zField
Ft0 @TextInP .processKind .processKind #zField
Ft0 @AnnotationInP-0n ai ai #zField
Ft0 @MessageFlowInP-0n messageIn messageIn #zField
Ft0 @MessageFlowOutP-0n messageOut messageOut #zField
Ft0 @TextInP .xml .xml #zField
Ft0 @TextInP .responsibility .responsibility #zField
Ft0 @StartRequest f0 '' #zField
Ft0 @GridStep f3 '' #zField
Ft0 @PushWFArc f4 '' #zField
>Proto Ft0 Ft0 FindIt #zField
Ft0 f0 outLink start.ivp #txt
Ft0 f0 type com.axonivy.luz.Data #txt
Ft0 f0 inParamDecl '<> param;' #txt
Ft0 f0 actionDecl 'com.axonivy.luz.Data out;
' #txt
Ft0 f0 guid 15741EE968089A4B #txt
Ft0 f0 requestEnabled true #txt
Ft0 f0 triggerEnabled false #txt
Ft0 f0 callSignature start() #txt
Ft0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Ft0 f0 @C|.responsibility Everybody #txt
Ft0 f0 81 49 30 30 -21 17 #rect
Ft0 f0 @|StartRequestIcon #fIcon
Ft0 f3 actionDecl 'com.axonivy.luz.Data out;
' #txt
Ft0 f3 actionTable 'out=in;
' #txt
Ft0 f3 actionCode 'import ch.ivyteam.ivy.request.IHttpResponse;
import ch.ivyteam.ivy.request.IHttpRequest;
import com.axonivy.lab.FindNullReleasedPmvCommand;

String result = new FindNullReleasedPmvCommand().get();

IHttpRequest httpRequest = ivy.request as IHttpRequest;
IHttpResponse httpResponse = ivy.response as IHttpResponse;

httpResponse.getHttpServletResponse().setContentType("text/plain");
httpResponse.getHttpServletResponse().getOutputStream().println(result);
httpResponse.getHttpServletResponse().getOutputStream().flush();
' #txt
Ft0 f3 security system #txt
Ft0 f3 type com.axonivy.luz.Data #txt
Ft0 f3 184 42 112 44 0 -8 #rect
Ft0 f3 @|StepIcon #fIcon
Ft0 f4 expr out #txt
Ft0 f4 111 64 184 64 #arcP
>Proto Ft0 .type com.axonivy.luz.Data #txt
>Proto Ft0 .processKind NORMAL #txt
>Proto Ft0 0 0 32 24 18 0 #rect
>Proto Ft0 @|BIcon #fIcon
Ft0 f0 mainOut f4 tail #connect
Ft0 f4 head f3 mainIn #connect
