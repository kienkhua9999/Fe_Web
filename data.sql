PGDMP     4    #                y            TGdidong    13.4    13.4 ^    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    53137    TGdidong    DATABASE     n   CREATE DATABASE "TGdidong" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "TGdidong";
                postgres    false            �            1259    53277    banners    TABLE     �   CREATE TABLE public.banners (
    id integer NOT NULL,
    bannername text,
    bannerlink text,
    bannerimg text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.banners;
       public         heap    postgres    false            �            1259    53275    banners_id_seq    SEQUENCE     �   CREATE SEQUENCE public.banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.banners_id_seq;
       public          postgres    false    220            <           0    0    banners_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;
          public          postgres    false    219            �            1259    53156 
   categories    TABLE     �   CREATE TABLE public.categories (
    id integer NOT NULL,
    parentid integer,
    categoryname character varying(255),
    categorylevel integer DEFAULT 1,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    53154    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    204            =           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    203            �            1259    53250    contacts    TABLE     �   CREATE TABLE public.contacts (
    id integer NOT NULL,
    contactdate character varying(255),
    content text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "userId" integer NOT NULL
);
    DROP TABLE public.contacts;
       public         heap    postgres    false            �            1259    53248    contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contacts_id_seq;
       public          postgres    false    216            >           0    0    contacts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;
          public          postgres    false    215            �            1259    53266    news    TABLE     �   CREATE TABLE public.news (
    id integer NOT NULL,
    title text,
    content text,
    datepost timestamp with time zone,
    newimg text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.news;
       public         heap    postgres    false            �            1259    53264    news_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.news_id_seq;
       public          postgres    false    218            ?           0    0    news_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;
          public          postgres    false    217            �            1259    53301    orderdetails    TABLE     g   CREATE TABLE public.orderdetails (
    "productId" integer NOT NULL,
    "orderId" integer NOT NULL
);
     DROP TABLE public.orderdetails;
       public         heap    postgres    false            �            1259    53197    orderproducts    TABLE     !  CREATE TABLE public.orderproducts (
    id integer NOT NULL,
    orderate timestamp with time zone,
    totalprice double precision,
    quantity integer,
    status text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "userId" integer NOT NULL
);
 !   DROP TABLE public.orderproducts;
       public         heap    postgres    false            �            1259    53195    orderproducts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orderproducts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.orderproducts_id_seq;
       public          postgres    false    210            @           0    0    orderproducts_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.orderproducts_id_seq OWNED BY public.orderproducts.id;
          public          postgres    false    209            �            1259    53165 	   producers    TABLE     �   CREATE TABLE public.producers (
    id integer NOT NULL,
    producername text,
    address text,
    producerimg text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.producers;
       public         heap    postgres    false            �            1259    53163    producers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.producers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.producers_id_seq;
       public          postgres    false    206            A           0    0    producers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.producers_id_seq OWNED BY public.producers.id;
          public          postgres    false    205            �            1259    53213    productimages    TABLE     �   CREATE TABLE public.productimages (
    id integer NOT NULL,
    "Imageurl" text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "productId" integer NOT NULL
);
 !   DROP TABLE public.productimages;
       public         heap    postgres    false            �            1259    53211    productimages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productimages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.productimages_id_seq;
       public          postgres    false    212            B           0    0    productimages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.productimages_id_seq OWNED BY public.productimages.id;
          public          postgres    false    211            �            1259    53176    products    TABLE     �  CREATE TABLE public.products (
    id integer NOT NULL,
    productname text,
    description text,
    parameter text,
    guarantee text,
    datepost timestamp with time zone,
    price double precision,
    quantity integer,
    saleoff double precision,
    imageurl text,
    status text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "categoryId" integer NOT NULL,
    "producerId" integer
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    53174    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    208            C           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    207            �            1259    53229    reviews    TABLE     ;  CREATE TABLE public.reviews (
    id integer NOT NULL,
    reviewdate timestamp with time zone,
    reviewcontent text,
    numberstar integer,
    reviewimg text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "productId" integer NOT NULL
);
    DROP TABLE public.reviews;
       public         heap    postgres    false            �            1259    53227    reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public          postgres    false    214            D           0    0    reviews_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;
          public          postgres    false    213            �            1259    53149    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    53286 
   user_roles    TABLE     �   CREATE TABLE public.user_roles (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "roleId" integer NOT NULL,
    "userId" integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    53140    users    TABLE     .  CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    password character varying(255),
    phone integer,
    address character varying(255),
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    53138    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    201            E           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    200            w           2604    53280 
   banners id    DEFAULT     h   ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);
 9   ALTER TABLE public.banners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            n           2604    53159    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204            u           2604    53253    contacts id    DEFAULT     j   ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);
 :   ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            v           2604    53269    news id    DEFAULT     b   ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);
 6   ALTER TABLE public.news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            r           2604    53200    orderproducts id    DEFAULT     t   ALTER TABLE ONLY public.orderproducts ALTER COLUMN id SET DEFAULT nextval('public.orderproducts_id_seq'::regclass);
 ?   ALTER TABLE public.orderproducts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            p           2604    53168    producers id    DEFAULT     l   ALTER TABLE ONLY public.producers ALTER COLUMN id SET DEFAULT nextval('public.producers_id_seq'::regclass);
 ;   ALTER TABLE public.producers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            s           2604    53216    productimages id    DEFAULT     t   ALTER TABLE ONLY public.productimages ALTER COLUMN id SET DEFAULT nextval('public.productimages_id_seq'::regclass);
 ?   ALTER TABLE public.productimages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            q           2604    53179    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            t           2604    53232 
   reviews id    DEFAULT     h   ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            m           2604    53143    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            3          0    53277    banners 
   TABLE DATA           b   COPY public.banners (id, bannername, bannerlink, bannerimg, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   �p       #          0    53156 
   categories 
   TABLE DATA           i   COPY public.categories (id, parentid, categoryname, categorylevel, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    204   t       /          0    53250    contacts 
   TABLE DATA           `   COPY public.contacts (id, contactdate, content, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    216   	v       1          0    53266    news 
   TABLE DATA           ^   COPY public.news (id, title, content, datepost, newimg, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   ]v       5          0    53301    orderdetails 
   TABLE DATA           >   COPY public.orderdetails ("productId", "orderId") FROM stdin;
    public          postgres    false    222   �v       )          0    53197    orderproducts 
   TABLE DATA           w   COPY public.orderproducts (id, orderate, totalprice, quantity, status, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    210   �v       %          0    53165 	   producers 
   TABLE DATA           e   COPY public.producers (id, producername, address, producerimg, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    206   Kw       +          0    53213    productimages 
   TABLE DATA           ^   COPY public.productimages (id, "Imageurl", "createdAt", "updatedAt", "productId") FROM stdin;
    public          postgres    false    212   �w       '          0    53176    products 
   TABLE DATA           �   COPY public.products (id, productname, description, parameter, guarantee, datepost, price, quantity, saleoff, imageurl, status, "createdAt", "updatedAt", "categoryId", "producerId") FROM stdin;
    public          postgres    false    208   �w       -          0    53229    reviews 
   TABLE DATA           �   COPY public.reviews (id, reviewdate, reviewcontent, numberstar, reviewimg, "createdAt", "updatedAt", "userId", "productId") FROM stdin;
    public          postgres    false    214   ;�       !          0    53149    roles 
   TABLE DATA           C   COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    202   X�       4          0    53286 
   user_roles 
   TABLE DATA           R   COPY public.user_roles ("createdAt", "updatedAt", "roleId", "userId") FROM stdin;
    public          postgres    false    221   ��                  0    53140    users 
   TABLE DATA           h   COPY public.users (id, username, email, password, phone, address, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    201   �       F           0    0    banners_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.banners_id_seq', 13, true);
          public          postgres    false    219            G           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 25, true);
          public          postgres    false    203            H           0    0    contacts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);
          public          postgres    false    215            I           0    0    news_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.news_id_seq', 2, true);
          public          postgres    false    217            J           0    0    orderproducts_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orderproducts_id_seq', 6, true);
          public          postgres    false    209            K           0    0    producers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.producers_id_seq', 1, true);
          public          postgres    false    205            L           0    0    productimages_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.productimages_id_seq', 8, true);
          public          postgres    false    211            M           0    0    products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.products_id_seq', 131, true);
          public          postgres    false    207            N           0    0    reviews_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.reviews_id_seq', 2, true);
          public          postgres    false    213            O           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    200            �           2606    53285    banners banners_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.banners DROP CONSTRAINT banners_pkey;
       public            postgres    false    220            }           2606    53162    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    204            �           2606    53258    contacts contacts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public            postgres    false    216            �           2606    53274    news news_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public            postgres    false    218            �           2606    53305    orderdetails orderdetails_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT orderdetails_pkey PRIMARY KEY ("productId", "orderId");
 H   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT orderdetails_pkey;
       public            postgres    false    222    222            �           2606    53205     orderproducts orderproducts_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.orderproducts
    ADD CONSTRAINT orderproducts_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.orderproducts DROP CONSTRAINT orderproducts_pkey;
       public            postgres    false    210                       2606    53173    producers producers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.producers
    ADD CONSTRAINT producers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.producers DROP CONSTRAINT producers_pkey;
       public            postgres    false    206            �           2606    53221     productimages productimages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.productimages
    ADD CONSTRAINT productimages_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.productimages DROP CONSTRAINT productimages_pkey;
       public            postgres    false    212            �           2606    53184    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    208            �           2606    53237    reviews reviews_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public            postgres    false    214            {           2606    53153    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    202            �           2606    53290    user_roles user_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY ("roleId", "userId");
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    221    221            y           2606    53148    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    201            �           2606    53259    contacts contacts_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT "contacts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.contacts DROP CONSTRAINT "contacts_userId_fkey";
       public          postgres    false    216    2937    201            �           2606    53311 &   orderdetails orderdetails_orderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT "orderdetails_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orderproducts(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT "orderdetails_orderId_fkey";
       public          postgres    false    2947    210    222            �           2606    53306 (   orderdetails orderdetails_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderdetails
    ADD CONSTRAINT "orderdetails_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.orderdetails DROP CONSTRAINT "orderdetails_productId_fkey";
       public          postgres    false    208    222    2945            �           2606    53206 '   orderproducts orderproducts_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderproducts
    ADD CONSTRAINT "orderproducts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.orderproducts DROP CONSTRAINT "orderproducts_userId_fkey";
       public          postgres    false    201    210    2937            �           2606    53222 *   productimages productimages_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productimages
    ADD CONSTRAINT "productimages_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.productimages DROP CONSTRAINT "productimages_productId_fkey";
       public          postgres    false    2945    208    212            �           2606    53185 !   products products_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_categoryId_fkey";
       public          postgres    false    2941    208    204            �           2606    53190 !   products products_producerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "products_producerId_fkey" FOREIGN KEY ("producerId") REFERENCES public.producers(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.products DROP CONSTRAINT "products_producerId_fkey";
       public          postgres    false    2943    206    208            �           2606    53243    reviews reviews_productId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "reviews_productId_fkey" FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.reviews DROP CONSTRAINT "reviews_productId_fkey";
       public          postgres    false    208    2945    214            �           2606    53238    reviews reviews_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT "reviews_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.reviews DROP CONSTRAINT "reviews_userId_fkey";
       public          postgres    false    201    2937    214            �           2606    53291 !   user_roles user_roles_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_fkey";
       public          postgres    false    2939    202    221            �           2606    53296 !   user_roles user_roles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_userId_fkey";
       public          postgres    false    201    221    2937            3   (  x���ϋ�6���_!(-�dI���`ʜ�B��B�R����Ē���Loe{m��R�{�-s�a����$��������>?�����.�_���ƚ
�]����\���Ț���/���������"j�w]�$����7U��.uiMM&�MJ_�X97��v}X�R�Us]uo������,�&ᔳ���2��'���R�M�rA����3�)CL�L���O�p��ѹ���[t�6<�m�$������� ӴY�V�J��N�M,��������G@�4��,{��+�"���/�A����=��x�����зH�Q��:g����e���>p�w���i���FY�gG�e�\+�B���H~EB����sӇИ1����Oj4����8 �N�3����WS�(���7
,�{w�6�����sLg�<�P_��a�r�:t�Z�(kN��.z��u,\�c=�<đ�2�!�)Eg��A�(?iP����l��<�nl ����>$�'1k3�%�,�)G����-r�Z��f ly8��������C��5<Օy
#߻G �\� ;R�h��
J������M��U7�(���4�{���\�ǹ�J1c'�ީ�[��z�S�͓�tH�Q �wJ��	Y��~�}{���|R�b��j��ڪԋl�jzm���)]�B_͍�]���L!�F�`6���WL��i���(�$th�])f�	���Y7uSm[n������`RH1h�et�
&F6Ս/:��[�N��a��҇	� T&®G�8�Ux�#      #   �  x�}�1o1����S�����;�7C�Z)Rac��Sb��EmZ��"13ddgj���o£"ѝ�H��/g��)�~}M��KWl��M
�3�3���M$������?	<[�zӯs��4� �%o��e��[�O9�8&��v4�u�b����O��J�BB=�R~�C�����{*6�M7�M���RDG	jVg/�����"u�ck][�c4=!7������.�l4V���(�r��l�w��Ƀ>����`R ���fuw��#��Z&�2ѯ�}�����Φq� �A����+���JM�J��c�ev��X*�.���� !>h2ٜL`�ȫv�̅��[Ig9J���Wo�$�j��Y�&�������ёFC�qL@�����`O�?$ T�J��}.����2M@��ɹ�'�$��(YFN��h�/_8�qrl��7[��Z� \�8y6N\	?hyו0���4 ��D}      /   D   x�3�40�"##C����<CNS��P��H��������L���R��M�����X��$c����� p��      1   F   x�3���L�3��..NL�4202�5 !+0�60+���*�X�ZZ��[��qKq��qqq �X�      5      x������ � �      )   k   x���!�0E5=�<���u�8f�L��a @��槢/?/�FX�2���H��~����s^̚�)9�Z����ւx�� �4A��(�����#���Ow�m�d?�      %   +   x�3���L��L
%���F���$�g�q��qqq qK      +      x������ � �      '      x��_o#Ǳ蟕O�O�����/ߤ�#�x׻Yi�q_F$��#rH�CY�� �6���H�x�0|7�b������{ȟ�Vuϐ3��H�d�^�ےXÙ��_WwWWk�}���.fI�z�0bѝN?n1.�kom���q�ŝӓ��3�L����È�߽�c��:��-�݇�G�љ<�;p����k����_��1\qz��1������䓈5'�����z��gэ�W1���r���Qk�z�~���ɧ�.<a�z,�	>ڃg'l �]W�>����=�������''�p��:}�K���,-�����#x��C�5��';�|�E��&�fFP��_g�݅�uhn��y�
 ��>�EYu�!�zL��~�?�F?��G���5�?OX�����\��~��z9�a�\�/�s�Q���mp�mF�8j��jdtz�(f�cu�d8�+�I�n�n�U�~������1>��pU�{x�Q?�P�z���cr��2�D�cO=�x�[���iٹ�v�����7�_sM�vƃ֐�m%Q����m�2�}�7��G�w��հ��l��L���*�֝L���jԳ�����Ef5��nܪ3�mm�M�J5��;C�?�y����0�����G~���_���9[�N�mZ(|��FGX���M���.}֩t#�˩*W�M��Pj˪�eykB؁��q�o'I�z��h�f�n6̓�vg�o�ɨ�r/l�F5[����h��4�}nm�m������?c�w��p��w�S�),O=�l�k�P���#���
�|� �H�`
���#-GS�Hc0����h��M$�
�u雁#*(�i
�"��@/0��U	ċZ@.��5����)�4u�9s.�}�<D�K@n�@�{���+�}øc4����ĸ��t���XA�h$��^���g)A]�?k�ׄl1#��Ѓ�=������cUEi7S�;f	 T�O1��߲}�ƣTG���@q[?Xu0T��5���]g{�=���'�@�V�K:�>h��D�q'}%u_ ��t�U�5@�I #I.J'���Pl�1��_5���*�n�L����֛|:Ư=�BF�xݬ6N������Z���;�=͎P3�d��_c;��S��?�3��z=|���M�R�')�*�w��+&�[�~o�蠧��
/gw���T�C	�UGx��G��.�p���v_��'x����#�)]נc�	���*���ET;�~dz��b�y�*��V�{f��Ue��,�nȺ!��Ņ��D��+Ɣ���n�"=ײ�Y�!
��B/0��U($�k��ꎶ2�vM�;�̙�4s�s�Ӌ��C�!����-�x�/+��o���(0:��Y@m,�W�'/��qϙ{)��[������'�����f�#s��>K9�p�nKӱ����"��L�p"�����Ǔ+��xwJn4[��2���<0]߭@O^��S��J[��]�6��C�!����ɭ�\�=�%����ph�±���K�'�[�i;U�O^�����F�-�v��#����6%֖p\�QI��]zi�T;�O>C�@Wh-gM}��bW]zh�7�z����W$�1�)���{n׷}z�d0��׻�Z}�R�Ɲܴם?��K��Jʯ��	f�#�LwJ���scr
����'��g�Ԟ|=���{a�+�kF�!n3lSm�*ٟ�oqG^W�vR��a��B����!��U�������W���
�nv~?n�����.����C(�ڧ�|7՛�6{s|� � �;z�5U��:)a�b-e�&W�D+]�ͮ��ãtpQ�j�5��"������6=�ZN׮d��]F���+�p��FZ9���|�����(���F���b��L��K� ���9�mHA�"l�.?�\���1iK^�V(�a�Ӊ�b`yua��j�Wid��p�#�'/)Eg�/�����˶~,|�u��K��?� ��*�9{��pA�F���g�/;X`�/|��i�2�
�\���8�Vi|��+�%�1"���u��%�Ze�O�T�K,m{u�6��O� ��*����Ս�{B!�v�&���	_V �W{��-�bo[u阾�+�4����s����&�JPs���8F#��8��1�J��sl#E�����-f�:�MתX+�4��^�g�b�0b1�g�0{%��]5�D�{ݰ���lh�36i����vد_�/���
_+���/�C�	6�GF����D�;f�U�#�"ͯ��|�<���	\������,_���\���ê��>/��*{�߾s�6�g�w��+V��H39=�j������������?5��gH�;*�h����tf/U�ɧ�O:��H�JO��i8A���r�[�YCN�F�h�P���������[��T���D�����t�D�N��H�'Izඞ���iC���q8��3T�;��e��q�wz�> !4U'���dEMq8`��:_��Y`��M�Z�}?�J�*b�1u�+�ﮧ���y��S� ]�ug=�0�H_*�c���:�Z^_��>S��r���L*Y�b����Ӆ��˸���T=h��x0�Lu�Gا�?@�i�M��}%����-�o�G�>n�c]��-��u�$/�`�~x�W�}c�x�y��^bYM�Q�-�t�6�".1�g١_Ao#p��FB#��ٝX)L��=Kj6���n����l�����3��b�̀�ݍ(n��r��I�$B!���`.?�򄔂�&� �q�S�,���4�R��\l��H��|:!7�&L&	����yL��/L��0���>�
��<�eTD��9T&	��I��3ŤX��r��sr�uH��"0m۩�c^��X>j1��Ct$:��ϖ�|5:J۵ftt.�Qt<S
��3�d�����i!��DH"�#�e�BH!� 7϶�<[��\��.|3�e$�"��!��y+���@I�$P(��Ϗ��<�vޒ�)^-���Yhc�a�v+0�iL�O����R*_J�K�|Z@Y)������3�@�[��N��Z�ԇUem�E�A��ݫӾ�))8��H�$I�4��e�[��$|�G��C���X���$�KTZp�썜�yk���BP!������y"���*��n�,QTt߯BJ^��R��U}�7��9I<!�O.O\[r͓#OL��>wI�؞	T���L��Rv|�Tq䈐BH!������Qu���"�Zeqh�?Õ�0"M��ohJ��=�b
1����bJ.��v����2�p��X���bs3�nC�&KٯR�E�s�6�*D��O�*�Jn���9N�P��͂�!vնqA�YRvA������%�-~8�n���|ܸ��a=����t���Q�;S�^:P��Q���-_;j��C��UZ�Ғ(Ot�@�}�C/�1v�/P�O�`x�ϕs~S9��k�����p�$s�N>�A١.��L���!My�k2�}�0���)�SĦ��N7i鴟���^��&��^A�?���i�	�}z�QoηeZg9�ԭeƂB-�e��V��}^��+D��=��M�*z�դJ�'nWE#�'��Y>ƨ`���v��KQ��%{W� W�{�Tڽz�v�J�/&�<B?�����	��C����{��wk���':��&9u�7]���HA������_�-��@P3�#����H��#�
׮j)$����s/��̀�
6�E�Me7�������E�"D]6D��3r?C�Lx\b�D�EW_TM��"�r$�2�|�q��t	�$W�+ם��6������3\�:������V�y��H���a\D�ʔA�"L�.�VJ��S �Zl9yu[�ܩ�Nˋ�����>�f���f^��v�xD��v�
����~D��)�ԥ��J���rr�2�����V�m'˯sϔ��y�&_�����
������AM����!�����Ů޹W�bk��w��w��Z�u�{��l_Y�nC #��.���;H�0'�wj�a��z��6z�腇�@��}2�[��Tf/���4g�,    �����J;�E�m�h��4�]h�y@K�b4�e�f[ua�2��\Dn2����<� m�*
_�Yg0~���]a�1�a��a�ѫ`��t�䵮bI�o�x�[�(�ɑ&�8	��hh�KBK�_Yx��pE�"\]6\�b�Kr�8�� l�������cA���,�SM�I;�#���\wR)��e���W�T�Vaj�K��Ak�Z�.�ia\��� ��r�ѵ+L��WX����EC�A�2B̻��#@�������h8E��\��K�a�.}�[U�[y����$̔V3����`va&W3ȀeUk�����1Y�i�U�X^�	�g���v�V؋�E��6�w~���]������ޗ����۵�D���N��(朽t�[�@�խ�8�\��s_��1`�@+��Tp8y�S1�?� Y �T	Ag�)Ag1��{�B=dLIS�������B�9FEK:�>�^?B�N��o��ԭ5/5��M9��SL��46~G�X�����y�B��N�6R�4���B�������J�'�AC1�E�~�6�� ���;���1#@��� b�����0�\cw��n�,k�\��p�t���ק�=�>,��z��حME`"�J���9*r��X<�j���kD���sv ����g��c����WL�V���<����uv���ꮛ�� ����0MJ�U�t`��}-��:�>��bJ��,��~�_�:V>�@a���dm��BŌ؃�a��O�.�S�� ~�0��o�8f׮ݵ���{��J�+��b�.�D�Sl�G�RX���v�:��#����w)�Y�u����t/�A �&�SU��讇��P��b��G�jp�z�ys�I0�FZ��>t��GG8D%JA3MC]����i�Y����&��=��Hmi��!mc t~ tn�������z����p 
*��a�����[�ͭ���u��(�p�`�B����Whءa��vh�yn��ʰc��w�aG0�D�1�k��[�el`H���^�h3��Ƶ����ƛ��;�p�q��whܡq�yMwVs��_8�i�tg��#��5�*���H?����c���3����m�rGX<�f?�%�ێN'C��B4
�(D�����Ye�Ǳ<�=c��K͂�:xQí �Ð��(�8��m�	��!f�O��݈X���*[;�ʫ�*�n8,|e��X�<�J�V<Q��S�4EuC�۸�ѽM�	�P�!�A�j���{���^D�ޣ�
�����KR�`��8���{��G
+�Aoo���澨��zP�n+�#��T����&zeq�����CM�ҡ����짌�6��/8v�^}f�χOˢs$�`��9 �#����lq��\ǪE���9�q�o�[у�hã�yuK`4"Y^,�qĄ8ci~�u�-�X�&��d��yJ�)��?��y�r�h�"��r������e��Lϭ��Wi�T��a%�f�I��:[��I�c�g���U�{>&��q��gh��q���3�o���-_�3ݔ��Ǚ���.<SU��y�`��������Ջ�v@�4���Cc�=?����,g��,�o�nZ�j	>/�#�s�%�ʅuZ���xŅAa_x1d���Y�o��f�������u�\Ty�DjI�]i �a����}q��
�_��l,�8��šh��K���E�n�k��{lg�&G���V�0��9�G���̥�6��a���.�mL�|��1Ì�=�؟)��x�;%�>��;ƭ'y_�>e�����t��]�<�E�.�����7I�fó�g١���|����Sg=���B++-�Lϱw�����`�7�(�wP�����e������*2�J�L��-����y�����l�5���+��n:pW<����D��'J_�s�Zjn��έ��o����ظ�Fɰ��N+n5Y��F��v�:ht S5�,[u�X�]�]���$�O����9�/�c�%�0��B�l�:���W�$Qm�s���%o�S������4�䳞���>�^�ܤ���-���?<b/�n�+�} %�a�?d{)�T��Y�o�_�YJ�=��0w�^m�56FJ�@��9&�m��-S�AA��"5��W�T�!��" �`e��]�"��e,PыZ�n{�/K��y��L����@7�č�G�Y�.�x�P�7�ะ#��G#�T�� BPx��lZl D"~D�i�cZ�,�e�	�.��sr͋$�� Q�#�Ĉg�ԩ�Yd�u����黥]�y�b�Xi�AK�
b�����Ãg���Ϙr��nxuᛎ[u� R����	{#t��
�����؎�n\g� !��5�K�е��b?�*w�[_���	���;�������
ns9
�C��=�.t	��������ĨUz�<���UrVlߙ��	�N�g�"Ů�S'��(%J5j4�n;����BV@M��{cE4#͵��Ɛ��iY~x��YA����d������س�ǖ[G���E������e0ݖI���[!ia�G�C�$���j��bi#�FHw*f��^h��z�D�u)f�7�[����/+쎬6]�-�ص�V^��:�Õ1�-�=l��F�Ǹ��
�,�S��p�/eT]�.D��.+:l���M5�i"`�Eԥczҭ�KA��R��Y��
a���cbe�9�p,���JsI{E�ߴ�J��$
(U�U@q��(iU�*D��*�JP��J��F�z)�Ⱥ�L?X)�W�b@Upe�S���s��Bd!��xd�p�Sm��ܮ\c	=�Xh��uK�p�
�D�,U��dQ���B`�Qĭ��,�sXR�E.��L�j��$
,U��i�?�ytRǳ���4�(�Ӥ��;��3(�*�����4肂K9��>?���㙔YE}�гY*�B�DLƇ,����g-�Z�G�+r)��5d�V��C������A+�J�����O�S�U=�ڌ�z��t�"0�3��>��a�����;;���kl_�QG��S#%o��~���?�_����_o_�U��:[b/Y"  ��J$	�ǳ#�T��>�y�ͧ=԰��R��6L���0η!h�����K�V �ڡ��R;����x��K���"	��_j�]S�8D"΋E�b���&H����8�N���8|��[a�BM�>����8*�s�魴FtՉ��Q[���Yqq�ٟh݀N
�l�Azrf�L��ҥy��:��Qз?�h�)�m���bZt�`J��Dp�i��=�
�ɩ��%��@i�N.�nU�S:'���|�0�����`�4G5���0����QG����ھ�a�4��$2���%��:H�֥M�i�H5#�Y(V�z"�a�����1�;��1���n�c}�6��|��Ջ�%���:au�k���J�?[
�0%އ��~ �"�
f��C٧1�Nzn,���ZG!��6 ���'�|n������P�����v~U�I��^Ͳ�D���'���I���-�{+�n��<�ы��r�FˑW� R����k>	��O���Ƨ�>�p�>��c���+��)pV��ρs�[#��$.����������湘����k��u�v�%u^��X��^�"!��HH$$���TVB��-�W"q	(ڎ�;U�bA���f?6F�۽w#��q�c��W7Y���$��4i"g/m�ʹ�_�2�bu�}g������������{��8iu�����_OT�O� 91c�J\�*(�θ�[K�����&f!	�h�C?�+-�H�.d��y�v����4O�JL1�3����ҟWU�B��'=ԲTa�ȯ6{(��Ө�ZS,7ԛ+��<8�E�XG�< �Ԧ��W�����CDX��E�8��d��y�מ
s�E����+0�C:���}l�u������cy��u���M��K٫k���1K�y����_�y��jgE(觠����5�pV�d����/A�
�2�k���/L������1^�N��V�
�K�=t7�f�/�|�׾Q��> ~  �:T�M�6��H.	`$�.�q�]��b��}go������ww�gk!h�y�Y%-�kY�S����A����!���3"�����1�˺�L7�X)-���bdks��:޵d�3�s�L��4t��f�(�6�Ӧpګ�{��--W�|��B2��*j�C����h�:�`R[a;'� ۾w����;�tFR��:73�ܼYg��fYb�
udԑQGF�j�I˷��Q'u�h/��)������J����Q�!�N'���>N�����*�sw��|͝��,0�5���pL˪���E�A��woo�7Z����؂���1L�����[��}�*�0�q{����%��Lλ��(c�+�r��+�vB;����b�ݾp�	����h����)^gi�m���f�acI�,�s�g�]�u�A?)�V��o�bb��}����Tw�-O!�Hg;;�j��q�S�ӊkW'��<�-��˝��MO8���Nx'��_X�_8�Z|�h��݊� �����
���4�5Z���*ü��(� �r9��@N ?3��Jv��Xs o�� s����p�d!˽�pM!�
��E�梒���} :<x�+��$aܜ��lp�w�ō8N'����h�l�ś7�s4.�����'�8�i��J���F4�]Y��ŎPi�g��w�+	�rB9��F��
��@�n�������t�e |\���b:���IA�yng��ي�}��~;d��˻7@y�s��<��/6�,˽�ګ*�{�;3�j�u���������X���6��8����O���H}pm�����;�5��^�@EQ���x|^�1���Z�?�W<�֙u��sy�(ĳfq[iW~	� ꄜ:�K �x��A���v���.�z�P�p4���v���Y���آ!�`x����y&O��qSz���Wk������?��Mkd5�Г�A8uN#S�c�S�"B���I��'�y^D9��_�&_k�=>����\�j:褟�WC(���Uх�>7^�c��:�X�K=��:Y���+ի@�7ԌpW٫\�2RֺJW�#�#0�%]Y닽6��u��x�!��;�������<qoom��.t\�h�׏�)}+WD�̽��eq��K�%�s������-]���@�������匿�$���� �6P֔�"�DA���Vٻ�ƭ�ؽu��ܵn���sW��;��]E����_���r�^���+���=�/��׵R�#�ZcI�:��I����&���݋q.��r��uv���]�.q�yq�_i��^g	����^wi�Jnz�j�!/���Ϸ{wo�9�k��ڀ*���K & �	����*���3ߤ�j��B��@��.஫��T�(�4w�*�z���l��\�nn[��WR�s���\b�O��;(�^q��cY��%]�n[��*�uD
�ܚ ܾ�n�Z1�k�[�����K��cm��|}�[X��n��Ưk�£ݳ�#��Ad�����l\Y;�	���zg��U�Uӎc)���l虣ð�����S�i�1����W
T�iԦ'*lm�+M�O����j���Ra0��s���a���9��G�Q��Th'=D��L��.[��89�U���!�>nd�M&��NJ:LZ!�r������]1]�1J�nCg�.�,��\Ko[�B]�*�`�$���\l���L�n����������U� �ƺBU��!���F]��	ӵ����*����)s�I���`�z|Q�cu!_�c�n�B�e�5�a.6�n�,��v�{	k�k5`c�G5�@�Pu����q���������i�.�y;N;����im�Oc�qu�Юmis��4��J�;�5���G�I��p�xw���n�30�o�C�09D�����R��S"p*ܐ�D��<G�7�r4l=�a�m��*vǯ�as�g��e�4�w`{����kDt":��~Y�n���� ��֞Ț�����=�-+<X�R"��&��)��ү�@r��BnI�{�,_�3�W�MiM<'�ω痄�R��xg	�#�[ U�KCC5+��[{��З�'9��b%fN��.���H� t�����K�=��M�&|�	ߗ߫��9���������و�����m�΁΁;�H��΁�Nxu���s�P-�}Ν�������_͢_o���c���*��ߤ��&�׉���K����=���� %l)�;�&�^C��ߥ���b�-L�tf^� ��SH�`��rGQ�*JPE	��fB���BHHT���k�2Q+6�N�g4�#��1M�����,Uv �oZs	H�"O���]g�����U��d[�z�B�`y\�:�(�}ϵ�s��F7i�����ƁNLgaPF�	�0(�4��up��V����t�YT��@L &,����/j��q�DI��\0'к��X�~�P)���`d�i'Mtx���f��8�C1�H�I�/�\�� ����^kl�	��;�׏�R�i����P��H+=?[���n/�Z��~q��*C, �_/tW�خ/kC���D@��jq SH�0�-��� �����*�E�b��`�ϖxo��W�*�H@$ ,�)W��կ�A#���"�������Ka~U*��Hc@�o��`~i ������+��@@X�Y��%�Z�ʓ"a�UBTN�� �2P�P�@�5��bJk8u+0y�BN�a/XB��h�@` 0\����-������rʎ���Je�J���9h���֝f;�SHJNJ~��_ث��c��/����
h�#��?�?T+��� ���e�Vzw�F�'''_^�W4�mF[5��J��"�"����7�]��i������a���FQ���q<�����D�0��Q��qy@���u��:��QWɻ1�.��j�f�ڊє@��r�
k��@Z�w>�_k}*�9.jtA���QE��œǉR�(+����j����; ��T�ʗ�_��-�Il�W���(R,:���*���|���0��{�;���4X���+�ƩxG;c��hG��߷��t�_��ӆ�v��]O�]r���;��a��w>Q���ʺr�ƺA�`�[��_s
R�E�.�(��FXx�?�k{@b��kS���w��?�(O�ɧ}��:�:ʒwA�w
�������]��t�}�.�]>�C�0���I����S<̒�"/"��)\<)#l[��V���w���չo�^��i<�e<n;۷��¶67(��7��%J%��D�gNI�W�$w�Z�u��}��jt�͡���f���%/�9�ff@�$f3��?wfr��vf^�	Y��hN�$X,lX>�i������U�q&�x�g����5nq�ڹ�Kf%��HI�|Nf���Y�N����|��̴��-��V�3kN��)Λ��7�ٯ���I�$p8������I�)7��t�����|<�K�V��mN��)�мތT���(��7^3\n]��{�n0�'ѓ�I��	�#��S�Z�aFf� Ú`x��R��e���[ua�ܭ�*�4N�eq�i�)�xJ<}^��խQ���b�sy���2�[1�/�4G�e8
f�5��%�E��D��m�\���������-Qi�miU�I�������1�g�ܞJ%�C�����*Cm��o��`���"�:��+��
"�ЊcC�ݼ�M艢DQ�(Q�9R����W�ѽ�&� K�7�U�љHs��|�������xb��D%�G���|]�_��AiJ?4F ��=���.�V�b�� �$�8uT=��$�I��D��f�^<�ה�������ݺ�~�I��HqTV�D���zGl;�>�ڭ!�^�=�!~?���ϟ0?-!j	��H�����TQ@<�bG� Ҹ�8�T�K����D�$^/��^<�V楕�%@k)^��\ӳK���D���c�����Lm�      -      x������ � �      !   J   x�3�,-N-�4202�5"C3+ 25�33��60�#�eę���Z�X�O�	Ɯ�)��yؕ��������� Y�'o      4   U   x�u���0�3L�ݔ�K�Y����X�/
+f�,�b���]��+N�S�Qǈ��_2��l����dt,f����$�ʧ0���*�          N  x���Ko�@�5��.�5�0���#��XD���C������VӇ�19���8_.ϤqP��S��qV�LzNj������J]%4�MA�5�v��}$�j:�$��e�*���]�A<�YyEQ0��|��>�B����$�9|�b���G�뢊�d��C�}���6����p�ՠ.'ʜ�rO���60��4r�n�9�9b��m�)��+���4�`G�ġ_���m�p��A��y�ϲ�pQ��Tэ���+���0�s�|xUR͖�z����.	�?���X�+�Ij�$"�뚾�b�Z4.�{7�1�� e"��>ƼϺ�%��q]*��,�	�}��     