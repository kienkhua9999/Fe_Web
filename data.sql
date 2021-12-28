PGDMP         "                y            TGdidong    13.4    13.4 ^    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    216   :v       1          0    53266    news 
   TABLE DATA           ^   COPY public.news (id, title, content, datepost, newimg, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   �v       5          0    53301    orderdetails 
   TABLE DATA           >   COPY public.orderdetails ("productId", "orderId") FROM stdin;
    public          postgres    false    222   �v       )          0    53197    orderproducts 
   TABLE DATA           w   COPY public.orderproducts (id, orderate, totalprice, quantity, status, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    210   w       %          0    53165 	   producers 
   TABLE DATA           e   COPY public.producers (id, producername, address, producerimg, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    206   tw       +          0    53213    productimages 
   TABLE DATA           ^   COPY public.productimages (id, "Imageurl", "createdAt", "updatedAt", "productId") FROM stdin;
    public          postgres    false    212   y       '          0    53176    products 
   TABLE DATA           �   COPY public.products (id, productname, description, parameter, guarantee, datepost, price, quantity, saleoff, imageurl, status, "createdAt", "updatedAt", "categoryId", "producerId") FROM stdin;
    public          postgres    false    208   :y       -          0    53229    reviews 
   TABLE DATA           �   COPY public.reviews (id, reviewdate, reviewcontent, numberstar, reviewimg, "createdAt", "updatedAt", "userId", "productId") FROM stdin;
    public          postgres    false    214   �       !          0    53149    roles 
   TABLE DATA           C   COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    202   �       4          0    53286 
   user_roles 
   TABLE DATA           R   COPY public.user_roles ("createdAt", "updatedAt", "roleId", "userId") FROM stdin;
    public          postgres    false    221   y�                  0    53140    users 
   TABLE DATA           h   COPY public.users (id, username, email, password, phone, address, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    201   ܭ       F           0    0    banners_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.banners_id_seq', 13, true);
          public          postgres    false    219            G           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 31, true);
          public          postgres    false    203            H           0    0    contacts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);
          public          postgres    false    215            I           0    0    news_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.news_id_seq', 2, true);
          public          postgres    false    217            J           0    0    orderproducts_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orderproducts_id_seq', 6, true);
          public          postgres    false    209            K           0    0    producers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.producers_id_seq', 6, true);
          public          postgres    false    205            L           0    0    productimages_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.productimages_id_seq', 8, true);
          public          postgres    false    211            M           0    0    products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.products_id_seq', 143, true);
          public          postgres    false    207            N           0    0    reviews_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.reviews_id_seq', 2, true);
          public          postgres    false    213            O           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 7, true);
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
&F6Ս/:��[�N��a��҇	� T&®G�8�Ux�#      #     x�}��n�0�g�ShoC���Dj+�!�@ڭ��
6[2'm��k��<v��nDo�sRRy�$��x���2����o���j���P�!<A:1�a^9S��ƕ/L��]g�r�-SV��你 (X񮾜7+Ia�T.*ʧ����4�񃏵�����$�#]�e�	�T�o~�luS���I�q������/����K[�c�E�=I�fӸ]g7��&���X]8'�U��Nf]�(-t����6�F��p[/n�=�"7:Ȋ=����.�ϵ�I�0g�}��^� �@��?Ǻ[D����"i�ʩ����%��L��1,Y��S����[J� @φW�/$��Y#�������v�*'��D�v�N��N{{d��*T��SC�Ǻ�O# b��\�J�=Ie�eɑ\�����vPΎӻ�S#:0h煡�cǑ��B˧.�|P���M���2B��$kG�����:������$�le��(�{�t>h �n�_�      /   D   x�3�40�"##C����<CNS��P��H��������L���R��M�����X��$c����� p��      1   F   x�3���L�3��..NL�4202�5 !+0�60+���*�X�ZZ��[��qKq��qqq �X�      5      x�36�4����� hS      )   ^   x�3�4202�50"+0�60
� �!�<2!1/]!=31_!����t�&C]CC]#C�&#c=K�6��PN��,a�gdh
�2����� ��2      %   �  x���1n�0�g����#)R���Q$Ca;H�Z�"I�R�c$7�+dJ��"�ID�(Z�S����~��O��%Fxѻ�����P����h������w�U[r�otSn�"�� L.LPئ��Cw�7��N��ܼ���7�*n���@R���Vę
]-��M�2�9�b�Ʉ01�@�H��z���Zkt��¶}x{1>�?^�����]�1��m?LC����7
TA�;��:]圲�ކ˄:o�2�L(f2�41��|09��3��� )хj| F���}=�goO�_7�*=��d���~���/;����ݴ��i��Bh�s&Dޏ'��|����'��"�)�tv�]a�4�'�R+�h���s�sO��(c�T̆��?���,�D2y��UtE�(z�X�j      +      x������ � �      '      x��_o#Ǖ�'���D����?|���x�VF�gbܗ�!{E6i����Ɂ�X,�c�E�5���;���,!�y�=�Orϩ�&�ɖHq��rg$�4������Tթs�k��6>;�焥�����۝~�b\0��ܸ�;�'m�t�N���i��	�h��N>�Y��=&ᬱ����b�}t��5:�ϓ\zv���p�?��>eW��w��:;�$f��o�~��L?��?��v�e��������qk�z�~�����.<e�~,�	>ڃg�l �]ӏ>����=������g'�O������6,��XVNs,�G���'pk��Wvp�)���AM�{��w.(ס�U��. <:���&�k��)�c:�̛�+k��}<�^Z���5�N�����e���Ϫ��6�u�R�P]L,�:w�F�O��ڴFFg�Ov8��N���u�����+���7o42���.�G��+\��^c��.ԥ^�r���k��:1��ӏ�'����~@oRvn_��������[wn��l�vƃ֐�k�q�7�-�2�}�7���o�0x�Q�5��(י`�T���\���h�����E�5��߭3�mn��Z5�`:C�?�y����(����������p%TS�l;���W����mj�oJ�w*����
�ʵ^����-(����?w�kB�������4��Z���i�ٴ�����7�Q��^�n�j��	.�k� +ni5������?������3υ+θWwT]x�p|���E�_�?���ɠT�nt��@�W@R� -��(N�#���o��C���6�D(�e`�JTP�(2�(D"�^a9���	��:\ԥgK��S�$2�̹��!�y� y��yp�%s���9�����[.3�.|�+fb%����h�N|�g|G��
�wM���-fe}u z��RPR�w8�U�u3��c�R@���`�5ۇo<�q��>�[��	��̓uC5��P���5��ݳaP�����Ϩ�ti������>�d������)���(b�4)`$-��@�� 6����=u��Z��-��X���z����k_A!c|�nZ�g�_&�B_�Z�K�t4`{��f>�ic��v�&l�}�oK��z��`#@� ��N����l�}�J��po����������*@��>�;ަ�kJ�e�;��P?>Bthta���_���g>�[5O?=2�2u:v�`.�bڸXD��G֡�h�h�\4���Թo�^y^5/�.Z8r��C�Y7dݼ���Oh�(�bl�
�(2s-���Q�(�
S�]�BBz�(���g!s\����d�Td��.`N/Nb����*�����/�����S ���h�g}<\�qxPA����ǻ`��Cn=��+����K�=J�#}�r��~ݕ�r����"��\�p"����
�Ǘ+��x�7!���D�g�u�^�U��(2����Z��=�6��C�!����)��\�=�#���s8�z���mf�%�֝�vU��S��s�ىz#�ߌ���{���w�kK(q4'X�.��1W;���~����:0ZΚ�J�Ů���k���^���|v�Uf��]������d�������wr�^wv�,a�9*)�nc'�z��2�	e~x���Ǡp����|^K��o��q/�x�t�i=�mf�m�M�L%�3�-�ț�2N
�^4LuW���B��{~�1��������&��]��O��#���K�qh|�ʫ��g��M�&B���A9 ;��GLM�q��C��ضXKy�)85J�o�y���Q6�hF�͚@v�~b���p��-gjW2�B��K��]�Hx�T��Q��;���z�^���݃��j7SL���T�PE	�01*c�a�R�[����-O�rzL���a+��r���o1���pmY5�+���p�"�'�iEg�/������u~*|u��K��?�$2��?r��QqA�F����_n�
��@���e�ֹ�CYq��$2��w��ė��H�\D."ו'�T���z�L��X��
�ʵC��O�$2����W7V�	a�0B��G��V;\'Y�0`�^�a �̊��ԥ��S�$2��6��؎���n
�5�]ωc�1�����*���,�F��1R�ڋ��b.�s����u���Pl�k�|[�F#���0�]�aa�VM'�!�^7j�/E0���ME�`���v��	_�/����V
A&X0��&ؠ;Yi�[�u��Я�GE�_����HZ�'p��.������rn�u-�,0��\�C�y�����߂�L�txͪ��b�g'_B�C�WW����|]���V���~GǞ�8��������S�'qn�Oe'o����m��o�[�yC�����ͦ�Q�va�l�S)�_����&�N��K����q#���<��� ��2ڢ��0?�Y� �����{�by�흝|H�l��e�0yQ3���B�.�lm.��xߏ��'�X}G�J�k١&s�iJ�L'@��n���ًA�����7W��ưϴfg\,�=�Z�Ű�Xc��(�ta;�2�w�=uZ�v=̞*�]�)�)�P{�k�af_���M˙��Ѷ�7��.Df���Ѐ��	���d��k�}ׯ���5D<��T��XV�Ysǵ������K�9�Я��*B#���Hh�����Bqߑ��Q����pqAxR@���~TRq*2T�?3�yw;N�쁜�=&B!��D�mi��gyBJ�C��! �:4)r{��u)�`&6��Ȁr�tBa�M�$L&	�/r!���xP�d#$a�]6}1*9��y��QYTΟ�(��0I�$L&TL���!'�"'�\��.B�uU�"C���:*�#ё�Ht�q��W��t=gJGu�����m)�J@NE��8&�t�L�I�$B!<B:�*���lWϳM��e )�"�CWV@�(2��?$R�"�FÃV�(	�J����6�v�[�${�W��nX�^&�"����(�|��ʗR�R*ߗ(+%�t���&����Ei�d��O}8U�VQ�bd޽:�뜒�I�$/!I
��%,��q'$��=��J���2D�&iQ�ӂ����Y�w&�y	*��K���)<��Pq,}�e����AR�"Ôy_^�w囘���	��
��s%7<9���H1�s�����@�J�LE�*󎯆*J�)�B�˅�������)��(�Ckd����8�Y����f4�z��\'�S�)/S
��.���ə�q��<Η"���PV��D�,�~��,�����AT!�U^&������+�aT{�_�`�GH�[�m\�̻ >��~ވ��֖?a�B�q����ΰV�H�f:y��(�)L/h��(tx�N`5��C��UF���hOt�@f|~�^c��_��<��P�k���v^Y3nA�#�����]�{�i�u��������9����6���g��h_��;Cl�o��t�����~��5��dÝu�+(�罩;:���N>����L��ܒ��LYP��`ޯ��m���}�(x����	tEO��ti����hd��s��1*Xbs=��{���d�*rO�ʸ�@/0NX)��d�G��� �Ay:�Q��ad3��r�V\p�����yj�|-`�����TŹ��H�A�����EA��G����#���'<�vhx���'_�Ͻ�.�C.*�T6ͻ�X�G����(B!�!�����9��d���'r���j"W0�Gr�S@\".�� ��J\��Y.����,h�ޞ�9�!��|L�T��*���=��Hҙ2S�)�ԕ��Ji1�z
e�R�-'��
������HI�;(O����ik��[lw�G$�l�Q4���cZ'H���V��<Geu�hI%�l�N. VP�-+ȋ"C,~�N4H�v7jl���z~5}��'��:`5�����vM�͍߅޹	�����w�ں~-���@F �* .� �P�\ՠ���B�k��Ջ́�%��dXw����    �D��q�CۂN�J��=sK�߶�1��p���a�o2s5�玾��2�����[S�&�q��F;M����'��@;�uІ6���������~LY�l����:�å��0���x:>�g���H:��F�@Y�U�@#����ovrn��*�c��cDts! p��͸�X�F���_7ѱ1��'�v����������O�l�[Ij+i5Y�d�袴���a��	v����Um�:6H�bZ0���|����<��XW��PP�_��M^�u��S*Ճ
V�����Y��Q2�����&6��g�'�۾n��Mz�/�T��?<b����1��t�����&��J��eM���s:T�ȊK���gz���Z]��MK�E�2"���������
q�A�{ޅV���.���m�M�)Ȧ �������M�^dSdX���2���ԅk˰b}�$����9�L�hCom��t�� �7�o��:#��cWc�,D_�b��׺�%�y4�Yo�Ө�&%m^q�(1�r�������@�pE��j�r�*V��B��h5ZKщׅ�}�bѦ$2|R�T�|2�G�O7�n)�A� u!%�� *�)M{�	�Q�=h�A��%03��W�p�D]^5���a�iU�K+[b�P941$�Į"��K���\����9���,���=�"��X�u�ܩZ�*���%a���*����f��3��A�D��b�~���9&�ܱ���+����`7[�.یz1��&ԆR��=��9�V-�@̅
���@Ok\8[�ko=|7Z[;��q�9{m�;�6����=�o.s��/Xv!��1Jo���>��-�O��_�锇�3㌠�4�=��?�3%�?���e�0j�-�`J�b�	��;���7>ҷ6�4��70냾N3�?&�):&͉�����{����gYT>jd�i|�$�F"m�ͭ�Z�O�����W�9��k}j�'lw<��3cF��=��A���ӿ��r��;z�JX������7��ݱ��_���D��|�܃��nh� �T�f&��Q`2,xX�1"�Ԉf=���� ���k�1e���+f�c�~V���as��:l��k�mk�a��0�\%��,аϡ�>y'؇Q�N��g�V�;���w�bz�����o#�U�ö�A�0^�'�c�Btc �`��Ċ�7���7﹀��N����-�93�c�u��)6�#}G)���z��Nq�(���k�E
|VgJF�h=�4��q ���t��^6f��M ��.&Zѩ\:��~F�yoeyT0�MV��>t��G8D�ZAsMC]����i�Y� ���&��}��H[mi�͕����� ����b��������$�>@a� W+�`��
�� .hn�>��������cH�"6�o]�a��vhءa�Mw�*Î��@eÎ�`��}k�0ֈ�G�el`Hq��q�r����h�9�Mw
����8�иC��;4�и�;�����_8�i�tg��#�³�*����?����g*8��Lw� Ķ�aG8<�g?�#���dt�Q�F!�h�Q�Em���ۣ����|+�R� �^T�Q,��0��4�g1��Q3w �������e^�Y��k\y^e܍���L3�����ܳ5O��.����6ig)�� QO4��P����{�G�͵2r�=װ,E��\r������ɟ���>@i�t��m�U���� �]J�m�f�1}ڴ���l�W7��O�?1D�:ʚѹ��~��IØ��iޫϭ����YYL�r3LҮ�@tD|x�-J``��SN-D��9���B}��c�=����������bɬ�#&�9K�+��oJ�8d��yJ�)��d������_6O�{�E���{²�|��*�T�D�>���N����bRA����=��k�$3��q-\�`~7gh��q��g^�8s��8Έ�	�8��Xo!�q��y�p�q�·eX�\��]n>X�\�Lc�=4����=��K�n���[W�vd�|QdF u�%�ʅuZ���xťA�^z1d��/X�od�f������֪��m.���K"�$רּ�,a��A�XѾ�thz�,�P�6Y~��P4;�s)�fE���6Zo��A�1~m�r��VL�>2�g.����G)�bd�{̄&>0�a���t�ώ4Fc<����V/�6��/�K����'��l�`�:ϖMf����>v�4�\�Z�&h/0�mv��L��|�zt��t��s=��1=#��]��s�*�q
�T�|V���T6FE�Y����QP�+T���_j)�����9������i���:B4�[�pÒ^ϋ�D"X�"Љ��" ��,��-oU����@E/k���ہ��L̊�d"\��p��A� n\>2�*���΀F��ǥ��*� EI�������@� D��@�B]`Z,�e�	�.�ΧśiH��A�4� F#�?�S�af���1gv���zΊ4#�J3Z� V+�w��/<�'�{Δ#���tï��V^չ��HSBVPb'���k3�F�Gl7�c;>�}�����\��.5C׆������y�o}9>��اg６]\[p�+��(P}k�<���Ro2�&����6	j�Y&�z;n���w����b���i��5x���Z�2����N��"��PY�L]��p-ig1d�6{gR����� ]x��2�MO{dq�Y�c�[G���G������e0ٖ����[!Ya�G�CB�$�Ӟn��fi#�F�v*���Vj��~�Ըui��7�[����/+쎬6]q����(��֝ǂ����Ö��Z�#�g\鰂�-��y�@�����6*�.D��OI��<����';M����T�/�
��D/U~��x!�V+?%VV�	�H~V�K�+����+�2�h�Ty|V�cw�ET!�U~J��+A,.*��Y]�륨"�ұ�PT`�$�\��U��u_��b�5"����ӑ�ҁN��p�r�%�Mb�e���i��*�Ri�Ty�V�E[,��'=��>���d&�\
-`���d�J4X��U�L��2ǳk�gY�;P�Ҋ���L�Π��|�i��k��.���q}�ϤL�(���x��MS)��'b2>d	<�7s֢�x�"���qMPC�i��>AȌ����b�Ԉّ�)��0� [P�S�M	k���nW�y&���=<��넽����ܸ��5M$�?42���g�k�c�9��r��ϳ�4�{��� ȏt"I(=��)��=@�1��o~�C�c/C�n��@;��b�VX����}���ҭ�i�.��x5�C7x��[͝I NP��ZR�B�!�q^-��
�\80A�v���)�4p��h��ѣV��Fi5�����P�;g���hDW�(-��鞕�')������t�v����a�̔�(]�Z��t}��q�FЛ�&8�h�@7�T�K ��Vҟ��j�t:Ց��&XR������&�V�L1�s��N�A�*�ΝN��娆�K>��ǂa�R��5�`�n�0���2�DF��2��4:Z�7��YX"��gd0���BD?��r޼7Fǳ�$m����'��Ĝ��f|g'�h�A����W�L��:�5���%M��-�F��C�@?�~QH3����ӄB'�0�\�a���b�@��|Q�C>��r[pYŒ�E(Vy�BѸ�����|I/�f�i�F�:���I�$x�����I/Tr�����yO;M���+�Yi~V�S���s	��O�'��E��[�R�`�K�S9��JpD�U��3���Έ!<���E�"q�o�E�U�	��)�(|��_P��λ�Ί4����HH$$	�;?����rG�J$.EWف�2K"E/���>���۷��(�ۺ��bZ�^�X�u�������&�2�}����N/�t!S��3�:yō����I���a���@�:�rb�@��@WP��I۴�!c	�M�R�ѩ	!p�����c��5������O�<:1�t�x�z&J\U�
	�?��P�2�"��������    �ך`���\�8���4"���Ko:���{&<D��k��NO��1�����~��f���
Lꐍe�v�p/9��D.kX��a�iƘhA�2��÷�|̲d�#d��3�Y��i�0#
�)ho�%v�&�5�9�3�/�K��µÜ�S�[�}x��}��a������f�Ǎ�Y�'_F����Z��*�f���p���0�a��,�au�S��w�������Ptw(fk!h�yB����sW�"�sV:~���xx��4��XY���hù�K���Ғ�:Fvxm�S�Ļ��U�8��$�O�D�nF��iS8m
���˱�h������#�!KZ���^԰ą�&���s&�����_�۾k2�J�d�y�Y��:�4���ɨ#���:2�^Q�N:��cub�Qg���?3"m��� �U	�¼|7�G�"��	��W���ǉ�2t=Y�p�Z���� �&�!��e;N�̼(2K����&{�5��M���n��d�����:���n�{!S��[;5��8ߝú��{z�lC8��{��Nh'��_M����A�3!s���~�z��u�م_����0�����2>Wx�۳=��S�}���n+�!��~ }~kݘ���5�k�t��s���7:��VR�q�d`���Çq�Ŷ�ag��v���Y�w�;������á������q+��Z�C�j+�f{��h�p7�ӆ�\���Ā��	�r9��܌�+��rf@���n ��#��B��u��B�0/��E%�o��@tx�2D�0�I��9YmY�q�8N�9~�<��z�?k�h\ny%�O_Vq�(2���ݍh�{r�f?;B�u�o�nsO�	�rB�+�rw����2�Qq�œ�� �����V���IIdx�漽�J�}��~;b!���w���yp�M��;����z�M�=)��C5�&i�|)b	�
[�D���6��x�M/W�	7ԑ����%-�p�kh��	����������֗c&v��Y�:УxƯ|�3�`3��&�P�g͒�֮��	9}0��@T�F׃yM��hw]S��<ޡ)�h��;��XY9�Їű�@z��V8�Ǖ�{&O��q[����W4k��������Md5�Г�A8}� Өc�S�"B͠�I���}^D;�X�N�1�{v4��җ�l��>3��P�V���;�}a�<4�4S}�\�f`��d�>��ԯ-���0fL�]e�r��PHY�j]��@W���n�v�6{m@I� ��,C\YW���%��j��om���.t\�h��O�}+WD&̽���p��K�%�s_�����+=���@�򭆆��唿�$���� �.P֖�"�DId��Uٻ7ǭ�ؽ{�1�uw�.�sW���;���@����_��r�^���'���=�/���u2�F#�ZcI�*��$yEh�H���,���	���uw���~�J�ưJ0DTe�_�Q#N�G��m�P¹in�7�M�ol���қ���Q�L�~]�i ~SX���;Zqfb�cg�0�.�dT�׃G{'����:q��W�<^Рu�.������t6�j�M���Kƙ�BY�\aX�EGV�X��jt�+[{F9�fc`uQ�xɠ�O�&Z�E�*��dWԝ�Si��B��$�)*���3{=�	��-$2��D"�L�e"+-�U-1EU��[�P�0�˪¢�LQ�����w�v/���]�*�6�% �	��`��O�R�8g��v=C�^��͙��t���41%��nX�]��o�\�܍-ǹ�F�\b.1��K�}��^W�a����{��i�/i�zuױ�SX�$2+�����6{��J@�Xk�q�`��م�U��L���Z��I�0LOy	��9���+/�^�~�'L.� �静��[�Y���GR�%=1��;Z$%`��#��\R��Pp�s��6=��K��ձ�'`׃F���&~5�z@��dX�(��::�}NW��Ed�$��]�v�?bV5:�#������f[ƟЬ�b��
��+��,�0���5��SVJ/4]��n[N_��	�`�ϩ}���\n��L��D���f��e���u� �ƦB��������xɄ�9ls�F�x�z�ܙA��(m=��vÅ�bjYeOo��\��5�Qa�شh�ڜy���5�������h ���	{o�s/�4��~����42oc��djp�������8���K/Ԭ9My�3%�Ì�m����&�_:������
��Xз��2$L��;�A��Ctj
Uŉ���</P�]s\ �v���6�
7'f��9�]�8�� ؾ�﬿CD'�щ�W��._�Xx
���0\�0�N���GNt�x�D:u!l^��:#�[���.|i+t��ߎ�k�~��yiߞ��_�}{q�K�m/\�U��^m���	��$*��(~[��=?X`Ze{�����_�M_���(XV��0�$ۋ�#����y��3O~����h"���*2�Ȭ�"f��+��;@u4�Z U�K�@5k�j����Dy� ���K.+DgD��J�Ѓ��#�m�K�&|�	�W߫y�+O�`߀P�ow��\��E���_�@�Л��H��-�{;:��P�y����>�*,mj!�% ���|����X<��%�����u�:q��~e���{�/�޿d��c�se�,��Qz�lei���VsgGg%�^urG��ٽ�n��4�+z=J�H�i�ui\��3������d���M[Vè��*y1L�F����|�q^�k�׊J�s��N����T`4��	�b��L����2��!���I��Vs�	`t��胠B�"��P8餩�?�C��h��6�y(��Τ��pi[���xm�5���Ձy����r���ʷ)*��(2J��W�{���˵V���_����Ă���&���Pkd6h�Ռ��\!��	��x���g�͋#ĵ��~�$�{3���PD"��G��bP �C����W@#����2��.��#�T�dyY��k�ť0����ay p�*BG:��'C��ӫ����A�J,h��f��� ]9����(��ī�
�w�7n��ai0x+�r/p�׎��);eV��>�eWe{����6�w��h������2��pWSs�x2(����
h�#�ٿ��(�Ww�9w�y�Qz���4>h1N:N:N:����h���z$����E�Ej��E`�j�(2j��7�����.������kw��0����^c����g���5�����]�8�A�t��c�h��<6��t���(gm"�9.ktI�&��E��%��R��q^�ӧlr���� خ�kj�I~�h/����0s���X����?�twk�����hJ��΀'d��g'_�7�>;�������<u,���إ�j�l7�h���K�~x�߆�t����O�튵��}8�n4X��#�Ƙ�n��K;��� ^��<	���f��4�����bl���}��y�M�g�����V}c|ɮ~^�پ~�� {�kv��dB2w�	�Y��W���:�ו��#��d��]�GUw�:lϟ�zfD��<7����n��67�-(���o�#J%��D�����JI��Z�u��}��tE͡����fX�s^�3"�̐�I�$f3�ޙɡ#TڙEf,�¡i8��`I���a�¦��*z�_�ǩ����oR�߿g�厳sc��J"%��H���Ju�қ��ѣ��|��Դ����Μg֌ȰS\4`���ܱ8���I�$p��wqٓ0n����!�+Y|��xX��-�9�������f���ވFq�ݺ���q�&؜�}�6#z=��Dϗ�ᄞ��2��0��� ���`�|�Q����1N�S�ͽ�-�����]�� �O����5�_�u���%�@]0��.[xs���pT-�Q0�oZ��(Q�(J%���m#uI��
���4D%f�êͤ�� �  @�[�_�X��|nO%�C��?���Z��n0���FH���~C�UA��RIdZql���w�	=Q�(J%��@�^v[���1�׽Ą`�[:���4G�gRH�~^��7[���$9�f�|�Y(��J��딄�T��VI�\V%MJ'��zё��I���L���r�GBFY��e�Q
�^�K!+D:��8 8��v��Q�����C�:D�����N8��6�F ��q���a8	.+��K"3e�8X��A$%�I��/l�x�8{�z笼�]f�ͫ+���
�Df�XqTp�������0n�$��(�'��I�|���QK^VƬe<�����.3%��e���
\z���!�xI�|�2�p�"/�/ZK�2��ھ;��aF�y��d�{Q�V
K�`I��Q}�3�1�/���]�JJ87�6�,TF��!��M���h�㼷�C�_��1���Jw��xN�|�R���E[���Fډ$�{�ԯb���3��iع��D���vc��7�ޭ��Km?��ͦf���GNtjk{V�p���(kw����5��#s�/Z)�RE�5�ݍ@�_�i(i�˭��%��W��"�urπf�q�6�c+�P,��^ ���ԭK׆�*��(�J�:�r�3���6$��T7�n�����q�b���1{�]wCI�O��+��������'j
��~X���'�V
*b���˩+�(�R]�"��|F�JjIo��Ի��q\}�)/�������/��+���ck�� ��G֣�a�Y�� ��B�!�Z[��B|���L��\�;;%�-��ath4�4�4�e��`%��t��dX5S�t�j1�����\N/�c�e��
��K91~ώ?�מ��F��_pw���x�w��:�!��ˮ��jV�r]���ktt�"+]����\�¯��E�������~���=@      -      x������ � �      !   J   x�3�,-N-�4202�5"C3+ 25�33��60�#�eę���Z�X�O�	Ɯ�)��yؕ��������� Y�'o      4   S   x�u���@�3T��,��J-�_���Q�/3PX3k�`Q��K_FM¯8_�:*Rt�G�&�8K4�������'9%���_ 5          a  x�eйR�P����)R�)��*�0!�86��$��	�D|K;����'�Mdq�✙3�͡��qы����~��y?���U���g8���[����n�M��(]�~�+�;����#)DBMR,�� �Dc��_���|� C��e1�5	6����@�7�,Reh����*�P$f�h~\'��~p{�K`"V���!y+��|��b��V���ٵ�,��&Sх��OX4(��Tg�<>������y�����D�Uv�CЄ�dTa�"i����|_���j��j�-h�C6
�~3�>U���O�J�����$1��c{,�F�2�Ļ͇+��?#����ާ���Kҋ"I��n�     