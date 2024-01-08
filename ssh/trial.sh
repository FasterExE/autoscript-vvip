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
BZh91AY&SYP�l ��} ����������  D  � P `[� �    E@CM �  6�     h�4�h@  A�i�h ѠC@E4�� h4         @�4�h@  A�i�h ѠC@p�i��@   �M@� b$��	�	�e2a14������ڙ&hmS�c�SOHhYQ���<�g-�{�$��@|d�є�^�@�  �a�fIJ]\7�zUШ����qLe�Q~TE��!@�HW�Y�P�P��d�OؑO��IX3�E��ϸ���&L0�sa3 ���P_���art����{���yʱ�BJF���\F�.֫H�w�����D�R8X�a|��5`a^���˹o�f��7��N�8*�Y�u�d�U���[�����i���w?t�X����=�|��o�5��'�4�	i��P��W\ws�s�9;Ap�ߦ�PZ\z���Y�b��&Pq1�ⷥ���T1v8�����џ���}τh�x������w��_H����a�9���Be�+�O��xy��0�!}������8�ݙ����Q3�@"�k��x ��!̅!~t>[���n�i��y�h�88��y��\�^@r#e
�>)�d#U�,������Ǿ!PxI��	NO7�`��sS���y��C���,&/(�
$Y��~� Vb�%G��$�.� ��c�CQ�F�LdJBv��M�������DJ�=䫁����/t#g��%����|�8q҃�!�������C�\ 4 �q�Y�b�(P����Q�C��;I ���� Pj)��?N�)�`���v��!����c�>�c�&
��:�=�q�����<7�c��E>���wB�u���>I�L���¢�%���+�r���Y#*��Z�I0ܻa|5�)-���0d�h"�El��-0�0K1�v�;�8�!8�1�N�&s���#������T<�摍;xG���O�6n��p�+�"T�E��b%�*�D��!�ȴ���&DϴC�x���Q��T}Z^�G������{C�����²�c���"����WҲ�j@[�=B�{�qM�v0_�T��fb1��w��;�Z�/���3 ��)�گ��Z 75�c�٠� �@[E��r��pw�Z`�vY�Ŋ�N�h4S�ft�{��H�I#�V$��pwA�X~Pc�K�zH�p����i��1��ja9ˌ@p��S�X��2꬛&L�C4$7����0�Ѥ��2l`��ŠP�|8���N�!L���B����W�mv�� ��<

c)�bܟ�\�-�����~�<a����xZE��u�9�Řd����I������l�A�P�D( z�4�!jD�q������V�F�O
x�̎ T8��ѳFO�0w��S�8f������/ID�P�څ�H�g3b^w� k�Bp䏥
�j��8H��Hځ�h�4nKz����2��/d#ȱ*��j/�3Mw�����<�V/�&��RQ��x�P�r�_k��c�ZPniW�-�I�i�8x�Y�����{N�/7%Fi��`���q]����*L�·\Ƅ�O�U�нSh�Ѻ9*�����&c�����ș�c֐��Jna���J��k�:c����q����z�7h��%|��������vQPĄ5Y�b��s���W�+�Vʄy\�2��[��I#�߾w>��{�ɯ�@���DA���#�c9�8� ?���)����`