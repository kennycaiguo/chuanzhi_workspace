<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=basePath %>images/css/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath %>images/css/css.css" />
<script type="text/javascript" src="<%=basePath %>images/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/sdmenu.js"></script>
<script type="text/javascript" src="<%=basePath %>images/js/laydate/laydate.js"></script>
</HEAD>
<%
	String username=(String)session.getAttribute("user");  String sf=(String)session.getAttribute("sf");  
	if(username==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
%>
<body>
<div class="left">
     
<script type="text/javascript">
var myMenu;
window.onload = function() {
	myMenu = new SDMenu("my_menu");
	myMenu.init();
};
</script>

<div id="my_menu" class="sdmenu">

	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/system/editpwd.jsp" target="MainFrame">�����޸�</a> 
	</div>
	<%if(sf.equals("����Ա")){ %>
	<div class="collapsed">
		<span>ϵͳ�û�����</span>
		<a href="<%=basePath %>admin/system/index.jsp" target="MainFrame">ϵͳ�û�����</a> 
		<a href="<%=basePath %>admin/system/add.jsp?method=addm" target="MainFrame">���ϵͳ�û�</a> 
		 <a href="<%=basePath %>admin/system/s.jsp" target="MainFrame">ϵͳ�û���ѯ</a>  
	</div> 
	
	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/bf/index.jsp" target="MainFrame">���ҹ���</a> 
		<a href="<%=basePath %>admin/bf/add.jsp?method=addbf" target="MainFrame">��ӿ�����Ϣ</a> 
		 <a href="<%=basePath %>admin/bf/s.jsp" target="MainFrame">������Ϣ��ѯ</a>  
	</div>   
	
	<div class="collapsed">
		<span>��λ��Ϣ����</span>
		<a href="<%=basePath %>admin/cw/index.jsp" target="MainFrame">��λ��Ϣ����</a> 
		<a href="<%=basePath %>admin/cw/add.jsp?method=addcw" target="MainFrame">��Ӵ�λ��Ϣ</a> 
		 <a href="<%=basePath %>admin/cw/s.jsp" target="MainFrame">��λ��Ϣ��ѯ</a>  
	</div> 



	<div class="collapsed">
		<span>������Ϣ����</span>
		<a href="<%=basePath %>admin/ap/index.jsp" target="MainFrame">������Ϣ����</a> 
		<a href="<%=basePath %>admin/ap/add.jsp?method=addap" target="MainFrame">��Ӳ�����Ϣ</a>  
		<a href="<%=basePath %>admin/ap/s.jsp" target="MainFrame">������Ϣ��ѯ</a> 
	</div>  
	<div class="collapsed">
		<span>��Ժ����</span>
		<a href="<%=basePath %>admin/chu/index.jsp" target="MainFrame">��Ժ����</a>   
		<a href="<%=basePath %>admin/chu/s.jsp" target="MainFrame">��Ժ��ѯ</a> 
	</div> 
 	<div class="collapsed">
		<span>��������</span>
		<a href="<%=basePath %>admin/wh/index.jsp" target="MainFrame">��������</a> 
		<a href="<%=basePath %>admin/wh/add.jsp?method=addwh" target="MainFrame">��Ӳ���</a> 
		 <a href="<%=basePath %>admin/wh/s.jsp" target="MainFrame">������ѯ</a>  
	</div>
	<div class="collapsed">
		<span>���ѹ���</span>
		<a href="<%=basePath %>admin/jf/index.jsp" target="MainFrame">���ѹ���</a> 
		<a href="<%=basePath %>admin/jf/add.jsp?method=addjf" target="MainFrame">��ӷ���</a> 
		 <a href="<%=basePath %>admin/jf/s.jsp" target="MainFrame">���Ѳ�ѯ</a>  
	</div>
	<div class="collapsed">
		<span>���ѹ���</span>
		<a href="<%=basePath %>admin/xf/index.jsp" target="MainFrame">���ѹ���</a> 
		<a href="<%=basePath %>admin/xf/add.jsp?method=addxf" target="MainFrame">�������</a> 
		 <a href="<%=basePath %>admin/xf/s.jsp" target="MainFrame">���Ѳ�ѯ</a>  
	</div>
	
	<div class="collapsed">
		<span>������</span>
		<a href="<%=basePath %>admin/xf/bj.jsp" target="MainFrame">�������</a>  
	</div>
	<%}else{ %>
	<div class="collapsed">
		<span>������Ϣ��ѯ</span> 
		<a href="<%=basePath %>admin/ap/s2.jsp" target="MainFrame">������Ϣ��ѯ</a> 
	</div>  
 	<div class="collapsed">
		<span>������ѯ</span> 
		 <a href="<%=basePath %>admin/wh/s2.jsp" target="MainFrame">������ѯ</a>  
	</div>
	<div class="collapsed">
		<span>���Ѳ�ѯ</span> 
		 <a href="<%=basePath %>admin/jf/s2.jsp" target="MainFrame">���Ѳ�ѯ</a>  
	</div>
	<div class="collapsed">
		<span>���Ѳ�ѯ</span> 
		 <a href="<%=basePath %>admin/xf/s2.jsp" target="MainFrame">���Ѳ�ѯ</a>  
	</div>
	<%} %>
 	<div class="collapsed">
		<span>�˳�ϵͳ</span>
		<a onclick="if (confirm('ȷ��Ҫ�˳���')) return true; else return false;" href="<%=basePath %>AdminServlet?method=adminexit" target="_top" >�˳�ϵͳ</a>
	</div> 
</div>
     </div>
     <div class="Switch"></div>
     <script type="text/javascript">
	$(document).ready(function(e) {
    $(".Switch").click(function(){
	$(".left").toggle();
	 
		});
});
</script> 
</body>
<%} %>

</html>
