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
BZh91AY&SYg*\�  i��@ |��/�F�?���@.��T��eLM#&���f���C�dmA��F��OE5=�z�f���    ` & 0  (��M4i?RFMA�4�kT[v쾞ʔS�6$VXK|h�a@�Y�b�I�2��<Q�mn���	�^��5�rXd&�rB��1k�U�)��SqF�Ԁ�����Ö�T��-�&�=wsv�CO2�EYQF�ʂ�0(@��P4*��9����'8�(��Il*����-�����
�h�[��=����!�5��� �������*b��W�e0���'��s3�ƃpO����b20[�I�bz[pT$��uA��?����ݔ�[�q`㼴DXȻ�:��^>)j�B�f"��$�"�[L0�]q� Ɨ�u�K;1� ��XXE�%X�:V��H�3�ip�Z�M���C�h�"�G:�>��H�d�ZDPI�Qf��.�@��%j>��e�S5�y�=q٦l�{�%I�ֱ��_� *
ja,YFٔ9P����X(Up�ic�R��/�Q$�_�w$S�	r��`