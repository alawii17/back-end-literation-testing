PGDMP                      |            db_literation_testing    15.7    16.3 -    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    57367    db_literation_testing    DATABASE     �   CREATE DATABASE db_literation_testing WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
 %   DROP DATABASE db_literation_testing;
                postgres    false            �            1259    57368    discussions    TABLE     �   CREATE TABLE public.discussions (
    id integer NOT NULL,
    user_id integer,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.discussions;
       public         heap    postgres    false            �            1259    57374    discussions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discussions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.discussions_id_seq;
       public          postgres    false    214            0           0    0    discussions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.discussions_id_seq OWNED BY public.discussions.id;
          public          postgres    false    215            �            1259    57375    options    TABLE     q   CREATE TABLE public.options (
    id integer NOT NULL,
    question_id integer,
    option_text text NOT NULL
);
    DROP TABLE public.options;
       public         heap    postgres    false            �            1259    57380    options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.options_id_seq;
       public          postgres    false    216            1           0    0    options_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.options_id_seq OWNED BY public.options.id;
          public          postgres    false    217            �            1259    57381 	   questions    TABLE     �   CREATE TABLE public.questions (
    id integer NOT NULL,
    numb integer NOT NULL,
    question text NOT NULL,
    answer text NOT NULL
);
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    57386    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public          postgres    false    218            2           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public          postgres    false    219            �            1259    57387    replies    TABLE     �   CREATE TABLE public.replies (
    id integer NOT NULL,
    discussion_id integer,
    user_id integer,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.replies;
       public         heap    postgres    false            �            1259    57393    replies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.replies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.replies_id_seq;
       public          postgres    false    220            3           0    0    replies_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.replies_id_seq OWNED BY public.replies.id;
          public          postgres    false    221            �            1259    57394    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    57399    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    222            4           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    223            y           2604    57400    discussions id    DEFAULT     p   ALTER TABLE ONLY public.discussions ALTER COLUMN id SET DEFAULT nextval('public.discussions_id_seq'::regclass);
 =   ALTER TABLE public.discussions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            {           2604    57401 
   options id    DEFAULT     h   ALTER TABLE ONLY public.options ALTER COLUMN id SET DEFAULT nextval('public.options_id_seq'::regclass);
 9   ALTER TABLE public.options ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            |           2604    57402    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            }           2604    57403 
   replies id    DEFAULT     h   ALTER TABLE ONLY public.replies ALTER COLUMN id SET DEFAULT nextval('public.replies_id_seq'::regclass);
 9   ALTER TABLE public.replies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220                       2604    57404    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222                       0    57368    discussions 
   TABLE DATA           G   COPY public.discussions (id, user_id, content, created_at) FROM stdin;
    public          postgres    false    214   1       "          0    57375    options 
   TABLE DATA           ?   COPY public.options (id, question_id, option_text) FROM stdin;
    public          postgres    false    216   61       $          0    57381 	   questions 
   TABLE DATA           ?   COPY public.questions (id, numb, question, answer) FROM stdin;
    public          postgres    false    218   S1       &          0    57387    replies 
   TABLE DATA           R   COPY public.replies (id, discussion_id, user_id, content, created_at) FROM stdin;
    public          postgres    false    220   p1       (          0    57394    users 
   TABLE DATA           >   COPY public.users (id, username, email, password) FROM stdin;
    public          postgres    false    222   �1       5           0    0    discussions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.discussions_id_seq', 44, true);
          public          postgres    false    215            6           0    0    options_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.options_id_seq', 56, true);
          public          postgres    false    217            7           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 11, true);
          public          postgres    false    219            8           0    0    replies_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.replies_id_seq', 24, true);
          public          postgres    false    221            9           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 39, true);
          public          postgres    false    223            �           2606    57406    discussions discussions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.discussions
    ADD CONSTRAINT discussions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.discussions DROP CONSTRAINT discussions_pkey;
       public            postgres    false    214            �           2606    57408    options options_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.options DROP CONSTRAINT options_pkey;
       public            postgres    false    216            �           2606    57410    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    218            �           2606    57412    replies replies_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.replies
    ADD CONSTRAINT replies_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.replies DROP CONSTRAINT replies_pkey;
       public            postgres    false    220            �           2606    57414    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    222            �           2606    57416    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    222            �           2606    57418    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    222            �           2606    57419 $   discussions discussions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.discussions
    ADD CONSTRAINT discussions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.discussions DROP CONSTRAINT discussions_user_id_fkey;
       public          postgres    false    3211    222    214            �           2606    57424     options options_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.options DROP CONSTRAINT options_question_id_fkey;
       public          postgres    false    3205    216    218            �           2606    57429 "   replies replies_discussion_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.replies
    ADD CONSTRAINT replies_discussion_id_fkey FOREIGN KEY (discussion_id) REFERENCES public.discussions(id);
 L   ALTER TABLE ONLY public.replies DROP CONSTRAINT replies_discussion_id_fkey;
       public          postgres    false    214    220    3201            �           2606    57434    replies replies_user_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.replies
    ADD CONSTRAINT replies_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.replies DROP CONSTRAINT replies_user_id_fkey;
       public          postgres    false    222    3211    220                   x������ � �      "      x������ � �      $      x������ � �      &      x������ � �      (      x������ � �     