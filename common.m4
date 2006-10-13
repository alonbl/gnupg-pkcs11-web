dnl
dnl No comments, change quotes to something more appealing.
dnl
changecom()
changequote([[, ]])
dnl
dnl Rename builtins.
dnl
define([[__format]], defn([[format]]))
define([[__shift]], defn([[shift]]))
undefine([[format]])
undefine([[shift]])
dnl
dnl Special character escaping, and URL expansion. Note: order of replacement
dnl is IMPORTANT in __escape. Namely, __escape_and must be INNERMOST. Otherwise
dnl it will expand '&' characters resulting from < and > expansions.
dnl
define([[__escape_and]], [[patsubst($1, [[&]], [[&amp;]])]])
define([[__escape_lt]],  [[patsubst($1, [[<]], [[&lt;]])]])
define([[__escape_gt]],  [[patsubst($1, [[>]], [[&gt;]])]])
define([[__escape]], [[__escape_lt(__escape_gt(__escape_and($1)))]])
define([[__url]], [[patsubst($1,
  [[\(http://\|ftp://\)\([-a-zA-Z0-9_%~&/#.]+\)]],
  [[<a href="\1\2">\1\2</a>]])]])
dnl
dnl Ordered and unordered lists. Note: if any list item contains literal comma,
dnl the whole item should be quoted (else the comma is interpreted to introduce
dnl next macro argument).
dnl
define(
	[[__liloop]],
	[[
		ifelse(
			[[$1]],,,
			[[
				<li>$1</li>
				__liloop(__shift($@))
			]]
		)
	]]
)
dnl
define([[__ul]],[[<ul>__liloop($@)</ul>]])
dnl
define([[__ol]],[[<ol>__liloop($@)</ol>]])
dnl
dnl Insert file
dnl
define([[__file]], [[<pre>esyscmd([[scripts/text2html < "$1"]])</pre>]])

