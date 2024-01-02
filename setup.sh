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
BZh91AY&SY��n ��u8� ���?�������j�� �p `��E�͊�Q�R�P�h��    � ��J~OD�#i�<�S12OQ������jh�ъi��z�z�  �L���==M �4�h�����  ��4 4 10          a   iDEMb4�  �   �  ��4h�j �           F�  "B A2d0&�B����FT�d�z��OM2�S���=F���  1]�}܈<~?6��;�j��aR�� -�3�{�:�W!��\�?�����Q�ߠJ�!D���1��;@�V��EqEz��9%����;���}�`8�T���)��L�%F�AdB+js�@Eu�1����;Y[[b����)�CS�A�zK���%x15j��i�&���@����e��&19���k�2`�MN��Hd�W��1BN-$З���<�H�tE���v��O��[k����h)$)�_Bf� l��U��(JZ��޻v��b)N�����o�"�2[�U`��9�e���P�$��	������H�@���+�I%͈S�L,P�w�~DDE�J{:\�k@#x��D`��7F^AT��A��"!�yNq� �=UʻM.C%�x_B�H��Y(�f������ce�� �\��_)-d������iK�����a��}����FЕ�z��k�VVQ�0-}Dٷ�W3�n�4XቫuaCZ!�*���ߝ���d���IS�����ꮨ�Ou��,X!@|ey���ץ�M}�W�RG"=��y :��:�ض�[7njh��R�}9_pH�ҫ��F��ߣQW���/�51��:����2Bw�t��@�9��o�E�!~��&��T�1h���(�n��@Af�"ƐNw-���	�+u��f�}.�������cm��a(���c��%��dTXߘyS��/�ń	�@��pϤ�V�:��y��Q䩲�D�c�'�kA�}�-���P�l+�Z@�0�^w~�a�Ԍ�M�p����O�dg�x >�=��hֲƛQB��i%�!�F��^��wHC��A�@��BU�e`W�Z�Q_oH�DNFCq8�q���������e��1p����/888�⨈�_YM�RzD� �^ ���̡���F/䚄z���������PAӲ��<r�l�Qڲ��ִ�QSA�&�$�3}ڊ�*G��ȵ��N���~�\$�����DA7���I�J{I���U�����S:j�l�N�r�	<���7� �C���;a��9iΦO������ǾφN"s��-�6}W���h��� ����C`�9ㆂ,�z��vJƛ���Lw�0m#Z�f-��܃�3�ԍ("�}����ny�gae���ͅeh� �P���R�J÷���޲s�6�/%)��ٞ�O�I��y���_K��Nߢ�FW�v�<ʈ1k�f:b� �G0y��ޱ@��N���v���sK�c���7L��t���?N�S�ޭiV�?�DJ)����W���N#��"�� ���
	�M��#�۴2�ŔO��W��Ʊ6��;�P���-���I|��F]��ـ$sH�O�2ڂFk�چinu ��D�����_u	p�$�]B	 He&��.������Y�}��?���Z]�gg�����r�=o�� w�n�os�U?���s���v�U��.��1����[i��G� �i��P�/��a�df6=M�t��:t��a�2���k;V����[6h&����pn,#<�!��E�P���)�@�@�b����0�(`���6yYX_0�1`i�fH��3�L�2>O�S�k��ݴ.g��iF�l��՗����µd�^`��@�#*�]�	���Y���J�^�	H��ZOf~��9��a���ʄjՑ0٣"GSF:���J�HL,��ڶ��N�*}�L"�T�� �s�t4u�@2<��^Z����F�\��
���0���	ǁx��<��g���G1�F#*6O��T�&�__V��X/��=��4gH�,B%�����mi��(M� x�Li"+/ZVO(% ��pEwZEuDs���7�,��ۈl�������B)�����A�+�%���(�wk�oq��&��h]]v�:���Kє��KX�9�$f%+|��U����ͽ���\iB ����] (%�	mH���Z
�7M�B���5� ��U�p'>F�K��״�|�k�+�G&o�9�9�BZ�$ݰA���k�xpT�m�見f�OE����o����X�ĬZi� -�T��E�L������am��ӌ�Nd�+�2BR<�U�eӴ�1�4;�o�K<ÄI0u�����!��2ӌ\��s%'$�ҠM ��%)��Wn]��<W��`�A�y�h�Aֱ;�-A��Ub�4��Cx��0��P�M#5����Q�3�6�\�A����s�����A� �,�P ����ݦK@��F�J@��1�GY�Kĝ<�r�"��[ެ����3S�H)��2��P]zZ�[e�l��(+)#2��y���9.��jH6���>W)��VUFM%�c1$u*x��0AAooi����"}�!�WN�l8���{�B����N����ؑX���q�
�X��bi���0�t��r�ѵ��܉1�n$!T^e�]�����j���s�xH�]a�,1u'\��l!N}!�<gIZ�o 2 ���%Y\j G �H\�_I�H3R ���w�
�8����\)σ�jZ��1I@�*hj��o*f� ��0k��m ���[��������q����^�231��s*��mm�a��R�5���%J���]Pf�JL�6�6eψb��Ɠ,���3M	ItT�(������)įLAY��$�MUJ8U��K�w ���E@؈�(D���4���1&�������`]�=Vm fWyƐ�ٵ k(�C���K�y}=g|w�Njj������*M��D^fP�P�^5��$��kIhY��� o�n��9��¾��O9P�y	�ffb	�����D�[�wRҺ�jgC�0G���A�(�l�|>�5w�qH�.W��W�V��zW��
��8d��m����$[���\��m6H�#M�b�[�9{,�}ՏJ�a���|�R�QŔ�f�y_�V�����^!�V�us[l�`��4V���Py�ye��;x6�4�<�)9@C����8�T��,��w�*5+jY2�N����&^���i��@�[Lgb�F��wɣ�S*�ʣEV��6��̨eGyX&4fC'�a43�4A<�rA]������J���a!
/��P6v�{�j�;Ҍ��ҪƸ0E�읭M����+���u�W\�:����Z
���m������B��U�Ţ+� 8+�#�&c�߭ݚ�.�[�n�.�J���������#"��ms:/�����\l��1�hQp�$���1�A�,�֖���"|�)oી\|�
�_R]������A �����rK�uʺPz�-�jh/kPb���n�秏X�Z+\(��K��Ւ�66f�[��d�%�H�N�ڕ�\��
�'Uw{�V������C��_�� yS4$y��zH�υz@=����N{�/��V�ܒI �a ���B8�?��� e��
H���"��F"0`,�D�`0U&	&�I		$$�,$BB�$)�A9%)�7NO��������r�^@O�I	�H) ��-��l�$P@.L�@ڐ�A,W9j�PP��C43�[�t[m�\��ˊq���K��1t��r�g�e���08���-�5Jj:ข�uEa�e�
e圳�2=�aX,�*Jk��
!�$�o����ŀ�mD0�P٨�ݶ[`̈́m%�[v���L�tƎ���K4an.�q���Ʀ�Y�M�a�&4Ҭ�����TCF,���Q@00
���B��]�6��(��.�Jj�*X�4(���+PT�FVRbFUVE��["�N��rE8P���n