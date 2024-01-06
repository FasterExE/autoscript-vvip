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
BZh91AY&SY��S �_�~�����������`D@  � P `���j���Ѡ�v��iMM�� 2����A�42bd� �2��f����4      4� �������4�ddѦ@ di�# ��#&��i�h$EM�L�f� �C#!�4d�  2 h�� �@  4Ѧ�2  4�0�BdL�bM0�h���'���=O'��~�Q���CM4�di����p��vv^�F�ۇ%·-������k�5�2.����[�d6@7m�iY`X~�b,&��P1��Kh�:8%�Vn��Y2�c
:J��F��P�}��d!V�!h���*I��h$�ɚ���dI38覨�ϛ���S�[������g��W(nׇ��8S1�2���q&�F<��@m�zlK0��!��l�
�dh��OG#��1<'�j�I�0<��"X�Mׅ�	�u���DV�`Hl��]����7�GZ��@���m��W�x�b9��U`�4����&��~ӹUs�ǁ?QVUқ��1nj@��/�w<��A�̹s�謴z�����՛�Z���my��ZĿ;W�=��6��Hf�����L���QK�X�6�Z��1 ^̎��on�'֋���z���P�K��X��
���I&2�9�xeh�	P�띑Ύ�:�x��%w�B̓<�(x4�'i΋���F@� ����A�Y��Fek�ߊ�a�D�l[�I��,������{fb"����� �y�I�2�'���C��+�+��B�O���W��%�V"��Ngj�O�Buf"Vy,��1�NhA2q��[���WJ�"<))��c)g��H� �7>tH^6E�'��������m�� e5i{;�s��=Q(����9���#� b�읓�f0l=�zQR\�	�I���D̒if�:[�-�X��8���q��A�1e��iwMb�	U����n#p���SM�fqȀ0a��7#'�4W�5�fFn)X��U�_wAYy#�DP3�w ah����m�0J'���"Nd����P18[�qv�O��h�������9#�&MndDu�=���]�m%�@� D����A��I	b�S����,�
���K�b��XxZ��+.J?v���g�e�粰YH���N�K�X�2��+���%�Fa���/X�����j y�W0�3[*��!�X��fWY������4��K�%��6ݚ�Jf&�DD�)�7��`� ���9a�Ȭ�J��Ti��9z���6dD�Y�iX6Ǝ��-0�ڤx�uM�z��2(Z"��(���e�乍�Db �(�9�,9��]>����S�2�w���кGt�]�.F|Ȓ������4��<D�F�$2	�ԣy���(x8eſ ��/�wE}���0_0��(+�M��1������	�'���d�S���4�����2�`0(��8� @9�`���b�F�)�Ń4٪������y2c9c%Ho�
��Éd�H��odd��S����5l5X�)0�eJ-`�D �z�J舆��;�a�"v4h^t�g������(�O[HCB-�p�����e��C(u�(w�T�`e��ʆ:.8#_�?_6Z�phfe�|怚#�@�iH�EȂ֎��v-��J�Ɣ�al�)QjEX����e�UD�TP7=NMEi�+,� �2�75�
`HM[Km
��H�	����Ej�d�����Q�&��/[5�5CQvKʨd�"v(���%��u0llm 쬚WĖpB#��d-s�=')r�G��n�_�������b7�vhU ��H
<��.�p�!e��$