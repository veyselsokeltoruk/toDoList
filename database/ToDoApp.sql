PGDMP     (                
    |            ToDoApp    15.6    15.6 ;    M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            P           1262    107334    ToDoApp    DATABASE     ~   CREATE DATABASE "ToDoApp" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE "ToDoApp";
                postgres    false            �            1259    107442    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    postgres    false            �            1259    107449    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    postgres    false            �            1259    107474    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    107473    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    226            Q           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    225            �            1259    107466    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    postgres    false            �            1259    107457    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    postgres    false            �            1259    107456    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          postgres    false    223            R           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          postgres    false    222            �            1259    107336 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    107335    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    215            S           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    214            �            1259    107426    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false            �            1259    107433    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    107488 
   task_lists    TABLE     %  CREATE TABLE public.task_lists (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    context character varying(255) NOT NULL,
    date date NOT NULL,
    due_date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.task_lists;
       public         heap    postgres    false            �            1259    107487    task_lists_id_seq    SEQUENCE     z   CREATE SEQUENCE public.task_lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.task_lists_id_seq;
       public          postgres    false    228            T           0    0    task_lists_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.task_lists_id_seq OWNED BY public.task_lists.id;
          public          postgres    false    227            �            1259    107416    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    107415    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            U           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216            �           2604    107477    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    107460    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    107339    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    107491    task_lists id    DEFAULT     n   ALTER TABLE ONLY public.task_lists ALTER COLUMN id SET DEFAULT nextval('public.task_lists_id_seq'::regclass);
 <   ALTER TABLE public.task_lists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    107419    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            B          0    107442    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          postgres    false    220   �B       C          0    107449    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          postgres    false    221   �B       H          0    107474    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    226   C       F          0    107466    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          postgres    false    224   9C       E          0    107457    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          postgres    false    223   VC       =          0    107336 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    215   sC       @          0    107426    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    218   �C       A          0    107433    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    219   D       J          0    107488 
   task_lists 
   TABLE DATA           `   COPY public.task_lists (id, title, context, date, due_date, created_at, updated_at) FROM stdin;
    public          postgres    false    228   qE       ?          0    107416    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    217   VG       V           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    225            W           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          postgres    false    222            X           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 7, true);
          public          postgres    false    214            Y           0    0    task_lists_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.task_lists_id_seq', 97, true);
          public          postgres    false    227            Z           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    216            �           2606    107455    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            postgres    false    221            �           2606    107448    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            postgres    false    220            �           2606    107482    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    226            �           2606    107484 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    226            �           2606    107472    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            postgres    false    224            �           2606    107464    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            postgres    false    223            �           2606    107341    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    215            �           2606    107432 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    218            �           2606    107439    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    219            �           2606    107495    task_lists task_lists_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.task_lists
    ADD CONSTRAINT task_lists_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.task_lists DROP CONSTRAINT task_lists_pkey;
       public            postgres    false    228            �           2606    107425    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    217            �           2606    107423    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �           1259    107465    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            postgres    false    223            �           1259    107441    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    219            �           1259    107440    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    219            B      x������ � �      C      x������ � �      H      x������ � �      F      x������ � �      E      x������ � �      =   b   x�e��
� ��0��e,�,�#j�D��a���X����>����Е%e*�(cu���*�:h�O�:e�X���qn�p>(n�4m` ���2L      @      x������ � �      A   _  x�-��n�0E��+��RvN+�E41�	���ǡqp0�6�__�V�;Wgf.6�9�<���(q������kf��r)y|ڞ���-d�=hYTi!��� �.Ł��� ���v@p<�rY�7q�{��s0�E)�>)�%�b���:���#�/@���g�X�T��p�I��D>Cf_%�/��t�D6�3�V�U^��z�ǣ�3�&'�.�r�AⰐ�e4�,Z�q�����%b�+�����9�=�4=�f�d�hZ�8�z�ISAx��t�u�I�n;5<-�S�J�����cE�k�����V�ٷ�C�5;=��/�ck:>�r�b!�Aڞkw6�N��eЃ�      J   �  x���=��0�cq
] 
�0��\��&v�u�ĉ�U�I��^����0?ذ�F�Z�O���8������� �Ћqt O+�Zg<՝		��O֍���;
=��i�2'���i��=���8;{���!�G�3�i[�ڔ��u9z�Wxe?��F\O�C��K8C��#$�)%b�c���<fW��\Ne��l_�]�ت'R�EJ!������`\���Y"y�S��
�BDjO^��v����, ��eHV�5K����,��g4G���sp7��0�����0:��w	=��q��w��xSA'�/�[�w�����+��o����塳���)�"�m�������,n�`Ά�i���{*���Ad��a����/�/�����`�|�1�rN0��2\�K�/
�X�
)��EjG�Y�Ĵ�	��Z�H���ӭ�奨�2�p!{3.�!��]s��nĿ��Bf�r�*:��ѯ$����5	�      ?      x������ � �     