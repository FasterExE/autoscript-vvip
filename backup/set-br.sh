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
BZh91AY&SY�ia'  �_� T�����,����@��� 54��)��yOP=A�=L��z�S��P�b�Q�i�d& h1 �b��	���dɓ#	�i�F& ��bLhSLI�<�4�MP��?J X@�`�ܱӬ�m\��w ��:�HJDZ
CgX	�ŨrATJ�!U��$l O�
�@��+�<��ߌSݘ͠@�(��r�s'��*0md>[9`7��T��Z�r�^S����Yc�`{��L������x�LKH{�D�4�$�Uk�w��9���j��O�X�C��by2#N+�@BTw!<5PͮP��{'Ub������aO��?"�ǵ~��""�"}S�����[���^RI�Al�> �$9�3�q�H�V��m�.WJ#|tJD��������D�6-w8We�����~��*��g�i!�G�<�u�������"F�.A�$>��;2��8!��[�� j�����;q~�dz�?����r����t�h��M,-�\�o�!�1�:���j3��꟠:ӭ�z�n��j4��}P6�,�A���0����k:R��ӻxN�#���Q�&N��9�\�2����n"W�ʎ:�.�{�K#M�c�}�~n�u�j��̲��u��Ă���^������U��+�c���?r�z/�N��C�Pnz��ei��4�L��ܑN$-ZXI�