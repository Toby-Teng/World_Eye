<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="mybean.OrderVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单</title>
</head>
<body background="images/背景3.jpg">
<%
OrderVO ordervo = (OrderVO)request.getAttribute("orderorder");
%>
<center>
<h3>订单详情</h3>
<table width="50%" border="0" cellspacing="1" cellpadding="0" class="">
    <tr bgcolor="#fba661" height="25">
		<td bgcolor= "#fba661" width=50%>
			<div align="center">
				订单号
			</div>
		</td>
		<td bgcolor= "#f3f3f3">
		        <div align="center">
		            <%=ordervo.getOrdernum() %>
		        </div>
		    </td>
	</tr>
	<tr>
		<td bgcolor="#fba661">
			<div align="center">
				订单详情
			</div>
		</td>
		<td bgcolor= "#f3f3f3">
		        <div align="center">	
		            <%=ordervo.getFoodimformation() %>
		        </div>
		    </td>
	</tr>
	<tr>
		<td bgcolor="#fba661">
			<div align="center">
				总价
			</div>
		</td>
		<td bgcolor= "#f3f3f3">
		<div align="center">	
		            <%=ordervo.getTotal() %>
		</div>
		</td>
    </tr>
    <tr>
		<td bgcolor="#fba661">
			<div align="center">
				备注
			</div>
		</td>
		<td bgcolor= "#f3f3f3">
		        <div align="center">	
		            <%=ordervo.getRemark() %>
		        </div>
	    </td>
    </tr>
    <tr>
		<td bgcolor="#fba661">
			<div align="center">
				用户名
			</div>
		</td>
		<td bgcolor= "#f3f3f3">
		        <div align="center">	
		            <%=ordervo.getUsername() %>
		        </div>
		    </td>
	</tr>
	<tr>
		<td bgcolor="#fba661">
			<div align="center">
				电话
			</div>
		</td>
		<td bgcolor= "#f3f3f3">
		        <div align="center">	
		            <%=ordervo.getTelephone() %>
		        </div>
		    </td>
	</tr>
	<tr>
		<td bgcolor="#fba661">
			<div align="center">
				地址
			</div>
		</td>
		<td bgcolor= "#f3f3f3">
		        <div align="center">	
		            <%=ordervo.getAddress() %>
		        </div>
		    </td>
	</tr>
	<tr>	
		<td bgcolor="#fba661">
			<div align="center">
				订单状态
			</div>
		</td>
		<td bgcolor= "#f3f3f3">
		        <div align="center">	
		            <%=ordervo.getState() %>
		        </div>
		    </td>							
	</tr>			                      
</table>
<p><input type="button" value="返回功能菜单" onclick="window.open('order.jsp')">
</center>
</body>
</html>