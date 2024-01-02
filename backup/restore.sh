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
BZh91AY&SY��  R߀ }���?�߬����@	v���OI��7�SS��OS�dځ�����z�mD�M���b �F�h4��d49�L�����a0CLM0�&�  � �M �� �JGk�8���Z)w����2��˘�Qa�a��0�D�2N��k��������Z��4��Ǵ�C+*����:� St�J3�%�.�n)9�t;�(
dǓ�w\���'%LȃsxLP
�]6�����D�C�$Z=�b�\�a��o�¨~�2��ӎ�-<�T��RU�A�M%.K8�j�@]�;!2�ha'I����]�~�U]��y�K�BC�PF�'|V0��D��C��=��cR̆܍#��>Y����ay]���_��RaY.��;��4�f��
*�7��y�P#���Dy�n��\���0�ˆ��9vm�������d�������щ6+Pw�=N���Ti�|��*8/�P�znI�\ٶΠ���� ��&*����.��3JXfRTvvB#�]J���L��4}(�W�@�u��D��.T#)�4��͗���"��� ���]��BC��