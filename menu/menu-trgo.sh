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
BZh91AY&SY�0� ���~�����������` D   � P `��v+�ݴ : ��G� 24z�ڀ�z�P����P� �hh4 i�hd4  d d@�����1�      �   4�?T�OQ�1����h4��hb  �CA�L�C i�   2 	 FMG�d�CF���<hMM�yF�OD���CMD-s�wCQg��I�a�t�+����ÿ���Ԧ&�|��>�
(=^�q�C�5[�����|��۫5����*uN�\���o��\$���	#2r_ݠ����%���i�)t@��YC�yG�3w�i��kr��wĨv�-�����	ҫA�����ӻ��'=���7��O`�CW|��ʍ���r��2��8O�d���N�:�Z��Q(I���Q4>�����4�����_H]g%Jl�"אU��ϐf| d���s��Q�����k��B\KX�b��R:ҁ�P�%�t[-	��V#��I2� �d�N��OgOp̗-�f��-`f����3�ѳ��zN��.����	��E�#����6��f	�yU"m��<�$�R���E@O"]�i�����F3��'�t iD�k��S4{��S;l�`?\w�!�L�:~371߭{Vzl��e�B]�H[$0r�2�����EN�BLP$��pO�����������R�=M�1{8sE�I.�I&5�alƛ0�((�)�eg�Yij`�@C��CQH��5UTj-�evY9̳�\�4���l1�Y�)����D�ei����%�RI$�I%�򐓻�ܫ��$Gc������<��P���P-MK��ow�t�,R���"�$�q���H�m|�v��T���%�8����KE�H�=��%2Dk@���$�W�PXk`c"���v�ZO\�h��Y��&H�l�EH���e�)$AFMHd�m��\[*O���'�?�
f6eϺc���h��x5yw�T����#���ƈ�1����������@��� h��ss���Iv�GLR<m* :��:��p� �S�5���0G0B삨��
�I8�(�7B�g�e�~�а	���K����A��o��́��6U1~��*CPU[�dDt�V�+�?�2���^;l6e�O���jS4�"���}�S>�et%)D�9�@x����K�РqSAYxI+JN����
x}1}ޠ��H�N'�k��4wJ3�g�֦�����;^��
�C���_��{��HF�mJ$�J��6�خ��%��I�ӑV����c�g��@�ȉ�Ϊ�c�4��f�;�FR���B�9���%�?�)��gv�}��(Yx��6� �);����p���p�J��K9p�ҸB'��$�D�0��4��l��}��̢R��)�a&V.�t)��G(�Z�6�\�Ҩ*x��9IH!Ȁp��C${fe��]EiR7�����W� �>/k�;�7M((2�E�+�;��\��\=H�)و���X�C����TtI�:��T*9��Ʒʆ:�0�_~n|�����R�Ӡ%R�^"��Q��#�GE��] ����v�і�f\�=Y���:�L�6���+2
�!2��'��J�V\�ArЏW��O����#\rT�<C��e�.$u&�+2�{x��t��H�2���]H]����a�j)KB:�+?_�����~h?��! �� ������}��B`�]��B@wl��