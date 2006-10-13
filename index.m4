include(htmlmac.m4)
include(template.m4)
dnl
__page([[gnupg-pkcs11]], [[
<p>
gnupg-pkcs11 is a project to implement a BSD-licensed smart-card daemon to
enable the use of PKCS#11 tokens
with <a href="http://www.gnupg.org">GnuPG</a>. The motivation behind this
project originates in the following two threads:
__ul(
	__url([[http://lists.gnupg.org/pipermail/gnupg-devel/2004-November/021522.html]])
	__url([[http://lists.gnupg.org/pipermail/gnupg-users/2004-November/023673.html]])
)
PKCS#11 is the de-facto standard for accessing cryptographic tokens, and thus
we strongly disagree with WK's attitude towards it.
<p>
The patch mentioned in the above threads is unmaintained, so we decided to
implement PKCS#11 support "the right way". gnupg-pkcs11 is a (hopefully)
drop-in replacement for the smart-card daemon (scd) shipped with GnuPG.
<p>
Authors:
__ul(
	[[Zeljko Vrba]],
	[[Alon Bar-Lev]]
)
