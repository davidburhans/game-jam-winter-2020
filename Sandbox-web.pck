GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�!      �      �p��<f��r�g��.�   res://Forest.gd.remap   �1      !       ���:���@[���M   res://Forest.gdc�      �      �U�r\S�<�D��<�   res://Forest.tscn   �      �       H˶QU��M(��
)   res://Player.gd.remap   2      !       ��0�F �qq��dX��   res://Player.gdc0      �      o��y���x�O�HX=*   res://Player.tscn   �      :      �+�1�,���x=A.   res://Tree.gd.remap @2             �7����w���k}�8�   res://Tree.gdc  0      *      =���f�i�N	>��!   res://Tree.tscn `      �      W�����zmӴ&��'   res://World.tscn@      �      ����痱�D��~nԎ   res://default_env.tres  �       �       um�`�N��<*ỳ�8   res://icon.png  `2      i      ����󈘥Ey��
�   res://icon.png.import   0/      �      "�Պ����$��㹌   res://project.binary�?      �      ت�B3��kݵ�q��GDSC            �      ������ڶ   ���������¶�   �����������Ŷ���   ���Ӷ���   �����϶�   ζ��   ¶��   �������Ӷ���   ���������϶�   ����Ŷ��   ����Ŷ��   ϶��   ��������Ӷ��   ��������Ҷ��      res://Tree.tscn                                 
                                 	      
                      !      "      (      1      <      R      h      v      {      |      }      ~            3YY8P�  Q;�  Y8P�  Q;�  YY;�  ?PQYYYYYYYYY0�  PQV�  )�  �D  P�  QV�  ;�  �  T�  PQ<�  �  ;�	  �  P�"  P�  T�  �  R�  T�  �  QQ�  ;�
  �  P�"  P�  T�  �  R�  T�  �  QQ�  �  T�  P�  P�	  R�  R�
  QQ�  �  P�  QYYYYY`[gd_scene load_steps=2 format=2]

[ext_resource path="res://Forest.gd" type="Script" id=1]

[node name="Forest" type="Spatial"]
script = ExtResource( 1 )
GDSC         '   �      ������������϶��   �������϶���   ��������   ����Ҷ��   Ѷ��   ���������¶�   ���������Ŷ�   �������Ӷ���   �����϶�   ���������������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ζ��   ̶��   ����������ض   ����������ٶ   �������Ѷ���   ϶��   �������������Ӷ�        ������#@   
   Footprints        ui_left       ui_right             ui_up         ui_down      �?                                                                	      
   (      )      *      0      2      3      4      ;      D      K      T      Z      ]      c      l      s      |      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   3YYYYY;�  �  T�  Y;�  Y;�  �  Y;�  �  T�  Y5;�  �  P�  QYYY0�  PQV�  -YYY0�	  P�
  QV�  &�  T�  P�  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  '�  T�  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  �  &�  T�  P�  Q�  V�  �  T�  �	  �  �  �  Y�  �  �  �  T�  �  �
  �  �  �  P�  R�  P�  R�
  R�  QQY`    [gd_scene load_steps=6 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 1, 1, 0.25 )

[sub_resource type="SpatialMaterial" id=2]
flags_disable_ambient_light = true
albedo_color = Color( 0, 0, 0, 1 )

[sub_resource type="SpatialMaterial" id=3]
flags_disable_ambient_light = true
albedo_color = Color( 0, 0, 0, 1 )

[sub_resource type="PlaneMesh" id=4]
material = SubResource( 3 )
size = Vector2( 0.5, 0.5 )

[node name="Player" type="KinematicBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0 )
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 1 )

[node name="Camera" type="Camera" parent="."]
transform = Transform( 1, 0, 0, 0, 0.573576, 0.819152, 0, -0.819152, 0.573576, 0, 20, 0 )
fov = 108.0
far = 1026.0

[node name="Overhead Light" type="SpotLight" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-008, 1, 0, -1, -4.37114e-008, 0, 20, 0 )
layers = 2
light_energy = 2.5
light_bake_mode = 0
shadow_enabled = true
shadow_color = Color( 0.435294, 0.431373, 0.431373, 1 )
shadow_reverse_cull_face = true
spot_range = 70.0
spot_attenuation = 1.46409
spot_angle = 20.0
spot_angle_attenuation = 0.34151

[node name="CSGBox" type="CSGBox" parent="."]
depth = 0.5
material = SubResource( 2 )

[node name="Flashlight" type="SpotLight" parent="CSGBox"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, -0.25 )
layers = 2
light_energy = 3.0
light_specular = 0.0
shadow_enabled = true
shadow_bias = 0.0
shadow_reverse_cull_face = true
spot_range = 90.0
spot_angle = 60.0

[node name="Footprints" type="CPUParticles" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.0851644, -0.47767, -0.0111313 )
emitting = false
amount = 2
one_shot = true
speed_scale = 2.0
local_coords = false
draw_order = 2
mesh = SubResource( 4 )
emission_shape = 3
emission_points = PoolVector3Array( -0.5, -0.5, 0, 0.5, -0.5, 0 )
flag_rotate_y = true
spread = 0.0
flatness = 1.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 0.0
color = Color( 0, 0, 0, 1 )
      GDSC         #   �      ���������϶�   ����ݶ��   �������Ӷ���   �����϶�   �������϶���   �����������޶���   ���ݶ���   �����޶�   ��������Ӷ��   ����Ӷ��   ��������Ҷ��   ���������Ŷ�   �����Ŷ�   ���������¶�   �����¶�   ����������ж   ����̶��   ����������Ӷ   �������̶���   ��������Ӷ��   ��������Ҷ��      Trunk      h                     ,      -                                                       	      
         #      %      &      '      (      )      *      1      :      D      M      V      _      h      i      n      {      �      �      �      �       �   !   �   "   �   #   3YYYYYY5;�  �  PQYYY0�  PQV�  �  T�  P�   PQ�  Q�  -YYYYYY0�  P�  QV�  ;�  �  T�  PQ�  ;�	  �  T�
  P�  Q�  ;�  �	  T�  �  �  ;�  �	  T�  �  �  ;�  �	  T�  �  �  �8  P�  R�  R�  Q�  �  ;�  �  �  ;�  �  P�%  P�  QQ�  �  �	  T�  �  �  �	  T�  �  �  �  �  T�  P�  Q�  �  T�  P�  P�  R�  R�  QQ�  �  T�  P�  Q�  -Y`      [gd_scene load_steps=3 format=2]

[ext_resource path="res://Tree.gd" type="Script" id=1]

[sub_resource type="SpatialMaterial" id=1]
flags_disable_ambient_light = true
albedo_color = Color( 0.0196078, 0.0196078, 0.0196078, 1 )

[node name="Tree" type="StaticBody"]
script = ExtResource( 1 )

[node name="Trunk" type="CSGCylinder" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 15, 0 )
layers = 2
use_collision = true
height = 30.0
cone = true
material = SubResource( 1 )

[node name="Branch0" type="CSGCylinder" parent="Trunk"]
transform = Transform( 0.707107, -0.707107, 0, 0.707107, 0.707107, 0, 0, 0, 1, -4, 0, 0 )
layers = 2
radius = 0.25
height = 10.0
cone = true
material = SubResource( 1 )

[node name="Branch1" type="CSGCylinder" parent="Trunk"]
transform = Transform( 1, 0, 0, 0, 0.707107, 0.707107, 0, -0.707107, 0.707107, 0, 3, -4 )
layers = 2
radius = 0.25
height = 10.0
cone = true
material = SubResource( 1 )

[node name="Branch2" type="CSGCylinder" parent="Trunk"]
transform = Transform( -2.18557e-008, 3.78552e-008, 1, 0.866025, 0.5, 0, -0.5, 0.866025, -4.37114e-008, 0, -3, 4.5 )
layers = 2
radius = 0.25
height = 10.0
cone = true
material = SubResource( 1 )
            [gd_scene load_steps=6 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Forest.tscn" type="PackedScene" id=2]

[sub_resource type="SpatialMaterial" id=1]
flags_disable_ambient_light = true

[sub_resource type="CubeMesh" id=2]
material = SubResource( 1 )
size = Vector3( 10000, 1, 10000 )

[sub_resource type="BoxShape" id=3]
extents = Vector3( 1000, 1, 1000 )

[node name="World" type="Spatial"]

[node name="Player" parent="." instance=ExtResource( 1 )]

[node name="Forest" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, -20 )
tree_count = 30
tree_extents = Vector2( 50, 50 )

[node name="Ground" type="StaticBody" parent="."]

[node name="MeshInstance" type="MeshInstance" parent="Ground"]
mesh = SubResource( 2 )
material/0 = null

[node name="CollisionShape" type="CollisionShape" parent="Ground"]
shape = SubResource( 3 )
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Forest.gdc"
               [remap]

path="res://Player.gdc"
               [remap]

path="res://Tree.gdc"
 �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG	      _global_script_classes             _global_script_class_icons             application/config/name         Sandbox    application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png  $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres  GDPC