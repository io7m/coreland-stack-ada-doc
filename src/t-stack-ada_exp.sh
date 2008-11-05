#!/bin/sh

cat <<EOF
(subsection
  (title "standard use cases")
  (para-verbatim example "
EOF

echo "# compile Ada source using the library"
echo "$ stack-ada-conf compile cflags incdir"
stack-ada-conf compile incdir cflags
echo
echo

echo "# link object files against the static library"
echo "$ stack-ada-conf compile ldflags slibdir"
stack-ada-conf compile slibdir ldflags
echo
echo

echo "# link object files against the dynamic library"
echo "$ stack-ada-conf compile ldflags dlibdir"
stack-ada-conf compile dlibdir ldflags
echo
echo

cat <<EOF
"))

(subsection
  (title "other use cases")
  (para-verbatim example "
EOF

echo "$ stack-ada-conf version"
stack-ada-conf version
echo
echo

echo "$ stack-ada-conf incdir"
stack-ada-conf incdir
echo
echo

echo "$ stack-ada-conf dlibdir"
stack-ada-conf dlibdir
echo
echo

echo "$ stack-ada-conf slibdir"
stack-ada-conf slibdir
echo
echo

echo "$ stack-ada-conf cflags"
stack-ada-conf cflags
echo
echo

echo "$ stack-ada-conf ldflags"
stack-ada-conf ldflags
echo
echo

echo "$ stack-ada-conf compile incdir"
stack-ada-conf compile incdir
echo
echo

echo "$ stack-ada-conf compile dlibdir"
stack-ada-conf compile dlibdir
echo
echo

echo "$ stack-ada-conf compile slibdir"
stack-ada-conf compile slibdir
echo
echo

cat <<EOF
"))
EOF

