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
BZh91AY&SY��'�  �_� |��+!�?���@���0     ` � 	�   SU  �  
�4��=���e6MOS̥N��o�>�Y�e��ф��[�s���Q��_<58�u������(Q���+K�xŔ?+[�����&�Ƥ����b�9�.g&�1�U��ܬv��~%���z!}��{�ou�,�������*���Ke�K��V�m�?$Êe!�r���be	N���TGy���yc����fL"�)o`�if�2�����e~׮,r��2˥���\�|��O��'cȦs�mg582۵Q��$̙!�����TF�R�'O�$4"26%��᲼���_gM�U��w�Ϣ�����O�L�FHIWcߡ�mZ!=R�Cs���&��br�鑔јȴ�֌��B��A-��idF+㔷/�*���KA��J��[�F�����5���R�R��8��[�d�2,����aɱ�r�~w@�h/�� ~֩�wPu6���(ǚ!FvX�`�d��so;6��2��^U��.׃�-Y�ai9�V�/mB�uX�\F�(�k׃�ZK*�YH�j�V�jFx_TFEVv�I)w4U/{Y�2������yhx.i3rE8P���'�