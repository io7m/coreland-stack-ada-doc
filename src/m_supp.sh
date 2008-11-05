#!/bin/sh

if [ $# -ne 1 ]
then
  echo "usage: data" 1>&2
  exit 111
fi

IFS="
"

cat <<EOF
(table supported
  (t-row
    (item "system name")
    (item "system version")
    (item "architecture")
    (item "C compiler name")
    (item "C compiler version")
    (item "Ada compiler name")
    (item "Ada compiler version"))
EOF

for line in `sort < "$1"`
do
  sys=`echo $line | awk '{print $1}'`
  ver=`echo $line | awk '{print $2}'`
  ccn=`echo $line | awk '{print $3}'`
  ccv=`echo $line | awk '{print $4}'`
  arc=`echo $line | awk '{print $5}'`
  aan=`echo $line | awk '{print $6}'`
  aav=`echo $line | awk '{print $7}'`

  cat <<EOF
  (t-row
    (item "${sys}")
    (item "${ver}")
    (item "${arc}")
    (item "${ccn}")
    (item "${ccv}")
    (item "${aan}")
    (item "${aav}"))
EOF
done

cat <<EOF
)
EOF
