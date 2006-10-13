dnl
dnl Header template. Includes news.m4 and sidebar.m4.
dnl
define(__header,[[
	<html>
	<head>
		<title>$1</title>
	</head>
	<body>
	<table width="100%" cellspacing="10">
	<tr>
		<td valign="top" width="20%">
<!--
			<a href="index.html"><image src="images/xxx" alt="gnupg-pkcs11 Logo"></a>
-->
			<h2>What's New</h2>
include([[news.m4]])
			<hr>
			<h2>Contetns</h2>
include([[sidebar.m4]])
			<hr>
			<a href="http://sourceforge.net">
				<img
					src="http://sourceforge.net/sflogo.php?group_id=48978"
					alt="SourceForge Logo"
				>
			</a>
		</td>
		<td bgcolor="black" width="2"></td>
		<td width="80%" valign="top">
			<table width="100%" cellspacing="10" cellpadding="0" border="0">
				<tr><td><h1>$1</h1></td></tr>
				<td bgcolor="black" height="2"></td>
				<tr><td>
]])
dnl
dnl Footer template. No special inclusions.
dnl
define(__footer,[[
					<hr>
					<p>gnupg-pkcs11</p>
				</td></tr>
			</table>
		</td>
	</table>
	</body>
	</html>
]])
dnl
dnl Whole page contents. $1 is page title, $2 is page text.
dnl
define(__page, [[__header($1) $2 __footer]])
