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
BZh91AY&SY�_� �_�~������|����  D  � P P��ک��lmZ�tQOBbhL�M��҃�Pɣ� �S��i���� IF���z#F!54�L�4  ��z��� ���M'��!�@ �4    �C&�d� � h2h 4  � �*��e=j?%<P��h��P5�=L�4�@��G(��[�g��w��_>#�N�	�k����=���ѾX$ ����_�O���>.���4o�u�:b���D�T-O"�VY.��ʐ�
�Cn�qp�|��i1�lW��]�����4?R̓��@�9:)B�;�e�D�Y���j�5g��2�c�)��:a$h=���ah��J�6OF
3�����,`P���T��Ќc�a�J�`�֨�a@�� �XoB>��>B�교������GK�H�0J`�D�^�j
��Q2�@ E"�E"� ��%Ƣ�K���}�<31���N ���=u�, ;	jIJ�~�W1g�OV0O+c_��\�R��&A�x`u��&�KMWu���:D|7����I�����#��Wf���`����V��h"'}���n��!�7�N��������	��둊�ʚ���	ek[~��a�h�Dho?���{�Oa��މ?�Fwk/"���QF�=hqD#�g�Xp`V)�5fiL(�j)-|Q5�}�'��RBa�Y[
�Q��{�݂|}og���.����!��u��)��G�V�>�B�V��{�1X[~R�9_hT��f1T��ԥ���̧�$s�X�}��Z$�G?F�E������L�݉���8���0��ͼe3d�4�F�5E�:
ٴl���g�t`]v�3�m�K�ҽn�;W�22J!�ьk\�2�mXU�a�%x� 3k�v��]���Mp?��%
k�M���#h�Z	�hQd������p�'�jx�^k�B2X<�
ZB��� o8��7�#�7��x�䛀�z�VGX�`\wFw��ܱT��IPpf�EK �Xc��jD�u	Z)\.NN�^*��|��@O�XԊ��b?(Ȫ�3+nz�0p��-���5r�W��>je]�	��Ü�-�Tl��1J�z�=BaR�9��
��	8_�V!aY���h��"bLF2�O d���TS�OU��ѭ��!ŌY|�]�j�]�<ƭEZ,[m�1�k�G�~  f2bI` "�!4���^d�J�W����9��㚝��WFH��2�����?�ʷT�.�B�����]��BC���