PGDMP         $                  z            TGdidong    13.4    13.4 ^    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    204   t       /          0    53250    contacts 
   TABLE DATA           `   COPY public.contacts (id, contactdate, content, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    216   u       1          0    53266    news 
   TABLE DATA           ^   COPY public.news (id, title, content, datepost, newimg, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   au       5          0    53301    orderdetails 
   TABLE DATA           >   COPY public.orderdetails ("productId", "orderId") FROM stdin;
    public          postgres    false    222   ~u       )          0    53197    orderproducts 
   TABLE DATA           w   COPY public.orderproducts (id, orderate, totalprice, quantity, status, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    210   �u       %          0    53165 	   producers 
   TABLE DATA           e   COPY public.producers (id, producername, address, producerimg, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    206   v       +          0    53213    productimages 
   TABLE DATA           ^   COPY public.productimages (id, "Imageurl", "createdAt", "updatedAt", "productId") FROM stdin;
    public          postgres    false    212   �x       '          0    53176    products 
   TABLE DATA           �   COPY public.products (id, productname, description, parameter, guarantee, datepost, price, quantity, saleoff, imageurl, status, "createdAt", "updatedAt", "categoryId", "producerId") FROM stdin;
    public          postgres    false    208   �x       -          0    53229    reviews 
   TABLE DATA           �   COPY public.reviews (id, reviewdate, reviewcontent, numberstar, reviewimg, "createdAt", "updatedAt", "userId", "productId") FROM stdin;
    public          postgres    false    214   Z�       !          0    53149    roles 
   TABLE DATA           C   COPY public.roles (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    202   w�       4          0    53286 
   user_roles 
   TABLE DATA           R   COPY public.user_roles ("createdAt", "updatedAt", "roleId", "userId") FROM stdin;
    public          postgres    false    221   ѽ                  0    53140    users 
   TABLE DATA           h   COPY public.users (id, username, email, password, phone, address, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    201   4�       F           0    0    banners_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.banners_id_seq', 13, true);
          public          postgres    false    219            G           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 31, true);
          public          postgres    false    203            H           0    0    contacts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);
          public          postgres    false    215            I           0    0    news_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.news_id_seq', 3, true);
          public          postgres    false    217            J           0    0    orderproducts_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orderproducts_id_seq', 6, true);
          public          postgres    false    209            K           0    0    producers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.producers_id_seq', 15, true);
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
&F6Ս/:��[�N��a��҇	� T&®G�8�Ux�#      #   �   x�}�1��0���SdW�KҤmV�;��ѥ��/�t�O�*�|C�۝�X� �&A)�����4��zr�;z�Իpi]"�R̄��`"��Tu6��M��r���cBX̸�s�$0�X�����e�W)I�d��B��+V�������|M�ZrC��,�����9�J_�MiQsC��ET��S�ٷ?�y�Q/� �W�z ��?�\߲C�tcOYT�hMx�K w��      /   D   x�3�40�"##C����<CNS��P��H��������L���R��M�����X��$c����� p��      1      x������ � �      5      x�36�4����� hS      )   ^   x�3�4202�50"+0�60
� �!�<2!1/]!=31_!����t�&C]CC]#C�&#c=K�6��PN��,a�gdh
�2����� ��2      %   �  x��T�n�@]��bݑ����lPH#RQ����E�h�8���1�)|,ف�VtY~���TQ�!�J#�s��=�;3�Uj�,� �C]&-ؿ���7��� ,�"7�8UQh�٬E�Nql6Q��ʘ�0�:�j�ˢ]<]�l�i�j̄3��=�(Ϣ�G���`2�<�0ڦ�MmȘ�."�{F�}HTQϭ ��b���-��$�y����8g�Bz�z��3\�����bQ�S�0��&ۤ���u���������r$'HP� x�l0�����A��Y�����|��*�����Zu!�7��p6��RI��<\� �Y�d^&	���(q��|G&�THB�͑���Mh���r)<)|�<Zˤ�d�z vˊ��3݂]��s��b���\�N�'����4Q���fAD�r���r��J)dt]��|j�Z]pqr1||�ϔ�����~*��l"vm8�,��t_����Be��
�����_����f�������L�<�4��@��{��OGJ]�?��!dQ:���ӱr�\�Y��E)8��uy�ټ��L
��l��(�����o��$.�אh�(�nD�x��_��KV)p�N�dQ��;o{' .�}��1��� �6���#�xSA�$սq�o�%�,�%��6      +      x������ � �      '      x��moǵ�_˟b^6�]����$ے+Q-9��o�&�"wr�H~բ���(�4(��"n���m�47�("����{���Ι��.��H�qbw�Ԓ8��y8�7gfΜ	6��M�����,�%/�E,��%q�q�����8%q�Ž�?��io�~�&/����_�i�F�m�����c��M��=x���-օ�?��/|��xq�ט��o�����kO�����)���?��f����d�o��;��3f����M?�����)K�P&��	�N�J[�W��5eG��7���X���ߥ�d���z	d�R���d9E6X��N�g� k��v<�� �M�e��X�/�z��r#��<�� ����u��P_Rl�t������������gOR�z�����1<vU�^6/�u�k�P*&�o��l+J�U������㘝L(�t4�oh����?��;,d/j4�x�a��~�+x��-Tc���ԛܚ��P-�a/�Mz=���/@>����\���N�aA��7��:g�ag��t�(���w�.��7`&�x8z�A}��Ag�q8i0���_�({�YR:�"~�jdC��Gf-��l�5��@9�@H5>�Ѐ���n����	��~t�(������a����:������=�`�6��%Q�L�D'S�
��I7���fpJm��ǆ�a�v`��68��K��Q��ڱ�v�m�8������a�3��f��a�z4Ć�,�v�A�Z2��?v7Z����މ��g�mN�tu�����'��
�<�X
����gK�G�G���e9�Ǐe8f���҆�D�'Z7�D�@�oX�8f��I!�o��i2ڴ������ǉ?�u����:l{�n�2w������:�!v�ﲫ�pg��F��ؾ�����|����=�;&�F ��ۄ���!���D�L�1�i�jz����A6j(ؠ�5�p�Rk�x�ɩT��Q�"T����=�� ��ǽ	<w������_<��o6 �������Y�٠���(-*����+Y�DTWg �	�:��F��O�ZT1���4�W�Tˬ8���GT�'fe��b��;�>�қ����;���@~G��eU+��K]�v��A�	q0툐U{<��a�>��H��M�K�{�X��:��z��� }@Cr�a�0�/Z���T�_R��lҸ��B��$S�D����,Ch	,O/<�>8	u�0�*�|oe��uӵ��A`�@���'�ыN��0��XV ���~	f�IΆű2���."x��1|o�/d߆jm��S�R�R�z���D���e��}bI�5��.��l��X:��*���%��p����1E+E+E�W�V 3`�7��m�cgY�t��x�:K��7LG��̤2	�0�s�����yN�'�O�ѨOu�447�*��l+E+E�W�V�[���l+p�:�UZ67�N'�Cn�č�Xf�7�
K��D,�d���,��Q,S,S,{Yf�cx��
b�Ro,0�����
��`A��~�턃�;,�@�=�ح�1�����kFun��������4s��. �*W��q��;��5�]�
7����s�Z{��=��5�&4��y����1�B?fE�Hl�6�d��Eφ[�5֟L��t�����W�/�%�+��H�wrJYH
��[���$A;b"Y�7���1�E�ʍILnI���}$��,�2���C���SP�	Bs�߳u�@���NF̈́��2^41�㈝ ��ӿ�pr��9}؉Y���w!�Ht\����޹�a��m b���5 B(�h��=q/���:���-�w'�5�"x��'�8����<$��g;�P,Dk"�s/�k��I�ӯ�N�B�x?�� ���G��g�s��L�`hh��F�Q��?�0��k!Xbo�%�G�o~�ۚ�Gڄ����Ǹ�B!:�c�6��i̮_�c�zv��J�1�P��:Q��ɘr�L�`{���)���@
��lQP,�՛�Ptڀ�&��J6�I���t1Fe�>��?=kQ�B�Na�[��V��l ��PY����ǧ8.������.�h��j�Yc���L�m��z �u-�;Z�iC?x o��[�Zvx�vt�{��M)���p��8垢�S�{�� ��g��;�*x�e�)'`<h�	�r_9n5LOw�
_�R�����)))���f��k�9��%�q�i�.9Nr�I����9R�Q�Q�y��S0~��}s]�7
�Ah=�y.���F���
��>��/��b�b�b�+���V���X��q�|L��N&q�a[�cWͶ�ID�\�p�W<��x8p�qs�p�݉�;ː�G�2�w+�SL"�����u[�G��UFOa�g��e:zNF� �h�g��|���Se��>���p0�}������M�d��w�ͤ߶��f^Z���Xq{����œ ����kA����Hg��bM|���������^p7���$& ��+��%pI�F/()g��}��Q-�5��q��m�?Y?���~����T,���?�J�5Lw��0��"���]�?���q��"Es������P�m�b��T�'�?L�_��>�<��Q�	y�9�er��wEˊwH��o��:�j���������19��!Z��"�ž�V���K��I�N^p�D��X(�9�_<�Wh�O���h]V�B
V+��5׉a�w�c�Z��O-S���d��X��0mݪ2�JI��s����f�U�s��������6�/z����kUЫ�D�Z�0��׌RLT�R�R�z��e����Mߞ��C���[K�+hpS,^A�b��Z�^&6�����.�1�5\�\#�ᖹ��4[�
ߦR�kѷi�]&gw�)��9:)�)�)��0�t�	Yh�w�6�L�"Z3l-1�7���F����D[�RX�؏������e��/a��5�O�Z���ZA��I��EW�
L����)��W����2|˪��V]
Y��W�GSX������3N\�wBU�Yx�?`��O��~R�Ͽ(�Χ��4Bj�qt<���s*ӔZ4�D�\���`�Kj���@�E�~�bF�h�����ۍBۦ=!���S�_��#�v�g�KAp����&a���yK���i("IRb���(�F����3�:�x*'+���il��X�Z��yMH+1��<0ݩt�"ǻ�[�h��l~��j��yD�d���C=/�Qx��=R�1,��0 Ő��(�Q�IT�~=�{ �(<F�y�֓��Q戒)���4����/.G�������S��W�\���:'����z2&��=Ԝ�3RKF�7l�1�&�b��a_�Ȉy���ȨȨȨ������u���a	4���~����ن�U�/%}�w7������ � � ��.nbZ���C � K;�1]�'+`4,S���x[�$��7\az�(�(�(�(�2!W�����	s�b@��Iɡ �΃�SJID�Eϻ)%%%%�SJ�k�'#&�"&�\��a�m;p,&#%�pt�[8���hٮ1����@��tˬ���D|\t}��h�4[RRR��a�HӲ��$ۦI���#����mU0��D�\�>Y�!���q��''''�Cgw�I�a�E;r@��4V�@��1�ۭ�d1�(�x����8ao�V�8�C��̤V/�t4��Z�yR�'�����.^4��D�e.��/%��``K�k�xB9&`��N�N@�HfPAd](�2���B/���b���9�GK�F�����Re��bѳ���L�a���f�Yt����$W����2jv�/��;�������9���9ս��֥ppT�o>���tț��Nڦl���A�;f3�V��!$AxC'tY�p���/<�b >����<NQ�rx�)����A�q�~b���]v̀%��Y���*&��k�    ��}��7}LLL~X0)�^%B	��'��x��P.C�i :����&��DHY<�!�+�(�(�� qR��0��;�M���b9�4����f��E1�b/�k�"o�%SSS~PLYk�c�.�3�e�,P(B��W��DHY<@��/����p�p�p��ĵ-.prꙹ�"�K[*���*�2K"�,���8�XEE�E��^؆黒(�ׂ'���Ġ <�Uq���D0Y�2�0�4�1�)�(�(����R��c�?p�)�<��w�g���X��$ˢ�� ������RPQPQP�!A�Yˡ�1<ǑT��]�.�鱐v�J)�P���|?
�T�b˘���f�?�T�kӤ(��{(��B
�-P�矡�S�/K鐼�@��w����Z�0G��Zɒ��z�Ağ
��_���e�3����0��|'}���j��P�2M�e����'(;�!��x�Uy�!TWg �	�:���EIXy�b�O�(Ŝj�Uc�ZDș"�A��f�y�O�}����97���
~r�Cn��R+��.r�~G��9�vD���=��r6PC�$��E��)�a<}���,��~�d I,��%�%ePh�&�Jxʁ�]�#�t>b(C(O/<�>8	u�����Y8��n��W�<q/A��p|�u*Ο�������;,�e�h�h�h����\�F�k�v�D���D3��'^h���)&�v(��vx͘"�"�"��F(���b���:�]>�sх�7�fq�$�Ң�"�|�%�%���K�ZXrM�u��t5��Ԡ�M�5���%���ZC��Xh)�8��W\&ݳ�(�(�(��Qj�Ku�v
�"�.����m�ܩ�H+&!��E��=�v�v�a޼�Gxк��G���(R�Q�Q�����j8����hH��cg]B,�_Y����$$���V�.;&����Ҏv�g]+�d�Q�D����{a�걱ؚv�m����T�{ӯ bg"L�xr^l�����GI�z�cR�t�l'�O5��=�T,�����l��\h�ׯ�
t��A;@'���J%��[���:��e��X� ����h8{�6���A�@�N&�&�W��F]��(�V<��W���=p����e\w W���1ſ�QM��<��B�X����ƭ$��q:��ݴ׉;m����C�x�$�h�����(%��h�>^�%\-���=�߈P��%�qAd�W������|<��;�*F�F�;�G������&!���2�_�GD���Sv�`��y��u@1XS������v�;<����ܫ7;mL�f�y�!�C6�ֆi�]��T��ظ�dȮw�}�"�� �q��;�fb�u��l�\b�ۀ�;��-�1��4v��z� juv�������pn�}}��5�T���l�w
f͢.�o��d���������ˏYA�&�,�Ņ�y�g7�fax��_j���؊�����0�J1��x�堎W�a�ѷH���ˈ���^z"n��P�I��
w�ݒ��	�K������3}
�.:V����ٺI(NF̈́m%��&�u�A��?����ٝӇ ��7
��"b�h��OH{jy��!��o8��� �	�-���\��x�uL��U�N�n-B��vP�l�'�
��j�]�(B1�P!�s/�k��I�ӯ�NV	J����R�����AρI�	���*�����zI�_��/�d�~�ɫ��RʆC�Ǭ' L�F	�~;�P�Z���;6�9G����%���?F(�e�(��dL9Z�a��݇Y���b�*|�((�������it]�E�(Mؤ&��,a�fv=�����(6RO���e��"���0.�l�~B��)ڝ))h�i�K`��î2&���\=�]7]�{��Hk]���历��F�6:? :��������0]���^JI�FpŵJ���0��I��,$�`��:;^���`Dt���a���љ��AF2j�Q��d^� c���
��c��/��d����"O�x~��b7LO��n&*%����г��A��U~"w౛7ؽ�f�6�d�8��xt`D��'a7g/^4Mk(��Y��Å��Q�g�F��<&��o��y�}���M�[���O�g���1[I��L�����I�m�.���E:� �ю1�R�-$'�����>+Hކw�gt#�p*���#��l2��M\?��h$-��"�0٫�%�x	����/�1���r�bV�Z�?���������������9/GǤ�P�	�o��D{ڃ��^� � Υ������{V��e1��p����f���N�K�N��L�ҾE��jj�D�ʰU��2l��vٽ8����9�'d�ϗ�wp�^7�
��Rڷ����c��û7�1��}�pw��X�0���!ۆaH.��ɹ�߻6[P�(����������������w٭8���v2���S���(xwa )�ϴ�|��d���B�J���x�7B�ׯC����d�}���j�1a%�'��J���K��¨��"�M<{6@�I��(첷_�=�c�����-�9�ZnbCc�L��04ф#���h n"�Ӿ�_���N�_���߃�7�xX����`���]4�OƇq��ZH�P�C���?�d蟜��䋹�����&���_�� D�=�)ɶN�s�Gn'8�1m=�=c���q��L�bGP�n��Gr����H
H؊n���ǘ��� r�
��lWp�`� V�'�6OQj>���E�*|�9����4�Ėh�4�*��
�k,�;�N��f;�dNK'2�?8��ZM-r�^��{��I]Kby�;w%�b��`cnIBxIX�vf�in���D;d�	C9a('���P8E���a��̯,��:�Y�(]�f^h�	���l��/��Bn�w����=�;fy%����:�h�h��yxMYuʪSV���^Q��2|{����f�y�Yg7,C��Sa��Ȭ���	~������a��pG1\1\1\1��e��z�T@�خU�p�;�<Ћ��%F� ��0�0����$�D�;o��w:����؁���1L��G��;���zc��	�u�= �i��N;�ӳ(c���ڇ�����_M���Z.a��@�(�j%^g�h6�
d}���F�v��L/�G�h�V�~�D�x���t�$9bw�[��YpE�s0�tvpp�~�LZ��~'�oO�g���m�t�(�]�]�]��UŻ��]��v�&@C�k��7;!��G����[j1M����$As����'	^��	�i�s#}�s~�|#���_a��|�4ӽ2�K�"F��Vy��U��b��x��v�'x�D�㝔�7�[{��Hn8ܸ[XF�a\��77��~�M��A��@��˸��H%Ԫ��t�k��t�� Ӟ7���bi�[��,�֎a�7�4�Μ�:{4���7�� zrN�˷^�ѫ�:�Q��.�
)���������D�\GG�e�w���%9n�D5uv@��h5�%"K8���t���q�ˏfnꗌn4��f��e ̼GrWq��-�@�ҰB��V��x����b����w1~�� ��FQ1�bm(s��)�~*B�+�闂~OO3ϖ��Ni<�cNv]�H8�C}��_��eȅx6\�WcqK�-Ÿ� d�=ͩ*5���I�Lo�X�^����ZA�O��������I5O�V4�R�7�1@�u|����woX�ŃE򖒀��
7� ���A'�b�#x�x_0�s�� ���en����h?�[���\L�_\���9o� �ɨ�:�ia�J�gkh=Ǵ��\�����hX�ŽҀpL'�f�2J�3�x�3e{O��SV@�ط�$\>���V�i&y�b"��F, $Ȭ�]`�ɦ�e r���q�l�x�Q��N�V���c��W2�D�đ�7���<�{��l���*�Y�ܐ]8cS��d ���#�P�_�a:ړ����SMy�	GM0�]q}��_��*a���)��,b��~��t*��g��3aVl�
ނ�G�#�    �d��-�%�؃��v4;��AR��8g���?��4+��R�7o��>�yW���B$��-�S��um񼓺rie�;�:��\�t뽡�8w4A��Ao���?��|�p`�T�ץ$��	��ʿC�$7�Q�A��nǯX&��̟N��&ΎaCr��s��|[]]]�u!���Z1	|�A�?�Ւ���g�u�y��/,Lܶ��i�ܮ��,%���%��ۮ8h�+U���mB��i�D���5�f��L^ښ��/���8�y΢I�w���7!d<�5�K�k���>�*l�b�\1�
���Lh�5C�X���s��qvվ���h+�Y���lVf����6]���� ��	�����;�q!�"p{�kpC��B��$�b��G}h�̧��}Ĺ�V��� �ǳS;;������-h���rڊ��������=���>���<���	�n���r�Y�&�ۦ�x���S$��j�ܰx�:/�g��o����){]q]q]q�5⺵�u�vô���T�yd4=��G3-%ѹUq���$��x��\�w�ͤ߶��`Vͼ��PT�+_\-FL)fQ[<	����`��,��'R��~���{1��,�ꄢ��2ȩp�A�0��A
zy����B�t���q�i�����������!�H�B��V�N�f�уB��b|����@�Jj#���7�h.�pZ�6p���!
h��ONeL��W�:�/<����air��5�H+��~�H��/��t�_P��w%���Tx�SK�YH,j��!�䩸Q�M����� �0�G�(����U.���vWJmu(����:�n�n���� �O��q�?n�B�qB��ތ���B���\񜥣ӫ��**��J�}F��׊Jo:`
�����_fQ�y���Yn9��s+@тY��p��]!Lq��Ӧ[���D0��'S0�Bv�~g�7i�2�Md�] �o��3���=�n/m�~$�;��Ԋǎ@I7�H���G-���sR�rk�,�Y��c��>i¯���a&�~^ă�i��B:�!-c�)��|f,�I�}�l�j1^�K���j����雗�D��Ѷ���gE%�H
0���-7�o�J�a���F5�����A����sۮ�COC�^j���hdW1��h�7��H�6�}x�m���n�����"G+3ci�_ٓ!���s  "G�Z?�h-�����0a��?թ�ٻ�D!�=w���ݎҎ22��������V�~!+�7+�\�����aa�?��2�Ihex���������q����+�g�"r�"�b-5����ӗ<E�^���,�������8�G�$�I��ĨI���W�/��7v���$N���i_bN��o���~�<��D���Xg���"`� uf�s�m�HsLV^)�W�B(��V-,�����L�������It�P�]b�x�?wq�b��z~�����A��&����/tF�@�@�`y�}w�5L�����4R�]�h��O�L!��pp��� ���|.*�b������p�d�|07 ���P(P(P(X~A�Zo&`bl�z��b�F�A@��2S���z�W]�YL���K.mh��������"�"�"�
�κH˨��<�	��v4TN�8��tː A�����h�N�t^��PH���/YF��ߨi�"�"�*dp�\4�o�E���s�Ӷ���ZH���-����?`x'��r��J˗�M{==w���㿧�j��Xk'�j��6lo!T�b��zw���VwWJ��\)��J���o�0��X���J�ez�5L_7��̀b��k�l����d<�������mܦS�-r.�e�A��1> *��C�I�P���eH�B��R���j�P\���36�e�������c��4�TR�b��a�Χx�4%��RM�<�௯�`ǖ�Sc�t��Y��7�4��8"�|�'���6IU����5�t���/������_P�e�酄�"���uPp�cQm���[:;�n⢃��V���?ꤣ�Η��R�Љ�_c� i���y��u�B�K7
c�[ sN��7�����^�):,��'��ޜ~Y>\]>{Fc%�����Յ��s�e��b�D�P���avۘb�k�HsuF�.��3m۪?#�4 ˠy���5���ނ�3�$��/�qG;�}k�����A�5�y��¤¤¤��w�I���6�%�#�����H�q�h�u�0ο�%Ih
�
�
�
����� ��f1�'h����+Z*Z*Z~ߴ|i3q�]ë��,I�oTn޻��q�8�>T��B�B�B�K2,��K77,��F� �5n�3�Ҽ�A�pun,xh�%Ix����k��74�ȩȩȩ��2<��U���3�DW<���S�a��i,x��%IjZ�Լю�j��p%��ͷ5����|����L�S�S�S��x�0ǧY��i-d��yp�k��y<i?��\�8��_�Sn4L[�nžP)I��^��[�����������f��ۣ�9@mj挨�L�9o��n���R���H�2��y��
�
�
�
�/q�h��w3�Z��5oi�Zvö��jG��$)�^Jџh �lz� � � � ����:�B���!��	V��_Q�;~��R)IB�� Q%D�ngsz�Q�Q�Q�ї��U7�m�����
sz����Q�Y�i�I��9�����|�I�T�T�T��;_��i�0�ic�X�"��.�\�V�>S)I����Q��~K�T�T�T���٤�G��Q�3�o�2�w���Ug�JI�Vř��d08e�Q�A������������i�S��&���èE!A<�b_��$yYqF����Õc����Kؑ�k��Q &@k)`��^ݳ���%I`��J�[1�����W�O0z;�H��G�,�`�=XJ�qH|\�z��5�躂�t	,]����&=��$Ӟ�����s�F
1�(B��y���E7*��?¯�y����-�:	�,�R��Zh���i⸁U��	�Q��Zk}�n���k�����x�/�lR�G�cp����*��}�Eڷ5J@F���}xn%c�dxʮo�k��וf*��ak��׮d��A���Pk�&-��ʡ�[C��Z��G��$M�L�몉
�/b�H���^�������qg4N��L�a�=v/z����1��kJQ�����2�RT�L�3E��8S9��2h��ԴB�&�Kj(F!�RCgIRC�9���Pnx��7Q!�����kLi����F��^e*���օ�	}ëH@3Q	��`T��M���C�a;��zzXLzh�H�ߛ�8`pP����[�;��;R;߱�.�RO��?p�,�����Z����C�mN��%�>C��P?Pg��HKAE4�u}�i'ѩ��b��W3W3,���C�������P���X��JQ�ꯥ�V`n=�P�.��P-ƹ��i0�.��N�1t��FU�$Z/H��/��f�M��ו*%��+�����|��0����O���Q�ۚi]2#�X���A�m1�t��R��R(�X��Q�"����L���b�3��Q�������.�,�ps� �G�p�}]+o4�h[�%v-i��j*���&��![�=ʰ%�m���l"5����{Ĵ��[�-!�5�����^xZ�K�_L��Ĩ$�ӯd���#M��B�/Zb�Z^�k��[�v�/i�a���KM;��A�@)2=���"f�������(�#��#n9�(C��AU~,�f����ӽ��^���&V��������%z ��W�i�����@(~������ԇr����}��" ��9;�a ��I�8d���a��3o;t@t���L��ƿ@���$�}�Q��}܋�y��&�%q�bw6��f�[�NH��D̥�n���	#��~t���Y;;l?�<�ր�>L�=�`��a����&�i��e�OH0�a�֜�d=�݆a6O7����b���^�ˀ�M_GG���o����j���F�*xSLB�p��+W"��%q�q�Ayn6I f�ZS��jMȚ&/7tV�ɮ    !���b�pvC�t��b:�������o�Ģ�!�,P����Lfvy��<����O�6��%�yT������'m>AA�ג⿵�Ld#��'=����$�B&3����f�v�-}���1 ^�KMe�H�X@O�m��|,<�Z�<^��QR�n�FZ>+L�6S�ڬE�#��4ȔF�����	� kxQ��x������P?���D>H����"�xɰ��0�Q\I�/�e纂���n��H�1y=b�k�҆��|�pD71~��6�*��~�[�R�T�Q�Q�yũc���� t�eXV����$�{Z{�\�5 i�4��[�U�b��"��+v���N�ON�;�f?Z�hb��m�R�~S�w��3�%/�]L��B�Y[<	���|}t���5�j�bM|"E����C�f!]�Eeӱ��Z��L�9N����8{�����ʯ�(3z�]������5=�K�)�T?k����!}���4ɩ=�9CܕZ5��9HA/�h/�&P�Aa�(%�X��v�Ҍ�|r*�U�2�Y}*h�+���h,���,�Sl��+ZV�C�z�}DK�]|� '�m�g���K�0��)ODK��R�;��n��
�
�GΝ���|.�����BS⠄�h]l�B
a�#�-N�3��Mߪ��vh]�>���  �YZw���Z�u9�l�a9�?w��b���\�@z�RL�)�)�)��P̞Q�]bf�A5�,��[GK �7l���+%!�s�v8D�齰��$Gbh��=��d�mh�d�a��w떹�Uw8�k�������;�ٹ�����!6���yRT��=��;&��1��sq���ٺ���eXn� $�* ��#��Gťr1���C��<!�V��\jq�\�b�|�2>��=���@�i� N>%'�L�vz�@��l%�j�Uca�Hg>Qe���}��~;�>�b������b#Z�&�W�2���i���-�đK���|N��%�)F�D�����\���BO�i���0Ir�������rC6i�i�z�ikJ{�w쇈Z(�l�NB���:�<w��,���v��ZM@�+��8�.�W��p"Ώ�7K�`���)��$gÿ�8�D�h�c��E����ůCo8� �(�(�(��Q��ע�8�Q� �����qg�o��.|2����Y��b����u����,�u�SB�8�s~���[�3z�mh�;��-�������[0d��A�^sή�sùi����2��}� ��c2C��CM�2� wf��nu�Eb�g6--��X2�*�D�>��������'�+��H��
���ӷh�Ib#f�"Y�8.D� ��+LOQ�[�58��ؖnlg�!���)()Nq�N�n�� ��ɨ�0f�@�&�u��x�\��;�;1�z���.d����Oȩ���;W@,̙����<�E(�h��=q/�)��b��2����h�=��v��\FiX��>�����0�幗��5v����t]'��T�Jwͬ��S�g�s �L�`�@��{�q�K&�B��������o�|k��)f!H�ˌ�@�;�PZݸ~��T<�u�UN?(��L�1B�.�DA(�&c��2���>�z�8vu�٢�X&����":�V���4a��4[#Vf�;�ӳ�y"���V�b~O1gd����ǧ8J������.����j���V1���6PZ���.w4��6r�!�����	�� ���-w*l�R��\q�
w������M=�te
8�#F��*-�(��Wj��\YHg
�'w�[$�qWz�SN�,��
�;.id��l�*l	�b��	������lO%�wQ�'y��7xuV�,�(��l�<l�;�kD���$P)Ca�W7�a�R�$�6�:��I��#���L�/rZ,��,�ܖ�� ��|(O)�����\=G�vf�r3�P�ıӖ�7�����%f܎�0��U�(&�ܺ�kbCN�666֜��Zn���� -a���08�=�;���$�~��c��S^Z���9�aT�����h�k���a·d����������������ɚE!3���:�g���|=-#���ة���RM|����b��q����F���}H9�~ Ç�c9����5�qG�;j�y��_k��1\�+�;��y�� �����Zx��s�ʁg�D���҉ZhU+&j����g�u3[i5.X2��S-�M��"����*kq�b���$�I�"����_�/�h�h�h��4ves�h�r�h!��\�L
�~r'� E1�H�����w:1������ol҄��Ύ'&����z�0��z��N\ߞ>��gQaQ5s&ڽ�ν�k��û7�����`G�no�ȁ������]�,^���]��(jM����[q��mt,��ë��rш��*0�|��v�4!^{���E!R���l�D��Y�����Qh��Y<�ā�g�)I���h���Ay�j�b����87�����=_�3��X�!-�o���(�F�;m ���&�=�|c��4����`���]��@>��Z :5
��uR�s���?�d��)����)=*�8F3"Z���s��C�upF��ў��fD��I����#ӆQm0�Y^��Y�_4a@eGP�n��W����x�R"L�D����!į��Z�}�*�nK�),� e�7qv�)�ǚ�ΠE�*|�9������v�+���V�*N9����N{؉�)trT�8I�����/����n�%R(��*8�6��MW֞���k��]۹`n�M?�E_f�mX\���+&���Y��;�|6ف�n�`��!K-�o��?�4�#��D�CўϹ&.�(�=�v�'b�S�!��8;����\�7)�8؟w�f��A���	��i�v�l��<^�,�Iq�-�*�����xn� *����,��ﳂ��mx�9�΀��:��ޑW&
Ld'A2S1X-TC�lrٹ�W&{5�$/�;*�	!�������*���Łp��-C	H�E�>QV�Y#暔�ӱ��	ð��=�AGF;��/�L�~��n9�6H9��p�����}"쁲E�-�l�umw]�>;XƳ�`�,��g6lO����$a����Q"����߱�
0��?n�,�}w��j.I0�\kWK��g���X�k���%�/���5L_wܪ��b��Ѳ*w�0�nk��ⶖ��DI��ْΚ��ܵ���v���R�Yj;��b�e��׮�v`�ny7��fNN��rKk|L/_Qr&�EwLq[��D�Z����v'N��/I7d�ݭ����ι�����on��{��7��6�<*@W��˸��%T����kiUL�d�!�Ft�<ۿ���"�@ �|s@��MPT*���絾|L]��ׁ���*x�a���9�L��|͸���oό\������hA]��]�"J8�/F˯��l���G���o4��f��e��;[��1�[�0�q�X�E�zS?,.�d����w1���p�B�{xI�1h|,_�,�oCEh9���X5�R�����&���J�t�g�j審�_ �f-��g��p>�N碏��� d�$$;�R��=ɘ������"��iY�>)�v
ʢ���� l}���t���n��\����6�@n1	�˯�<r���d}�\:i�Lb�-��J��7�6�)�*�*�*�L+w� ~���%莁z����z�f �#ڎ��C�ڀYݲ�
��~���� ~����2|]$S�U�U�U���Z���u2��K��A?8Ϫ�~�I�AՂ�7[p�,^?'n�jîal�!ث�����}�w�`*�ce�z���a���$.���-c�kp.���gC4��0m�؁�l{ V��Z��WЉOOI���Qځ��Ԋ�\�b��H|��%�ˉR
��E�ܜ�g����W�pm7�#7$5�A+/�����N\.��7�Z�#K]��}�.�	���e�(/�{������-=T��4�{� q  ��-IG�(��Q�t�����p�8�-:7��v���@�H�7D,�T�y����
����T5n�����Q'��N�u��x,z�p�'ibc��:��t�'y-c�T�N:D����KgOZ�,���,�N+�'$&i>�<��;��w,��w|M?����7	Iů��ɀ�="ʔ����÷�k��J:�6��ݔ�@Ѹ��}&�A���jƘgx�c7�cWCmԎ�N�Žd���S��m<��xcZ��	>�n����pJ�>`,��a46(ҟ���+~�?��$|���0����xG��v��Ȃ�ʬ�.0�gYo�#rp����i2}�
!=���qɲ+�)l�/s�A�e�kwfG��ȊW|�nrOd��9���_�Z� 5����k�\S�N��
}@Ɗ�����p(�t�� ,ZO��?f���+���t�9��}w��r��"[D�W���-&q������n	�z��3H/P�G҄����<��$J,W�x�%�BQ��3k�K�ɤ�'/����Jӟ�Dn�A�����;ڔ崺�T�sZno\���f�{�m ڀO����dx�nrk�N*%�ܾ�W9@�CQx;�IFMZ~$iF�-��q��\S�T�T�T���]��z'��u�Z�'��/1�DP��^��^)� �miVn�0d�0��j
���}\	�3�[ ����O��?A7���[�{�a���Ζom"JK�nCG��[�&�Ȍ1��2*Q$i��#A�,:&tU�AOgol�茪X���E��|N -P�P�$��&:��WÌ�2pd��N,Ӑ"�9�+8��]qI�qm���꽡�GɆ��N�_?����PC��?�M�
/�[S���i�A��H
p6�myl���٧���	��B��o���d���Ѡ(L����N�~��t�tl۬�S-��!h��\5�3�4����6�N��^�*&��mpG7�wV$�f�U�$�$��f$jF�f$jF�g$��ֱ5�t��	�RS��M��XC)I��ؗ��c��T\T\T\T\�Gq�Y��N��T��Ŕ��q���]��ZJ\��Tt��
�
�
�
���SZ�zAָ��J&.AE��}��Z,&��~�ʕ�"��      -      x������ � �      !   J   x�3�,-N-�4202�5"C3+ 25�33��60�#�eę���Z�X�O�	Ɯ�)��yؕ��������� Y�'o      4   S   x�u���@�3T��,��J-�_���Q�/3PX3k�`Q��K_FM¯8_�:*Rt�G�&�8K4�������'9%���_ 5          a  x�eйR�P����)R�)��*�0!�86��$��	�D|K;����'�Mdq�✙3�͡��qы����~��y?���U���g8���[����n�M��(]�~�+�;����#)DBMR,�� �Dc��_���|� C��e1�5	6����@�7�,Reh����*�P$f�h~\'��~p{�K`"V���!y+��|��b��V���ٵ�,��&Sх��OX4(��Tg�<>������y�����D�Uv�CЄ�dTa�"i����|_���j��j�-h�C6
�~3�>U���O�J�����$1��c{,�F�2�Ļ͇+��?#����ާ���Kҋ"I��n�     