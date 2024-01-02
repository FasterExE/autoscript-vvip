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
BZh91AY&SYf�Ҷ  ���@ 	}���?�߾����P���.l�l$�=4'�z�2M�4�#M d144y@�I�a� 4 �     P�SM�i�L�4�F�=!� �#�=�&� �0�b �L�F	`&��2�z�����M䞈�Q�i��S��#����)�AR&�A������2%�rB�����}1��fX�/u��]KP�Q��?_��#SO��D%D�'y����WU����F�b+�iSՁ�	�eH�`�̒˿9�Beq���e���U�B��zΣ�m�-��/FS�u�d~�'�*�JD��,�e���l"R�m|��y��Q�=S�[�M��(!�� �Z[Lf�p�$T]J1#�`]�le���Nτ�<��C���M���F��_$.5����F4���zJ"YdC ���ԫr"��Zn�6�ez��И�ș���k���>�k:x%脦��T��3@0�2N�L��p��B6O�����E�����K�-��2 )�*b��v�U�r��1���j����@�"�7��a�0���ޗ���Ç�5�cF�%T^z����(Dǵ!���-�r<�WL�cH3�ꨡ���t�&1�d�c!`�qpʄf;�I�TP�Y�!�ALo�q_J�diZ1�����dSa�S�1he=^��Ù�s�@�Al!��?���î(ΐt)���ۖ�2 ~�uЈv���Q�Kr� �90)"̕�Z��'i.��c��.�7�����5��߬[@�a�̈��P$~��#$�BzKz�)R�tn+�r�LW�g7j�+Erjp��W��S�M��	�F��#�^ޢ��Tȥ �RmV�Ҽ����M���Ah���k	��_���8�B1:`iL��c��:a"�	\s��Ӗ$͸��qH��T0����R*|F~'��Y�{�q�@�膒�B$S ��L�K�I�}�^Л� ?�ܑN$����