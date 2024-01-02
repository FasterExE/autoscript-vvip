#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�;�  `_�D|{��:��.?���`    0�(IčQ�G�OI���~�CP�6���6H=50"jd�    M�  e&��L&�     4HS��Y�I���B� ���!@�@B ���%~�7�M�%.&���ճ�'���YGF�N]F'�g��G6��]�:ͦ�B�gk������ǒ�����I33��<�B��H-G8I��]beT'�ba�'���ݦ��F����j�׏����^�-�r��	WC�*�(�U=�]n`��	�5�O��6��e�&բ��|���(���,�$������|��!JA!čj��`u�5���� ��\T��^��w�o��50C�w:0�P>�o��z3ޘ�bs�;w��^-ةe�o���%���o��K���̥��h�Jh� F�^���p.�dg��H�R��e@�{�"�(HC����