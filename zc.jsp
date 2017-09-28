<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script language="javascript" type="">
function Mycheck(){
if(form1.uname.value=="")
{alert("用户名不能为空！！");return false;}
if(form1.pwd1.value=="")
{alert("密码不能为空！！");return false;}
if (form1.pwd2.value=="")
{alert("确认密码不能为空！！");return false;}
if(form1.pwd1.value!=form1.pwd2.value)
{alert('您两次输入的密码不一致！');return false;}
if(form1.name.value=="")
{alert("真实的姓名不能为空！！");return false;}
if(form1.birth.value=="")
{alert("出生日期不能为空！！");return false;}
if(CheckDate(form1.birth.value))
{alert("请输入标准日期（如：1980/07/17或1980-07-17）");return false;}
if (form1.knowledge.value=="")
{alert("学历不能为空！！");return false;}
if (form1.address.value=="")
{alert("家庭住址不能为空，请填写正确的地址！！");return false;}
if (form1.post.value=="")
{alert("邮编不能为空！！");return false;}
if (isNaN(form1.post.value))
{alert("邮编必须为数字型！！");return false;}
if (form1.tel.value=="")
{alert("联系电话不能为空！！");return false;}
if (isNaN(form1.tel.value))
{alert("联系电话必须为数字型！！");return false;}
if (form1.email.value=="")
{alert("email不能为空，请填写正确的邮件！！");return false;}
var i=form1.email.value.indexOf("@")
var j=form1.email.value.indexOf(".")
if ((i<0)||(i-j>0)||(j<0))
{alert("您输入的Email格式不正确，请重新输入！！");return false;}
if(form1.safequestion.value=="")
{alert("安全问题不能为空！！");return false;}
if(form1.safeanswer.value=="")
{alert("安全答案不能为空！！");return false;}
form1.submit();
}

function openwin(){
if (form1.uname.value==""){
alert("请输入用户名!");
return false;
}

}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>
<table>
<tr height="150"><td width="1450" align="center" bgcolor="#333333" ><font color="#FFFF00"><font size="+3">小</font><font size="+2">型</font><font size="+3">酒</font><font size="+2">吧</font><font size="+3">在</font><font size="+2">线</font><font size="+3">管</font><font size="+2">理</font><font size="+3">系</font><font size="+2">统</font></font>
</td>
</tr>
</table>


<table  align="center" bgcolor="#252525" width="1330" height="10">
<tr height="10">

<td width="150"></td>
<td width="57"><a href="index.jsp"><font color="#FFFFFF">首页</font></a></td>
  <td width="90"><a href="jbxw.jsp"><font color="#FFFFFF">酒吧新闻</font></a></td>
<td width="90"><a href="jbjs.jsp"><font color="#FFFFFF">酒吧酒水</font></a></td>
<td width="90"><a href="jbxc.jsp"><font color="#FFFFFF">酒吧相册</font></a></td>
<td width="100"><a href="fk1.jsp"><font color="#FFFFFF">预定/付款</font></a></td>
<td width="100"><a href="wjmm.jsp"><font color="#FFFFFF">忘记密码</font></a></td>
</tr></table>

<table width="1165" border="0" cellpadding="0" cellspacing="0" align="center">
    <form  method="post" action="index3.jsp" onSubmit="return Mycheck()">
    <tr bgcolor="#FFFFFF" align="center">
	<td  width="400"></td>
	<td  width="400"> <font color="#F3F30C"><b>用户注册！</b></font></td>
	<td  width="400"></td>
	</tr><br />
	<tr bgcolor="#FFFFFF">
      <td width="410" height="25"><div align="right"> 用&nbsp;户&nbsp;名：</div></td>
      <td width="755" colspan="2">&nbsp;
        <input name="username" type="text" size="30" />


	    *输入用户名        </td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right"> 密 &nbsp; &nbsp;码：</div></td>
      <td colspan="2">&nbsp;
        <input name="pwd" type="password" id="uname" size="30" />
        *（由6-20位内的字母和数字组成）</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right"> 确 认密 码：</div></td>
      <td colspan="2">&nbsp;
        <input name="pwd2" type="password" size="30" />
      * </td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">真 实姓 名：</div></td>
      <td colspan="2">&nbsp;
        <input name="name" type="text" size="30">
        *</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">性&nbsp; &nbsp;别 ：</div></td>
      <td colspan="2">&nbsp;&nbsp;
        <input name="sex" type="radio" value="男" checked>
        男
        <input type="radio" name="sex" value="女">
        女
        <input type="radio" name="sex" value="保密">
        保密</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">出 生日 期：</div></td>
      <td colspan="2">&nbsp;
        <input name="birth" type="text" size="30" onfocus="getDateString(this,oCalendarChs)" readOnly value="1987-10-20" runat="server">
        *（如：1980/07/17或1980-07-17）</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">地&nbsp;&nbsp;&nbsp;址：</div></td>
      <td colspan="2">&nbsp;
        <input name="address" type="text" size="30">
        *</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">邮 政编 码：</div></td>
      <td colspan="2">&nbsp;
        <input name="post" type="text" size="30">
        *</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">电&nbsp;&nbsp;&nbsp;话：</div></td>
      <td colspan="2">&nbsp;
        <input name="tel" type="text" size="30">
        *</td>
    </tr>
	  <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">Email ： &nbsp;</div></td>
      <td colspan="2">&nbsp;
        <input name="email" type="text" size="30">
        *</td>
    </tr>

	  <tr bgcolor="#FFFFFF">
      <td height="6"><div align="right"> 密 保问题 ：</div></td>
      <td height="6" colspan="2">&nbsp;
        <input name="safequestion" type="text" size="30">
      *（为找回密码使用，10-15个汉字）</td>
      </tr>
	  <tr bgcolor="#FFFFFF">
	    <td height="3"><div align="right">密 保答案 ：</div></td>
	    <td height="3" colspan="2">&nbsp;
	      <input name="safeanswer" type="text" size="30">
        *（为找回密码使用，10-15个汉字）</td>
      </tr>
	  <br />
	  <tr bgcolor="#FFFFFF">
	    <td height="21" colspan="3"><div align="center"><font color="FF9000">注：如果您在30天内没有登录该网站，您的信息将会被删除。</font></div></td>
      </tr>
	 <tr bgcolor="#FFFFFF">
       <td height="25">&nbsp;</td>
       <td colspan="2">&nbsp;&nbsp;<input type="submit" name="Submit2" value="注册">&nbsp;&nbsp;
     &nbsp;&nbsp;   <input type="reset" name="Submit" value="重置">        </td>
    </tr></form>
	   
	  <tr bgcolor="#FFFFFF">
      <td height="25" colspan="3">
        <div align="center"></div></td>
     </tr>
  </table>

<table>
<tr  height="40"><td width="1450" align="center" bgcolor="#333333"><font color="#FFFFFF" size="-1" >COPYRIGHT &copy; 2015-2016&nbsp;&nbsp;&nbsp;&nbsp;小型酒吧在线管理系统 .燕江弟，崔勇，王昊洋，周敏泽 版权所有&nbsp;&nbsp;&nbsp;&nbsp;禁止拷贝、复制，违者必究。</font>
</td>
</tr>
</table>
</body>
</html>
