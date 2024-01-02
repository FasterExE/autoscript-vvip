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
BZh91AY&SY���" &_� |���o#�.?���`}�  �   8ɓM0�14`� Ѧ 8ɓM0�14`� Ѧ 8ɓM0�14`� Ѧ ��  A�� �2d�L&F@��M#4i���&� @Q��M�4�OORf���M�e���K�;�d����At`x��Dx\t\�N�sܖ,�	���_�e�f+�Y�iSG����[#���\ړS�h��T~ړf΂#3�w��הV�C$�B��鍊�Oh�TUC�U���0/Z!̌����J����y��&)6V�<c�T���u?�������N��w�.&��E#��h�`O�����'�������x�ő�]�Q�ڕN�7^��Y���ϑV�.�������O����Å)�����?%��l>ö$���b!��R��c�4��)�Q���EK�^�{>|o$ml���B�{ҽ��v�Jb�)��P����
.&;��++��1�J)%)E0\�}N���S�ڪF�9��kK�{}�|�e�oO*���b�_i��D˄D%�Q��C�C���#�J4�,�2���K��u�m�?㺗%���l߂��dbж4�1�M��;�
�.��oB��K�3>�\����UW�91��5~�G�3rQ�[�����?�ov%�gȗZ�ȟ�|���p,jR��"��|F�/�s��ȣ҉��Wh�U��1 #"$E2>�8 �-�(̝�5xh1,�Z�ݭ���|_��^r��hUs�35����3K[t!��,�%C����"I�0��̬m��&�4����q���.���m1
���b��"���|�&0���U�9R���:�>9:�439,�F�kz.olI+!����U��b�a�v6�4�$�EQ�ܢ��Ĩ��G:����G�gASFH�#[��Q�E*q�%��5�t�C$e�+�ܨ�9�nd������IKjf����sÃ6��ft���0��b�	KZ���,Mmm������=�^R���b��Щռڋ&���U&"ąPe(+ �[�7�E�c�F�M�j���^Ԕ������>�C���j�B3hq�F���EyW76�CiK>��̚Zj�p�@�X��3�r"��mIre)������Ȥ)�{���#bd��P˺��؁�ϣ���4Ҩ��ձ��2I$T�3O��Q-�EN��e��3D�%":����l���|g/�ə���F�&"�ևC%�qFhkl5:M-J�/n�E�Fl�ҽ%�&.KF�8Q��.)X(LE�bۑ�iZ�%J�.�K�e����,X���e���\x�H�s{B8#j�mF��4���iF7IA)�hRh�f�hL�(�D�!��B]̚/<1��n7��U��8�
���_�]��BBF���