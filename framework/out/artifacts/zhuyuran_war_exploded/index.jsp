<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %> 
<SCRIPT language=javascript>
function reg() {
	window.location="reg.jsp";
}
function lost() {
	window.location="lost.jsp";
}
</SCRIPT>
<div class="main">
 <div class="narea">
 	<p>��ӭ����С��ҽԺסԺ����ϵͳ</p>
 </div>
<div class="rmain">        
<div class="tom"><div class="totitle"><span> </span></div></div>  
<div class="rlist">  
<FORM name="loginform" method="post" action="<%=basePath %>MemberServlet"> 
   <table width="100%" border="0" align="center" cellpadding="4" cellspacing="0" class="rtable">
	  <tbody>
	     <tr class="tr1">
            <td class="rldatee daslist"></td>
			<td class="rltitle daslist">&nbsp;&nbsp;&nbsp;&nbsp;�û���¼</td> 
         </tr>
	     <tr class="tr1">
			<td class="rldatee daslist">�ʺţ�</td><input type=hidden name=method value="mlogin"/>
            <td class="rltitle dotlist"><input type="text" size="30" name="username" required /></td> 
         </tr> 
         <tr class="tr1">
			<td class="rldatee daslist">���룺</td>
            <td class="rltitle dotlist"><input type="password" size="30" name="password" required /></td> 
         </tr>
         <tr class="tr1">
			<td class="rldatee daslist">�û���ݣ�</td>
            <td class="rltitle dotlist"> 
            <select name="sf">
 				<option  value="��ͨ">��ͨ</option>
  				<option  value="����Ա">����Ա</option>
			</select>
         </tr> 
         <tr class="tr1">
            <td class="rldatee daslist"></td>
			<td class="rltitle daslist"><input type="submit" value="��¼" style="background-color:#f5f5f5;width:60px;border-radius:5px;box-shadow:1px 2px 4px 2px rgba(0,0,0,.1);" /> </td> 
         </tr>
         <tr class="tr1">
            <td class="rldatee daslist"></td>
			<td class="rltitle daslist">&nbsp;</td> 
         </tr> 
      </tbody>
</table> 
</FORM> 
</div>
</div> 
</div>
<%@ include file="iframe/foot.jsp"%>