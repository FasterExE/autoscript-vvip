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
BZh91AY&SY�]�  w�� ������/����@���:n��zS�MMjh�4���4i�#�4���
eOщ�jlS&���� �   J�4�S=@�F�  �  � �DhiFji�FM4��=��a=L��ѣM��z�Q`���&'��4`�ji�^"8���m��gťC��&nV���m:<����JujZ2M٫�T
���Q�7�X���
�j�0RH�KIY��&5�Q��Ca�$X�$�Z܋$؉���c�_�tQl�+7!�ZeD%ղ�`BH��f*;)� )��!`IQ�V����"�'n���n�ݲ�H�a`�cb���'לp�n)���}�$����2I�09:(�v#0� ��/1�8�!����z��8u����ɼr<�9X6�T���U~��VDIQ�(ˢ�w�;|�b���7E��A�A)�����8,|�����W!�,��{��	=@n��M��\��f���c�S�v�?a
<��G�q�V�X�su�	��[d+��HxD�J�J����������3���S8�ZΥY
b�1
<�w��¶��a����D�j��6����2Y�V��s������%(]6�]ߪ'(ŭ�of�s���{�D����gWp>���	0�A�"S�A�5���W�U�L����n�H�%g8{�i3��h�u4�Ź5�x�/RN0^IJ��В�:rQ�����@'�aݢ�V�~
P�0�#o��Ɣ"��E��?E�����	\��;^=(�A��i��R��s������Z�!�j%=v�:�S�.�p�!�&��