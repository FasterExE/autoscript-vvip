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
BZh91AY&SYl��9  ���  ���?�߯����P�ɻ�SS���l4DS�6�z��b ��2i����2(ڀڂI	��AI�L��h h  �$SMAI�54='���l�چ��@�6��s	�4�F��&LM�d&H��4ҙ==S�4��Pz�	���I�F�އ#(<�>���OiNj3�:s����pb]���e:�61�Rz��K�U���'Or�b�Y}#��
�*�h!kkw��u;p]�Me&�|�1�X 2
`��rc]�_�������F=R>5��.&��Y��|�	��� ���^y6��%��|��[LK�D�����o]QgɌL\��U�X���8hzP����}p��d#Uy��BĘ���	��$i"Т,���Tb7�� �t!�U�1�	E���t�1��Lt�� i��?�YG������V����<��$0@���dS3	���i��*�R&�4�1a�P5!ppz�TŶ�Y��"|mڄґ)�"%�ڜ}�-��m��>�f�L�ݺ���V%<5����l�#l��!������#�CX"�(i����?
�K��[
�����.[�m`�h�R��e����kB��,�9l��hٸa��W���tu��L�v^�P��K�W�]�
U}�wX�|:�n�gΟ�|:����c!�J/�P��v��R'��1J�^�!s%)��az�7��;s����^�`y��	G] ��ye��"i�ԍbo(�9�����,���/�nq�6���81-@O�J@�isoY���Ř�QN���LB ��(���0��U�ʱ��Py��[�.5,Oꂆ�9���4��y��6R�9�da�,�H1��i#58�]�������h׮}�X%����L�d�
C$r�%��2 �Q�Q!p� h-Htj����O)�z=S�P��L R� �fieh�ƻ���b���B�
Ԛ�����{�$T�Ѭ�sFp)T~J��L�-ʮ��{����HΡ爞�H� 3��.yu�	2��2`x`8r�1쫅�B�2E^i�D�^^�6�ɓ�Tmg��\s	��v���k�v��ʛ)��>�!\��`�e���p�ǃ�qa6UU��M��U0J[b�#��I�HS�6��P�s�N-�h�Ԇh��'4v���(�`�d�գ�,�����H�
�sG 