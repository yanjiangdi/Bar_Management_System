<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script language="javascript" type="">
function Mycheck(){
if(form1.uname.value=="")
{alert("�û�������Ϊ�գ���");return false;}
if(form1.pwd1.value=="")
{alert("���벻��Ϊ�գ���");return false;}
if (form1.pwd2.value=="")
{alert("ȷ�����벻��Ϊ�գ���");return false;}
if(form1.pwd1.value!=form1.pwd2.value)
{alert('��������������벻һ�£�');return false;}
if(form1.name.value=="")
{alert("��ʵ����������Ϊ�գ���");return false;}
if(form1.birth.value=="")
{alert("�������ڲ���Ϊ�գ���");return false;}
if(CheckDate(form1.birth.value))
{alert("�������׼���ڣ��磺1980/07/17��1980-07-17��");return false;}
if (form1.knowledge.value=="")
{alert("ѧ������Ϊ�գ���");return false;}
if (form1.address.value=="")
{alert("��ͥסַ����Ϊ�գ�����д��ȷ�ĵ�ַ����");return false;}
if (form1.post.value=="")
{alert("�ʱ಻��Ϊ�գ���");return false;}
if (isNaN(form1.post.value))
{alert("�ʱ����Ϊ�����ͣ���");return false;}
if (form1.tel.value=="")
{alert("��ϵ�绰����Ϊ�գ���");return false;}
if (isNaN(form1.tel.value))
{alert("��ϵ�绰����Ϊ�����ͣ���");return false;}
if (form1.email.value=="")
{alert("email����Ϊ�գ�����д��ȷ���ʼ�����");return false;}
var i=form1.email.value.indexOf("@")
var j=form1.email.value.indexOf(".")
if ((i<0)||(i-j>0)||(j<0))
{alert("�������Email��ʽ����ȷ�����������룡��");return false;}
if(form1.safequestion.value=="")
{alert("��ȫ���ⲻ��Ϊ�գ���");return false;}
if(form1.safeanswer.value=="")
{alert("��ȫ�𰸲���Ϊ�գ���");return false;}
form1.submit();
}

function openwin(){
if (form1.uname.value==""){
alert("�������û���!");
return false;
}

}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>

<body>
<table>
<tr height="150"><td width="1450" align="center" bgcolor="#333333" ><font color="#FFFF00"><font size="+3">С</font><font size="+2">��</font><font size="+3">��</font><font size="+2">��</font><font size="+3">��</font><font size="+2">��</font><font size="+3">��</font><font size="+2">��</font><font size="+3">ϵ</font><font size="+2">ͳ</font></font>
</td>
</tr>
</table>


<table  align="center" bgcolor="#252525" width="1330" height="10">
<tr height="10">

<td width="150"></td>
<td width="57"><a href="index.jsp"><font color="#FFFFFF">��ҳ</font></a></td>
  <td width="90"><a href="jbxw.jsp"><font color="#FFFFFF">�ư�����</font></a></td>
<td width="90"><a href="jbjs.jsp"><font color="#FFFFFF">�ưɾ�ˮ</font></a></td>
<td width="90"><a href="jbxc.jsp"><font color="#FFFFFF">�ư����</font></a></td>
<td width="100"><a href="fk1.jsp"><font color="#FFFFFF">Ԥ��/����</font></a></td>
<td width="100"><a href="wjmm.jsp"><font color="#FFFFFF">��������</font></a></td>
</tr></table>

<table width="1165" border="0" cellpadding="0" cellspacing="0" align="center">
    <form  method="post" action="index3.jsp" onSubmit="return Mycheck()">
    <tr bgcolor="#FFFFFF" align="center">
	<td  width="400"></td>
	<td  width="400"> <font color="#F3F30C"><b>�û�ע�ᣡ</b></font></td>
	<td  width="400"></td>
	</tr><br />
	<tr bgcolor="#FFFFFF">
      <td width="410" height="25"><div align="right"> ��&nbsp;��&nbsp;����</div></td>
      <td width="755" colspan="2">&nbsp;
        <input name="username" type="text" size="30" />


	    *�����û���        </td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right"> �� &nbsp; &nbsp;�룺</div></td>
      <td colspan="2">&nbsp;
        <input name="pwd" type="password" id="uname" size="30" />
        *����6-20λ�ڵ���ĸ��������ɣ�</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right"> ȷ ���� �룺</div></td>
      <td colspan="2">&nbsp;
        <input name="pwd2" type="password" size="30" />
      * </td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">�� ʵ�� ����</div></td>
      <td colspan="2">&nbsp;
        <input name="name" type="text" size="30">
        *</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">��&nbsp; &nbsp;�� ��</div></td>
      <td colspan="2">&nbsp;&nbsp;
        <input name="sex" type="radio" value="��" checked>
        ��
        <input type="radio" name="sex" value="Ů">
        Ů
        <input type="radio" name="sex" value="����">
        ����</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">�� ���� �ڣ�</div></td>
      <td colspan="2">&nbsp;
        <input name="birth" type="text" size="30" onfocus="getDateString(this,oCalendarChs)" readOnly value="1987-10-20" runat="server">
        *���磺1980/07/17��1980-07-17��</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">��&nbsp;&nbsp;&nbsp;ַ��</div></td>
      <td colspan="2">&nbsp;
        <input name="address" type="text" size="30">
        *</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">�� ���� �룺</div></td>
      <td colspan="2">&nbsp;
        <input name="post" type="text" size="30">
        *</td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">��&nbsp;&nbsp;&nbsp;����</div></td>
      <td colspan="2">&nbsp;
        <input name="tel" type="text" size="30">
        *</td>
    </tr>
	  <tr bgcolor="#FFFFFF">
      <td height="25"><div align="right">Email �� &nbsp;</div></td>
      <td colspan="2">&nbsp;
        <input name="email" type="text" size="30">
        *</td>
    </tr>

	  <tr bgcolor="#FFFFFF">
      <td height="6"><div align="right"> �� ������ ��</div></td>
      <td height="6" colspan="2">&nbsp;
        <input name="safequestion" type="text" size="30">
      *��Ϊ�һ�����ʹ�ã�10-15�����֣�</td>
      </tr>
	  <tr bgcolor="#FFFFFF">
	    <td height="3"><div align="right">�� ���� ��</div></td>
	    <td height="3" colspan="2">&nbsp;
	      <input name="safeanswer" type="text" size="30">
        *��Ϊ�һ�����ʹ�ã�10-15�����֣�</td>
      </tr>
	  <br />
	  <tr bgcolor="#FFFFFF">
	    <td height="21" colspan="3"><div align="center"><font color="FF9000">ע���������30����û�е�¼����վ��������Ϣ���ᱻɾ����</font></div></td>
      </tr>
	 <tr bgcolor="#FFFFFF">
       <td height="25">&nbsp;</td>
       <td colspan="2">&nbsp;&nbsp;<input type="submit" name="Submit2" value="ע��">&nbsp;&nbsp;
     &nbsp;&nbsp;   <input type="reset" name="Submit" value="����">        </td>
    </tr></form>
	   
	  <tr bgcolor="#FFFFFF">
      <td height="25" colspan="3">
        <div align="center"></div></td>
     </tr>
  </table>

<table>
<tr  height="40"><td width="1450" align="center" bgcolor="#333333"><font color="#FFFFFF" size="-1" >COPYRIGHT &copy; 2015-2016&nbsp;&nbsp;&nbsp;&nbsp;С�;ư����߹���ϵͳ .�཭�ܣ����£������������ ��Ȩ����&nbsp;&nbsp;&nbsp;&nbsp;��ֹ���������ƣ�Υ�߱ؾ���</font>
</td>
</tr>
</table>
</body>
</html>
