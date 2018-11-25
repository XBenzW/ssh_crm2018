<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page import="java.lang.String" %>
<%@ page import=" java.lang.Object" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>
<s:property value="#staff==null?'添加':'修改'"/>工作人员
</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>


<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM id=form1 name=form1
		action="${pageContext.request.contextPath }/StaffAction_save"
		method=post>
		<input type="hidden" name="staff_id" value="<s:property value="#staff.staff_id"/>">
		

		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：工作人员管理 &gt; <s:property value="#staff==null?'添加':'修改'"/>工作人员</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						
						<TABLE cellSpacing=0 cellPadding=5  border=0>
						  
						    
							<TR>
								<td>工作人员名称：</td>
								<td>
								<INPUT class=textbox id=sChannel2
														style="WIDTH: 180px" maxLength=50 name="staff_name" value="<s:property value="#staff.staff_name"/>">
								</td>
								<td>性别：</td>
								<td>
								
								<input type="radio" value="男" name="staff_gender"  <s:property value="#staff.staff_gender=='男'?'checked':''"/> >男
								<input type="radio" value="女" name="staff_gender"  <s:property value="#staff.staff_gender=='女'?'checked':''"/>  >女
								
					
								</td>
							</TR>
							
							<TR>
								
								<td>出生日期 ：</td>
								<td>
								<INPUT class=textbox id=sChannel2
														style="WIDTH: 180px" maxLength=50 name="staff_born" value="<s:property value="#staff.staff_born"/>">
								</td>
								
								<td>密码：</td>
								<td>
								<INPUT class=textbox id=sChannel2
														style="WIDTH: 180px" maxLength=50 name="staff_password" value="<s:property value="#staff.staff_password"/>">
								</td>
							</TR>
							
							<TR>
								
								
								<td>固定电话 ：</td>
								<td>
								<INPUT class=textbox id=sChannel2
														style="WIDTH: 180px" maxLength=50 name="staff_phone" value="<s:property value="#staff.staff_phone"/>">
								</td>
								<td>移动电话 ：</td>
								<td>
								<INPUT class=textbox id=sChannel2
														style="WIDTH: 180px" maxLength=50 name="staff_mobile" value="<s:property value="#staff.staff_mobile"/>">
								</td>
							</TR>
							
							
							<tr>
								<td rowspan=2>
								<INPUT class=button id=sButton2 type=submit
														value=" 保存 " name=sButton2>
								</td>
							</tr>
						</TABLE>
						
						
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</BODY>
</HTML>
