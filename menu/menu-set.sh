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
BZh91AY&SYᢒ  _�>}����߮����`D@  � P POn�39N��;�p4�T��4x��=&�A�������?TF@� I!�&�4M#4�yA�4F�� �  �D�4�T��S�3I�SF���2� �hi�� �M42 �� � b�M @E��F��&S��F� 44���Q`�3��XU�^��n]1|���ݺk�)*2���w�t�P�)[SaC'd���d�Z���b7��X�!G������{��u�~6z*l�E�@R;�	� 鵏�jܰ��.0���-�c�e�0Y29H��|v�O�T�wQc'{1sn$3}�bF����"�FHm׆���(�/�eYo^��e�W��D��bu�#�.u�t���hu��"�
���Bz�f���־��!�y-}/0�a c���p��]�8۬��JP��c��ҧj�	=SE���J�3�wI�~O^����\|�1�I,��6Ѝ���v�����Nݧw���L&p�;[7rO�@B�oAW:2_��z� M�e��\�s�����I$�I(�xwy��-!�>il���q��2����<��af��0M�F3n���@(�QT�U���m�7Y��n�, \��m�H��:��fH���Ƭ��5��p䦁:�K$�� L�"@H*���h���^�#E�z���'X�������4r6�/@
��lf?@	���0�qV��@�၀�=D|�Na}��3#Nއ���˽P�0g�Fыq�&���R�Đ0q�r8�I��λ�x683�[k m��6�8�GJ�a�G���7L�����vd�ô�-�^���`�TAģ��>���k���)z�D��spP�B�膽�p�F(p�m$��B��:c��/"�+w�<h�t�p8lLF�y���Ű�B��-jC&���2��1_t��&��K@a(ˈ狔�B1$n
A`H�	�{��=��� ��On�S��9��
��mb:�2E�W�UUD��cz+|:*�U:�\��"�;�F��sQ�C���7gY���[eP�bD����FeR;D��,%[2�>!���X�^��DqUQ���i��%Zn1���ͱe�H]x���#?*@���&r��9s�͑�l,�@������H�
|4R@