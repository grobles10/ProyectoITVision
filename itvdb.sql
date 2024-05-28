PGDMP  &                    |           itvdb    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    itvdb    DATABASE     x   CREATE DATABASE itvdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE itvdb;
                postgres    false            �            1259    16455 	   vehiculos    TABLE     �  CREATE TABLE public.vehiculos (
    vehiculoid integer NOT NULL,
    numerobastidor character varying(50) NOT NULL,
    marca character varying(50),
    modelo character varying(50),
    tara integer,
    medidaneumaticos character varying(50),
    dimensiones character varying(100),
    combustible character varying(50),
    normativaeuro character varying(10),
    aniofabricacion integer
);
    DROP TABLE public.vehiculos;
       public         heap    postgres    false            �            1259    16454    vehiculos_vehiculoid_seq    SEQUENCE     �   CREATE SEQUENCE public.vehiculos_vehiculoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.vehiculos_vehiculoid_seq;
       public          postgres    false    216            �           0    0    vehiculos_vehiculoid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.vehiculos_vehiculoid_seq OWNED BY public.vehiculos.vehiculoid;
          public          postgres    false    215            P           2604    16458    vehiculos vehiculoid    DEFAULT     |   ALTER TABLE ONLY public.vehiculos ALTER COLUMN vehiculoid SET DEFAULT nextval('public.vehiculos_vehiculoid_seq'::regclass);
 C   ALTER TABLE public.vehiculos ALTER COLUMN vehiculoid DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16455 	   vehiculos 
   TABLE DATA           �   COPY public.vehiculos (vehiculoid, numerobastidor, marca, modelo, tara, medidaneumaticos, dimensiones, combustible, normativaeuro, aniofabricacion) FROM stdin;
    public          postgres    false    216   �       �           0    0    vehiculos_vehiculoid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.vehiculos_vehiculoid_seq', 6, true);
          public          postgres    false    215            R           2606    16462 &   vehiculos vehiculos_numerobastidor_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.vehiculos
    ADD CONSTRAINT vehiculos_numerobastidor_key UNIQUE (numerobastidor);
 P   ALTER TABLE ONLY public.vehiculos DROP CONSTRAINT vehiculos_numerobastidor_key;
       public            postgres    false    216            T           2606    16460    vehiculos vehiculos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.vehiculos
    ADD CONSTRAINT vehiculos_pkey PRIMARY KEY (vehiculoid);
 B   ALTER TABLE ONLY public.vehiculos DROP CONSTRAINT vehiculos_pkey;
       public            postgres    false    216            �   L  x�u�An�0����9A��=c{I�R��4�&
�)`))U�}�d��^���ofWd��d�\��"����s3@�UC��@�J��p�F�8I�Rr��e�J/X���t���!ePH�0��<�̮2�i���v=W-����3�v`��D�y��G���е�j�e�9�8`Y�ޗ�w�)���w���YOt9���4�x)�ؒ���"�ڝ������1��Oy�C�U@��G^�Db5/��r�I��~����d��Ğ�П�Q߆X��,�2���i�Szv�a:/���1��"��vbk��߶R�@Q���/2M���5>����$�cنH     