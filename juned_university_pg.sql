PGDMP         5                z            juned_db    14.1    14.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    juned_db    DATABASE     l   CREATE DATABASE juned_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE juned_db;
                postgres    false            �            1259    16421 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16420    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    16430    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16429    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    16414    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16413    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    16437 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16446    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16445    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    16436    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            �            1259    16453    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16452 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            �            1259    16512    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16511    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    16405    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16404    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16395    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    16541    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16551    student_profile    TABLE     �  CREATE TABLE public.student_profile (
    id bigint NOT NULL,
    enrollment_no character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    father_name character varying(50) NOT NULL,
    course character varying(50) NOT NULL,
    specialization character varying(50) NOT NULL,
    academic_year character varying(50) NOT NULL,
    year_of_passing integer NOT NULL,
    profile_pic character varying(100) NOT NULL
);
 #   DROP TABLE public.student_profile;
       public         heap    postgres    false            �            1259    16550    student_alumni_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.student_alumni_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.student_alumni_id_seq;
       public          postgres    false    229            �           0    0    student_alumni_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.student_alumni_id_seq OWNED BY public.student_profile.id;
          public          postgres    false    228            �            1259    16694    student_apply    TABLE     &  CREATE TABLE public.student_apply (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    phone integer NOT NULL,
    subject character varying(100) NOT NULL,
    applying_for character varying(50) NOT NULL,
    query text NOT NULL
);
 !   DROP TABLE public.student_apply;
       public         heap    postgres    false            �            1259    16693    student_apply_id_seq    SEQUENCE     }   CREATE SEQUENCE public.student_apply_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.student_apply_id_seq;
       public          postgres    false    235            �           0    0    student_apply_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.student_apply_id_seq OWNED BY public.student_apply.id;
          public          postgres    false    234            �            1259    16685    student_contact    TABLE     �   CREATE TABLE public.student_contact (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    subject character varying(100) NOT NULL,
    phone integer NOT NULL,
    query text NOT NULL
);
 #   DROP TABLE public.student_contact;
       public         heap    postgres    false            �            1259    16684    student_contact_id_seq    SEQUENCE        CREATE SEQUENCE public.student_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.student_contact_id_seq;
       public          postgres    false    233            �           0    0    student_contact_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.student_contact_id_seq OWNED BY public.student_contact.id;
          public          postgres    false    232            �            1259    16703    student_course_desc    TABLE     �  CREATE TABLE public.student_course_desc (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    name character varying(100) NOT NULL,
    code character varying(100) NOT NULL,
    pre_requisite character varying(100) NOT NULL,
    duration character varying(100) NOT NULL,
    fee character varying(100) NOT NULL,
    breif_desc character varying(100) NOT NULL,
    branch character varying(50) NOT NULL
);
 '   DROP TABLE public.student_course_desc;
       public         heap    postgres    false            �            1259    16702    student_course_desc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_course_desc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.student_course_desc_id_seq;
       public          postgres    false    237            �           0    0    student_course_desc_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.student_course_desc_id_seq OWNED BY public.student_course_desc.id;
          public          postgres    false    236            �            1259    16584    student_semester    TABLE       CREATE TABLE public.student_semester (
    id bigint NOT NULL,
    max_marks integer NOT NULL,
    min_marks integer NOT NULL,
    obtained integer NOT NULL,
    remarks character varying(50) NOT NULL,
    profile_id bigint NOT NULL,
    particular character varying(100) NOT NULL
);
 $   DROP TABLE public.student_semester;
       public         heap    postgres    false            �            1259    16583    student_semester_1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_semester_1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.student_semester_1_id_seq;
       public          postgres    false    231            �           0    0    student_semester_1_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.student_semester_1_id_seq OWNED BY public.student_semester.id;
          public          postgres    false    230            �           2604    16424    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16433    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16417    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16440    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16449    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16456    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16515    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16408    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    16697    student_apply id    DEFAULT     t   ALTER TABLE ONLY public.student_apply ALTER COLUMN id SET DEFAULT nextval('public.student_apply_id_seq'::regclass);
 ?   ALTER TABLE public.student_apply ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    16688    student_contact id    DEFAULT     x   ALTER TABLE ONLY public.student_contact ALTER COLUMN id SET DEFAULT nextval('public.student_contact_id_seq'::regclass);
 A   ALTER TABLE public.student_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    16706    student_course_desc id    DEFAULT     �   ALTER TABLE ONLY public.student_course_desc ALTER COLUMN id SET DEFAULT nextval('public.student_course_desc_id_seq'::regclass);
 E   ALTER TABLE public.student_course_desc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16554    student_profile id    DEFAULT     w   ALTER TABLE ONLY public.student_profile ALTER COLUMN id SET DEFAULT nextval('public.student_alumni_id_seq'::regclass);
 A   ALTER TABLE public.student_profile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16587    student_semester id    DEFAULT     |   ALTER TABLE ONLY public.student_semester ALTER COLUMN id SET DEFAULT nextval('public.student_semester_1_id_seq'::regclass);
 B   ALTER TABLE public.student_semester ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �          0    16421 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   ��       �          0    16430    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   �       �          0    16414    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   �       �          0    16437 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   �       �          0    16446    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   �       �          0    16453    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   @�       �          0    16512    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   ]�       �          0    16405    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ��       �          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   }�       �          0    16541    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   G�       �          0    16694    student_apply 
   TABLE DATA           ]   COPY public.student_apply (id, name, email, phone, subject, applying_for, query) FROM stdin;
    public          postgres    false    235   ��       �          0    16685    student_contact 
   TABLE DATA           Q   COPY public.student_contact (id, name, email, subject, phone, query) FROM stdin;
    public          postgres    false    233   ��       �          0    16703    student_course_desc 
   TABLE DATA           v   COPY public.student_course_desc (id, title, name, code, pre_requisite, duration, fee, breif_desc, branch) FROM stdin;
    public          postgres    false    237   ��       �          0    16551    student_profile 
   TABLE DATA           �   COPY public.student_profile (id, enrollment_no, name, father_name, course, specialization, academic_year, year_of_passing, profile_pic) FROM stdin;
    public          postgres    false    229   �      �          0    16584    student_semester 
   TABLE DATA           o   COPY public.student_semester (id, max_marks, min_marks, obtained, remarks, profile_id, particular) FROM stdin;
    public          postgres    false    231   �      �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 48, true);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 28, true);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 368, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);
          public          postgres    false    209            �           0    0    student_alumni_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.student_alumni_id_seq', 87, true);
          public          postgres    false    228            �           0    0    student_apply_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.student_apply_id_seq', 1, false);
          public          postgres    false    234            �           0    0    student_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.student_contact_id_seq', 1, false);
          public          postgres    false    232            �           0    0    student_course_desc_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.student_course_desc_id_seq', 181, true);
          public          postgres    false    236            �           0    0    student_semester_1_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.student_semester_1_id_seq', 427, true);
          public          postgres    false    230            �           2606    16539    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    16469 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    16435 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    16426    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    16460 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    16419 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    16451 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    16484 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    16442    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    16458 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    16498 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    16534     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    16520 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    16412 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    16410 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    16403 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    16547 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            �           2606    16556 #   student_profile student_alumni_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.student_profile
    ADD CONSTRAINT student_alumni_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.student_profile DROP CONSTRAINT student_alumni_pkey;
       public            postgres    false    229            �           2606    16701     student_apply student_apply_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.student_apply
    ADD CONSTRAINT student_apply_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.student_apply DROP CONSTRAINT student_apply_pkey;
       public            postgres    false    235            �           2606    16692 $   student_contact student_contact_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.student_contact
    ADD CONSTRAINT student_contact_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.student_contact DROP CONSTRAINT student_contact_pkey;
       public            postgres    false    233            �           2606    16710 ,   student_course_desc student_course_desc_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.student_course_desc
    ADD CONSTRAINT student_course_desc_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.student_course_desc DROP CONSTRAINT student_course_desc_pkey;
       public            postgres    false    237            �           2606    16682 ;   student_profile student_profile_enrollment_no_53443698_uniq 
   CONSTRAINT        ALTER TABLE ONLY public.student_profile
    ADD CONSTRAINT student_profile_enrollment_no_53443698_uniq UNIQUE (enrollment_no);
 e   ALTER TABLE ONLY public.student_profile DROP CONSTRAINT student_profile_enrollment_no_53443698_uniq;
       public            postgres    false    229            �           2606    16589 (   student_semester student_semester_1_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.student_semester
    ADD CONSTRAINT student_semester_1_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.student_semester DROP CONSTRAINT student_semester_1_pkey;
       public            postgres    false    231            �           1259    16540    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    16480 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    16481 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    16466 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    16496 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    16495 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    16510 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    16509 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    16535     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    16531 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    16532 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    16549 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            �           1259    16548 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227            �           1259    16683 +   student_profile_enrollment_no_53443698_like    INDEX     �   CREATE INDEX student_profile_enrollment_no_53443698_like ON public.student_profile USING btree (enrollment_no varchar_pattern_ops);
 ?   DROP INDEX public.student_profile_enrollment_no_53443698_like;
       public            postgres    false    229            �           1259    16675 &   student_semester_1_profile_id_535bcc0b    INDEX     i   CREATE INDEX student_semester_1_profile_id_535bcc0b ON public.student_semester USING btree (profile_id);
 :   DROP INDEX public.student_semester_1_profile_id_535bcc0b;
       public            postgres    false    231            �           2606    16475 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    218    3258    214            �           2606    16470 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    216    218    3263            �           2606    16461 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    212    214    3253            �           2606    16490 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3263    216    222            �           2606    16485 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    222    220    3271            �           2606    16504 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3258    224    214            �           2606    16499 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    220    3271    224            �           2606    16521 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3253    226    212            �           2606    16526 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    220    3271    226            �           2606    16676 M   student_semester student_semester_1_profile_id_535bcc0b_fk_student_profile_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_semester
    ADD CONSTRAINT student_semester_1_profile_id_535bcc0b_fk_student_profile_id FOREIGN KEY (profile_id) REFERENCES public.student_profile(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.student_semester DROP CONSTRAINT student_semester_1_profile_id_535bcc0b_fk_student_profile_id;
       public          postgres    false    3296    231    229            �      x�3�.ILK����� n�      �   ]   x����0C�s=L�`C�]���9}ɠ�O�Hp���@���zOW`������n��Ղ�Ն� {ٻ���z�W�W�^@�#����      �   t  x�m�]��0��g�)r�*��<��"��i�li���{��m���_�V?��a�^��������J��t��`�\��[j�U�Ex��8K��*�!�{��[n�s�;�_�i����`Z���	Hu�v�OX
d�/�Bb#s�\y_�����>��9uѼi#�CĔ�`=���3�Q9X�����)�~��� �|����ׇ]~����ӯv���Qy,�[��=�0	�]��>�ͱdVs�չz��0�����^uf&V{a��[�aU&l�����GTݺ��+0r�g�������ٶ�7ƗvF��ȉ��+Ns�Z�4��أ��yXk9/���
6|j���
��R�N�Ԁu��E֥	�f��҄C�t��4�n_jU�D�T�o�"�[�>5[Qױܱ�V�&���Ni-k8ӬEZ�&m����ڤ]���M��k��F�zp�Y���M�k֢�k���hem������6�oo/�um������M������$�;���o��W |sg�� ��������3\f�]>{�%�ݹC��9�v�9v�,.T��|Ơ);gx�����<�b�d@=d�.ɆZȰ��v�s�f��x���t���[����yN�wrV��y1��	Ms+�� �J��      �   
  x�m��n�@�5<�v�f iRM�T�
���I�"?�
B��;��n87wq���.������:6$�����}~��Q�Ѣŷ4��8_��.�Ł:aޯ��v�3'v}������=\�����R�� 8�Ґ��*0�D@H�{U5O��� � ���K"���β龈����~s�>]i��=6l{)�O�~�5��'��ƒ�Yv:�UL	��K�Uن�Kʗ���SܪQU����j�_�/U�_��_U      �      x�3�4�4����� �Y      �      x������ � �      �      x��}ks�H��gί@��c7n���C�@�i������؛��%��$�H��}��/��@-ZO3�'�f72��G�;i�����ӄ�#J��H��T��AH�����E[��_�&77ӛWG�����%Z�/��0S)��[Sx����_&����>ͦ�7K����&�>%��d��|��0��#BS�$QO|��.�����l����#yu6Y��������(�RG�q�*��҈���W�l�$�N/{�$��a�GR�������j9��.W�����z���L�W��8���5�0�,��_=
�=�	 �c � C<��� d3�'@P�@���[K��_dLY`m`"�)a5���Ϫ�L��m�c���YyDt��4L�?[�������4�:��\�8�6�\����l�A1"h���AI��	�-���QQZE"E�%��;-ZV������Tp����G8�:�&�BԱ$o�E��9b:%B*�i���h���2��)������g%��HU|�򈪔hM�'^�\!��N9e����51\x_�Zb��ρ��3�'!��S�Jw�p���,�����+,RV(��R��(&;b`�#��!��
c,~�	�2-����p_2�ȣ^	�����k�����-e�0'2�T(a��M�1!Aw��%����ݑ��@�̀%g��#SD�����\H�$���
��'��6U�Y)����	C�.�H
$���6�)!��'~wu���f��jv�p;Y���rh����|�'��g�\�>����Y�W�M཈rV�9�hD��$=����e�Y�#jS��OF�_�'�/&x�	Ӫ�2x����,�8֔c�����-�>����qu��~�O�ǝ,�_]��ۄ�tu/	��<\�N�=�ٰ?��%�����5L9nb�Z����]D���FoB	ܽ�`�S��U��F�⋬�� pF�DI���Z��Y?K��M��ʺ3ҭ茫��8fI2<������U	+X���|�o��a2�;Զ���J0vE�!�aZz�Q�Vg��v~7If�ɇ��I�:NV�����˷�M��P뿵0��y�H|E�t`IZ�t|]�=>�/x̥]+p4U\z3�����I�@��K�P��M�@��O�0vP""	'x#j����&{O'T�/����.X�&�p��p˩6&�y�d�0{���ӫA6JF����Pa�`[d8&�I#��$4:l�e���0U��
˭��?dC��0��
ng���*�V����l���S.?5 �;�����ܤ�I��%�
b���;��)8g`Y�#���Y�~!t)Y��И�fV2�^ɖ�����;�/��1���>ɾ�I��O��~R~��j�5�H"j��p��|/&ѣ�c=U�&����dv@�9����a� S� ��f���iˁ� �\�P�چ'7�;5	QG��5�ZjX�1!�h/����i�2e��({�����O�]o�����B��2��"�$������Ȱ*R��a��\GgJ[����겗�e�q/v�^] Ԩ��|���W�~�����#PK��GT�RX��{�X;G���02�yN
(={��({���i��S2D8,�G��Rq�T�i�@�����]�(ܘ�b�RZ|o%��5o�{����j�M:�l�۾��/F藵�
��h�F.�/-8�2�(�oN{���~�ivu �K�f�"��	�pW|������4��{��@���/��E?�6BZ�}}�j�	�GŖ$ �(��F/I#шQ44�eF5Ѩ���R2��|�,���υOF�0G�Sc�TÅw���
�����JX�!7�%�h2��z�9OGda���1�{�|��a�v/y �K�f�}0W?+��.��Ӡ��FO�Bx���E��po�x�ƈg{2�V#%��Y�PMb�U�,4�7���mr<X,�˺���1$�QU%����;<���QxR���h�����})]WZ��u�0��m�"=I9����b~�p���>M&�7�x���;�W�7��Ig4�'!E����N�wsH8�$�)	I�eJk���OY��%Y�b�\%'����d5M
_w����Qv�9�ዿL>�ng��
���Šj������+��=6�>~�SGd�?����ﮊ��!ʊӺo�q�v����G��?���}��M`З�I�����!�Qv�.y�O�Jo$�p���[c��Ϩ��RD4'�.FRRZǏ�F:F8Q[<��)=��rlG������n��pM�ӂ��! !0	���]F[�lp�	I�u�'�C(�%C��D:%R��%��8��Қ�+�p])`Hw���Z����C��0�r�?X�/h�^��
�V���$o9�G�����@����(��q�[����pe��������l��u���L�7)���Tk�6�����d|=��_O��l�����������eۗu��Q�
���5y�Z{r�ez;/a��!8%�������6�ţ#<par�2A�a�f�`"hXiد��@�m�%�+g���SLnf�7���/��������H(:F���d]đ�lg����d5_|��jYRB$�?�&B����hz=_��XF�Xh��K�"�.�Kv�&pT�����|5���
���>�5|��I�:�8�K0���\����:�l����WW�
����E=ֲ���)%��ȶ���}����1�G��UaP�%x��{��:9�2��Iz����K8��^-*���`�Ji�۩����3|��[�#٧O��b�Q�%Z�JǨ0@�
I��:�%�p�������nv��y�����a���hr	�9�_�x~D��l�	��lt!8��X#9��k�R�A1QBbl�	C��y Ɩsu�����Ke)��: qB���<9�,6��2���r��1�K��QF�j�"KH�o
8᣺���y�w�)"|=!X�y��BQ��@����$!�R;|�t\�F\���;V����̍���:�����r����ڝ&֋�ܼL���^��2����X~�����/���:��Fp���2Y���j���g�ׯ���X��,��ڝ-v�Q���k4p���TIu_|�,�&��.�?�`8��h�}g6�í t� ���΍�h*c��`�0���&�]C`���.��@�[;࢏��Z�.�3+րcy���R��w�@��Bǈh�X����+���9g����2��Jca.�d$'�#)\�������e��#�b�w���<]x^�ꅚ�B-��@��u�yη���年��X{�j��m,�kzS������d	PӢSp�n��,�pa� )7���F�7פS�1qJci�>mlH~R��� w�~����,q:QJ��*\�7MÛӡ�J��y���Z�$�@l�6ƀ�y<�	ٮi���߇�r�r?���ƙ�Rq��4&��]Vܬo�\�������<n�-g�pp�N��Ʒ�r렧���b�� uP-)\��ΰ)[�����
�v�&�v#�8���W�Z)q���S'�{0�n���k@v��'/q'�z1gqF���3xeԷ�
������& k;��	���;;�H��bc�]��X-o���P��`�t��|�`cd�+��
,[�Pfb�.y�<'�F;�g�7��O�ocq���X���AcuVJ�Y��t�O���� v�h?�T�5�������nz�B�Y=�̦�Ż�2�c��m�#p�I^�q<_���]����ߗ��2�P��oT[:t��M�c��Ǹ1�Ў�i�iLz�P�ҡ�G�z�W���d9��;��o��v�p�17p�'�]q�Ī�ڰ-�����1���)����z|�w���%C��T�1����M�2|j�[|;������ر>G���U�6����l����;Rĺ;�t�$羥X��6��S{��6����.�;���Q�
�T�ͬ�~�m]�le�l���b�/��-�їr�X�.��G6�q$�W�"V`�I�Z�qr�P�w����tp������{p�Ӆ��//�Տk4�+]�!��
P���x��춂�    ����P��Q��O�(�����4��1x��b����|C�vzTG�?�[�I��S7��c��E�i�Ac,��,�E+S�����z�yt�u�<��,FiݨŹ�`UI�+ؐ<�:Z�:��eRso�iR������4|��11���|���C�5H:M8d�Õ�s��o�Ѭ����>��w��h�ޯp_�K㖮�ˠ��p�*�=m�k�"���/��f]Ueԍ�ր8V��V�uq~P����&�k@�N�e�r(�������!�bU�ݵ!3A*J��IS�OŪ�#�U!�tN1�ɰ���4�*V`���!,���ӶrZ����|����V��J���FS2�p}�违�ߑ5|G�8$qaD�su�0��s�Lﶲt�(���pjR��s%�d+Ԡ��P��2#��w}�B�鼔u�g��q��#ދ8#�z�ƈB�t}y�X��Fhd�Ieb����z����7/�G�	��p`)�I�a��U%�"������$��83��2%ɯE�$��F8�N����2U#b0o��a�y��[� ���(��n��Cf˪��a	������/�1�tH�����V���=�ypnz�L�lB!b޺Bwh���#��i�>wan���%���_f+���s�7�2�?xZ����+�bl�ohB�nD�>&Tʨ	Ɛ�+���;��1:y���a�\k�A�r�Ѹ<[>�v.��X�ޥ@���Ֆ�Y2&r��I-�(~"��%��E�E,�C�����d�5�����O�շ�S�6x&o�V��&�D�z�7!k_6b��\XL�S0�}�%�Pt|
F���2wx�\�˹t�OK�������p`�K0�?�<�U�X�s|�/5��֋�?л�|M���kb�����XI|��4Oq
����E_
�a��F�� Q@��\\�A2M,��q���R���Y�[�y |�X�%������U��[��&�X ���|0� ���� ��P\6h�b����+�|xS�����e}=-�|�H��e]<��[@Rk��̠b��G��R��D��~1����* xӇ��A¤D�P����A��M��^���\Y��SQ���O�LU�7h�bM�G�f�k*8	CP�Wu1!ǽ�z�X������܆Q?Tl笠�:���W��q}��X���`�+�TXo�b¼����1T_o���<",� ��R?=����\�<����#��s�ju��&���ދ�F��s� Ks)
{�����h�y�ק��eL8P���Pǎ���e�t�#'�D��������Z�wŲ��V��>�T� =��r�z�Vb��_�
�d(��4���br��:_�H�)�H,�`N���Zzs���M�IV��$���*�0�e�/���N-O�]�	t�;$�v�� N�'��l0*1��A򛫯M���uU��V[��H��*�̨���D�>-�́�׌����O��-I�j%e J��n~�����7)�z��h����:�h�+������-j�}��d4V`LJ�2�f���� -���z�\�o��*Fc= �+/`ڄM��n5#�Z��Z���X����qL�
,���}g
�V��^�~P_Q�h,��2R�Ko��qZA�R1d�/fFc�U�%@�P���>��͂cqLW����p
�6�h� �ę���d���jF˪�a�<�3p�7WrQ�d<�~X�VE�ؘC7T�
�JyQ	tfxF��n�)���4��qp��F�`o��Z�i,7��e��<�?H�z,�(��@����E�g0㑮6��|�'������/�]V,��a�Ҟ�U v���gPy�mS���-�]PE���M���k�.��i2�/�<��!e�X��]�[��:����X]�~ ������nv�º���k�tV,l�h0E��`�ahd]�ۈeЄE�X\Iõ.���l��C¢P�[��ۈ��xq4Gj8����&�[��]Mo�&u�W�`Ų8�ƸM�Z�ߎf�u��ܢh��]4`+�yl�E:�r��(~���}��K�g˻�e}<��8T��B�[�������c
��2�Ac`X�M��%�&��O��SB�MY�x����t �.�Y-=���Ӏ@���`&~.*-۱`�W�X10�J9���hJ	���TE��m +LŁU�eH^aN�j����A�\k��8S�Ǹ�,':9�ˇ���>l"���i�0hS�yH�caN�3���j�짼N��w�ɏ҅m����k���`֥:�L�g_�d�"�M��<|��dICt&�EE5����jX�&󳓭��G����,&b݀czHj�&�krJ�"�T�~�h�<+l�Z��dI+��0�sN���}�}�����:���Æ&$Z.#��R��n����R�U������~�X3 pɰ�E��r��	�N�b�!�&bE�1=����DU��Ep�_Gѽ��E�L���1�E��̥����A����4��%���}"�֞ڊ��fv?��������#�1wA|�xNm%b���_y���`1V������c�Y�`�Ч�d黚�v�� c &�؋��S�h�6�4��u�p��'�2�֦r! �MI9|Lڽ��K��M��eF��Jm�S�`Ј ��nK(�e�~��� ��,�m�a2�~LxcW���EKk"ý���c��5^:d�5�ڣ��W��E�>(%c�Ǩ��`(���Q�hЈ(�}�i�H�1!�Y�]��/#�|^n*�vrmmHq��-���m�s˹�.H,����Ff׹2N |�9�?#˶t��FC0R��s�oٰ?�.��C�UWg��A�����#i��2K�tc��,D�ʥ�E
w�bY��;E�v�[w��tֽI��v��c?*a��q���p�+�,pd��X��^�bɕ
cp���c0�8	g�拿���k�/��eW갼�k�Fe��y\NQ����mH�k�p<l��	py/��g��}������
��̧��O�*y[<g�@Aq����p�v���q�m��[���_n�+V�:��l-i�ż�	�s��u��i;;Kƽ����?�0<7�[�vT�$I���7 3,P<P�e��"��.qƱ���̶@f����)8/@ՙO��ʊe���K�RJ�=)NZ'��e/K��Y��>g�X�	,R0������\xˉ�V/�ْϜf_a������'p�~k��N�N�&'����9d�f�*;?�
ﯢ��_@�ޟ��:��l�D��A�"�o�w�v��{��T���D�ai�?�6�3	�Bs��R������8�]�K����-��>?�>��$�ꆷc�ۆ�\V��L�;�r1�r-N�u҇�b?�84"f�0���m禴P ���3(?.�t�Ka��3��meggW�~�F�)���n�>��_��y�R�a�^h�c��������F�{�غ��	�'��>HA��-Z�p�i]��d��]?�N{����b�� ������@M#М�d�i҅���/����T	wƕ�~2�qAZ���0K�e HI;;퍟�9h�]5���H:�Jb�U�l��W/�y�E[{��x��^�t䣚�Ӎ��8F.\�%V�R?�G��)0Y�>��uyy�����4�qSHY�!�I6�wJ�`v֫�qe�`V���fe5�`V���fe^f�/6��*��%я�����1��i�fK"�0W
d��>Lg�Uҵ���1Rt�R�U�r��,
Tj�6��ac���N��f��\UK���"v�g݂,˨�#+v��d���SaW|1�'��ُ�Y��K�c�W3?:A�֠�;{�$9\�O��m��2���"<���-��[0����a��qC�mc����� �F��?E��ݘA�	9s��ĆB*!0���`pu��e���({�����O���З��6V#	#���|-[��jJv;�_RYq�1C����0c�R�t�T+��N_2�:��e���/L �=J\��|���A�]f��!����a1}\?48�a�H� [  <;՜�"�[/0�@�>� \yg�r{wu��� Q
���a�y���¶FW�Q��C�%��S��^�d��p��RKF��h@��2?iF�V��7GzI���@�IU����c8J1�;�%m������إ�����f��! ����1����#����%ke���Yr�˰:�]�?ˆ�}~��+�LD,ld�)1��0ɱb���z�d�ݛ�| �	d#	�r�y�|�����|��ER��KD%����Q�T���%N������'��K3	�q��m���?�X�� x丗���*�j�Փ�W�0�S����L.�O���W�<���$�TRn���Ť	���M�:u�����,���`�\X�D���\�ֻnͮa�*��^\�|��Jp��#��Qm�JE[��3M��4�<]6|�=��r���%82.�5�!7ĩ�e
k���gUk��`�� �>�ە�_���O�1�)'�����%.S��K`/LK��z"^�8�	�ҕ(h�pKIjD>Z�����
�
�އl����sp�^�L4"����*��nR�B+*K~閕�kY���Y%��0JX�����������dE^"����B�n �y!�3����M�f��s@�1�,F0�"�I���=-��'-�
�%~���囍�J�C!��.D��܎\��us�����(��X�{�����y�I����0q
���o�y���q��N����~�RY��C��G��D��O~~�7=�����M}(��g��-�ѕ���1.�?���������� 2.��ȸj~ ��=��k� Oq����fx��mȺv�p�����i�6��F8\�%�_���/��ef���>/J��禂p�ҫ�����S�*ׇm�rn��i
HF�a�}�猫�%���n���F3Z9��mkl���D�o�ݰTe�7�̛�m�l,@jQ��0t�ŸfO�W�[C�v�
��,���҂�#�Փ� �4��Hd�n�'!˹ZG\-r�М���S�>0u���)�l���X���~ۏa�&O#����3����?ƍ7m8���^�\������j��ԡظ%L�1N
W����Ú���^&���?9��E�/j�
Z��-�9Q6����9�;	�@�%+�Ǹ}�*���G-A~A���^����)��J��_ǩs9�ţ\(_ԢU�$b]���ٕ2"���^s#,�+����ݡ����8\|�%�U1ۮ�_2���A��|U�|��zlq_'	�/���7��������t������r?�u|�n�<c���O�FbL���p�
˲�n��t��~r�,]����ǽ��)V�u���8?�_����d|����;>�=>���;>־�Aw�w|,;>>�^�����)mL�u�2���J���O��I�˂��L�I=��ǟwJ��퇵�~���6��9j4Ǜ[�
��t3�y�%�~�hu ���d���#�X��6�P��N~�<�G�z�{ko��k6llֶo��m����
��PǥQ��l�9�Cjj���P��\1��l}'��q=.�?Lj�5~Cng;�r*��{ݙ��������#�+��G)�z�# �	��v���$%�sm]�pmO?�%�J:�4a^/�̉#�(��_z�����.ȿL��zj�TR��!�+�J�k��Z���� ���b��y��[�˴���T����T|*�K����}�w{��Qꋈ8�M��X�'�z�����;������M+���<-&U���/B9��ˊ��M�n.8���R�0y*�_�2�ױytD.�r$\{F��9F�)p{��]%i��R7 k<L��E�Fٻ���@�$��J���
 �	      �   �   x�e��
�0���Ô�mߥ A�6�I�&߾�Rr����e2�b�~�⊊LNo
�j�C��}h��U"Z�K�,�A�Б�o��7Ҕǭ@!����CT�$����Rk0�ڀ�R[p]j�{�����fH�� ¼��S'G�~� � �#lY      �   �  x����j�0������Ҡ��,B$j*�ie�4o������%]��3����_
.];�v��0�����	��
'���
�Ys�$�"�;�o�"����A����y�9������[,4�MpM��L��{��3��*�7�1����ּ��f.o��DvY�!a�%�ȅ�j�&�1�m�.�K��'�\�Cc��ӻ��aH%�x��S����RR�\�ZQtAMC�������RXII�\N׏��B�	de�Q�aL����T�/� g
���3��ʛu7I�g�m>�Rʻ��Վ]���`7�����Ν��v�y"����`+I��G(B����u���/F�0S%r��ǽ��o�ђҌX��l�Շv%5��V��-I�n���}��g�Q\�yOBRF%3�bm=5�O*��:�a��/Sm�.N�T����=ܸ�?��M%�lE���#�lh�%����aO �nq���m��^MӅ�x� y���)�&���_v	H$@���YY�[�[<�����'P�
��J��FQ�x���R�G��U(+FΜJ�4+K�üe��V�3F���;V&w���Y��b��~m�ȥ��z�U�"��s�]]7��j�]�fE�lZ%�<����\�@����;kPz9�K?@�C����N�?�S?��i
�3W7\�#�:g�}>��׀�      �      x�՚Ǯ븖��]Oq��Hj�%�圳��e�[�o�70��Ɔ�y����Vp�P.�	���&L:��X�z�?Cs�\=9����p���lǉUj�_��d�;����NK����bm�2[��>.k�ʌY9�B��K#-�AS�Mmf��e�'�%��eU�����������{�L��x�y��Vr�nB�ūN�7�Ӆl?[c>��H����J����5FXܖ�m�� O�n����@9/������� �%@I ����R����C�Ku�lt�E,@f*dMLI�+��������al��E�)ߘ9���d���'����9܀5�����p)u�˻�"�`-^�b\�;j<�x#�s��ڮɀ>C3`{��Z�̛^�	�֧[Q)�iM���MN�x]N&��tg���:�xSz�A���=��0�Sia������#��S�2��X.����O�6�������T��d$H�1!
oFQ��&љ�H�8a]� E$o�,P-�2����H������s���Bͧx�ǧ��2�W�#n([U�#���!��ͨ���n5DMÀ�܋T5�pLR��w2z�t:��������r9`O΍���*0�n<��q��bD$�$q�ތbRgH7�"�R��-ua�z92�^��Q��D�֏3⃮�tw�:�+��|no����[��?	q	
C��!B5��6�F����@}�����q��Sƒ}�ɻ`���&���Ke��t�]��N�=7e�/�f����آ��$�! ���Hw�`nk��@�]�3��5Dj�B���ԝ+=���l��P��nx�u�I�nt���2�K~��*���_��G��75F>�pd1;�F8I �"�m�:5Kis��JFs4Rޕ���'�1s�<�,ohm�����j��[��z/?��_�H@�2$B�ߌj�f�YY#�i�,�]F�,�JԿP��V���3��e���a��&g��s�*��cQҌ�<�!D�3E��}�[�݂&8�D���dI�Z&��r3O(�WN�b2�Rk��1O���D?��岺)Z8�^��>)A�ܭ�,B�e#�`	 	�!�@��)�ĲC��uݔ�ꂼ�|�[Z�Z�ߩ؋��"�ْnnt��?��n4a�����祷Jk�w���?�]MH������8�]M�]���Z��_�h�6�{W�p?CV5n�ݚu3(V׃-f��Xs�z��Zo�1��FxH8���C�4	X�m���uZ�����u��S�K=O�Hr�2��۴
�D�w��]ܶ���.�c�i;��� y;?�"���~�'�hY�>�����-�	`�y��h5�y5������q3��2?t��D_U��_��y�T����fԗY�W8D1��! r�%����M�j���5t�G_�j�X�I��&g�*��8�p�\)���x�jZj���`����6��?� �%���%Ć |ڬ嫸�B��:��
���q�V�5ڴ�Φ���A����u����Z����a���+XM'�QobJ�^V�2b�C��6����8�T�y�N���f��Uzye�_��bK,�������6�)�����$ST�� iw���Z�����ŨWl(�>c����m�TS���B(��K����i<P߉h].SI��O��t����CǛ�<�g@ۯt���EY��S����K4 �/��c$�!��>j.%IK;ӓLl5 `ЄjCK�i�}gUۨG*���&+-��	ݵ�Tݵ�ؽVG��Ev�6�(1IG?��/ �aaH�����L�󁕕V5���&z�I*ơ�OZK�P��ka+���nmG�T�G�0�0�>2�8þ�9�S�a1���?�ț������D�{��·<��6�R/΅҄���X4K��I�S$�$�N������z�żt��:��2<ϯ��R>�2�M�|d�0��H/F}4�Td§��}i-5;63lh*䆘ۦיcII��dT�*�ln'�u���-:h�ų�y$�Me���<-�z�ͯ�ٿ��a2��1��؆E�X����XՁ��R�" 7���BA-ȸ���#L6���EX����-z�7T����+=$b��I_g�!8?��Ӯ�@W0λ�͂�]��U�E"�|)��M�=�y� +�|�'J�?	`Y5�d�l�S�2>�1?��Y��%��9���A�{q��6�hB��~'#F�v���~�PX�G =��O��{�����D0��䗩�#һ����:�C⸵�@ܩƥ��n.�N�
�k�y֎������Z����"��⩧���:�cN����P��>__�a�O�D� 		��������*o�m㴸�ؕOS=-=�JF�b�I��|>����要�5��q���S8M��z
�-�俽_��lAB�}e���k.���y�5��:p��0#��c��+�(�|.U�M�~ۇ�K�
ub�ӛ�C�vchEw|1������?��/I�$�L�=2��)rTPM��i�jY��H׊^߾s�Zӧ����ߴp���Ү�خ�ST��v��w7^�E���5�f�E	��!��Y+5�w���Όr����>!S�����s�3Z����f�u����l����<�ge��F�y�/�ݲ?������`�?9;�#��4a��y�AȈ!����s������l/�E��t�G:���<_��| p_�h1�c�_�����!瀓#-�Q��5E�m<ϩ�J�m�ȝ�������h� ��da`�;c��ꡚ,�6\���\�����p���&D?m����!a�2�&$�B�cMKܦ-m��$7X/���):��[)A��+����bɶY�כ�Z-�1����5^[�����5H?�F��!!�tTe�l޶>,i,&%��؏�"#l��|t��f�t�² ѸM���:���x�ؑ>��Jtw��;��/�@���-M���g�t�Լ�f9�J�X<2M]Cuڄ
}g�#�&U��@:[7ۃ837���q��+2���8[�֠=�̫��0B�e�{S��t�$H`����`F��Tf��U���[ɮd=��vd��H97��{�����i�`�3Z��Q��˟���φ�2?����}��!?wʐǚ٪H�]C�JF���%��h�u��|9���us��FGtk��|?o�e�È�z�a�K#�� i��F�vk��WX�ݪ��l�;Y�s �|,㫜�&'���ӳ�Yyn�6v��%\��f�ytt�~A�~�GȻ��/h?2�5�y�Da׸�f�#&9�M#�����*��u�lG�����v��ƛ�m)tՅw+5�gp~���H��� r���oSS�8sD/<ˌl�"!�M�����v�Y<�t|*�E.��^�i�eڊj���	_J��8h��A���1��7#�T���ըJ+lQ�]F��k�	R�;o�����(�'���V��_e�К��諻j��R�����%��b���]CDB��7����1<�(뀂VX�;�!����}%��
sI��ݔ��t��k�s|�oz�M��db5�ͭ�(��g��/!�w�pȸ(���.�@��(�</�����9KPUn���b_�Rv���g�Ll��	9�������m�d��̹�֗k����{-ҧG&6�}W�}�&`+��nl�p��eMnS/!J�����=�}�:ɏ����(��
�i��.K��Z�ζU�8��Y���������߈R�{v�Y�U%�c���۬O�ML�w�a�*�K��X�1�ף�})��2���y��O�:�^����p�� B���J�!���ԷØ�~�U^��sUey��l��[�L�5���s%�Y��^ܶGJ�%߈l泵�s��KC����}�a�H�Q����(w�M��X�j��2s*:�Z��+�r$=�ITk~�g��">]7n����f��ʹ�a�����j��}���T?c�����Aj�����v�4A�#��JF���I��N���2W��v�4O���iJ◺N�����h�V���g�-���#}����}!CQk�C4`a��~�P֨Y/R(���Y�N�ȋ' 4   Q~\�g9_��;ū���ۢ;q���i^k�?}CP��%������%��      �      x������ � �      �      x������ � �      �      x��]Ks�>��
^�ڭd5z�:� ��G[�����\h����H��<�<(	 ����T%����C�F������Ѧ�>������iw �=���P��W^��g��$k�^�^��_����q67��l�f�������L�F�݅���c��D�r�ċ�����@��0�� ܄�����u�
r���$M��1rW{7�� �ڻ�F1,�Vo��ާߵ�\�m=�]�%X<��8����k����*���\{�P���9.��~�*������h���߻�>��-}��s]n�+Rw� ��kG���h�d���2�j�L������IK�l������Gh�`���o���{��nn]R驪��1�+
���i��`������!-��AGe���=�[�+?�f[��(���X̜*P�����Ժ�Z��x}}���FnF�~�S���*��2�VY�%A	�rc�Z��V��eΑ�T���R��#�j��v��*k��De��x��Ɏ��9�p�~����a��"wG��� �t�9[���9��J�Tϴ�׮G�TCWIEeh�ة�c��!���u�IMԥ_�hw�t�oVZ*ɚ��sE<�h~D�6ޛ$ڃ�mV�m�Y�q�i��]�s?�����X����9��ˋ�㈅r6��xH�?��������:Y�����=ON)��Ng(*�=	�՜�GڢDͩ

nǑ�QBw9��L��J �7�齤�a`�ķ2AFSB����u�M��d�/�R�̩9T�T�A����D�;�՜�)-.�7j�G-{�jv��XFs��l�ؓ���#���F��@�Uà��vU����x��Sv��D���B+?����Z{Gs���q��@����@+�w�>�:P��1qF�8���^�`���t�4N��w�[��U
(�QW�p��%�����n������$�i�"ƚ̫��B��o(L+��m�%5�e)��4k~�qIO��@~n�O�'Cq�����.n;s7�G��M���m^��㲺j)���~{6c~��~��K���e�)jDTգI���K�/ֵ ��2��<rR��ڃ�^'�q&9&A���J�@a�;U�3r�+
_#wK����7��V�i�>z�"��&�l9�RE^q��O5ɚ_����
�?������p�Q�_;������k�=��m#j���4ݍ1#2���u+K��y>X�����.p���߮��N��i�Nc��\ ���BȞ�}�tcf�J��~R?f����dM�o|�ס���p+��4$����B0�5Y{Y�z2����3j�'_�����օ�)��`���	â��!9Nݦ}㍩�-�/��c�t� ��g�9v�A=�e��ښ�!�����W�Z���;£x�;,��a�W��6BG[*����k�7��@���d����.f�f8�jb`r �+�޵8�<w�7�����EB��t��.�AB��I. �s��e�>����S�c$x��y���hAq�:�9�.�A�����%��)M[&�,�ha����J~n��e@K��ct����(�X2�&��{�6�]
��P�섥e��$/�A6N���Q<�49菳Y�
�k�� ��3!���RS8h۞�~�S}�@�N���$���8��U%DU͇ ��>N�j��7貹i���	�&��%�6�p�Z��8�H�4�MXh�@�����y�P?�����2��i�v���=E�ۖЊ����i�}2Γ&��
��S9-jwtZɠu0/��A`b���A>�?7I��a@2\��{���Ӯ.����G��SB���u��|��+q��9�0��%L�i_��(�@*b�?�|ߝ����|6�?'�p�jB���puP��5���@J�i�ʏ�L�?�1���i[7��.�����b�-��aA�ڭ<� ��߉�����:H��o�'2�������a֌���\� ��\���c�ò������l/&ܘ��t�qSn��}"x�8{��}H9���#C��sd�Ipp���8�*�^�sW�~�=��_��9Q) �!�P�4E��1q��[��0q��+��&<Ap,�
(���f'�����V���%�������Me~(�I�}�*bV�e$�h�7�\x��$2�j����2��J�V�l+5(����Z,&����h�f9����{N����.��ù�����p�b��eM!l��'��.B )��Gm�����ɆS��b�d���,���@f9Ԅ�7����0`�q����4��\�bܫ(L�Q���^�J=�T�o�k�01z�� GdP8��5����a��۰h�-0}�����Q���'m`q���*h��FYV��r9�i�vl���m'�uԳ.�2K@`X�h�c�i-����Sw���۠
kR�26�}n�g�e�51�q@P���}G����V9D���
�Y��z�&$fr���f(�V�6?	����}{:sΓ&Sr�Ei����V��s�B�s(zJ�e$����2L��/G����N⧉�:٩T���m���c+�>������Jt�D��N5)y
!J.�쐮&W>���?���w��G��Ԁ<��
 �_�(|�W&;c��>Ƒ�<\X3����2��rbg`m�t����3�{]�c�;������D6F�q�:�#�'�h��<��Gr��eB�<,P�OQ����+LEDu�~e����\�u_�r
Ę(�HY��7P�zOd�/�/�1�q%f�y%���(�s3�,A�(-��6	���N�.��ΘIq�&��#zV�}����l�(R6�r^Pf��F^c9�RDYw�i���ظ�D�rM+���%��w��df�̦v	([��zk���&�Kȕhr����
(�q4���\��
���Γ!M�.G�5�dOR�����dgKR��ݼ���܎�w���"D�9�����`O�rJ��5�̐��M@�Z��	�r�7�5�t�M�#gb�•G�>��T��c9�8���s������ �r��&���]������*0P����K6f�qfVR�nN��`��%��F����PLur�p#�K��ǎvhy�8��>1�5/�_Y\�l����{��r����4DN�L�`�!��ԏ��v�S�_���z�'V2�8����KS�Ng$ϸ%2:Q�:ct~��Ҍ���G�ؙ��+��]
j���3옪�Y1'!�����wtΖ*մ
���ʣ��Q���f$P\�H�A��A�����1+a�"GTH������f9��T��)�)�����P���^�C:��̦v)(�q�0�+�x~�Ÿt)�_��@��#�'\�^^br��4`��˓]
i5>�2YaU�����쉐�.�C7�0����{����-D�2�q����z��t.�8>��"P@�h��)�\�0g��@�M#�2tM�Ϸ�[."�	�o,�"(�qd;��i�lB�"
�8�]!�N��
��ۂŨѠ}z�P�Ƒ�#��M���(�R�9A>00|b��}�Dl�C6�e0������
��OfV�&��GJ����.���\oM+A� O9�.�����7�1�-�RY>/
��MS���4�A/g����0,T
Rd��6ʛ]EF��'K�s|��-��b��.A�4�O���;�=��䆔�j������*H ��c �o�������c���>� �{���቏oMSR��7.z!dz��g?��I���(PA�_���᮪��FZT�]�������w�d��Z9�nH�M�}FU�@p�P���Z=����O�qB���N% ^��u���{ى�7��Dsp�o3�UD�v�Yj��!}�8}��� DN���@.4 ~��0{5-r��<3�ȣ��5�*,0d����]x=J�O3q����h+���@no+�(5�V�d*+l����S�������
!@ 7��@~G*����d/��Α�T&���m7�d�]�Nw��i��+�5L�Aj�er��.�f?B\��Ԍ�Eo���;�,�?I4�� �  �*x�W?�\�׏��%�V3���w����<�ױ�A�oO+s6i�-�l�ee�.	r{.�>�����p�aۑ��.�l�@� �}rB���p�*+�b�0�x�ɐ��,�r��7g ް���&#_��d&���n!�s�4]l���7{0��p���~�RI�+h�A��S�G� ��ޖLO�~?p�%�=r\�bD����<tx��xIg644�GSJ%!�kJt86*΂�$���9����Y�u�|���"*WC��6�h/Lr$�X�����v-sU
��0�u0�?"�"�a�"()N�q�����������-̵ ��)�R1�vY
��r�� R-����WV��|�����	,Ө�����4�f+;�"
W�E�-���q�篕t���'��ҳb���Ja@@�<���U�9�\��+f�M�����>�w���!��0�x4�!@J;]����5^wP�=L߉�u2���3{��x��/���l�S^��c������xW>ף�P) �eT/�"�Rm��dC%ｚ�VZ��S*��醜A[�$w�QG���uO. �<d��e�Gp�_���3Oqm�3�>��㸍�d�5�F1� ���HI�kфr������C;J6��g\�r<2�G\ga.�t��\�J �7�n���?�_~�������      �   O  x��Z[s��~��<�>��Ǒ4Ft��p�:US��1��f1���ן�� 6�S�!,�k5}���nF�f�u�:�����8i�&�9'���.�x�!�1(*R��Xt+!ݪ�T� 1Ѱ*�4��4L�,�p������������bz��������I{Z�I��n@o�_N����#FZ��W��X³L�Y�O� �N*~J�� �����y��m@3% �y7ͅ�Ҽ�2����br)�s�r�V��Qۮk �aQ'����@<�yY�h���_QE���Ow��>_J}��j!<��̶���y�+��Me�|�K����������PT~� L5L�\��ᇽ���dy��s��4�iS�r���v��aT�������t��^h�Z+S�e�o�$&ݢ��^��Cխ��x:8����g�%�,�h�F2�GY���Z�:�٤J����y,�n1RV��+�<����g
��>F��ylis¼j[�	�[�FFbY�~2�*��kr��g����@���t�"�?�6e�>f;�g��d�0Q`L����=�]Ȋ7=�3zE�� ����>� �4����"���Fx5I�QF^��m�@�"ya&����Y����"!�Ӯ��y���t�wv�QˑOɇs�+�����v=Y��ۅ��,G�����A��@�π��c�A��Sš���������1e�&�̢��dqy9;�������5BL����EJ}$0$��_�u���=���!��^��5��֟�8v!O���/�	@��O�U�@�������9%����R�(�T&��y(���"֎t�c˧���2+���P^҃"�G�eP�PiѲ�1!�!Ժ�~�,�.��QVu��Z���k���R����!w<���DP�!�	�����x	Y��$���%���*D��K���d��_L�� g<��C^��R�3��T���i���/��ɏ�b�w+6����qׅ':��F��� dꄧ}�<�}�8đ����ۗ�wġx��m�1O�	��k��^;��
!K��e�]d��$3UM�x�d���Ds�p�JïpŘ�;c~1�1CK=�B]�(�r\q����ֈnҀE(o'����oٖ>T�Ce��hOR��rl��� ���J�?r#5ԯ�Ȋg��3��&_�@i��0S���T)T�*�+�JHˌ5�)�#k�o������� `�>X�'K�N�@� ��FW�f��+9nYvu��Z����r�%�,�&�{�1�c��؁�F���H`���έ�:f��X�Ci�q���V,����A��K�(��X�k�15&�JO�Is2.��e����c�� t/b���t���oiap���z�/7 ���x��u������ �M)��U
��z�,n��p�$����J����_W,�t��+��=���,�1����U7��y�뇥��)3�Q.hn�����={Q��#r�#O<r4lYq��̔32εݙ�{�Z�ֲi(y����󿴖Rq�@����g@���������ƪ��, �+��V��1(QmXfu�6��¢����������aD2=�����'߉��:��N�����H���]��"�\ψ�*�A����H��C�9��M��Ø�t�zN�a���T4j���"j
.�my��Uya�!���@W�堀���Zj���`����{V;&��-�_����G5���6�^o�X�����y{b�:SO[P�"��F�:�mwՐ��v �� A�k�I�<���	?�w�yLr����aPj��c:k[�n>p���6y�Ae�/?5����f��`;�b�0�t��-뫟���M�;��5�RoF�n�XS�Rf�8�{n[o%�3? ��n��P������"���z�f��K1:�d�i��它�qU�?T�����3�2)�����|ר���1G�����$�Db���;Ġ-�#�n$�G��h*L���e)�3���rk��u�~�	���]j���G�[G�j�+� ~;�Q�@��A%��Z���a�a��7%�屌� k���D����F�H����^^���zr5��ڢ���Ef3���B�\�R-A�<�H�����t��I(.m����7���� }t��~٬��ש$��\k�`���[[�䮹X>e�����Q�e��#����o���@�P�M�Jf�t;6}�J����h��\m�*��o�v��܀
�u�lG@v��FE쀌�6U��N�<U�c���W��o��8�P����c=;�8�f`�p�aaC⧍������r+F�-��mj���ۛ"����"Y��%9�Q=�Y���·m�D��������gӛ��˙�n��:�~^��V~ �0��51�� #��Sɐ+x�\�P�c�j⼎�+'u0;�)��k���9����%]��y�42wcG�*�X7 *��n?p5��3A�=i�My�c����#���a���q���%�G�����X�/�;�ݱ-�L�Mfy��\���r�g$�1�N|�a��ߦ?q�y3��L�c����eCp� �U����*����ӥsl���N_Sё�gL��V�UP,Q��ߌ�AV�D]4U��@���r����ہ�+�ms%�=P)��ñֶ� -���O*;��zØ�b���s�0������Lίn��O�{����kAU!z�o/�b}�X��߹����'K�g��,��~o�lک.<�@�V�p��	�,�B�_�Rc�J��l�c�M�z�����)O\JMl�r�WeF!���yʓ���`��q'C�:��]����k�0��8rV�?�I����o`:�[G55;�Z��Lg�42\��aHb|����*K���ǹT ����qv�L��ڕsf���N�T�F��Y	���fF�wh�ﮮg˫�6�f�K3uk�<RC����f� �2�� ]����!�:C����ޗ��L{��)O������m�'%FZ��c�d���8{'��`�`2�?�1��{����<�?`Ss@���Mu����λt��R�P�=P������T'���7���u��B�o��xV�KZ){��e-��}���~�yj���!1�}��/��o=P�"yq?����o��X)��ŷq,�PY�*3u�NYS��R}�j�����k�9�f���X6�8cA�Eb�*�IjL��5����q�ǚ٦���k�������:�������!X���l�@��\[7<����5zئ ����JP���A#�m����m�@��W���.��{}w�^�b�\>`�h�;0��e|{.Wp�%�o��g֮nT�f�����B!-���ݣ�t�������      �   �
  x��Z͎��<���q$Q"��d2�Y���a� �{�ś������2�ɱ��%��}"7N�Vr���n����ۭ�����O�����[�����媷�A-�$���^�����}����?|���{������٭��4�;q��5�]���zi7�zk�� c^�W��K9��Q6��re:�AWnу]ڕ��Q_Ync����7[ݥo/.�l�Yc�G�K�>�4���h�r�OlD��a|-yO��h#���d��A���f�#t�gI<�^d�"��WG���E��czC�Zz�L+�B�"��Ȭ�<��V��#��������YC<B��A���ܾ<=|�a]p]
�d;.�U<�\|\��yv˔�Akԋ��%{D����5��t�'����3�\8[+ńA/Q/!��.���V6�K��\*��N�"�Փ�`��X��ߗ�v�b����k�n=�xD�����<��n<8�b<xݼE(�n,��\��`m�u�TKf$���%�r�&�t��.�}g��C͒dא�"�>���-��hA�|<8�$#��#�x���i2�]r~��]<Dv2���!�K��%������M&Qs����i=�`�b�I��<De�%y�2�&�`�Ɉ$Xe2:���j�Ȩ�:���3�a6�>% \����n!J�doa9T���z���Q¥�+l���Q��<��&\�{m�g}��O�m�-��I�ߓh?�� ���n�@7�Z|lH�ǥ;���q�Yﮢǥ?�{�A�U��g&�"��g1�[u���$hI,f�����LZ#Q�Q^5�2�kt4�86i�86(i�5pl����nȈF��$`�Ȩ���Ԯ������T��ٻ.���6��%�QNl�{k��4�4G�-��<<FY���[;��6��iO��h��)
֙�pPOX�lUmL��1z�����zJ����Â�R=DYi�pVI���fث�`��-m:�J2��| #�Hq�'|�͊y�A%��('1�#-y���l�� �7%��T�]Bج�|*�W�(P�
Q^RԸB���������3�K5����=��Rlt ;a�ت�@�J���`��]&J ��u��n��J���\��P��7�Κ�m�w�5�-��o����vf�ү�AE�20t�=G1c�܋��`�9�ȯ������(V�ss�*��u�t�	�3�i�%��4B6d嘊5[���,�k �����b�3� 2G~�**I#�IE�iؙ^�=�a��<df��#�E�f�yF	l��=R>�l_ӆ
�=��|�cT���>�����nς�.�z_왃U[�-s�4)����b���tȹx�$ek6���v��C&��f��	�bOx���R����{�L��
�`/eU G��(�bsԮ(���LB^b��z��5�x��e=Y��(/�缂��`���v��e�Zˀn�̊�V1]C�`%e���n�5����l�0�2j0��WoD53�XBѰ�a���lװ�aӞDe�v�l��x�J���9]T	1�lF�R�8��zV�L�F`�R�SkR�P&D|�d�&�7\�d�Uo�t�K=�t�Jvҽ7ڳ�҃iC�Rz0�c�WJ�u\��`Z�M�u�J�����V)����vܽu�1�a޽.�1�a�ݳ�(+;��Sq���S�㌑?�g���a�T�ܻ��Wd��=d���y�+r�2<dR�f����s�������Tޱ����<x���CH!v�A}E0���������ξW�d(�(�Y���Lݴ厡����Z'�h�։;�"�ubT;�����u�aM��5ԇ5I�^�P�$�z]C}X�D�u��J�(##
e`D5`�k�0�޵4���[�������Ć������V�ށ�J��%�C��gi�=�f�O���}�͐e�~ڱ#�@��r��6�tՆ� �Q��dF��u(:@���Rt�U�� ��t"��N��{�I�Ш�yO:�}
����ءM�bs��R*&��4����+p%!#;��2��@UEd'��!ʈ����O�l��<D1�E�K��#�ǥ5,P#�rf�3{��8�JI��i��S���A�h�!��S�F��h!P4Ϳ|t�-�-Xd�D�`��(�n��=�D���Z�[��措�lþ���e��x5<���Gk�&�Z����ۆ]{��Xe[o�;�h�%PtS����=���l�+���+�	�#>Y�3���:�9��,����Ǐϯ?鿴���+�=��<��ᢷ�=�]
���������Ǉ�^��^�.zK��W���㧗O???�߼���������������X�����ח�/�_��'��(u�q ���Q�YdAx�`�*���ɓ`�*�|^Z<D�W�W�mMJ+��:`���fI�ӤH䵘'�GꀉRF��)�3��+S�}��y�c���;�tL���匎�Ҍ��r�\����C�5�S��!�3�d�b�c�k�55u�.���:����|�O}�!���زgm�rg?D[��1[�/Ѧ�2E����ԫ��/HfM���`V���������3��\pV)"�,��*�C�U�H[eZ��_���n���������}����Ã������Dox��k��FA�7��3������-�_�ڒm%�>��g,Q�d<cо�1�G������<Fi���=ʫD�#th�+<�la�ƺ��qh�k	�\��=��_���9������u]l�     