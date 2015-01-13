--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_custompermissionsuser; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_custompermissionsuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    email character varying(255) NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.auth_custompermissionsuser OWNER TO postgres;

--
-- Name: auth_custompermissionsuser_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_custompermissionsuser_groups (
    id integer NOT NULL,
    custompermissionsuser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_custompermissionsuser_groups OWNER TO postgres;

--
-- Name: auth_custompermissionsuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_custompermissionsuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_custompermissionsuser_groups_id_seq OWNER TO postgres;

--
-- Name: auth_custompermissionsuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_custompermissionsuser_groups_id_seq OWNED BY auth_custompermissionsuser_groups.id;


--
-- Name: auth_custompermissionsuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_custompermissionsuser_groups_id_seq', 1, false);


--
-- Name: auth_custompermissionsuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_custompermissionsuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_custompermissionsuser_id_seq OWNER TO postgres;

--
-- Name: auth_custompermissionsuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_custompermissionsuser_id_seq OWNED BY auth_custompermissionsuser.id;


--
-- Name: auth_custompermissionsuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_custompermissionsuser_id_seq', 1, false);


--
-- Name: auth_custompermissionsuser_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_custompermissionsuser_user_permissions (
    id integer NOT NULL,
    custompermissionsuser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_custompermissionsuser_user_permissions OWNER TO postgres;

--
-- Name: auth_custompermissionsuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_custompermissionsuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_custompermissionsuser_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_custompermissionsuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_custompermissionsuser_user_permissions_id_seq OWNED BY auth_custompermissionsuser_user_permissions.id;


--
-- Name: auth_custompermissionsuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_custompermissionsuser_user_permissions_id_seq', 1, false);


--
-- Name: auth_customuser; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_customuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    email character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    is_admin boolean NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.auth_customuser OWNER TO postgres;

--
-- Name: auth_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_customuser_id_seq OWNER TO postgres;

--
-- Name: auth_customuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_customuser_id_seq OWNED BY auth_customuser.id;


--
-- Name: auth_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_customuser_id_seq', 1, false);


--
-- Name: auth_customuserbadrequiredfields; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_customuserbadrequiredfields (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    username character varying(30) NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.auth_customuserbadrequiredfields OWNER TO postgres;

--
-- Name: auth_customuserbadrequiredfields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_customuserbadrequiredfields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_customuserbadrequiredfields_id_seq OWNER TO postgres;

--
-- Name: auth_customuserbadrequiredfields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_customuserbadrequiredfields_id_seq OWNED BY auth_customuserbadrequiredfields.id;


--
-- Name: auth_customuserbadrequiredfields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_customuserbadrequiredfields_id_seq', 1, false);


--
-- Name: auth_customusernonuniqueusername; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_customusernonuniqueusername (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.auth_customusernonuniqueusername OWNER TO postgres;

--
-- Name: auth_customusernonuniqueusername_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_customusernonuniqueusername_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_customusernonuniqueusername_id_seq OWNER TO postgres;

--
-- Name: auth_customusernonuniqueusername_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_customusernonuniqueusername_id_seq OWNED BY auth_customusernonuniqueusername.id;


--
-- Name: auth_customusernonuniqueusername_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_customusernonuniqueusername_id_seq', 1, false);


--
-- Name: auth_extensionuser; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_extensionuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.auth_extensionuser OWNER TO postgres;

--
-- Name: auth_extensionuser_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_extensionuser_groups (
    id integer NOT NULL,
    extensionuser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_extensionuser_groups OWNER TO postgres;

--
-- Name: auth_extensionuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_extensionuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_extensionuser_groups_id_seq OWNER TO postgres;

--
-- Name: auth_extensionuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_extensionuser_groups_id_seq OWNED BY auth_extensionuser_groups.id;


--
-- Name: auth_extensionuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_extensionuser_groups_id_seq', 1, false);


--
-- Name: auth_extensionuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_extensionuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_extensionuser_id_seq OWNER TO postgres;

--
-- Name: auth_extensionuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_extensionuser_id_seq OWNED BY auth_extensionuser.id;


--
-- Name: auth_extensionuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_extensionuser_id_seq', 1, false);


--
-- Name: auth_extensionuser_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_extensionuser_user_permissions (
    id integer NOT NULL,
    extensionuser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_extensionuser_user_permissions OWNER TO postgres;

--
-- Name: auth_extensionuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_extensionuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_extensionuser_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_extensionuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_extensionuser_user_permissions_id_seq OWNED BY auth_extensionuser_user_permissions.id;


--
-- Name: auth_extensionuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_extensionuser_user_permissions_id_seq', 1, false);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 230, true);


--
-- Name: auth_isactivetestuser1; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_isactivetestuser1 (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.auth_isactivetestuser1 OWNER TO postgres;

--
-- Name: auth_isactivetestuser1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_isactivetestuser1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_isactivetestuser1_id_seq OWNER TO postgres;

--
-- Name: auth_isactivetestuser1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_isactivetestuser1_id_seq OWNED BY auth_isactivetestuser1.id;


--
-- Name: auth_isactivetestuser1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_isactivetestuser1_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 154, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 4, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 7, true);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 295, true);


--
-- Name: blog_blogcategory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogcategory (
    slug character varying(2000),
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.blog_blogcategory OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.blog_blogcategory_id_seq OWNER TO postgres;

--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogcategory_id_seq OWNED BY blog_blogcategory.id;


--
-- Name: blog_blogcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogcategory_id_seq', 14, true);


--
-- Name: blog_blogpost; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost (
    status integer NOT NULL,
    description text NOT NULL,
    title character varying(500) NOT NULL,
    short_url character varying(200),
    id integer NOT NULL,
    content text NOT NULL,
    expiry_date timestamp with time zone,
    publish_date timestamp with time zone,
    user_id integer NOT NULL,
    slug character varying(2000),
    comments_count integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    site_id integer NOT NULL,
    rating_average double precision NOT NULL,
    rating_count integer NOT NULL,
    allow_comments boolean NOT NULL,
    featured_image character varying(255),
    gen_description boolean NOT NULL,
    _meta_title character varying(500),
    in_sitemap boolean NOT NULL,
    rating_sum integer NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone
);


ALTER TABLE public.blog_blogpost OWNER TO postgres;

--
-- Name: blog_blogpost_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost_categories (
    id integer NOT NULL,
    blogpost_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost_categories OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_categories_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_categories_id_seq OWNED BY blog_blogpost_categories.id;


--
-- Name: blog_blogpost_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_categories_id_seq', 1, false);


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_id_seq OWNED BY blog_blogpost.id;


--
-- Name: blog_blogpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_id_seq', 95, true);


--
-- Name: blog_blogpost_related_posts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blog_blogpost_related_posts (
    id integer NOT NULL,
    from_blogpost_id integer NOT NULL,
    to_blogpost_id integer NOT NULL
);


ALTER TABLE public.blog_blogpost_related_posts OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpost_related_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.blog_blogpost_related_posts_id_seq OWNER TO postgres;

--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpost_related_posts_id_seq OWNED BY blog_blogpost_related_posts.id;


--
-- Name: blog_blogpost_related_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpost_related_posts_id_seq', 888, true);


--
-- Name: conf_setting; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE conf_setting (
    id integer NOT NULL,
    value character varying(2000) NOT NULL,
    name character varying(50) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.conf_setting OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.conf_setting_id_seq OWNER TO postgres;

--
-- Name: conf_setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE conf_setting_id_seq OWNED BY conf_setting.id;


--
-- Name: conf_setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('conf_setting_id_seq', 27, true);


--
-- Name: contenttypes_concretemodel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contenttypes_concretemodel (
    id integer NOT NULL,
    name character varying(10) NOT NULL
);


ALTER TABLE public.contenttypes_concretemodel OWNER TO postgres;

--
-- Name: contenttypes_concretemodel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contenttypes_concretemodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.contenttypes_concretemodel_id_seq OWNER TO postgres;

--
-- Name: contenttypes_concretemodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contenttypes_concretemodel_id_seq OWNED BY contenttypes_concretemodel.id;


--
-- Name: contenttypes_concretemodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenttypes_concretemodel_id_seq', 1, false);


--
-- Name: contenttypes_foowithbrokenabsoluteurl; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contenttypes_foowithbrokenabsoluteurl (
    foowithouturl_ptr_id integer NOT NULL
);


ALTER TABLE public.contenttypes_foowithbrokenabsoluteurl OWNER TO postgres;

--
-- Name: contenttypes_foowithouturl; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contenttypes_foowithouturl (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.contenttypes_foowithouturl OWNER TO postgres;

--
-- Name: contenttypes_foowithouturl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contenttypes_foowithouturl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.contenttypes_foowithouturl_id_seq OWNER TO postgres;

--
-- Name: contenttypes_foowithouturl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contenttypes_foowithouturl_id_seq OWNED BY contenttypes_foowithouturl.id;


--
-- Name: contenttypes_foowithouturl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenttypes_foowithouturl_id_seq', 1, false);


--
-- Name: contenttypes_foowithurl; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contenttypes_foowithurl (
    foowithouturl_ptr_id integer NOT NULL
);


ALTER TABLE public.contenttypes_foowithurl OWNER TO postgres;

--
-- Name: core_sitepermission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE core_sitepermission (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.core_sitepermission OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_sitepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.core_sitepermission_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_sitepermission_id_seq OWNED BY core_sitepermission.id;


--
-- Name: core_sitepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_sitepermission_id_seq', 3, true);


--
-- Name: core_sitepermission_sites; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE core_sitepermission_sites (
    id integer NOT NULL,
    sitepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.core_sitepermission_sites OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE core_sitepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.core_sitepermission_sites_id_seq OWNER TO postgres;

--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE core_sitepermission_sites_id_seq OWNED BY core_sitepermission_sites.id;


--
-- Name: core_sitepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('core_sitepermission_sites_id_seq', 3, true);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 937, true);


--
-- Name: django_comment_flags; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_comment_flags (
    id integer NOT NULL,
    user_id integer NOT NULL,
    comment_id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_comment_flags OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_comment_flags_id_seq OWNER TO postgres;

--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_comment_flags_id_seq OWNED BY django_comment_flags.id;


--
-- Name: django_comment_flags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_comment_flags_id_seq', 1, false);


--
-- Name: django_comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_comments (
    id integer NOT NULL,
    content_type_id integer NOT NULL,
    object_pk text NOT NULL,
    site_id integer NOT NULL,
    user_id integer,
    user_name character varying(50) NOT NULL,
    user_email character varying(75) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL
);


ALTER TABLE public.django_comments OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_comments_id_seq OWNER TO postgres;

--
-- Name: django_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_comments_id_seq OWNED BY django_comments.id;


--
-- Name: django_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_comments_id_seq', 20, true);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 51, true);


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);


ALTER TABLE public.django_redirect OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_redirect_id_seq OWNER TO postgres;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_redirect_id_seq OWNED BY django_redirect.id;


--
-- Name: django_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_redirect_id_seq', 1, false);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: endless_pagination_testmodel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE endless_pagination_testmodel (
    id integer NOT NULL
);


ALTER TABLE public.endless_pagination_testmodel OWNER TO postgres;

--
-- Name: endless_pagination_testmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE endless_pagination_testmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.endless_pagination_testmodel_id_seq OWNER TO postgres;

--
-- Name: endless_pagination_testmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE endless_pagination_testmodel_id_seq OWNED BY endless_pagination_testmodel.id;


--
-- Name: endless_pagination_testmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('endless_pagination_testmodel_id_seq', 1, false);


--
-- Name: forms_field; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_field (
    _order integer,
    form_id integer NOT NULL,
    "default" character varying(2000) NOT NULL,
    required boolean NOT NULL,
    label character varying(200) NOT NULL,
    visible boolean NOT NULL,
    help_text character varying(100) NOT NULL,
    choices character varying(1000) NOT NULL,
    id integer NOT NULL,
    placeholder_text character varying(100) NOT NULL,
    field_type integer NOT NULL
);


ALTER TABLE public.forms_field OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.forms_field_id_seq OWNER TO postgres;

--
-- Name: forms_field_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_field_id_seq OWNED BY forms_field.id;


--
-- Name: forms_field_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_field_id_seq', 12, true);


--
-- Name: forms_fieldentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_fieldentry (
    entry_id integer NOT NULL,
    field_id integer NOT NULL,
    id integer NOT NULL,
    value character varying(2000)
);


ALTER TABLE public.forms_fieldentry OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_fieldentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.forms_fieldentry_id_seq OWNER TO postgres;

--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_fieldentry_id_seq OWNED BY forms_fieldentry.id;


--
-- Name: forms_fieldentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_fieldentry_id_seq', 48, true);


--
-- Name: forms_form; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_form (
    email_message text NOT NULL,
    page_ptr_id integer NOT NULL,
    email_copies character varying(200) NOT NULL,
    button_text character varying(50) NOT NULL,
    response text NOT NULL,
    content text NOT NULL,
    send_email boolean NOT NULL,
    email_subject character varying(200) NOT NULL,
    email_from character varying(75) NOT NULL
);


ALTER TABLE public.forms_form OWNER TO postgres;

--
-- Name: forms_formentry; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE forms_formentry (
    entry_time timestamp with time zone NOT NULL,
    id integer NOT NULL,
    form_id integer NOT NULL
);


ALTER TABLE public.forms_formentry OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE forms_formentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.forms_formentry_id_seq OWNER TO postgres;

--
-- Name: forms_formentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE forms_formentry_id_seq OWNED BY forms_formentry.id;


--
-- Name: forms_formentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('forms_formentry_id_seq', 6, true);


--
-- Name: galleries_gallery; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE galleries_gallery (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    zip_import character varying(100) NOT NULL
);


ALTER TABLE public.galleries_gallery OWNER TO postgres;

--
-- Name: galleries_galleryimage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE galleries_galleryimage (
    id integer NOT NULL,
    _order integer,
    gallery_id integer NOT NULL,
    file character varying(200) NOT NULL,
    description character varying(1000) NOT NULL
);


ALTER TABLE public.galleries_galleryimage OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE galleries_galleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.galleries_galleryimage_id_seq OWNER TO postgres;

--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE galleries_galleryimage_id_seq OWNED BY galleries_galleryimage.id;


--
-- Name: galleries_galleryimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('galleries_galleryimage_id_seq', 1, false);


--
-- Name: generic_assignedkeyword; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_assignedkeyword (
    content_type_id integer NOT NULL,
    id integer NOT NULL,
    keyword_id integer NOT NULL,
    object_pk integer,
    _order integer
);


ALTER TABLE public.generic_assignedkeyword OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_assignedkeyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.generic_assignedkeyword_id_seq OWNER TO postgres;

--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_assignedkeyword_id_seq OWNED BY generic_assignedkeyword.id;


--
-- Name: generic_assignedkeyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_assignedkeyword_id_seq', 2052, true);


--
-- Name: generic_keyword; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_keyword (
    slug character varying(2000),
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.generic_keyword OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.generic_keyword_id_seq OWNER TO postgres;

--
-- Name: generic_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_keyword_id_seq OWNED BY generic_keyword.id;


--
-- Name: generic_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_keyword_id_seq', 339, true);


--
-- Name: generic_rating; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_rating (
    content_type_id integer NOT NULL,
    id integer NOT NULL,
    value integer NOT NULL,
    object_pk integer,
    rating_date timestamp with time zone,
    user_id integer
);


ALTER TABLE public.generic_rating OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE generic_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.generic_rating_id_seq OWNER TO postgres;

--
-- Name: generic_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE generic_rating_id_seq OWNED BY generic_rating.id;


--
-- Name: generic_rating_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('generic_rating_id_seq', 1, false);


--
-- Name: generic_threadedcomment; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE generic_threadedcomment (
    by_author boolean NOT NULL,
    comment_ptr_id integer NOT NULL,
    replied_to_id integer,
    rating_count integer NOT NULL,
    rating_average double precision NOT NULL,
    rating_sum integer NOT NULL
);


ALTER TABLE public.generic_threadedcomment OWNER TO postgres;

--
-- Name: newsletter_article; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE newsletter_article (
    id integer NOT NULL,
    sortorder integer NOT NULL,
    title character varying(200) NOT NULL,
    text text NOT NULL,
    url character varying(200),
    image character varying(100),
    post_id integer NOT NULL,
    CONSTRAINT newsletter_article_sortorder_check CHECK ((sortorder >= 0))
);


ALTER TABLE public.newsletter_article OWNER TO postgres;

--
-- Name: newsletter_article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE newsletter_article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.newsletter_article_id_seq OWNER TO postgres;

--
-- Name: newsletter_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE newsletter_article_id_seq OWNED BY newsletter_article.id;


--
-- Name: newsletter_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('newsletter_article_id_seq', 6, true);


--
-- Name: newsletter_message; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE newsletter_message (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(50) NOT NULL,
    newsletter_id integer NOT NULL,
    date_create timestamp with time zone NOT NULL,
    date_modify timestamp with time zone NOT NULL
);


ALTER TABLE public.newsletter_message OWNER TO postgres;

--
-- Name: newsletter_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE newsletter_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.newsletter_message_id_seq OWNER TO postgres;

--
-- Name: newsletter_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE newsletter_message_id_seq OWNED BY newsletter_message.id;


--
-- Name: newsletter_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('newsletter_message_id_seq', 4, true);


--
-- Name: newsletter_newsletter; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE newsletter_newsletter (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    slug character varying(50) NOT NULL,
    email character varying(75) NOT NULL,
    sender character varying(200) NOT NULL,
    visible boolean NOT NULL,
    send_html boolean NOT NULL
);


ALTER TABLE public.newsletter_newsletter OWNER TO postgres;

--
-- Name: newsletter_newsletter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE newsletter_newsletter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.newsletter_newsletter_id_seq OWNER TO postgres;

--
-- Name: newsletter_newsletter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE newsletter_newsletter_id_seq OWNED BY newsletter_newsletter.id;


--
-- Name: newsletter_newsletter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('newsletter_newsletter_id_seq', 3, true);


--
-- Name: newsletter_newsletter_site; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE newsletter_newsletter_site (
    id integer NOT NULL,
    newsletter_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.newsletter_newsletter_site OWNER TO postgres;

--
-- Name: newsletter_newsletter_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE newsletter_newsletter_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.newsletter_newsletter_site_id_seq OWNER TO postgres;

--
-- Name: newsletter_newsletter_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE newsletter_newsletter_site_id_seq OWNED BY newsletter_newsletter_site.id;


--
-- Name: newsletter_newsletter_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('newsletter_newsletter_site_id_seq', 3, true);


--
-- Name: newsletter_submission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE newsletter_submission (
    id integer NOT NULL,
    newsletter_id integer NOT NULL,
    message_id integer NOT NULL,
    publish_date timestamp with time zone,
    publish boolean NOT NULL,
    prepared boolean NOT NULL,
    sent boolean NOT NULL,
    sending boolean NOT NULL
);


ALTER TABLE public.newsletter_submission OWNER TO postgres;

--
-- Name: newsletter_submission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE newsletter_submission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.newsletter_submission_id_seq OWNER TO postgres;

--
-- Name: newsletter_submission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE newsletter_submission_id_seq OWNED BY newsletter_submission.id;


--
-- Name: newsletter_submission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('newsletter_submission_id_seq', 10, true);


--
-- Name: newsletter_submission_subscriptions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE newsletter_submission_subscriptions (
    id integer NOT NULL,
    submission_id integer NOT NULL,
    subscription_id integer NOT NULL
);


ALTER TABLE public.newsletter_submission_subscriptions OWNER TO postgres;

--
-- Name: newsletter_submission_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE newsletter_submission_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.newsletter_submission_subscriptions_id_seq OWNER TO postgres;

--
-- Name: newsletter_submission_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE newsletter_submission_subscriptions_id_seq OWNED BY newsletter_submission_subscriptions.id;


--
-- Name: newsletter_submission_subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('newsletter_submission_subscriptions_id_seq', 18, true);


--
-- Name: newsletter_subscription; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE newsletter_subscription (
    id integer NOT NULL,
    user_id integer,
    name character varying(30),
    email character varying(75),
    ip inet,
    newsletter_id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    activation_code character varying(40) NOT NULL,
    subscribed boolean NOT NULL,
    subscribe_date timestamp with time zone,
    unsubscribed boolean NOT NULL,
    unsubscribe_date timestamp with time zone
);


ALTER TABLE public.newsletter_subscription OWNER TO postgres;

--
-- Name: newsletter_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE newsletter_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.newsletter_subscription_id_seq OWNER TO postgres;

--
-- Name: newsletter_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE newsletter_subscription_id_seq OWNED BY newsletter_subscription.id;


--
-- Name: newsletter_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('newsletter_subscription_id_seq', 11, true);


--
-- Name: pages_link; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_link (
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.pages_link OWNER TO postgres;

--
-- Name: pages_page; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_page (
    status integer NOT NULL,
    _order integer,
    parent_id integer,
    description text NOT NULL,
    title character varying(500) NOT NULL,
    short_url character varying(200),
    login_required boolean NOT NULL,
    id integer NOT NULL,
    expiry_date timestamp with time zone,
    publish_date timestamp with time zone,
    titles character varying(1000),
    content_model character varying(50),
    slug character varying(2000),
    keywords_string character varying(500) NOT NULL,
    site_id integer NOT NULL,
    gen_description boolean NOT NULL,
    in_menus character varying(100),
    _meta_title character varying(500),
    in_sitemap boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone
);


ALTER TABLE public.pages_page OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pages_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.pages_page_id_seq OWNER TO postgres;

--
-- Name: pages_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pages_page_id_seq OWNED BY pages_page.id;


--
-- Name: pages_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pages_page_id_seq', 33, true);


--
-- Name: pages_richtextpage; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pages_richtextpage (
    content text NOT NULL,
    page_ptr_id integer NOT NULL
);


ALTER TABLE public.pages_richtextpage OWNER TO postgres;

--
-- Name: sitemaps_testmodel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sitemaps_testmodel (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.sitemaps_testmodel OWNER TO postgres;

--
-- Name: sitemaps_testmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sitemaps_testmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.sitemaps_testmodel_id_seq OWNER TO postgres;

--
-- Name: sitemaps_testmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sitemaps_testmodel_id_seq OWNED BY sitemaps_testmodel.id;


--
-- Name: sitemaps_testmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sitemaps_testmodel_id_seq', 1, false);


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO postgres;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.south_migrationhistory_id_seq OWNER TO postgres;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 98, true);


--
-- Name: thumbnail_kvstore; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.thumbnail_kvstore OWNER TO postgres;

--
-- Name: twitter_query; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_query (
    interested boolean NOT NULL,
    type character varying(10) NOT NULL,
    id integer NOT NULL,
    value character varying(140) NOT NULL
);


ALTER TABLE public.twitter_query OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.twitter_query_id_seq OWNER TO postgres;

--
-- Name: twitter_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_query_id_seq OWNED BY twitter_query.id;


--
-- Name: twitter_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_query_id_seq', 1, false);


--
-- Name: twitter_tweet; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE twitter_tweet (
    retweeter_profile_image_url character varying(200),
    text text,
    created_at timestamp with time zone,
    remote_id character varying(50) NOT NULL,
    retweeter_user_name character varying(100),
    profile_image_url character varying(200),
    full_name character varying(100),
    query_id integer NOT NULL,
    user_name character varying(100),
    id integer NOT NULL,
    retweeter_full_name character varying(100)
);


ALTER TABLE public.twitter_tweet OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE twitter_tweet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.twitter_tweet_id_seq OWNER TO postgres;

--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE twitter_tweet_id_seq OWNED BY twitter_tweet.id;


--
-- Name: twitter_tweet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('twitter_tweet_id_seq', 1, false);


--
-- Name: vikalp_article; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vikalp_article (
    blogpost_ptr_id integer NOT NULL,
    promoted boolean NOT NULL,
    article_author character varying(128) NOT NULL,
    add_to_carousel boolean NOT NULL,
    longitude numeric(10,7),
    latitude numeric(10,7)
);


ALTER TABLE public.vikalp_article OWNER TO postgres;

--
-- Name: vikalp_article_article_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vikalp_article_article_categories (
    id integer NOT NULL,
    article_id integer NOT NULL,
    articlecategory_id integer NOT NULL
);


ALTER TABLE public.vikalp_article_article_categories OWNER TO postgres;

--
-- Name: vikalp_article_article_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE vikalp_article_article_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.vikalp_article_article_categories_id_seq OWNER TO postgres;

--
-- Name: vikalp_article_article_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE vikalp_article_article_categories_id_seq OWNED BY vikalp_article_article_categories.id;


--
-- Name: vikalp_article_article_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vikalp_article_article_categories_id_seq', 776, true);


--
-- Name: vikalp_articlecategory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vikalp_articlecategory (
    blogcategory_ptr_id integer NOT NULL,
    category_description text NOT NULL,
    category_image character varying(100) NOT NULL,
    category_long_description text NOT NULL
);


ALTER TABLE public.vikalp_articlecategory OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_custompermissionsuser ALTER COLUMN id SET DEFAULT nextval('auth_custompermissionsuser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_custompermissionsuser_groups ALTER COLUMN id SET DEFAULT nextval('auth_custompermissionsuser_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_custompermissionsuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_custompermissionsuser_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_customuser ALTER COLUMN id SET DEFAULT nextval('auth_customuser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_customuserbadrequiredfields ALTER COLUMN id SET DEFAULT nextval('auth_customuserbadrequiredfields_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_customusernonuniqueusername ALTER COLUMN id SET DEFAULT nextval('auth_customusernonuniqueusername_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_extensionuser ALTER COLUMN id SET DEFAULT nextval('auth_extensionuser_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_extensionuser_groups ALTER COLUMN id SET DEFAULT nextval('auth_extensionuser_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_extensionuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_extensionuser_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_isactivetestuser1 ALTER COLUMN id SET DEFAULT nextval('auth_isactivetestuser1_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory ALTER COLUMN id SET DEFAULT nextval('blog_blogcategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts ALTER COLUMN id SET DEFAULT nextval('blog_blogpost_related_posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting ALTER COLUMN id SET DEFAULT nextval('conf_setting_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenttypes_concretemodel ALTER COLUMN id SET DEFAULT nextval('contenttypes_concretemodel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenttypes_foowithouturl ALTER COLUMN id SET DEFAULT nextval('contenttypes_foowithouturl_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites ALTER COLUMN id SET DEFAULT nextval('core_sitepermission_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags ALTER COLUMN id SET DEFAULT nextval('django_comment_flags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments ALTER COLUMN id SET DEFAULT nextval('django_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect ALTER COLUMN id SET DEFAULT nextval('django_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY endless_pagination_testmodel ALTER COLUMN id SET DEFAULT nextval('endless_pagination_testmodel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field ALTER COLUMN id SET DEFAULT nextval('forms_field_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry ALTER COLUMN id SET DEFAULT nextval('forms_fieldentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry ALTER COLUMN id SET DEFAULT nextval('forms_formentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage ALTER COLUMN id SET DEFAULT nextval('galleries_galleryimage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword ALTER COLUMN id SET DEFAULT nextval('generic_assignedkeyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword ALTER COLUMN id SET DEFAULT nextval('generic_keyword_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating ALTER COLUMN id SET DEFAULT nextval('generic_rating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_article ALTER COLUMN id SET DEFAULT nextval('newsletter_article_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_message ALTER COLUMN id SET DEFAULT nextval('newsletter_message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_newsletter ALTER COLUMN id SET DEFAULT nextval('newsletter_newsletter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_newsletter_site ALTER COLUMN id SET DEFAULT nextval('newsletter_newsletter_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_submission ALTER COLUMN id SET DEFAULT nextval('newsletter_submission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_submission_subscriptions ALTER COLUMN id SET DEFAULT nextval('newsletter_submission_subscriptions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_subscription ALTER COLUMN id SET DEFAULT nextval('newsletter_subscription_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page ALTER COLUMN id SET DEFAULT nextval('pages_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sitemaps_testmodel ALTER COLUMN id SET DEFAULT nextval('sitemaps_testmodel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_query ALTER COLUMN id SET DEFAULT nextval('twitter_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet ALTER COLUMN id SET DEFAULT nextval('twitter_tweet_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vikalp_article_article_categories ALTER COLUMN id SET DEFAULT nextval('vikalp_article_article_categories_id_seq'::regclass);


--
-- Data for Name: auth_custompermissionsuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_custompermissionsuser (id, password, last_login, is_superuser, email, date_of_birth) FROM stdin;
\.


--
-- Data for Name: auth_custompermissionsuser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_custompermissionsuser_groups (id, custompermissionsuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_custompermissionsuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_custompermissionsuser_user_permissions (id, custompermissionsuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_customuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_customuser (id, password, last_login, email, is_active, is_admin, date_of_birth) FROM stdin;
\.


--
-- Data for Name: auth_customuserbadrequiredfields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_customuserbadrequiredfields (id, password, last_login, username, date_of_birth) FROM stdin;
\.


--
-- Data for Name: auth_customusernonuniqueusername; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_customusernonuniqueusername (id, password, last_login, username) FROM stdin;
\.


--
-- Data for Name: auth_extensionuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_extensionuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, date_of_birth) FROM stdin;
\.


--
-- Data for Name: auth_extensionuser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_extensionuser_groups (id, extensionuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_extensionuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_extensionuser_user_permissions (id, extensionuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
1	Content_Author
2	Content_Creator_nikhil
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
228	2	92
229	2	93
230	2	94
180	1	10
181	1	11
182	1	12
183	1	28
184	1	29
185	1	30
186	1	31
187	1	32
188	1	33
189	1	34
190	1	41
191	1	42
192	1	43
193	1	44
194	1	45
195	1	46
196	1	47
197	1	48
198	1	49
199	1	50
200	1	51
201	1	52
202	1	56
203	1	57
204	1	58
205	1	59
206	1	60
207	1	61
208	1	62
209	1	63
210	1	64
211	1	68
212	1	69
213	1	70
214	1	71
215	1	72
216	1	73
217	1	80
218	1	81
219	1	82
220	1	83
221	1	84
222	1	85
223	1	92
224	1	93
225	1	94
226	1	95
227	1	96
\.


--
-- Data for Name: auth_isactivetestuser1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_isactivetestuser1 (id, password, last_login, username) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
98	Can add kv store	33	add_kvstore
99	Can change kv store	33	change_kvstore
100	Can delete kv store	33	delete_kvstore
95	Can add article category	32	add_articlecategory
96	Can change article category	32	change_articlecategory
97	Can delete article category	32	delete_articlecategory
116	Can add custom user	39	add_customuser
117	Can change custom user	39	change_customuser
118	Can delete custom user	39	delete_customuser
119	Can add extension user	40	add_extensionuser
120	Can change extension user	40	change_extensionuser
121	Can delete extension user	40	delete_extensionuser
122	Can add custom permissions user	41	add_custompermissionsuser
123	Can change custom permissions user	41	change_custompermissionsuser
124	Can delete custom permissions user	41	delete_custompermissionsuser
125	Can add is active test user1	42	add_isactivetestuser1
126	Can change is active test user1	42	change_isactivetestuser1
127	Can delete is active test user1	42	delete_isactivetestuser1
128	Can add custom user non unique username	43	add_customusernonuniqueusername
129	Can change custom user non unique username	43	change_customusernonuniqueusername
130	Can delete custom user non unique username	43	delete_customusernonuniqueusername
131	Can add custom user bad required fields	44	add_customuserbadrequiredfields
132	Can change custom user bad required fields	44	change_customuserbadrequiredfields
133	Can delete custom user bad required fields	44	delete_customuserbadrequiredfields
134	Can add concrete model	45	add_concretemodel
135	Can change concrete model	45	change_concretemodel
136	Can delete concrete model	45	delete_concretemodel
137	Can add proxy model	45	add_proxymodel
138	Can change proxy model	45	change_proxymodel
139	Can delete proxy model	45	delete_proxymodel
140	Can add foo without url	46	add_foowithouturl
141	Can change foo without url	46	change_foowithouturl
142	Can delete foo without url	46	delete_foowithouturl
143	Can add foo with url	47	add_foowithurl
144	Can change foo with url	47	change_foowithurl
145	Can delete foo with url	47	delete_foowithurl
146	Can add foo with broken absolute url	48	add_foowithbrokenabsoluteurl
147	Can change foo with broken absolute url	48	change_foowithbrokenabsoluteurl
148	Can delete foo with broken absolute url	48	delete_foowithbrokenabsoluteurl
149	Can add test model	50	add_testmodel
150	Can change test model	50	change_testmodel
151	Can delete test model	50	delete_testmodel
152	Can add test model	51	add_testmodel
153	Can change test model	51	change_testmodel
154	Can delete test model	51	delete_testmodel
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add redirect	5	add_redirect
14	Can change redirect	5	change_redirect
15	Can delete redirect	5	delete_redirect
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add migration history	8	add_migrationhistory
23	Can change migration history	8	change_migrationhistory
24	Can delete migration history	8	delete_migrationhistory
25	Can add log entry	9	add_logentry
26	Can change log entry	9	change_logentry
27	Can delete log entry	9	delete_logentry
28	Can add comment	10	add_comment
29	Can change comment	10	change_comment
30	Can delete comment	10	delete_comment
31	Can moderate comments	10	can_moderate
32	Can add comment flag	11	add_commentflag
33	Can change comment flag	11	change_commentflag
34	Can delete comment flag	11	delete_commentflag
35	Can add Setting	12	add_setting
36	Can change Setting	12	change_setting
37	Can delete Setting	12	delete_setting
38	Can add Site permission	13	add_sitepermission
39	Can change Site permission	13	change_sitepermission
40	Can delete Site permission	13	delete_sitepermission
41	Can add Page	14	add_page
42	Can change Page	14	change_page
43	Can delete Page	14	delete_page
44	Can add Rich text page	15	add_richtextpage
45	Can change Rich text page	15	change_richtextpage
46	Can delete Rich text page	15	delete_richtextpage
47	Can add Link	16	add_link
48	Can change Link	16	change_link
49	Can delete Link	16	delete_link
50	Can add Blog post	17	add_blogpost
51	Can change Blog post	17	change_blogpost
52	Can delete Blog post	17	delete_blogpost
53	Can add Blog Category	18	add_blogcategory
54	Can change Blog Category	18	change_blogcategory
55	Can delete Blog Category	18	delete_blogcategory
56	Can add Comment	19	add_threadedcomment
57	Can change Comment	19	change_threadedcomment
58	Can delete Comment	19	delete_threadedcomment
59	Can add Keyword	20	add_keyword
60	Can change Keyword	20	change_keyword
61	Can delete Keyword	20	delete_keyword
62	Can add assigned keyword	21	add_assignedkeyword
63	Can change assigned keyword	21	change_assignedkeyword
64	Can delete assigned keyword	21	delete_assignedkeyword
65	Can add Rating	22	add_rating
66	Can change Rating	22	change_rating
67	Can delete Rating	22	delete_rating
68	Can add Form	23	add_form
69	Can change Form	23	change_form
70	Can delete Form	23	delete_form
71	Can add Field	24	add_field
72	Can change Field	24	change_field
73	Can delete Field	24	delete_field
74	Can add Form entry	25	add_formentry
75	Can change Form entry	25	change_formentry
76	Can delete Form entry	25	delete_formentry
77	Can add Form field entry	26	add_fieldentry
78	Can change Form field entry	26	change_fieldentry
79	Can delete Form field entry	26	delete_fieldentry
80	Can add Gallery	27	add_gallery
81	Can change Gallery	27	change_gallery
82	Can delete Gallery	27	delete_gallery
83	Can add Image	28	add_galleryimage
84	Can change Image	28	change_galleryimage
85	Can delete Image	28	delete_galleryimage
86	Can add Twitter query	29	add_query
87	Can change Twitter query	29	change_query
88	Can delete Twitter query	29	delete_query
89	Can add Tweet	30	add_tweet
90	Can change Tweet	30	change_tweet
91	Can delete Tweet	30	delete_tweet
92	Can add article	31	add_article
93	Can change article	31	change_article
94	Can delete article	31	delete_article
101	Can add newsletter	34	add_newsletter
102	Can change newsletter	34	change_newsletter
103	Can delete newsletter	34	delete_newsletter
104	Can add subscription	35	add_subscription
105	Can change subscription	35	change_subscription
106	Can delete subscription	35	delete_subscription
107	Can add article	36	add_article
108	Can change article	36	change_article
109	Can delete article	36	delete_article
110	Can add message	37	add_message
111	Can change message	37	change_message
112	Can delete message	37	delete_message
113	Can add submission	38	add_submission
114	Can change submission	38	change_submission
115	Can delete submission	38	delete_submission
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
7	pbkdf2_sha256$10000$2Wuqp2O5QdSB$PqfBD3gXaetJpf2NQ/c+daVkVD+oVFNcAyk3diHKTsk=	2014-02-22 10:36:04.843515+00	f	nikhiltest				t	t	2014-02-22 04:56:31+00
2	pbkdf2_sha256$10000$4HKQxiENhBmC$smiG/R/nJm1qJzqVJrY3tWubYYdz7kLpgMn8eI4n1Ao=	2014-01-29 04:37:11+00	t	TWAdmin				t	t	2014-01-29 04:37:11+00
5	pbkdf2_sha256$10000$gi0MjUsBaFE4$1m9ljAyYntN18pngwjkBAL7BPpllXS2y+qYTFsws3Iw=	2014-03-08 07:21:53.69087+00	t	pramod	Pramod	Sadalage	pramodsadalage@gmail.com	t	t	2014-02-19 11:47:26+00
3	pbkdf2_sha256$10000$VBwY3Vmkw23q$t83MAv68p1P1It7s/2aL2MDPz3G6rrPLSOCy9BHAXrY=	2014-03-10 04:18:34.005761+00	t	aletha			alethatavares@gmail.com	t	t	2014-02-06 05:24:06+00
6	pbkdf2_sha256$10000$UqQglfKXGMFk$aRoIv5sqqPxSBlpOmevSwj4C8RuanyUw+3lL16pqhAI=	2014-02-28 09:52:56.961144+00	t	nikhilsheth	Nikhil	Sheth	nikhil.js@gmail.com	t	t	2014-02-21 07:02:37+00
4	pbkdf2_sha256$10000$CYsZTMtTfLbL$w9LukmteN0wIrxx701sTOD57YTCnZwLTnY+OpbUKQ3Q=	2014-02-28 10:57:41.444531+00	t	swati				t	t	2014-02-19 06:22:48+00
1	pbkdf2_sha256$10000$hdLbvWTVpOki$Ga+f9JJzYir+Iw6OnLvacIgkMyeNvjTFJjiYwa9pKg4=	2014-08-03 11:01:28.796469+00	t	admin			admin@admin.com	t	t	2013-12-24 10:36:57.646+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
3	4	1
4	7	2
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
238	3	28
239	3	29
240	3	30
241	3	31
242	3	32
243	3	33
244	3	34
245	3	41
246	3	42
247	3	43
248	3	44
249	3	45
250	3	46
251	3	47
252	3	48
253	3	49
254	3	50
255	3	51
256	3	52
257	3	53
258	3	54
259	3	55
260	3	56
261	3	57
262	3	58
263	3	59
264	3	60
265	3	61
266	3	62
267	3	63
268	3	64
269	3	65
270	3	66
271	3	67
272	3	68
273	3	69
274	3	70
275	3	71
276	3	72
277	3	73
278	3	74
279	3	75
280	3	76
281	3	77
282	3	78
283	3	79
284	3	80
285	3	81
286	3	82
287	3	83
288	3	84
289	3	85
290	3	92
291	3	93
292	3	94
293	3	95
294	3	96
295	3	97
\.


--
-- Data for Name: blog_blogcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogcategory (slug, id, title, site_id) FROM stdin;
food-and-water	13	Food and Water	1
alternative-politics	10	Politics	1
alternative-economies	2	Economics and Technologies	1
energy	4	Energy	1
environment-ecology	3	Environment And Ecology	1
health-hygiene	12	Health And Hygiene	1
learning-and-education	6	Learning And Education	1
livelihoods	1	Livelihoods	1
settlements	9	Settlements And Transport	1
society-culture	7	Society, Culture And Peace	1
knowledge-media	8	Knowledge And Media	1
policy-edits	5	Perspectives	1
\.


--
-- Data for Name: blog_blogpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost (status, description, title, short_url, id, content, expiry_date, publish_date, user_id, slug, comments_count, keywords_string, site_id, rating_average, rating_count, allow_comments, featured_image, gen_description, _meta_title, in_sitemap, rating_sum, created, updated) FROM stdin;
2	Traditional fisherwomen of Chilika lagoon struggle to safeguard and enhance their livelihoods, in the face of numerous threats 	Chilika traditional fishers' struggle	\N	1	<p><img height="477" src="/static/media/uploads/Story_Images/chilika_lake_fishers.jpg" width="720"></p>\n<p>For years Maghi Mantri of Panda Pokhari on Chilika Lake watched as local fishermen were squeezed into smaller and smaller spaces by unscrupulous politicians, non- traditional fishermen and illegal shrimp and prawn traders. In 1992 she set up two self- help groups and began to mobilise the local village women</p>\n<p>We drive for two hours in a weather-beaten Ambassador on an elevated bund road that starts out excellent, then deteriorates in quality until, in the end, it?s a veritable battle against incessant potholes, jaywalking pedestrians, wobbling cyclists and drivers going hell-for-leather. Our destination is a small fishing village whose women and men are trying hard to come to terms with a rapidly changing world. Their once bountiful sea is now flooded with trawlers and shrimp farms, sea pirates and members of the fishermen mafia.</p>\n<p>The hamlet of Panda Pokhari on the banks of Chilika lake in Orissa?s Puri district still does not have even the basic amenities like electricity, medical services or clean drinking water. ?We are already starving because we now carry a smaller basket to the market,? says 61-year-old Maghi Mantri. ?Our men have to go further into the sea in their small boats, dwarfed by big trawlers. We have lived all our lives by the sea, but what will happen to our children,? she asks, worry writ large on her wrinkled brow as she lights a small oil lamp.</p>\n<p>Around us, life in the village settles down as dusk falls on Chilika. Squatting on her haunches, Maghi Mantri waves a helpless hand around as she explains: ?Fishing in Chilika has fallen drastically and today the catch is barely enough to feed ourselves. People from outside -- non-traditional fishermen and the mafia -- have laid a ghera around us, just like the gheries (bamboo barricades) they use to breed prawns. If we fight, we are beaten up.?</p>\n<p>Mantri?s family comprises her husband, five daughters and two sons. ?One son has migrated to Bangalore; four daughters are married and live with their husbands. But my last daughter, though married, is a heart patient and was declared untreatable in </p>\n<div class="column">\n<p>Bangalore. So my husband and another person from the village brought her back home. She now lives with her husband, while we live with this sadness every day of our lives.?</p>\n<p>?When I was small, Chilika had lots of fish. We had enough to eat -- and then some. We even managed to save money to spend during festivals and other occasions. But in 1995-96 things began to change. The government began to give Chilika on lease, and because we had no money to buy a lease we were left out.</p>\n<p>?Most fishermen belong to the Prathamik Matsajeev Samnavaya Samiti. This society takes parts of the lake on lease from the government-run Fish Fed, and then, in turn, leases to smaller fishermen. But the lease system fluctuates -- sometimes the Fish Fed gives the lease, sometimes it is the district collector.?</p>\n<p>Says gram panchayat worker Ranjit Samal: ?Our problems include a drop in fish, crab and prawn production in Chilika, and the 10% hike in lease value by the government. The six types of leases -- dian, uthapani, saharat, janav, khonda and bahan-i -- are hardly helping matters.?</p>\n<p>Mangu Kafi, a gram panchayat worker from Rebananuagon, says traditional fishermen have no power to intervene. The government has opened a new sea mouth, but the dredging now allows fresh water from Chilika to mix with the saline sea water, further damaging Chilika?s biodiversity. ?Also, while earlier floods cleaned the lake they are now rare because there?s hardly any water in the lake. The ensuing high salinity is another reason for declining fish catch. Eventually, it is us the fishermen -- at the end of things -- who suffer.?</p>\n<p>Banamali Jana, a gram panchayat worker from nearby Alupatana, says the Chilika Development Authority set up by the government of Orissa doles out a lot of money to develop the lake but it seems to benefit no one. ?Only tourists benefit -- from jetties, guesthouses, fancy boats for sight-seeing, museums, parks, pathways??</p>\n<p>?In 1951, the government used to give Prathamik Matsajeev Samnavaya Samiti a three-year lease; now it is just one year and we have to bid for it every year. Some get it, and those who don?t have money or clout don?t. In 1991, the Orissa government took a decision that 30% of the area of Chilika around our villages would be given to non-fishermen. But they forgot that the shoreline is the most productive area for us. The coming together of unscrupulous politicians and bureaucrats, together with non- traditional fishermen and illegal shrimp and prawn traders and companies is slowly driving us to penury, hunger and extinction,? says Maghi.</p>\n<p>Fed up with the status quo and the unending daily travails, in 1992 Maghi Mantri began </p>\n<div class="column">\n<p>to mobilise local village women around issues that mattered to them -- food security, unemployment and penury, health and education. ?Shri Umakant Mohanty, secretary of Gopi Nath Jivak Sangh, a local NGO, took me under his wing and encouraged me to go to my people to shake them out of their inertia. He was constantly urging me to think, to decide, and to act. Not to just sit; to do something! So, very shakily, I began to go from house to house and speak to other women and their families. But the traditional mindset of our women, along with the resistance the men put up, made things very difficult for me initially. Nobody came forward until, desperate and frustrated, I began to berate them about how whining about problems was not going to solve them. This shook the women out of their self-doubt, and gradually some began to come forward to join hands with me,? she says with a smile.</p>\n<p>So, in 1992, Maghi Mantri set up two small self-help groups (SHGs) -- Maa Tarini and Maa Kali Jai -- whose members contributed rice and Rs 2 per month. ?Earlier there were 30 members, but now we have a dedicated strength of 15 members each in Maa Tarini and Maa Kali Jai,? she says. ?When we started I had to speak to the women secretly by gathering them in my house. But when other women saw its success, they also began joining. Of course the men opposed the idea, but we didn?t stop.?</p>\n<p>After six months of saving, Gopi Nath Jivak Sangh helped get a loan of Rs 8,000 from the bank. ?The money was used to make dry fish by salting it. It is more valuable. We made a profit of Rs 5 per kilo after meeting all our expenses (no, I don?t remember the exact sum, unfortunately!).? They loaned a portion of the profits to village fishermen, at a minimum rate of interest, so that they could buy nets, baats (weights) and other implements. They even loaned money to non-fishermen, who used the money to buy seeds, fertiliser, paddy, etc. ?The fishermen tell us they mainly use loans to repair fishing nets and boats, to seek medical help for their sick children, to pay school fees, for marriages and other social ceremonies, and to improve crops. Because there are just not enough funds they can source,? says Maghi.</p>\n<p>Since the amount available for loans with the SHGs is small, all members do not borrow at the same time; the group decides on the sequence based on the urgency of need. The next person can borrow only when a loanee has repaid his loan. The deposit in the bank now is almost Rs 100,000. Strange as it may sound, the SHGs loaned money on a priority to men who used the money to advance their businesses, and returned the money with interest. ?This actually inspired their women!? says Maghi.</p>\n<p>But the SHGs have not meant an end to their problems. Most fishermen still have no pattas (title deeds) to their homesteads, no land for agriculture, only a lower primary school, and medical facilities that are 4 km away, in Panaspada. The community health </p>\n<div class="column">\n<p>centre (CHC) is in Kiranya, 14 km away. Because of the large number of waterbodies around, diseases like malaria, jaundice, skin diseases and gastric problems are common. The village has only a tubewell for its water supply.</p>\n<p>?I earn Rs 1,500 per month as a manual labourer; there?s no option but to adjust. Sometimes my son-in-law helps support the family. Because of our BPL card we get rations that allow us to get by. Otherwise, there?s only my husband?s old age pension -- Rs 200 per month,? says Maghi.</p>\n<p>K Alleya, general secretary of the Orissa Traditional Fish Workers? Union (OTFWU), is all praise for Maghi and her band of women. ?We are determined to protect our way of life. Today, these women have come forward; tomorrow they could be important stepping stones for us to organise ourselves if we do not want to be squeezed by ports, tourist hotels, SEZs or steel and power plants. Where is the space for keotas (traditional fisherfolk) to continue in their traditional profession??</p>\n<p>?Apart from economic security, our groups are slowly becoming nodal points for mobilisation,? agrees Maghi. ?The women -- and men -- have discovered that they need to come together to find collective solutions to their individual problems, such as unemployment and debt. This is our way of striving to get our Chilika back. But will we have to give our entire lives to dharnas and rallies,? she asks, her rheumy eyes glinting in the wavering candlelight. No one seems to have an answer for that -- yet.</p>\n<p>(Aditya Malaviya is a Bhopal-based journalist and researcher) </p>\n</div>\n</div>\n</div>	\N	2014-01-29 10:11:35+00	1	chilika-traditional-fishers-struggle	0		1	0	0	t	uploads/Story_Images/chilika_lake_fishers.jpg	f		t	0	2014-01-29 04:44:45.393802+00	2014-02-20 07:24:49.066588+00
2	A unique tourism-conservation-livelihood initiative in Sarmoli, Uttarakhand, offers a learning experience for both visitors and villagers, say Ashish Kothari and Neema Pathak.	Homestay with a difference!	\N	2	<p><img height="421" src="/static/media/uploads/Story_Images/homestay-with-difference.jpg" width="630"></p>\n<table align="center" border="1" cellspacing="0">\n<tbody>\n<tr>\n<td>Homestay at Sarmoli above Munsiari town in Uttarakhand. Photo: Ashish Kothari</td>\n</tr>\n</tbody>\n</table>\n<div class="articleLead">\n<h3><em>A unique tourism-conservation-livelihood initiative in Sarmoli, Uttarakhand, offers a learning experience for both visitors and villagers, say Ashish Kothari and Neema Pathak.</em></h3>\n</div>\n<p class="body">Even as villages offering home-stays become increasingly common in the Himalaya, there are some that are different. Sarmoli, located on the slopes above Munsiari town in Uttarakhand, offers an experience that few others can.</p>\n<p class="body">Sitting on the balcony of a house with a breathtaking view of the valley below and a line of snowpeaks on the horizon, we could see why Sarmoli is an ideal location for sensitive tourism. Till the mid-1990s, visitors would stay at Munsiari town or move on, providing little to the local rural economy. When Malika Virdi and E. Theophilus (a couple who came to do environmental and livelihood work) made Sarmoli their home in 1992, Malika realised the potential of running a nature-based and community-owned tourism enterprise in the valley. In 2003, on being elected sarpanch of the Van Panchayat (village forest commons), Malika helped build the capacity of several rural women to start such facilities, linking forest conservation work to tourism as a sustainable livelihood option. Many women converted an existing room into a guest room with some internal redesign. If, however, this was not available, Malika helped them get loans to build an extension. Today the village offers 15 homestays, and about 25 households are involved in tourism activities.</p>\n<p class="body">Uniquely, the tourism-conservation-livelihood initiative offers great opportunities to visitors to participate, learn and contribute. Homestays involve activities for tourists relating to the agricultural cycle and the forest-river dynamics. Visitors have an option to become part of the village life: sowing potatoes in April and <i>rajma </i>in June, harvesting barley, wheat and mustard in summer, then planting out the same in autumn, and cutting and stacking grass as fodder for winter through October-November. They become part of the process of growing food with inputs that are locally available: free abundant sunshine, farmyard manure and farmers’ seeds and labour. They also learn to use solar energy to cook and even bake, to weave with wool, or to make bamboo artefacts for everyday use. They can collect the raw material from the surrounding forests and high-altitude pastures. And, of course, they can partake of the delicious local cuisine!</p>\n<p class="body">As news of the opportunities spread, visitors are coming from far and wide. Each year, the village hosts around 250 guests; so far it has had visitors from 18 countries. Young women and men from the community have become proficient at leading treks or explaining about local economy, culture, food, and wildlife. For nature lovers and trekkers, the village is a great take-off point to some of the largest ‘wilderness’ areas left in the Himalaya, extending well into the western ranges of Uttarakhand on one side and Nepal on the other. K. Ramnarayan or Ram, part of the original team with Malika and Theo and now with Himal Prakriti, has also made Sarmoli his home, and helps organise multi-day treks to popular destinations like Milam, Nanda Devi east base camp and many lesser-known destinations.</p>\n<p class="body">A short walk above Sarmoli was enough to show us the enormous attraction the place holds for visitors. The lush forests were filled with birdcalls, and paw prints or scat of various mammals revealed a rich animal life. A pristine lake exuded calm and further up, as the forests thinned, Himalayan meadows with wildflowers took over. Rhododendrons were ablaze with blood-red flowers, contrasting brilliantly against the snow that was, as summer approached, melting into an infinite number of streams feeding the rivers below.</p>\n<p class="body">The village also hosts an annual summer programme where students and other interested people from various parts of India come to learn about the ecology of the mountains, in particular about the streams, rivers and their little-known fish. Local youth join them, resulting in an exchange of traditional and modern knowledge and skills. Each year the homestay families host participants of a two-month long Landscape and Lifeskills Course and the students of the National Outdoor Leadership School, a U.S.-based outdoors school. Also encouraged are exchanges with volunteers from groups such as Engineers Without Borders. One Polish woman engineer stayed with the community for four months and, along with some villagers, helped map the water sources within the village forest as well as the supply to each home within the community. Together they tested the water quality from each source, as these are often shared by the cattle and the people of the village. This led to better water supply planning by the gram sabha and water conservation initiatives within the community.</p>\n<p class="body">Another project on understanding the habitat of wild pheasants has given visitors an opportunity to participate in a biology conservation project, by putting their skill sets to good use. This project eventually became instrumental in collecting baseline data that led to a plan for protection of pheasant habitat.</p>\n<p class="body">While these experiences have been life changing for visitors, perhaps most important, says Malika, is the gradual change they have brought about in the way local people view wildlife and the forests. There is greater interest, pride, and a sense of reconnection. They have also contributed to the village women getting empowered for positive social and political change. An example of this is the organisation Maati, through which the women work for economic independence, and take part in movements against the liquor lobby, and opposing ecologically and socially damaging mega-hydro projects.</p>\n<p class="body">As we sat on the last day of our visit in the Maati office, amid women enthusiastically telling us their stories and showing us woollen products they are selling, we realised the potential of ecologically sensitive rural transformation across India.</p>\n<p class="body"><i>Ashish and Neema are with Kalpavriksh, Pune.</i></p>\n<p class="body"><b><i>Getting there</i></b><i></i></p>\n<p class="body"><i>By road from Haldwani, via Bageshwar or Berinag, approx. 300 km.</i></p>\n<p class="body"><b><i>Rates</i></b><i></i></p>\n<p class="body"><i>Rs.750 to 1500 per person per day (from basic to rooms with connectivity) on a twin-sharing basis and meals; Day guides Rs.500 per day; For an overnight trek with the Home Stay as base, the tariff starts at Rs.2,000 per person per day.</i></p>\n<p class="body"><b><i>Contact</i></b><i></i></p>\n<p class="body"><i>Malika Virdi, Maati, 9411194041; Ramnarayan K., 9411194042.</i></p>	\N	2014-01-29 16:16:33+00	1	homestay-with-a-difference	0		1	0	0	t	uploads/Story_Images/homestay-with-difference-featured.png	f		t	0	2014-01-29 10:50:01.841928+00	2014-03-07 05:44:58.760185+00
2	Rural homestays are becoming a valuable source of livelihoods and sustainable tourism in parts of the Himalayas. Here are some stories of such facilities.	Community-based Homestays: Innovation in Tourism	\N	59	<p><img height="410" src="/static/media/uploads/Livelihoods/parachute_café_run_by_women_in_rumbak_village,_hemis_national_park_seema_bhatt.png" style="vertical-align: middle; margin-left: auto; margin-right: auto;" width="547"></p>\n<p>In the last few years, many Himalayan inhabitants have found a new vocation: hosting tourists as guests in their homes. This kind of tourism, now commonly known as ‘community based homestay ecotourism’ is gaining popularity. The attraction is the first hand experience of culture, cuisine and interaction with the community for a reasonable price. These are initiatives where the economic benefits from tourism go directly to the community and if located close to an area of conservation value, also contribute to the protection of the site. This movement is becoming an important source of livelihoods for the Himalayan communities. In the changing scenario, exacerbated by climate change, this enterprise may work as an important adaptation strategy as well.</p>\n<p><a href="/static/media/uploads/Stories_PDFs/homestays,_seema_bhatt.pdf" target="_blank"><strong>This article</strong></a> describes some of the Himalayan homestays, discusses what may or may not be qualified as a home stay, and delibeartes on some key guidelines that are necessary to make this a successful initiative.</p>	\N	2014-02-25 06:28:56+00	3	community-based-homestays-innovation-in-tourism-1	0	homestays livelihoods Himalayan states Adventure tourism culture benefits wildlife	1	0	0	t	uploads/Livelihoods/homestay_in_korzok_village_near_tso_moriri_lake_seema_bhatt.png	f		t	0	2014-02-25 07:21:58.117715+00	2014-02-25 07:24:12.435647+00
2	A forerunner of local community radio, it is the sole people’s broadcast initiative in Manipur. It offers news that the local community needs, and connects it to the rest of the country and state. They now hear the news from all sides	The unlikely radio stars of an Indian village	\N	20	<p>A crude loudspeaker and a PA are the only pieces of technical equipment in a large hall where a long wooden bench by the window serves as the news desk. As the smell of fresh cow dung wafts into the room from the fields outside, a young woman grumbles as she tries to fix a microphone to its stand.....<a href="http://panos.org.uk/features/the-unlikely-radio-stars-of-an-indian-village/" target="_blank">read on to find out why??</a></p>	\N	2014-02-12 23:01:54+00	3	the-unlikely-radio-stars-of-an-indian-village	0	Paothang Channel Takhel PA system	1	0	0	t	uploads/KnowledgeandMedia/the-unlikely-radio-stars.jpg	f		t	0	2014-02-12 17:32:15.834133+00	2014-02-12 18:19:58.317936+00
2	The Gurukula Botanical Sanctuary is dedicated to the plants of the Western Ghats, a mountain range running down the western coastline of peninsular India.\r\nFounded in 1981 by Wolfgang Theuerkauf, the Sanctuary is a garden of wild plant species grown at the edge of a rainforest reserve. The intention is to rehabilitate endangered species and restore habitats in a highly fragmented landscape, in which only a fraction of original forest remains and a high percentage of species are rare, vulnerable or threatened by imminent extinction.\r\nThe Sanctuary is run by a small group of resident gardeners, naturalists and educators, and supported by a wide circle of well-wishers. Together it offers an approach that is connected to the climate, land, habitats, plants, animals and people of the Western Ghats.	School in the Forest : Gurukula Botanical Sanctuary, Kerala	\N	70	<blockquote>\n<p>The Gurukula Botanical Sanctuary is dedicated to the plants of the Western Ghats, a mountain range running down the western coastline of peninsular India.</p>\n<p>Founded in 1981 by Wolfgang Theuerkauf, the Sanctuary is a garden of wild plant species grown at the edge of a rainforest reserve. The intention is to rehabilitate endangered species and restore habitats in a highly fragmented landscape, in which only a fraction of original forest remains and a high percentage of species are rare, vulnerable or threatened by imminent extinction.</p>\n<p>The Sanctuary is run by a small group of resident gardeners, naturalists and educators, and supported by a wide circle of well-wishers. Together it offers an approach that is connected to the climate, land, habitats, plants, animals and people of the Western Ghats.</p>\n</blockquote>\n<p align="center"><img height="480" src="/static/media/uploads/LearningandEducation/gurukula.jpg" width="360"></p>\n<p>Every year around 2000 people walk up the three kilometres of dirt road, in rain and sun, to visit the gardens at the Gurukula Botanical Sanctuary. Around 80 per cent of these are local and regional folks—families on an outing, schools, youth groups, nature clubs, botany students, seminarians, tribes people, farmers and women’s groups. All receive a free guided tour from one of the Sanctuary staff or residents. They are taken around the main garden areas which host an attractive and comprehensive collection of native and exotic plants, arranged in taxonomic order and landscaped under the natural forest canopy. For these visitors it is an occasion to learn a little about plants, the importance of conservation and regional efforts to maintain and protect biodiversity. Most are quite surprised and delighted even—and many fall under the spell of a colourful and bounteous tropical world, full of unusual and fascinating beings. Besides these casual visitors, the Sanctuary attracts several scientists, environmentalists, educators and students throughout the year. They bring with them wisdom, knowledge, techniques and insights and their visits are a wonderful chance for us to explore issues of common concern with a very wide and informal network of individuals. And in addition, we collaborate with NGOs in the region in holding workshops for local school children—using the land, plants and animals at the Sanctuary to demonstrate and explore questions in ecology with the very young.</p>\n<p> </p>\n<p>In this article, I would like to share some aspects of the Sanctuary’s residential programmes with regional schools, with whom we have jointly developed the whole concept of a ‘School in the Forest’. This term is in part derived from the title — Gurukula—and is very much the original inspiration under which the place was founded - as a forest retreat and a place of learning. In ancient India students went to live in the homes of their teachers which were usually in remote quiet places, perhaps in the woods. In this quiet and conducive natural setting, a variety of disciplines were explored —through the act of living and learning together. In our case, the Gurukula, or the ‘house of the teacher’ includes—the forest, the garden with its colourful assemblage of plants and animals, the river, the monsoon climate and also the community of humans in which children and adults can live, participate and share responsibilities for varying lengths of time. Thus, community life at the Sanctuary involves the daily care of other living beings and a consistent and playful enquiry about the wild natural community of which people are also a part. Children have come to the Sanctuary and made the place their home and a very critical aspect of all this is that they learn to listen and look and take great interest in the various creatures they share their daily space with.</p>\n<p> </p>\n<p>The main intent of ‘The School in the Forest’ programmes is to provide a diverse and challenging exposure to a way of life that is intimate with nature and natural processes. The stay at the Sanctuary includes a number of different and complementary aspects. Attention is given to the quality of the whole day, from dawn to dusk, to rhythms of other living beings, to chores and jobs around the garden and kitchen, quiet study of habitats or species, health and physical activity (swimming, tree climbing, outdoor forest games), investigation and discussion. Usually children join in with little or no resistance, especially on their second or third visits, by which time they have overcome their initial inhibitions with the wild and also established a rapport with the residents and the place itself.</p>\n<p> </p>\n<p>One reason why we have welcomed these residential programmes is that working, functioning and living in nature demand an alertness of the senses and the ability to look afresh at what is going on around one. We feel it is of critical importance for youngsters to develop a different quality of relationship with the natural world and this process requires time. Nature moves in unpredictable ways, never static, always new, revealing deeper patterns and principles. To engage fully with this involves looking and listening, an agile body and a quiet, non-judgemental and yet intensely alert mind. This takes time to develop and most children, whatever their background come upon this slowly if given some playful guidance and space. All of this is of value, wherever one is, in manual work, academic study, human relationship, travel....whatever. Our thesis is this: that the loss of such qualities is part of the severance of the connection between humanity and wild nature.</p>\n<p> </p>\n<p>We have been wondering—is it possible to draw out young people’s inherent sensitivity and readiness to look and learn through observation of and participation in nature? Awakening the most primary mode of learning, direct experience and first hand awareness, is too often ignored in education, especially as the child grows older. Contact with the primary gets progressively shaded out as abstract learning takes over, too early in our opinion, and often with detrimental results. This may be one factor leading to disconnected, disoriented and uprooted 36 immediate environment, nor for things or people. We, thus, attempt to create a space for learning that enables the discovery of something new and original, of spontaneous perception, engagement and enquiry as can indeed happen when immersed in nature and natural processes—even for short periods of time. We don’t begin by giving them lots of knowledge and information—rather we take them out first and let perception and wonder blossom into compassion, action and applicable knowledge.</p>\n<p> </p>\n<p>This ‘back to nature’ form of learning, has a second component that is of great relevance too. Making sense of the world around, articulating one’s observations and concerns, raising questions and communicating are all critical aspects of learning. Seeing connections and reflecting upon them, expanding the capacity of the brain by allowing its very different intelligences to flower help to generate a‘rootedness’ to the earth. There are so many fascinating dimensions to explore with the children as their own windows open— heightened awareness, body-kinesthetic abilities, interpersonal skills, linguistic and intellectual abilities, as well as aesthetic and artistic sensibilities.</p>\n<p> </p>\n<p>If direct experience is woven together with sharing and reflecting and enquiry it to do with being very close to a subject, so close that you suspend your own judgement and watch the subject free of ideation and pre-conceived assumptions—be it the river habitat, or the bird community, or the plant—until it tells you its story. This becomes extraordinarily intimate—if given time and space—and this intimacy with creation in its vaster aspects or its more minute details has the possibility to bring about a truer and more active compassion. If you add to this the incentive that children feel as if they are active participants in research, that they are assisting and enabling the work of the Sanctuary by bringing in their observations and questions, then the zest for nature study doubles. They are not to be underestimated in their acuity of perception nor in their abilities as field investigators. If you want to undertake a study of ants or birds or whatever, just invite a whole bunch of children to help you widen and deepen the pool of knowledge of local natural history. The children become your extended eyes and ears, assistants and junior scientists in a joint exploration and discovery of the natural world.</p>\n<p> </p>\n<p>Thus, the understanding of nature requires a direct involvement, in whatever way. This can happen in city parks, with a home garden, or trips out to the wilderness but what is essential is the building up of care, involvement, curiosity, activity, responsibility, over time, which begins with a slow tuning in to the cycles and rhythms of the natural world.</p>\n<p> </p>\n<p>Does observation really bring about learning? People differ in their opinions about this, especially in a world that is dominated by the intellect and technology, where individuals, even in rural areas, are subject to third-hand, trickled-down bits of information, which bear no relevance to their immediate world. We believe we have not even touched upon the potential of direct observation—which we suspect is vast—especially for the very young. The trend is to fill them up with colourful books and hi-tech films on nature very quickly and the electronic, virtual or printed media become the only gateway to a world that is vital, dynamic, rich and beautiful. Rather, we wonder, can the young mind be awakened to the muse of the forest, to the incredible complexity of tropical life, to the fragility of this ancient ecosystem and to the fact that there is no separation between humans and nature? And, once initiated, can this connectedness be sustained?</p>\n<p> </p>\n<p>By observation so far I have been including the action and involvement of all the senses—as the senses are a fundamental component of our earth-bound existence and of ourselves as physical beings. It is through the senses that we relate to the world at large. Looking, listening, touching, tasting, smelling—bringing these together through games, activities, explorations opens the doorway into a different and more integrated mode of functioning. This seems to give children a degree of selfconfidence, self-awareness and also a boost to their natural liveliness and spontaneity.</p>\n<p> </p>\n<p>Our residential programmes grew slowly, bit by bit over time—quite organically—as our main focus has always been on the local outreach programmes. Also, we never had the idea that it could build into anything significant as most schools are ready to send their children away on trips for a few days at most.</p>\n<p> </p>\n<p>However, one school took the initiative, because a few of the teachers were very struck by the beauty of the forest and the possibility that children could develop a more caring relationship with the environment. So they, Centre For Learning, asked if they could send about 10 students, (around 13 years of age) in 1993, for three weeks to the Sanctuary. They came along with books, teachers and homework, so that they wouldn’t miss out on their regular curriculum. We essentially provided a kind of a physical support structure, took them on walks, and organized a few activities here and there. At first there was quite a lot of reluctance and fear that we had to deal with—the leeches, the immersion in wilderness, the lack of physical conveniences (we had no electricity, television etc.) the sheer over-powering quality of the forest.</p>\n<p> </p>\n<p>That was the first trip. It went well enough that they sent their children again, and again. Each time the programmes became more detailed and more investigative. They grew more comprehensive in the range of processes included, especially as our own skills improved. Other age groups came. And at one stage, the whole school visited the Sanctuary, in different groups, for varying periods of time, including all the teachers, the youngest 6 year olds and the seniors. Some very lovely documents came out at the end. Log books, stories, maps, caricatures, poems, tables, illustrations— very different representations of natural phenomena—but all valid and rooted in the perceived and perceptual field.</p>\n<p> </p>\n<p>For example: a one month stay of 11 year olds involved a detailed study of the bird life of the Sanctuary. Three to four hours of bird watching everyday over a month yielded huge amounts of information on diversity, behaviour, feeding, and habitats. Another group of 15 year olds investigated ants for a fortnight. We took their work into the entomology lab of Centre for Ecological Sciences in Bangalore and were told that this was excellent science. All observations were valid and relevant and the only thing we had to ensure was that we didn’t mix up species, which is quite difficult to do with ants! This led to further projects on insects in general—the different orders, their peculiar life habits and cycles, habitats, movements and so on.</p>\n<p> </p>\n<p>Finally the oldest students at the school were sent for a three-month immersion in simple living—they built their own thatch hut, managed and took care of a piece of land, did lots of natural history observations, some craft work (as they made their own mats and tools and ladles). Into this physical, land based, natural context were woven in daily lessons in ecology, globalization, environmental and personal health, questions about careers and sustainable livelihood, the relationship between self and society, energy issues and farming.</p>\n<p> </p>\n<p>Lest you assume that all this is happening with only one school—I would like to add that although it took one school to develop the whole programme of nature education to such a comprehensive and sustained depth—the relevance of it has been picked up by other schools who are now ready to send their children for similar programmes. And in the last few years other schools have participated in our residential ‘School in the Forest’ programmes. This year a school for disabled children has asked to come, an NGO working with village youth, as well as arural school and a network of educators. Being small we can handle only certain numbers. Also as the programmes are so intensive they can only really happen with a maximum of 10–15 children at a time. However, it’s extremely encouraging that schools in south India are increasingly seeing the relevance of this kind of learning, particularly as they are able to use it back home in different ways, and particularly as it doesn’t in any way affect exam results! The really keen schools are the ones who are seriously concerned about the environmental crisis. They see the relevance of a learning situation where conservation is not an abstract idea, but rather a daily living reality through the care and interaction with other life forms and that this brings about a dynamic involvement with the environment..</p>\n<p> </p>\n<p>Working with all these different individuals and groups, local, regional, young, old, on day visits or longer stays through all these years has brought about a wonderful spirit of learning and care and common ownership of the Sanctuary. Children turn up on holidays with parents and friends in tow—and introduce them to environmental issues. There is a slow but definite multiplier effect—young gardeners and budding ecologists, teachers, farmers and travellers—who not only take away with them this sense of a marvelous, beautiful and vital world needing care and responsible participation from its human members, but also bring with them a joy and enthusiasm that nourish the place itself. In a world that is otherwise dominated by the intellect and by increasingly unnatural and unsustainable pressures of living, there are few opportunities to explore a more basic and spontaneous mode of being. This, tragically and inexorably, leads to separation from other people, the environment, society and even oneself. It is this fragmentation and separation that we seek to address through the work with nature and young people at the Gurukula Botanical Sanctuary.</p>\n<p> </p>\n<p><strong>Website:</strong> <a href="http://www.gbsanctuary.org" target="_blank">http://www.gbsanctuary.org</a></p>\n<p><strong>Reprinted from:</strong>  Journal of the Krishnamurti Schools</p>\n<p><strong>Original Title:</strong>  School in the Forest – Educating the Young at the Gurukula Botanical Sanctuary</p>\n<p><strong>About the Author: </strong><a href="http://shibumifriends.wordpress.com/about-suprabha-seshan/" target="_blank">Suprabha Seshan</a> is an ecologist and educator at the <strong>Gurukula Botanical Sanctuary</strong> situated in the last remnants of the Indian rainforest in Kerala. They find, protect and grow the most horticulturally challenging and endangered plant-species.</p>\n<p>Suprabha is the spokesperson of the Gurukula Botanical Sanctuary and has received the 2006  <strong>Whitley Award</strong> (UK’s top environmental prize) and currently Whitley Continuation Funding, which is extended to award winners, for their remarkable work.</p>	\N	2014-02-28 13:00:31+00	6	school-in-the-forest-gurukula-botanical-sanctuary-kerala	4	Kerala nature botanical sanctuary rainforest forest	1	0	0	t	uploads/blog/renewable-energy.jpg	f		t	0	2014-02-25 19:18:19.845061+00	2014-04-01 09:05:54.278805+00
2	 In the Himalayas and various other parts of India, a new model for low-impact tourism is needed to protect the fragile ecosystems that provide youthful adventurers the wild and exotic experiences they seek, and homestays are a sustainable tourism option in such surroundings. 	Lure of the homestay	\N	57	<p><img height="394" src="/static/media/uploads/Livelihoods/a_mishmi_in_wakro_seema_bhatt.png" style="float: left; margin: 3px;" width="295"></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p>In recent years a growing number of small initiatives are following some of these principles. Community-based home-stays are gaining immense popularity mostly in the Himalayan region. With technical and financial support from<br>relevant organizations, communities in several locations let out rooms in their own homes. This is a wonderful way for visitors to share local culture and tradition. These homestays, located in the ecologically fragile Himalayas, present a wonderful model of best practices.....<a href="/static/media/uploads/Stories_PDFs/lure_of_the_homestay,_seema_bhatt,_feb_2013-1.pdf" target="_blank"><strong>Read More</strong></a></p>\n<p>First Published in Civil Society, Feb. 2013</p>	\N	2014-02-25 06:17:03+00	3	lure-of-the-homestay	0	homestays livelihoods Arunachal Pradesh	1	0	0	t	uploads/Livelihoods/mishmi_resortwakro,_arunchal_pradesh_seema_bhatt.png	f		t	0	2014-02-25 06:17:11.659422+00	2014-02-25 06:17:11.946756+00
2	SWaCH, a cooperative of wastepicker women, along with the Kagaj Kach Patrak Kashtakari Panchayat, has helped provide dignity and enhanced livelihoods to thousands of the poorest and most exploited women in Pune.	Picking a Brighter Future	\N	4	<p><img height="428" src="/static/media/uploads/Livelihoods/ribeca_kedari_of_swach_at_national_society_pune.png.png" style="vertical-align: top;" width="640"></p>\n<p>As I watched Ribeka Kedari dump a load of stinking garbage into her cart, outside a mansion in Pune’s posh National Society, I wondered: do we ever spare a thought for people who handle the waste we throw out … the chips package, the chocolate wrapper, the potato peels, the toilet paper … and worse? Under what conditions do they toil, what are their lives like, what do they feel when dealing with the dirty byproducts of our consumption?</p>\n<p>Most of us don’t give a second’s reflection to wastepickers like Ribeka, whom we see in our neighbourhoods, or digging into streetside wastebins. Or if we do, it is probably to dismiss them as filthy persons not worth our consideration.  Or maybe even to curse them if they miss out on picking up our garbage one day.</p>\n<p> Fortunately, not all of us ensconsed in our relatively comfortable middle class existence are blind to the conditions of the less privileged. In 1990, some participants of the National Adult Education Programme at the SNDT College in Pune encountered child wastepickers. Observing their activities, they wondered if the earnings and working conditions of the wastepickers could improve if the waste was segregated before putting into bins. This was tried out in one colony in Pune, with initial results that got the childrens’ mothers also enthused. 30 of the women were issued ID cards by SNDT, and with cooperation of the colony’s households, collection became less hazardous, and more renumerative as segregated waste fetched better prices. It was then that the SNDT team realized the potential of similar processes for wastepickers across the city.</p>\n<p> Almost immediately, however, they faced a challenge. Very soon after initiating the above activity, a private entrepreneur offered to collect waste from each household and rid the colony of wastebins. The colony residents bought into this, with immediate impacts on the livelihoods of the wastepicker women. The latter protested, and staged a <i>bin chipko andolan </i>(modeled after the famous Himalayan Chipko movement to protect trees), which forced the entrepreneur to withdraw.</p>\n<p> <b>Union and Cooperative formation</b></p>\n<p> From those early struggles came the realization that the women need to organize themselves into a larger, stronger collective. With help from Baba Adhav (well-known as the head of the trade union of <i>coolies </i>or headloaders), and the Dalit Swayamsevak Sangh, a convention of wastepickers was organised in 1993; significantly, over 800 women and men participated. The adverse conditions of the wastepickers  --- the hazards of the occupation, the mistreatment by police and municipality officials, the impossibility of sending their children to school or of getting proper medical care, and the social exclusion faced from the rest of society both as dalits and as ‘unclean’ waste-handlers --- were powerfully expressed at the Convention, and a decision was taken to set up a trade union with a formal membership. Thus was born the Kagad Kach Patra Kashtakari Panchayat (KKPKP, <a href="http://www.wastepickerscollective.org/">http://www.wastepickerscollective.org/</a>).</p>\n<p> From those initial years, KKPKP has gained steadily in strength, both in membership and in the ability to mobilize for the rights of members. It has about 10,000 registered members (up from about 800 in 1993), 80% of whom are women from marginalized and disprivileged castes. Its primary activity has been to negotiate and arrange better working conditions and renumeration for waste collection and sale, but it has also taken up a number of associated actions related to education, health, living conditions, social relations, and other aspects of the lives of members. Going beyond the immediate issues of wastepickers, it has also increasingly become involved in larger issues of urban planning and sustainability.</p>\n<p></p>\n<p><b>Economic and social gains</b></p>\n<p> KKPKP can boast of a number of impressive achievements. Through mass mobilization it was able to establish, and demand recognition for, waste collection as legitimate <i>work, </i>and collectors as <i>workers. </i>This was crucial to enable them to claim various rights and benefits that the state provides. This was done by showing that collectively, wastepickers were saving the municipal corporation several million rupees per annum, and generating a substantial part of the city’s income. The environmental benefits of dealing with garbage at source were highlighted. The central government had in 2000 passed the Municipal Solid Wastes (Management and Handling) Rules, requiring segregation and door to door collection. KKPKP was already campaigning for the implementation of these Rules; in 2006, Maharashtra promulgated the Non-Biodegradable Garbage Control Ordinance, also requiring segregation. In 2008 a cooperative, the Solid Waste Collection and Handling or SWaCH Seva Sahakari Sanstha Maryadit was registered, to negotiate formal contracts for waste collection with the municipal corporation (<a href="http://www.swachcoop.com/">http://www.swachcoop.com/</a>). Now over 2300 SWaCH members go door to door collecting segregated wastes, servicing about 400,000 households across Pune. With justification, SWaCH prides itself in being “India’s first wholly owned cooperative of self-employed ragpickers/waste collectors and other urban poor.”</p>\n<p> SWaCH covers 76 of Pune’s wards. The Pune Municipal Corporation pays its administrative cost, and additional overhead costs are met from contributions that the Cooperative’s members make from their own earnings. Members are able to charge a user fee from either each household, or from residents’ associations collectively. The waste is divided into at least 16 categories (of paper, cloth, metals, plastics, glass etc), and sold directly to scrap dealers or taken to the 3 shops that SWaCH runs, where it is further sorted for sale.</p>\n<p> Economic benefits are only a part of the story. Equally important are the social and political ones. With an increasing sense of identity, the self-image of wastepickers has changed from feeling inferior, useless and powerless to being confident and strong, feeling equal and productive. School enrolment of kids from the wastepickers’ families has dramatically increased (it is now 100%), and child labour in the waste trade consequently reduced (already by about 76% by 2001, according to a KKPKP study). KKPKP provides notebooks, loans, and other inputs to enable childrens’ education. Access to medical care is much easier, and a sustained campaign has resulted in Pune’s municipal corporation being the only one in India with a budget to pay the premium of a medical insurance scheme for self-employed wastepickers. Health status has anyway improved because women are able to use gloves, masks, and other protective gear if they want, while collecting and handling waste. Now recognized across the city, and with uniforms, there is considerably less harassment by police and government officials, and more respect from residents. Finding it hard to get loans from banks, several dozen credit self-help groups were started, and then a credit cooperative, the KKPKP Pat Sanstha, was created for loans and  social security schemes. From about 200 members in 1997-98, the Sanstha now has over 3000 members. Since 2008 SWaCH has teamed with other organizations to collect <i>nirmalaya </i>(flowers, fruits, coconuts) that is thrown into rivers by Pune’s citizens during the annual Ganesh festival, and convert it into manure. Being part of these collectives also enables women to deal more effectively with problems like poor servicing or malpractices by ration shops, or  getting shortchanged in slum redevelopment programmes. A number of cultural programmes are organised, including street plays to create awareness about issues like child marriage and caste inequities…. and, as the women proudly state, just to have collective fun!  </p>\n<p> <b>Challenges and the future </b></p>\n<p> KKPKP and SWaCH continue to face serious challenges. Even as the attitude of Pune’s residents towards wastepickers has in general improved, many of them continue to ‘look down’ at what they consider a distasteful occupation. Such elitist attitudes are sometimes displayed even by NGOs, such as in 2011 when the National Society for Clean Cities (NSCC), taking a narrow environmentalist view, characterized wastepickers as unreliable and unaccountable.  The fact that a few wastepickers are indeed tardy, or ‘rude’, or careless about hygiene, adds to this unfortunate and illegitimate stereotype. Fortunately there are also several colonies that have gone out of their way to help, such as the ICS Colony and Bhosale Nagar opening up their common toilets for wastepickers to use, and Anand Park residents providing new buckets.</p>\n<p> There is also the issue of earning disparity between those working in rich colonies, and those in lower middle class or poorer wards; KKPKP and SWaCH have started activities like enhancing the latter’s earnings through collection and sale of old clothes or other items that households want to dispose (in something called ‘V-collect drives’), while those working rich colonies could pay a higher contributory amount back to the organization. Not all of Pune’s wastepickers are part of the union (about 33% remain unorganised). Another challenge is the continuing dependence on a few middle-class activists for some managerial and accounting issues, and for advocacy with the city administration, though this is apparently decreasing as youth from within the community get educated and empowered to take over.</p>\n<p> By far the biggest challenge, however, is the increasing entry of private companies in waste collection and management, having realized its profit potential, and the schizophrenic attitude of the Pune and (neighbouring) Pimpri Chinchwad municipal corporations. On one hand they have facilitated SWaCH, on the other contracted private sector agencies for waste collection from several wards. In these areas households do not have to pay any user fees, leading to families in the SWaCH areas to wonder why they have to pay; worse, the company does little or no segregation, simply taking the garbage to the landfill site. Its payment is on a weight basis, so it in fact benefits from an increase in garbage it is handling; whereas KKPKP and SWaCH have been campaigning for more localized waste treatment including composting within colonies. SWaCH had to recently terminate its agreement with the Pimpri Chinchwad Municipal Corporation (PCMC), since the Corporation was openly siding with the private agency and unwilling to level the playing field for SWaCH. Ironically, even in some wards of Pune where SWaCH has a contract, corporators have got into waste collection for profits or political mileage; they do this without charging residents, which makes it difficult for SWaCH to collect user fees from other colonies. The Pune Municipal Corporation (PMC) itself runs vehicles for free collection in some of these wards. All of this involves unsegregated waste that then ends up in landfills.</p>\n<p> The PMC has not fulfilled its responsibility of providing equipment like buckets, gloves, masks, and footwear for about 2 years now, and payments due to SWaCH have been delayed for several months. It has also been lukewarm about providing sorting spaces for the wastepickers, who then have to do the sorting on roadsides, which is not only inconvenient but also invites displeasure and criticism from residents. In a city that provides enormous amounts of space to cars for parking, it is ironical that a basic thing like waste management does not get the space it requires.</p>\n<p> SWaCH members like Ribeka Kedari meanwhile continue their work, mixing collection with campaigning and activism. They are the lifeline of the organisations’ democratic structure, which ensures that actual wastepickers are the decision-makers. They have been to other countries to tell their story, and learn from other models; SWaCH and KKPKP have also hosted, in 2012, the 1<sup>st</sup> Global Strategic Workshop of Waste Pickers, on behalf of the Global Alliance of Waste Pickers (<a href="http://globalrec.org/archive/design/report-pune2012_120708_a.pdf">http://globalrec.org/archive/design/report-pune2012_120708_a.pdf</a>). Interestingly, one of their observations is how those speaking on behalf of wastepickers from several other countries seemed more ‘middle-class’ who were no longer doing wastepicking themselves. In Pune, they say, leaders continue to get their hands dirty, and are not alienated from the rest.</p>\n<p> Women like Ribeka are getting increasing chances to interact with other similar groups in India through the Alliance of Indian Wastepickers  (<a href="http://allianceofindianwastepickers.blogspot.in/">http://allianceofindianwastepickers.blogspot.in/</a>), a network of over 30 organisations which KKPKP and SWach were instrumental in starting. Through such alliances, they are strong advocating more sensitive policies at state and central government levels, including extension of welfare, pension, and other benefits to wastepickers just as they would be due to any recognized sector of workers. They have campaigned to get their kids enrolled in schools using the Right to Education quota (overcoming strong elitist resistance from ‘public’ schools); about 50 children have been admitted in Pune so far. They have protested the Pune Corporation’s move to set up more ‘waste to energy’ plants, arguing that these are highly polluting, and that the wastepickers’ methods of disposing of garbage (much of it through recycling) is much safer. The latest movement is targeting manufacturers of sanitary napkins and diapers like Proctor and Gamble and Johnson and Johnson, demanding that they take responsibility for safe disposal rather than exposing wastepickers to health hazards. This principle of Extended Producer Responsibility (EPR) is now well-established in many countries but relatively new in India. SWaCH has taken up EPR campaigns also for low grade, non-recyclable waste such as the thin plastic that potato chips packets are made of (see <a href="https://www.youtube.com/watch?v=ysg4rKQrLGo">https://www.youtube.com/watch?v=ysg4rKQrLGo</a>). It also does segregation awareness drives, and electronic waste collection. The entire waste of Fergusson College is managed by SWaCH, including composting and dry waste segregation.</p>\n<p> A number of other services are also provided as part of what is called SWaCH+. This includes constructing and maintaining composting plants in colonies, housekeeping, and others. Another idea is to work towards ‘zero-waste’ colonies, where all or most waste is either composted or locally recycled. Reality is still far from such an ideal, but some colonies such as in the Katraj ward are beginning to respond to the idea. Wet waste from all the households will go into a biogas plant, already in operation. Low grade plastics are being recycled into boards. Policies that provide resident associations with incentives, and impose penalties for violation of basic norms, would help greatly in expanding such initiatives.</p>\n<p> Perhaps the biggest questions KKPKP and SWaCH are pointing us to are regarding the kind of consumerism that produces enormous amounts of waste, and the callousness of a class of citizens that can simply throw out its garbage without worrying about the consequences or the lives of those dealing with it. Answers to these questions need the involvement of all of us who care for a better future. A ‘zero-waste’ society can be achieved through reduction, recycling, upcycling, and other methods. Already there are movements to forge alliances between producers and consumers (e.g. in organic food); these can be extended to ‘disposers’ also, eventually working towards a system in which the entire chain of a product is ecologically safe, and provides for dignified livelihoods. Workers’ organizations like KKPKP and SWaCH are crucial parts of such a future.</p>\n<p></p>\n<p> This article is under publication (Hindu Survey of Environment 2013)</p>	\N	2014-02-09 22:25:27+00	3	picking-a-brighter-future	0	SWaCH livelihoods ecology environment	1	0	0	t	uploads/Livelihoods/ribeca_kedari_of_swach_at_national_society_pune.png.png	f		t	0	2014-02-09 16:59:10.641339+00	2014-02-21 04:29:29.407625+00
2	Where producers and consumers are in control of the systems of production and consumption. 	Economic democracy	\N	33	<p>Where producers and consumers are in control of the systems of production and consumption.</p>	\N	2014-02-20 07:03:17+00	1	economic-democracy	0		1	0	0	f	uploads/blog/biofuels.jpg	f		t	0	2014-02-20 07:04:03.910554+00	2014-03-13 10:44:41.147605+00
2	Adharshila Learning Centre is situated in a tribal village in Madhya  Pradesh, India. It is a place for learning, a children's space, an experiment in education, a stepping stone, an anti school? We are trying to figure out and still discovering after over a decade.....Adharshila is a place to experiment with your ideas in education.	Adharshila Learning Center, Madhya Pradesh, India	\N	77	<p>From the heart of India, a pedagogy that attempts to balance college fantasies with the reality of a subsistence-farming life.</p>\n<p><strong>Place</strong>: Madhya Pradesh, India. Located in the center of the country, this vast, largely rural state is home to some 75 million, of which 20% are members of one of the area’s many indigenous groups.</p>\n<p><em>Students in the garden at Adharshila</em></p>\n<p><img height="266" src="/static/media/uploads/LearningandEducation/adharshila_1.png" style="margin: 2px; float: left;" width="297"></p>\n<p><strong>The Skinny:</strong> Founded in 1998 by two social activists, the curriculum was designed to “inculcate Adivasi [indigenous] children with a value for learning and an awareness of important issues facing their community.” The school currently has about 100 students, from grade 1-8, 70% boys. Most of the students come from nearby communities and live at the school. The students participate in the operation of the school, ranging from taking care of the school’s cows and organic farm, to cooking and cleaning. The school is an evolving experiment, changing in response to children’s interests and staff skill level. The teaching methods range from traditional classroom teaching, to self-paced worksheets, to project-based learning</p>\n<p><strong>What Matters</strong>: The school’s project-based curriculum allows the children to develop the basic skills tested on standardized        exams while also producing valuable knowledge related to the  history and positive transformation and conservation of their indigenous communities.</p>\n<p></p>\n<p>The Adharshila Learning Center was formed with the support of a local Adivasi organization and the surrounding communities. Land was donated, and parents contributed labor and materials to help build the initial structures.  The school was founded on a barren, rocky landscape, but twelve years later it sits amidst the shade of numerous groves of trees and a productive farm. Their farm provides an example of organically managed land that produces as much or more than the land of their neighbors, whose traditional farming techniques have been replaced by the use of pesticides and fertilizers. The school itself is composed of a number of interesting structures that make up classrooms, dormitories, libraries, and offices. Some of the buildings are shaped as pentagons or hexagons, and the black boards like dinosaurs. Doors swing above lines on the floor that mark out 30, 45, and 60 degrees.</p>\n<p>                                                                                                                                          <em>Afternoon crafts</em></p>\n<p align="center" class="wp-caption-text"><img class="img_block" height="200" src="/static/media/uploads/LearningandEducation/adharshila_2.png" style="margin: 2px; float: right;" width="268"></p>\n<p>Very little at the school appears to be the result of a preconceived master plan, but rather the spontaneous emergence of ideas by teachers or students. However, the school today probably looks much more like a traditional school than either Amit or Jayashree had envisioned when their experiment first began with 35 children and no curriculum. The first two years they primarily focused on the children’s interests.  After the first several years they began receiving pressure from parents to prepare the students for the national exams for the 5th certificate, which is needed to gain access and privileges in the civic sector, including getting a driver’s license.  Thus began the slow movement towards a more standardized curriculum.Behind the parents’ demands for standardized testing lay the false hope that passing these exams would open doors to good paying jobs in the modern economy. However, coming from rural communities, being a minority ethnicity, and competing against the millions of other job seekers are all daunting hurdles. The ability to pass an examination does not ensure that the children will be equipped with skills and outlooks that could serve them in their future livelihoods—especially when the majority of the children will not enter the “modern economy,” but spend the rest of their lives as farmers in their home villages.</p>\n<p>Despite the demand to prepare kids to pass national examinations<a href="http://schoolreformed.wordpress.com/wp-admin/post-new.php#_ftn1">[1]</a>, the school has managed to hold on to some of its founders’ original intent and implement a meaningful learning environment through project-based learning. Many aspects of their curriculum are addressed through investigations on their farm (where topics in biology, geology, and math are easily highlighted), and each year the students engage in some type of community research project. Over the years they have recorded histories of the land where the school is located, and have investigated the erosion of traditional livelihoods, quantifying the loss of seed diversity and organic farming practices, and the increased reliance on money. The project cycle spans many weeks, as the children disperse into the surrounding villages to spend time interviewing community members and analyzing and presenting their findings, sometimes in the form of books or magazines.</p>\n<p><em>      In the classroom–with a dinasaur chalkboard</em></p>\n<p align="center" class="wp-caption-text"><img height="272" src="/static/media/uploads/LearningandEducation/adharshila_3.png" style="vertical-align: top; float: left; margin: 3px;" width="300"></p>\n<p>The children’s activism does not stop with their project-based research, but also takes the form of drama and writing.  They have shown an aptitude and passion for acting, creating their own small theater company. They have performed in many of the local communities, often choosing to focus on difficult social issues, such as alcoholism or domestic violence. They even had an international debut when the World Social Forum was held in Mumbai. The children brought down the house, making the national papers with their drama on the social consequences of harmful World Bank and IMF policies.</p>\n<p>Many Adharshila students will not fulfill their parents’ dreams. They must overcome tremendous odds to pass a series of outrageously competitive national examinations, land a spot in a university, and then secure a well-paying job in an urban area. Indeed, most will return to their local communities and work the earth, as their families have done for generations—but they will do so with a much more holistic set of skills that can help them positively transform their local realities. They have pride and understanding of their rich local histories and traditions, organic farming skills to counter the destructive use of fertilizer and pesticides, a developed appreciation of the arts, and a nuanced and quantitative understanding of how various political and market processes have been destroying their environment and culture.</p>\n<p>That said, it’s worth noting that there are a number of first wave graduates enrolled in several universities, most with aspirations to find socially conscious work. And the experiments in education at Adharshila are still evolving, trying to find that balance between meeting the unrealistic and inappropriate expectations embodied in the standardized curricula, and creating an authentic learning environment.</p>\n<div><hr align="left" noshade="noshade" size="1" width="33%"></div>\n<p><a href="http://schoolreformed.wordpress.com/wp-admin/post-new.php#_ftnref1"><b>[1]</b></a> See <a href="http://www.nytimes.com/2010/03/24/world/asia/24test.html"><b>http://www.nytimes.com/2010/03/24/world/asia/24test.html</b></a> for insight into the insanity of standardized testing in India</p>\n<p> </p>\n<p><b>Reprinted from:</b> <a href="http://schoolreformed.wordpress.com/">http://schoolreformed.wordpress.com/</a></p>	\N	2014-02-26 18:59:46+00	3	adharshila-learning-center-madhya-pradesh-india	0	Adharshila Madhya Pradesh education tribal education	1	0	0	t	uploads/LearningandEducation/adharshila_2.png	f		t	0	2014-02-26 19:07:52.585229+00	2014-02-26 19:20:10.882689+00
2	From the perspective of climate change, both India and China need to think of alternative development models. (8-page essay).\r\nExcerpt from Conclusion: "India’s per capita ecological footprint is now about twice India’s own bio-capacity. India’s ecological system has clearly been overwhelmed by the current model of development (Global Footprint Network 2008).	Climate Change and Limits to Growth-Oriented Model of Development: Case of China and India	\N	30	<div dir="ltr"><strong>Abstract</strong></div>\n<div dir="ltr">This paper discusses the interplay between the rise of China and India in the world economy and the global climate emergency. It considers alternative growth scenarios for China and India. The results show that, to meet their respective global climate obligations, both China and India need to accept much slower economic growth rates and possibly economic stagnation in the coming decades. This clearly indicates that both China and India need to revise their growth-oriented model of development. Only a new development strategy focused on social and environmental progress, rather than economic growth, can be compatible with climate stabilization.</div>\n<div dir="ltr"></div>\n<div dir="ltr"><a href="/static/media/uploads/Stories_PDFs/li_piovani_climate_change_limits_to_growth_oriented_model_of_dev.pdf">Download the complete paper</a></div>	\N	2014-02-19 11:20:14+00	1	climate-change-and-the-limits-to-the-growth-oriented-model-of-development-the-case-of-china-and-india	1	China India Economic Growth Climate Change	1	0	0	t	uploads/logos/alt_economies.png	f		t	0	2014-02-19 11:25:33.934971+00	2014-04-04 09:41:59.833066+00
1	The high ownership, low cost and easy use of bicycles attributes make the bicycle a desirable mode of transport for a large number of the trips made in cities.	A cycling India: To carve an alternative growth trail	\N	60	<p><img height="194" src="/static/media/uploads/Settlement%20and%20Transportation/a_cycling_india.jpg" style="float: left; margin-left: 6px; margin-right: 6px;" width="217">By no means should it seem amazing – that bicycle ownership (30–50 per cent) in Indian cities is much higher than ownership of cars (3–13 per cent) and two-wheelers. Bicycle use in India varies from 7–15 per cent in large cities to 13–21 per cent in medium and small cities. Its high ownership, low cost and easy use attributes make the bicycle a desirable mode of transport for students and low-income workers. It is evident that bicycle use in India is primarily utility-based, with bicycle users being the captive riders. <br><br>Most medium and large cities in India have about 56 per cent to 72 per cent people making very short trips (below five kilometres trip length), offering a huge potential for bicycle use. Even in Delhi, it is estimated that more than 45 per cent of the trips of privately owned modes and 38 per cent of the trips by public modes are less than five kilometres. Proximity of academic institutions (mostly 3–4 kilometres), easy ridership, no license requirement and no fuel requirement are all factors that make the bicycle an attractive mode of travel for students. The conversion to cycle trips from other modes is highly likely, if a favourable cycling infrastructure is made available. <br><br>Communities in these cities have a latent demand for bicycles and walking trips, which can be realized with suitable facilities and resources. More bicycle trips will be attracted with a coherent, direct and safe bicycle infrastructure. However, the absence of safe infrastructure and high cycle fatalities deter these potential groups from shifting to bicycle use in large Indian cities. <br><br>In the past, the presence of the bicyclist was often ignored by policymakers, planners and engineers. Therefore, generally there have been no policy, programmes and plans for bicycle commuters in Indian cities. <br><br>Now, finally, things are changing. The tenth five-year plan (2003–07) and the national urban transport policy (NUTP) acknowledge the fact that there are non-motorized commuter groups with mobility and safety concerns, which need to be addressed by encouraging the construction of segregated rights of way for bicycles. <br><br>Under the aegis of the Jawaharlal Nehru Urban Renewal Mission (JNNURM), 63 cities in India have been given funds by the central government to upgrade their infrastructure. In most cities, investments in transport infrastructure account for 50–75 per cent of the expenditure. Since all new city mobility plans are required to comply with the NUTP guidelines, with a focus on 'equitable allocation of road space' and an emphasis on non-motorized transport, cycle-inclusive planning has gained importance. However, at present, Indian cities have little expertise to do cycle-inclusive planning. <br><br>The major shortcoming of almost all development proposals in Indian cities is that bicycle tracks have not been planned as an integral part of the road networks. Bicycle routes, if planned, have not been integrated at junctions. Few attempts had been made to identify complete bicycle networks. Dedicated infrastructure for cycling exists at some bridges and flyovers as a result of traffic-management strategies conceived and planned by the city traffic police, or as designed and maintained by the consultant/operator. <br><br>The safety aspect is paramount, of course. Bike lanes have to be sufficiently wide and more visible, bicycle-specific traffic lights added at tricky intersections, and street signs installed with mileage markers. <br><br>There is no lack of prototypes to adopt. At a first glance, it would even seem that in the context of a given community, bike-friendliness and quality of life are proportionally related. <br><br>Named as one of <i>Forbes</i>' Top Ten Places To Live In Europe, Copenhagen boasts of arguably the world's most successful community bicycle programme. Copenhagen estimates that it spends between $10 million and $20 million per year on bike infrastructure additions and improvements. Bicycle paths are often separated from the main traffic lanes and sometimes have their own signal systems. About 32 per cent of workers bicycle to work and 50 per cent say they cycle to work because it is fast and easy. <br><br>Amsterdam, more or less the bike capital of the world, has about 40 per cent of all traffic movements by bicycle. An extensive network of reliable and fast bicycle routes has been developed, a theft-prevention programme was set up, and the number of bicycle sheds increased. Amsterdam Bike Ramp at the central station holds over 7,000 bikes for commuters to park while they travel by train. <br><br>In New York City, bicycling is the fastest growing mode of transportation. The website <i>Business Ethics</i> reports that a 2006 citywide mandate has led to the laying down of some 200 miles of new bike paths. Also, the area around Madison Square in midtown is now bike-friendly, and seven blocks of Broadway feature green-painted bike lanes between the curb and the parking lane to provide cyclists, with a buffer against rushing motorized traffic.<br><br>According to the same report, Portland, Oregon, has allocated over $20 million over the last few years for bicycle infrastructure improvements, and plans to spend another $24 million upgrading the city's network of bike paths and trails. One of the city's latest innovations has been to convert two parking spaces on city streets to bike corrals capable of holding two dozen bicycles. In addition, the Bike Portland blog reports that the city now supports some 125 bike-related businesses, mostly small and locally owned, covering everything from custom-bike building to accessories and repair. <br><br>Can we in India expect the authorities to put together and see through a bicycle and pedestrian plan, complete with tree-lined boulevards and miles of designated lanes? Can we create, inspire and maintain a bicycle-friendly mentality that promotes a healthier, more active lifestyle for residents? That it also reinforces our reciprocal ties with nature may be seen as a somewhat incidental benefit. <br><br>On a random basis, the benefits of a cycling city are enough to justify the necessary adjustments in terms of planning, infrastructure and accommodation. Visualize this: decongested roads, no parking woes, a fitter population, less road rage (in fact, one can almost imagine bikers smiling at fellow bikers), less fatal accidents, and a general feeling of wellness. <br><br>That the solution is so simple and has always been there, is what tickles the mind and the imagination.</p>\n<p>[First Published by CauseBecause October 19, 2010</p>\n<p>Link: <a href="http://www.causebecause.com/news-detail.php?NewsID=186" target="_blank">http://www.causebecause.com/news-detail.php?NewsID=186</a>]</p>	\N	2014-02-25 08:44:28+00	4	a-cycling-india-to-carve-an-alternative-growth-trail	0	infrastructure safety NUTP quality of life decongestion fitness	1	0	0	t	uploads/Settlement and Transportation/a_cycling_india.jpg	f		t	0	2014-02-25 09:01:31.831216+00	2014-02-27 12:13:16.194315+00
2	Urban Setu in Bhuj, Kachchh, is a civil society initiative to empower citizens and bridge the governance gap between them and the administration	A bridge not too far	\N	12	<p><img height="426" src="/static/media/uploads/KnowledgeandMedia/bhuj_setu_office_ashish_kothari.png" style="vertical-align: middle; margin-left: auto; margin-right: auto;" width="640"></p>\n<p>Do we ever pause to think how a city really works? How easy or difficult is it to understand and access government<br>schemes, especially for the poor? How can spaces be created for dialogue between the government and marginalised<br>sections of urban society, such as slum dwellers?<br>A team of social workers and activists in a usually forgotten part of India, Kutch, is showing how the chasm between the<br>“governed” and the “governors” can be filled. Urban Setu, a civil society initiative in Bhuj town, has attempted a simple<br>yet bold answer.</p>\n<p>Read to find out more about <a href="/static/media/uploads/Stories_PDFs/setu_bhuj_sdjr_and_ak_as_pub_hindu_sunday_mag.pdf" target="_blank"><strong>Sethu's work</strong></a></p>	\N	2014-02-12 04:31:21+00	3	a-bridge-not-too-far	0	Kacchh Kutch Gujarat Sethu urban Sethu civil society initiative grassroots urban goverance Bhuj Bole Che	1	0	0	t	uploads/KnowledgeandMedia/bhuj_setu_office_ashish_kothari.png	f		t	0	2014-02-12 04:31:21.690255+00	2014-02-18 11:45:25.782313+00
1	Rural homestays are becoming a valuable source of livelihoods and sustainable tourism in parts of the Himalayas. Here are some stories of such facilities.	Community-based Homestays: Innovation in Tourism	\N	52	<p><a href="/static/media/uploads/community_based_homestays_seema_bhatt.pdf">See the story here ...</a></p>\n<p>[First Published in the Journal of the Development and Research Organisation for Nature, Arts and Heritage, Vol. IX, Issue 2 Autumn/Winter 2012]</p>	\N	2014-02-24 09:52:03+00	4	community-based-homestays-innovation-in-tourism	0	Adventure tourism benefits community culture monastry Rumbak wildlife	1	0	0	t	uploads/blog/homestay_in_korzok_village_near_tso_moriri_lake_seema_bhatt.jpg	f		t	0	2014-02-24 10:47:43.867925+00	2014-02-24 12:56:57.035753+00
2	The Gram Sabha of Mendha Lekha village in Gadchirolli district in Maharashtra has done away with private ownership of agricultural land using the Maharashtra Gram Dan Act 1964. The intent is to further strenghthen the gram sabha by moving towards community ownership of land.	Mendha Lekha residents gift all their farms to Gram Sabha	\N	31	<p><img height="401" src="/static/media/uploads/alternativePolitics/bassi_paddy_technique_mendha_vivek_gour_broome.jpg" width="600"></p>\n<p><em>Village does away with private ownership of land, saying it will lead to a stronger community.</em></p>\n<p>In a step that will strengthen the village gram sabha and also secure the land rights of the people, residents of village Mendha Lekha in Gadchiroli district of Maharashtra have donated their entire agricultural land to the village gram sabha under the forgotten Maharashtra Gram Dan Act of 1964. The gram sabha has now become the legal owner of 200 ha of land originally belonging to 52 families in the village. The village has a population of 480, comprising 105 families.</p>\n<p>The step was taken at a meeting on September 3, in which the entire gram sabha unanimously passed a resolution to donate their land in the presence of Dhanora tehsildar, Malik Virani. Villagers say that the step was taken with a view to unite the village into a single family and reversing the harmful trend of private ownership of land that ultimately harms both individual farmers and land-dependent communities.</p>\n<p>Mendha Lekha has been in news in recent years after becoming one of the <a href="http://www.downtoearth.org.in/node/3811" target="_blank">two first villages to win community rights over their forests</a>  and wresting <a href="http://www.downtoearth.org.in/content/bamboo-rising?page=0,2" target="_blank">rights over bamboo </a>from the forest department.</p>\n<p><strong>Act of gram dan</strong></p>\n<p>The Maharashtra Gram Dan Act came into existence in 1964 following the bhoodan movement (voluntary land donation movement started by Vinoba Bhave in 1951) movement that aimed at transferring land from big land owners to the landless. Following this, some 19 villages in Maharashtra state implemented the provisions of the Act by creating gram mandals, a precursor to the current system of gram sabhas. Later, however, the legislation fell into neglect.</p>\n<p>Nagpur-based Parag Cholkar, a Sarvodaya activist (follower of Mahatma Gandhi and Bhave) and researcher who has written a history of the gram dan movement in the country, said that under the provisions of the Act, the land-owning farmers in a village are required to donate 75 per cent of their land to the gram sabha, which becomes the legal owner. Mendha Lekha residents have have gone one step further and donated 100 per cent land to the gram sabha.</p>\n<p>Five per cent of the total donated land is distributed to the landless in the village for cultivation, while the former owners continue to cultivate the remaining land under hereditary rights. Under the Act, a village’s agricultural land cannot be sold to an outsider. If a farmer wishes, she can transfer the rights of her land to another resident of the village with the permission of the gram sabha. The gram sabha also maintains the land records of the entire village land.</p>\n<p>Gram dan is legally valid only when all land-owners and 75 per cent landless people in the village give their consent to the process. Once the village makes its gram dan declaration, the district administration is required to carry out a document check and invite objections. Once this process is completed, administration holds a meeting with the gram sabha to finalise the decision, which is then conveyed to government for gazette registration.</p>\n<p>In Mendha Lekha’s case, the village-level formalities were completed in the September 3 meeting. The proceedings of the meeting have been sent to the district collector and the divisional commissioner, and gazette registration is expected to be done in the next three months, informed Dhanora tehsildar.</p>\n<p><strong>Protection from land sharks</strong></p>\n<p>Devaji Tofa, community leader from Mendha Lekha, told Down To Earth that the traditions of the Gond tribal community to which the villagers belong, do not see land as property or something to be owned by individuals. “It is seen as a community resource.” The modern concept of private ownership has done a lot of damage to communities, said he. “With private ownership, people tend to get selfish and isolated.”</p>\n<p>With the decision of gram dan, the entire village has now become a single family, he said. “Earlier the gram sabha was taking decisions on community resources like forests, water and our stone-chip mine, but now agricultural land has also become a community resource, so that we can take all decisions together,” he added.</p>\n<p>The greatest benefit of gram dan in present circumstances, says Cholkar, is that it protects village land from being grabbed by outsiders. “In Vidarbha and other areas seeing an agrarian crisis, large areas of land are being bought up by private investors for throwaway prices, leaving farmers landless. But with gram sabha ownership of land, private procurers cannot lure individuals into parting with their land.”</p>\n<p><strong>Village gains greater autonomy</strong></p>\n<p>The Act also provides for more autonomy to a gram dan village, because under its provisions, the village is no longer bound by the decisions of the gram panchayat, which is an elected body and tends to get caught in power politics. Also, individual villages under a gat (cluster) gram panchayat may have low or no representation in a body on which they depend for their own decisions. “Once the gram dan comes into effect, the powers of the gram panchayat pass on to the gram sabha,” says Cholkar, “Mendha Lekha has already been practicing this, but now there is a legal sanction to the process.”</p>\n<p>Mohan Hirabai Hiralal from the non-profit Vrikshamitra, who has aided Mendha Lekha gram sabha’s functioning for more than four decades, says, “The decision has emerged from years of consultations and thinking within the village community. It comes out of a realization that land is the basic means of production, and community rather than private ownership is more beneficial for both the individual and the community.” He said that though most of the land will continue to be cultivated by the original owners, decisions will now be collectively taken in the gram sabha. “Vinoba Bhave’s gram daan concept has been termed utopian and unrealistic by social observers. But Mendha Lekha’s decision has been taken for firmly practical reasons. There is now an opportunity to observe how such a concept plays out on the ground.”</p>\n<p> </p>\n<p>Original article was published on Down to Earth. <a href="http://www.downtoearth.org.in/content/mendha-lekha-residents-gift-all-their-farms-gram-sabha" target="_blank">Link to original article</a></p>	\N	2014-02-19 11:33:52+00	1	mendha-lekha-residents-gift-all-their-farms-to-gram-sabha	0	Mendha-Lekha livelihoods Community Rights	1	0	0	t	uploads/alternativePolitics/bassi_paddy_technique_mendha_vivek_gour_broome.jpg	f		t	0	2014-02-19 11:54:40.78623+00	2014-02-19 12:00:38.109319+00
1	During the first half of this audio interview, Kothari provides a sobering account of the social and environmental impacts of globalized development in India, arguing persuasively that the costs outweigh the benefits, and calling into questions a number of taken-for-granted assumptions about "economic growth", "progress", and the so-called inevitability of urbanization. In the second half, Kothari highlights a diverse range of alternatives taking place in communities throughout India, forerunners to what he calls 'radical ecological democracy', that can "take us all to higher levels of well-being, while sustaining the earth and creating greater equity."	Local Alternatives to Globalized Development	\N	72	<p><img height="400" src="/static/media/uploads/PolicyEdits/churningtheearthcover.jpg" style="float: right;" width="264">This is a podcast (audio) of an interview with Ashish Kothari, Kalpavriksh Pune, taken by ISEC, International Society for Ecology and Culture, as part of their "Local Bites" series.</p>\n<p>In this extended episode, <em>Local Bites</em> interviews scholar/activist, Ashish Kothari about his book, <em><a href="http://churningtheearth.in/" target="_blank" title="">Churning the Earth: The Making of Global India</a></em>, co-authored by Aseem Shrivastava. During the first half of the interview, Kothari provides a sobering account of the social and environmental impacts of globalized development in India, arguing persuasively that the costs outweigh the benefits, and calling into questions a number of taken-for-granted assumptions about "economic growth", "progress", and the so-called inevitability of urbanization. In the second half (28:24), Kothari highlights a diverse range of localist alternatives taking place in communities throughout India, forerunners to what he calls 'radical ecological democracy', that can "take us all to higher levels of well-being, while sustaining the earth and creating greater equity."</p>\n<p>Contact: chikikothari@gmail.com</p>\n<p></p>\n<p><iframe align="middle" height="110" id="audio_iframe" src="http://www.podbean.com/media/player/audio/postId/5066289/url/http%253A%252F%252Flocalbites.podbean.com%252F2014%252F02%252F19%252Fepisode-3-local-alternatives-to-globalized-development-a-view-from-india%252F?skin=10" width="500"></iframe></p>\n<p><a href="http://localbites.podbean.com/2014/02/19/episode-3-local-alternatives-to-globalized-development-a-view-from-india/" target="_blank">Click here to visit the podcast page.</a> (you can download the podcast there)</p>	\N	2014-02-26 03:03:33+00	6	local-alternatives-to-globalized-development	0		1	0	0	t	uploads/PolicyEdits/churningtheearthcover.jpg	f		t	0	2014-02-26 03:03:33.187025+00	2014-02-27 11:52:38.494846+00
2	Where every person participates in decisions affecting her/his life. 	Radical democracy	\N	34	<p>Where every person participates in decisions affecting her/his life. </p>	\N	2014-02-20 07:25:18+00	1	radical-democracy	0		1	0	0	f	uploads/blog/carousel3.jpg	f		t	0	2014-02-20 07:25:54.885184+00	2014-03-13 10:30:51.890727+00
2	Faced with crop losses because of erratic rainfall and extreme weather, tribal farmers of Maharashtra, Madhya Pradesh  and Chhattisgarh turn to bewar and penda forms of cultivation on land considered inferior, that keeps them nourished all times of the year, but government agencies are bent on rooting out these farm practices	How central Indian tribes are coping with climate change impacts	\N	43	<p>Faced with crop losses because of erratic rainfall and extreme weather, tribal farmers of Maharashtra and Madhya Pradesh turn to bewar and penda forms of cultivation that keeps them nourished all times of the year, but government agencies are bent on rooting out these farm practices</p>\n<p><img alt="Tribal farmers say penda and bewar involve no cost or loan, are less laborious, give an assured crop from land considered inferior, and yield more nutritious and varied food than conventional cultivation (photos by Aparna Pallavi)" height="300" src="http://www.downtoearth.org.in/dte/userfiles/images/810.jpg" style="float: left; margin-left: 5px; margin-right: 5px;" title="Tribal farmers say penda and bewar involve no cost or loan, are less laborious, give an assured crop from land considered inferior, and yield more nutritious and varied food than conventional cultivation (Photos by Aparna Pallavi)" width="400"></p>\n<p>Tribal farmers say penda and bewar involve no cost or loan, are less laborious, give an assured crop from land considered inferior, and yield more nutritious and varied food than conventional cultivation (Photos by Aparna Pallavi)</p>\n<p>Hariaro Bai Deoria should have been a worried person this year—an untimely spell of rain late last October flattened her paddy crop, and her family would have been facing the prospect of a year without food. Surprisingly, the matriarch aged 65 is not that worried. “I still have enough grain left from last year’s <em>bewar</em> to last us six months. And we got a good crop this year, too.”</p>\n<p>Hariaro Bai is referring to a form of shift cultivation that has been outlawed under the Indian Forest Act of 1927, but continues to play an important role in providing food security to the Baiga tribals living in the Mandla and Dindori districts of Madhya Pradesh. A similar form of cultivation called <em>penda</em> is practised by the primitive Madia tribe in the hills of Bhamragadh in Gadchiroli district of Maharashtra. Despite their illegal status, <em>bewar</em> and <em>penda</em> cultivation practices continue to thrive among these tribes because they involve no cost or loan, are less laborious, give an assured crop from land considered inferior, and yield more nutritious and varied food than conventional cultivation. <em>Bewar</em> cultivation is also practised by a significant proportion of the tribal population in Chhattisgarh.</p>\n<p>In recent years, tribal farmers who had converted to conventional agriculture are returning to <em>bewar</em> and <em>penda</em> cultivation in the face of increasingly erratic rainfall patterns and crop losses as climate change makes its presence felt. This cultivation is much more resilient to environmental stress, and gives an assured yield in both low and excess rainfall conditions.</p>\n<p>Activists working with tribal communities say that government agencies are mostly either ignorant about these practices or are against them without any proper scientific evidence to support such censure. Madhya Pradesh’s State Climate Action Plan, for instance, calls for policies to manage climate risks for sustainable productivity; the state also has a millet cultivation project, but no government agency has taken steps to study or protect this singularly low-risk cultivation practice that has the potential to meet the food-security needs of  a large tribal population in the state. In Maharastra, which does not even have a climate plan, government agencies are not even aware that such a practice exists, says Ajay Dolke, of non-profit Srujan in Nagpur.</p>\n<p><strong>All weather, assured yields</strong></p>\n<p>This year, heavy spells of rains and a prolonged monsoon have caused crop damage across the country, but a visit to the bewar plots of the Baigas in Madhya Pradesh shows all signs of a bumper crop harvest. “This was a great year for <em>kutki </em>(little millet), our main <em>bewar</em> crop,” says Lamtibai Rathuria of village Chapwar in Dindori district who has a 2 acre (0.8 hectare) plot, pointing to the heavy heads of the plants bent with grain. “The paddy is gone, but the <em>bewar</em> is safe.”</p>\n<p>The situation is the same in village Bhangadi in the Bhamragadh hills in Maharashtra. Mangru Karme Pungati, a Madia tribe farmer who grows both paddy and <em>penda </em>crops, informs that about half the village’s paddy crop was lost because of erratic rains. “It is our <em>kohla</em> (Madia term for <em>kutki</em>) that will keep us alive this year,” he says.</p>\n<p><img alt="A mix of millets, corn, legumes and vegetables are grown in a single plot by tribal farmers practising shift cultivation" height="267" src="http://www.downtoearth.org.in/dte/userfiles/images/679.jpg" style="float: left; margin-left: 5px; margin-right: 5px;" title="A mix of millets, corn, legumes and vegetables are grown in a single plot by tribal farmers practising shift cultivation" width="200">A mix of millets, corn, legumes and vegetables are grown in a single plot by tribal farmers practising shift cultivation. Lamtibai explains how differently<em> bewar</em> and paddy respond to weather conditions: “If there is less rain, the paddy wilts, but the <em>bewar </em>gives a moderate yield. If there is excess rain, the paddy gets pests but the <em>bewar</em> gives a bumper yield. If it rains at harvest time, water accumulates in the paddy farms and the grains rot. But since the<em> bewar</em> plots are on steep slopes, rainwater drains off and crop damage is very little.”</p>\n<p>The only danger to <em>bewar</em> crops is sudden, heavy rainfall at the very start of the season because the seeds get washed away, explains Itwari Dewadia of village Talaidabra in Dindori district.  “But if there is gentle rain for the first week or so, the plants get properly rooted. After that rainfall is no worry.”</p>\n<p>In recent years, there have been repeated instances of monsoons starting late with sudden heavy showers; many villages lost their <em>bewa</em><em>r </em>seeds. Communities have adapted by setting up stronger seed networks between villages. “A decade or so back, if all farmers in a village lost their seeds, they would give up. But now, we arrange to get seeds from other villages so that we can at least continue this cultivation the following year,” says Itwari. Non-profits like Mandla-based Nirmaan have also lent a helping hand in forming these seed networks.</p>\n<p><strong>Bewar crops avert starvation</strong></p>\n<p><em>Bewar</em> comprises mixed cultivation. Baigas grow as many as eight to 10 varieties of millets, corn and five varieties of legumes in a single plot. Madias grow five to six millets, apart from three to four varieties of legumes. Indian sorrel, which provides greens as well as oilseeds, and several varieties of vegetables are also grown (see 'Security, variety, nutrition'). This mixed cultivation not only prevents pest attacks, but also protects against total crop loss.</p>\n<p>It works in two ways. Baigas, who have highly developed methods of rainfall prediction (see 'Baiga weather science') alter the mix of crops according to expected rainfall. “This year we sowed more <em>dongar kutki</em> and <em>kaang</em> (foxtail millet) rather than other millets, because these thrive in high rainfall,” says Tiharu Dhondia of village Garjan Beeja in Anuppur district, “When less rain is expected, we sow more <em>mandia</em> (finger millet), <em>salhar</em> (pearl millet variety) and <em>jowar</em> (sorghum).”</p>\n<p>Madias do not have traditional knowledge of weather prediction, but they have arrived at a mix that works in all rainfall conditions. “We plant about 50 per cent <em>kohla</em>, and the remaining four millets make up the remaining 50 per cent,” says Pandu Samru Jetti of village Bhangadi. “With change in rainfall, the yields of individual crops rise and fall, but the overall yield remains stable.”</p>\n<p>Tribals feel that<em> bewar</em> is vital for their survival.  Says Rama Chaitu Durwa of Binagunda village in the Bhamragadh hills where paddy cultivation was started only about four years back, “We are still only learning how to cultivate paddy. It will be years before we develop the skills. Also, we cannot eat paddy all year. We need our <em>penda</em> grain, which we like.”</p>\n<p>“We can live without paddy, but without <em>bewar</em> we will starve,” says Lamtibai. “Paddy gives only grain—<em>bewar </em>gives grain, vegetables and legumes—everything we need.”</p>\n<p><strong>Absence of scientific research; fallacies abound</strong></p>\n<p>Surprisingly, while government agencies have gone to much trouble to root out this form of cultivation, no agency in either state has ever taken the trouble to actually undertake scientific study of its merits. Both O P Dube, principal scientist at the Regional Agriculture Research Station at Dindori, and G R Tidke, principal scientist at the Gadchiroli Krishi Vigyan Kendra, admit that while their organisations are opposed to this farming practice, there is no proper research work to back this stand. State policy on the subject appears to be driven by a predetermined mindset rather than facts. “There is no government decision and there are no projects undertaken to study this practice,” says Tidke. “Anyway we are concerned with the masses, not little pockets,” he adds. Dube says that his organisation does not approve the principle of leaving land fallow. “We need to maximise yields, and that can only be done by taking two crops on all agricultural land each year,” he says.</p>\n<p>The result is that there is a huge amount of misleading information doing the rounds in official circles regarding bewar and penda cultivation. The most popular myth is that this cultivation destroys forests, borne out by the misnomer “slash and burn cultivation”.</p>\n<p>Tribal farmers trash this myth. “We only fell and burn the undergrowth, not big trees,” says elderly Gunthia Dewadia of Talaidabra village. “Felling large trees is very hard work, and burning them also burns the soil and makes it unfit for cultivation,” he says. Also, there is no reason to fell large trees as most families have three designated plots of land for cultivation, which they cultivate in a cycle for three years at a time, says Naresh Biswas, Mandla-based researcher from the non-profit Nirman, who has researched bewar cultivation for more than a decade. “After six years of being left fallow, these land parcels only have shrubs and young saplings.”</p>\n<p>A second myth is that <em>bewar</em> cultivation, which is carried out in steep slopes, causes soil damage through erosion, but the fact is that this cultivation is till free, and hence far less intrusive than conventional agriculture. “We do not plough the land because that will loosen the soil and the crops will collapse,” says Itwari of village Talaidabra in Dindori district. “We just burn the undergrowth and sow seeds in the fertile layer of ash.” This kind of cultivation, says he, requires very low labour and hardly any equipment. “We do not need even <em>hal bail</em> (bullocks and plough)—a sickle, an axe and a <em>khanti</em> (crow-bar like tool) are enough.”</p>\n<p><strong>Climate change, revival, innovation</strong></p>\n<p>Another important government-sponsored myth about shifting cultivation is that most tribals have given it up long ago as outdated. Farmers disagree. Not only are <em>bewar </em>and <em>penda</em> cultivation practice thriving in the hilly parts of Central India, there is an active process of innovation on to adapt to changing circumstances.</p>\n<p>What is more, faced with repeated losses in conventional cultivation of paddy and soybean, and the high cost of labour and inputs, farmers are returning to these methods. In Bhamragadh, the cost of labour for paddy cultivation is eating into the Madias’ precious bamboo felling wages—their only source of cash. Raju Chimma in Laheri village, whose parents gave up <em>penda</em> cultivation after migrating from Chhattisgarh, is trying to learn these skills now. “In the past five years, I lost three paddy crops because of erratic rains,” he explains. His young neighbour, Suresh Kudami, whose father-in-law took a Rs 25,000 loan for paddy, is planning to resurrect his abandoned <em>penda</em> plot next year. “My brother has already started cultivation on his share of the plot,” says he.</p>\n<p><img alt="Tribal people say bewar and penda grains can be stored for years without spoiling and that the surpluses in good years gives them a safety net for the lean ones" height="267" src="http://www.downtoearth.org.in/dte/userfiles/images/729%281%29.jpg" style="float: left; margin-left: 5px; margin-right: 5px;" title="Tribal people say bewar and penda grains can be stored for years without spoiling and that the surpluses in good years gives them a safety net for the lean ones" width="200">Tribal people say bewar and penda grains can be stored for years without spoiling and that the surpluses in good years gives them a safety net for the lean onesIn Mandla in Madhya Pradesh, Gond tribals, who have no recent history of practising <em>bewar</em> cultivation, now want to take it up says Hiralal Sarote of Nirman. “Farmers from several villages have requested for seeds and guidance for starting cultivation on about 50 acres (one acre equals 0.4 hectare) next year,” he says. Ramratan Kulaste, sarpanch of village Benitola village in Mandla district, said he will start <em>bewar </em>cultivation on five acres next year. “I was amazed at the production in <em>bewar</em> plots I visited,” says he. “My village has a lot of hill slopes without much forest cover which are lying fallow. I hope others will also want to start cultivation.”</p>\n<p>This process is also intricately tied up with give-and-take of innovation between communities. In Bowna village in Dindori district, farmers had converted their <em>bewar </em>land to commercial pigeon-pea cultivation about a decade back. But in the last two years, they have switched back to <em>bewar</em> with seeds from Nirman. “We plant a mix of <em>arhar</em> (pigeon pea) and <em>bewar</em> seeds for food and cash,” says Ramlal Rathuria, resident of Bowna village. “Our paddy crops are failing almost every alternate year, and market food is costly and inferior.” On the flip side, many villages are adopting Bowna’s technique to increase the pigeon-pea content of the <em>bewars</em> to earn some cash income without risking their food security.</p>\n<p>Similarly, with shrinking land holdings, communities are innovating to reduce the phenomenon of land being left fallow. In Chapwar village in Dindori district, elderly Ramla Khohadia has just one <em>bewar</em> plot. Unable to shift, he cultivates high-biomass cash crops like <em>ramteela </em>(niger seed) on his land on alternate years. “In the next year, I burn the biomass and plant <em>bewar</em> crops,” says he. “The yield is good, and I get enough food for 18 months. Many people with less land are now resorting to this technique.”</p>\n<p>“If government agencies had bothered to study this cultivation instead of turning away from it, they could have helped with the adaptation process,” says Biswas of non-profit Nirman. “Their apathy is forcing communities to struggle with their own limited resources.”</p>\n<p><strong>Insecure rights</strong></p>\n<p><em>Bewar</em> and <em>penda</em> cultivation is carried out entirely in forests, and so the land do not have status of agricultural land. To complicate matters, no government department in either state has tried to get any estimate of the area of land involved or population dependent on it.</p>\n<p>Non-profits, however, estimate that both could be considerable. <em>Bewar</em> is being practised in a major way by about 50-60 villages in Anuppur and Dindori districts of Madhya Pradesh and <em>penda</em> in about 30 villages in Bhamragadh in Maharashtra. “At least six villages in the Aboojh Maad area, part of which is in Maharashtra's Gadchiroli district, are totally dependent on <em>penda</em>, and the rest get most of their food from it,” says Ajay Dolke of non-profit Srujan, which works among Madias. “It is also practised on a smaller scale in nearly all 109 villages in Bhamragadh. It is very likely also practiced in Madia-dominated tehsils like Etpalli and Sironcha in Gadchiroli district.” Apart from this, the Pahadi Korwa tribe in Chhattisgarh also depends on <em>bewar</em> for most of their food needs, informs Biswas.</p>\n<p>Meanwhile, lack of status and estimates contribute to land insecurity for<em> bewar</em> farmers. Forest Rights Act (FRA), which has had a limited success at best in giving land rights to forest dwellers in general, has not succeeded at all when it comes to these land parcels. In Dindori and Anuppur, applications under FRA for fallow land were rejected on grounds of there being no evidence of cultivation. In Bhamragadh, the administration on its own gave FRA claims on paddy land in several villages, with strict admonition to abandon <em>penda</em> cultivation. “They are not willing to hear of claims on <em>penda</em> land,” says Rama Chaitu Durwa of village Binagunda who got five acres (two hectare) under FRA.</p>\n<p>Tribals have also faced persecution for practising<em> bewar</em>. In Talaidabra, people were beaten up and arrested for <em>bewar </em>cultivation in 2005, and live in fear ever since. In Chapwar, Lamtibai and her family have lived in fear the whole of this crop season. “Forest officials were threatening to destroy our crop,” says she.</p>\n<p>Tribals are now turning to the habitat rights clause in the FRA to ensure rights on this land. In Bhamragadh, an application to this effect was filed collectively by all 109 villages in April this year. Says Dolke of Srujan who facilitated the process, “The livelihood process of the Madias is a complex one involving different cultivation techniques, hunting and gathering. They can’t survive without habitat rights which give communities a comprehensive right over the entire resource base, not just cultivated plots.” In Dindori, the non-profit National Institute for Women, Child and Youth Development (NIWCYD) is preparing the 55 Baiga villages known as Baiga Chak to apply for habitat rights.</p>\n<p>As the world reels under the impact of climate change and increased food security concerns, cultivation practices like <em>bewar</em> and <em>penda</em> could very well hold the key to food security for the forest-dwelling poor of central India. Activists say it is time government agencies starts studying and supporting them instead of driving them to extinction.<br>  </p>\n<table border="0" cellpadding="5px" cellspacing="0">\n<tbody>\n<tr>\n<td>Baiga weather science\n<div> </div>\n<p>Baiga tribals have quite a well-developed system for rainfall prediction, according to which they alter the timing and composition of their crops. In <em>bewar </em>cultivation, sowing has to be done just before the first gentle showers of early monsoon. This makes accurate prediction of these first showers crucial. Baigas in Dindori district do it with the help of a local tuber known as <em>baichandi kanda</em>. “We plant it in our <em>badi </em>(vegetable garden) in summer, and when it sends its first shoots up through the ground, we know that rains will be here in a week or 10 days,” says elderly Nankibai Dhondia of village Garjanbeeja. “That is the signal for us to start burning the undergrowth to prepare for sowing.”</p>\n<p>Another signal for the coming monsoon is the <em>peepul</em> tree. “When the tree has shed all its old leaves and the process of sprouting new leaves is complete, we know that rains are about two-three weeks away,” says Nankibai. These two nature signals taken together usually give a sufficiently accurate estimate, says she.</p>\n<p>The proportion of different millets to be sown in the <em>bewar</em> is decided through weather prediction too. “In late summer,” says Taini Sarjamia of Bhalu Khodra village in Mandla district of Madhya Pradesh, “A tiny insect called <em>ghunghuti</em> appears in droves in the open spaces. When there are too many of those, they get in our eyes. That is when we know that it will be a heavy rainfall year, and plant more<em> kutki</em>.”</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<p> </p>\n<p>Security, variety, nutrition</p>\n<div> </div>\n<p>The Baigas of Madhya Pradesh sow a mixture of eight to 10 millet varieties in their bewar plots. These include several varieties of <em>kutki</em> (little millet), two of <em>kaang</em> (foxtail millet), <em>salhar</em> (pearl millet variety), <em>jowar</em> (sorghum), <em>mandia</em> (finger millet) and<em> sama kodai</em> (barnyard millet). <em>Kodai</em> (kodo millet) is sown separately on tilled land. <em>Purpuri</em> (amaranthus) serves for both grain and green vegetable, while <em>amadi</em> (Indian sorrel) provides green leaves, oilseeds and flowers for sherbet in summer. Legumes include <em>arahar</em> (pigeon pea) for both food and cash and<em> moong</em> (green gram), <em>urad</em> (black gram), <em>kurthi</em> (horse gram), and <em>rawans</em> and <em>jhunjhru</em> (cow pea varieties). A variety of vegetables including cucumber, beans, local tomatoes and brinjals are also sown as part of the mix.</p>\n<p>Madias in Maharashtra sow lesser number of millets, but a larger variety of beans. They also grow pumpkins and other vines within the <em>penda </em>plot. This mixed crop not only gives them a varied and nutritious diet but also protects local agro-biodiversity. <em>Bewar</em> grain has added advantages, inform farmers. For one, they are more filling. “Six to seven quintals of <em>bewar</em> millets last my family for the whole year,” says Lamtibai Rathuria of village Chapwar. “But a similar quantity of <em>dhaan</em> (paddy) gets eaten up in four to five months.” Secondly, grains like <em>kodo </em>and <em>kutki</em> can be stored for many years without spoiling. <em>Kodo</em>, say farmers, stays good for more than 50 years, while <em>kutki</em> can last up to 30. “We can store our surpluses in good years for as long as we want, and they form a safety net for the lean ones,” says Lamtibai.</p>\n<p>[Published Earlier in Down To Earth, Jan 10, 2014</p>\n<p>http://www.downtoearth.org.in/content/how-central-indian-tribes-are-coping-climate-change-impacts]</p>	\N	2014-02-21 11:04:30+00	4	how-central-indian-tribes-are-coping-with-climate-change-impacts	0	bewar penda traditional agricultural techniques Baiga Madia Dindori Mandla Bhamragad environmental stress kutki millet kohla FRA habitat rights	1	0	0	t	uploads/blog/central_indian_tribes_coping_with_climate_change.jpg	f		t	0	2014-02-21 11:11:10.454676+00	2014-02-22 07:02:25.693403+00
2	The state government is promoting a significant conversion to organic farming, and opening "livelihood schools” (first such schools in India) for this purpose. A total of 50,000 hectares of land belonging to around 62,000 families will be covered under organic farming by 2015.	Sikkim ‘livelihood schools' to promote organic farming	\N	50	<div dir="ltr">A “livelihood school” on organic farming, has been inaugurated by the State Agriculture Minister, Mr D.N. Tharkarpa, at Tadong here. This is part of the State government's plans to transform Sikkim into a fully Organic State by 2015.</div>\n<div dir="ltr"></div>\n<div dir="ltr">The Tadong livelihood school has around 130 participants from the 15 constituencies of East and North districts who will  attend a three-month training on organic farming process.</div>\n<div dir="ltr"></div>\n<div dir="ltr">Two more such schools will be launched within this week. The second school will be inaugurated at Daramdin for training youth in West Sikkim on Saturday and at Tokal-Bermoik in South Sikkim on August 9. Each school will have 90 trainees in the first batch.</div>\n<div dir="ltr"></div>\n<div dir="ltr">After the training, conducted by resource persons from Jaipur-based Morarka Foundation, the trainees will be sent to villages and maintain a tab on the organic farming practices of the farmers in 50,000 acres of land. They will also be assisting the farmers at the village levels.</div>\n<div dir="ltr"></div>\n<div dir="ltr">Maintaining that the State government has made the ‘Organic State' target a mission to be fulfilled by 2015, the Agriculture Minister in his inaugural address expressed confidence that the target will be achieved before the deadline, keeping in view the miniscule percentage of land to be covered under organic farming.</div>\n<div dir="ltr"></div>\n<div dir="ltr">“Around 82 percent of land in Sikkim is under forests where no chemical pesticides or fertilizers have ever been used. So, 82 per cent of land is already organic. Out of the remaining 18 per cent, at least 8 per cent is human settlements with concrete buildings,” Mr Thakarpa said.</div>\n<div dir="ltr"></div>\n<div dir="ltr">“The State has a maximum of 10-11 per cent of cultivatable land and we have already stopped use of chemical pesticides and fertilizers in these lands since 2003. So, in the past six years, at least 5 per cent of these lands have regained their organic nutrients and hence, we have only 5 perc ent of land to cover under organic farming”.</div>\n<div dir="ltr"></div>\n<div dir="ltr">The minister also posed a challenge to the department.</div>\n<div dir="ltr"></div>\n<div dir="ltr">The agriculture and horticulture departments have 140 employees in the rank of officials with many more junior employees under them. The efficiency of these employees will be questioned if we cannot cover this 5-6 percent of land under organic farming by 2015”, said</div>\n<div dir="ltr">the minister.</div>\n<div dir="ltr"></div>\n<div dir="ltr">Area MLA Menlom Lepcha urged the participants to use the opportunity presented by the State government in a proper manner.</div>\n<div dir="ltr">\n<div dir="ltr"></div>\n<div dir="ltr">State agriculture secretary Vishal Chauhan said that Sikkim has pioneered organic farming in Sikkim. The livelihood schools on organic farming to train local youth on organic farming process in Sikkim are first such schools in India, he said. He said that demand for organic products is increasing and such products fetch handsome returns for the farmers.</div>\n<div dir="ltr"></div>\n<div dir="ltr">Chauhan said that the department will be inviting national certifying agencies thrice a year to Sikkim to study the ongoing organic farming drive and to give organic certification after due tests. Once the organic certification is done, our products will deemed as organic products, he said.</div>\n<div dir="ltr"></div>\n<div dir="ltr">Since our target is to export our organic products, the State government is consulting with companies in Switzerland for technical support as their support will enhance the credibility of our products, said Chauhan.</div>\n<div dir="ltr"></div>\n<div dir="ltr">According to the state agriculture department officials, a total of 6,929.15 hectares of land in Sikkim are under process of organic certification. The department is targeting to get organic certification to 18,000 hectares of land in 2010-11, another 18000 hectares of land in 2012 and finally to 14,000 hectares in 2014-15.</div>\n<div dir="ltr"></div>\n<div dir="ltr">A total of 50,000 hectares of land in Sikkim belonging to around 62,000 families will be covered under organic farming by 2015, the department officials said.</div>\n<div dir="ltr"></div>\n<div dir="ltr">To achieve this target by 2015, we need trained manpower to assist the farmers in organic farming at village levels and we will be training 1000 to 1100 local educated unemployed youth. These trained youth will go villages and help the farmers to produce organic manure and they will be maintaining a dairy recording the practices of the farmers which will help during the organic certification process”, said State horticulture principle director KK Singh</div>\n<div dir="ltr">while addressing the inaugural function.</div>\n<div dir="ltr"></div>\n<div dir="ltr">Twenty science graduates and post graduates from Sikkim will also be soon sent for a two months training at Jaipur on organic farming. These youth will then come back and monitoring the field work of the supervisors trained by the three livelihood schools.</div>\n<div dir="ltr"></div>\n<div dir="ltr">Officials explained that organic farming conversion is a step by step process. They pointed out that the use of chemical fertilizers and pesticides in the agriculture fields were phased out by the State government since 2003. This period was a transition period as the residues of chemicals in the farms were flushed out and natural ingredients were restored gradually with the use of bio-fertilizers and local organic manure.</div>\n</div>\n<p>[First Published in The Hindu Business Line dt. 07/08/2010]</p>	\N	2014-02-24 09:02:10+00	4	sikkim-livelihood-schools-to-promote-organic-farming	0	organic farming training forest certifying agencies monitoring	1	0	0	t	uploads/logos/ecology_and_env.png	f		t	0	2014-02-24 09:04:49.206668+00	2014-03-06 17:21:45.686135+00
2	The Timbaktu Collective in Andhra Pradesh is transforming the lives of villagers through sustainable dryland farming, conservation of the commons, and empowerment of women.	Very Much on the Map: The Timbaktu Revolution	\N	3	<p><img height="426" src="/static/media/uploads/Livelihoods/kondakindapalli_villagers_with_timbaktu_collective_staff64.png" style="vertical-align: middle; margin: 3px;" width="640"></p>\n<p>In the Anantpur district of Andhra Pradesh, close to the town of Penukonda, the Timbaktu Collective is<br>an initiative to empower villagers (particularly the poorest amongst them) to take charge of their own future.<br>And the future of their land and natural resources. It began as a tiny effort by Mary Vattamattam and C.K.<br>(‘Bablu’) Ganguly, a couple tired of a constant agitationist mode they were involved in as part of the Young India<br>Project (organizing farm labour), to do constructive work in a few villages. Aided by a few other individuals such<br>as John D’Souza (one of the founders of the well-known Centre for Education and Documentation), in 1989,<br>they bought some land near Chennekothapalli village, in the middle of an area where deforestation and land<br>mismanagement had converted the hills into barren rock and the soil unproductive. It was a bold, almost foolish<br>attempt at doing something in an area that had been given up as a gone case, both by the government and by<br>many of the villagers themselves.......<a href="/static/media/uploads/Stories_PDFs/timbaktu_article_for_hse_2012_timbaktu_site.pdf" target="_blank">Read More: The Timbaktu Revolution</a></p>	\N	2014-02-09 21:59:26+00	3	very-much-on-the-map-the-timbaktu-revolution	0	livelihoods timbaktu collective Andhra Pradesh Anantpur women empowerment	1	0	0	t	uploads/Livelihoods/kondakindapalli_villagers_with_timbaktu_collective_staff64.png	f		t	0	2014-02-09 16:53:40.73951+00	2014-02-09 17:00:51.448352+00
2	Srinivasan Sekar, 50, from Bangaore, has built a two-storey home that is free from dependence on the electricity grid or water supply. He has installed 12 solar panels on his rooftop, at a cost of Rs 4 lakh. On any given day, including rainy days, it can generate 12-15 units which is sufficient for most four-people households.\r\n	This home is free from clutter of power, water lines	\N	5	<p><img height="142" src="/static/media/uploads/Energy/blorehome_energy.jpg" style="float: left; margin: 3px;" width="220"></p>\n<p></p>\n<p>Srinivasan Sekar has also built a rainwater harvesting system that catches 20,000 litres after a good three-hour rain. The water is reused multiple times for different purposes. He has adopted the slow sand filter technology, approved by World Health Organisation, for getting clean drinking water.</p>\n<p>read this interesting story in the <a href="http://m.deccanherald.com/content/363491/this-home-free-clutter-power.html/" target="_blank">deccanherald, bangalore</a></p>	\N	2014-02-09 22:38:29+00	3	this-home-is-free-from-clutter-of-power-water-lines	0	energy environment  Ecology Bangalore	1	0	0	t	uploads/Energy/blorehome_energy.jpg	f		t	0	2014-02-09 17:10:24.505642+00	2014-02-09 17:10:24.570435+00
2	The Baiga adivasis of central India have mobilised to reclaim their rights over forests they have traditionally used.	Baigas of central India battle for their forest rights	\N	24	<p>The fight of the Baigas of Madhya Pradesh to regain their traditional rights is also a fight to restore the<br>diversity of their forests and to protect national wealth.. <a href="/static/media/uploads/Stories_PDFs/baigas_battle_-_frontline.pdf.pdf" target="_blank">read their story in the Frontline</a></p>	\N	2014-02-12 23:52:39+00	3	baigas-of-central-india-battle-for-their-forest-rights	0	Baiga adivasis environment ecology Madhya Pradesh	1	0	0	t	uploads/alternativePolitics/timber_confiscated_by_dhaba_villagers_lr_ashish_kothari.png	f		t	0	2014-02-12 18:33:29.803742+00	2014-02-18 11:49:09.527503+00
2	The Bangaloreans in the Ugly Indians civic group have spent every week of the past year trawling the city's central business district with face masks, gloves, buckets, broomsticks and mops. Their mission is to "spot-fix" Bangalore, dirty street by dirty street, and has inspired the confidence to throw their "Ugliness Challenge" at other cities.	'Ugly Indians' clean up Bangalore 	\N	42	<p><img alt="Clean-up in Bangalore" height="261" src="http://news.bbcimg.co.uk/media/images/56769000/jpg/_56769825_uglyonecrop.jpg" style="float: left; margin: 5px;" width="464"> Anonymity is a big attraction of the movement</p>\n<p class="introduction"><strong>The Ugly Indians have a dare for the nation's cities.</strong></p>\n<p>"Show us one Indian city that can boast of one kilometre of clean street - with no open garbage dumps, no missing footpath slabs, no urine stench, no paan (betel leaf) stains on walls? Bangalore, we challenge you, is the only Indian city that now has 4km of streets clean from these four civic ills."</p>\n<p>The Bangaloreans in the Ugly Indians civic group have spent every week of the past year trawling the city's central business district with face masks, gloves, buckets, broomsticks and mops.</p>\n<p>Their mission is to "spot-fix" Bangalore, dirty street by dirty street, and has inspired the confidence to throw their "Ugliness Challenge" at other cities.</p>\n<p>They choose small stretches each week to clean: pavements piled up with plastic, defaced walls, footpaths rendered unusable by potholes.</p>\n<p><strong>'Spot-fixing'</strong></p>\n<p>The Ugly Indians are mostly professionals in the 25-40 age group and remain strictly anonymous - they respond to media queries only by email.</p>\n<div class="caption body-narrow-width"><img alt="This locale was designated Ugly Spot 15 by TUI" height="171" src="http://news.bbcimg.co.uk/media/images/56768000/jpg/_56768815_uglytwocrop.jpg" style="float: left; margin: 5px;" width="304"> The Facebook page shows how bad things were. This locale was designated Ugly Spot 15</div>\n<p>The mission began a year ago to "understand the Indian mind and attitude towards cleanliness" and "outwit him/her with clever solutions".</p>\n<p>"We didn't call it spot-fixing at first - that name came up as the cricket spot-fixing scandal (in the UK) broke," says one email from the group.</p>\n<p>At last count, the Ugly Indians had fixed 104 spots - two per week - mostly around Bangalore's central business district, including MG Road, Brigade Road and Church Street.</p>\n<p>The Ugly Indian page on Facebook has short videos that capture the clean-up in specific stretches - starting with people avoiding the area and then showing the Ugly Indians starting their job, the footpaths and walls as they are transformed by bright paint and motifs, and finally people coming back again.</p>\n<p>The Ugly Indians say their operation works like this:</p>\n<ul>\n<li>Members self-select themselves by writing to <a href="mailto:theuglyindian@gmail.com">theuglyindian@gmail.com</a></li>\n<li>Volunteers are not called for - those that write in are filtered</li>\n<li>Equal number of men and women</li>\n<li>Not an NGO - rather it is made up of self-driven and motivated people who come to work and not to socialise</li>\n</ul>\n<p>In fact, the group says most people do not even know each others' names - the work takes place silently.</p>\n<p>Anonymity is a big attraction - many members are fairly senior corporate leaders.</p>\n<p>Also part of the operation are 150 bins, maintained and cleaned by the group and seven free-to-use WonderLoos - ecofriendly waterless toilets.</p>\n<p>A trip to the Ugly Indian Treasure Hunt walk on Church Street as part of the anniversary celebration found the toilets fully ventilated, many of them under the shade of trees.</p>\n<p>Lines of beer drinkers queue to use them at night.</p>\n<p><strong>Inspection test</strong></p>\n<p>The Treasure Hunt was a challenge for anyone to find an ugly spot on the cleaned streets.</p>\n<div class="caption"><img alt="Garuda Mall in Bangalore" height="350" src="http://news.bbcimg.co.uk/media/images/56768000/jpg/_56768816_uglythreecrop.jpg" style="margin: 5px; float: left;" width="224"> The group organised a Treasure Hunt to pinpoint any missed opportunities</div>\n<p>The <a href="http://www.facebook.com/media/set/?set=a.239254732800456.57049.123459791046618&amp;type=3">Facebook page</a> declared that "Bangalore successfully passed the Inspection Test".</p>\n<p>Paan was still being spat, but was largely directed at the bins, and vigilant Ugly Indians immediately painted over stains that hit a wall.</p>\n<p>The work has won the affection of the local constabulary. Basavaraj, a constable at the nearby Cubbon Park police station, said: "These people do first-class work every week. See how clean the road has become. Good people, they don't even give their name."</p>\n<p>One young, Ugly Indian at work told me: "Anonymity is a hugely successful strategy. Labels take away all the good work. Then it becomes so-and-so's movement. Like Kiran Bedi's or Anna Hazare's. We don't want that.</p>\n<p>"We don't want to make a big deal about it. We even refused funding because we don't want people to tell us they want their name or logo on it. We want people to take ownership. Which is why they can help by sharing labour, lending skilled masons, painters. Or by sponsoring bins."</p>\n<p>A local handicrafts shopkeeper, Vishnu Das, also approached me.</p>\n<p>He said: "This entire road that you are seeing had become a urine point, especially for auto-rickshaw drivers. Unbearable smell. But these people cleaned up this place with their hands. I was so surprised why anyone would do that."</p>\n<p>Today the stench has been replaced by a pleasant patch of flowers and a mini-garden, adopted by the famous Bishop Cotton Girls School.</p>\n<p>Nitya and Kirtana, both 22, were among those who had turned up for the Treasure Hunt.</p>\n<p>The law student and her friend, a kindergarten teacher, had been following the Ugly Indians on Facebook.</p>\n<p>Walking along MG Road with Ugly Indians picking up rubbish, the two were all praise for the group.</p>\n<p>"We used to feel terrible on seeing all the muck around. We have even yelled at people who threw stuff out of their car, it just didn't help. As much as it shames us to say this, we wouldn't have done all this cleaning up and on such a scale on our own," says Nitya.</p>\n<p>So how did their parents react to their support for the street-cleaning campaign?</p>\n<p>"They were pretty okay with it, but they asked us to clean our rooms first."</p>\n<p></p>\n<p>Contact: theuglyindian@gmail.com</p>\n<div class="caption body-width">[First published by BBC News Asia on 30 Nov. 2011</div>\n<div class="caption body-width"></div>\n<div class="caption body-width">http://www.bbc.co.uk/news/world-asia-15769402]</div>	\N	2014-02-21 09:16:35+00	4	ugly-indians-clean-up-bangalore	0	Garbage dump urine stench paan stains missing footpath slabs masks anonymity eco-friendly waterless toilets	1	0	0	t	uploads/blog/ugly_indians_banglore.jpg	f		t	0	2014-02-21 09:29:10.216429+00	2014-02-22 08:40:16.602012+00
2	 A historical description of the Navdanya Seed Conservation Farm and University in Dehradun	Beeja Vidyapeeth - Seed conservation initiative in Uttarakhand	\N	23	<p>Since its creation, Navdanya’s mission has been “To protect nature and people’s rights to<br>knowledge, biodiversity, water and food.” Therefore, its main objective is “to promote peace and<br>harmony, justice and sustainability.” Have a <a href="/static/media/uploads/Stories_PDFs/bija_vidyapeeth_navdanya.pdf" target="_blank">Historical Glance at the Activities of Navdanya Biodiversity Conservation Farm and Seed University</a></p>	\N	2014-02-12 23:29:21+00	3	beeja-vidyapeeth-seed-conservation-initiative-in-uttarakhand	0		1	0	0	t	uploads/LearningandEducation/beej.png	f		t	0	2014-02-12 18:12:55.671679+00	2014-02-18 11:49:51.838785+00
2	 The new Eco-cab phone-in system provides ready services to residents and an improved livelihood option for rickshaw-walas.	Chandigarh Eco-cabs	\N	82	<p>Make a phone call to the rickshaw operator and negotiate the price by providing details about your starting and destination location. This community dial-a-rickshaw service in Chandigarh city is currently running in 30 sectors or half of Chandigarh city. Navdeep Kumar Asija, Founder of Ecocab says, "About 90% of the cycle rickshaw drivers have mobile and about 97% of the residents in Chandigarh have mobile phones. We sort of connected them together through our website. One can call and refer a favourite cycle rickshaw driver in their area or can also find a rickshaw to call at their door step. This provides ready services to the residents and an improved livelihood option for rickshaw walas. The website is slowly and steadily building up a database of cycle rickshaw drivers in the entire city."</p>\n<p>Here is how it works:</p>\n<p><strong>Eco-cabs Information</strong><br>The Chandigarh Eco-cabs website <a href="http://chandigarh.ecocabs.org" target="_blank">chandigarh.ecocabs.org</a> has information on<br>• Google maps pin-pointing the location of rickshaw stands in each sector<br>• Cell phone numbers of rickshaw pullers</p>\n<p>An Android-based application for mobile phone users which can be used both for adding details of rickshaw puller as well as for searching a rickshaw near your location has also been developed and is being used. Soon, users would be able to use the service through SMS notification.</p>\n<p><strong>Rickshaw pullers’ Membership of Eco-cabs</strong><br>A potential passenger may identify a rickshaw puller and seek his willingness to be a member. Next, the contact information, cell number and photo of the rickshaw puller is to be uploaded on the community portal designed for eco-cabs. All the registrations for rickshaws have been carried purely on the recommendation of city residents.</p>\n<p><strong>Training</strong><br>Chandigarh Eco-cabs provides a fifteen minutes training on basic courtesies to the nominated rickshaw pullers. The “good etiquette” training for registered rickshaw pullers is also being done collectively at night shelters.</p>\n<p>Chandigarh is a tourist city. Three routes mostly frequented by tourists have been identified for providing eco cab services (Rock Garden to Sukhana Lake and back, Geri toute Express between Sector 8 and 11 and Tourist circuit). The rickshaw drivers have fixed a rate for ferrying passengers which is economical to both them and the tourists.</p>\n<p><strong>CustomerSpeak</strong><br>"We don't have cycle rickshaw in Sector 8, many senior citizens stay in this area, make arrangement for cycle rickshaw in this area. Today I want to see the Elantte Mall please send the new green auto rickshaw at home. Nobody takes me out otherwise. God bless you"<br>- An elderly lady from Sector 8.</p>\n<p>Ecocabs first started in Fazilka, Punjab. Asija says “Ecocabs are not a new mode of transport, but a new system of transport. It cannot be achieved by one person but by a collaborative effort of rickshaw operators union, local authority and a local NGO active in transportation.” Looking at the success of Ecocabs model in Fazilka, the High Court of Punjab and Haryana issued a suo moto directive to both the governments asking them to start similar services in other parts of the states.</p>\n<p>After launching Chandigarh Ecocabs, where on an average 5 lakh passenger trips are made by cycle rickshaws, Asija now hopes to take the system to Gurgaon, Delhi, Chennai and Hyderabad.</p>\n<p><strong>First Published in the SUM Net Newsletter, Volume 1, Issue 1, 2013</strong></p>	\N	2014-02-28 05:39:51+00	3	chandigarh-eco-cabs	2	rickshaw eco-friendly transport	1	0	0	t		f		t	0	2014-02-28 05:43:14.50402+00	2014-04-04 09:43:38.350426+00
2	In 1965 a young post graduate student, SANJIT “BUNKER” ROY volunteered to spend the summer working with famine affected people in Palamu District Bihar, now Jharkhand, one of the poorest of India’s states. His urban elitist upbringing had distanced him from poverty and destitution. This experience changed him, and formed the determination to fight poverty and inequality. It became his mission. The idea of the SWRC (Social Works and Research Centre), Tilonia emerged from these concerns.	A Barefoot Journey to Tilonia	\N	78	<p><img height="168" src="/static/media/uploads/LearningandEducation/barefoot_college_2,_tilonia,_rajasthan.png" style="float: left; margin: 3px;" width="300">A less traveled track to Tilonia gives one a journey into Indian entrepreneurship and perhaps changes the way our villages are perceived by city dwellers. Tilonia brings you face to face with the real spirit of India. Its misty hopefulness uncovers the nature of the task that is ahead for a social entrepreneur, its uniqueness and challenges.</p>\n<p>Tilonia is a small town 25 kms from Kishangarh near Ajmer in Rajasthan. Barefoot College, established in 1972, inspires this town with the conviction that solutions to rural problems lie within the community. These solutions are broadly classified by Barefoot College into solar energy, healthcare, education, water, rural handicrafts, people’s action, communication, women empowerment, income generation, wasteland development, electricity and power as well as social awareness and conservation of ecological systems in rural communities.</p>\n<p>Barefoot College was founded by Sanjit ‘Bunker’ Roy, an Indian social activist and educator. Roy was influenced by the philosophy of Mao Zedong, and modeled his organization after Mao’s Barefoot Doctors. Roy has worked all his life with the Barefoot College.</p>\n<p>Spread over more than 8 acres of land, the campus of Barefoot College was built between 1980 and 1986, designed by a team of rural ‘barefoot’ architects, masons, blacksmiths, farmers and members of women groups who sat and struggled through the initial basic designing of the campus. This institution believes in imparting informal, non-structured, on-the-job practical training by identifying the poor, unemployed youth who have been unable to finish their formal education and have returned to their respective villages as dropouts. The five principles which are an integral part of the functioning of the college are equality, collectiveness, self-reliance, decentralization and austerity.</p>\n<p>The education program focuses on the overall development of rural children, with literacy being just one part of it. It encourages hands-on or learning-by-doing process of gaining knowledge and skills. Lessons are focused on awareness about the environment and socio-economic and political forces that dominate development. The aim is to provide the children with a right balance of education and literacy so that they choose to stay in their village and work for its development. The college has different programs for children and women. There are <em>Balwadis</em> (rural crèches) established for children between the age of 6 months-5 years for the convenience of working mothers. Night schools have been set up for ‘working children’. There are bridge courses, courses for night school children who aspire to join formal day schools. In these night schools, initiatives like the children’s parliament are established which allow them to participate in the management of their schools through a democratic process. Candidates are selected through a proper election process, giving them an idea of the working of a democracy.</p>\n<p><img class="img_left" height="387" src="/static/media/uploads/LearningandEducation/barefoot_college,_tilonia,_rajasthan.png" style="margin: 3px; float: left;" width="518"></p>\n<p>There is also a huge emphasis on the holistic development of women by empowering them socially, financially and politically. In the past 38 years, the college has trained more than 15,000 women in jobs ranging from construction work, education, metal craftsmanship, toy making and solar engineering, to mechanical repair and fabrication, health care, water testing, handicrafts, film making and social activism.</p>\n<p>The Barefoot College has setup eight field centers in Rajasthan and a society known as SAMPDA (Society for Activating, Motivating and Promoting Developmental Alternatives) through the collective efforts of which the Barefoot approach is replicated in rural communities across 14 states in India.</p>\n<p>The global response received by the organization is worth acknowledging. The institute has witnessed semi-literate middle aged woman traveling from places as diverse as Afghanistan, Cameroon, Gambia, Mali and Sierra Leone to undergo training to become barefoot solar engineers.</p>\n<p>To know more about this organization and to read on some of its wonderful initiatives, please visit their website at <a href="http://www.barefootcollege.org/" target="_blank" title="Barefoot College Website">www.barefootcollege.org</a>.</p>\n<p></p>\n<p><b>Reprinted from:  </b><a href="http://www.thebetterindia.com/">http://www.thebetterindia.com/</a></p>	\N	2014-02-26 19:22:03+00	3	a-barefoot-journey-to-tilonia	0	Tilonia Rajasthan Barefoot college education	1	0	0	t	uploads/LearningandEducation/barefoot_college,_tilonia,_rajasthan.png	f		t	0	2014-02-26 19:35:33.329665+00	2014-02-26 19:38:55.431627+00
2	Natwar Sarangi of Odisha is an extraordinary farmer, collecting and trying several hundred traditional varieties of paddy and redistributing them to willing farmers. 	Natwar Sarangi of Odisha, the individual revolutionary	\N	54	<p><img height="402" src="/static/media/uploads/Livelihoods/natwar_ricediversity.png" style="vertical-align: top; margin-left: auto; margin-right: auto;" width="604"></p>\n<p>First Published in The Hindu, December 8, 2012</p>\n<div dir="ltr">Natwarbhai was earlier a ‘modern’ farmer, lured into it by officials and traders, involving high-yielding varieties,</div>\n<div dir="ltr">chemical fertilizers, and pesticides. One day, while watching a labourer spray Carbofuran (a highly toxic pesticide), he</div>\n<div dir="ltr">was horrified to see him stagger and collapse. Rushed for treatment, the worker survived, but not Natwarbhai’s faith in the new agriculture...<a href="/static/media/uploads/Stories_PDFs/natwar_sarangi_rice_diversity_hindu_dec2012.pdf" target="_blank"><strong>.Read on</strong></a> to know how this remarkable retired schoolteacher, practising organic farming for the last decade or so, swears by its potential to feed India’s population</div>	\N	2014-02-25 04:28:17+00	3	natwar-sarangi-of-odisha-the-individual-revolutionary	0	Cuttack Odisha rice organic farming Carbofuran	1	0	0	t	uploads/Livelihoods/natwar_ricediversity.png	f		t	0	2014-02-25 04:40:15.090693+00	2014-02-25 04:40:15.387535+00
2	Mangalajodi villagers have displayed a strong commitment to protect migratory and resident waterbirds at the edge of Chilika lake, Odisha. 	Village of Water Birds	\N	7	<p><img height="479" src="/static/media/uploads/Environment_And_Ecology/mangalajodi_p1010096_ashish_kothari.jpg.jpg" style="margin-left: auto; margin-right: auto; vertical-align: top;" width="640">Mangalajodi villagers have displayed a strong commitment to protect migratory and resident waterbirds at the edge of Chilika lake, Odisha.</p>\n<p>Read this short story about their <a href="/static/media/uploads/Stories_PDFs/mangalajodi_as_pub_ntl_geographic_traveller_india_oct_2012.pdf">ecotourism venture</a></p>	\N	2014-02-10 00:31:05+00	3	village-of-water-birds	0	Odisha Chilika Lake environment ecology livelihoods	1	0	0	t	uploads/Environment_And_Ecology/mangalajodi_p1010055_-_ashish_kothari.jpg	f	 	t	0	2014-02-09 19:10:36.271491+00	2014-02-20 07:24:49.234941+00
2	A Londoner describes her experience of the worldview of a community that lives in a remote part of Rajasthan without modern comforts, and what she learned from them. Such as that to bring about change all stakeholders have to see each other as equals, and that Trust between all stake-holders is essential, especially between those who have very opposing views.	A Journey to the Sacred Forest of Sariska	\N	49	<p>My alarm went off – it was 5:00 am. I decided to wake up to one of my favourite Bollywood songs: Chaiya Chaiya. It was a playful tactic to get me out of bed at this very early hour and it seemed appropriate, being in India for the Leaders’ Quest Pow-Wow.</p>\n<p>Leaders’ Quest brought about 100 of us together in Jaipur, Rajasthan to reflect and mobilise around key questions facing humanity today. Although we all come from diverse countries and contexts, we are all, in some way, motivated to help life thrive on this planet. We are asking big questions like:</p>\n<p>• What do we want humanity to be?</p>\n<p>• What really matters in life?</p>\n<p>• What is our personal role in helping to make the world a better place?</p>\n<p>• What do we need to shift in ourselves (internally) before we can effectively engage as leaders of change (externally)?</p>\n<p>The Pow-Wow’s intention was to help us think about all of these things. And to do so, we needed to be mentally, emotionally and physically taken out of our comfort zones. We were to be opened up to completely different ways of being and relating. And, most importantly, to different worldviews.</p>\n<p><img alt="pow-wow" class="aligncenter size-large wp-image-8518" height="448" src="http://www.leadersquest.org/cms/wp-content/uploads/pow-wow-jen-morgan-blog.jpg" width="600"></p>\n<p>Today was Questing day. We were split into groups of 10 and were off to visit eight inspiring examples of leadership in the Jaipur area. Our group was to visit Aman Singh of Krapavis, who is helping the people of the Sacred forest of Sariska.</p>\n<p>The night before, Marian gave us our briefing. “I’d just like to let you know that tomorrow’s trip is going to be challenging. It will test your comfort levels. All I ask is that you just go with the flow. The roads are rough. There are no toilets. There is no electricity. We need to leave at 5:10 am. The community is looking forward to seeing you”. Our grou split into four vehicles for our three hour journey to the Sacred Forest. We bumped and bounced our way through the final stretch of the monsooned muddy track – and we finally arrived at the mud huts of Beru, a small village in Sariksa Forest.</p>\n<p>Contrastingly, bright flashes of coloured saris popped out of the simple dark mud structures. We tumbled out of the vehicles and were greeted with smiles and a welcome ceremony.</p>\n<p><strong>I see you. You see me. We are all interconnected.</strong></p>\n<p>As we walked into a mud hut for our welcome introduction, I caught the eyes of our hosts – children, men, women, the grandmother. Unlike my normal encounters in London, people here looked deeply into my eyes. And I into theirs. However, I was seeing more than just their eyes – we were seeing the depths of each other’s souls. Despite not having a common spoken language, we connected deeply. As a natural impulse, smiles emerged.</p>\n<p>How freeing this feeling was – to be met with complete curiosity. No judgements, no filters, no assumptions. Just curiosity and a smile. It was at that moment that I realised how our Western cultures, through judgement and assumptions, are automatically suppressing the fullness of our individual and collective potential selves. We easily separate ourselves from each other and as a result lose a sense of interconnection and of responsibility to each other. The context of our global challenges require us to be nothing less than our fullest selves and realise our fundamental interconnectivity.</p>\n<p>• What can we do to meet each other with curiosity and joy?</p>\n<p>• How can we practice letting go of our judgement of others (and self for that matter!)?</p>\n<p><strong>A thriving community</strong></p>\n<p>The community hosted us with care and attention. We helped to make lunch and when it was ready we all stepped into the main hut. We sat on the dirt floor in a circle. Ceremoniously were all given a plate made of leaves carefully stitched together with grass. Then the leaf bowls.</p>\n<p>The pots were uncovered and lunch was served. A soup of buffalo curd and spices. Lentil soup. Pumpkin soup. Gram balls. Chapati. Gram flour and sugar. Limes. Yogurt. It was so carefully served to us, with love and attention. Before we began eating, the elder man said a prayer: “We are joined in community to give thanks. We are a community who plays together, who works together, who does good deeds together and, of course, who eats together.“ Community is something that is important to me – and I can’t think of a better definition of the word.</p>\n<p><strong>The key ingredient in change – TRUST.</strong></p>\n<p>Aman has dedicated his life to helping communities regain access to the sacred forests, their livelihoods and their empowerment. He told us the story of the Orans. There are thousands of them in Rajasthan. They are all self-sustaining forest communities that live in harmony with nature – economically, socially and spiritually. For hundreds of years, they have been living on their Sacred Land. Each Oran has its own deity that protects the forest. The community worships this forest and in return the forest takes care of the people and their livelihoods. However, tension has been rising…</p>\n<p>The Forestry Department has been tasked to save the last remaining tigers and support mining in these sacred forests. The unintended systemic consequences of this top down ‘protection’ means that the government has become out of touch with local communities and has stripped them of their power and rights – such as harvesting firewood (their only source of fuel for cooking and warmth). Frequently, they were unable to provide their milk-producing water buffalo with the essential ponds they need for drinking and cooling.</p>\n<p>But there is hope. Aram is actively working with hundreds of Orans, and through his experience he understands how change at scale happens. Here are a few things we can learn from him:</p>\n<p>• He is taking a <strong>whole systems</strong> approach to change.</p>\n<p>• He understands <strong>power dynamics</strong> and its interplay between, and within, the government and the community.</p>\n<p>• He believes that <strong>relationships</strong> are important.</p>\n<p>• He is <strong>demonstrating and amplifying the positive impact </strong>of the community model – and how it is better for all.</p>\n<p>• He provides <strong>a platform for learning across </strong>the communities.</p>\n<p>• He appreciates <strong>learning by doing </strong>and experimentation.</p>\n<p>• He is building the <strong>capacity of the community </strong>to have self-autonomy.</p>\n<p>• He is connecting this <strong>community to the policy makers </strong>to enable legal, structural shifts to bring about change.</p>\n<p>• He is building a movement for change by <strong>aligning Orans around a common intention </strong>–together they are stronger.</p>\n<p>I ask him, “Aman, what have you learned about catalysing change at scale – what are the most important things to consider? To this he replies, “It’s important to get everybody who has a stake in the forest in the room. The policy-makers need to be sitting next to the village elders. They have to see each other as equals in the solutions for change. And the key ingredient in all of this is trust. Trust between all of the stakeholders, especially those who have opposing views”. So, I wonder, in our efforts for change:</p>\n<p>• How do we create conditions of trust?</p>\n<p>• How can we build collaborative processes whereby everybody is involved in co-creating solutions?</p>\n<p>• What are the minimal optimal structures that allow local communities (and individuals) to have their own empowerment whilst being part of a wider whole?</p>\n<p><img alt="pow-wow2" class="aligncenter size-large wp-image-8518" height="448" src="http://www.leadersquest.org/cms/wp-content/uploads/pow-wow-jen-morgan-blog2.jpg" width="600"></p>\n<p><strong>“I am a facilitator, not a leader.”</strong></p>\n<p>As Aman spoke, it was clear he was an important leader in this world. He is an Ashoka Fellow and often shares the Oran story at international conferences. However, when asked about his leadership role, he responds humbly: “I don’t see myself as a leader, I see myself as a facilitator. It’s up to the other people to come up with the solutions so that they are empowered. I just help to orchestrate things. Although I am clear on my mission, I don’t see myself as separate to others, I am part of the whole system.” We then asked him to explain more about the women’s empowerment programme. Although he was clearly knowledgeable on the subject, he stepped aside and asked Pratibha Sisodia, a Director of Krapavis, to come up to tell us more. Stepping aside to let others shine. Now that truly is a man in service to others. Respect.</p>\n<p>• What is your life’s mission?</p>\n<p>• What role do you/we each play in the system?</p>\n<p>• How can we be of service and help others shine?</p>\n<p><strong>We protect what is sacred.</strong></p>\n<p>After lunch, we went to see the holy man of Beru. He is protector of the deity and thus of the Sacred Forest. I ponder some important questions: why is it that we protect whatever is sacred? What if we held more things sacred in our lives?</p>\n<p>The current holy man was nominated by the village, about 35 years ago, to live in the thick of the forest and in the temple overlooking it. As we walked up the steps to the temple, I felt excited to meet a holy man. What does a holy man do? What does he look like? What advice does he have for us?</p>\n<p>We arrive at the temple door and there he is. A sparkly eyed man, 50 years old or so. Long grey hair that falls down his back. A trimmed beard, a wispy moustache and eyebrows that are as lush as the forest outside. We all sit around at his feet like school children awaiting the teacher’s instructions.<br> He is calm and graceful. He straightens his long white shirt over his legs, mindfully. He does not speak.<br> Marian then says to the holy man, through translation, “We’d love to hear your story”.</p>\n<p>He speaks. Slowly. With those sparkling and knowing eyes. With a tilt of the head. And the small curl of a smile at the side of his mouth. He speaks of his dedication to his meditation practice. Through meditation he has been able to develop his higher consciousness. “To show good feelings to all that lives”. He says it’s important, “…to calm the mind of the self, so that you can be all that is interconnected. This will bring you true happiness.” I am reassured though, as even the holy man says that developing his own consciousness has been hard work.</p>\n<p>• What is sacred to you?</p>\n<p>• How can meditation help you to clear the ‘busy-ness’ of your mind, so that you have greater clarity and power?</p>\n<p>• How can we demonstrate nature as sacred? Would we then protect it more?</p>\n<p>It was an amazing day!</p>\n<p>I never knew that I’d have so many rich learnings all wrapped up into 12 hours. Personally, there are three things that I am taking away to fold into my own practice. They are:</p>\n<p>• To practice meeting and seeing others without filters, judgement or assumptions and with curiosity, love and lightness.</p>\n<p>• To be more disciplined in my meditation practice as a means to calm my mind and to tap into my inner strength and knowing.</p>\n<p>• To extend and build trust – in myself and others. And to create trusting environments when I am convening and facilitating others.</p>\n<p>I’ve also come away more widely inspired about humanity and even more clear that we are all fundamentally good. We are a deeply interconnected community. Through amazing authentic leaders like Aman, we are seeing powerful models and methods for change. And most importantly, I’ve witnessed that it is possible for humans to live economically, socially and spiritually in harmony with nature.</p>\n<p><strong>Now that is sacred.</strong></p>\n<p>[First Published on http://jenmorgan2050.wordpress.com/2013/09/29/a-journey-to-the-sacred-forest-of-sariska/]</p>\n<p>Location  near 27°19'34"N   76°26'50"E Sariska National Park, Beru village</p>	\N	2014-02-24 07:53:50+00	4	a-journey-to-the-sacred-forest-of-sariska	2		1	0	0	t	uploads/blog/sacred-forest-jen-morgan-sariska.jpg	f		t	0	2014-02-24 08:40:37.409748+00	2014-04-04 10:26:52.726486+00
2	While agriculture in other parts of the country was in doldrums, the sangham farmers were completely self-reliant as far as food, seeds and farming are concerned. When farmers elsewhere were facing the indignity of having to stand in long queues to access government supplied seeds, women of the DDS (Deccan Development Society) were staking their claim to the elusive mantle of food sovereignty....	Torch bearers for millet seed security	\N	73	<p><strong>The National Biodiversity Authority has recognised 30 villages in Zaheerabad of Medak district of Andhra Pradesh that grow traditional and fast-disappearing millets as Agricultural Biodiversity Heritage Site (ABHS).    </strong><br> <br>  The Andhra Pradesh State Biodiversity Board (APSBB), which finally gave green signal for the rare recognition, has sent its recommendation to the National Biodiversity Board, which has approved the proposal making these villages to become first villages in India to be recognized as ABHS.</p>\n<p>“The file is now with the agricultural department. By the end of January we will announce these villages as ABHS with or without their opinion,” a determined APSBB Chairman Dr R Hampaiah says. Thus, the dryland villages in four mandals and the 5,000-strong women farmers of the Deccan Development Society (DDS) that grow only “forgotten millets” without fertilisers or pesticides will join the list of 27 such other sites around that world by February.</p>\n<p>“Nowhere in the world 60 different varieties are cultivated in 30,000 acres and the seeds are distributed among women farmers, assuring food safety and saving the environment,” says Dr SN Jadhav, Member Secretary, APSBB.</p>\n<p><br> The 500-year-old banyan tree in Pillamarri tree spread on three acres of land in Mahbubnagar district and the rare forest on Tirumala hills are the other two sites in Andhra Pradesh that have such special recognition.</p>\n<p><br> In fact, a few months ago, three members from the Board—Anisetty Murthy, Ashok Kumar and Hampaiah-- had visited the farms to see the amazing agricultural biodiversity that was being conserved and propagated by the women of DDS. <br> <br> The announcement added vigour to the 15th edition of biodiversity festival in Algole, a small village in Zaheerabad mandal in Medak district, from where a month-long bullock cart caravan yatra begins and tours 70 villages in all the four mandals of the heritage site, encouraging people to adopt forgotten crops.</p>\n<p>“We are now trying introduce the concept in 18 other states in the country. The DDS even had its impact in Africa, where women  are trying to take back farming from the hands of commercial organisations,” added DDS Director PV Sateesh. <br> <br> While agriculture in other parts of the country was in doldrums, the sangham farmers were completely self-reliant as far as food, seeds and farming are concerned. When farmers elsewhere were facing the indignity of having to stand in long queues to access government supplied seeds, women of the DDS were staking their claim to the elusive mantle of food sovereignty. <br> <br> Women of the DDS also succeeded in drawing the attention of the government to the need for including millets in government food programmes like PDS, the mid-day meal scheme and so on; the spate of orders asking for the inclusion of millets in these schemes is a testimony to the extent of success of the women of the DDS. <br> <br> Some women farmers of the DDS also can handle the latest version of digital camera, the daily narrow cast of the Sangham FM radio and help save bio-diversity by cultivating forgotten millet crops with equal élan. Women camera operators of the Community Media Trust (CMT), probably the only such media house in the country, can handle, shoot, edit and produce short films without any outside help. <br> <br> The initial toil and success of women was then presented to the outside world through photos and then videos. Then came the launch of the CMT, which has been winning several laurels for its amazing media work over the last decade.<br> <br> The CMT runs a women’s video collective (WVC) and the first-ever community radio of India called Sangham Radio. While the WVC has been functioning since 1996, the Sangham Radio took up Narrowcasting since 1998 and has been on the air since October 2008,  broadcasting two hours every day. Both these outfits are managed entirely by women from farming communities.  <br> <br>  Chinna Narsamma, a small farmer who made a film “Community Conquers Hunger”, said that the sanghams were the first group in India to have started 100 days of employment for the poor, which preceded MGNREGA by 20 years.<br> <br> <strong>Summer employment    </strong><br> <br> Through this employment programme which they called summer employment, they brought over 5,000 acres of near fallow lands under cultivation, produced more than a million days of employment in 30 villages in 10 years and started producing over 20 million kg food every year. This was the first step in abandoning hunger in their sanghams.<br> <br> Zaheerabad Punyamma added that the sanghams started leasing lands and launched collective farming groups on these leased lands and produced additional food for their families.<br> <br>  In two decades, the sanghams have leased more than 1,000 acres of land and produced over half a million kg of food for their groups. Dandu Swaroopamma, a community filmmaker and a member of the DDS Food Sovereignty Trust said that the sanghams have brought over 4,500 acres of cultivable fallows under cultivation and produce nearly a million kg or more food every year. <br> <br> They have done poverty mapping of their villages and identified over 10,000 families as recipients of their jowar-based millet rations.  Each family has received a ration card through which they can draw between 10-25 kg of jowar every month depending on their poverty status. The jowar is sold at 25 per cent of the market price to the identified poor. <br> <br> Begari Laxmamma, a community filmmaker and a community seed keeper, pointed out that all these villages have their own community seed banks from which any farmer can borrow nearly 50-80 seed varieties.   Thousands of women in these villages have their own household seed banks and never depend upon outside seeds. Thus these villages have become seed sovereign.  <br> <br> Thammali Manjula, filmmaker and a coordinator of the Community Food Sovereignty programme, says “Our films have nothing dramatic but depict our lives and it’s about how we conquered hunger.”</p>\n<p>First Published in <a href="http://www.deccanherald.com/content/381375/torch-bearers-millet-seed-security.html" target="_blank">Deccan Herald</a>, Jan 19, 2014</p>	\N	2014-02-26 04:45:54+00	3	torch-bearers-for-millet-seed-security	0	agricultureal biodiversity medak Andhra Pradesh	1	0	0	t	uploads/logos/food_and_water.png	f		t	0	2014-02-26 04:53:29.83531+00	2014-03-06 17:21:13.752527+00
2	Center for Learning (CFL) is a space for learners interested in discovering what it means to live an authentic, personally meaningful and socially responsible life.  It is a space for understanding one’s responsibility towards oneself, others and towards one’s work. The face of CFL is an alternative education centre that supports learners of all ages to connect with themselves; figure out their values, interests and direction in life. The heart of CFL is a continuing enquiry to understand what is education beyond formal schooling.  At CFL the attempt is to understand the challenges of living meaningful, responsible and self-regulated lives of inner and outer harmony. The hope is to evolve a lifestyle and a way of looking at things that is truly just, that genuinely respects the cultural and biological diversity of all living beings and bring out the best in individuals and as a collective.	Self-Assessment at Centre for Learning, Secunderabad	\N	69	<blockquote>\n<p>Center for Learning (CFL) is a space for learners interested in discovering what it means to live an authentic, personally meaningful and socially responsible life.  It is a space for understanding one’s responsibility towards oneself, others and towards one’s work.</p>\n<p>The face of CFL is an alternative education centre that supports learners of all ages to connect with themselves; figure out their values, interests and direction in life.</p>\n<p>The heart of CFL is a continuing enquiry to understand what is education beyond formal schooling.  At CFL the attempt is to understand the challenges of living meaningful, responsible and self-regulated lives of inner and outer harmony.   The hope is to evolve a lifestyle and a way of looking at things that is truly just, that genuinely respects the cultural and biological diversity of all living beings and bring out the best in individuals and as a collective.</p>\n</blockquote>\n<p align="center"> <img height="415" src="/static/media/uploads/LearningandEducation/cfl1.jpg" width="553"></p>\n<p>As the first term this year drew to a close and most schools were busy conducting examinations – many of them squeezing in two exams a day to make up for the unexpected loss of working days, we at Centre for Learning, Hyderabad, got down to our almost week-long exercise of self-assessments with the children. Almost a week spent by the children (mostly 10 years and above) and teachers huddled in a room just talking can seem to an outsider as a gross waste of time, when there is so much of the “syllabus” still to be covered, and so much time has already been lost due to various bandhs. But these exercises remind me, as they always have time and again, how amazingly self-reflective and honestly self-critical children can be when we repose faith in them. Not just that, they are also capable of providing the teacher some insightful feedback and criticism.</p>\n<p> </p>\n<p>The assessment exercise usually starts with one of the teachers introducing the children to the exercise we were doing. For the benefit of the newer children, she gives a few broad guidelines for looking back at the term – some of the key aspects that are suggested for each academic subject are understanding of concepts, coverage, interest, and confidence level in the particular area, effort, and feeddback on the respective teachers. In addition, there are some overall aspects like learnings that were personally important/exciting, behaviour, attitude, and level of responsibility shown. They are of course free to say anything else that they wish to about the term they just completed. Children are reminded that they are to measure their achievements against their own efforts and not compare themselves with others. After the initial and minimal introduction to the exercise, it is left open to the children to start off, in no particular order but leaving it to them to decide when each of them would like to take the turn to speak. Usually, children who have been longer with the Centre and have done this exercise a few times in the past, start off, as they know that they can speak their mind here without being judged. The newer children, with a little time and when they see the others speaking candidly, open up, if not the first time, very often, after a few sessions like this. Engaging with children to look at their own work and attitudes is a continous process through the daily routine. However, a milestone activity like this affords a different kind of space in two ways. One, since it is not related to an immediate task, or a particular behaviour that the learner has been involved in, there is a little more objectivity and a lesser need to be defensive. Secondly, as it is a collective exercise, seeing others look at themselves, makes children feel more secure in doing it themselves, and also helps them see that failure and weaknesses, are acceptable and not shameful to admit.</p>\n<p> </p>\n<p>In the group of 8-12 year olds, Radhika who is 9, turning the pages of her English notes, felt, spellings was one area that she needed to work on. One 8 year-old felt he needed more practice in division. Giving their criticism on the teachers, a 9 year old said, “Although your handwriting on the board has improved, your writing in the books is still too difficult for me to understand,” – (the ‘still’ was because she had told me not to use running handwriting in the last couple of assessment sessions too!). And as another 10 year-old said, “Sometimes when you are angry with one of us, you also tend to show that anger with others”. Both these criticisms I had to accept as true, when I thought about them.</p>\n<p>Anthony, a 15 year-old, who has been in and out of the Centre a few times, talked of how on the one side, he really wanted to study and would resolve to do his work at home, and how once he reached home, he would get totally overwhelmed by the urge to watch TV, or to go out with his friends and then would come back very late. Talking about his significant learnings in the term, he mentions the visit to the cancer hospital and says, “I know all the bad effects of smoking, but I still somehow cannot stop smoking totally”. We talk about his problem with TV and friends and how we could together overcome it and think of a few ideas that we would try out – including his coming to a teacher’s home to do an hour of study time with her.</p>\n<p>Clara, a 13 year-old, feels she hasn’t made any progress at all this term. With stark honesty, she admits that sometimes she just gets very bored with most of the academic subjects and then the quality of her work slips. When asked what interests her, she mentions dance and embroidery.</p>\n<p>As we go along, we came to know that Arun feels his interest in math has gone up this term, but still doesn’t feel very confident, he also thinks he gets into fights and scuffles much less now compared to last year, Navya is satisfied with her progress and thinks she has put in her best efforts. She loved her dance and singing, Rajesh and Suresh enjoyed compering for the Independence Day and enjoyed dancing on the stage for the first time in their lives.</p>\n<p>At the end of the sessions, we not only had an idea of how the children felt about their progress in academics, but also about what excited them, what kept them from doing their best, situations at home, their interests, and what they thought about their attitudes.</p>\n<p>Examinations are useful tools of assessment. If designed well, they do help to evaluate a learner’s understanding and to some extent application of their knowledge. However, they still can only throw light on WHAT the learner doesn’t know. They are limited in scope in answering the question, WHY has the learner been unable to learn what is expected in the examination, and treat the learner as a black box, in the sense that it just measures the output (read: performance of the learner) with respect to the input that she has got in the classroom in a particular period. Self-assessments, on the other hand, provide insights to the teacher into the learner as a person, her motivations, interests, what is personally meaningful to the learner and the different persona within that person and also help the learner become more self aware, which in itself is a valuable end.</p>\n<p>For an exercise like this to be truly meaningful in an educational space, it demands that the role of teaching itself moves radically – from treating it as a job of efficient delivery of a present syllabus to that of a sensitive, caring, critical thinking, dialectic engagement with learners – from a 9 to 5 job to that of an act of love. Otherwise, an Anthony’s situation can be quickly dismissed as one of individual irresponsibility and utter waywardness instead of seeing him as a product of his circumstances and context, and also seeing that side of him attempting to overcome his situation, weak, but still alive and trying! Clara’s frankness in admitting to boredom in most of academics can easily be dismissed as sheer indolence (which is a possibility but not a certainty!), without raising deeper questions on the epistemic skewedness of what we deem as important knowledge – marginalizing and devaluing crafts and almost glamourizing the intellectual.</p>\n<p>For an educational space that genuinely believes that a learner-teacher relationship can be democratic and is seriously committed to helping learners become self-motivated and independent learners, self assessment is not only a very important evaluation exercise, but is, in itself a direct and important learning activity towards the achievement of curricular aims.</p>\n<p>As we bade goodbye to the children and prepared to leave for the holidays, I wondered if Anthony would survive the battles inside himself and still come back after the holidays … and wondered what to do with this girl named Clara… or rather what <em>can we do that makes sense to her too! But the worry about the incomplete syllabus bothered me too…</em></p>\n<p>(Names of the children have been changed to protect their identities)</p>\n<p> </p>\n<p>The author works with the Centre for Learning, Secunderabad. He can be reached at <a href="http://www.teacherplus.org/notes-from-a-teachers-diary/knramgopal@yahoo.com">knramgopal@yahoo.com</a></p>\n<p> </p>\n<p><strong>Website:</strong> <a href="http://www.centreforlearning.org/">http://www.centreforlearning.org/</a></p>\n<p><strong>Facebook:</strong> <a href="https://www.facebook.com/pages/Centre-for-Learning-Secunderabad/102976536449131" target="_blank">Centre for Learning, Secunderabad</a></p>\n<p><strong>Reprinted from:</strong> www.teacherplus.org, <a href="http://www.teacherplus.org/notes-from-a-teachers-diary/self-assessment-at-centre-for-learning" target="_blank">Self-assessment at Centre for Learning</a>, January 2011</p>\n<p><strong>Original Title:</strong>  Self-Assessment at Centre for Learning</p>\n<p>Read more articles on Centre for Learning on the web:</p>\n<p><a href="http://www.teacherplus.org/2013/march-2013/parents-must-have-a-choice" target="_blank">Parents Must Have a Choice</a> by Gurveen Kaur on www.teacherplus.org, March 2013</p>\n<p><a href="http://www.learningnet-india.org/groups/andhra/cfl-hyd/index.php" target="_blank">Center for Learning</a> on www.learningnet-india.org</p>	\N	2014-02-28 12:30:00+00	6	centre-for-learning-secunderabad	0		1	0	0	t	uploads/chilika_lake.jpg	f		t	0	2014-02-25 18:59:47.370649+00	2014-03-13 10:40:39.273368+00
2	Piyush Sethia is an activist of the 21st century. Candid, honest and passionate to the core. He has for the city of Salem, Tamil Nadu with every last drop of integrity. Rejuvenating lakes, creating co-operative forests, teaching organic farming to children and running a Citizen’s forum. Attached is a short glimpse into the life of an activist.	Life of Pi-yush- 21st Century activist, Salem	\N	80	<p><img src="/static/media/uploads/SocietyandCulture/piyush2.png" style="float: left; margin: 3px;"></p>\n<p></p>\n<p></p>\n<p>What does it mean to be responsible? Who and what are we responsible for? Are we only responsible for ourselves? Our family? Our Community? What about the mountains, the rivers, and the land?Who takes responsibility for them? Read what Adil Basha has to say about <a href="/static/media/uploads/Stories_PDFs/piyush.pdf" target="_blank"><strong>Piyush Sethia</strong></a>, a young 21st century activitist...</p>\n<p><em>First Published in Eternal Bhoomi July - September 2013</em></p>	\N	2014-02-27 05:28:30+00	3	life-of-pi-yush-21st-century-activist-salem	0	salem Tamil Nadu Piyush Sethia Restoration community bio-gas horticulture sustainability learning activist	1	0	0	t	uploads/SocietyandCulture/piyush1.png	f		t	0	2014-02-27 06:24:43.500161+00	2014-03-07 03:13:54.256401+00
2	Decentralised energy can provide solutions to many of India's energy requirements, especially in rural areas. 	Taking Charge: Decentralised energy in India	\N	6	<p><img height="304" src="/static/media/uploads/Energy/takingcharge_1.png" style="vertical-align: middle; margin-left: auto; margin-right: auto;" width="512"></p>\n<p>Taking Charge is a selection of case studies of small-scale, decentralised renewable energy systems in India in 2010. Each has two parts: the main story, which captures some of the remarkable human and social elements that have shaped these pioneering projects, and a quick-glance section, which provides an easy reference for the more technical aspects.</p>\n<p>The strength of these stories lies in their diversity. One is a diversity of the context in which they are based, including<br>the geography of the place, and its social fabric. From semi-nomadic pastoral tribes in the Himalaya, to castebased<br>politics in the deserts of Rajasthan, to church-lead community action in the hills of Kerala, renewable energy is seen being applied to the problem of energy access in a variety of contexts. Another is the diversity of solutions applied. Each of these renewable energy projects has worked because they are tailored to fit the local needs and conditions.</p>\n<p>To know more read these <strong><a href="/static/media/uploads/Stories_PDFs/taking_charge_decentralised_energy_in_india.pdf" target="_blank">interesting case studies</a> <br></strong></p>	\N	2014-02-09 22:41:34+00	3	taking-charge-decentralised-energy-in-india	0	ecology energy livelihood Greenpeace energy case studies case studies	1	0	0	t	uploads/Energy/takingcharge.png	f		t	0	2014-02-09 17:15:28.89897+00	2014-02-20 07:24:49.183035+00
2	While more and more men (who hold the title to their farms) are migrating to urban areas and large industrialised farms, women stay in the villages and are increasingly taking over cultivating the land. In Narsenahalli village, women now fear that the lands may be sold or pawned by their menfolk. So they are demanding the right to the title deeds.	India’s women farmers become a force for change	\N	48	<p>Women farmers have become a dominant force throughout India, as more and more men migrate to earn money. Yet the pace of land and property rights reform hasn’t kept up.</p>\n<p>It is 7.30am in the village of Narsenahalli, near Doddballapur, about 45 kilometres outside the Indian city of Bangalore. A group of around 30 women aged between 25 and 80 have assembled on the front verandah of the brightly-coloured school that doubles up as a community meeting point.</p>\n<p>Someone has placed a red and blue striped mat on the floor and some of the village men are perched on the fence of the school courtyard, curious to know what the women are going to discuss.</p>\n<p>The women of Narsenahalli are here to talk about land. They have been working on the land for the last 30 years, and readily admit they've been farming on gomal land , low quality land set aside by the government as wasteland.</p>\n<p>The women grow dryland crops such as groundnut, red gram and the local cereal ragi – most of it for home consumption. But they also earn a small amount of money by making plates from sal leaves collected from the nearby forests and selling them at the local market. While the women work, the men travel to look for work.</p>\n<p>The village is part of a nationwide trend in agriculture, which over the last few years has seen huge changes. While more and more men are migrating to urban areas and large industrialised farms looking for paid work, women stay in the village and are increasingly taking over cultivating the land.</p>\n<p>According to estimates by Bina Agarwal, an academic researching and writing about women and land rights, almost half of the land in India is now farmed by women. The changes mean that in the rural areas the vast majority of women – around 85per cent – are now farmers. Agarwal points out that although what she calls the 'feminisation of agriculture' is taking place at a rapid pace, there has been less of a shift in cultural attitudes towards women.</p>\n<p>According to her research, India's inherently patriarchal mindset has not adjusted rapidly enough or questioned whether the women have rights to own the title deeds to the lands they farm.</p>\n<p>Although the women of Narsenahalli may be typical of this pattern, what is extraordinary is that they are also one of the first groups of women to challenge the status quo and demand the right to own the title deeds to the land they cultivate.</p>\n<p>Today the women are organized and form an all-women village unit to deal with land issues as part of a larger organisation, the Karnataka People's Forum for Land Rights (KPFLR), which was formed in 2001 to campaign for land reform.</p>\n<p>'We want our pattas. It is our right,' say the majority of women on the school veranda, as though rehearsed, referring to the title deeds to their plots of land.</p>\n<p>'We need our land,' says 40-year-old Chondamma. 'Tell her about our struggle', she asks Chitravathy, a convenor working with KPFLR who explains that they've been working with the women to raise their awareness about land rights and to push Karnataka to speed up the process of reform.</p>\n<p>Karnataka, along with West Bengal, has been at the forefront of land reform in India. In the 1970s, the Indian government initiated a progressive land reform process, known as regularisation, which aimed to allocate gomal lands to socio-economically weaker, landless communities.</p>\n<p>Progress over 30 years has been extremely slow, but recently the government has established Land Grant Committees to reinvigorate the reform process. Although the committees have been criticised for failing to consult with local communities, Chitravarthy feels that they still offer the best chance of change.</p>\n<p>'NGO or donors cannot make a big impact on obtaining land for the landless. This is a very political issue and working through the government is the only way out,' he says.</p>\n<p>So far, land for the landless, regardless of gender, has been a greater priority than land rights for women. However, given that the majority of KPFLR's members are now women, the gender dimension to land rights is becoming a higher priority.</p>\n<p>In the village of Narsenahalli, women's attitudes to their land rights are changing slowly. Eighty-year-old Thangamma is the oldest member in the schoolyard. Though fragile and stooped, she wants to have the title deeds to the gomal lands that she has helped cultivate ever since she married her husband over 50 years ago. Apart from the gomal lands, two other acres continue to be registered in her dead father-in-law's name.</p>\n<p>'I want joint ownership of these lands now,' she says, 'because my son may pawn the land. I want security.'</p>\n<p>Thangamma is worried that her son will use the land as security to access credit, and that because the family will never be able to pay the debt back, they will lose the land altogether. Almost all of Narsenahalli's women cited security as the main reason for wanting the land to be registered in their name, or at least jointly with their husband.</p>\n<p>If they have access to land, they can provide food for the family instead of needing money to buy it. With enough food coming in, they have time to look for other ways of earning money, by making and selling leaf plates, for example. This means they are able to buy clothes, school books or medicine.</p>\n<p>A few yards from the school stands 40-year-old Kadramma's house. Outside on a mud-built patio two cows and a goat are tethered to wooden posts. The cool, dark interior is divided into a kitchen and two rooms, all without doors. A black-and-white, second-hand TV set sits connected to an electric socket at one end. Kadramma's husband, 48-year-old Muniyappa, built the house with money from a government grant and family savings.</p>\n<p>The couple have four children. The eldest two have not completed school and are helping to support the family. 'I need my daughter to help with household work and my son works in a hotel in Bangalore,' explains Kadramma.</p>\n<p>The family's income pays for the two younger children's education. Kadramma and Muniyappa's 18-year-old son is in his first year of pre-university and their youngest daughter is at secondary school.</p>\n<p>The family also supports itself by organically cultivating three rain-dependent acres – one of which was handed down to Muniyappa by his father, and the other two are gomal lands that the family encroached on, about 3 km away.</p>\n<p>From these fields, each year the family harvests around 2,000 kg of ragi, 1,500 kg of red gram and 336 kg of groundnuts, half of which is used at home and half is sold for cash. But in rainless years, the harvest halves, sending Muniyappa to the village moneylender for loans which must be repaid at an exorbitant 60 per cent rate of interest.</p>\n<p>In 1991, Munniyappa applied, under the land regularisation scheme, for a patta or right to the gomal lands the family was farming. But over a decade later, nothing has materialised. Now he and Kadramma hope that with KPFLR's support, he will at last get the title deed he wants. The question of whose names the land should be registered under draws an embarrassed response from him. His wife stands beside him, equally embarrassed.</p>\n<p>'It doesn't matter who owns the land. It is not a big issue,' says Muniyappa. Kadramma concludes 'We all work very hard.'</p>\n<p>The priority for the rural poor may still be land rights for the family as a whole – whoever owns the title deeds. Single ownership in the woman's name – or joint ownership in both names – is still a sensitive topic, despite central and state government laws which allow equality of ownership. Women themselves, in spite of a collective feeling of unity at the meetings in the school hall, are hesitant when asked in their homes and in the presence of their families what they feel about owning their lands.</p>\n<p>But as more men move away, land insecurity for women is growing not diminishing. This pushes the need for an urgent focus on their rights – and a clearer understanding of the benefits equal rights will bring – further up the agenda.</p>\n<p>Bina Agarwal's research demonstrates the link between women's ownership of land and wealth creation, partly because they can manage the crops, fodder and trees themselves, and partly because they can also access credit and mortgages for themselves. Where land is owned and managed by women, there are signs that they use it as collateral to borrow money to start up micro-businesses which generate a steady income. The women also grow in confidence and demand services from the government for themselves and their children.</p>\n<p>These research findings come mostly from other countries and evidence of the link between women's land rights and wealth creation in India is rare. The lack of evidence may be one reason why the government has given the issue so little attention.</p>\n<p>Progress on land rights for women has also slipped down the agenda of development organisations working with women. A 2002 survey of women and land issues in Karnataka, conducted by the US-based Rural Development Institute, says interventions by non-governmental organisations have succeeded in empowering women in areas such as literacy, access to credit, job skills and health, but have not significantly increased claims for land ownership rights.</p>\n<p>But the survey also showed that 64 per cent of women polled thought government lands should be granted jointly to them and their husbands, indicating a growing awareness.</p>\n<p>In India, the debate about women's land rights and the impact they can have on rural wealth creation and security is minimal. Even in places where policy has been changing, such as in Karnataka and West Bengal, implementation is slow, and patriarchal attitudes are proving more powerful than the law.</p>\n<p>A few radical women's collectives have obtained land, such as in northern Karnataka where tribal women are working collectively. But these cases are few and far between and are mostly isolated projects supported by aid organisations.</p>\n<p>Back in the small village of Narsenahalli, there is a growing sense amongst the women about the benefits of owning the title deeds to the land they cultivate. There may be a long way to go until equal rights to own land becomes a reality throughout India, but what is happening in Karnataka may be the start of something big.</p>\n<p></p>\n<div class="caption body-width">[First published by Panos Media April 3. 2006</div>\n<div class="caption body-width"></div>\n<div class="caption body-width">http://panos.org.uk/features/indias-women-farmers-become-a-force-for-change/]</div>	\N	2014-02-23 11:22:07+00	5	indias-women-farmers-become-a-force-for-change	0	land ownership farms farmers agriculture land reform family womens rights	1	0	0	t	uploads/logos/food_and_water.png	f		t	0	2014-02-23 11:24:41.231088+00	2014-03-06 17:22:16.648254+00
2	A unique cell phone-based networking system in Chhattisgarh helps Adivasi Gonds share local news and air grievances.	The new jungle drums	\N	22	<p>Adivasi Gonds use cell phones to share local news and to air grievances through CGNetSwara, which gives the Adivasi Gonds of Central India a voice that reflects their interests, their local news and events. Want to know more about <a href="http://www.thehindu.com/features/magazine/the-new-jungle-drums/article5335263.ece" target="_blank"><strong>the jungle drums</strong></a>???</p>	\N	2014-02-12 23:25:09+00	3	cell-phone-based-networking-system-in-the-forests	0	CGNetSwara Shubhranshu Choudhary Adivasi Gonds Bill Thies Cell phone-based networking systems	1	0	0	t	uploads/KnowledgeandMedia/new_jungle_drums1_jpg_1647864f.png	f		t	0	2014-02-12 17:57:14.651598+00	2014-02-26 04:10:03.455036+00
2	A team of botanists in the Western Ghats has spent over 30 years on an ambitious project to regrow a rainforest. Akshai Jain reports in the Tehelka	Bringing back the rainforest	\N	8	<p></p>\n<p><img height="413" src="/static/media/uploads/Environment_And_Ecology/godsowngarden2620x413.jpg" style="vertical-align: middle; margin: 3px auto;" width="620"></p>\n<p style=""><em>(Wolfgang Theuerkauf (left), who started the sanctuary 30 years ago with Suprabha Seshan, Photo: Ishan Tankha)</em></p>\n<p>A small group of people is trying to bring back the original rainforest in Wayanad on a small 63 acre plot. They are also creating a living (seed) bank of sorts -- collecting and housing endangered ferns, lichens, orchids and other flora found in India's endangered rainforests. The idea being that even if these forests get lost, the species themselves should not go extinct.</p>\n<p>This is essential work. So much of our attention is on saving large animals. We have imperfect understanding of how the smaller fauna are doing. And even less understanding re: how the flora is faring. And yet, they are highly localised, adapted to a small region, and as vulnerable to extirpation as any other species you care to name. And so, the Gurukula team has been travelling through endangered forests - where a dam/plantation etc is about to come up - to rescue and transplant endangered species they encounter.</p>\n<p>At a time when the world's biodiversity is being haemorraged away every day, this is the fire-fighting level at which interventions need to be.</p>\n<p>To know more about the work done <strong><a href="http://tehelka.com/gods-own-gardeners/" target="_blank">Read On</a></strong></p>	\N	2014-02-11 11:28:48+00	3	bringing-back-the-rainforest	0	environment  Ecology environment organic-farming western Ghats Kerala	1	0	0	t	uploads/Environment_And_Ecology/godsowngarden_620x413.jpg	f		t	0	2014-02-11 06:03:35.273417+00	2014-02-20 07:24:49.26841+00
2	Aarohi School is based in Bangalore. Aarohi Life Education team is a mix of parents and facilitators who want to dream and drive the concept of open, organic and child driven learning for Life. As Aarohi evolves, we are constantly learning, trying, erring, fighting, caring, enjoying, and growing.	Aarohi - Organic Learning	\N	75	<p><b>Reprinted from: </b><a href="http://aarohilife.org/"><b>http://aarohilife.org/</b></a><b></b></p>\n<p><b> Imagine</b>  a school where there is no curriculum - because we believe that children can decide what they want to learn, how much they want to learn. Children rather develop a set of key 35 objectives over all the years of schooling.<br>     <b>Imagine</b> a school where there is no teaching - because we believe that children can decide how they want to learn - on their own, with each other and from various resources. We are there to guide them, where they need us.<br>     <b>Imagine</b> a school where there are no classes - because we believe that when children learn and teach each other - there is no need to separate them based on ages. We simply learn from whomsoever we can.<br>     <b>Imagine</b> a school where there are no tests and exams - because we believe that children can assess themselves. Also because children do not need to learn for some external objective (marks) but for their own love for learning.<br>     <b>Imagine</b> Aarohi, a life-school - where learning happens because children want to learn from their life - for their life.</p>\n<p><b>  Imagine</b> a school which does not make the learning easy. Children like it challenging.</p>\n<p>    <b>Imagine</b> a school which does not make the learning obvious. We make it confusing.</p>\n<p>    <b>Imagine</b> a school which does not make the learning interesting. Children work from their interest.</p>\n<p>    <b>Imagine</b> a school which guarantees one definitive outcome - that all learning will be self discovery.</p>\n<p>Aarohi means evolving. Child is always evolving - learning, growing and figuring out her life. Aarohi is a space where any child can discover self and the world around.<img height="291" src="/static/media/uploads/LearningandEducation/aarohischool.png" style="vertical-align: middle; float: left; margin: 3px;" width="363"></p>\n<p>The child is capable, is born an empowered being, is the best person to lead herself. She learns naturally, almost effortlessly, by experiencing, exploring, experimenting and expressing. This is how the child learned her mother tongue. Nobody taught her, no material, no activities, no time bound syllabus was needed. she used her exposure in the environment from peers to learn. She learned the mother tongue in her own unique way, at her own pace, and most importantly for her own reasons.</p>\n<p>There are many ways to look at education. We believe education is a journey that helps a child to explore himself - his thoughts, his interests, his strengths, his own kick in life, his purpose of life. If we were to not superimpose our view of the world, if we were to not package life for the child - then the child has freedom to choose what the child wants to do, how he wants to do and to bear the consequences of his action. This kind of freedom puts a lot of responsibility on the child, one which we believe the child is as capable to take, is akin to living life.</p>\n<p>Education is not about a system that the child follows, rather Aarohi is a system that follows the child in his journey of learning. To provide the child this space - Aarohi offers to the child: </p>\n<ul>\n<li> <b>Resources to choose from</b>: including all kinds of books, internet, videos &amp; movies, materials and equipment, people from all walks of life, places to visit, <a href="http://www.aarohilife.org/content/what-o-campus-taught">learning campus </a>etc</li>\n</ul>\n<p><img height="314" src="/static/media/uploads/LearningandEducation/arohi2.png" style="margin: 3px auto;" width="235"></p>\n<p><b><br></b></p>\n<ul>\n<li><b>Exposure of all kinds</b>: since our map is the whole universe - according to us everything is worth learning. The child meets all kinds of stuff, from stitching to salsa, from emotions to electromagnetism, from sonnets to subtraction - and so on. The child does not learn because we want her to learn something at that age. Child learns because she wants to learn that something at that age.<img height="235" src="/static/media/uploads/LearningandEducation/arohi3.png" style="vertical-align: middle; margin: 3px auto;" width="314"> </li>\n</ul>\n<ul>\n<li><b>Democratic environment</b>: Child chooses. Child is responsible for her choice. Child is accountable for the consequence of her choice. Child is also answerable to peers for her choices - to the extent it affects them. A democratic space is a challenging space - and for that reason it is a learning space!<img height="235" src="/static/media/uploads/LearningandEducation/arohi4.png" style="vertical-align: middle; margin: 3px auto;" width="314"></li>\n</ul>\n<p></p>\n<ul>\n<li> <strong></strong><b>Facilitators </b>who are with children but do nothing for them. Who question children but do not give answers. Who sometimes push (without expectations), pull, stay quiet, discuss, listen, accept, not accept, fight, let-go and sometimes just sit back and observe and later share what they observed. The child is free to use the facilitator as a resource, as a peer or as a support.</li>\n</ul>\n<p><img height="235" src="/static/media/uploads/LearningandEducation/arohi5.png" style="vertical-align: middle; margin: 3px auto;" width="314"></p>\n<p><strong> </strong>Aarohi is not a way, or a method or an approach. It is a space, an environment, an acceptance, a belief, a soil for the child to grow - as nature is already tuned to deliver. We call this organic learning. In nature every plant has its own way of growing - which we can only understand by observing each plant. We operate from the needs of the plant instead of the need of the farmer. In Aarohi we do not follow any method, any theory - but we follow each child - observing, understanding, exploring each child own unique way of learning.</p>\n<p>Aarohi was founded by Aditi Mathur who is an architect and Interior Designer. She is a counsellor and specializes in giving parents guidance over any kinds of issues. She has been working with children and training parents and teachers since 1999. She says, “With children in Aarohi, the life school concept is constantly evolving. If the life learning is the way of education then why not spread to more children? My vision is to take the life school concept to many more children.”</p>\n<p><b>Footnote:</b></p>\n<p>‘Can a campus teach? With this interesting perspective we are growing a campus in a village near Hosur. A <a href="http://aarohilife.org/visit-us">visit to our “open” campus </a>will show you that learning is less about what we learn, but more about what we live!</p>\n<p> </p>	\N	2014-02-26 05:31:56+00	3	aarohi-organic-learning	0	aarohi school Bangalore alternative learning alternative education Hosur Tamil Nadu	1	0	0	t	uploads/LearningandEducation/aarohischool.png	f		t	0	2014-02-26 06:57:34.048929+00	2014-02-26 18:55:40.608319+00
2	Ravi Gulati left a corporate job and took to teaching children of drivers, barbers and maids near his home in New Delhi's Khan Market. Today, in his unusual classroom every student is a teacher and every teacher a student.\r\n	Manzil, Delhi : Opening doors, creating pathways	\N	66	<blockquote>\n<p>Ravi Gulati left a corporate job and took to teaching children of drivers, barbers and maids near his home in New Delhi's Khan Market. Today, in his unusual classroom every student is a teacher and every teacher a student.</p>\n</blockquote>\n<p>“Journeys are always more than just a means. They make the end what it is and ought to be. Manzil is a destination made meaningful by its journey. I share with you my own journey which led me to Manzil,” -- Ravi Gulati, Founder, Manzil</p>\n<p align="center"><img height="225" src="/static/media/uploads/LearningandEducation/manzil_heads.jpeg" width="300"> </p>\n<h4>Starting at the beginning.</h4>\n<p>Manzil runs from my home in Khan Market, where I live with my mother and special sister. We live surrounded by the richest and the most powerful people of Delhi. The children and youth that over the last 10 years we have come to regard as our family – my buddies – grow up in their servant quarters. They are children of housemaids and cooks and electricians and barbers and drivers and servants. That’s about 120 young people at any given point of time, and more that have flown from the nest, and return as they feel, like one returns home.</p>\n<p> </p>\n<h4>Journey from within.</h4>\n<p><img height="224" src="/static/media/uploads/LearningandEducation/manzil_outdoors.jpeg" style="float: right;" width="300">My elder sister has multiple handicaps. Because of her special needs, she went to one of the first integrated schools in Delhi – Balvantrai Mehta Vidya Bhawan – and my mother came to volunteer at the school for almost 20 years, followed by working for 10 years in Sahan Institute which works with even more severely challenged children. In 1996, at the age of 62 and just coming out of a year and a half’s battle with cancer that we lost my father to, she wanted to open her own little school to serve young children with learning disabilities in Kotla, a slum-like area lying in the heart of Delhi, originally a cluster of villages that Delhi just grew around. Manzil was the name she chose.</p>\n<p> </p>\n<h4>Breaking the Habit.</h4>\n<p>Meanwhile, I had left aside an extended phase of broad exploring in order to take care of my father during this year-and-a-half, and after his passing away, had made a decision to settle down in a remote hill village basing my life on farming organically. But life, as usual, had other plans. Two children looking for help with their school maths approached me. Hemant – a washerman’s son studying in class 8th – and his friend Pramod – a gardener’s and a class younger. I was trying to reorganize family affairs before making the move to the hills so I had some time, and I agreed. Ten minutes with the children unraveled their concerningly dubious understanding of numbers. 2 – 5. Is it 3, -3, or can’t be done. Ten more minutes imagining how numbers would look if the current decimal system of representation were to be replaced by the binary one, and to my amazement, I found an incredibly sharp comprehension of this utterly alien concept. There was something completely contradictory there. The children were clearly bright and intelligent, but somehow they had been dumbed down by how they were taught at school.</p>\n<p>Over the weeks and months that followed, two things happened. Hemant and Pramod asked to include another of their friends, then another, then yet another, again and again… and I found myself acquiescing… each time. Soon there were 20 children, from various classes, all together because irrespective of the class they were in, all lacked the same basic understanding of what they had been doing for years. But when I was explaining BODMAS for the third time for the benefit of a new-comer, Hemant protested. He had already understood it well, and was hungry to move on. This was getting repetitive for him. ‘In that case’, I said to Hemant, ‘I invite you instead to explain BODMAS to your friend’. Hemant was confident of his learning, but hesitated to teach. Years of conditioning had taught him. A teacher was a ‘position’ and he wasn’t in that position – went his unarticulated thinking. A teacher was a ‘role-for-the-time-being’, and he was ready for it as far as BODMAS was concerned – went my unarticulated thinking. Besides, unlike him, I needed to carry everyone along in the class, and I wasn’t ready to start a separate class… yet… After some persuasion and promises of back-up support, Hemant reluctantly agreed to try his hand at teaching and, unknowingly to us then, together we laid the foundations of a crucial aspect of life at Manzil today.</p>\n<p> </p>\n<h4>Questioning. Never underestimate the power of questioning- it can lead you on a quest of finding answers that exist only in you.</h4>\n<p>The second thing that happened affected me personally and directly. I had grown up in this home in Khan Market. As a child, I had played cricket in the neighbourhood with children from all backgrounds (even though we had the ‘good’ sense to discern who of our friends we could take home and who we couldn’t). Now I was old enough to understand the context of my ‘don’t-take-home’ friends, through which I ‘saw’ their lives anew. Why had these children submitted to a farce perpetrated on them in the name of education? Do children, anywhere, have much of a choice anyway? I understood, over the months and years that followed, that their parents, whether under the sway of a widespread modern myth that schooling equals education, or having observed that any schooling, good or bad, still brings respect and status (unfortunately that’s true) and better earnings (surprisingly, often not true), put their children in the only affordable schools accessible to them – those run or aided by the State. The schools leave much to be desired; their characteristics in the main are:</p>\n<ol>\n<li>Apathy, often visible in the form of absenteeism or no teachers assigned or books available for months into the academic session.</li>\n<li>Over-emphasis on blind obedience and a generally stultifying environment.</li>\n<li>Questions measure rote-learning ability rather than any understanding.</li>\n<li>Blatant cheating, including in the form of letting children know in advance the questions that the teacher plans on asking them in the exam and having also supplied in advance – verbatim – the answers sought.</li>\n</ol>\n<p align="center"> <img height="225" src="/static/media/uploads/LearningandEducation/manzil_2girls.jpeg" width="300"></p>\n<h4>Looking at the insides of the wheel and finding the cogs.</h4>\n<p>At this point, it may be useful to examine two distinct goals of education that are frequently mixed up. The classical ideal of education is that it makes us better human beings, both within and in our lok-vyavhar (conduct in society), brings out our best potential, makes us active and constructive members of society, teaches us jeene ki kala in community (the art of living; they stole the phrase from the public domain and branded it) etc. The other goal – a utilitarian one – is how it helps us earn personal wealth and status.</p>\n<p>The parents of my children have at least one clarity. They are interested in education’s utilitarian benefits. They do not even bother to pay lip-service to the classical ideal, and so in this way they are clearly more grounded in today’s reality of what schooling actually pursues as opposed to what it likes to say it does.</p>\n<p><img height="300" src="/static/media/uploads/LearningandEducation/manzil_game.jpeg" style="float: right;" width="225">But to their utter bewilderment, even the promise of jobs on which ‘Education’ (schooling really) was primarily ‘sold’ to them turns out to be hollow when they leave its portals with the much-coveted certificate in their hands. Too many people enter the job market, certificate in hand, unprepared with the skills, knowledge and attitudes that modern jobs demand. Nobody taught them what they really needed to know. We used to call them the educated unemployed. Some now call them the educated unemployable.</p>\n<p>Interestingly, in their frustration, they often return to even higher studies. But all this does is drive a kind of ‘education inflation’ where young people pursue progressively higher and higher degrees in the hope of out-pursuing others, thereby seeking to thin the crowd of competitors for any given job. Few really acquire the skill-set needed to perform the available jobs through their education. If and when they do, it is through experience, often accidental.</p>\n<p>All this understanding evolved, of course, over the years, in parallel with the evolution of the work. It was clear that trigonometry was not going to serve my buddies in any way, except only as a passport to class 11th where the first thing they were going to do was run as far away as possible from maths. Yet a life awaited them, beyond school and college, for which they had dreams and aspirations. Unlike them, I realized that if there was one thing that would give them a real shot at what they wanted, it was the ability to converse confidently in English.</p>\n<p> </p>\n<h4>Dispelling Myths</h4>\n<p>English. Funny thing is, as far as my information goes, it’s spoken only by 5 % in India. Yet it is treated as our lingua franca. Not a sign on a shop in Khan Market is in any language other than English. Not a programme is announced or introduced at Delhi’s cultural hubs like India Habitat Center in a language other than English. Big business, higher education, higher judiciary – all completely monopolized by English. Our slavish attitude towards what should otherwise be just a language is betrayed by oft-heard phrases like, “He is dumb, he doesn’t even know how to speak English”. And in spite of having learnt English as a subject for years in school, my children could not have a simple, meaningful, independent conversation in the language. If there was one thing that would not only dramatically improve their chances of landing good jobs, but also generally address the diffidence they felt in dealing with things outside their ordinary spheres of experience, it was learning Spoken English. We started classes.</p>\n<p>But first some analysis. It clearly wouldn’t do to do as had been done in school to teach English. Being creative is often about clearing out what already exists, often about being prepared to reinvent the wheel and not condemn that as waste of time. We cleared out the books. We felt that, in the main, they had distracted both the teacher and the students from the real task of the learning of English. As teachers covered the chapters in English, there was no time nor inclination to discover a language. It was more a race to complete the syllabus in time. The best students could only keep pace with an externally imposed agenda and speed. With no books and no syllabus, and an hour to talk freely about anything that caught our collective fancy, but strictly forbidden at the same time to use Hindi, we had managed to recreate the conditions of that most complex of learnings that almost every human being is destined to master – the learning of his or her first language or mother tongue.</p>\n<p>And when I bought my first computer for self use, it was obviously available for the children to learn. When friends and relatives visited, they interacted with the children. All went away changed, their respective prejudices dented. When I traveled outside Delhi, I took them with me. When I met someone interesting, I invited them home to meet the children. When one of them told me he wanted to be an Air-Force pilot, in searching for one I met someone interesting. Cause and effect interloped, until their separateness and sequencing could no longer be discerned. Years later, I read a Sri Lankan social worker’s words, “You build the road, and the road builds you”. Bull’s eye! I knew because I had already experienced its truth.</p>\n<p> </p>\n<h4>Money Matters.</h4>\n<p>And that’s how Manzil grew, in numbers of young people sure, and more importantly in the richness and diversity of our experiences that we lived together, but not in the size of its buildings or coffers. As a matter of fact there were no coffers. Renting out the shop that my father used to run when he was alive, coupled with an old habit of keeping our personal expenses under control, allowed us to give all our time to Manzil, without having to draw any salaries. Rent and salaries are usually the two major costs of running something like Manzil, and we were burdened with neither. For 6 years we were able to claim, not entirely accurately, that it takes no money to run Manzil. We didn’t seek any funding. Some came of its own accord.</p>\n<p> </p>\n<h4>If every journey has a first step, I urge you to take it.</h4>\n<p>If I were to speak now about the essence of what we are trying to do at Manzil, what we are really interested in is ‘Education for Responsibility’. And like when a pebble hits a still pond, the waves travel outward in countless concentric circles larger and larger in size even as they turn feebler and feebler in intensity, so is the circle of influence of each one of us in society. The circle of influence is in fact the circle of our responsibility. It is theoretically limitless, for it goes far beyond what is visible. Nevertheless it starts at the Self. Learning with a view to equip oneself to earn an honest livelihood can be seen usefully as one’s responsibility to oneself. But beyond self, the circles extend to family, neighbourhood, village, country, world, cosmos in ever larger if feebler circles.</p>\n<p> </p>\n<h4>Manzil- The journey goes on.</h4>\n<p>Moving on from our toddler steps at Kotla, to the youthful strides at Khan Market, and now our bold leaps into the hills of Uttaranchal (more details can be had on request), Manzil’s journey has been one of constantly discovering the deeper continuities and inter-connectedness of all life. It is this thought that infuses our work and vision, and illuminates our understanding of Education and Empowerment, as that which builds connections between the self and social, the personal and the political, the intellectual and the emotional, the rational and the felt, the common and the distinctive, the ordinary and the sublime. We are all learners here. And like life itself, any Manzil is only a sojourn.</p>\n<p align="center"><img height="339" src="/static/media/uploads/LearningandEducation/manzil_group.jpg" width="350"> </p>\n<p><strong>Reprinted from:</strong> <a href="http://manzil.in/" target="_blank">http://manzil.in/</a></p>\n<p><strong>Original Title:</strong>  Manzil—A Journey</p>\n<p></p>\n<h4>See other articles about Manzil on the web :</h4>\n<p><a href="http://www.teacherplus.org/the-5th-space-series/opening-doors-creating-pathways" target="_blank">Opening doors, creating pathways</a> by Chintan Girish Modi on Teacherplus.org.</p>\n<p><a href="http://news.rediff.com/slide-show/2009/nov/05/slide-show-1-extraordinary-indians-ravi-gulati.htm" target="_blank">Extraordinary Indians : Ravi Gulati</a> by Ganesg Nadar on news.rediff.com</p>\n<p></p>\n<!--[if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves/>\n  <w:TrackFormatting/>\n  <w:PunctuationKerning/>\n  <w:ValidateAgainstSchemas/>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF/>\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\n  <w:LidThemeComplexScript>GU</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:BreakWrappedTables/>\n   <w:SnapToGridInCell/>\n   <w:WrapTextWithPunct/>\n   <w:UseAsianBreakRules/>\n   <w:DontGrowAutofit/>\n   <w:SplitPgBreakAndParaMark/>\n   <w:EnableOpenTypeKerning/>\n   <w:DontFlipMirrorIndents/>\n   <w:OverrideTableStyleHps/>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val="Cambria Math"/>\n   <m:brkBin m:val="before"/>\n   <m:brkBinSub m:val="&#45;-"/>\n   <m:smallFrac m:val="off"/>\n   <m:dispDef/>\n   <m:lMargin m:val="0"/>\n   <m:rMargin m:val="0"/>\n   <m:defJc m:val="centerGroup"/>\n   <m:wrapIndent m:val="1440"/>\n   <m:intLim m:val="subSup"/>\n   <m:naryLim m:val="undOvr"/>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!--[if gte mso 9]><xml>\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\n  LatentStyleCount="267">\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Table Grid"/>\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Shading"/>\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light List"/>\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Grid"/>\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 1"/>\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 2"/>\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Dark List"/>\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful List"/>\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\n </w:LatentStyles>\n</xml><![endif]--><!--[if gte mso 10]>\n<style>\n /* Style Definitions */\n table.MsoNormalTable\n\t{mso-style-name:"Table Normal";\n\tmso-tstyle-rowband-size:0;\n\tmso-tstyle-colband-size:0;\n\tmso-style-noshow:yes;\n\tmso-style-priority:99;\n\tmso-style-parent:"";\n\tmso-padding-alt:0in 5.4pt 0in 5.4pt;\n\tmso-para-margin-top:0in;\n\tmso-para-margin-right:0in;\n\tmso-para-margin-bottom:10.0pt;\n\tmso-para-margin-left:0in;\n\tline-height:115%;\n\tmso-pagination:widow-orphan;\n\tfont-size:11.0pt;\n\tfont-family:"Calibri","sans-serif";\n\tmso-ascii-font-family:Calibri;\n\tmso-ascii-theme-font:minor-latin;\n\tmso-hansi-font-family:Calibri;\n\tmso-hansi-theme-font:minor-latin;\n\tmso-bidi-language:AR-SA;}\n</style>\n<![endif]-->	\N	2014-02-28 10:53:46+00	6	manzil-delhi-opening-doors-creating-pathways	0		1	0	0	t		f		t	0	2014-02-25 13:50:05.9536+00	2014-03-13 10:42:36.91511+00
2	In a Quake’s Wake, Hunnarshala Builds Homes — and Entrepreneurs	In a Quake’s Wake, Hunnarshala Builds Homes — and Entrepreneurs	\N	11	<p>Today, more than a decade after the Gujarat disaster, Hunnarshala has come a long way. One of the goals of its founders was to retain a community feel — a potentially challenging task in an area where caste is a key issue and it is easy to get mired in sectional disputes and attempts to corner the assistance available. But Hunnarshala has managed to stay out of caste controversies.</p>\n<p><a href="http://knowledge.wharton.upenn.edu/article/in-a-quakes-wake-hunnarshala-builds-homes-and-entrepreneurs/" target="_blank">Read about this collective decision initiative by Hunnarshala and the community</a></p>\n<p><span size="2" style="">Published Earlier on <a href="http://knowledge.wharton.upenn.edu/article/in-a-quakes-wake-hunnarshala-builds-homes-and-entrepreneurs/" target="_blank">Knowledge @ Wharton</a></span></p>	\N	2014-02-11 07:03:24+00	3	hunnarshala-builds-homes-and-entrepreneurs	0	settlements Gujarat housing eco-friendly	1	0	0	t	uploads/Settlement and Transportation/hunnar1_large.jpg	f		t	0	2014-02-11 07:03:24.425868+00	2014-03-07 04:42:15.643874+00
2	A single man is showing what perseverance can do, in regenerating and protecting the forests of Bastar district in Chhattisgarh. The idea is spreading to neighbouring villages in Odisha, too.	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	\N	40	<p><img height="310" src="/static/media/uploads/alternativePolitics/conservator_damodar.png" style="float: left; margin: 3px;" width="200">While the forest department has been busy working forests for timber, a single man in Bastar holds hope for the many villages that have lost their natural forests.</p>\n<div dir="ltr">Over the last decade or more, the mere mention of Bastar has evoked stereotypical responses. Most people – those who are concerned or pretend to be so – ask me whether “things” are any better there. When I tell them that nothing has improved, that matters are perhaps worse, the conversation peters out. Anyone who knows that there is unrest in a large part of India – the Union Ministry of Tribal Affairs lists 33 districts as naxal-affected in Central India, 7 of them in Chhattisgarh – should wonder why there is so little news from there.National newspapers rarely mention anything from Chhattisgarh except the sporadic “encounter” or “blast”, the periodic allocation of coal blocks to companies or, at another level, the efficiency of the Bharatiya Janata Partyʼs approach to governance.</div>\n<div dir="ltr"></div>\n<div dir="ltr">The usual words and phrases linked to Bastar, in alphabetical order, are: abuse, ambushed, atrocities, attack, beheaded, BSF, burnt, camp, combing operations, Communist, CRPF, dense jungles, destroyed, flushed out, human rights, infested, Jungle Warfare College, kidnapped, killed, land mines, Mahendra Karma, Naga Battalion, Operation Green Hunt, police, raped, Salwa Judum, surrounded, thana, and so on. Why would anybody, other than the BBC, Médecins Sans Frontières or the UN, want to be there? And is it not strange that they are not there anymore? It is in the context of this region –which evokes dejection, fear and loss of faith for any citizen who seeks to know what is actually going on – that the village described below is located. It is situated in the Bakawand block of Bastar district, about 45 km north-east from Jagdalpur, the district headquarters.</div>\n<p><a href="/static/media/uploads/Stories_PDFs/the_story_of_a_principled_chief_conservator_of_forests_in_bastar_chhattisgarh.pdf" target="_blank">Download the complete article</a></p>	\N	2014-02-21 08:05:59+00	4	the-story-of-a-principled-chief-conservator-of-forests-in-bastar-chhattisgarh	0		1	0	0	t	uploads/blog/bastar_in_chhattisgarh.jpg	f		t	0	2014-02-21 08:19:20.781269+00	2014-03-07 04:57:20.713363+00
2	Swasthya Swara (Health Swara) plans to address rural community health issues through the use of mobile phones, and at the same time help in protection and distribution of ancient knowledge that the Vaids and other traditional practitioners possess, which is in danger of vanishing forever	स्वास्थ्य Swara : A Unique Community Health Solution	\N	39	<p dir="ltr">The danger of losing our traditional knowledge forever seems imminent. Sadly, it’s consolidated mostly in rural areas, and mainly where forest cover is high, but seldom does it go out in open or gets transferred to others. The already diminishing chain of transferring the knowledge to the next generation is a matter of grave concern.</p>\n<p dir="ltr">Experts of community health and Vaids, the practitioners who possess traditional knowledge are aware of the imminent danger.</p>\n<p dir="ltr">In a unique initiative, to address that, CGNet Swara organised a specialised two-day camp – known as Swasthya Swara (Health Swara) – that plans to take the parent CGNet Swara initiative to a specialised and much neglected sphere of community health. It aims to address the rural community health issues and at the same time help in protection and distribution of ancient knowledge the Vaids and other traditional practitioners possess – which is in danger of vanishing forever.</p>\n<p dir="ltr"></p>\n<p dir="ltr"><img height="287" src="https://lh5.googleusercontent.com/zrNndPq1ozW4o3etHIjOGBKRpKMqwr35kqnh3vDrT899SNUq21pnPiFJTpIjEfsyDkY2Doe51Fnd7zp6T2dvX4NM0wMHmt-xcPQIt2oZKQ_ttLlvyABaDluT" style="vertical-align: middle; margin-left: auto; margin-right: auto;" width="549"></p>\n<p dir="ltr"><em>Shubhranshuji addressing participants during workshop</em></p>\n<p dir="ltr">The new initiative, Swasthya Swara, will start functioning from October 2, 2013. The website is <a href="http://swasthya.swaranetwork.org/" target="_blank">http://swasthya.swaranetwork.org</a></p>\n<p dir="ltr">The camp brought together more than 35 Indian medical system practitioners – Vaids or traditional herbal medicine doctors, Ayurvedic doctors and others to deliberate on the issue and find a solution through the medium of Swasthya Swara. The feasibility, practicality, usability and conservation of Indian herbal medicinal system were discussed at the meet.</p>\n<p dir="ltr">The diverse list of participants included AK Awasthi -Chhattisgarh Prashikshit Vaidh Sangh, Dr Surya Bali -Bhopal AIIMS, Dr AK Arun -Homeopathic Consultant, Rahul Ganguly -Lawyer, Arjun Venkatrman -Technology expert, Shubhranshu Choudhary -Founder of CG Net Swara and numerous vaids</p>\n<p dir="ltr">Practitioners of Indian herbal medicine system from different states took part – mainly from Chhattisgarh, Madhya Pradesh, Odisha, Rajasthan, the states where the tradition of Indian medicine system is rich with many of the states having a reasonable forest cover. Chhattisgarh, for example, which had the largest participants of herbal medicine practitioners, has almost 44% forest area and it’s predominantly inhabited by tribal population who have a large wealth of traditional system of healing that hardly comes out in open – and is in danger of getting extinct.</p>\n<p dir="ltr"> The meeting highlighted the fact that most of rural India has non-existent health care system. So the traditional medicine practitioners / vaids are the one immediately available. Also, there are many even in urban India who are not satisfied with Allopathic or other systems of medicine and want to be treated by traditional healers. The cost factor of, say, medicine systems like Allopathic plays its role as many can’t afford it, especially in rural areas. Other factor could be dissatisfaction with modern day system of treatment.</p>\n<p dir="ltr"><em> Participants discussing during workshop &amp; Rahulji explaining legal aspescts of swasthya swara</em><img height="174" src="https://lh6.googleusercontent.com/7QpyOWI7DJjqjJVhGRW6gWAh5q377UjJhFHT7eckOj2ObMYgdQMSz-m4wqX_jkCptOrOOc0a2J5F-OsnIYT7F_QBoIWmBDSjeWLVOxcb9HfSt8TTcDr7DK1l" style="vertical-align: middle; margin-left: auto; margin-right: auto;" width="519"></p>\n<p dir="ltr">But the challenges are many, pointed out the participants, in order to reach out to the masses – it involves a degree of commitment from the traditional medicine practitioners/healers (vaids), demands a reliable and easily accessible technology that anyone could use even in remotest part of the country irrespective of his literacy level (phone). The issue of legality and legal complications arising out of treatment or tips given by the practitioner was also discussed.</p>\n<p dir="ltr">It was discussed that Vaidh community should openly question their ideas and understanding if it’s in tune with science and reasoning to get more acceptability. To rule out any superstitious, extortionist or wrong claims, an editorial body was formed that will decide what kind of message need to be relayed.<img height="222" src="https://lh3.googleusercontent.com/ejiaBOeRo2PCR0vGfnwYszrotqBfj2NwT0DzauAsVvZDqsJuQSTior9GEHnxMsnGqgecSrVMUlr9LfzArP9TMG3juTg0iT6XFnusYTFOrICYtOflUcUhYrh2" style="margin-left: auto; margin-right: auto;" width="600"></p>\n<p dir="ltr">Many of the Vaids made superstitious claims of treating patients, like treating on phone just by talking, curing HIV or cancer, treating snake bite using mantra. In response to that, a proactive persuasion and reasoning with Vaids was done by other practitioners to persuade the Vaids that their claim is scientifically wrong and the apparent treatment by mantra, etc is merely a coincidence. A positive result was seen and Vaids claiming supernatural powers agreed to large extent.</p>\n<p dir="ltr">To root out any such claims or sideline fake practitioners, a system of easy accreditation by government was sought.</p>\n<p dir="ltr">While it was demonstrated that an effective and impact-based journalism in rural areas – that CGNet Swara is already trying to achieve through its phone based citizen journalism, the planned health-based Swara demands a different modality of functioning than the parent CGNet Swara.</p>\n<p dir="ltr">In CGNet Swara, anyone can make a call and record her/his message that goes through community moderation to verify the importance and rule out any propaganda before being published on CG Net Swara website as well as on Swara’s IVR – Interactive Voice Response, easily accessible from cell phone. Just a missed call to CGNet Swara is all it takes.</p>\n<p dir="ltr"><img height="300" src="https://lh6.googleusercontent.com/IhIKLIc0B4pLGZnWQSM9YfhN2uPDfD3z6l4LTAIEDnNwMWg4OUOrgL-3OD2mxXpNycNVpkvaK7hAPBzNil4tT-gCaJgXngBfM_19vc_g0QliCP_9Z9TuZ-Mv" style="margin-left: auto; margin-right: auto;" width="600"></p>\n<p dir="ltr">In the next stage, any concerned citizen can take up the recorded story towards resolution in whatever way it’s possible for them – answering the required question or highlighting some facts in response to the call or simply taking up the issue with the concerned authority if it’s a complaint. And its working reasonably well in many parts of the country.</p>\n<p><img height="184" src="https://lh3.googleusercontent.com/MugBctI6XQYJxs4ytoZpoFqS7qYpaGfk6N8sigIpnwvv_gAFZFvffnngznpw_4diQwr75MeG8i-Son6eYBo7SFG8Ua0TWU6Yn2FPQzKhUqB2CTyfRnb5Z5pl" style="margin-left: auto; margin-right: auto;" width="549"></p>\n<p dir="ltr">The practitioners, in an open session, talked about their expertise, the problem they face and probable challenges which might come in future. The legal implications of giving tips and discussing health related issues on an open platform like Swasthya Swara was discussed. Any misuse by individuals and organisations, ownership pattern, patenting of unique herbal medicines and how to deal with all the issues was also discussed. It was highlighted that, in future, the chances of an economic model might come out that will benefit the practitioners working for greater public good. But the modalities will be worked out in future meetings.</p>\n<p dir="ltr">On similar model, the Swasthya Swara goes one step ahead. Here the approach, as it was discussed in the meet, would be little different since the response to any call would need a certain degree of expertise – verified by govt or an editorial board chosen from practitioners – to air the answer.</p>\n<p dir="ltr">The expertise of the practitioners who participated varied – treating Paralysis, Arthritis, Diarrhea, Anemia, sugar and many other health issues that are common in rural areas.</p>\n<p><img alt="" height="287px;" src="https://lh4.googleusercontent.com/y8XeQfW95U9RtNNfomaLB3Gn-TI_l3tejDu6jl1Jxz4VkCb77xH2Nskz_-M6UrIRm1jDGyh67NxyNbZ0icYwnTj6alDjDQNJqdjjwKKzjmfwfyEMazQvof2g" style="margin-left: auto; margin-right: auto;" width="768px;"></p>\n<p dir="ltr">The participants were given training as to how the CGNet Swara functions – recording a call, interview or story and listening and responding to it. In unanimous voice, all the participants vowed to voluntarily contribute to the Swasthya Swara in their locality.</p>\n<p dir="ltr">An election was held among the participants to choose an editorial board of 7 members from the practitioners present and it was decided that the board will meet on 22-23rd December to take stock of the functioning of Swasthya Swara and a new editorial board will be formed.</p>\n<p dir="ltr">Hari Singh Sidar from Bastar summed up mood of the meeting. He said, “Swara paida ho gaya hai, waqt ke sath jawan ho jayega. Swara has taken birth. It will grow up in due time.” He also said he would turn a village in his region completely into an herbal village taking inspiration from the meeting held for Swasthya Swara.</p>\n<p dir="ltr"><img height="202" src="https://lh6.googleusercontent.com/HJXnCRgZtSRrqwj73Rp4JCGrtRUbd8qhqhWVhIbWS5XtEdYEud2i7Wn6lDgJczknrhxsZqkspHrq6oMT71cLDOhtb34uJ23FE8wdKcova4E05YY8Lu14ZyZU" style="margin-left: auto; margin-right: auto;" width="539"></p>\n<p><em><strong>Few Vaidh Participants, Their Expertise and Quotes -</strong></em></p>\n<p dir="ltr"><strong>Dr HD Gandhi, Raipur, specialises in treating Sickle Cell Anaemia. He said he wants to spread the traditional knowledge systems to the public. He also wants to spread focused awareness towards sickle cell anaemia.</strong></p>\n<p dir="ltr"><em>“Main Sickle Cell Anaemia ka ilaaj karta hu. Meri ruchi jadi bootiyo ki prampragat jankari ko logo tak pahuchane me hai. Main specially Anaemia pe bhi logo me jaagrukta failana chahta hu.”</em></p>\n<p dir="ltr"><strong>Sanjay Madhav Seth, Odisha, specialises in treating Kidney stone.</strong></p>\n<p dir="ltr"><em>“Main pathri, khas kar ke kidney theek karta hu. Ye maine apne purkhon se seekha hai. Mere dada karte the, unse mere pita ne seekha aur mere pita ne mujhe sikhaya.”</em></p>\n<p dir="ltr"><strong>Vaidh Awdhesh Kashyap, Bilaspur, specialists in Asthma, Piles and Skin disease. He hopes to get popularity and patenting in future with the help of Swasthya Swara.</strong></p>\n<p dir="ltr"><em>“Charm rog, Bawasir aur xxx theek karta hu main. Swathya Swar se mera naam badhega aur hamare ausadhi ko bhi patent karne me madad milegi.”</em></p>\n<p dir="ltr"><strong>Vaidh Lomash Kumar Bachh, Korba, Chhattisgarh, treats stone and arthritis, said he looks forward to streamlining of Awsadhi making with the help of other Vaidhs and licensing of Vaidhs with encouragement from government.</strong></p>\n<p dir="ltr"><em>“Pathri, khas taur pe kidney me pathri ka ilaaj karta hu. Jodo ke dard ka bhi ilaj karta hu. Aur vaidho k madad se ausadhi banana ki prakirya ko theek karna chahta hu. Sarkar se hamare registration me bhi madad chahye hogi.”</em></p>\n<p dir="ltr"><strong>Vaidh Ramesh Kumar Tandon, Korba, said that he is basically a researcher of traditional herbal knowledge. He experiments and runs trial before using them for treatment.</strong></p>\n<p dir="ltr"><em>“Main jadi booti aur ausadhiyo pe shodh karta hu aur shodh ke baad hi logo ko deta hu.”</em></p>\n<p dir="ltr"><strong>Vaidh Bajjuram Nureti from Kanker said that he uses herbs extracted only from forests.</strong></p>\n<p dir="ltr"><em>“Main kewal jungle se laaye hue jadi booti se ilaaj karta hu.”</em></p>\n<p><img height="276" src="https://lh5.googleusercontent.com/rElG0beUma8ge0-9dJMgMV8WdN4v4YdfMZw21Dq_iuWb_trNHHBaIyYqTfu7brVVV9xZl1DgawGN4qnJfqCHWzGUmCVudI5EmwpTQizGhPxWnmgte970ujL8" style="margin-left: auto; margin-right: auto;" width="600"></p>\n<p dir="ltr">Different Faces of Swasthya Swara-</p>\n<p dir="ltr">QUOTES</p>\n<p dir="ltr">Dr. AK Arun -Homeopathic Consultant, said that if we could implement Swasthya Swara, we can address the issue of community health more effectively and widely than our major hospitals have done.</p>\n<p dir="ltr">Dr. Surya Bali from AIIMS, Bhopal spoke about the scope of herbal and Indian traditional medicine systems. He also promised, as a doctor in a government hospital, AIIMS, Bhopal, help from government in whatever way possible – training, monetary, accreditation and recognition.</p>\n<p dir="ltr">Swasthaya Swara won’t be a market. It would be knowledge-based data archival as well as consultation system, said Lawyer -Rahul Ganguly</p>\n<p dir="ltr">There is not a single institution in India which works for the progress of India medicinal system. So the initiative by CG Net Swara to introduce Health Swara would be revolutionary, said Nirmal Kumar Awasthi, Chattisgarh Prashikshit Vaidh Sangh. He also said that 90% of Chhatisgarhis still goes to Vaidh, so their importance in rural community health shouldn’t be ignored.</p>\n<p dir="ltr">Vaidh Bir Singh from Bastar said that it’s not only the distribution of knowledge system of traditional Indian herbal medicinal system that is important, it’s also a conservation of herbs found in jungles is no less important. Awareness created by a platform like Swasthya Swara would help.</p>\n<p dir="ltr">Vaidh Awdesh Kashyap said that Sustainable harvesting is needed to protect the bank of herbs. Besides, it’s equally important that they are distributed widely. Swasthya Swara can be the medium to do that.</p>\n<p dir="ltr">Dr. Vijay Chaurasia, Dindori from Madhya Pradesh who works with Baiga sect and has written many books on them. Baigas are vaid community but they don’t share their knowledge with their progeny, so the medium of Sasthya Swara will bring that out for common public good.</p>\n<p dir="ltr">First published in <a href="http://hackergram.org/?p=116" target="_blank">hackergram.org</a> Oct02, 2013</p>	\N	2014-02-21 07:38:18+00	4	swasthya-swara-a-unique-community-health-solution	0	Traditional Knowledge health-care allopathy cost mobile phone remote vaid accredition conservation	1	0	0	t	uploads/blog/swasthya_swara_first_image.jpg	f		t	0	2014-02-21 07:39:21.725032+00	2014-03-10 04:38:20.173001+00
2	Sadhana School is located in a village near Pune, Maharashtra. A space where children are free to BE, teachers learn to learn again, learn from children how to be, children are respected and acknowledged that they are born with capacity to make sense of the world through free play. What we try to do is to create conditions for learning to happen. ‘Space’ where knowing happens by being, where ‘Knower’ is the primary subject of enquiry and ‘awakening the knower’ is the objective of learning	Understanding Children Anew Beyond ‘Teacher-Taught’ Paradigm	\N	79	<p></p>\n<p></p>\n<p><strong>Who Should Learn from Whom?</strong></p>\n<p><strong><img height="378" src="/static/media/uploads/LearningandEducation/sadhana_village_school.png" style="vertical-align: middle;" width="574"></strong></p>\n<p>Children belong to the world of senses, emotions, and experience, whereas the modern literate adult belongs to the mental world of text, reason, concepts, and categories. In a way, we — children and adults —belong to two different worlds. As adults, we miss the holistic child due to the categories in which we are trapped. Learn, play, work are three of these categories; and serious, frivolous, and boring are the values that usually get attached to these categories. Accordingly they are also allocated specific spaces, timings, and priorities. Jinan states, “The most misunderstood aspect is the play  and toys of children. We have gradually eliminated free and independent play from their lives and have invented toys that we imagine children would like to ‘play’ with.”</p>\n<p>Jinan’s initial framework to observe children was based on ‘how to teach children better’ and, as he freed him- self from this frame, he began a study based on ‘how children learn’; one more shift changed this to ‘how learn- ing happens.’ Within the ‘teacher- taught’ paradigm there is no room for exploring how children learn.</p>\n<p> Jinan says, “The child was always there. What changed was my perception.</p>\n<p>I saw the child was just living, spontaneously, innocently, fully belonging to nature. Culture, seen as a separate cate- gory,  is the beginning of the cognitive crisis of modern man.’’</p>\n<p>At the Sadhana School, a village school, 40 km from Pune, India, adults have been documenting children’s free play for a year to understand children afresh. With more than 3,000 video clips on  various self-initiated activities by children, without adult intervention or mediation, Jinan remains a fasci- nated observer of how children learn about life around them, inherent values  of collaboration and care, and how they compete with themselves to perfect what they want to do. Children play out whatever they have experienced or observed through play and toys get made in the process to aid this play. From observing how children play naturally and autonomously, we can also understand what children are meant to learn as per the priorities set by nature.</p>\n<p> “Play is autonomous,” observes Jinan. “We must be able to differentiate the child as a  state of mind and play as a quality.”</p>\n<p>The following are observations conducted at Sadhana School: one of the first roles a child plays is mother. Children imitate the caring behavior of the mother; hence, the first thing the  child ‘learns’ is to be nurturing, to take care of another person. So learning in children takes place in the realm of experience itself and the repeated play is nothing but ‘experiential’ reflection.</p>\n<p>Jinan’s enquiry of who should learn from whom is an invitation to educators and non-educators:</p>\n<p>“What I would like to explore is to see how children can help us in examining our alienation from our natural <i>beingness </i>and initiate a journey. Children learn the world as it appears in front of them and we, the adults, learn the fragments through text that is too conceptual.</p>\n<p><img height="208" src="/static/media/uploads/LearningandEducation/sadhana_village_school_2.png" style="float: left; margin: 3px;" width="243"></p>\n<p>Children learn as per life’s need to sustain life. It is existential learning, whereas we learn to get degrees. Hence, we have these categories: academic knowledge, scientific knowledge, and so on. Maybe children could help us to re-examine many of these aspects that are taken for granted. What is learning? What is knowledge? What is science?’’</p>\n<p>Conversations with Jinan take me on a journey to re-imagine school as an evolving learning space, for both children and adults, not as an alternative model, but a potent paradigm- shifting initiative. My own initiatives at Child at Street 11, Singapore, have had an influence of such potent sharing with minds that help me move ‘beyond the beyond,’ retaining the authenticity of cultural contexts of children and families with everyday research and revelations — we continue learning.</p>\n<p>Jinan continues weaving new multiple threads into understanding children afresh.</p>\n<p>The modern individual is fragmented in every way. As the child is introduced to the world through non-contextual, fragmented textual information, the child gets fragmented in every way. Mind and body are fragmented; knower and the knowledge are fragmented; and integral and holistic knowledge is fragmented into subjects, art, and language.</p>\n<p><strong>Context, Content, and Pedagogy</strong></p>\n<p>Children learn from the moment they are born, perhaps even from the time of conception. Mother, father, and other people in the family, house, village are the first teachers of the first content in the first learning space. Whatever children experience is the content of their minds: this includes value, beauty, and knowledge.</p>\n<p>Learning is loosely used to mean only knowledge; this leaves out values, emotions, and so on. The focus is on the quality of <i>being </i>rather than quantity of <i>information. </i>Just this one choice, inspired by Jinan’s ideas of being with children, has impacted the way we function with children in Child at Street 11, Singapore. The children’s smiles and their energetic high-fives are evidence of this positive shift.</p>\n<p>Children imbibe/learn whatever they experience. If you regulate and structure a child’s experience, the child will imbibe that regulation, as well as the demand to conform. This kills their spontaneity and natural beingness. Everything that happens in the school is the content for the child. Teaching is an authoritarian act. True learning is a democratic process; it is not regulated, structured, quantified, or tested. Democracy is our natural condition, while authority instills anti-democratic values. Embracing this paradigm requires a shift in our thinking about the role of the adult as teacher, guide, and facilitator.</p>\n<p>Some more weaving of ideas from Jinan and his team of learners continue to inspire, provoke, and invite reflections in the context of Children’s Rights — the youngest citizens of the world.</p>\n<p><b>Being in the realm of the unknown: Awe</b></p>\n<p>Being in the realm of the unknown ensures awe, humility, and deep respect for life and nature. Children need the opportunity to figure this out by themselves; this brings out a different set of cognitive conditions:</p>\n<ul>\n<li>Children deal autonomously with the task.</li>\n<li>They do something experientially.</li>\n<li>What is innate in them is revealed.</li>\n</ul>\n<p><b>Self initiated activities: Autonomy</b></p>\n<p>Self-initiated activities with self-satisfaction as the motive that enables the child to engage autonomously with the world. Only minimum interference from the adult can ensure this.</p>\n<p><b>Experiencing the world: Play</b></p>\n<p>Children understand the world through play. Any self-initiated activity done for self-satisfaction is play. A child trying to bite his foot is play, making sounds is play, bouncing on a sofa is play, trying to slide on smooth surfaces is play, and everything a child does to re-experience through imitation is play.</p>\n<p><b>Enhancing articulation: Language</b></p>\n<p>The child’s language cannot be separated from the experience she is having of the world. There is integrity between experiences and the language(s) she uses to express or articulate. We regularly impose artificial categories and divisions on children through language.</p>\n<p><b>Creating conditions rather than conditioning</b></p>\n<p>The idea is to enlarge the scope of school to include the whole community. This allows the natural, biological process in children through which they can lead sustainable, content, and harmonious lives: in harmony with nature, culture, society, family, and self. In an environment of freedom and trust, children can grow naturally. This happens when we avoid dividing their time in school into separate categories of playing and learning into subjects like language, mathematics, and science. The school then becomes a space for the awakening of intelligence, sensitivity, creativity, observation, self-initiative, and self- discipline.</p>\n<p>At Sadhana School, explorations of how learning happens continue with Jinan, the gentle, white-bearded social activist and child advocate. Now children come to school and sit together discussing any matters related to life in the school that they are interested in. Informal groups of children engage in conversations with adults about anything and everything under the sun, lending importance to their experiences. Roughly 60 percent of the time children play; 20 percent time is dedicated to drawing, and 20 percent is for articulation and sharing.</p>\n<p>By tuning in to the principles of natural learning, we better understand how children learn and our role as facilitators and co-learners. Chief among these are the concepts of freedom, trust, and harmony that serve as the foundation upon which everything else is built.</p>\n<p>Visit <a href="http://www.kumbham.org" target="_blank">www.kumbham.org</a> and<a href="http://www.youtube.com/user/sadhanavillagepune" target="_blank"> www.youtube.com/user/sadhanavillagepune</a></p>\n<p> <b>Reprinted from:  Exchange Magazine (permission obtained from the author)</b></p>	\N	2014-02-26 19:41:41+00	3	understanding-children-anew-beyond-teacher-taught-paradigm	0	Sadhana School Village school alternative education learning Pune Maharashtra	1	0	0	t	uploads/LearningandEducation/sadhana_village_school.png	f		t	0	2014-02-26 19:56:46.22639+00	2014-02-26 20:20:46.625589+00
2	Samrakshan’s Meghalaya field-base had undertaken community-based conservation programmes in the landscape for the last few years but our latest attempt was a community-based ecotourism programme with multiple goals. - 	The Nawabs Of Garo Hills (eco-tourism in Meghalaya)	\N	44	<div>\n<div id="stcpDiv">\n<div class="bodyContent threeColLayout clearfix">\n<div class="rColMain clearfix">\n<div class="rColContent clearfix">\n<div id="page">\n<h5><img alt="Some 320 species from six families have been recorded in the Garo Hills, many protected under Schedule 1 of the Wildlife Protection Act. This includes rare species such as this jewelled nawab butterfly, which, together with others such as the China nawab and stately nawab sport extravagant colours thanks to the iridescent scales that cover their wings." border="0" height="409" src="http://www.sanctuaryasia.com/images/stories/article-inline-images/pg-83-varun-satose-c.jpg" title="Some 320 species from six families have been recorded in the Garo Hills, many protected under Schedule 1 of the Wildlife Protection Act. This includes rare species such as this jewelled nawab butterfly, which, together with others such as the China nawab and stately nawab sport extravagant colours thanks to the iridescent scales that cover their wings." width="545"></h5>\n<h5>Photo: Varun Satose.</h5>\n<p>A group of pale, yellowish-white-winged butterflies fluttered around the rotting fruit. We moved forward slowly and then stood still to observe them. Yes, the prominent yellowish-white forewings had a black margin with two chains of white spots and two isolated white spots. The whitish-yellow hind wings had two tails with a ridged margin. A couple of years ago, we would not have been able to identify these butterflies but we had no hesitation now – great nawabs we wrote down!</p>\n<p>The nawab butterflies, along with the rajahs, we had read up, belong to the ‘brush-footed butterfly’ family, also referred to as the Charaxinae group. Nawab butterflies occur in Northeast India and further east up to Thailand. Many have gaudy colours and brilliant flashes thanks to iridescent scales covering the wings. Beauty notwithstanding, some are known to favour decaying crab-meat or rotting fruit.</p>\n<p>Our newfound interest was thanks to our latest project – encouraging butterfly watching through our community-based ecotourism project. Samrakshan’s Meghalaya field-base had undertaken community-based conservation programmes in the landscape for the last few years but our latest attempt was a community-based ecotourism programme with multiple goals. We were nervous and excited, since success would mean that we would be able to provide livelihood options that were friendly to the local biodiversity values, enhance pride among the people here and create awareness about the Balpakram-Baghmara Landscape.</p>\n<p>Homework involved extensive reading, field visits and assessment of the situation on the ground. We chose two villages to focus on and set up camp-sites – Siju and Gongrot. Siju abuts the Siju Wildlife Sanctuary and Gongrot is next to the Balpakram National Park. The landscape constitutes the crux of the Garo Hills Elephant Reserve and the report of the Elephant Task Force lists the Baghmara–Balpakram corridor as one of India’s vital elephant corridors. The Balpakram Complex is also recognised as an Important Bird Area with the White-winged Duck, White-rumped Vulture and Grey Sibia listed from here.</p>\n<p><strong>ENTICING TOURISTS</strong></p>\n<p>We enjoyed our first days, putting across the concept of eco-tourism to the locals in household and village meetings. These discussions slowly moved on to management models that could be undertaken and also to visits to neighbouring Assam to learn from similar efforts there. We also spent several hours consulting with and seeking approval for our activities of the village headman (<em>nokma</em>), since ownership of land in the Garo Hills rests with the clan, with the village headman as the decision-taking authority.</p>\n<p>The average tourist needs to know what wildlife he or she can hope to see in a given destination. Sighting mammals in the dense tropical forests of this landscape is not easy. The altitude and temperature are, however, butterfly friendly. This led us to initiate efforts to enhance our understanding of butterflies, which in turn sowed seeds for butterfly tourism. Long-term research was undertaken in partnership with experts to identify and record species.  Trails and spots in and around Siju and Gongrot that offered butterfly sightings for the amateur and seasoned explorer were mapped.  These surveys, undertaken over a period of time spanning multiple seasons actually identified Garo Hills as a butterfly hotspot and also led to the first field guide for butterflies in this landscape. Published in 2013, ‘The Butterflies of Garo Hills’ covers 320 species from six families. This includes species like the blue begum, scarce jester and pointed palmfly, each of which is protected under Schedule 1 of the <em>Wildlife Protection Act</em> along with other rare species like the China nawab and stately nawab.</p>\n<h5><img alt="Tourism must sustainably benefit communities and wildlife, suggests Samrakshan, whose community-based camping facilities in two villages in the Balpakram-Baghmara landscape have come to be recognised as examples for others to emulate." border="0" height="409" src="http://www.sanctuaryasia.com/images/stories/article-inline-images/pg-83-yaranjit-deka-c.jpg" title="Tourism must sustainably benefit communities and wildlife, suggests Samrakshan, whose community-based camping facilities in two villages in the Balpakram-Baghmara landscape have come to be recognised as examples for others to emulate." width="545"></h5>\n<h5>Photo: Yaranajit Deka.</h5>\n<p><strong>GRUNGE WORK</strong></p>\n<p>We needed to establish institutions to manage the camps at both villages. So in Gongrot, a new body was formed while at Siju we joined hands with an existing society. Together with the camps, we established rules and regulations including specifying that locals would be employed at every level and that construction would be with locally-available material.</p>\n<p>Siju also houses one of India’s longer cave systems. However, though tourists had been visiting the caves and the wildlife sanctuary for years, it had not benefitted the villagers. It was decided to contribute 10 per cent of the funds generated to the Community Welfare Fund and that villagers could decide where and how to use the money. Capacity-building programmes were organised for people from these villages to help them contribute towards and run the camp effectively. Cooks, guides, porters and camp-managers were employed from the villages. Arrangements were made for select members to visit Sikkim for a month-long training programme to help them further augment their skill-sets. Separate bank accounts for each of these sites were created. The camps began with individual visitors and eventually, Gongrot played host to not only a large group from the Bombay Natural History Society (BNHS) but also the annual Butterfly India Meet.</p>\n<p>Siju has three butterfly hotspots and Gongrot boasts of six. We have recorded some 90 species in Siju including the redspot duke, red-tailed marquis, common nawab, jewelled nawab and marbled map. Gongrot, perched on a higher altitude, has some 130 species including the yellow gorgon, Malayan nawab, pallid nawab, red caliph and great nawab. These biodiversity-rich locations also offer ‘bonus’ sightings of other wildlife such as the Hoolock gibbon, Assamese macaque, Malayan giant squirrel and the hoary-bellied squirrel.</p>\n<p><strong>NEXT STEPS</strong></p>\n<p>We knew that to take this to the next level, make it sustainable and widen its support base, partnerships at the local level would be essential. The tourism department of Meghalaya facilitated training of the staff on hospitality issues and joined hands to design, print and disseminate brochures for the landscape, which also included our camp sites. The department also invited colleagues (from both camps and Samrakshan) to attend a training on cave exploration. We organised a butterfly walk at Baghmara to raise awareness levels as part of the Winter Festival organised by the tourism department. At Siju, the Forest Department pitched in with construction of a tree house. The Baghmara Block and Border Area Development Office too have extended their support.</p>\n<h5><img alt="The Garo Hills are a part of the Garo-Khasi range in Meghalaya in Northeast India – one of the wettest parts of the world. Blessed by a wild diversity of unparalleled beauty, this forested area attracts naturalists and photographers from all corners of the planet." border="0" height="363" src="http://www.sanctuaryasia.com/images/stories/article-inline-images/pg-82-varun-satose-c.jpg" title="The Garo Hills are a part of the Garo-Khasi range in Meghalaya in Northeast India – one of the wettest parts of the world. Blessed by a wild diversity of unparalleled beauty, this forested area attracts naturalists and photographers from all corners of the planet." width="545"></h5>\n<h5>Photo: Varun Satose.</h5>\n<p>Experience-sharing with other wildlife tour operators has helped us guide tourists on the law and order situation in the Garo Hills. Yet another village, Karwani, within the Baghmara Reserve Forest will also be joining the league of Siju and Gongrot. Karwani is already a popular spot for exploring butterflies. It is easily accessible from Baghmara town, has easy-to–walk terrain and butterfly-friendly streams. Discussions taking shape with the Forest Department could see home-stays in the village within the coming months. The colourful nawabs of Garo Hills should expect more guests in coming years!</p>\n<p>[Location: (South Garo Hills district, Meghalaya) 25°30' 90°45']</p>\n<div>[This story first appeared in: Sanctuary Asia, Vol. XXXIV No. 1, February 2014</div>\n<div>http://www.sanctuaryasia.com/magazines/conservation/9700-the-nawabs-of-garo-hills.html#sthash.Dnz71zGT.dpuf]</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>	\N	2014-02-21 11:25:02+00	4	the-nawabs-of-garo-hills-butterfly-centered-eco-tourism-in-meghalaya	0	eco-tourism conservation Garo hills Meghalaya Balpakram Baghmara butterflies birds Siju Gongrot	1	0	0	t	uploads/blog/nawabs_of_garo_hills.jpg	f		t	0	2014-02-21 11:55:02.193565+00	2014-02-21 12:12:20.07652+00
2	How beneficiary-led monitoring of government-run services, such as ration shops and rural healthcare, functions in a few states. 	The Grassroots Lokpal	\N	32	<p>The brouhaha over the formation of a Lokpal may be what's hogging the headlines currently. But an equally important accountability system - community-based monitoring - has made a quiet entry into the country's governance system. And this people-driven tool is slowly emerging as a force to reckon with. <br> <br> Away from the limelight, ordinary citizens have been coming together in discreet villages and farflung tribal hamlets in many parts of the country to keep a hawk-eyed vigil on the government machinery and demand accessible and good-quality public services in their backyards. The surveillance systems may vary in form but are bound by common principles - that of civil society asserting its rights, reclaiming public services and challenging traditional power equations to question authority. Borrowing the cooperation of panchayati raj institutions or even confronting them in some cases, village groups are strengthening, if not restructuring, the way ration shops, healthcare centres and schemes are run. <br> <br> So, while communities in Andhra Pradesh used social audits to recover crores of rupees siphoned off by government officials under the Centre's flagship employment programme, villagers in Maharashtra have been diligently maintaining report cards to monitor the functioning of clinics and rural hospitals. Some communities in Tamil Nadu have gone a step further and co-opted themselves into villagelevel planning processes, even as the Rajasthan government has opened its implementation of key schemes to public scrutiny by listing beneficiaries and their dues on temple walls and buildings. <br> <br> These bottom-up initiatives deserve attention at a time when social spending across many sectors has come in for questioning. Both Comptroller and Auditor General Vinod Rai and rural development minister Jairam Ramesh recently underlined the need for detailed social audits. <b><br> <br> <strong>HONEST APPRAISAL </strong></b><br> <br> Monitoring has always been an integral thread in the fabric of public administration, so one might ask what all the fuss is about. But communitydriven initiatives differ significantly from in-built government monitoring wherein programme implementation, financial audits and surveillance is managed by officials themselves. These are far from independent, believe social analysts, who point out that those authorities obviously have much at stake and often portray a rosier picture than what really is. Where communities are concerned, however, it is end users and beneficiaries who conduct appraisals. Two social schemes, the Mahatma Gandhi National Rural Employment Guarantee Scheme (MNREGS) and the National Rural Health Mission (NRHM) have integrated such people-driven monitoring, but implementation is still patchy. <br> <br> Andhra Pradesh proved very pro-active by setting up an independent agency which has been conducting social audits of the MNREGS across 22 districts. The autonomous body, which started work in 2006, has trained over one lakh youngsters from villages and tribal belts to cross-verify government records on employment benefits with the actual wages received by workers, with a follow-up of discrepancies. "The process is exhaustive and involves 100 per cent worksite verification of complaints by workers, which are then read out at the gram sabha. Public hearings with officials sometimes get so heated that they start at 10 am and go on till 4 am the next morning, " explains Sowmya Kidambi, director of the Society for Social Audit, Accountability and Transparency set up under the aegis of the rural development department. The team's meticulous check threw open a Pandora's box. "We found that Rs 130 crore had been siphoned off from MNREGA, " says Kidambi, adding that the organisation has filed 16, 000 cases against officials which have subsequently resulted in suspension or disciplinary action. <br> <br> One knows something is clicking when villagers, known for berating government systems, start singing their praise. In Maharashtra, where community-based monitoring (CBM) is institutionalised in 13 districts as part of the NRHM, villagers are high on its success. "Our primary healthcare centre in Horapadi block had only 17 of the 57 essential medicines earlier. We started taking copies of the stock register and questioning panchayat members as part of the CBM. Over the last two years, we have managed to ensure that the full stock is now available, " says Dilwar Padvi, a local of Nandurbar. <br> <br> From one village to another, locals recount how public pressure, particularly the 100-odd jan sunwais (public hearings) where villagers can directly question government authorities, has inspired change. An anganwadi that was lying shut in Shajanpur, Beed district, has started work in full swing. Delays over the handing out of government incentives to pregnant women have reduced from six months to two, in Tuljapur taluka, Amravati. Villagers say the incidence of petty bribes and prescriptions from private chemists has also dropped. "The system has brought a sense of empowerment to locals who didn't know where to vent, " observes Vanita Koli from an NGO in Solapur. "We started monitoring only in September, but our office has been flooded with complaints ever since. " <br> <br> The shifts aren't merely a matter of opinion. The state nodal NGO, SATHI-CEHAT, has objectively studied various parameters to evaluate the efficacy of the participatory mechanism and claims a marked increase in the utilisation of health centres as well as increased satisfaction among villagers. <br> <br> But the hurdles are evident. Dr Abhijit Das of the Centre for Health and Social Justice, Delhi, points out that CBM in the public health system was piloted in nine key states way back in 2007. "While it was duly implemented for two years through nodal NGOs, Maharashtra and Tamil Nadu are among the only states which have actually seen it through, " he says. Das and social activist Medha Patkar of the National Alliance of People's Movements believe that the community's role needn't be restricted to monitoring. "It shouldn't be that the government makes laws and we merely monitor them. People should be involved in planning and implementation processes too, " says Patkar. <br> <br> That is precisely what Tamil Nadu does where its village health and sanitation programmes are concerned. They have co-opted villagers into jointly framing health plans along with the panchayat head, doctor and nurse. The plans are drafted with each stakeholder spelling out his/her views in writing before a consensual plan is collectively drawn up and signed, explains Dr Rakhal Gaitonde, of Community Action and Health. Piloted in 2008-09, the process is under way in 450 panchayats in six districts and the committees meet every month to monitor the plan. "Planning leads to increased confidence and a willingness to work together, " he says. The districts also initiated a village health planning day, an open forum for various stakeholders to discuss the outcome of the monitoring process. There are a few visible successes. While the panchayat president in one instance contributed to setting up a compound wall for an anganwadi, another village planned an MNREGA project to spruce up a healthcare centre, says Dr Gaitonde. <b><br> <br> <strong>THE WAY FORWARD </strong></b><br> <br> A group of people's representatives, social activists and government officials met at Mumbai's Tata Institute of Social Sciences recently to explore the scope of community-driven accountability in social systems. "We've learnt from the experience of the last 15 years that governance shouldn't be only in the hands of the government, and that participation in the governance process is a right of citizens, " said National Advisory Council member Aruna Roy in her speech. "There are varied participatory mechanisms, and (governmental) resistance to them must be fought. " Medha Patkar, in a conversation with this reporter, later referred to the government's proposed poverty cap of Rs 32 and Rs 25 for urban and rural areas respectively, and pointed out that even the poverty line would be more realistic if people had fixed it instead of the Planning Commission. <br> <br> The consensus in development circles is that varied models of community-driven surveillance need to be strengthened and steadily expanded. Buoyed by the success of the CBM in Maharashtra, Dr Abhay Shukla of SATHI-CEHAT, Pune, says they are studying ways to expand similar monitoring to more districts of the state as well as other social sectors such as the public distribution system, drinking water supply, education and employment services. Roy believes the grievance redressal bill being worked upon could prove to be an effective tool for time-bound redressal. Nikhil Dey of the Mazdoor Kisan Shakti Sanghatana believes the bill could do well to include a janata sahayata centre (citizens' assistance centre) in every block to facilitate filing of grievances as well as streamlining their applications. <br> <br> While the Right to Information Act has injected a degree of transparency, social analysts believe the government should be more proactive with disclosures and efficient with their management information systems. Rajasthan's system of publicly displaying social schemes and benefits made available could be replicated, believe many. <b><br> <br> <strong>STUMBLING BLOCKS </strong></b><br> <br> Despite a promising take-off, community-driven surveillance is faced with enormous challenges in a society deeply ridden by inequalities of power, gender and caste hierarchies, point out villagers. Bottom-up approaches are also met with systemic constraints and challenges, whose overhaul is a long-drawn affair. <br> <br> Kidambi says one of the major challenges they faced during social auditing was that villagers gave affidavits to auditors complaining about non-payment of wages, but went back on their word later in front of the gram sabha, fearing a backlash. "Many villagers find it difficult to speak out against the sarpanch, " she says. Dr Gaitonde too sees social inequalities as a stumbling block. He recalls how a panchayat member of a village refused to go into a dalit enclave during a monitoring drive. <br> Such monitoring could also lay the blame at the doorstep of lower government officials and people's representatives (sarpanch, anganwadi sevika, nurse, midwife) who become the face of problems that are entrenched and beyond their control. "I didn't receive the funds that I was entitled to as a sarpanch. If the healthcare centres have no diesel to run their ambulances and medical officers don't even turn up when we call for a joint meeting, what am I supposed to do?" asks Archana Jatkar, a sarpanch from Pusad block in the farmer suicide belt of Yavatmal in Maharashtra. <br> <br> The lack of political will is a major constraint, and CBM often comes up against a wall where real action is concerned, say those in the know. Patkar points out that CBM shares the threat of other committees and enquiries. "Even after the audit is done, the government doesn't act on discrepancies. There is often no political will. " Monitoring mechanisms are given petty change in budgets, rue activists. <br> <br> Social scientists say the government tries to put up stumbling blocks at every step. "The state has been trying to limit monitoring to the lower levels. While block- and district-level monitoring committees are functional, they have not set up a state-level planning and monitoring committee despite our demands for over two years, " says Dr Shukla, adding that higherlevel committees need to complement district- and block-level initiatives, as the former would be empowered to take bigger decisions pertaining to recruitment of staff, procurement of supplies and punitive action against defaulting staffers.</p>\n<p></p>\n<p>[Published Earlier in The Times of India,<a href="http://www.timescrest.com/society/the-grassroots-lokpal-6732" target="_blank"> the Crest Edition, November 26, 2011</a>]</p>	\N	2014-02-19 16:01:33+00	4	the-grassroots-lokpal	0	community-based monitoring rights of civil society ration healthcare social audit Andhra Pradesh Maharashtra Tamil Nadu Rajasthan MNREGS NRHM empowerment complaints SATHI-CEHAT intimidation limitations	1	0	0	t	uploads/blog/grassroots_lokpal.png	f		t	0	2014-02-19 15:22:02.973184+00	2014-02-22 09:12:31.517857+00
2	Swaraj University was birthed in 2010 in Udaipur, Rajasthan as a two year learning program for youth. The focus of the program is on self-designed learning and on localisation entrepreneurship, including exploration of basic business skills redefined within the context of ecological sustainability, inner transformation and social justice.	Self designed learning at Swaraj University	\N	45	<p align="center">A space to know oneself. A space to grow. A space to experiment.</p>\n<p align="center">A space to do what YOU are really passionate about. A space to stumble and fall, make mistakes. A space to make friends.</p>\n<p align="center">A space to understand diversity, community and democracy.A space to question, and be questioned.</p>\n<p align="center">A space to DO SOMETHING, for the environment, for society, for one’s community.</p>\n<p><b><img height="200" src="/static/media/uploads/LearningandEducation/swaraj_meeting_circle.jpg" style="float: right;" width="300">The Purpose:</b></p>\n<p>It’s been four years since we at Swaraj University took our first baby steps together. And as this University celebrates its third anniversary, we look back at the excitement, co-creation, friendship, deep questioning, emotional healing, unfolding of self, intense dialogues, discoveries, experiments, mistakes and learning, and much, much more that has been part of the initial years of Swaraj University.</p>\n<p>Taking inspiration from India’s rich ‘guru-shishya’ tradition, Mahatma Gandhi’s naitaleem, Rabindranath Tagore’s Shantiniketan Ashram, and Rancho’s 3 Idiots, Swaraj started in April 2010, as a supportive and nurturing space for young people to self-design their learning process to become green entrepreneurs. Swaraj University is unique because each learner gets the opportunity to develop her own personalized learning program based on her own dreams. Swaraj gives freedom to each student to decide what they want to learn, how they want to learn, and from whom they want to learn. Reva Dandage, co-founder of this university, states, “Swaraj is India’s first university dedicated to strengthening our local cultures, local economies and local ecologies. Sustainability, social justice and holistic, healthy living are the core principles of our vision. Within this larger context, we are keen to support young people in putting their dreams into action and developing eco-friendly businesses that make a difference for the world.”</p>\n<p></p>\n<p><b>The People:</b><b><img height="200" src="/static/media/uploads/LearningandEducation/feet.jpg" style="float: right;" width="300"></b></p>\n<p>Today, we stand as a core community of over sixty enthusiastic and diverse khojis (seekers), and six facilitators with international experience who have motivated and guided the khojis in their journeys of learning. Mentoring, supporting and holding this core together is a larger, much wider community of people who believe in Swaraj and our principles – friends, family members, faculty mentors, support organizations and networks spread over India and the world.</p>\n<p>Within the batches, there is a strong diversity – of age, language, religion, even ideologies and beliefs. The khojis have come from Rajasthan, Gujarat, M.P., Maharashtra, U.P., Delhi, Chennai, Orissa and Karnataka, from urban and rural settings. There is no prior degree or diploma required to join; the only requirements are knowledge of Hindi and a commitment to do something good for society and the environment. The youngest of the group is 17 years old and the oldest 30 years old. Says co-founder Nitin Paranjape, “We believe that everyone can learn and do something well in the world – unlike mainstream education which creates a lot of failures. They just need a chance to identify their talents, find their inner passions and be in a community of support.”</p>\n<p> </p>\n<p><b>Some fellow khojis:</b></p>\n<p>Anant Singh, an 18 year old boy from Mysore who has finished his 12th Std, is running an organic farm and plans to work on eco homes in cities, with rooftop farming, toilets that use less water and solar lighting and heating. His big dream is to lead a ‘sensible’  ecologically positive lifestyle in a rural-based self-sustaining community in tune with nature, not consumerist and waste-generating. He says, “The networks and connections that I have formed with  like-minded people at Swaraj University are invaluable and have opened many doors.”</p>\n<p>Harshita Wadhya, a young woman from the historic city of Varanasi, U.P., did her graduation from Delhi University and is now exploring her interest in alternative healing. Her focus is on energy work/pranic healing, love and forgiveness and its role in healing, as well as past-life regression and dancing. She says that, “After joining Swaraj University, I have started believing in my dreams and values again, I am able to learn from my mistakes and have regained my faith in humanity. I really have enjoyed spending time with my mentor.”</p>\n<p>Gyan Shahane, a 20 year-old from Nasik, Maharashtra, is interested in filmmaking, particularly in the drama/fiction category to bring about positive change in the society at large. He has been working closely with Ekta Parishad and making films about the struggle of land for the landless. His other interests are writing, reading, theatre and photography. He says that, “The love and acceptance for the person I am that I got after joining Swaraj University gives me the strength and courage to do what I want to do and walk on the path I have chosen for myself.”</p>\n<p>The diversity of the first three batches has made for intense discussions and challenging situations at times. But, over the years, we have also witnessed the formation of strong bonds of friendship and trust amongst the group that transcend the barriers of age, class and language. Fitting with the vision, the campus has been set up at an ideal location in the lap of nature – Tapovan Ashram, an organic farm and nursery 30 km. away from Udaipur city, located amidst the Aravalli hills. We have developed a small library, a multimedia lab, residential facilities and a community kitchen there.</p>\n<p>According to co-founder RevaDandage, “The mainstream education institutions focus exclusively on their curriculum to the exclusion of learners’ relationship with their environment – that they do not have any responsibility and relationship with the food they eat, the energy they consume or the waste they generate.” Hence, all the khojis and faculty on campus take  part in the designing, developing and maintaining of community spaces like the kitchen, library, dorms, outdoor classrooms, organic farm and shouldering community responsibilities like cooking, cleaning and thinking of what we consume and how it impacts our environment. “Life on the campus has been exciting, challenging the comforts of some, confronting the deep personal issues of others, while we explore ways of living harmoniously with each other and with nature,” says Sakhi, one of the khojis from Nashik.</p>\n<p> </p>\n<p><b><img height="268" src="/static/media/uploads/LearningandEducation/kiln.jpg" style="float: right;" width="400">The Process:</b></p>\n<p>The course is conducted in Hindi, while keeping in mind each individual’s need for expression in his/her native language. The program believes in practical learning by doing. The program is divided into Khoji Meets (one month every quarter during the first year), at the university’s campus and Mentorship Periods of 2-3 months anywhere in the country. The khojis spend the Khoji Meets practicing self-awareness, team-work, unlearning and perspective deepening. Ecological sustainability, healthy living, social justice and self-designed learning are the principles around which Swaraj University’s program has been designed. The khojis watch movies, research topics and organize discussions thereafter, visit nearby villages, share articles and other resources, do hands-on projects such as building compost toilets, eco-building and cooking solar food, interact with international students from other countries and invite resource persons to share their views.</p>\n<p> </p>\n<p>During the Meets, khojis also hone their documentation and presentation skills, design portfolios and they give and take feedback for their learning and growth. Through exercises and sessions organized by the facilitators, khojis identify their individual learning goals, design plans to achieve them, identify skills that need to be built, re-define their dreams and goals and chart out their mentorship periods.</p>\n<p>The program believes that the world is our classroom. During the mentorship period, the khojis learn skills and practical wisdom from faculty-mentors in fields they want to work in. Swaraj mentors have expertise in fields ranging from organic farming, naturopathy and healing, community radio to filmmaking, women’s rights to working with street children, zero waste crafts to healthy cooking, sustainable design to appropriate renewable technologies. We have over 150 ustaad-mentors all over the country as our faculty and the list is growing.</p>\n<p> </p>\n<p>It is important to note that Swaraj University does not give out any degrees or certificates. It is a peoples’ university, accredited by the people. According to Reva Dandage, “We want students to have real skills and knowledge to take up real projects in their communities – not just lifeless pieces of paper. Over the course of the 2 years, khojis will develop their own portfolios of practical experience and references. At the end of 2 years, they will each have the full confidence and vision to start their own right livelihood projects.”</p>\n<p><img height="233" src="/static/media/uploads/LearningandEducation/sungazing.jpg" style="float: right;" width="350">“As khojis or seekers, it has been an exciting journey of discovery and experimentation for all of us. We have learnt through various experiences such as visiting a prison, organising a fair in the neighbouring village, setting up a food stall made from local grains in a community, silent trekking in the mountains, working with local artisans like potters, puppeteers, etc., interviewing tribal nomads who walk miles with their goats, interacting with youth from foreign countries, tracing the pugmarks of a leopard, attending international conferences amongst many others.”</p>\n<p>“One of the highlights of the year was our participation in an amazing week-long, hands-on, service learning, community building exercise called the Oasis Game in Shivaji Nagar in Udaipur that was conducted by our friend Edgard from Brazil. It pushed our thinking and learning in various dimensions such as learning the skills of working within a community, knowing how to work for our dreams by making it fun and implementing the social-dialogue tools. For many of us, it ignited a new vision and spirit of sewa.”</p>\n<p>“Travelling is a great way to learn. We lay a lot of stress on Learning Journeys which are extremely enriching and energizing in the first year. Last year, we went to Pune and Ahmedabad. We did a very unique and inspiring Cycle Yatra, a journey into villages without money, cell phones, food or any other amenities. During the Cycle Yatra, we pushed our own physical and comfort limits, we questioned our relationship with money and the broader question of dependency,  ‘progress, ‘security’ and ‘development’!”</p>\n<p>So far the first three years of Swaraj University has witnessed many exciting innovations in education. It is slowly but surely developing into a new university for the needs and opportunities of supporting localization in the 21st century. Several khojis have already received job offers after their first year. Many are in the process of setting up their own community businesses. Most importantly, we have seen deep growth and transformative changes in the khojis themselves.</p>\n<p>See the <a href="http://www.swarajuniversity.org/">Swaraj University website</a>, <a href="https://www.facebook.com/swarajuniversity" target="_blank">facebook page</a>.</p>\n<p>See another article about Swaraj University in The Hindu newspaper, January 5, 2014 : <a href="http://www.thehindu.com/features/metroplus/a-new-school-of-thought/article5538472.ece" target="_blank">A New School of Thought</a></p>	\N	2014-02-21 11:55:08+00	6	swaraj-university-udaipur-self-designed-learning	0	education alternative learning social issues sustainability swaraj	1	0	0	t	uploads/LearningandEducation/feet.jpg	f		t	0	2014-02-21 11:55:08.697446+00	2014-02-25 10:01:46.701402+00
2	Jharcraft, a state government initiative, has helped transform the lives of 2.5 lakh families with support for reviving, enhancing, and marketing their traditional crafts. Local craft-based institutions have also been strengthened.	Being the Change:Jharcraft in Jharkhand	\N	9	<p><img height="400" src="/static/media/uploads/Livelihoods/handloom_uruguttu_village_jharkhand_ashish_kothari.png.png" width="602"></p>\n<p>Sikandar’s village Upar Konki in Jharkhand is one of several settlements that are challenging two “development” dogmas: that one needs large-scale industrialisation to provide employment, and that rural-urban migration is inevitable. How are they doing it? With a little bit of help from a remarkable State government initiative, the Jharkhand Silk, Textile and Handicraft Development Corporation Ltd (Jharcraft).</p>\n<p><a href="/static/media/uploads/Stories_PDFs/harcraft_article_as_pub_the_hindu_21.4.2013.pdf" target="_blank"><strong>Read on</strong></a> to see how this transformed the lives in Jharkhand and their craft</p>	\N	2014-02-11 11:37:10+00	3	being-the-changejharcraft-in-jharkhand	0	livelihood society culture Jharcraft Jharkhand	1	0	0	t	uploads/Livelihoods/handloom_uruguttu_village_jharkhand_ashish_kothari.png.png	f		t	0	2014-02-11 06:15:44.801036+00	2014-02-18 12:15:06.963374+00
2	A Rajasthan village has cylindrical houses that help people cope with extreme weather events	Built to last	\N	53	<p><img height="267" src="/static/media/uploads/Settlement%20and%20Transportation/builttolast2.jpg" style="float: left; margin: 3px;" width="200"></p>\n<p></p>\n<p></p>\n<p>The cylindrical houses in New Kotra village (in Barmer district, Rajasthan) are made with locally available materials. They stay cool in summers and warm in winters due to special bricks made from local clay. The architecture of a set of 65 houses here also helps people cope with extreme weather events such as floods and earthquakes.....<a href="http://www.downtoearth.org.in/content/built-last"><strong>Read More</strong></a></p>\n<p>Ref: First Published in Down to Earth, Jan 31, 2014</p>	\N	2014-02-25 03:49:20+00	3	built-to-last-houses-to-withstand-extreme-desert-weather	0	Building Materials Climate Adaptation Disaster Housing Rural Architecture seeds low popularity	1	0	0	t	uploads/Settlement and Transportation/builttolast_ankurpaliwal.jpg	f		t	0	2014-02-25 04:21:15.35581+00	2014-02-26 04:23:02.791778+00
2	Communities can conserve forests and make a living out of it. Then why is the\r\ngovernment playing spoilsport? 	Community-led conservation in India	\N	26	<p>Community-led conservation is widespread in India, and has enormous potential for combining biodiversity conservation with livelihoods enhancement, but the government is not very supportive. However, CCAs are not a panacea for all kinds of biodiversity and natural resource depletion. But they are a powerful option that could rival conservation by any other sector, particularly if located within a larger sustainable landscape rather than as isolated islands.</p>\n<p><a href="/static/media/uploads/Stories_PDFs/ccas_in_india_as_pub_tehelka_1_6_2012.pdf.pdf" target="_blank"><strong>Read what</strong></a> Ashish Kothari and Neema Pathak have to say</p>	\N	2014-02-14 05:37:42+00	3	community-led-conservation-in-india	0		1	0	0	t	uploads/logos/alternative_politics.png	f		t	0	2014-02-14 05:37:45.551955+00	2014-03-07 04:46:19.804153+00
2	The second edition of India Energy [R]evolution in 2012 provides a practical pathway for India to secure its energy particularly electricity supply to achieve its long-term ambitious economic growth	Energy (R)evolution: Sustainable energy outlook for India	\N	16	<p>The second edition of India Energy [R]evolution in 2012 provides a practical pathway for India to secure its energy particularly electricity supply to achieve its long-term ambitious economic growth along with providing access to modern electricity technology to over 300 million population who are still waiting to see light in their home while remaining significantly on low carbon growth trajectory.<br>The previous edition of India Energy [R]evolution in 2010 has detailed employment analysis, and the current edition expands the research further to incorporate socio-economic effects of renewable heating and cooling systems. While the 2010 edition had two scenarios – a basic and an advanced Energy [R]evolution, this edition puts forward only one; based on the previous ‘advanced’ case.</p>\n<p>you can download the second edition document from the <a href="http://www.greenpeace.org/india/en/publications/Energy-Revolution-2nd-Edition/" target="_blank">Greenpeace website</a></p>	\N	2014-02-12 11:47:54+00	3	energy-revolution-sustainable-energy-outlook-for-india	0	sustainability Greenpeace energy ecology	1	0	0	t	uploads/Energy/rice_husk_power,_bihar_harikrishna_katragadda_greenpeace.png	f		t	0	2014-02-12 06:27:15.16873+00	2014-02-12 06:27:15.252371+00
2	By placing all components of textile production in the hands of weavers and artisans, the Malkha intervention seeks to make them autonomous owners of their means of livelihood.	The key to the handloom crisis	\N	89	<p>Andhra Pradesh is home to a diversity of exquisite handloom weaves renowned for their craftsmanship and aesthetic appeal. However, this beauty is hardly reflected in the lives of weavers, where motifs of distress and deprivation are dominant. Though they toil from dawn to dusk enmeshing warp with weft, the lives of these skilled artisans are in perpetual crisis. To address this grim scenario, the Malkha initiative is making a modest attempt to relocate the chain of cotton handloom production back within the rural economy. By placing all components of textile production in the hands of weavers and artisans, the intervention seeks to make them autonomous owners of their means of livelihood.</p>\n<p>Malkha, a neologism that conjoins the words Malmal and Khadi, is the brand name of natural-dyed handloom cloth produced by the Decentralised Cotton Yarn Trust in Andhra Pradesh. The distinctive feature of Malkha fabric is that, unlike other handloom interventions which use yarn manufactured by large-scale spinning mills, Malkha’s yarn is manufactured in the villages themselves using special machines designed for small-scale handloom production. Thus, the Malkha process seeks to obviate the capital and resource intensive components in the conventional chain of the industrial manufacture of cotton cloth, thereby shrinking the overall ecological footprint. Fundamentally, it attempts to rescue cotton yarn and textile production from the monoculture of industrial textile manufacture, and reestablish it within the rural economy, to empower weavers and artisans through stable livelihoods</p>\n<p><a href="http://radicalecologicaldemocracy.wordpress.com/2013/10/26/addressing-the-handloom-crisis-in-andhra-pradesh/" target="_blank"><strong>Read More</strong></a></p>\n<p>First Published in India Together on 04 February 2012</p>	\N	2014-03-06 15:35:27+00	3	the-key-to-the-handloom-crisis	3	Malmal khadi Decentralised Cotton Yarn Trust Uzramma cotton seed spinning agriculture weaver empowerment Andhra Pradesh	1	0	0	t	uploads/01_sm_bhuj_setu_te_1670039f.jpg	f		t	0	2014-03-06 15:36:46.5844+00	2014-04-04 10:27:28.958389+00
2	Nearly 100,000 villagers in the remotest hamlets of Jharkhand connect every day to Jharkhand Mobile Vaani, a unique voice-based social platform where they can discuss issues regarding health, unemployment and education without fear and be reasonably confident of receiving a reply from the concerned authorities	Mobile Vaani - Community Radio in Jharkhand	\N	21	<p>People living in urban areas may not react to “<em>Johar! Mobile Vaani mein aapka swagat hai</em>…” but this salutation is a comforting welcome for nearly 100,000 villagers in the remotest hamlets of Jharkhand. They connect every day to Jharkhand Mobile Vaani, a unique voice-based social platform. Rajiv Murmoo, a 41-year-old farmer from Santhal Pargana, a tribal village, has found a new friend in Jharkhand Mobile Vaani whom he can call anytime to report a corrupt practice or to find solutions to a problem...<a href="http://www.civilsocietyonline.com/pages/Details.aspx?452" target="_blank"><strong>read on to know more about this enterprising and innovative solution</strong></a></p>	\N	2014-02-12 23:16:07+00	3	mobile-vaani-community-radio-in-jharkhand	0		1	0	0	t	uploads/KnowledgeandMedia/mobilevaani.png	f		t	0	2014-02-12 17:50:43.242945+00	2014-02-12 18:15:31.011396+00
2	Dola Dasgupta is an unschooling mother of two children and a co-founder of Swashikshan–Indian Association of Homeschoolers. Swashikshan is a non-profit initiative of homeschooling children, parents, guardians and friends. The members of this association include homeschoolers residing in India, irrespective of nationality & homeschoolers of Indian origin, irrespective of location.	How do I explain Un-Schooling to skeptics?	\N	74	<p><b>Reprinted from:  </b>http://homeschoolers.in/</p>\n<p><b><img height="219" src="/static/media/uploads/LearningandEducation/2swashikshan.png" style="vertical-align: middle; float: left;" width="327"></b></p>\n<p>When I decided to present a paper for <strong>The Homeschool Conference </strong>(<a href="http://www.homeschoolconference.com/" target="_blank">http://www.homeschoolconference.com</a>), I was not sure what would be the theme of the paper. Each day for a month I sat down at my lap top and opened a blank word document and stared at the screen, with nothing coming forth for me to write. The earlier me, which was a paranoid, perfectionist, professional, wanting to excel, ‘kind of human being’ would have given up and shelved the idea or lost sleep over it and would have cursed myself for not being good enough. But hey I am none of those now. Unschooling my two children, Gourika, 11 and Ishaan 7, changed that old me of mine!</p>\n<p>People often ask me what is unschooling and why don’t I send my children to school. There was this old me again which would go on a rampage of blaming the school system and the modern education systems each time this question was asked of me. But hey now I can just smilingly say, “oh we just love to be in each other’s company, doing all the things we like to do at and in the comfort of our homes, stepping out only for those things that really drive us or we are passionate about. Schools are great but they don’t suit our unique needs and desires.”</p>\n<p>Those who see us perfectly happy alone and in each other’s company, often curiously ask, “What about socialization?” The old lonely and angry me would have gone on a rant of how cruel the world is and who needs to be around people who hate who we are anyway. But hey now I joyfully say, “We are learning to be fully there with our own thoughts, emotions, feelings, moods so that we may better understand who we truly are and what it means to be fully ourselves without the pressure to conform to social conditions that come from teachers and peers. We are spending enough time with our own minds and focusing lesser on what impressions my mind will catch from social, cultural, educational inputs that are born of someone else’s mind, so that we learn to be fully and consciously aware of the roots of our thoughts and actions.” I recently was fortunate to attend a talk by His Holiness the Dalai Lama, and he said, “The modern education system gives no value to the mind and its nature. There is no value given to the understanding of emotions and feelings. No education is wholesome without the understanding of the nature of the mind.” I felt happy and peaceful to be validated by the greatest soul of our times.</p>\n<p>My children spend a lot of time with each other and at home with me. They have no choice but to face, walk through, resolve and learn from conflicts that surface in each of us. We learn the communication tools needed to stay in harmony and balance with each other. My children know their energies so well that they socialize not under any peer pressure but only when they feel heart to heart connections and when they feel drawn by interests in each other’s passion and life. So they surprise the most skeptical of adults when they start a conversation with them or engage in play with a child much younger or older than them in age. I feel children who feel safe and secure to be themselves fully and express their emotions fully without being judged at home, are often the ones who go out there and forge harmonious relationships with people outside family.</p>\n<p>My response seems so unreal to most that their next question is often meant to throw me off balance. “But do you think watching television and sitting in front of the computer or toying with the iPad will help them in gaining any knowledge?” The earlier ‘fearful of multimedia mother’, who looked at TV as the idiot box would have gone on a sleepless guilt trip and imagined her children watching violence and pornography on TV and internet and would have nightmares about her children growing up to be mass murderers who shoot school children with guns! But hey now this peaceful with ‘all things are learning tools for my children’, mother says, my son learns about the world from surfing the internet. He has knowledge of history, geography, geology, gemology, astronomy, architecture, paleontology, cosmos, global warming, scientific phenomenon, films, animation, art, cooking, numbers, currencies, phew…from the internet.</p>\n<p>My daughter learns to sing with ear plugs and YouTube songs with lyrics. Her knowledge of films and music is all from the internet. She watches videos of animals giving birth and pictures of different breeds of dogs, as she harbors a quiet dream of running an animal shelter one day. She plays complex video games with other kids all over the world and writes messages online, proving to many that she can read and write without being taught to do so by a teacher. She is in tune with the latest fashion trends and keeps a sketch book of her fashion drawings.</p>\n<p>The next question invariably is about obscenity and vulgarity on electronic media. I must admit, I am surprised that my children have never naturally felt any need to watch anything that is “vulgar or obscene”. This question comes in the minds of adults who grew up in repressed environments as children and had to sneak out for their dose of forbidden things! The unpleasant outcomes of those adventures still have painful memories in the minds of the adults and hence they fear TV, Internet, and other media and operate from those old fears of painful memories. But they mostly forget the reasons that drove them to sneak out and seek adventures with unpleasant outcomes, in the first place. The adults forget that the reasons for such adventures were to start with prohibition, restriction and moralization.</p>\n<p>The root of that old fear is what parents want to propagate with their children, which bring in the same results, of children seeking misadventures in the wrong places. Sometimes when adult and vulgar images or content pop up on the net or TV, my children are more curious about knowing what it all means and why do they show such stuff on net or TV. And that leads to healthy conversations between my children and me. We talk about sex, sexuality, pornography, prostitution, violence, etc like any other subject of knowledge.</p>\n<p>Of course the real work is being done by me, the parent, in cleansing my fears of sexuality and violence. As a parent when my children ask questions that cause discomfort in me, it acts as cues for me to understand the root of that discomfort in my mind and body. Invariably it is because of some unpleasant experience of mine stemming from my childhood or past, which needs my attention and healing. This process also prevents me from projecting my fears and ignorance on my children. This detached process helps me to be a more alert, attentive and compassionate parent to my children and their real and immediate needs.</p>\n<p>When the skeptics hear of this from me, they say, “Oh well, who has time with school and work and the daily routine of life, to indulge in such processes?” I smile and say, “Exactly the reason why we unschool so that we have more time and space for such slow and internal learning and integration of knowledge and self discovery”. By now we all know what the next inevitable question is going to be. “Well all this fine, but what about getting a job or finding a livelihood or earning money?” Hmmm…I say to myself silently, “with 18 years of leisurely time spend in self discovery, finding a livelihood would be easier than it has been for me who spent 25 years of my life in formal education and still could not figure out a work that spoke of my heart and represented my unique gifts.”</p>\n<p>But this is what I say. I tell them that my daughter wants to be fashion designer, singer, kennel owner, home-maker and stay-at-home mother. My son wants to be inventor, archaeologist, architect, linguist, professor, artist and world and space traveler.</p>\n<p>“And how will they become all that if they do not go to school or college and take exams?” is the logical next question. I explain to them in words that when there is a seed of desire in the heart, and that seed is watered and nourished with creative and lively inputs from the environment in that moment, in which the children are growing up in, the plant will sprout and the tree will grow and the Universe will support and bring the required nutriments and help the tree to blossom and bear fruits. The children will dream freely and the power of their dreams will manifest the desired results for them.</p>\n<p>I attended a terrace garden community gathering recently where there were many urban farmers. One urban farmer showed us how to make soil out of dried and decomposed leafs and also showed us mulching. After we prepared the bed for the soil, we filled it with layers of dried coconut leaves and laid it with decomposed leaves and we then stepped on that with bare feet. It felt so soft. Once the bed was filled, the lady farmer got a whole lot soaked seeds from the kitchen. She had soaked them for three hours or so. They were a combination of pulses, beans, oil seeds and spices. She also explained how the moment the seed came in contact with water the process of germination had already rolled in but invisibly and that is why they soaked it only for a few hours. She explained why, sowing sprouted seeds was harmful as sunlight would dry up the sprouts too early and they would not grow so that we could cut them and add them back to the soil.</p>\n<p>She told us how in Ayurveda (the ancient Indian wisdom of medicinal herbs, health and healthy food) the food that we grow and eat is based on nine Rasas (in Sanskrit rasas also means emotions). Rasas also means attributes or traits. And she told us each of the seeds that we sow will germinate and take root over a period of three 21-day cycles. During which we need to cut parts of that green growth and add it back to the brown soil to green the soil. The reason for doing this is that the roots of each green plant will attract different microbes to the root which will enrich the soil with their unique nutriments. This will create a biodiversity in the soil. And over a period of time the right soil for growing food will be ready. The best part of this process is that every season will have its own beans, own pulses and own oil seeds. The best soil is a right mix of brown and green!</p>\n<p>Then we covered the planted seeds with more dried and decomposed leaves. The purpose of this was to not expose the soil to too much heat or cold. When the weather is hot the leaf cover will keep the soil cool and when the weather is cold the leaf cover will keep the soil warm! Are we consciously doing this to our children or not? I feel school and modern education has very little scope for this kind of organic protection for real and durable growth to happen.</p>\n<p>Why am I narrating this whole example? Well to illustrate that, that given the premise that human beings are part of this planet just as plants are and since scientifically too it has been proven that all living beings are essentially made up of the same molecules and atom, what holds good for the plants holds good and true for human beings too. For the soil of the soul and mind to enrich, all Rasas, that is all emotions and attributes are necessary for fruition. Each child will attract according to his or her inherent nature the right ingredients (microbes in case of plants) to come to fruition. And what I explained about making soil ready for growing food is a long and patient process. This process takes root mostly under the earth with no visibility above surface. It all happens mysteriously in darkness. So is the case with children. I am pretty much convinced that school and the modern education system have no space for long, patient and invisible processes. Unschooling is the path for this long enriching process.<em></em></p>\n<p><i>Dola Dasgupta is an unschooling mother of two children and a co-founder of Swashikshan.  She facilitates the learning of her children and supports other parents who homeschool or are looking at such possibilities for their children. She is a writer and has a few blogs on self awareness and living in awareness with children – <a href="http://childrenmypartners.wordpress.com/" target="_blank">children my partners</a>, <a href="http://thouartthycreator.wordpress.com/" target="_blank">thou art thy creator</a> and <a href="http://ourcreativealtar.wordpress.com/" target="_blank">our creative altar</a>.</i></p>	\N	2014-02-26 05:30:03+00	3	how-do-i-explain-un-schooling-to-skeptics	0	Swashikshan unschooling alternative education	1	0	0	t	uploads/LearningandEducation/2swashikshan.png	f		t	0	2014-02-26 05:30:03.279466+00	2014-02-26 05:30:57.240765+00
2	Janapada Seva Encounter with octogenarian Surendra Kaulogi and his sons, Santosh and Sughosh and their commitment to the weaving community through the Janapada Seva Trust at Melkote in Karnataka, India	Surendra Kaulogi and the weaving community at Melkote	\N	27	<p><img height="405" src="/static/media/uploads/Livelihoods/surendrakaulogi.png" style="float: left; margin: 3px;" width="378"></p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<p>Meet the octogenarian,<a href="/static/media/uploads/Stories_PDFs/janapada.pdf" target="_blank"><strong> Surendra Kaulogi,</strong></a> born amidst the Indian turbulent freedom movement, who worked with Jayprakash Narayan and Vinoba Bhave and who initiated the Janapada Seva Trust with his wife Girija, in 1961. adil Basha writes about his encounter with Surendra and their committment to support the weaving community through the trust at Melkote, Karnataka.</p>	\N	2014-02-14 05:49:16+00	3	surendra-kaulogi-and-the-weaving-community-at-melkote	0		1	0	0	t	uploads/Livelihoods/janapadasevatrust.png	f		t	0	2014-02-14 06:11:05.538305+00	2014-02-14 06:13:55.102335+00
2	A programme titled 'Pahar aur Hum: Rethinking Development in the Himalayas' concluded in Himachal Pradesh where 16 youth from western Himalayan states quietly learnt lessons on environmental issues for six days.	 Enabling youth towards saving ‘development’-induced destruction. 	\N	15	<p>Organisers of the unique programme said that by educating youth about the environmental issues and creating awareness on complex social problems only effective change in the society could be brought....as reported in <a href="http://articles.timesofindia.indiatimes.com/2014-01-22/chandigarh/46461971_1_programme-environmental-issues-himalayan" target="_blank"><strong>TOI</strong></a></p>	\N	2014-02-12 11:26:28+00	3	enabling-youth-action-to-save-the-ecologically-fragile-himalayas-from-development-induced-destruction	0	Development social issues environmental issues Sambhaavanaa Institute of Public Policy and Politics Himdhara Environment and Research Collective Askot-Arakot Yatra	1	0	0	t	uploads/logos/ecology_and_env.png	f		t	0	2014-02-12 05:57:35.835447+00	2014-03-06 17:26:29.921345+00
2	 Mewat in Haryana got India's first community radio based consumer helpline. The listeners can call the radio's helpline number and leave a message, talk to a radio reporter or even come on live with their complaint. Over five lakh people will be able to take advantage of the helpline.	Consumer Complaints through Community Radio in Mewat, Haryana	\N	14	<p>One of the country' most backward districts, Mewat in Haryana will get India's first community radio based consumer helpline on Wednesday. This helpline will be managed by Mewat based community radio station, Radio Mewat.....</p>\n<p>as reported in the <a href="http://articles.timesofindia.indiatimes.com/2014-01-13/india/46148405_1_consumer-helpline-community-radio-helpline-number"><strong>TOI</strong></a> and <a href="http://www.communityvoices.in/directory/community-media-profile/1314/"><strong>Community Voices.in</strong></a></p>	\N	2014-02-12 11:20:13+00	3	consumer-complaints-through-community-radio-in-mewat-haryana	0	community radio low literacy rate consumer rights Haryana Mewat	1	0	0	t	uploads/logos/science_and_knowledge.png	f		t	0	2014-02-12 05:52:58.583293+00	2014-03-06 17:27:21.55229+00
2	The Bangalore Bus Prayaanikara Vedike was formed by commuters, who, intending to oppose the hike in bus fare, also formed this forum to deal with varied issues relating to the bus service and the bus terminus.	Bangalore bus Commuters' Forum	\N	81	<p>Bangalore is a city where 48 lakh out of a total population of 95 lakh people use the bus. Bus-users in Bangalore have a number of issues – high fares, rampant sexual harassment of women in buses, absence of bus shelters in most stops and major terminals, poor connectivity to interior areas and outskirts etc. However there was no forum for bus-users.</p>\n<p>In June 2013, Bangalore Metropolitan Transport Corporation (BMTC) hiked bus fares by 16%, the second such hike in 9 months. The hike effectively pushed fares by more than 40% compared to September 2012. Civil society groups met in response to the hike intending to launch a campaign to force the government to bring down the hike.</p>\n<p>At this juncture, the various groups consisting of garment workers unions, street vendors groups, domestic workers unions, sex-workers unions, NGOs and CBOs working with slums decided to not just launch a campaign on the fare hike, but instead to create a forum to tackle all issues faced by bus-users. Thus the Bangalore Bus Prayaanikara Vedike was launched.</p>\n<p>The Vedike launched a campaign to bring down the fares – with a protest outside the BMTC office, observing a Black Day on July 4th when BMTC usually celebrated bus-day and a signature campaign. The response of the public to the campaign was strong and sincere – people joined in distributing pamphlets, collecting signatures etc. In response to the campaign, the government announced a reduction in the fares but just by 1 rupee for the first stage (first two stops). While this is only a little, it is encouraging for the Forum to see a response to the campaign. The Forum is continuing the campaign to reduce the fare hike. The Forum has also decided to work on the issue of sexual harassment of women and is working to produce a fact-finding report of the same. The demands of the Forum include: <br>1. Roll back the BMTC and KSRTC bus fare increase. BMTC bus fares must be fixed in such a way that they do not exceed 5% of the lowest minimum wages fixed by the Government of Karnataka.<br>2. Give free passes to senior citizens, people with disability, Antyodaya card holders and school children.<br>3. Increase the number of buses and routes to ensure the whole city is well covered.<br>4. Mini buses must be introduced to cover interior areas and slums.<br>5. All bus terminals must have shelters, toilets and drinking water and all bus-stops must have shelters.<br>6. Appoint a committee with equal representation from among experts suggested by the Vedike and the BMTC on the issue of sexual harassment of women, sexual minorities and children<br>7. Initiate an inquiry into the financial operations of BMTC and an operational review of BMTC. Publish the findings of this review and the inquiry.<br>8. No more Traffic and Transit Management Centres to be constructed and no new Volvos to be purchased without prior public consent.<br>9. Provide funds to BMTC so that it can provide better and affordable services. This can be done through -<br>a. Withdrawal of Motor Vehicle Tax on buses and reduced taxes on diesel<br>b. Charging car parking fees and congestion fees and transfer the funds to BMTC<br>c. Create a corpus for BMTC by sanctioning an amount comparable to that being spent on Bangalore Metro<br>10. Set up a commuters committee at the Depot level to look into any commuters’ grievances<br>11. Announce a process of public consultation to make BMTC more people‐friendly, equitable, democratic and transparent.</p>\n<p>For more details, email <a href="mailto:bbpvedike@gmail.com">bbpvedike@gmail.com</a><br>Or call 9880595032, 9972903460, 9483950202</p>\n<p>First Published in SUM Net Newsletter, Issue 2, Volume 1, 2013</p>	\N	2014-02-27 14:51:00+00	3	bangalore-bus-commuters-forum	0	fares connectivity harassment BMTC shelters forum facilities transparency alternative transport Bangalore	1	0	0	t	uploads/logos/ecology_and_env.png	f		t	0	2014-02-27 14:53:23.492066+00	2014-03-06 17:20:48.361004+00
2	Some forms of democracy existed in ancient Indian communities, which may be relevant for today's times. 	Democracy in Ancient India	\N	10	<div dir="ltr">Historians who are interested in democracy often insist it must beunderstood in context of a unique western tradition of political developmentbeginning with the Greeks. The spread of democratic ideals and practice toother cultures, or their failure to spread, have many times been explained on the assumption that democracy or personal liberty are ideals foreign to the non-Western world--an assumption at least as old as Herodotus. Butevents since the late 1980s have shown that people both in "Western" and "non-Western" countries have a lively interest in democracy as something</div>\n<div dir="ltr">relevant to their own situation. The old assumption deserves to be re-examined.</div>\n<div dir="ltr"><a href="/static/media/uploads/Stories_PDFs/ancient_india_and_democracy.pdf"><strong>Read more</strong></a> on what Steve Muhlberger, Associate Professor of History, Nipissing University, has to say further on the topic.</div>	\N	2014-02-11 11:49:05+00	3	democracy-in-ancient-india	0	democracy ancient republics	1	0	0	t	uploads/logos/alternative_politics.png	f		t	0	2014-02-11 06:23:17.593121+00	2014-03-06 17:28:18.060111+00
2	At present, IT is reinforcing more than attacking inequality: men are benefiting more than women; the rich are benefiting more than the poor. The challenge is to create the conditions for reversing the polarities	India’s move to e-governance exposes ancient flaws	\N	13	<p>The Indian state of Karnataka is trying to assist rural development through Information and Communications Technologies. But how well can ICTs work for development in a country riven with inequities?</p>\n<p>The Indian state of Karnataka, known for its advances in software development, is trying to address issues of rural development through Information and Communications Technologies.</p>\n<p><a href="http://panos.org.uk/features/indias-move-to-e-governance-exposes-ancient-flaws/" target="_blank">Read on to know more</a>..</p>	\N	2014-02-12 10:52:38+00	3	indias-move-to-e-governance-exposes-ancient-flaws	0	Karnataka digital solutions Bhoomi Record of Rights Tenance and Crops rural corruption exploitation oppression e-kiosk gender village accountants	1	0	0	t	uploads/logos/alternative_politics.png	f		t	0	2014-02-12 05:22:45.51085+00	2014-03-06 17:28:50.642416+00
2	Mangarbani is a large sacred grove where some of the original vegetation of the Aravalli is still intact, protected by villagers, but now increasingly threatened.	Mangarbani sacred grove near Delhi	\N	25	<p><img height="367" src="/static/media/uploads/Environment_And_Ecology/sacredgrove2.png" style="vertical-align: text-top; margin: 3px auto;" width="550"></p>\n<p>What’s so special about Mangarbani? It’s not as if Delhi lacks large green spaces. There is the Ridge, the northern-most spur of the Aravali range, which stretches all the way to Rajasthan. Those wooded parts along its hilly spine that survive—after encroachments by the army, ashrams of sundry sants, shopping malls, street-widening and other forms of land grab have carved out and consumed big chunks of its area—are cool green havens.</p>\n<p><a href="/static/media/uploads/Stories_PDFs/mangarbani_sacred_grove_a_baviskar_outlook_traveller_july_2013.pdf.pdf" target="_blank"><strong>Read on</strong></a> to find out what's going on in the deep dark woods</p>	\N	2014-02-14 05:08:38+00	3	mangarbani-sacred-grove-near-delhi	0	Aravali Mangarbani New Delhi enironment ecology	1	0	0	t	uploads/Environment_And_Ecology/sacredgrove.png	f		t	0	2014-02-14 05:15:21.972027+00	2014-03-07 04:52:38.173294+00
2	Illustrating an example of how bias can and often gets built into news reporting, and how a simple difference in highlighting of different facts involved can twist the tale. Even to the extent of painting the victims of an event as the villains, distracting the reader from the root causes of an issue, and advocating the wrong solutions by misinterpreting the problems.	Biases in news reporting	\N	29	<p>I'd like to illustrate an example of how bias can and often gets built into news reporting, and how a simple difference in highlighting of different facts involved can twist the tale. Even to the extent of painting the victims of an event as the villains, distracting the reader from the root causes of an issue, and advocating the wrong solutions by misinterpreting the problems.</p>\n<p><a href="http://india.blogs.nytimes.com/2014/01/03/a-hunting-community-in-nagaland-takes-steps-toward-conservation/">This article</a> published by the New York Times on environment conservation efforts in the Indian state of Nagaland, paints a picture of Naga villagers following a harmful practice of hunting an endangered species of migratory birds. It then tells how through persistent "education" and awareness efforts by State and NGOs, the villagers are getting reformed.</p>\n<p>But there's more to this story than what most of it portrays. Some important questions were neglected:</p>\n<ul>\n<li>Have the villagers been indiscriminately hunting this bird to near extinction since time immemorial?</li>\n<li>If not, since when?</li>\n<li>How did they come to this situation?</li>\n</ul>\n<p>The answer to these comes almost as an aside, in 3 small paragraphs halfway down the article:</p>\n<blockquote>\n<p><i>"Their other sources of income had run into problems after the Doyang dam, a huge structure generating 75 megawatts of electricity, was commissioned in 2000. In a wet, mountainous state like Nagaland, it is not irrigation but flat land that is most coveted by farmers. The Doyang reservoir came up in some of the flattest areas in Doyang, submerging cultivable fields.</i></p>\n<p><i>Attracted by the new body of water and the sugar cane and wild bananas that were growing on the banks of the reservoir, wild elephants trampled over several crops, say villagers. Suffering losses, villagers decided to capture Amur falcons, which were now congregating in dizzying numbers over the reservoir, for their livelihood.</i></p>\n<p><i>Villagers have argued that if they are not allowed to hunt wild birds and animals, then they need to be provided an alternative way to generate seasonal income."</i></p>\n</blockquote>\n<p>In this article, the "hunting is steeped in their tradition" got a lot more stress, even getting downright repetitive. An image was built that these villagers are inherently, by their very culture and way of life, inclined to hunt the falcons to extinction. Whereas the part quoted above was seldom referred to in the rest of the article. It's almost as if these paragraphs were inserted later as an afterthought. Omitting these parts out completely would have exposed the bias for what it really is, so other tactics are used. This is a typical example of control over what inference the reader makes. Even without outright lying, by choosing which parts of a story to lay stress on and which to downplay, a totally different picture can be conveyed. This happens regularly in our present mainstream media at the reporter/writer’s level or the editor's level; in the latter case, the original author might find out about the ideological edits made by their superior only after the article gets published.</p>\n<p>Look at how much it is downplayed : <em>"Their other sources of income had run into problems after the Doyang dam.."</em> :: Other sources of income, or primary livelihood? If you permanently stop an entire community engaged in a livelihood like farming from doing it, then that doesn't mean that their "<em>other sources of income</em>" have "<em>run into problems</em>". It means you've deprived them of their livelihood, their way of life, their food security. At an average farmer's level, it means that unless he takes some drastic, desperate measures, his family is going to go hungry, and in the absence of community support (true here as everyone's in the same fix), they might even die.</p>\n<p>In this case, the desperate measures manifested in resorting to hunting of Amur falcons. Hunting which was until now a cultural ritual (which inherently has limits and wouldn't lead to overhunting), was now commodified (which doesn't have any limits: the more you hunt, the more you earn). All these millennia these people didn't over-hunt any bird to extinction : it started happening only after their livelihoods were taken away from them, by the State and the power industry building a dam over their farmlands. Of course, the proceeds from the dam cannot be expected to go to these "backward" villagers to compensate them monthly for their livelihood losses (which would be a certain very large amount to be paid monthly for ever): that would make the dam non-profitable for the entities who built and operate them.</p>\n<p>A miracle is then conveyed over the killing of the birds dropping down to zero in just an year of efforts. This happened because the over-killing had only recently started, after the dam was made. It wasn’t an inherent feature of the villagers’ cultural traditions as is repeatedly indicated.</p>\n<p>So, which entity was really responsible for the endangerment of the birds? Those who were evicted from their ancestral lands, desperate to feed their families and given no other choice? Those who flooded flat farmlands in a mountainous region with a dam made to sell electricity for a profit? Or those consuming the electricity for whose consumption the dam was built? (The north east states sell electricity to various states on the mainland.. it could be your own city) The article decisively points fingers at the villagers, albeit giving some small defense on their behalf towards the end, but never going into the root causes.</p>\n<p>And now we come to the truly dangerous part. By misinterpreting the problem itself, it becomes possible to justify any narrowly-focused solution, as professed all over this article. We're not fixing any problem by "educating and reforming" the villagers : a feat trumpeted like a heroic effort by the government and NGOs involved. This also highlights a serious problem with field-specific specialization of NGOs that come in from the outside : You cannot expect a Natural History Society to be telling anyone anything about dams, even if it's clear that it was a dam's hasty construction that is causing the problems they're endeavoring to solve.</p>\n<p>So here's an exercise for the reader : If you were given an opportunity to rewrite the article under discussion, would you write it differently? What would your inferences be, and what would you be more comfortable with your readers inferring? What would your advocated solution look like?</p>\n<p></p>\n<p>Nikhil Sheth, Shikshantar</p>\n<p>nikhil.js@gmail.com, https://www.facebook.com/nikjs, http://www.nikhilsheth.tk/</p>	\N	2014-02-17 06:53:39+00	1	on-biases-in-news-reporting	2	Nagaland Tribals adivasis displacement Reporting News	1	0	0	t		f		t	0	2014-02-17 07:02:46.735753+00	2014-04-04 10:45:20.511715+00
2	The program of Learning Un Learning will be at Adliabad from March 24th till 28th at Guruji s Kalashram. Learning un learning in short is a program to initiate deep enquiry in to the biological roots of cognition and to explore the cognitive damages inflicted by modern coercive education.	Learning Un Learning Program	\N	88	<p>The program of Learning Un Learning will be at Adliabad from March 24th till 28th at Guruji s Kalashram.<br><a href="http://www.kalaashram.org/p/about.html" target="_blank">http://www.kalaashram.org/p/<wbr></wbr>about.html</a><br>The fees is Rs 4000 which includes simple food, stay and donation to Ashram. If you can afford please consider to donate to meet expenses of documentation etc.</p>\n<p>After this event Guruji is having 3 days - 29, 30, 31- Ugadi celebrations. You may stay back for this event too.<br>Do confirm your participation as soon as possible. Please go through <a href="/static/media/uploads/Resources/learning_unlearning__program.pdf" target="_blank"><strong>the attachment</strong></a> to know more about the program.</p>\n<p><strong>Learning un learning</strong> in short is a program to initiate deep enquiry in to the biological roots of cognition and to explore the cognitive damages inflicted by modern coercive education. The learning Unlearning program is an year long one in which we meet every month for about 7 to 10 days. One can take part in all or any of the program. We have set up this email group - <a href="mailto:biological-roots-of-being@googlegroups.com" target="_blank">biological-roots-of-being@<wbr></wbr>googlegroups.com</a> for discussions and information. Please join the same if you are  interested.</p>\n<p><a href="/static/media/uploads/Resources/learning_unlearning__poster.pdf" target="_blank">Learning Un Learning Poster</a> (Print for Notice Boards)</p>\n<p><a href="https://www.youtube.com/watch?v=FEmqI7p5Ejs" target="_blank">Guruji Speak on Rural economy</a></p>\n<p><strong>Registration</strong>:</p>\n<p><a href="/static/media/uploads/Resources/learning_unlearning_registration_form.pdf" target="_blank">Registration Form</a><br><br>You may transfer the amount to The Federal Bank Limited, Kothrud Pune Branch,savings a\\c no. 15000100006330, account name Sadhana Village,Pune, and the IFSC CODE  FDRL0001500  or  send DD  in favour of 'Sadhana Village,Pune ' payable at Federal Bank,Pune. It is non-refundable.<br><br>Jinan<br><a href="mailto:recoveringlearning@gmail.com" target="_blank">recoveringlearning@gmail.com</a><br><br><a href="http://www.sadhanavillageschool.org/" target="_blank">www.sadhanavillageschool.org</a><br><a href="http://www.re-cognition.org/" target="_blank">www.re-cognition.org</a><br><a href="http://www.recoveringlearning.wordpress.com/" target="_blank">www.recoveringlearning.<wbr></wbr>wordpress.com</a><br><br>More about Guruji<br><a href="http://www.youtube.com/watch?v=FEmqI7p5Ejs" target="_blank">http://www.youtube.com/watch?<wbr></wbr>v=FEmqI7p5Ejs</a><br><a href="http://www.hindu.com/2010/03/24/stories/2010032452590200.htm" target="_blank">http://www.hindu.com/2010/03/<wbr></wbr>24/stories/2010032452590200.<wbr></wbr>htm</a></p>	\N	2014-03-04 04:55:06+00	3	learning-un-learning-program	0		1	0	0	t	uploads/governance_1600x900.jpg	f		t	0	2014-03-04 05:04:07.389308+00	2014-05-05 15:58:00.920709+00
2	 Adivasis, especially from the Particularly Vulnerable Tribal Groups, have expressed their desire to continue their traditional forms of governance rather than adopt the uniform panchayat raj institutions	Tribals prefer traditional way of governance over Panchayati Raj	\N	41	<div dir="ltr">The unanimous consensus among the tribals was that the Panchayati Raj System was inferior to their</div>\n<div dir="ltr">traditional tribal law. Besides, it involved the intrusion of outsiders like the police and the political parties.</div>\n<p>“The Panchayati Raj System is not our favour.” <a href="/static/media/uploads/tribals_prefer_traditional_way_of_governance_over_panchayat_raj.pdf" target="_blank">Check out why they feel so</a>...</p>\n<p>First Published by <a href="http://indianexpress.com/article/cities/ahmedabad/tribals-prefer-traditional-way-of-governance-over-panchayati-raj/">Express News Service</a>, Sep 06, 2009</p>	\N	2014-02-21 09:08:03+00	4	tribals-prefer-traditional-way-of-governance-over-panchayati-raj	0	particularly vulnerable tribal group Garasiya Bhil Korku Koraga Jenu Khurba Kothodi Sahariya governance Panchayati Raj	1	0	0	t	uploads/logos/alternative_politics.png	f		f	0	2014-02-21 09:14:28.240901+00	2014-03-07 05:03:57.17575+00
2	Can an adivasi community save the forests and wildlife they live amidst? According to the sentiments echoed by about 160 Soliga adivasis, the answer is a resounding yes. Biligiri Rangaswamy Temple Wildlife Sanctuary is part of an ecologically critical landscape in the meeting point of the Western and Eastern Ghats, known for its plant and animal diversity, including elephant, tiger, and gaur. Soligas have resided in the area for several centuries.	Conservation through democratic governance 	\N	56	<p><a href="/static/media/uploads/Stories_PDFs/2011_conservation_through_democratic_governance.pdf" target="_blank"><strong><img height="372" src="/static/media/uploads/alternativePolitics/brt_cfr_title_distribution,_oct_2011,_photographer_unknown.png" style="vertical-align: top; margin-left: auto; margin-right: auto;" width="560"></strong></a></p>\n<p><a href="/static/media/uploads/Stories_PDFs/2011_conservation_through_democratic_governance.pdf" target="_blank"><strong>This article</strong></a> (written in August 2011) is about a community governance plan devised by Soliga adivasis in Biligiri Rangaswamy Temple Wildlife Sanctuary for conservation and management of their forests. The plan is to have a three-tiered structure of governance and have a landscape level approach to conservation.</p>\n<p><strong>Update</strong>: Since then, several villages have rceived recognition of their community forest rights in October 2011, several more have filed claims for recognition under the Forest Rights Act. However, the plan has not yet been implemented as the community is waiting for all the villages to receive recognition of their rights.</p>	\N	2014-02-25 05:30:34+00	3	conservation-through-democratic-governance	0	Soligas BRT Biligiri Rangaswamy Temple adivasis Karnataka governance	1	0	0	t	uploads/alternativePolitics/brt_cfr2.png	f		t	0	2014-02-25 05:55:42.37771+00	2014-03-07 05:04:58.255767+00
2	India boasts of a huge variety of languages and dialects. Many of these languages do not have scripts of their own. In fact many of them are on the brink of fading away into oblivion owing to the trend of people migrating to modern cities and hence newer cultures. However, a small academy in Gujarat is standing tall to save these languages from dying.  Anand Giridharadas writes in this article on how the Adivasi Academy, based in Tejgadh, Gujarat, is working towards chronicling elements of rural culture.	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	\N	68	<blockquote>\n<p>India boasts of a huge variety of languages and dialects. Many of these languages do not have scripts of their own. In fact many of them are on the brink of fading away into oblivion owing to the trend of people migrating to modern cities and hence newer cultures. However, a small academy in Gujarat is standing tall to save these languages from dying.  Anand Giridharadas writes in this article on how the Adivasi Academy, based in Tejgadh, Gujarat, is working towards chronicling elements of rural culture.</p>\n</blockquote>\n<p> <img src="/static/media/uploads/LearningandEducation/adivasi1.jpg" style="float: left; margin: 5px;"><strong></strong></p>\n<p><strong><br></strong></p>\n<p><strong>Back to roots:</strong> Folklorist Bhagwandas Patel (right) has a discussion with students at the Adivasi Academy in Tejgadh. The aim of the academy is to impress upon Adivasis that their culture is worthy of preservation<br> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p><strong>Tejgadh, Gujarat:</strong> In an academy deep in the agrarian countryside of western India, five students were writing briskly in ruled notebooks. They were in their early 20s and newly enrolled, but there was no discounting the gravity of their assignment: When they are finished, the world will have five more documented languages.<br><br>One word at a time, they are producing dictionaries of languages with which they grew up, but which scarcely exist in the rest of the world. These are oral languages, whose sounds have perhaps never before been reproduced in ink.</p>\n<p> </p>\n<p><img height="266" src="/static/media/uploads/LearningandEducation/adivasi2.jpg" style="float: right; margin-left: 5px; margin-right: 5px;" width="400">“If we make this, those who come after us will profit from it,” said Kantilal Mahala, 21, taking a brief respite from his work on the Kunkna language. “In my village, people who move ahead speak only Gujarati. They feel ashamed of our language.”</p>\n<p>It is not only obscure languages that these students are trying to chronicle and preserve, but also cuisines, sartorial habits and other significant elements of rural culture. Like drivers heading downtown at rush hour, the students see everyone else going the other way. A swelling class of Indian aspirants from small towns and villages such as Tejgadh sees urban life and the English language as pathways to affluence, security and respect.</p>\n<p>Had it not been for Ganesh Devy, a former professor of English literature who founded the academy more than a decade ago, the young people in this rural community might have gone down that path. He created the school, known as the Adivasi Academy, with a burning question on his mind: Why do we wait for cultures to die to memorialize them?<br>“There is a continent of culture getting submerged, and that’s why I wanted to take the plunge,” Devy said.</p>\n<p>With financing from the Ford Foundation and other philanthropic groups, the Adivasi Academy tries to preserve a culture by steeping a new generation of villagers in their own quickly disappearing traditions.</p>\n<p>Tejgadh is home to one branch of India’s vast population of Adivasis, or “original people”. The Adivasis are highly fragmented, with nearly as many languages and cultures as there are clans. But there are common threads.</p>\n<p>The clans traditionally inhabited hilly or forested areas, where they lived nomadically, hunting and foraging. They are known for a respect for nature, for their bone-setters and shamans, for their worship of elephants and trees instead of abstract gods, for a love of art and for a lack of interest in material accumulation.</p>\n<p>Tejgadh is home to the Rathwa clan, famed for wall paintings. When a person falls ill, the Rathwas often invite a painter to come along with a shaman. As the painter decorates the walls, the shaman enters a trance and guides his brush strokes.</p>\n<p>In recent years some people in Tejgadh have become professional artists, one example of a deeper transformation. Modernity has been creeping into the villages, and young people have been pouring out. But they are unprepared. They grew up speaking a language no one recognizes beyond their village, and they are inexpert in Gujarati, Hindi and English, the languages of urban employment. In the cities, they find it difficult to escape the most menial jobs.</p>\n<p>Devy wanted to combat this gravitational force. Could Adivasis be persuaded to study their culture rather than shed it, and to stay in the villages rather than flee?</p>\n<p>In the academy’s museum, Adivasi culture is depicted as if it no longer existed. The exhibits feature kitchen implements, jars of Adivasi foods, hand-tossed pottery, jugs for home made liquor. If the idea was to explain Adivasis to outsiders, the museum might be in New Delhi. But the goal, instead, is to impress upon Adivasis that their culture is worthy of preservation.<br>“If a community has a strong sense of identity and a sense of pride in that identity, it wants to survive and thrive,” Devy said. “The new economy is important. The old culture is equally important.”</p>\n<p>The students making dictionaries were working in the academy’s principal course, called tribal studies. Students are generally taught in both Gujarati and Hindi, given the absence of books in their own languages.</p>\n<p>Vikesh Rathwa, 27, graduated two years ago and, like most of the academy’s alumni, chose to stay in the village and work for Bhasha, the academy’s parent organization.<br>“Before, I thought I would get a BA and MA and make a film,” he said.<br>Immersion in his heritage changed his mind.<br>“Coming here made me see my household life in a new way,” Rathwa said. Now, he is writing a book on Adivasi art and science. “We need to walk in step with our traditions,” he said, quickly adding, “and with technology, too.”<br><br>©2008/THE NEW YORK TIMES</p>\n<p><strong>Republished from:</strong>  <a href="http://www.livemint.com/Politics/XMtqNrzZVhGTZVtWQhpXiK/Rescuing-cultures-of-India-one-word-at-a-time.html" target="_blank">http://www.livemint.com/</a><br><strong>Original Title:</strong>  <a href="http://www.livemint.com/Politics/XMtqNrzZVhGTZVtWQhpXiK/Rescuing-cultures-of-India-one-word-at-a-time.html" target="_blank">Rescuing cultures of India, one word at a time</a></p>\n<p><strong>Also known as :</strong> Bhasha Tribal Academy</p>\n<p><strong>Website:</strong> <a href="http://www.adivasiacademy.org.in" target="_blank">http://www.adivasiacademy.org.in</a></p>\n<p>Links from the web on Adivasi Academy:</p>\n<p><a href="http://indiatogether.org/tribal/articles/bhasha.htm" target="_blank">Silent No More</a> by Supriya Kumar on indiatogether.org</p>\n<p><a href="http://www.youtube.com/watch?v=4qEOYWfbLdI" target="_blank">Adivasi Academy, Tejgadh, Gujarat, India</a>, video (5min)</p>	\N	2014-02-28 12:00:00+00	6	adivasi-academy-gujarat-rescuing-cultures-of-india-one-word-at-a-time	0	social issues society sacred empowerment education particularly vulnerable tribal group adivasis alternative learning conservation	1	0	0	t	uploads/01_sm_bhuj_setu_te_1670039f.jpg	f		t	0	2014-02-25 16:42:34.247164+00	2014-03-13 10:40:56.122721+00
1	The Pellipadugu (AP) Declaration on Food Sovereignty asserts that food security can only be met through Food Sovereignty and places before the State a series of demands.	The Pellipadugu (AP) Declaration on Food Sovereignty	\N	93	<p>This Declaration collectively visioned by the adivasi, dalit, shepherd, peasant, scientist and student communities who gathered between 28 and 30 Dec 2013 at the Food Sovereignty Summit held in the Adivasi Territories of East Godavari district, AP, asserts that food security can only be met through Food Sovereignty and places before the State a series of demands. It also condemns the recent attempts to take away their right to define their food systems. </p>\n<p><a href="/static/media/uploads/Stories_PDFs/the_pellipadugu_declaration_on_food_sovereignty.pdf" target="_blank"><strong>The Pellipadugu Declaration</strong></a></p>	\N	2014-03-10 05:01:22+00	3	the-pellipadugu-ap-declaration-on-food-sovereignty	0	seeds soil Traditional Knowledge market resources sovereignty PESA FRA INSIMP monoculture commons food	1	0	0	t	uploads/subway.jpg	f		t	0	2014-03-10 05:01:22.042957+00	2014-05-05 15:56:48.113228+00
2	"We decided to live in a house that would have a minimal ecological footprint so as to limit the damage to the environment. So we designed a house that had waste treatment and recycling and recharge and energy saving properties...", says Rahul Banerjee	Decentralised Water and Energy Conservation in Urban Setting	\N	92	<div dir="ltr">The major problem in the urban context from the point of view of groundwater is its contamination due to release of untreated sewage into the ground and its exhaustion due toexcessive withdrawal. A very good solution to this problem is decentralised treatment and reuseand recharge of both grey and black water so as to both do away with the problem of untreatedsewage and also increase the availability of groundwater. <a href="http://www.scribd.com/doc/119188507/DGVK-ToI-Water-Article" target="_blank"><strong>Read on</strong></a> to find out how Rahul Banerjee helped find a solution.(or<strong><a href="/static/media/uploads/Settlement%20and%20Transportation/toi_article_on_house_reusing_water_indore.jpg" target="_blank"> here</a>)</strong></div>\n<div dir="ltr">You can also watch how this has worked <a href="http://www.youtube.com/watch?v=51cv_zO2brk" target="_blank"><strong>here</strong></a> (Resources)</div>\n<div dir="ltr">Contact:Rahul Banerjee</div>\n<div dir="ltr">\n<div dir="ltr">74, Krishnodayanagar, Khandwanaka</div>\n<div dir="ltr">Indore-</div>\n<div dir="ltr">452001</div>\n<div dir="ltr">cell no;+919425943023</div>\n<div dir="ltr"><a href="http://www.rahulbanerjee.notlong.com">webpage</a>:</div>\n<div dir="ltr"><a href="http://www.anarkali.blogspot.com">Blog</a></div>\n<div dir="ltr"></div>\n</div>	\N	2014-03-07 04:16:53+00	3	decentralised-water-and-energy-conservation-in-urban-setting	1	Dhas Gramin vikas Kendra Rahul Banerjee aerator recharge hand-pump	1	0	0	t	uploads/livelihood_2.png	f		t	0	2014-03-07 04:16:53.684076+00	2014-05-05 15:57:29.160882+00
2	This seminar is an attempt at bringing together policymakers, researchers and practitioners not only to reframe questions but also to think of novel solutions for sustainability in the areas of agriculture, human habitats and customary law in contrast to the modern legal framework. 	National Conference on Technology, Policy and Community: Small Experiments in Sustainability	\N	85	<p>Knowledge accumulated by communities over generations in the areas of agriculture, water harvesting methods and uses of water which seem to be based on notions of sustainability have been attracting increased attention. However, the communities seem to be faced with the challenges posed by state policies which are based on notions of  scalability and administrative and bureaucratic control wherein the focus is on one policy  for all areas as against the knowledge of small communities which is unique to specific areas. <br> <br> Given a third world context such as India's, there is an increased need to address the attempts of communities in negotiating challenges put forth by policies on environmental issues. Concerns of International agencies and advanced countries which tend to drive research agendas of the developing countries do not necessarily reflect either the problems or the processes faced by such communities. This has resulted in increased and visible tensions between community's knowledge and resources and the dominant knowledge systems promoted by the state. <br> <br> This seminar is an attempt at bringing together policymakers, researchers and practitioners not only to reframe questions but also to think of novel solutions for sustainability in the areas of agriculture, human habitats and customary law in contrast to the modern legal framework. <br> <br> Panels with eminent academicians, civil society activists and policy makers would be constituted and will be held before each of the thematic sessions. <br> <br> <strong>Call for Papers</strong>:<br> <br> Proposals for paper presentations / workshops related to the theme of the conference are invited. Papers should be original and unpublished. A 300 word abstract should be submitted before March 5th 2014. Upon confirmation <br> a full paper of not more than 3000 words in MLA format should be emailed to <a href="mailto:tpcbits2014@gmail.com" target="_blank">tpcbits2014@gmail.com</a> before March 10th 2014. Select papers will be compiled and published in an edited volume. <br> <br> <b>Important Dates</b> <br> <br> Abstract Submission     05 March 2014 <br> <br> Abstract Acceptance     06 March 2014 <br> <br> Registration fee             10 March 2014 <br> <br> Full Paper Submission  10 March 2014 <br> <br> <b>Note</b> <br> <br> 1. For any further information about the conference, please mail to <br> <a href="mailto:tpcbits2014@gmail.com" target="_blank">tpcbits2014@gmail.com</a> <br> <br> 2. Kindly do not submit registration form until abstract has been confirmed. <br> <br> 3: Further Details: <a href="http://sites.bits-hyderabad.ac.in/tpc2014/index.php" target="_blank">http://sites.bits-hyderabad.<wbr></wbr>ac.in/tpc2014/index.php</a></p>	\N	2014-03-02 05:51:40+00	3	national-conference-on-technology-policy-and-community-small-experiments-in-sustainability	0		1	0	0	t	uploads/screen_shot_2013-12-17_at_9.18.48_am.png	f		t	0	2014-03-02 05:51:40.655476+00	2014-05-05 15:58:54.015232+00
2	With its firm belief in ‘Learning by Doing’, Vigyan Ashram at Pabal, Maharashtra has, over past 3 decades, transformed the lives of hundreds of rural youth who the mainstream education system might have rejected as ‘failures’. A modern version of the Gurukula system, “Vigyan” means ‘Search of Truth’ and “Ashram” symbolises ‘simple living and high thinking”.	Vigyan Ashram, Pabal, Pune 	\N	76	<blockquote>\n<p>With its firm belief in ‘Learning by Doing’, Vigyan Ashram at Pabal, Maharashtra has, over past 3 decades, transformed the lives of hundreds of rural youth who the mainstream education system might have rejected as ‘failures’. A modern version of the Gurukula system, “Vigyan” means ‘Search of Truth’ and “Ashram” symbolises ‘simple living and high thinking”.</p>\n</blockquote>\n<p></p>\n<p><img height="150" src="/static/media/uploads/LearningandEducation/vigyanashram1.jpg" style="float: right; margin-left: 5px; margin-right: 5px;" width="200">Dr. S S Kalbag has devoted 20 years of his life to educating the rural youngster. His education is of a different kind, eliminating the formal structure of a classroom, blackboard and books, and incorporating the wisdom of life, experience, and hands-on work. He regards science to be sacred and the inculcation of a scientific temperament to be a holy quest. The recipient of the 1996 Jamnalal Bajaj Award for services to the rural community, 74-year-old Kalbag gave up a lucrative career to pursue his vision of education  an education that would enhance the life of a village child and ensure against his migration to the city. In all these years of pursuit of his mission, he has been blessed with the unstinting support of his wife Mira.</p>\n<p>Kalbag grew up in an engineering environment and it was back then in his childhood itself that he picked up his yen for tinkering with tools. His father migrated to Mumbai in 1903 and set up his home in near wilderness. He had to install his own water and power connections and take care of the sanitation works, etc. As Kalbag helped his father with all these chores, he developed a natural liking to do things with his own hands. He even had a laboratory set up at home, where he experimented with all kinds of devices. This passion for engineering continued all through his life, and more than that, it gave him a different perspective of how learning and education should be.</p>\n<p>"I benefited from the way I learned things  by actually doing them. This was not something I learned in school. Later on, when I looked back at my childhood, I realised how incongruous our education system was, and I felt I must pass on to others my way of hands-on education, says Kalbag. While this lingered in the back of his mind, he went on to obtain B. Tech and an M. Tech degrees in Mumbai, before proceeding to the University of Illinois, Urbana for his doctorate in Food Technology. He returned to India and took up his first job at the Central Food Technological Research Institute, Mysore.</p>\n<p>I was 27 then. I decided that for 27 years, I had been a student, and so, another 27 years I would give to be a householder (Grihasthashram). Then I shall enter the phase of Vanaprasthashram and devote the rest of my life to the service of mankind, he says, explaining his philosophy.</p>\n<p>He married Mira, joined Hindustan Lever Ltd and rose to become the head of the Engineering Division. All along, he was firming up on his plans to work in the field of education. His premise that working with the hand stimulates the intellect received statistical backing by a survey he conducted among the street urchins in Mumbai under the aegis of the Homi Bhabha Centre for Science Education, TIFR. The kids were smart and could manage a range of tasks efficiently, yet they did not do well in the schools they attended, because the syllabus did not match their skills. I thought the way they learned things  from life itself  was the right way. But of course, the syllabus in the corporation-run schools would not change to accommodate my views. That was when someone suggested I should meet J P Naik and Chitra Naik of the Indian Institute of Education, Pune, he says.</p>\n<p>On discussing with the Naiks their philosophy of education, Kalbag realised he had found a partner in thinking. In 1981, he and Mira visited the night schools run by the IIE in five different areas. They were also on the lookout of a place to set base and begin their work. Eventually they narrowed in on Pabal, off the Pune-Ahmednagar highway. The place was drought-prone, like many parts of India outside the monsoon season. Kalbag wanted a place that was away from any major city and Pabal, ideally, was away from the highway and would not easily become a suburb of Pune. Trekking through the villages around Pabal for seven days, he gauged the response of the local residents to his ideas of education. He finally decided he had found his place and submitted a formal project to the Department of Science and Technology in 1981. Work in Vigyan Ashram commenced in January 1983.</p>\n<p>The beginning was simple - imparting multi-skill training, developing a problem-solving attitude, and stimulating the intellect. The education system as we know it today, Kalbag concluded, is inefficient. It teaches very little. For example, a child of two has learned at least one language by herself, effortlessly. In 10 years of schooling, how many more languages does she pick up? He points out that nearly 90% of children enrolling in primary schools do not cross the matriculation level. We may be led to assume that this is the percentage of duds in our systems. Yet, it is these very dropouts who build our houses, repair our cars, run most of the sma industries, farm the lands. How do they manage to do so much?</p>\n<p align="center"><img src="/static/media/uploads/LearningandEducation/vigyanashram13.jpg"> </p>\n<p>"I call this the natural system of learning as learning while doing work in real life situations'", elaborates the new-age teacher. The aim of Vigyan Ashram is to identify the core of this system and graft it into our existing educational patterns to make it equally efficient. Consequently, Kalbag and his team of like-minded individuals developed a system called Rural Development through Education System (RDES).</p>\n<p>This is mainly education through development work - giving paid services to the community and using this as a means of education that imparts hands-on training in all skills relevant to rural areas. The RDES exists in both a formal mode (8-10th standards in schools) as well as in a non-formal mode as a one year course targetted at school dropouts (post 8th standard). The formal course is recognised by the State Education Board for SSC (Maharashtra) and there are about 20 schools implementing this in different parts of the state. The course for dropouts (post 8th standard) helps the students learn in real life situations in the areas of Home-Health, Agriculture-Animal Husbandry, Engineering and Energy-Enviroment. Necessary theoretical briefing is also included. Students also earn by taking jobs on contract. The course is fully residential and awards a diploma from the National Institute of Open Schooling, (MHRD, Delhi)</p>\n<p align="right"><img height="276" src="/static/media/uploads/LearningandEducation/vigyanashram2.jpg" style="float: right; margin-left: 5px; margin-right: 5px;" width="350"></p>\n<p>The Ashram's campus, built by staff and students themselves, includes dome houses, a mini tractor, and water-prospecting machines. It encompasses Kalbag’s vision of a 21st century school being a group o self-supporting industries that provide hands-on experiences to students, while they are absorbing theoretical information through self study using computers and the Internet. All this happens under the supervision of a Guru who looks after the value system in all the life transaction. "We want our students to start their own enterprises in their villags and thus reduce the migration to cities. There are many who have done that and are running their industries successfully. But these are not my success stories, they are their own. My success story will be when the system runs without me", insists the 74-year-old man.</p>\n<p>The Ashram also embodies the basic tenet that Kalbag and Mira follow in their personal lives - high thinking and simple living. Llife here is hard; water is scarce, power erratic. But it is rich with the satisfaction of having learned to do things with one’s own hands, and armed with the knowledge this education will actually bring in a livelihood as well.</p>\n<p><b>NOTE:  </b>Dr. Kalbag passed away in the year 2003. </p>\n<p><b>Website: </b><a href="http://vigyanashram.com/" target="_blank">http://vigyanashram.com</a></p>\n<p><b>Reprinted from: </b>http://www.indiatogether.org</p>\n<p><b>Original Title:  <a href="http://indiatogether.org/kalbag-education" target="_blank">Rural development through education</a></b></p>\n<p>Links from the web on Vigyan Ashram:</p>\n<p><a href="http://www.youtube.com/watch?v=tYARqEp0Nbg" target="_blank">Development through Education</a>, video (50min), English</p>\n<p><a href="http://www.youtube.com/watch?v=fsZsy_72A5I" target="_blank">Vigyan Ashram Documentary</a>, video, (9min x 6 parts), Marathi</p>\n<p></p>\n<p><b><br></b></p>	\N	2014-02-28 10:25:03+00	6	vigyan-ashram-pabal-pune	0	Barefoot college learning education dropouts hands on alternative education alternative learning	1	0	0	t		f		t	0	2014-02-26 18:58:01.543011+00	2014-03-13 10:42:41.065694+00
2	Chief Minister V.S. Achuthanandan, on Monday, officially announced the Kerala State Organic Farming policy aimed at making farming sustainable and ensuring toxin-free food to public within 10 years.	Kerala Organic Farming Policy announced	\N	91	<div dir="ltr">Repeated use of pesticides resulted in pollution of water bodies and soil as well asdestruction of flora and fauna. Consumption of chemically treated vegetables and food grains had even led to pesticide residual in breast milk, so Chief Minister V.S. Achuthanandan, officially announced the Kerala State Organic Farming policy aimed at making farming sustainable and ensuring toxin-freefood to public within 10 years.....<a href="/static/media/uploads/Stories_PDFs/kerala_organic_farming_policy_announced,_hindu,_18.5.2010.pdf" target="_blank">Read On</a></div>\n<p><em>First Published in The Hindu, on 18/05/2010</em></p>	\N	2014-03-07 03:19:16+00	3	kerala-organic-farming-policy-announced	2	sustainable toxin-free organic farming Kerala	1	0	0	t	uploads/new-rice-every-day.jpg	f		t	0	2014-03-07 03:23:13.586765+00	2014-05-05 15:57:47.613072+00
2	Decentralising ration procurement in Odisha’s anganwadis has yielded better results	Decentralising ration procurement in Odisha’s anganwadis	\N	90	<p>Following the Rs. 700 crore pulses scam in Odisha in January 2011, the State government decided to decentralise the procurement of all the items in the supplementary nutrition programme (SNP) under the Integrated Child Development Scheme (ICDS) and the Mid Day Meal programme in schools, with the exception of rice which is supplied by the Food Corporation of India.</p>\n<p>Two years since, the decision has brought colours in the villages. <a href="/static/media/uploads/Stories_PDFs/localgrainprocurement_thehindu05-04-2013.pdf" target="_blank"><strong>Read On</strong></a></p>\n<p>Original title: Towards upping the ante<br>First Published in The Hindu on April 5, 2013</p>	\N	2014-03-06 16:56:30+00	3	decentralising-ration-procurement-in-odishas-anganwadis	1	SNP ICDS WCD THR take home ration Odisha anganwadi supplementary nutrition programme SNP Mid Day Meal	1	0	0	t	uploads/village-of-water-birds.jpg	f		t	0	2014-03-06 17:00:33.120764+00	2014-04-04 09:44:02.666889+00
2	....the story of R Elango, a Dalit leader turning his village into a Model village in India	Ignited Minds: Elango turns Kuthambakkam village as a model village	\N	87	<p><img height="211" src="/static/media/uploads/alternativePolitics/elango2.png" style="float: left; margin: 3px;" width="259"></p>\n<p></p>\n<p></p>\n<p>Mahatma Gandhi said that india lived in villages. he wanted villages to be developed. While everybody talks on every platform, nobody takes the serious initiative.</p>\n<p>Corpezine, the magazine that spreads positive vibrations shares one such story of a Dalit, <a href="/static/media/uploads/alternativePolitics/kuthambakkam_story_presense_aug_2012.pdf" target="_blank"><strong>R Elango</strong></a>, who turned his village in to Model Village in India</p>\n<p>First Published in PreSense, Issue no. 65, August 2012</p>\n<p> Hear him<a href="https://www.youtube.com/watch?v=oSzWOkrLeIo"> talk about his work</a> at the 4th NCSE seminar</p>	\N	2014-03-02 06:22:53+00	3	ignited-minds-elango-turns-kuthambakkam-village-as-a-model-village	0	Panchayat Raj housing transparency Panchayat Academy employment education	1	0	0	t	uploads/governance_1600x900.jpg	f		t	0	2014-03-02 07:08:46.091323+00	2014-03-13 10:33:33.231664+00
2	Where human actions do not threaten the earth or other species. 	Ecological sustainability	\N	35	<p>Where human actions do not threaten the earth or other species. </p>	\N	2014-02-20 07:26:45+00	1	ecological-sustainability	0		1	0	0	f	uploads/blog/carousel2.jpg	f		t	0	2014-02-20 07:27:11.664482+00	2014-03-13 10:44:32.114549+00
2	The recent economic crises and the powercut affecting huge swathes of South India, both point to the need to localise the economy at least for basic needs.ere are some stories related to Mendha Lekha village in Gadchiroli district of Maharashtra	Localise to save the world! Lessons from Mendha Lekha	\N	28	<p><img src="/static/media/uploads/AlternativeEconomies/mendha_meeting_-_vgb.png" style="vertical-align: top; margin-left: auto; margin-right: auto;"></p>\n<p>Why should the world watch with increasing trepidation, the impending default of the United States’ debt payments? If a global economic meltdown worse than in 2008 stares at us, we should be asking some serious questions about the form of globalisation that has made us so vulnerable.</p>\n<p>And what is common between this and the recent threatened power breakdown in south India resulting from the Telangana agitation?</p>\n<p>Both these, and a number of other periodic crises we face, are related to the increasing intermeshing of global and national economies and infrastructure. Whether it is the centralised grid of electrical power in India, or the grid of financial power across the world, the last few decades have seen an intensification of potentially paralysing economic interdependence rather than genuine cultural exchange.</p>\n<p>If we want to save ourselves from such periodic shocks, we need to reverse this form of globalisation and centralisation. Why should we suffer economic woes if the Republicans and Democrats in America can’t get their act together? Why should most of Andhra Pradesh’s residents have to tolerate crippling power cuts because some folks want Telangana and others don’t?</p>\n<p>During the 2008 global economic crisis, our prime minister proudly spoke about how we were ‘buffered’ because our economy was not fully globally integrated.</p>\n<p>Ironical, considering that since the  ‘economic reforms’ he ushered in as the finance minister in 1991, he and his colleagues have stressed global integration being essential to India’s development. The buffering argument was anyway blown to bits by the way the rupee recently reacted to international forces. Globalisation was supposed to deliver us from poverty and unemployment, but it is only exposing us the vagaries of global forces over which we have little control.</p>\n<p>The Andhra Pradesh blackout was a similar phenomenon. Electricity development has concentrated on centralised grids, fed by big and super-big coal and hydro projects. A single connection tripping can trigger a vast blackout, with catastrophic socio-economic impacts. The frequent, often unannounced power cuts badly affecting small towns and parts of big cities, are also part of this ‘dependence-creating centralisation’ phenomenon.</p>\n<p>There is an alternative way of doing things. The localisation of economies and polities, of production and consumption chains, could not only reduce such vulnerability, but actually deliver socio-economic security.</p>\n<p>This is not to argue for an isolationist approach, but rather for the core principle that for basic needs, the local must be prioritised. This includes food, water, energy, shelter, clothing, sanitation, education, health, economic exchanges, and aesthetics. Over and above this, cultural and material exchanges that enrich our lives should be encouraged as part of a more meaningful globalisation. This should include reducing the visa restrictions that have been imposed even as finance travels across countries without hindrance.</p>\n<p>Localisation is also not an argument for tolerating social injustice related to caste, gender, class, and ethnicity. There are several examples where communities have taken control over their lives, but also retained touch with the outside world, learning from it and giving back in return.</p>\n<p>They have also challenged local inequalities. Dalit leader R Elango has pioneered local manufacture-based employment in his village of Kuthambakkam near Chennai, mobilised Dalits against upper-caste discrimination, and encouraged mixed caste housing.</p>\n<p>Adivasis in Gadchiroli district of Maharashtra such as those of Mendha-Lekha have taken control over their forests, earning substantial incomes to put into village reconstruction, and can hold their own on national and international platforms. Dalit women comprising the Deccan Development Society in Andhra Pradesh have achieved food sovereignty and nutritional security, and a dramatic transformation in their status as women and Dalits, vis-à-vis previously exploitative upper-castes and men.</p>\n<p>They run their own public distribution system (PDS), community radio, school and film-making unit. Hundreds of villages in the driest parts of India in Rajasthan and Gujarat have innovated to achieve localised water security, without megadams having to transport water long distances to them.</p>\n<p>Several dozen farmers or craftsperson producer companies are trying to take back collective control over production and marketing. Citizens in Pune, Bengaluru, Bhuj, and elsewhere are trying to be central voices in budgeting and decision-making so as to push for more sustainable cities.</p>\n<p>In the face of the dominant system, these initiatives remain small and scattered. With appropriate facilitation and policies, they can be transformed into widespread phenomena.</p>\n<p>For instance, localisation of the PDS with appropriate governance checks could provide enormous incentives to farmers for sustainable, remunerative farming, offer local consumers safe and nutritious food, and help check foodgrain loss and corruption.</p>\n<p>A policy to prioritise decentralised renewable energy, currently being considered by the Bihar government, could reach secure and affordable power to hundreds of millions of people in a relatively short time, and eliminate dependence on central grids.</p>\n<p>The official policy of ‘communitisation’ of health, education, and power services in Nagaland, by which village councils get greater control over relevant budgets, has shown remarkable improvements these services. Jharcraft in Jharkhand has enhanced livelihoods of 2.5 lakh families through village-based production, in just six years.</p>\n<p>Similar initiatives around the world can provide crucial lessons. This includes large networks of non-monetised exchanges and local currencies that delink from the dominant monetised system, the European ‘degrowth’ movement questioning over-consumption of resources, transition towns in the UK moving towards carbon neutrality, and thousands of community councils in Venezuela’s experiment with radical democracy that is even demanding a transformation of the state.</p>\n<p>Indigenous peoples in some South American countries are putting forward alternative visions of buen vivir and sumak kawsay or good living, challenging the notion that only material accumulation gives us happiness. There is of course a long way to go for these to become a comprehensive enough reality to challenge macro-political and economic structures.</p>\n<p>But they demonstrate the potential of a more sustainable and equitable world, one that does not catch a cold when the US sneezes.</p>	\N	2014-02-14 06:14:56+00	3	localise-to-save-the-world-lessons-from-mendha-lekha	2	Mendha-Lekha globalisation	1	0	0	t	uploads/homestay-with-difference.jpg	f		t	0	2014-02-14 06:34:32.571907+00	2014-04-04 10:44:54.027726+00
2	Syamantak’s "School without walls" is a center for experiential learning at Dhamapur village in Sindhudurg district of Maharashtra, India. Inspired by Dr.Srinath Kalbag, a scientist turned educationist, we formulated a residential commune of students. A process of organic learning run by the students for the students. 	School Without Walls, Syamantak, Sindhudurg, Maharashtra	\N	18	<p>I was doing well at Baskin Robbins, the world’s leading U.S.-based ice cream company.  Lucrative offers to work abroad were on the horizon, and I was looking forward to an appropriate break. Then, my college friend approached me with an innovative business idea around multimedia computers and educational software. They would make complex lessons simple and enjoyable. Being a back- bencher in school, I was fascinated by this concept. I decided to quit my job. We operated our business from a posh Mumbai locality and had one of the best schools in the city as our client.</p>\n<p>During this period my grandfather insisted  I meet Dr. Kalbag, a scientist turned  educationist, and see his experiments  with Vigyan Ashram. I was not keen to  travel all the way to the remote village of  Pabal to visit an unfamiliar person. When  I finally met Dr. Kalbag, it was hard to believe that someone would migrate from a posh bungalow in Juhu to a barren land in a village. I never knew this was going to be a turning point in my life.</p>\n<p>I was inspired by Dr. Kalbag’s vision so I started concentrating more on schools in remote areas. I learned a lot during my travels in the tribal areas. Having escaped ‘education’ and ‘development,’ they are still original and authentic, holding on to their culture and world-view, which has sustained them for centuries.</p>\n<p>Around the same time, I met Minal, my wife. We shared common thinking and values, and she joined me in the business. Overall business was flourishing, however, it was an extremely frustrating experience. We found ourselves dealing with money-hungry school managers and stubborn teachers who didn’t have the self- determination to transform themselves. We were continually negotiating with our business ethics. What was the value of this build-a-business-at-any-cost kind of life? Finally, Minal and I decided to quit.</p>\n<p>We were convinced that despite of all the glitter, the five-star hotels, malls, consumerist hospitals and schools, the culture of India is still in rural areas. In days of yore, excellent architects, super human minds, amazing space walkers, all lived in villages and forests. None of the great of that time had to leave and go to foreign countries or cities for ‘higher education’. If our soul resides in the soil, then our education ought to be related to Mother Earth.</p>\n<p>We decided to migrate to our ancestoral village in the region of Konkan. My great-grandfather migrated from this village to Kolhapur town to join Rajaram College as professor of mathematics. Since then our house was lying idle. The move was a very ‘irrational’ decision. While not absolutely clear about what we were going to do, Minal and I read more on K.J. Baby’s Kanavu non- formal school and Bunker Roy’s Barefoot College, as well as J. Krishnamurthi’s and Gandhi’s ideas on education</p>\n<p>We converted our 80-year old abandoned ancestral house into a school that would provide real education. Instead of lectures in closed classrooms, we would help children learn through observation, by making mistakes and experiencing responsibility. Two youth from a local orphanage initially joined us for this experiment.</p>\n<p><img height="225" src="/static/media/uploads/LearningandEducation/milking_padma.jpg" style="float: right;" width="400">‘School without Walls’ came together by questioning, experimenting and exploring. Our daily life problems became our curriculum to learn. It slowly developed into a school for the students, of the students and by the students. Today, our daughter, Mrunalini, is no longer going to school. She is grooming herself wonderfully in this natural learning system.</p>\n<p>To nurture the spirit of entrepreneurship and self-reliance among ourselves and our ex-students, the concept of ‘Incubation - A Resource Center’ has emerged. We are producing vermi-wash/vermi-compost on a industrial scale. We are now planning to start a bakery unit, organic fast food center, and soil brick production.</p>\n<p>"School Without Walls", may appear to others as vocational education, but is not. What we are aiming at is not vocational education, but education using real life activities as a medium. Our emphasis is on learning while doing in real life. We believe that working with your hands is what teaches you best. Our education is related to our Mother Earth and we believe that nobody should be forced to leave his village for bread, butter or education.</p>\n<p>Over the years, I have learnt that money is not an end in itself. You should try to do what you like best of all.</p>\n<p>Minal and I feel content these days. Finally, what our conscience tells us, and what we actually do in our daily lives, is converging.</p>\n<p><b>Website:  </b><a href="http://syamantak.cfsites.org/">http://syamantak.cfsites.org/</a></p>\n<p><b>Reprinted from</b>: Swapathgami Magazine</p>\n<p><b>Original Title:  </b>Walking out of Posh Dreams</p>	\N	2014-02-12 18:27:36+00	3	school-without-walls-symantak-sindhudurg-maharashtra	0	Maharashtra education alternative learning organic learning	1	0	0	t	uploads/village-of-water-birds.jpg	f		t	0	2014-02-12 13:00:28.711666+00	2014-03-13 10:34:16.872164+00
2	A low-tech online network connects traditional healers and patients in Bhopal	Healing a Tradition	\N	17	<p></p>\n<p><img alt="Bir Singh Padda (left) and another traditional healer plant herbs on the campus of C G Net Swara in Bhopal" height="301" src="http://www.downtoearth.org.in/dte/userfiles/images/20131231_19.jpg" style="vertical-align: text-top; margin: 3px;" title="Bir Singh Padda (left) and another traditional healer plant herbs on the campus of C G Net Swara in Bhopal (Photographs Courtesy: CG Net Swara)" width="457"></p>\n<p><em>Bir Singh Padda (left) and another traditional healer plant herbs on the campus of C G Net Swara in Bhopal (Photographs Courtesy: CG Net Swara)</em></p>\n<p>Baiga tribals have in-depth knowledge of herbal healing, says Vijay Chaurasia. “In fact, I learnt a treatment for asthma from a Baiga healer and have successfully treated hundreds of patients using the nuskha (indigenous remedy).” Coming from an allopathic physician, the statement means nothing but hard facts about traditional healing. Chaurasia, who runs a private clinic in Gadasarai village in Dindori district of Madhya Pradesh, says, “I used to wonder why very few Baiga people come to my clinic for treatment. I realised the reason after a Baiga healer cured my wife’s asthma.”</p>\n<p>Healing traditions of indigenous people have always been a thorny subject—many of their methods do not conform to modern science, there is no standardisation, and recognition is a messy affair. In the last week of September, some 50 traditional healers gathered at a meet organised by C G Net Swara, a citizens’ journalism initiative, in Bhopal to deliberate these issues.</p>\n<p>read about the <a href="http://www.downtoearth.org.in/content/healing-tradition">baigas' healing traditions</a></p>	\N	2014-02-12 11:59:34+00	3	swasthya-swara-traditional-healing-through-on-line-network-accessed-through-cell-phones	0	Chhattisgarh Net-based healthcare healing practices Medical Systems Medicinal Plants Traditional Knowledge Tribals Shubhranshu Choudhary	1	0	0	t	uploads/blog/renewable-energy.jpg	f		t	0	2014-02-12 06:34:01.187753+00	2014-03-13 10:34:37.705695+00
2	An ethnography of an alternative school/commune, Kanavu in Wayanadu district of Kerala. It explores the diverse learning spaces and methodologies that have been incorporated into its system, where learning happens for children who participate. Kanavu is today facing several challenges as they have begun a new phase of handing the management over to the older students (now adults) who have graduated.	Kanavu, Kerala : Where Learning Happens	\N	71	<blockquote>\n<p>An ethnography of an alternative school/commune, Kanavu in Wayanadu district of Kerala. It explores the diverse learning spaces and methodologies that have been incorporated into its system, where learning happens for children who participate. Kanavu is today facing several challenges as they have begun a new phase of handing the management over to the older students (now adults) who have graduated.</p>\n</blockquote>\n<p align="center"><img height="314" src="/static/media/uploads/LearningandEducation/kanavu1.jpg" width="427"></p>\n<p>Many alternative visions of schooling have emerged in our country. Kanavu in the Cheengode village of Wayanadu district of Kerala is one such exploration. More than a school it is a commune – a way of collective living, where learning happens at its natural phase. Many writers/philosophers as Tolstoy, Tagore and Krishnamurthi have pondered on and experimented with the school system, but what makes Kanavu different?</p>\n<p></p>\n<p>Kanavu is a bold initiative of K J Baby, a dramatist and writer. His play <i>Nattugadhika </i>tells the story of resistance by tribal groups against the dominance of colonial masters and feudal lords. ‘Nattugadhika’ in itself is the ritual of cleansing a village of evil spirits; in its dramatic form it demonstrates the need for tribal social/cultural lives to be purified of evil spirits/influence of the colonial masters and lords. His novel <i>Mavelimantram </i>deconstructs the folklores of a tribal group, along with a court judgment on the sale of tribal youth, by one feudal master to another, to tell the story of how tribes have been colonised in every possible manner.</p>\n<p> </p>\n<p>Kanavu at present has nearly 40 children of all age groups up to 17. One could probably summarise an ordinary day as one that begins with the recital of classical ragas and ends with a dance to the beat of the ‘thudi’ (a tribal drum). It is probably this blend of folk with classical that makes the atmosphere at Kanavu different.</p>\n<p> </p>\n<p>Every night before children go to sleep, they evaluate the day’s activities. These would include the following items: (i) performance at the kalari (ground in which the traditional martial art of Kerala is performed) with different weapons including the sword; (ii) at the kitchen where the day’ s ‘kanji’ or tapioca is cooked; (iii) with cows in the forest or cleaning its stable; (iv) in the fields to harvest the rice; (v) theatre activities; (vi) retelling stories; (vii) colours they have played with on paper; (viii) butterflies that were observed; (ix) working at the tailoring machine; (x) pushing up the jeep in the early morning; (xi) plants they cared for; (xii) younger ones to look after.</p>\n<p> </p>\n<p>Kanavu began when the writer K J Baby, and members of his drama group felt disenchanted with the schooling system. Most of the senior students themselves are children of the drama group members. Children saw their parents involved in theatre and music. This writer himself had become disenchanted with the competitive nature of social-school life.</p>\n<p> </p>\n<p>One remarkable dialogue in the drama <i>Nadugadhika </i>is about schooling – the ‘Gadhikakaran’ (sutradar) tells the tribal chieftain:</p>\n<p>There, there in the streets, his school days over, he is trying to impress upon himself all the psuedo characters, all those sham versions of history. Already it has been revealed unto him that all his miseries arise from the existence of his tribe, his people, if he remains there, he is sure to absorb those renderings of history depicting his people as useless, as traitors, and as unworthy of existence. Come, let us get him away. Let us bring him home. Let him realise miseries don’t end by running away from them [Baby 1996].</p>\n<p> </p>\n<p>While dreaming of an alternative, Baby recognised that it was amongst the tribals that collective living still seemed to endure. Modern schooling and society has destroyed elements of fraternity amongst human beings. He felt, probably the best way to enter into the lives of children could be through ‘thudi’ and ‘kuzhal’ (flute like musical instruments). Thus from the very beginning music and other art forms were given great importance.</p>\n<p align="center"><img src="/static/media/uploads/LearningandEducation/kanavu2.jpg"> </p>\n<p>A couple who live in the commune – the ‘kalari gurukkal’ (traditional martial art form of Kerala) and ‘Mohiniyattam’ (a dance form of Kerala) teacher have instructed the senior children for nearly six years. At the kalari, few have also picked up the ayurvedic massaging techniques. Kanavu has given great importance to the learning of music, dance, theatre, martial arts, painting, etc. Every child in the group has mastered a musical instrument. Most of them also practise pottery. The senior group of students at Kanavu has gone outside the campus to be trained in learning terracotta and sculpture. Few of them are also learning auto mechanics, etc. Even as they stay outside the Kanavu campus, they continue to practise activities learnt there. These skills have also become a major source of income for the group. Children demonstrate their skills across the state during religious festivals, school or college campus festivals, or at the anniversaries of various arts and sports clubs across the state. The collective is thus able to partially sustain itself to a large extent. Apart from its stage performances, they produce almost 70 per cent of their food requirements in their own organic farm and sustain themselves by other voluntary contributions or services. There are many ways of looking at this institution. Many see it as having adopted a gurukul education pattern. Few others see it as part of the home schooling movement that is critical of mainstream education system. As an institution, they have adopted the philosophy of education as a liberative principle. One really feels these children moving towards developing a holistic personality that is sensitive to the issues of wider social life.</p>\n<p> </p>\n<h4>Where Does Learning Take Place?</h4>\n<p>Looking out for a specific classroom in the campus seems to be a difficult task because children appear to learn from every space – the paddy field, the pottery shed, the library, the kitchen, the cow shed, the kalari hall. Campus/learning space extends to the neighbourhood, for example the stream – where they learn to swim, under- stand how the working of a turbine can light a 40watt bulb, and how to make bamboo bridges. The forest also teaches the immense knowledge of green earth, their own histories, wildlife. Learning space further extends to far-off and distant places, to Edakkal – the oldest cave dwelling evidence in Kerala with carved geometri- cal figures chipped in by the Jainmunis who stayed there in ancient times. Learning also includes studying the relics of Jain temple that tells the growth of agriculture in the region. The Mavoor movement, tells them of the perils of industrialisation. The state capital Thiruvananthapuram, where the adivasis had placed their demand for alienated land, teaches a way to recognise the power and authority of the state.</p>\n<p>Imbibing philosophy in every activity, that they have shared helps learning to take place; curricular and extra-curricular knowledge is not demarcated. Life skills are also part of the learning process. Yet, specifically for those of us who still look to the school as its ability to transact the three ‘R’ a brief description of the learning process at Kanavu could be helpful.</p>\n<p> </p>\n<p>Introduction in the three ‘R’ s are imparted in small groups. They spent four hours of a day learning it. Children form groups based on their language skills and the older children take classes. Older children guide the younger ones in picking up alphabets, rhymes, folktales, etc. Children at Kanavu are also mostly dropouts from the main-stream education. Most of them belong to tribal families; their own mother tongues ignored by mainstream schools. The language used in reading and writing is Malayalam. However, during the day or within the learning process they converse in the ‘new language’ that has emerged within the collective due to their living together. Great importance is given to aware- ness of their tribal past and knowledge.</p>\n<p> </p>\n<h4>Methods of Learning</h4>\n<p><em>Peer Group:</em> One incident that could describe where peer-group learning occurred is near the pond, on the steps to leading it. The pond has many water lilies. Very few people even in Kerala are actually able to distinguish between water lilies and lotus. Even fewer people would actually know of its mode of reproduction. A group of four children had come to clean the library close to the pond. One of the younger children started counting the flowers – suddenly he noted that there were two different colours, pink and blue. An older child explained that a few years ago there had even been white ones among them. “Actually, the white ones start showing up only after the water level has gone further down. It is difficult for white water lilies to survive.” The younger student naturally asked how the white ones grew. The older student explained, “We just implanted the leaves. Once the leaves rot away, it gives way to a sapling.”</p>\n<p>Another young student pointed to those small saplings just in the middle of a leaf, almost rotten. Then they recollected that the previous year they had eaten water lily seeds. The older child explained that unless they were weeded out every year it would be difficult for the plants to grow.</p>\n<p><i>Folk ways: </i>Myths, tales and folklores find a place in the curriculum. Children are proud of them. Their folksong collection is derived not merely from their own tribal past – even kabir bhajans and pahadi songs are part of their repertoire. One folk tale is about ‘Pakkom Kotta’ (the fort/prisonof Pakkom). The story is about the escape of their ancestor from Pakkom Kotta, where they were treated as slaves. They escaped from their feudal masters and wandered into the forest, where they believed that their gods and goddesses would protect them. But the feudal master was able to send his god against their gods and they were threatened. The ancestors were thus caught again and enslaved, even the existence of their gods were threatened by the feudal masters.</p>\n<p>Any boy from the paniya tribe is expected to be a master of ‘thudi’, other tribes master the skill of playing kuzhal. But if you ask the elders as to who taught them to play these instruments, they would just look blank. Or they would simply say that they had heard the ancestors play them. On many days you would find many children at Kanavu making their own pipes with a hay strip or a thudi out of bamboo to practise on their own.</p>\n<p>Myths and folk tales are not always accepted as given facts or truth, there are events where children unlearn them. One prominent myth is about a rock (‘Kozhipara’) in the campus. It was believed that any person who went near it at midnight would hear the cock crow. As a film depicts, the children stayed there overnight to prove no such thing happened.</p>\n<p><i>Classical mode: </i>Kalaripayattu, is a very significant martial art that has existed in Kerala for centuries. During the feudal times, rulers maintained martial warriors who often had to give up their lives in honour of their masters. Besides self-de- fence, it preaches that the student should be capable of winning over the enemy without weapons. More than a martial art it has been able to incorporate various forms of orthopaedic practices too.</p>\n<p>Students at Kanavu take training in both (orthopaedic practices as well as self- defence). This is very rigorous – unlike other martial arts, one can become a master of it, only after many years of training. The present guru at Kanavu said one of their students had become a master after almost 12 years of training. As the martial art has its origin in the feudal times the system of learning too has a classical touch. While practising the student has to remember the sequence. The fighter is expected to move her body and weapons in a specific order. The traditional caste groups, which once practised this martial art form, do not show any interest in sustaining them any more. However, today the modern-day guru is well aware that as an art form, it has really broken caste barriers and skills are being provided to the later generations of Eklavyans. There are other classical forms, which children learn. Mohiniyattam is dance form. Just as kalaripayattu, this too has its own specific terminologies to be remembered.</p>\n<p><i>The guru-shishya relationship: </i>One thing that radically education is redefines the guru-shishya relationship that prevails at Kanavu. Many senior most children re- member how they had been cared for by the guru when they had just joined Kanavu. The guru takes the initiative in most activities. Unlike the gurus of the ancient past who had to be provided with all necessities by the shishya, gurus at Kanavu are treated at almost an equal level. One would naturally expect children to learn from the guru’s example.</p>\n<p>In certain ways the guru can be a hard task master. He expects each and every child to be active and participate in all activities with vigour. The following description could elaborate upon this.</p>\n<p>Reading Maxim Gorky’ s book <i>The Mother </i>was an experience in itself. The senior most children participated in this reading session. The book begins by narrating the monotonous life in a labour colony near a factory.</p>\n<p>Everyday the factory whistle shrieked tremulously in the grim, greasy air above the workers’ settlement. And in obedience to its summons sullen people, roused before sleep had refreshed their muscles, came scuttling out of their little grey house like frightened cockroaches. They walked through the cold darkness, down the un- paved street to the high stone cells of the factory, which awaited them with cold complacency, its dozens of oily eyes light- ing up the road.... [Gorky 1988] (p 17).</p>\n<p>The description elaborates how those colony dwellers were controlled by the routine of factory siren. The guru wanted children to reflect how their own society had become a simile to this. For three evenings children were expected to reuse various words in Gorky’ s written passages to narrate how some elements of their collective life either at Kanavu or outside tended to move in a similar direction.</p>\n<h4>Modern Knowledge Film Making</h4>\n<p>I was moving around the campus as most students were eagerly watching the process of film shooting on the fourth day in progress. A group of four younger students were waiting for their turn to walk in front of the camera in the coffee garden. Suddenly one of them decided to take up the role of cameraman, another the director, and third the light boy. The call came, “Silence”! “Camera”! “Rolling”! “Action”! “Cut”! These students did not recognise these English words. But to them that was the beginning of it all.</p>\n<p>Obsession for the ‘imaginary’ fantastic world amongst the adivasis of Kerala, as portrayed in motion pictures of Malayalam is an observed feature. Children are in great excitement when movies are discussed. At Kanavu, film itself is part of the curriculum. Children have watched world classics such as ‘Seven Samurai’, and ‘Bicycle Thief’ with rapt attention.</p>\n<p>During the same period, Kanavu itself became a subject for documentary movie- makers. There were already three documentary movies made before my stay with them. A UGC production, which focuses and describes the education process at Kanavu. A production by Third Eye Communication which describes a day in the campus. The national award winner for the best documentary in the year 2001 was ‘Kanavumalayilekku’. All these interactions provided some opportunity for children to become familiar with films. More than any other modern art form, films turned out to be acts of collective learning.</p>\n<p>At the end of relearning films, children under the guidance of the guru ventured into the making of a feature film. It is the first feature film of its kind where a tribal dialect is used to a great extent to narrate the conflicts of adivasi lives with modernity. Every theme that affects modern-day lives of adivasis is dealt with in this film, ranging from – their struggle for alienated land to the Afghan war; the sad tale of many unwedded mothers in adivasi society to teenage liquor poachers; the evan- gelist who tried to convert them to the Hindu religious heads who sidelined their gods; are all viewed though the eyes of girl who undergoes the menstruation ceremony in her ‘guda’ (the basket home). The making of this film was not merely an exercise to portray tribal life – it was also an unlearning of the film making grammatology.</p>\n<p><i>Visitors and visits: </i>Occasionally visitors travel in order to participate and learn but very often, visitors too provide several opportunities. The visitors to the campus belong to different categories. All the visitors are addressed as ‘maman/mami’ (uncle/aunt). During my first trip (a year before my stay in Kanavu) I was unsure as to how I would introduce the state I work in and the type of work I do. The hall in which students do most of the activities had many different paintings and writings by students. In the middle of them was Medha Patkar. Soon I realised children did follow the events at Narmada valley. They had heard of land alienation from the tribal groups in the name of ‘development’.</p>\n<p>They are also well aware of issues that affect their own society and culture. It is in this context that they participated in the struggle organised by the Adivasi Gotra Sabha demanding the return of alienated land. Children did participate in the month-long struggle at the state capital. This is a struggle that they identify as their own. Their own life in the forest had been one of coexistence. However, the forest has since been alienated by the law of the land. The present owners of the land respect neither the forest nor the lives within it. Different political organisations of the left and centre have always promised to provide land for them, however, adivasis were never numerically significant as a vote bank and thus political promises are never fulfilled.</p>\n<p>Few years ago, students visited and saw for themselves the living conditions of factory workers at Mavoor. Here they learnt about the violence of modern technology. The Mavoor Rayons factory on the banks of river Chaliyar posed a threat to the people on its banks. The factory also consumed forest products in large quantity, especially bamboo, the favourite food item of the elephants.</p>\n<p>The campus also provides an ‘unlearning’ space for many visitors. Two instances were narrated to me. One group of visitors was from the most prestigious social work institute in the country. After a long discussion between both the groups, students at Kanavu asked the students of social work, “what would you do after your degree? Where would they work?” The need for professional help in development was the main concern put across by the MSW students. Nevertheless, all of them accepted the need to look for a professional career. No one evinced a desire to work with communities.</p>\n<p>My stay with Kanavu was not in the form of a researcher. But to me Kanavu provided the opportunity to reflect upon diverse philosophies of education. There were two ways in which I wish to engage with the critique. The first critique of the programme came from many of the middle class visitors to the campus – often teachers and others who may be engaged in education in some or other forms. Very often I had to engage with this group in defending the Kanavu innovation against their own middle class biases/anxieties. These discussions were of the following nature.</p>\n<p>Occasionally one thinks of the Kanavu dream as a hard and challenging one. For one reason the collective model has become alien to the cultures of mainstream society. The education system that provides a hierarchy or decides successes and failures – demands and promotes the individual to be competitive. This all pervading presence of competitive, individualistic ideals would continuously evaluate the success of an institution like Kanavu through their own value systems. To the mainstream society, the specialised knowledge or skills of individuals are rated more valuable; the hierarchy of skills tend to be slanted in favour of textbook knowledge rather than the life skills.</p>\n<p>The resistance to knowledge from text-books was equally puzzling. Kanavu has an excellent library. However, in their philosophy, knowledge creation is more important than knowledge acquisition. Partly the numerous numbers of the educated unemployed (with formal university degrees) are pointed out to challenge the belief that the formal education has any positive value. Also one finds that many have gained employment by bribing the management with huge sums of two to three lakhs for the job of a higher secondary teacher.</p>\n<p>Secondly I reflected upon the experience against my own schooling. This made me wonder if holistic education is possible. In such systems, the child is expected to master a variety of skills. The performance of the child on the stage, through text- books, at the playground and classroom are all evaluated. Would it be justified to expect from every child an ability to recite the classical raga and dribble the football with equal mastery? Can a child decide to read books all the time? Can the child resist the visions of the educators to provide holistic education? Does the child who makes a choice of either reading all the time or playing football acquire this habit from her social upbringing? Has it been imposed upon her by society as a more valuable activity than another? And then in the long run is it justified to say the child has been denied various opportunities?</p>\n<p>To me the second experience of schooling emerges from the work that I undertook with Eklavya, where the attempt was to reform the mainstream education system. That experience is intimate in bringing forth the need to re-skill the role of teacher and curriculum material. Often it brought forth the barriers/limits of school as an institution; the limited engagement that the teacher makes with the children; mediation of the state in this engagement in the form of textbooks, exams and timetable. On the whole the role of teacher is defined as a professional talking machine and the school as a factory producing literate societies. But would these professionals be able to replace the guru of Kanavu?</p>\n<p> </p>\n<p><strong>Location:</strong> Kanavu, Waynad District, Kerala</p>\n<p><strong>Reprinted from:</strong> Economic and Political Weekly.  Downloaded from: <a href="http://www.eklavya.in">www.eklavya.in</a> (Permission obtained from the author).</p>\n<p><strong>Original Title:</strong>  Where Learning Happens</p>\n<p> </p>	\N	2014-02-28 13:30:00+00	6	kanavu-kerala-where-learning-happens	0	Kerala alternative education alternative learning	1	0	0	t	uploads/new-rice-every-day.jpg	f		t	0	2014-02-25 20:28:26.637184+00	2014-03-13 10:39:43.917598+00
2	Pune has experimented with a form of Participatory Budgeting since 2006, when it was first introduced formally by the Pune Municipal Corporation (PMC). Citizens’ organizations have played an important role in initiating and shaping it.	Participatory Budgeting in Pune : A critical review	\N	86	<p>Pune has experimented with a form of Participatory Budgeting since 2006, when it was first introduced formally by the Pune Municipal Corporation (PMC). Citizens’ organizations have played an important role in initiating and shaping it.<br>A study was done in early 2013 by CEE as a critical reflection of the experience of participatory budgeting in Pune. The study reveals a few strengths as well as a number of weaknesses and opportunities. Some of the major achievements have been the simplicity of the process for citizens, that it has been take place regularly every year, a substantial quantum of funds has been allocated and there is some response to suggestions from the poor. Some of the major areas of improvement are in outreach, transparency of process, institutionalizing the processes in slum localities, institutionalizing the role of the corporator, enhanced practice and experimentation with public deliberation processes, and year-round engagement.<br><a href="/static/media/uploads/Stories_PDFs/participatory_budgeting_pune_review_cee_2013.pdf" target="_blank"><strong>The study</strong></a> shows that there appears to be interest among both citizens groups and political parties to improve the PB process for varied reasons, and both would likely be important actors in the further evolution of PB in Pune.</p>\n<p>Contact : Sanskriti Menon, <a href="mailto:sanskriti.menon@ceeindia.org">sanskriti.menon@ceeindia.org</a></p>\n<p><em>First Published by Centre for Environment Education in August 2013</em></p>	\N	2014-03-02 06:12:18+00	3	participatory-budgeting-in-pune-a-critical-review	0		1	0	0	t	uploads/20131116_map504.jpg	f		t	0	2014-03-02 06:17:32.775609+00	2014-03-13 10:41:49.038764+00
2	Shikshantar, the People’s Institute for Rethinking Education and Development, is an organization that studies and practices more natural and sustainable approaches to learning and development, most of which differ radically from typical approaches to “education” or “fixing poverty.” Now in its second decade, Shikshantar hosts a variety of activities, including providing guidance and resources for free-thinkers, organizing un-conferences, producing publications, and cultivating projects that challenge dominant systems of education and economy. 	Shikshantar, Udaipur : Towards an Organic Learning Community	\N	67	<blockquote>\n<p>Shikshantar, the People’s Institute for Rethinking Education and Development, is an organization that studies and practices more natural and sustainable approaches to learning and development, most of which differ radically from typical approaches to “education” or “fixing poverty.” Now in its second decade, Shikshantar hosts a variety of activities, including providing guidance and resources for free-thinkers, organizing un-conferences, producing publications, and cultivating projects that challenge dominant systems of education and economy.</p>\n</blockquote>\n<p align="center"><img height="336" src="/static/media/uploads/LearningandEducation/shikshantar_image3.jpg" width="355"></p>\n<p>In 1998, a few friends got tired of hearing that they were “too idealistic”. Every time they raised critical questions about the dominant thinking on education and development, they were either asked for the magical all-encompassing Solution (to be given in thirty seconds or less) or pushed aside with comments like, “That’s all true, but how will we financially survive without the System?”  They came from different contexts – UNESCO, a very large NGO in India and a major private school in Pakistan.  Yet, each felt the global system of factory-schooling they were being asked to promote was causing far more harm than good, both to individuals and to local communities.  This model of education had thrown out the elders and sold out the children. It had cut people off from Nature. Worse, it was intimately tied to a destructive kind of Progress, which was leaving the diverse cultures far weaker, more tied to the whims and controls of State and Market institutions and stripped of their uniqueness and power (which had lasted for millennia). They decided, in the spirit of the Zapatistas, to say, “<i>Ya</i><i>! Basta!</i> Enough is enough,” and promptly walked out of their jobs.  After some traveling and searching, they decided to co-create an open space for exploring their questions and bringing their lives into greater alignment with their values of human dignity, social justice and ecological sustainability.</p>\n<p> </p>\n<p>That became Shikshantar Andolan: the Peoples’ Institute for Rethinking Education and Development. Named by an eminent Gandhian elder, Shikshantar is composed of two words, <i>shiksha</i> (learning as living and living as learning) and <i>antar</i> (transformation or difference).  <i>Andolan</i><i> </i>is a short form for <i>jeevan</i><i> </i><i>andolan</i><i>, </i>which can be translated as ‘an agitation or movement which starts with and shows up in our own lives’. Put these words/concepts together in various combinations and you have Shikshantar. We are based in Udaipur, a small city (by India’s standards) in the northwest part of India, and are connected with friends and partners all over the world, who share similar questions, experiences and explorations.</p>\n<p> </p>\n<p>Shikshantar draws its deepest inspiration from the concept and practice of <i>Swaraj</i>. A Sanskrit term<i>, Swaraj </i>can be translated as ‘radiance of the self’ and ‘rule over the self’. It was re-invoked during India’s freedom struggle by MK Gandhi and Rabindranath Tagore in the early 20<sup>th</sup> century, as a spirit, sensibility, and form of organization that would value the uniqueness of each individual as well as the diversity of community.<a href="http://www.swaraj.org/shikshantar/shikshantar_aboutlearningcommunity.htm#_ftn1" title=""><sup>[1]</sup></a> <i>Swaraj</i><i> </i>means that we personally and collectively co-create what terms such as ‘freedom’, ‘progress’ and ‘justice’ mean. It also refers to a way of life where no one is exploited or exploiting, but rather each has the opportunity to know and express their deepest unique selves in relationship with all living beings. At the core of <i>Swaraj</i> is a deep commitment for people in all spheres of society to free themselves from institutions and reclaim ownership and responsibility for their own learning. It calls for de-institutionalizing our lives and being the change we wish to see in the world. After the British left India, the larger agenda of <i>Swaraj</i> was forgotten amidst the agenda of nation-building, industrialization and development.    </p>\n<p> </p>\n<p><i>What does Swaraj mean today? And how can each of us learn and live into it in our own lives? </i>are some of the core questions Shikshantar started with (as opposed to launching with a mission statement!)<b>. </b>For us, the concept and practice of <i>Swaraj</i><i> </i>connects three dimensions of resistance and regeneration: the personal, the local and the systemic. We notice that all three are present at each moment, yet like a kaleidoscope, we shift focus from one to another. With <i>Swaraj</i><i> </i>as a foundation, we want to share two aspects of our spirit-work: our personal unlearning-uplearning community, which in turn, is nested in a larger local effort called Udaipur as a LearningCity. Both intersect with various systemic networks — the Learning Societies Network, the Walkouts-Walkons Network, and the Families Learning Network — which will be described briefly at the end.</p>\n<p> </p>\n<p>All our efforts are meant to strengthen an emerging larger movement towards justice, harmony, sustainability and meaning. Our activities evolve out of (and change according to) the energy of this movement and the vibrancy of co-learners within it.</p>\n<p> </p>\n<h4>Doing Together in an Organic Un-Learning Community</h4>\n<p>Over the past fifteen  years, Shikshantar has supported the growth of co-creators in many different organizational and community contexts. During this time, we have also tried to develop our own space as an organic learning community to nurture fellow co-learners and incubate their dreams. It is a space for doing, for discovering one’s own path — not an individualistic path (which breeds selfishness), but one that is deeply re-connected with all beings in a web of life. From the very beginning, we have focused on creating spaces in which people can start to reclaim control of their own <i>shiksha</i>. This is done in two ways:</p>\n<p>1) by exposing the culture of schooling and unlearning the damage it has done to us; and</p>\n<p>2) by reclaiming control over and regenerating our own up-learning processes, knowledge systems and sustainable learning ecosystems.</p>\n<p> </p>\n<p><img height="300" src="/static/media/uploads/LearningandEducation/shikshantar_image8.jpg" style="float: right;" width="400">It is difficult to describe what Shikshantar is, as it does not fit neatly into a single category. Over time, it has evolved into a hybrid organization – a research institute, library, community meeting space, publishing house, filmmaking studio, zero waste upcycling center, organic farm, self-healing center, cafe – to allow it to cater to varying needs and experiments of the larger movement. People from ages 3 to 85 years informally volunteer (real or virtually) with Shikshantar. This group includes those who go to schools and colleges, those who have walked out of or never gone to school, working people, housewives, retired people, people from different parts of India and other communities in the world.</p>\n<p>  <br> At any point in time, Shikshantar also formally hosts 6-10 full-time learning activists on our core team. As learning activists, we are actively involved in exploring ourselves and our local surroundings vis-a-vis the big questions/debates of our times. We are also involved in inviting others to consider their own unlearning and uplearning, which in turn adds to the larger Shikshantar movement. For this, it is critical that the learning activists develop themselves into co-learners. They are leaders without followers, each weaving together their own specific <i>jeevan</i><i> </i><i>andolan</i>.</p>\n<p>  <br> There is no formal selection process for learning activists. Nor are any degrees or formal qualifications required. Learning activists emerge out of their own declared interests and intent. Whenever any new volunteer comes, we ask them to share what is special or unique about them and what is their dream for their community or village. We also ask them to share meaningful questions that they are exploring and concerns they have about what’s happening around them in the world. They are invited to get involved in some specific aspect of the work of Shikshantar and to understand the vision and activities of the movement as a whole. If and when they feel that they would like to make a full-time commitment to Shikshantar, they can apply to be a learning activist by sharing their ideas about what they would like to do to contribute to the movement.</p>\n<p> </p>\n<p>There is no pre-set curriculum for the learning activists. Rather, the learning agenda (learning goals, environments, styles and pace, resources, evaluations) emerges from mutual dialogue among all of the co-learners. We have learned that there are, however, some processes that can assist in their deeper exploration:</p>\n<ul>\n<li>revisiting and (re-)valuing their own life experiences and intuitions;</li>\n<li>critically reflecting on their experiences with school, newspapers and TV and expressing their feelings and ideas through self-created media;</li>\n<li>exploring their ideas about concepts like leadership, <i>swa-anushashan</i> (self-discipline), social justice, voluntary simplicity, collaboration, creative self-expression, <i>ahimsa</i> (non-violence/love/respect);</li>\n<li>engaging in intense interaction with dissonant and paradoxical people, contexts and ideas;</li>\n<li>reconnecting with their hands and bodies and the beauty/power of physical work;</li>\n<li>re-examining institutionally-declared ‘problems’ (such as, Population, Politicians and Pakistan) from new perspectives in order to overcome our self-paralysis and finger-pointing;</li>\n<li>re-examining institutionally-declared ‘solutions’ (such as, “You need a lot of money to do anything.”);</li>\n<li>thinking as a <i>jugaadi</i>, which implies resourcefulness, creativity, starting with what materials, contexts, etc. exist (especially with so-called waste) and finding solutions from there</li>\n<li>learning with multiple generations – from the very young to the very old;</li>\n<li>discovering the possibilities of the local – <i>desh</i><i> </i><i>bhakti</i> (devotion to the local – not to be confused with patriotism or nationalism), local language, local media, local governance, local economy, local history, etc. – and understanding its links to the global;</li>\n<li>creating and carrying-out authentic work on local concerns, which is later shared with people around the sub-continent. </li>\n</ul>\n<p> </p>\n<p><img height="300" src="/static/media/uploads/LearningandEducation/shikshantar_image6.jpg" style="float: right;" width="400">We have learned that there is no particular order or time-frame or even specific exercises for these processes to take place. Rather, they are explored with the individual learning activists’ own needs, capacities and dreams in mind — along with the flow of activities and new opportunities in the Shikshantar movement. We try to identify together what each of us is passionate about and what each of us holds as our strengths and weaknesses. On a daily level, learning activists read and share articles, books, videos, art, theatre, songs, etc. that inspire/challenge them; devise their own projects according to their interests and talents; meet, interview and hang out with diverse local people; create, as well as attend, workshops/conferences; and host learning journeys with other groups. At the core, it is assumed that the responsibility for one’s own learning and motivation rests with each and every individual. It is also understood that our own learning process is enhanced by supporting the learning processes of other friends. There is no hierarchy in learning together -- every human being (regardless of formal academic qualifications) possesses important learning resources (and can deepen and widen these). And every kind of work, if done honestly, is a spiritual act. </p>\n<p> </p>\n<p>Much of the day-to-day efforts of learning activists are plugged into our work in Udaipur as a Learning City (more on this below). This makes work very real, contextualized and authentic. The entire process is geared towards shaking the lethargy of the mind, expressing oneself and one’s vision of life, imagining new futures and developing the courage to break the chains of the TINA (There Is No Alternative) mindset. We hope to spark new possibilities beyond the dominant vision of fitting our lives into the Global Economy. Some learning activists include:</p>\n<p><b>* </b><b>Rohit</b> is working to build a network with local organic farmers. Rohit is also running Banyan Roots Organic Store.</p>\n<p> </p>\n<p>* <b>Vidhi</b> is nurturing a local and country-wide network of ‘families learning together’, many of whom are involved in homeschooling and natural living. She hosts a weekly English class for local housewives to share their lives and dreams with each other. She also edits the Hindi issues of Swapathgami magazine, which shares peoples’ unique stories of walking out and walking on.</p>\n<p> </p>\n<p>* <b>Vishal</b><b> and Guddi</b> are designing and running creative expressions workshops for children and families using waste materials. They have started zero Waste Udaipur Eco-shop at Shikshantar. Together, they are trying to expand the notion and practice of zero-waste in Udaipur’s NGOs, tourism district and in local families.</p>\n<p> </p>\n<p>* <b>Ramawtar</b><b> and Uma </b>are delving into traditional knowledge around herbal plants and natural medicines; they are planting herbal gardens with local families and preparing remedies to share with the wider community.</p>\n<p> </p>\n<p>* <b>Sunny and Manoj</b> are cooking healthy food (no oil, no white sugar, no wheat, no preservatives or chemicals, no milk) and sharing their creations, along with their ideas about food, nutrition and healthy living, in various corners of Udaipur. They have started their own slow food restaurant called Millets of Mewar.</p>\n<p> </p>\n<p>* <b>Amit and </b><b>Nirmal</b><b> </b>is working with local families to develop murals on public/private walls, so as to explore both community expression as well as the aesthetics of urban spaces.</p>\n<p> </p>\n<p><b>* Pannalal</b> is working on regenerating the local Mewari language and the tradition of story-telling; he has published several books in Mewari. Pannalal is also an organic farmer.</p>\n<p> </p>\n<p>* <b>Manish, Rama and Kishan</b> are supporting the community video resource center, to make more available our wide collection of films and support more people who are interested in making films about their lives and communities.</p>\n<p> </p>\n<p>Learning activists design and manifest their own learning webs (the various people, places, kinds of interactions, use of materials, etc.). But all of it is flexible and shared, and we take the time to give feedback and support each other’s work as it develops. It is important to note that we do not pigeonhole or compartmentalize ourselves in anyway, nor do we have any departments like “Research,” “Administration,” “Computer Operations”, “Publications,” etc. Unlike most professionals and institutions, we see ideas and practices as linked, <span>and</span> we strive to link our personal lives with our public work. Play, learning, working, creating, expressing, are all intertwined. And, oftentimes, core-team-wide collaborations bring together different strengths and interests. A current example is the weekly slow food cafe, <i>Halchal Saturday Cafe</i>, which brings various friends together to share different aspects of organic living in the city.</p>\n<p> </p>\n<p><img height="325" src="/static/media/uploads/LearningandEducation/shikshantar_image5.jpg" style="float: right;" width="448">In all of the activities, learning activists are encouraged to identify new resources (beyond money) in Udaipur to support their work. This includes inviting local people to contribute space (their rooftops, terraces, courtyards), materials (cloth scraps, wood pieces, old boxes, etc.), and their time and energy. Learning activists also use ‘waste’ in innovative ways — for composting and city farming, in making useful items like paper furniture or rubber tire purses and in generating creative expressions like murals, masks, musical instruments… All of this helps to break the myth that having a lot of money is necessary for doing meaningful work.</p>\n<p>  <br> It is critical that learning activists feel that they have full access to the learning environment and the ability to add to/change it. So, everyone has their own key to Shikshantar. Everyone has the power to convene a meeting when they feel it is needed. We can post things we find interesting on the walls. Everyone is encouraged to bring new ideas, new people and new possibilities into Shikshantar’s work. Learning activists are also encouraged to share problems they are having with their work, as well as personal problems. Nearly every day at lunch, there is a Circle Check-in, in which everyone present shares what is on his/her mind or heart. Learning activists also spend time in short internships to learn how others manage (or mismanage) their organizations, and to get ideas on how we can further grow Shikshantar. </p>\n<p> </p>\n<p>We use and share our skills and knowledge across domains – to take Shikshantar’s spirit into other spaces and communities: our own families, friends, neighborhoods, caste and religious communities and other circles. Learning activists have also contributed to new experiments with our different partners around the country and the world, especially related to creative expressions, cooking, zero waste and learning without schooling.  We also go on team learning journeys (with the dual intention of both being provoked and provoking) to places like Narmada Bachao Andolan and Auroville. From time to time, different individuals and groups come to Udaipur to share their efforts, experiences and burning questions with us.  We are open to dialogue with any and every one; we continually try to transcend categories of ‘us’ vs. ‘them’ or ‘the Other’. Rather than rely on ‘experts’, we see each human being as uniquely and completely qualified to share their ideas, experiences, and dreams about learning and living. </p>\n<p> </p>\n<p>If it wasn’t obvious by now, it should be clarified that there are no ‘teachers’ or faculty at Shikshantar. Each of the learning activists is a co-learner. We are not given grades; we do not graduate or get a certificate or take attendance. There is no threat of compulsion or use of punishment. Neither are there any financial rewards to look forward to. We make no attempt to quantify or rank the learning or growth that occurs among us. We simply observe each other as we grow and try to encourage ourselves to engage in continual self- and peer-reflection. This ensures that the power dynamic among us is always changing. At times, different people (depending on their knowledge, skills and insights) organically emerge to play the role of ‘guide’ – to help facilitate deeper exploration, better communication and new connections. The temporary guide tries to make clear their role, their commitment to other co-learners, and their expectations. They also make themselves vulnerable to critique from others and to the possibility (and necessity) of their own unlearning and new learning.</p>\n<p> </p>\n<p>What perhaps makes us most unique as a community is our collective openness to the different kinds of things we need to unlearn from the culture of schooling. For example:</p>\n<ul>\n<li>unlearning the culture of blaming others, in order to be honest with our own mistakes (and even more, celebrate them!);</li>\n<li>unlearning the school- and media-induced embarrassment of using our hands, doing physical labor and appreciating our local culture;</li>\n<li>unlearning our modern, urban disconnect from Nature, her language and power;</li>\n<li>unlearning the deference, submission, control or oppression which defines institutional relationships;</li>\n<li>unlearning our own biases around caste, gender, race, socio-economic groups, age, sexuality, religion, etc.;</li>\n<li>unlearning the laziness and disrespect of taking the easy-way-out, with readymade solutions, pre-packaged responses, master plans and other forms of monoculture.</li>\n</ul>\n<p>All of this unlearning is important, if we are to recover our innate capacities to nurture healthy relationships with one another, to give and receive with authenticity and integrity.</p>\n<p><b> </b></p>\n<p>Shikshantar is not an isolated space. The main stomping ground for all our reflections, actions and inspirations is the city we live in, beautiful Udaipur. Established over 500 years ago, the city is surrounded by the Aravalli mountain range and is home to seven man-made lakes and umpteen gardens, fountains and palaces. It is the former capital of the Mewar region, known for its history of resistance, cultural diversity and creativity.  With a population of 700,000 and growing, Udaipur is suffering the same crises of all cities – getting bigger, faster, without much thought to maintaining its ecological, spiritual or cultural health. The beast of urbanization is expanding, and Shikshantar learning activists and friends hope they can do something to help change its direction. </p>\n<p><b> <br></b></p>\n<h4>Udaipur as a Learning City</h4>\n<p>Udaipur as a Learning City (ULC) is comprised of many processes to regenerate the <b>local</b> <b>learning ecology</b>.  We see the city is a living organism, with natural, cultural, spiritual and physical elements, in which people are active co-creators of meanings, relationships, and knowledge.  ULC aims to support these by re-valuing and re-connecting the diverse spaces for deep learning within the city and surrounding villages. It stands in direct challenge to the funnels of schooling and colleges, by reminding us that real learning requires actual, authentic spaces to ground our selves in. The city provides a variety of contexts for expanding our consciousness and bolstering our capacities to appreciate our strengths, address problems and build trusting friendships. ULC is an open invitation to people of all ages and all backgrounds in Udaipur, to explore ways of living and learning that are more balanced, more meaningful, more just and honest for them.  The four major principles or process-goals behind ULC are:</p>\n<ol start="1">\n<li>Developing our own visions and practices of <i>Swaraj</i> in Udaipur.</li>\n<li>Appreciating the unique strengths, capacities, potential, talents, skills of each person.</li>\n<li>Building feelings of caring and connected communities.</li>\n<li>Challenging unjust, dehumanizing institutions, attitudes, structures, plans, etc., particularly those related to urbanization and globalization.</li>\n</ol>\n<p> </p>\n<p>These principles came out of a few years of dialogue with local people, and were articulated by volunteers at Shikshantar during the process of conceptualizing ULC in the year 2000. Given the openness and the spirit of the principles, they have not led to debate, but rather have inspired the community’s imaginations to make them manifest in practice. They have been, and continue to be, integrated into each activity that emerges under ULC. Such activities include:</p>\n<p> </p>\n<p><b>Intergenerational Community Reflections and Dialogues</b>: Festivals have traditionally been potent opportunities for deep reflection and social engagement. With this in mind, ULC has hosted interactive dialogues on both local and international festivals, such as <i>Rakshabandhan</i> and TV Turnoff Week. Posters, cooperative games, discussions and hands-on activities are combined to explore the meanings and life-actions of such celebrations. Public dialogues are also supported both by hosting conversations/events on prominent issues, like water conservation/restoration and pedestrian-friendly roads, and by screening thought-provoking films, like <i>Baraka</i> and <i>Modern Times. </i>Producing a variety of community media not only helps Udaipur citizens to critically and creatively look at present problems with new perspectives, but it also builds friendships across boundaries. For example, despite a strong national and international trend toward Hindi and English, ULC offer opportunities for reflection and conversation in <i>Mewari</i> (the local language). This enables a more dynamic sharing of peoples’ stories, songs, proverbs, etc<i>.</i>, which in turn de-institutionalizes dialogues and takes power back from professionals and experts.</p>\n<p> </p>\n<p><b>Unlearning and Uplearning Workshops</b><i>: </i>These particularly relate to critical media awareness and creative expressions -- people making their own music, dance, dramas, films, puppets, masks, sculptures, especially using so-called ‘waste’ materials. The underlying intention of such workshops is to actively nurture peoples’ capacities to say ‘no’ to the consumeristic, competitive and compulsory institutions/ attitudes/ behaviors/ structures that enslave us, and to instead organically construct spaces and relationships that do serve them.  Such workshops predominantly occur within local neighborhoods and are hosted by families at their homes, in empty lots or temple spaces. Questions raised during such workshops include: <i>How can we share our feelings, stories and ideas through our own expressions? How are our creations different from the readymade world of mass media? What do notions like beauty, leadership, success, freedom, justice, peace, security etc. mean to each of us? What are our creative capacities and power (beyond institutions), and how do we unleash them to make the kind of life we want?</i></p>\n<p><b> </b></p>\n<p><b>Natural Living in a City</b><i>: </i>ULC is currently exploring ways that city-dwellers can reconnect to their hands/bodies and to nature, through organic farming on their rooftops, rainwater harvesting, solar cooking, herbal gardens with medicinal plants, spinning cloth and other such efforts at home. Natural living efforts also give city people a chance to ‘get their hands dirty’. The soil and the sacred get reconnected in the most basic aspects of human life, like health, food, water, clothing and shelter. These processes enable city folks to link local culture with spirituality and the physical ecology; for example, the wisdom in <i>Mewari</i> is intimately connected with an ethical lifestyle and natural balance, which are essential for challenging urbanization. </p>\n<p><b> </b></p>\n<p><b>Learning Exchanges</b><i>: </i>ULC seeks to move beyond NGO/Government institutional boundaries and agendas and directly involve local artists, organic farmers, artisans, businesses, healers, etc. in questions and experiments related to regenerating urban life. It also encourages youth who are not interested in school or college (or those who want to change their career) to create their own meaningful paths of living, livelihood and learning, by trying out exciting apprenticeship opportunities. We encourage people to reclaim their own learning processes by building their own learning webs (diverse networks of co-learners and spaces) around the city.</p>\n<p> </p>\n<p>These different elements of ULC are geared towards regenerating the cultural commons. They stand in direct challenge to the violence of Development, Progress and Modernization, which has severely devalued local people and their knowledges and experiences and has led to high levels of dislocation, isolation and alienation. We are trying to revalue those things which are important to our collective well-being but do not have direct economic value to the State or Market. The activities of ULC are entirely off-line, as internet use and access is quite limited in Udaipur. People meet face-to-face as needed, depending on the activity (whether a publication in Mewari, a rooftop garden, a theater workshop, etc.). No separate building has been especially constructed for ULC; rather, we have chosen to creatively utilize what already exists: peoples’ homes, local neighborhoods, public gardens and parks, art galleries, temples, ashrams, businesses, or local organizations’ offices.  ULC focuses on families and diverse communities. We recognize that intergenerational learning is key if wisdom is to emerge and profound action is to take place.  All of this ensures that the Shikshantar movement, even in Udaipur, extends far beyond one space – and therefore steers clear of the isolation and marginalization that face many alternatives to education.</p>\n<p> </p>\n<p><img height="282" src="/static/media/uploads/LearningandEducation/shikshantar_image7.jpg" style="float: right;" width="400">People join ULC either through an existing activity, which has been initiated by the interests and questions of others, or by sharing their own curiosities to start something new.  It is self-organizing, and the core team of Shikshantar plays a role in fleshing out, supporting, and deepening the emergent activities. This is why the work of ULC is so broad and deep, spanning everything from vermicomposting to anti-globalization campaigns to learning with local artists.  Many people join in ULC for this spirit of bridge-building, border-crossing, intercultural dialogue and relationships. We ask people to freely share what they have with each other in the spirit of gratitude, thus aligning with an ancient Indian principle against the commodification of knowledge. </p>\n<p> </p>\n<p>This is a fundamentally different orientation from many other learning city projects in the West, where the focus is on expanding technology (computers and internet usually). In those cases, the definition, purpose, means, and ends of ‘learning’ are often rooted in the military-industrial paradigm of development and rarely ask questions about the direction of this paradigm. ULC is also very different from the popular notion of public-private partnerships, where ‘public’ only refers to government bodies, and ‘private’ only to corporations. ULC is trying to transcend these categories of public and private and to appreciate and integrate the authentic concerns and strengths of local people. In other words, in Udaipur as a Learning City, individual people and intergenerational relationships are the starting point -- not abstract ideas, pre-determined projects or results-based indicators. ULC enables us to be alive to surprises and to feel a constant excitement in journeying into the unknown. </p>\n<p> </p>\n<p>Over the last ten years, we at Shikshantar have been astonished and inspired by the directions ULC has taken. We have realized that the more closely we work with individuals and families in neighborhoods rather than with formal institutions, the more motivated and invigorated we feel. Also, it is more self-sustaining than forced plans or formal arrangements. For example, our interactive dialogues in public spaces have been very effective. These are at a human- scale and have enabled our network of children and families to expand (much beyond normal NGO circles). Our resourcefulness with space and materials has also inspired and reminded people that they do not need a lot of money to do wonderful things in their lives and community.</p>\n<p> </p>\n<h4>Shikshantar Andolan</h4>\n<p>Layers upon layers upon layers — like a crisp red onion (grown organically, of course!) — is a good way to understand Shikshantar Andolan. Our personal learning community of learning activists and volunteers are nested in the larger local effort of Udaipur as a Learning City. Both in turn are connected to and continuously invigorated by friends from three other growing translocal networks:</p>\n<ul>\n<li><b>The Learning Societies Network: </b>Beginning with the question, “If not a schooling society, then what?”, this network seeks to break the monopoly of education experts by engaging the unusual suspects in the dialogue around education and development: artists, parents, farmers, activists, craftspeople, business folks, youth, elders and more. It focuses more on conceptual questions around the nature of human learning, policy options for learning communities, tools for dialogue and various experiments happening in the world. <a href="http://www.swaraj.org/shikshantar/lsdialogue.html">www.swaraj.org/shikshantar/lsdialogue.html</a></li>\n</ul>\n<ul>\n<li><b>Walkouts-Walkons Network: </b>Also known as the <i>Swapathgami</i> Network (one who makes his/her own path and walks it), this collection of people are engaged in exploring individual pathways outside of institutionalized structures, attitudes, lifestyles, products and much more. They actively challenge the existing label and connotations of ‘drop-out’. Rather, they are walking out of the Readymade World and walking on to endless possibilities of their own and other friends’ creation. The network features many non-commodified learning resources and apprenticeship opportunities.<a href="http://www.swaraj.org/shikshantar/walkoutsnetwork.htm">www.swaraj.org/shikshantar/walkoutsnetwork.htm</a></li>\n</ul>\n<ul>\n<li><b>Families Learning Together Network: </b>A group of families from around India are interested in learning and living beyond the boundaries of factory-schooling, home-schools, mass media and other forms of institutionalization. They are exploring dynamic notions of ‘family’, of joint families, of friends and families, of adults and children learning from each other. They believe that families can be foundation for learning and sharing skills, ideas, practices, love and friendship. <a href="http://www.swaraj.org/shikshantar/familieslearning.htm">www.swaraj.org/shikshantar/familieslearning.htm</a> </li>\n</ul>\n<p><i>.</i></p>\n<p>These networks, Udaipur as a Learning City and Shikshantar learning community — they are all attempts to bring into being the world we want to live in. To borrow again from the Zapatistas, a world in which many worlds are embraced, where a diversity of locals can co-exist. We are standing in a threshold moment, walking the line between what is known and what is unknown. We invite you to take the plunge with us and join our growing family of co-creators.  Contact us at <a href="mailto:shikshantar@yahoo.com">shikshantar@yahoo.com</a> or write us at Shikshantar, 21 Fatehpura, Udaipur, Rajasthan 313004 INDIA.</p>\n<p><strong>Reprinted from :</strong>  <a href="http://www.swaraj.org/shikshantar/">http://www.swaraj.org/shikshantar/</a></p>\n<p><strong>Original Title :</strong> Towards an Organic Learning Community</p>\n<p>Read other articles on the web about Shikshantar:</p>\n<p><a href="http://schoolreformed.wordpress.com/2013/01/03/profile-shikshantar-and-swaraj/" target="_blank">Profile: Shikshantar and Swaraj</a> by Christian Casillas on <a href="http://schoolreformed.wordpress.com" target="_blank">http://schoolreformed.wordpress.com</a></p>	\N	2014-02-28 11:30:16+00	6	shikshantar-udaipur-towards-an-organic-learning-community	0		1	0	0	t	uploads/blog/carousel1.jpg	f		t	0	2014-02-25 16:11:42.1085+00	2014-03-13 10:42:18.257789+00
2	Mutiple Ecocab call centres, strategically placed, ensure that an ecocab takes a caller from any of over 13,000 households to his destination (within 3 km) in 10 minutes.	Ecocabs in Fazilka	\N	84	<p>Fazilka, a historical town and the district headquarters of Fazilka District is located in southwestern Punjab in India, about 325 kms west of Punjab State Capital Chandigarh.The eco-cabs initiative has helped to organize Intermediate Public Transport System at affordable price. There has been global recognition of the initiative and Ecocabs or similar initiatives are being launched in other cities as well. The Punjab and Haryana High Court has itself recognized this as an ecofriendly mode of transportation and sent notices to the state governments to look into this mode which has the potential to replace carbon dioxide emitting motor vehicles.</p>\n<p>read more about the <strong><a href="http://sumnetindia.wordpress.com/category/city-update/fazilka/" target="_blank">Eco-cabs in Fazika</a></strong></p>\n<p>Contact: through <a href="http://www.ecocabs.org" target="_blank">www.ecocabs.org</a> and <a href="http://www.lovefazilka.org" target="_blank">http://www.lovefazilka.org</a></p>\n<p><strong>First Published on SUM Net India, October 30, 2011</strong></p>	\N	2014-02-28 05:59:59+00	3	ecocabs-in-fazilka	0	traditional rickshaw eco-friendly transport	1	0	0	t		f		t	0	2014-02-28 06:06:38.428537+00	2014-03-13 10:42:45.733125+00
\.


--
-- Data for Name: blog_blogpost_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost_categories (id, blogpost_id, blogcategory_id) FROM stdin;
\.


--
-- Data for Name: blog_blogpost_related_posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpost_related_posts (id, from_blogpost_id, to_blogpost_id) FROM stdin;
75	29	24
76	29	7
77	24	29
78	7	29
804	67	68
805	67	69
806	67	70
807	67	71
808	67	74
809	67	75
811	67	77
812	67	78
813	67	79
814	67	50
815	67	45
816	67	18
818	68	67
819	69	67
820	70	67
821	71	67
822	74	67
823	75	67
825	77	67
826	78	67
827	79	67
828	50	67
829	45	67
830	18	67
857	76	66
70	45	23
858	76	67
74	23	45
859	76	68
860	76	69
861	76	70
862	76	71
863	76	74
656	26	45
864	76	75
657	26	31
865	76	77
660	45	26
661	31	26
866	76	78
867	76	45
868	76	50
869	76	18
870	66	76
871	67	76
872	68	76
873	69	76
874	70	76
666	41	31
875	71	76
876	74	76
877	75	76
878	77	76
879	78	76
880	45	76
881	50	76
882	18	76
885	82	84
886	84	82
669	31	41
670	56	41
671	56	26
673	56	31
674	41	56
675	26	56
677	31	56
678	2	57
679	2	52
680	57	2
681	52	2
686	28	56
687	28	41
688	28	26
689	28	31
690	56	28
691	41	28
692	26	28
693	31	28
700	18	45
707	45	18
708	17	39
709	39	17
715	71	74
716	71	75
718	71	77
719	71	78
720	71	50
721	71	18
831	66	67
727	74	71
728	75	71
730	77	71
731	78	71
732	50	71
733	18	71
832	66	68
833	66	69
738	70	71
739	70	75
741	70	77
742	70	78
743	70	49
744	70	50
745	70	54
746	70	23
834	66	70
835	66	71
751	71	70
752	75	70
754	77	70
755	78	70
756	49	70
757	50	70
758	54	70
759	23	70
836	66	74
763	69	69
764	69	70
765	69	71
766	69	74
767	69	75
769	69	45
770	69	78
771	69	79
772	69	50
773	69	18
837	66	75
777	70	69
778	71	69
779	74	69
780	75	69
782	45	69
783	78	69
784	79	69
785	50	69
786	18	69
789	68	69
790	68	70
791	68	71
793	68	45
794	68	18
797	69	68
798	70	68
799	71	68
801	45	68
802	18	68
839	66	77
840	66	78
841	66	45
842	66	50
843	66	18
844	67	66
845	68	66
846	69	66
847	70	66
848	71	66
849	74	66
850	75	66
852	77	66
853	78	66
854	45	66
855	50	66
856	18	66
\.


--
-- Data for Name: conf_setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY conf_setting (id, value, name, site_id) FROM stdin;
1	UA-48216773-1	GOOGLE_ANALYTICS_ID	1
2	10	SEARCH_PER_PAGE	1
3	5	COMMENTS_NUM_LATEST	1
4	2	RICHTEXT_FILTER_LEVEL	1
6	True	COMMENTS_UNAPPROVED_VISIBLE	1
8	True	COMMENTS_REMOVED_VISIBLE	1
10		BITLY_ACCESS_TOKEN	1
11	False	SSL_ENABLED	1
13	True	COMMENTS_DEFAULT_APPROVED	1
16	10	BLOG_POST_PER_PAGE	1
17		COMMENTS_NOTIFICATION_EMAILS	1
18		COMMENTS_DISQUS_API_PUBLIC_KEY	1
19		COMMENTS_DISQUS_API_SECRET_KEY	1
21	False	COMMENTS_ACCOUNT_REQUIRED	1
22	10	MAX_PAGING_LINKS	1
23		AKISMET_API_KEY	1
24	4	TAG_CLOUD_SIZES	1
25		COMMENTS_DISQUS_SHORTNAME	1
26		SSL_FORCE_HOST	1
27	False	RATINGS_ACCOUNT_REQUIRED	1
\.


--
-- Data for Name: contenttypes_concretemodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contenttypes_concretemodel (id, name) FROM stdin;
\.


--
-- Data for Name: contenttypes_foowithbrokenabsoluteurl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contenttypes_foowithbrokenabsoluteurl (foowithouturl_ptr_id) FROM stdin;
\.


--
-- Data for Name: contenttypes_foowithouturl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contenttypes_foowithouturl (id, name) FROM stdin;
\.


--
-- Data for Name: contenttypes_foowithurl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contenttypes_foowithurl (foowithouturl_ptr_id) FROM stdin;
\.


--
-- Data for Name: core_sitepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_sitepermission (id, user_id) FROM stdin;
1	3
2	4
3	7
\.


--
-- Data for Name: core_sitepermission_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY core_sitepermission_sites (id, sitepermission_id, site_id) FROM stdin;
1	1	1
2	2	1
3	3	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2014-01-28 13:49:56.411137+00	1	15	2	Stories	1	
2	2014-01-29 04:37:11.682049+00	1	3	2	TWAdmin	1	
3	2014-01-29 04:37:36.580567+00	1	3	2	TWAdmin	2	Changed password and is_superuser.
4	2014-01-29 04:38:06.639329+00	1	3	2	TWAdmin	2	Changed password and is_staff.
5	2014-01-29 04:39:08.698983+00	1	15	3	Policy Edits	1	
6	2014-01-29 04:41:27.553326+00	1	32	1	Livelihoods	1	
7	2014-01-29 04:44:45.417731+00	1	31	1	Chilika traditional fishers' struggle	1	
8	2014-01-29 04:46:56.825668+00	1	31	1	Chilika traditional fishers' struggle	2	Changed content.
9	2014-01-29 04:52:07.266029+00	1	31	1	Chilika traditional fishers' struggle	2	Changed content and article_author.
10	2014-01-29 04:58:25.356698+00	1	31	1	Chilika traditional fishers' struggle	2	Changed featured_image and content.
11	2014-01-29 04:59:33.034595+00	1	31	1	Chilika traditional fishers' struggle	2	Changed featured_image and content.
12	2014-01-29 10:46:19.601008+00	1	32	2	Alternative economies	1	
13	2014-01-29 10:50:01.879491+00	1	31	2	Homestay with a difference!	1	
14	2014-01-29 10:51:50.36012+00	1	15	4	About Vikalp	1	
15	2014-02-06 05:24:07.055937+00	1	3	3	aletha	1	
16	2014-02-06 05:25:54.263962+00	1	3	3	aletha	2	Changed password, is_staff and user_permissions.
17	2014-02-06 05:27:13.65647+00	1	3	3	aletha	2	Changed password and user_permissions.
18	2014-02-06 05:30:15.827501+00	1	3	3	aletha	2	Changed password and is_superuser.
19	2014-02-09 16:23:40.27382+00	3	32	3	Environment & Ecology	1	
20	2014-02-09 16:53:40.859292+00	3	31	3	Very Much on the Map: The Timbaktu Revolution	1	
21	2014-02-09 16:59:10.760086+00	3	31	4	Picking a Brighter Future	1	
22	2014-02-09 17:00:36.62614+00	3	31	3	Very Much on the Map: The Timbaktu Revolution	2	Changed content and keywords.
23	2014-02-09 17:00:51.46563+00	3	31	3	Very Much on the Map: The Timbaktu Revolution	2	Changed content and keywords.
24	2014-02-09 17:05:25.799961+00	3	32	4	Energy	1	
25	2014-02-09 17:06:59.361238+00	3	32	2	Alternative Economies	2	Changed title and category_long_description.
26	2014-02-09 17:10:24.585362+00	3	31	5	This home is free from clutter of power, water lines	1	
27	2014-02-09 17:15:29.030797+00	3	31	6	Taking Charge: Decentralised energy in India	1	
28	2014-02-09 17:16:04.382127+00	3	31	6	Taking Charge: Decentralised energy in India	2	Changed content, description and keywords.
29	2014-02-09 17:16:29.838504+00	3	31	6	Taking Charge: Decentralised energy in India	2	Changed content, description, gen_description and keywords.
30	2014-02-09 17:21:17.126968+00	3	32	4	Energy	2	Changed category_image.
31	2014-02-09 17:23:19.738782+00	3	15	5	Editorials	1	
32	2014-02-09 17:24:52.853326+00	3	15	3	Policy Edits	2	Changed in_menus, description and gen_description.
33	2014-02-09 17:25:25.758085+00	3	15	3	Editorials	2	Changed title and content.
34	2014-02-09 17:27:22.612485+00	3	14	3	Editorials	3	
35	2014-02-09 17:27:50.408441+00	3	15	5	Editorials	2	Changed content.
36	2014-02-09 17:34:04.269256+00	3	23	6	Contribute a story	1	
37	2014-02-09 17:34:20.436216+00	3	23	6	Contribute a story	2	Changed content, response and description.
38	2014-02-09 17:35:34.834601+00	3	23	6	Contribute a story	2	Changed content, response and description. Changed field_type for Field "Detailed Story Attachment".
39	2014-02-09 17:36:11.394945+00	3	23	6	Contribute a story	2	Changed content, response and description. Changed _order for Field "Story Description". Changed _order for Field "Detailed Story Attachment". Changed _order for Field "Remarks". Changed label and _order for Field "Link, if required".
40	2014-02-09 17:37:41.359781+00	3	16	7	Footer	1	
41	2014-02-09 17:39:05.247277+00	3	16	8	About Us	1	
42	2014-02-09 17:40:28.870763+00	3	16	8	Footer / About Us	2	No fields changed.
43	2014-02-09 17:41:42.062825+00	3	16	8	Footer / About Us	2	No fields changed.
44	2014-02-09 17:42:50.254948+00	3	16	8	Footer / About Us	2	No fields changed.
45	2014-02-09 17:43:42.152032+00	3	15	9	Footer / About Us / About Us	1	
46	2014-02-09 17:44:07.231202+00	3	14	9	Footer / About Us / About Us	3	
47	2014-02-09 17:44:37.69111+00	3	16	8	Footer / About Us	2	Changed slug.
48	2014-02-09 17:51:48.02396+00	3	15	10	Co-Hosts	1	
49	2014-02-09 17:58:57.600118+00	3	15	10	Footer / About Us / Co-Hosts	2	Changed content.
50	2014-02-09 18:00:00.770616+00	3	15	4	About Vikalp	2	Changed content and description.
51	2014-02-09 18:01:36.53473+00	3	15	4	About Vikalp	2	Changed content and description.
52	2014-02-09 18:01:50.181182+00	3	15	4	About Vikalp	2	Changed content and description.
53	2014-02-09 18:06:24.840646+00	3	15	10	Footer / About Us / Co-Hosts	2	Changed content.
54	2014-02-09 18:07:26.071687+00	3	15	10	Footer / About Us / Co-Hosts	2	Changed content.
55	2014-02-09 18:09:34.047772+00	3	16	11	Co-Hosts	1	
56	2014-02-09 18:11:45.101656+00	3	15	12	Credits	1	
57	2014-02-09 18:13:50.810443+00	3	15	12	Credits	2	Changed content.
58	2014-02-09 18:14:39.793636+00	3	16	13	Credits	1	
59	2014-02-09 18:16:14.669925+00	3	15	12	Credits	2	Changed content.
60	2014-02-09 18:16:59.628735+00	3	15	12	Credits	2	Changed content and in_menus.
61	2014-02-09 18:17:25.212144+00	3	15	12	Credits	2	Changed content and in_menus.
62	2014-02-09 18:17:36.010685+00	3	16	13	Credits	2	Changed slug.
63	2014-02-09 18:17:56.914444+00	3	16	13	Credits	2	No fields changed.
64	2014-02-09 18:19:25.3272+00	3	16	14	Contribute A story	1	
65	2014-02-09 18:23:22.779214+00	3	23	15	Contact Us	1	
66	2014-02-09 18:23:54.501469+00	3	23	15	Contact Us	2	Changed content, response, in_menus and description.
67	2014-02-09 18:24:17.054051+00	3	23	15	Contact Us	2	Changed content, response, in_menus and description.
68	2014-02-09 18:24:39.902136+00	3	16	16	Contact Us	1	
69	2014-02-09 18:27:18.119286+00	3	23	6	Contribute a story	2	Changed content, response and description.
70	2014-02-09 18:28:21.574968+00	3	15	17	Resources	1	
71	2014-02-09 18:28:38.421321+00	3	15	17	Resources	2	Changed content.
72	2014-02-09 18:29:15.356998+00	3	16	18	Resources	1	
73	2014-02-09 18:29:45.089119+00	3	15	17	Resources	2	Changed content and in_menus.
74	2014-02-09 18:38:21.287112+00	3	15	12	Credits	2	Changed content.
75	2014-02-09 18:40:25.473324+00	3	15	12	Credits	2	Changed content and in_menus.
76	2014-02-09 18:40:48.541259+00	3	16	13	Footer / Contact Us / Credits	2	Changed slug.
77	2014-02-09 18:41:02.326294+00	3	15	12	Credits	2	Changed content and in_menus.
78	2014-02-09 18:42:24.253543+00	3	15	10	About Vikalp / Co-Hosts	2	Changed content and in_menus.
79	2014-02-09 18:42:57.86214+00	3	15	10	About Vikalp / Co-Hosts	2	Changed content.
80	2014-02-09 18:44:04.374812+00	3	15	4	About Vikalp	2	Changed content and description.
81	2014-02-09 18:45:16.576615+00	3	15	4	About Vikalp	2	Changed content and description.
82	2014-02-09 18:45:52.91934+00	3	16	11	Footer / About Us / Co-Hosts	2	Changed slug.
83	2014-02-09 18:46:33.098943+00	3	15	10	About Vikalp / Co-Hosts	2	Changed content and in_menus.
84	2014-02-09 18:47:06.990625+00	3	15	10	About Vikalp / Co-Hosts	2	Changed content.
85	2014-02-09 18:47:28.61869+00	3	16	11	Footer / About Us / Co-Hosts	2	Changed slug.
86	2014-02-09 18:47:49.416003+00	3	16	11	Footer / About Us / Co-Hosts	2	Changed slug.
87	2014-02-09 18:48:32.295173+00	3	15	4	About Vikalp	2	Changed content and description.
88	2014-02-09 18:49:08.527643+00	3	15	4	About Vikalp	2	Changed content and description.
89	2014-02-09 18:49:41.314929+00	3	15	4	About Vikalp	2	Changed content and description.
90	2014-02-09 18:50:24.830246+00	3	15	4	About Vikalp	2	Changed content and description.
91	2014-02-09 18:51:22.364252+00	3	15	4	About Vikalp	2	Changed content and description.
92	2014-02-09 18:52:37.645967+00	3	16	11	Footer / About Us / Co-Hosts	2	No fields changed.
93	2014-02-09 18:53:11.899557+00	3	15	4	About Vikalp	2	Changed content and description.
94	2014-02-09 18:54:08.264671+00	3	16	11	Footer / About Us / Co-Hosts	2	Changed slug.
95	2014-02-09 18:54:46.660927+00	3	15	10	Co-Hosts	2	Changed content and slug.
96	2014-02-09 18:55:13.033623+00	3	23	15	Contact Us	2	Changed content, response, in_menus and description.
97	2014-02-09 18:55:38.957445+00	3	23	15	Contact Us	2	Changed content, response, in_menus and description.
98	2014-02-09 18:55:47.796846+00	3	16	16	Footer / Contact Us	2	Changed slug.
99	2014-02-09 18:56:19.178438+00	3	15	17	Resources	2	Changed content and in_menus.
100	2014-02-09 18:56:31.391199+00	3	16	18	Footer / Resources	2	Changed slug.
101	2014-02-09 18:56:42.963829+00	3	15	17	Resources	2	Changed content and in_menus.
102	2014-02-09 18:57:19.316611+00	3	16	14	Footer / Resources / Contribute A story	2	Changed slug.
103	2014-02-09 19:10:36.387372+00	3	31	7	Village of Water Birds	1	
104	2014-02-10 06:21:25.008312+00	3	31	7	Village of Water Birds	2	Changed content, article_author and keywords.
105	2014-02-10 06:32:21.399074+00	1	31	7	Village of Water Birds	2	Changed featured_image, content and keywords.
106	2014-02-10 06:38:11.734518+00	1	31	7	Village of Water Birds	2	Changed featured_image, content and keywords.
107	2014-02-10 07:00:24.058666+00	3	31	6	Taking Charge: Decentralised energy in India	2	Changed add_to_carousel.
108	2014-02-10 07:00:24.077028+00	3	31	2	Homestay with a difference!	2	Changed add_to_carousel.
109	2014-02-10 11:14:24.358769+00	1	15	5	Editorials	2	Changed content and slug.
110	2014-02-10 11:15:22.994479+00	1	32	5	Policy Edits	1	
111	2014-02-10 11:15:27.055776+00	1	31	7	Village of Water Birds	2	Changed article_categories, content and keywords.
112	2014-02-11 05:17:39.607767+00	3	32	2	Alternative Economies	2	No fields changed.
113	2014-02-11 05:21:33.517319+00	3	32	6	Learning and education	1	
114	2014-02-11 05:21:55.051103+00	3	32	6	Learning and Education	2	Changed title.
115	2014-02-11 05:23:07.851464+00	3	32	7	Society & Culture	1	
116	2014-02-11 05:23:17.860998+00	3	32	6	Learning & Education	2	Changed title.
117	2014-02-11 05:28:22.984614+00	3	32	8	Knowledge & Media	1	
118	2014-02-11 05:29:37.152257+00	3	32	9	Settlements	1	
119	2014-02-11 05:30:44.032851+00	3	32	10	Alternative Politics	1	
120	2014-02-11 05:31:29.122431+00	3	32	11	Transportation	1	
121	2014-02-11 05:32:10.247594+00	3	32	12	Health & Hygiene	1	
122	2014-02-11 05:36:40.084685+00	3	32	2	Alternative Economies	2	Changed category_image.
123	2014-02-11 05:37:51.673903+00	3	32	10	Alternative Politics	2	Changed category_image.
124	2014-02-11 05:38:29.957724+00	3	32	4	Energy	2	Changed category_image.
125	2014-02-11 05:39:00.250967+00	3	32	3	Environment & Ecology	2	Changed category_image.
126	2014-02-11 05:39:27.681413+00	3	32	12	Health & Hygiene	2	Changed category_image.
127	2014-02-11 05:40:00.652074+00	3	32	8	Knowledge & Media	2	Changed category_image.
128	2014-02-11 05:40:09.375151+00	3	32	8	Knowledge & Media	2	No fields changed.
129	2014-02-11 05:40:45.094052+00	3	32	6	Learning & Education	2	Changed category_image.
130	2014-02-11 05:41:49.198781+00	3	32	1	Livelihoods	2	Changed category_image and category_long_description.
131	2014-02-11 05:42:05.131138+00	3	32	5	Policy Edits	2	No fields changed.
132	2014-02-11 05:42:25.917048+00	3	32	9	Settlements	2	Changed category_image.
133	2014-02-11 05:42:42.148803+00	3	32	7	Society & Culture	2	Changed category_image.
134	2014-02-11 05:43:01.087998+00	3	32	11	Transportation	2	Changed category_image.
135	2014-02-11 06:03:35.40885+00	3	31	8	Bringing back the rainforest	1	
136	2014-02-11 06:15:44.918762+00	3	31	9	Being the Change:Jharcraft in Jharkhand	1	
137	2014-02-11 06:23:17.656437+00	3	31	10	Democracy in Ancient India	1	
138	2014-02-11 07:03:24.538181+00	3	31	11	Hunnarshala Builds Homes — and Entrepreneurs	1	
139	2014-02-12 04:31:22.006979+00	3	31	12	A bridge not too far	1	
140	2014-02-12 04:31:50.746052+00	3	31	12	A bridge not too far	2	Changed featured_image, content and keywords.
141	2014-02-12 04:32:24.145245+00	3	31	12	A bridge not too far	2	Changed article_categories, content and keywords.
142	2014-02-12 04:32:50.570466+00	3	31	12	A bridge not too far	2	Changed promoted.
143	2014-02-12 04:34:40.853028+00	3	31	1	Chilika traditional fishers' struggle	2	Changed content.
144	2014-02-12 04:35:44.787053+00	3	31	1	Chilika traditional fishers' struggle	2	Changed content and add_to_carousel.
145	2014-02-12 05:02:01.589215+00	3	31	2	Homestay with a difference!	2	Changed content.
146	2014-02-12 05:22:45.818544+00	3	31	13	India’s move to e-governance exposes ancient flaws	1	
147	2014-02-12 05:52:58.700623+00	3	31	14	Consumer Complaints through Community Radio in Mewat, Haryana	1	
148	2014-02-12 05:54:24.209635+00	3	31	14	Consumer Complaints through Community Radio in Mewat, Haryana	2	Changed content and keywords.
149	2014-02-12 05:57:35.970967+00	3	31	15	 Enabling youth action to save the ecologically fragile Himalayas from ‘development’-induced destruction. 	1	
150	2014-02-12 06:27:15.266865+00	3	31	16	Energy (R)evolution: Sustainable energy outlook for India	1	
151	2014-02-12 06:34:01.358537+00	3	31	17	Swasthya Swara - Traditional Healing through On-line Network accessed through cell phones	1	
152	2014-02-12 13:00:28.953374+00	3	31	18	School Without Walls, Symantak, Sindhudurg, Maharashtra	1	
153	2014-02-12 13:09:44.915929+00	3	31	19	Sustainability framework for India	1	
154	2014-02-12 13:11:55.134417+00	1	32	2	Alternative Economies	2	Changed category_image.
155	2014-02-12 13:18:29.715626+00	1	32	10	Alternative Politics	2	Changed category_image.
156	2014-02-12 13:21:42.212625+00	1	32	4	Energy	2	Changed category_image.
290	2014-02-19 07:14:13.500339+00	4	15	26	Events	1	
157	2014-02-12 13:21:58.285135+00	1	32	10	Alternative Politics	2	Changed category_image.
158	2014-02-12 13:22:12.580599+00	1	32	3	Environment & Ecology	2	Changed category_image.
159	2014-02-12 13:22:24.097663+00	1	32	12	Health & Hygiene	2	Changed category_image.
160	2014-02-12 13:22:40.244448+00	1	32	8	Knowledge & Media	2	Changed category_image.
161	2014-02-12 16:23:56.178508+00	1	15	4	About Vikalp	2	Changed content and description.
162	2014-02-12 16:24:20.699015+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content and slug.
163	2014-02-12 16:25:06.126653+00	1	15	4	About Vikalp	2	Changed content and description.
164	2014-02-12 16:26:42.799679+00	1	15	4	About Vikalp	2	Changed content and description.
165	2014-02-12 16:26:58.394383+00	1	16	11	Footer / About Us / Co-Hosts	2	Changed slug.
166	2014-02-12 16:36:52.911181+00	1	23	6	Contribute a story	2	Changed content, response, in_menus and description. Changed required for Field "Email Id". Changed required for Field "Story Location". Changed required for Field "Link, if required". Changed required for Field "Detailed Story Attachment". Changed required for Field "Remarks".
167	2014-02-12 16:37:53.567494+00	1	23	6	Contribute a story	2	Changed content, response and description.
168	2014-02-12 16:38:14.601421+00	1	23	6	Contribute	2	Changed title, content, response and description.
169	2014-02-12 16:42:36.211929+00	1	15	4	About Vikalp	2	Changed content, slug and description.
170	2014-02-12 17:18:25.219611+00	3	31	7	Village of Water Birds	2	Changed article_categories, content and keywords.
171	2014-02-12 17:19:29.143124+00	3	31	9	Being the Change:Jharcraft in Jharkhand	2	Changed content and keywords.
172	2014-02-12 17:22:50.676175+00	3	31	9	Being the Change:Jharcraft in Jharkhand	2	Changed featured_image, content and keywords.
173	2014-02-12 17:32:15.916806+00	3	31	20	The unlikely radio stars of an Indian village	1	
174	2014-02-12 17:50:43.266175+00	3	31	21	Mobile Vaani - Community Radio in Jharkhand	1	
175	2014-02-12 17:57:14.771858+00	3	31	22	Cell phone-based networking system in the forests??	1	
176	2014-02-12 17:57:28.642678+00	3	31	22	Cell phone-based networking system in the forests??	2	Changed keywords.
177	2014-02-12 18:12:55.692043+00	3	31	23	Beeja Vidyapeeth - Seed conservation initiative in Uttarakhand	1	
178	2014-02-12 18:13:35.293412+00	3	31	23	Beeja Vidyapeeth - Seed conservation initiative in Uttarakhand	2	Changed content.
179	2014-02-12 18:15:31.063659+00	3	31	21	Mobile Vaani - Community Radio in Jharkhand	2	Changed content, latitude and longitude.
180	2014-02-12 18:17:02.387341+00	3	31	22	Cell phone-based networking system in the forests??	2	Changed latitude, longitude and keywords.
181	2014-02-12 18:19:58.337953+00	3	31	20	The unlikely radio stars of an Indian village	2	Changed article_author, latitude, longitude and keywords.
182	2014-02-12 18:33:29.938932+00	3	31	24	Baigas of central India battle for their forest rights	1	
183	2014-02-12 18:41:44.975198+00	3	31	17	Traditional Healing via Technology?	2	Changed title, content and keywords.
184	2014-02-12 18:44:25.03152+00	3	31	15	 Enabling youth towards saving ‘development’-induced destruction. 	2	Changed title and keywords.
185	2014-02-13 09:10:25.694576+00	1	23	6	Contribute	2	Changed content, response, email_copies, email_subject and description. Changed help_text for Field "Email Id". Changed help_text for Field "Story Location".
186	2014-02-13 11:27:14.063109+00	1	23	6	Contribute	2	Changed content, response, email_copies, email_subject and description.
187	2014-02-14 05:15:22.104541+00	3	31	25	Mangarbani sacred grove near Delhi	1	
188	2014-02-14 05:15:46.669761+00	3	31	25	Mangarbani sacred grove near Delhi	2	Changed article_categories, content and keywords.
189	2014-02-14 05:37:45.581739+00	3	31	26	Community-led conservation in India	1	
190	2014-02-14 05:42:11.775995+00	3	31	25	Mangarbani sacred grove near Delhi	2	Changed status, featured_image, content and keywords.
191	2014-02-14 05:44:54.262316+00	3	31	18	School Without Walls, Symantak, Sindhudurg, Maharashtra	2	Changed featured_image, content, promoted and keywords.
192	2014-02-14 05:46:31.664542+00	3	31	18	School Without Walls, Symantak, Sindhudurg, Maharashtra	2	Changed content and keywords.
193	2014-02-14 05:48:55.400105+00	3	31	18	School Without Walls, Symantak, Sindhudurg, Maharashtra	2	Changed content and keywords.
194	2014-02-14 06:11:05.560833+00	3	31	27	Surendra Kaulogi and the weaving community at Melkote	1	
195	2014-02-14 06:13:55.131771+00	3	31	27	Surendra Kaulogi and the weaving community at Melkote	2	Changed content.
196	2014-02-14 06:34:32.636677+00	3	31	28	Localise to save the world! Lessons from Mendha Lekha	1	
197	2014-02-14 06:34:44.677789+00	3	31	28	Localise to save the world! Lessons from Mendha Lekha	2	Changed promoted.
198	2014-02-14 07:00:52.444753+00	3	23	6	Contribute	2	Changed content, response and description. Changed help_text for Field "Story Location".
199	2014-02-14 07:01:45.221336+00	3	23	6	Contribute	2	Changed content, response and description. Changed help_text for Field "Story Location".
200	2014-02-14 07:03:07.722463+00	3	23	6	Contribute	2	Changed content, response and description. Changed help_text for Field "Story Location".
201	2014-02-14 07:15:41.939045+00	3	15	17	Resources	2	Changed content.
202	2014-02-17 06:44:43.552304+00	1	15	12	Credits	2	Changed content.
203	2014-02-17 06:44:56.597997+00	1	15	12	Credits	2	Changed content.
204	2014-02-17 07:02:46.900441+00	1	31	29	On biases in news reporting	1	
205	2014-02-17 12:40:55.966915+00	1	15	19	Contribute / Story Categories	1	
206	2014-02-17 12:41:12.585678+00	1	15	19	Contribute / Story Categories	2	Changed content, in_menus and description.
207	2014-02-17 12:41:47.541391+00	1	16	20	Footer / Resources / Story Categories	1	
208	2014-02-17 12:45:15.22693+00	1	16	20	Footer / Resources / Story Categories	2	No fields changed.
209	2014-02-17 12:45:54.222819+00	1	23	6	Contribute	2	Changed content, response and description.
210	2014-02-17 12:46:58.909373+00	1	15	21	Contribute / Story Guidelines	1	
211	2014-02-17 12:47:49.676592+00	1	15	21	Contribute / Story Guidelines	2	Changed content and description.
212	2014-02-17 12:48:07.005244+00	1	15	21	Contribute / Story Guidelines	2	Changed content, in_menus and description.
213	2014-02-17 12:48:30.310588+00	1	23	6	Contribute	2	Changed content, response and description.
214	2014-02-17 12:48:56.427741+00	1	23	6	Contribute	2	Changed content, response and description.
215	2014-02-17 12:52:48.722553+00	1	15	21	Contribute / Story Guidelines	2	Changed content, in_menus and description.
216	2014-02-17 12:53:51.78721+00	1	15	21	Contribute / Story Guidelines	2	Changed content, in_menus and description.
217	2014-02-17 12:54:42.900797+00	1	15	21	Contribute / Story Guidelines	2	Changed content, in_menus and description.
218	2014-02-18 09:19:06.162558+00	1	16	11	Footer / About Us / Co-Hosts	2	No fields changed.
219	2014-02-18 09:19:19.941873+00	1	16	8	Footer / About Us	2	Changed slug.
220	2014-02-18 09:20:21.407557+00	1	14	11	Footer / About Us / Co-Hosts	3	
221	2014-02-18 09:20:34.814941+00	1	16	8	Footer / About Us	2	Changed slug.
222	2014-02-18 09:20:37.845597+00	1	16	8	Footer / About Us	2	No fields changed.
223	2014-02-18 09:21:45.716631+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content and slug.
224	2014-02-18 09:22:00.373122+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content and slug.
225	2014-02-18 09:22:39.060503+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content and slug.
226	2014-02-18 09:23:16.763511+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content and slug.
227	2014-02-18 09:24:36.000158+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content.
228	2014-02-18 09:25:15.584191+00	1	15	4	About Vikalp	2	Changed content and description.
229	2014-02-18 09:25:54.065522+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content and slug.
230	2014-02-18 09:26:58.532593+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content.
231	2014-02-18 09:27:21.752087+00	1	15	4	About Vikalp	2	Changed content and description.
232	2014-02-18 09:27:53.322533+00	1	15	4	About Vikalp	2	Changed content and description.
233	2014-02-18 09:28:58.539008+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content and in_menus.
234	2014-02-18 09:29:51.324203+00	1	15	10	About Vikalp / Co-Hosts	2	Changed content and in_menus.
235	2014-02-18 09:30:30.612426+00	1	16	22	Footer / Resources / Stories by Location	1	
236	2014-02-18 09:30:34.91117+00	1	16	22	Footer / Resources / Stories by Location	2	No fields changed.
237	2014-02-18 09:32:05.790146+00	1	15	23	Resources / Story Guidelines	1	
238	2014-02-18 09:32:49.569113+00	1	15	21	Contribute / Story Guidelines	2	Changed content, in_menus and description.
239	2014-02-18 09:33:50.841093+00	1	16	24	Footer / Guidelines to contribute	1	
240	2014-02-18 09:35:15.805851+00	1	16	24	Footer / Guidelines to contribute	2	No fields changed.
241	2014-02-18 09:35:31.034905+00	1	16	14	Footer / Guidelines to contribute / Contribute A story	2	No fields changed.
242	2014-02-18 09:36:14.854395+00	1	16	22	Footer / Resources / Stories on Map	2	Changed title.
243	2014-02-18 09:38:46.277754+00	1	15	17	Resources	2	Changed content and in_menus.
244	2014-02-18 10:44:59.618341+00	1	16	22	Footer / Resources / Stories on Map	2	No fields changed.
245	2014-02-18 11:41:39.677723+00	1	31	7	Village of Water Birds	2	Changed content and keywords.
246	2014-02-18 11:42:15.207268+00	1	31	9	Being the Change:Jharcraft in Jharkhand	2	Changed featured_image, content and keywords.
247	2014-02-18 11:43:37.189524+00	1	31	9	Being the Change:Jharcraft in Jharkhand	2	Changed content and keywords.
248	2014-02-18 11:45:25.802314+00	1	31	12	A bridge not too far	2	Changed content and keywords.
249	2014-02-18 11:46:52.842254+00	1	31	19	Sustainability framework for India	2	Changed content and keywords.
250	2014-02-18 11:47:57.96028+00	1	31	26	Community-led conservation in India	2	Changed content.
251	2014-02-18 11:48:29.983506+00	1	31	25	Mangarbani sacred grove near Delhi	2	Changed content and keywords.
252	2014-02-18 11:48:56.358806+00	1	31	23	Beeja Vidyapeeth - Seed conservation initiative in Uttarakhand	2	Changed content.
253	2014-02-18 11:49:09.546638+00	1	31	24	Baigas of central India battle for their forest rights	2	Changed content and keywords.
254	2014-02-18 11:49:51.867019+00	1	31	23	Beeja Vidyapeeth - Seed conservation initiative in Uttarakhand	2	Changed content.
255	2014-02-18 11:57:13.035034+00	1	31	7	Village of Water Birds	2	Changed content and keywords.
256	2014-02-18 11:58:27.205932+00	1	31	7	Village of Water Birds	2	Changed content and keywords.
257	2014-02-18 12:00:05.283387+00	1	31	7	Village of Water Birds	2	Changed content and keywords.
258	2014-02-18 12:00:31.15953+00	1	31	7	Village of Water Birds	2	Changed content and keywords.
259	2014-02-18 12:01:08.160843+00	1	31	7	Village of Water Birds	2	Changed content and keywords.
260	2014-02-18 12:01:29.225784+00	1	31	7	Village of Water Birds	2	Changed content and keywords.
261	2014-02-18 12:04:11.229106+00	1	31	4	Picking a Brighter Future	2	Changed content and keywords.
262	2014-02-18 12:04:32.292681+00	1	31	4	Picking a Brighter Future	2	Changed content and keywords.
263	2014-02-18 12:04:46.147639+00	1	31	4	Picking a Brighter Future	2	Changed content and keywords.
264	2014-02-18 12:05:10.506366+00	1	31	4	Picking a Brighter Future	2	Changed featured_image, content and keywords.
265	2014-02-18 12:05:21.603962+00	1	31	4	Picking a Brighter Future	2	Changed content and keywords.
266	2014-02-18 12:09:02.820572+00	1	31	11	Hunnarshala Builds Homes — and Entrepreneurs	2	Changed content and keywords.
267	2014-02-18 12:09:58.922574+00	1	31	9	Being the Change:Jharcraft in Jharkhand	2	Changed content and keywords.
268	2014-02-18 12:11:25.035301+00	1	31	9	Being the Change:Jharcraft in Jharkhand	2	Changed content and keywords.
269	2014-02-18 12:14:48.994604+00	1	31	9	Being the Change:Jharcraft in Jharkhand	2	Changed content and keywords.
270	2014-02-18 12:15:06.983698+00	1	31	9	Being the Change:Jharcraft in Jharkhand	2	Changed content and keywords.
271	2014-02-18 13:51:47.693488+00	1	15	12	Credits	2	Changed content.
272	2014-02-18 17:34:12.471854+00	1	15	25	None	1	
273	2014-02-18 17:34:34.133638+00	1	14	25	None	3	
274	2014-02-19 06:22:48.788783+00	1	3	4	swati	1	
275	2014-02-19 06:28:15.460184+00	1	2	1	Content_Author	1	
276	2014-02-19 06:28:30.404335+00	1	3	4	swati	2	Changed password, is_staff and groups.
277	2014-02-19 06:28:57.443635+00	1	3	3	aletha	2	Changed password.
278	2014-02-19 06:35:00.684871+00	1	2	1	Content_Author	2	Changed permissions.
279	2014-02-19 06:35:32.771235+00	1	31	28	Localise to save the world! Lessons from Mendha Lekha	2	Changed content and keywords.
280	2014-02-19 06:37:31.874173+00	1	2	1	Content_Author	2	Changed permissions.
281	2014-02-19 06:42:54.864756+00	1	2	1	Content_Author	2	Changed permissions.
282	2014-02-19 06:44:45.029785+00	4	32	10	Alternative Politics	2	Changed category_description.
283	2014-02-19 06:45:15.251233+00	1	2	1	Content_Author	2	No fields changed.
284	2014-02-19 06:46:41.948329+00	1	3	4	swati	2	Changed password.
285	2014-02-19 06:50:28.685493+00	1	15	1	Home	2	Changed content, in_menus, _meta_title, description, gen_description and keywords.
286	2014-02-19 06:51:44.54342+00	1	15	1	Home	2	Changed content, description and keywords.
287	2014-02-19 07:03:42.699024+00	4	23	6	Contribute	2	Changed content, response and description. Changed help_text for Field "Name". Changed help_text for Field "Contact Number". Changed label and help_text for Field "Link, if available". Changed help_text for Field "Detailed Story Attachment". Changed help_text for Field "Remarks".
288	2014-02-19 07:04:37.326444+00	4	23	6	Contribute	2	Changed content, response and description. Changed help_text for Field "Detailed Story Attachment".
289	2014-02-19 07:07:38.044718+00	4	23	6	Contribute	2	Changed content, response and description.
291	2014-02-19 07:17:28.087527+00	4	15	26	Events	2	Changed content and description.
292	2014-02-19 07:21:39.045125+00	4	15	26	Events	2	Changed content, in_menus, _meta_title, description and gen_description.
293	2014-02-19 07:23:19.445177+00	4	15	26	Events	2	Changed content.
294	2014-02-19 07:31:26.628272+00	1	15	27	Contribute / Terms of Service	1	
295	2014-02-19 07:34:20.836666+00	1	15	27	Contribute / Terms of Service	2	Changed content, in_menus and description.
296	2014-02-19 07:36:38.348946+00	1	15	27	Contribute / Terms of Service	2	Changed content, in_menus and description.
297	2014-02-19 07:37:03.151815+00	1	16	28	Footer / Guidelines to contribute / Terms of Service	1	
298	2014-02-19 07:37:34.526122+00	1	16	28	Footer / Guidelines to contribute / Terms of Service	2	No fields changed.
299	2014-02-19 09:01:41.803992+00	1	3	4	swati	2	Changed password and is_superuser.
300	2014-02-19 09:40:08.844351+00	4	15	1	Home	2	Changed content and keywords.
301	2014-02-19 09:41:51.219704+00	4	15	2	Stories	2	Changed content, _meta_title, description, gen_description and keywords.
302	2014-02-19 09:42:23.724214+00	4	15	2	Stories	2	Changed content and keywords.
303	2014-02-19 09:44:00.3176+00	4	15	2	Stories	2	Changed content and keywords.
304	2014-02-19 09:49:34.562098+00	1	15	2	Stories	2	Changed content and keywords.
305	2014-02-19 11:25:33.962218+00	1	31	30	Climate Change and the Limits to the Growth-Oriented Model of Development: The Case of China and India	1	
306	2014-02-19 11:27:39.702029+00	1	31	30	Climate Change and the Limits to the Growth-Oriented Model of Development: The Case of China and India	2	Changed content and keywords.
307	2014-02-19 11:28:58.197579+00	1	31	30	Climate Change and Limits to Growth-Oriented Model of Development: Case of China and India	2	Changed title, content and keywords.
308	2014-02-19 11:29:10.948401+00	1	31	30	Climate Change and Limits to Growth-Oriented Model of Development: Case of China and India	2	Changed content and keywords.
309	2014-02-19 11:47:26.704782+00	4	3	5	pramod	1	
310	2014-02-19 11:47:34.479827+00	4	3	5	pramod	2	Changed password, is_staff and is_superuser.
311	2014-02-19 11:54:40.838774+00	1	31	31	Mendha Lekha residents gift all their farms to Gram Sabha	1	
312	2014-02-19 11:55:52.512111+00	1	31	31	Mendha Lekha residents gift all their farms to Gram Sabha	2	Changed content and keywords.
313	2014-02-19 11:59:19.178837+00	5	31	18	School Without Walls, Symantak, Sindhudurg, Maharashtra	2	Changed content, latitude, longitude and keywords.
314	2014-02-19 11:59:33.818167+00	1	31	31	Mendha Lekha residents gift all their farms to Gram Sabha	2	Changed content and keywords.
315	2014-02-19 12:00:38.134204+00	1	31	31	Mendha Lekha residents gift all their farms to Gram Sabha	2	Changed content and keywords.
316	2014-02-19 12:00:58.996727+00	5	3	5	pramod	2	Changed password, first_name, last_name and email.
317	2014-02-19 12:15:48.952077+00	4	15	27	Contribute / Terms of Service	2	Changed content, in_menus and description.
318	2014-02-19 12:15:53.631322+00	4	15	27	Contribute / Terms of Service	2	Changed content, in_menus and description.
319	2014-02-19 15:22:02.994454+00	4	31	32	The grassroots Lokpal	1	
320	2014-02-19 15:23:40.532381+00	4	31	32	The grassroots Lokpal	2	Changed content.
321	2014-02-19 15:29:09.004461+00	4	31	32	The grassroots Lokpal	2	Changed content and description.
322	2014-02-19 15:33:13.677557+00	4	31	32	The grassroots Lokpal	2	Changed content and keywords.
323	2014-02-19 15:44:23.627398+00	4	31	32	The grassroots Lokpal	2	Changed content.
324	2014-02-19 16:01:33.244459+00	4	31	32	The grassroots Lokpal	2	Changed publish_date.
325	2014-02-19 16:04:04.018051+00	4	31	32	The grassroots Lokpal	2	No fields changed.
326	2014-02-19 16:25:49.860127+00	4	31	29	On biases in news reporting	2	Changed article_author, content and keywords.
327	2014-02-20 05:23:12.162597+00	1	15	27	Contribute / Terms of Service	2	Changed content, in_menus and description.
328	2014-02-20 05:29:45.373407+00	1	15	21	Contribute / Story Guidelines	2	Changed content, in_menus and description.
329	2014-02-20 05:47:36.174113+00	1	23	6	Contribute	2	Changed content, response, email_copies and description.
330	2014-02-20 07:04:03.928484+00	1	31	33	Economic democracy	1	
331	2014-02-20 07:10:12.704582+00	1	31	33	Economic democracy	2	No fields changed.
332	2014-02-20 07:24:49.123727+00	1	31	1	Chilika traditional fishers' struggle	2	Changed add_to_carousel.
333	2014-02-20 07:24:49.164535+00	1	31	2	Homestay with a difference!	2	Changed add_to_carousel.
334	2014-02-20 07:24:49.223556+00	1	31	6	Taking Charge: Decentralised energy in India	2	Changed add_to_carousel.
335	2014-02-20 07:24:49.250203+00	1	31	7	Village of Water Birds	2	Changed add_to_carousel.
336	2014-02-20 07:24:49.301153+00	1	31	8	Bringing back the rainforest	2	Changed add_to_carousel.
337	2014-02-20 07:25:54.920591+00	1	31	34	Radical democracy	1	
338	2014-02-20 07:27:11.699958+00	1	31	35	Ecological sustainability	1	
339	2014-02-20 07:32:31.767768+00	1	31	35	Ecological sustainability	2	Changed content.
340	2014-02-20 07:35:08.10074+00	1	15	26	Events	2	Changed content.
341	2014-02-20 07:37:06.009739+00	1	32	9	Settlements and Transportation	2	Changed title and category_long_description.
342	2014-02-20 07:38:56.561597+00	1	32	9	Settlements and Transportation	2	Changed category_description.
343	2014-02-20 07:39:22.292223+00	1	32	9	Settlements & Transportation	2	Changed title.
344	2014-02-20 07:50:18.469355+00	1	32	11	Transportation	3	
345	2014-02-20 08:50:06.960271+00	1	32	13	Food and Water	1	
346	2014-02-20 08:51:04.701136+00	1	32	13	Food and Water	2	No fields changed.
347	2014-02-20 08:51:34.407701+00	1	15	19	Contribute / Story Categories	2	Changed content, in_menus and description.
348	2014-02-20 08:53:22.959308+00	1	15	4	About	2	Changed title, content and description.
349	2014-02-20 08:53:30.381803+00	1	15	4	About	2	Changed content and description.
350	2014-02-20 08:57:57.553842+00	1	15	10	About / Co-Hosts	2	Changed content and in_menus.
351	2014-02-20 09:01:51.645353+00	1	23	15	Contact Us	2	Changed content, response, email_copies and description. Changed label, field_type and help_text for Field "Email ID / Phone no".
352	2014-02-20 09:02:38.765243+00	1	23	15	Contact Us	2	Changed content, response and description.
353	2014-02-20 09:04:39.503956+00	1	23	15	Contact Us	2	Changed content, response and description. Changed required and choices for Field "Type of Request".
354	2014-02-20 09:07:07.948737+00	1	23	15	Contact Us	2	Changed content, response and description. Changed _order for Field "Type of Request". Changed _order for Field "Your Query / Comments / Feedback".
355	2014-02-20 09:08:35.26244+00	1	23	15	Contact Us	2	Changed content, response and description. Deleted Field "Type of Request".
356	2014-02-20 09:09:07.162682+00	1	23	15	Contact Us	2	Changed content, response and description.
422	2014-02-21 10:50:10.153055+00	1	31	42	'Ugly Indians' clean up Bangalore 	2	Changed content and keywords.
357	2014-02-20 09:11:00.134545+00	1	31	29	On biases in news reporting: Nikhil Sheth	2	Changed title, content and keywords.
358	2014-02-20 09:15:55.07978+00	1	31	29	On biases in news reporting: Nikhil Sheth	2	Changed content and keywords.
359	2014-02-20 09:17:00.357275+00	1	15	4	About	2	Changed content, description and gen_description.
360	2014-02-20 09:17:51.117656+00	1	15	4	About	2	Changed content.
361	2014-02-20 09:18:49.915482+00	1	15	4	About	2	Changed content and description.
362	2014-02-20 09:20:30.213583+00	1	31	2	Homestay with a difference!	2	Changed article_author, content, latitude and longitude.
363	2014-02-20 09:21:23.167106+00	1	31	2	Homestay with a difference!	2	Changed content.
364	2014-02-20 09:27:32.478219+00	1	31	28	Localise to save the world! Lessons from Mendha Lekha	2	Changed content and keywords.
365	2014-02-20 09:27:58.73056+00	1	31	28	Localise to save the world! Lessons from Mendha Lekha	2	Changed content and keywords.
366	2014-02-20 10:50:15.438815+00	1	15	27	Contribute / Terms of Service	2	Changed content, in_menus and description.
367	2014-02-21 04:29:29.429009+00	5	31	4	Picking a Brighter Future	2	Changed content, latitude, longitude and keywords.
368	2014-02-21 05:43:25.08343+00	1	15	4	About	2	Changed content.
369	2014-02-21 05:43:41.121504+00	1	15	4	About	2	Changed content.
370	2014-02-21 06:08:14.420289+00	1	31	36	Test Article	1	
371	2014-02-21 06:08:30.865737+00	1	31	36	Test Article	3	
372	2014-02-21 06:23:47.240901+00	4	31	32	The grassroots Lokpal	2	Changed content and description.
373	2014-02-21 06:33:26.506421+00	1	31	37	Test Article	1	
374	2014-02-21 06:33:43.693953+00	1	31	37	Test Article	3	
375	2014-02-21 06:37:13.559771+00	5	32	7	Society & Culture	2	Changed category_description.
376	2014-02-21 06:38:55.674785+00	5	32	13	Food and Water	2	Changed category_description.
377	2014-02-21 06:39:09.650038+00	5	32	6	Learning & Education	2	Changed category_description.
378	2014-02-21 06:39:17.525385+00	5	32	4	Energy	2	Changed category_description.
379	2014-02-21 06:39:50.768672+00	5	32	12	Health & Hygiene	2	Changed category_description.
380	2014-02-21 06:39:59.575561+00	5	32	8	Knowledge & Media	2	Changed category_description.
381	2014-02-21 06:42:44.086684+00	1	32	5	Policy Edits	2	Changed category_description and category_long_description.
382	2014-02-21 06:43:26.041329+00	1	31	38	Test Article	1	
383	2014-02-21 06:44:59.86962+00	1	31	38	Test Article	2	Changed content.
384	2014-02-21 06:45:19.117729+00	1	31	38	Test Article	3	
385	2014-02-21 06:57:32.038508+00	4	31	32	The Grassroots Lokpal	2	title, status, featured_image, content और keywords को बदला गया हैं
386	2014-02-21 06:57:34.676305+00	4	31	32	The Grassroots Lokpal	2	content और keywords को बदला गया हैं
387	2014-02-21 07:02:37.164938+00	4	3	6	nikhilsheth	1	
388	2014-02-21 07:06:57.599276+00	4	3	6	nikhilsheth	2	Changed password, first_name, last_name, email, is_staff and is_superuser.
389	2014-02-21 07:17:56.724328+00	4	31	32	The Grassroots Lokpal	2	Changed content, description and keywords.
390	2014-02-21 07:21:48.611313+00	4	31	32	The Grassroots Lokpal	2	Changed content and keywords.
391	2014-02-21 07:39:21.960375+00	4	31	39	Swasthya Swara : A Unique Community Health Solution	1	
392	2014-02-21 07:40:08.159598+00	4	31	39	Swasthya Swara : A Unique Community Health Solution	2	Changed article_categories, status and content.
393	2014-02-21 07:42:37.164475+00	4	31	39	Swasthya Swara : A Unique Community Health Solution	2	Changed article_categories and content.
394	2014-02-21 07:59:05.124122+00	6	31	29	Biases in news reporting	2	Changed title, content, related_posts, description and keywords.
395	2014-02-21 08:19:20.952485+00	4	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	1	
396	2014-02-21 08:51:28.949632+00	4	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	content மாற்றபட்டுள்ளது.
397	2014-02-21 09:05:40.754804+00	4	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed content, latitude, longitude and description.
398	2014-02-21 09:12:52.948561+00	6	31	29	Biases in news reporting	2	Changed content and keywords.
399	2014-02-21 09:14:28.439442+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	1	
400	2014-02-21 09:27:36.646745+00	1	15	4	About	2	Changed content and description.
401	2014-02-21 09:29:10.419795+00	4	31	42	'Ugly Indians' clean up Bangalore 	1	
402	2014-02-21 09:30:12.32874+00	4	31	42	'Ugly Indians' clean up Bangalore 	2	Changed article_categories, status and content.
403	2014-02-21 09:32:23.069796+00	4	31	42	'Ugly Indians' clean up Bangalore 	2	Changed content, description and keywords.
404	2014-02-21 09:33:43.097475+00	4	31	42	'Ugly Indians' clean up Bangalore 	2	Changed status, content and keywords.
405	2014-02-21 09:34:19.785614+00	4	31	39	Swasthya Swara : A Unique Community Health Solution	2	Changed status and content.
406	2014-02-21 09:36:56.071622+00	4	31	42	'Ugly Indians' clean up Bangalore 	2	Changed content and keywords.
407	2014-02-21 09:48:46.750782+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content, description and keywords.
408	2014-02-21 09:49:55.838849+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content, keywords and in_sitemap.
409	2014-02-21 09:52:55.74723+00	1	32	9	Settlements & Transport	2	title மாற்றபட்டுள்ளது.
410	2014-02-21 09:53:48.524145+00	1	32	9	Settlements and Transport	2	title மாற்றபட்டுள்ளது.
411	2014-02-21 09:55:51.759969+00	1	31	26	Community-led conservation in India	2	Changed featured_image and content.
412	2014-02-21 09:59:28.651829+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content and keywords.
413	2014-02-21 10:03:12.663505+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content and keywords.
414	2014-02-21 10:03:41.69918+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed status, content and keywords.
415	2014-02-21 10:05:18.400416+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content and keywords.
416	2014-02-21 10:19:31.994254+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content and keywords.
417	2014-02-21 10:24:37.531532+00	4	31	42	'Ugly Indians' clean up Bangalore 	2	Changed content and keywords.
418	2014-02-21 10:26:00.050469+00	4	31	42	'Ugly Indians' clean up Bangalore 	2	Changed status, content and keywords.
419	2014-02-21 10:41:29.321006+00	1	15	4	About	2	Changed content.
420	2014-02-21 10:45:38.420056+00	1	15	4	About	2	Changed content.
421	2014-02-21 10:48:12.489306+00	1	31	42	'Ugly Indians' clean up Bangalore 	2	Changed content and keywords.
423	2014-02-21 10:51:18.959372+00	1	31	42	'Ugly Indians' clean up Bangalore 	2	Changed content and keywords.
424	2014-02-21 10:57:46.918484+00	4	31	32	The Grassroots Lokpal	2	Changed content and keywords.
425	2014-02-21 10:58:54.834347+00	4	31	32	The Grassroots Lokpal	2	Changed content and keywords.
426	2014-02-21 10:59:56.901242+00	4	31	32	The Grassroots Lokpal	2	Changed content and keywords.
427	2014-02-21 11:11:10.481697+00	4	31	43	How central Indian tribes are coping with climate change impacts	1	
428	2014-02-21 11:12:28.56101+00	4	31	43	How central Indian tribes are coping with climate change impacts	2	Changed content and description.
429	2014-02-21 11:13:12.245146+00	4	31	43	How central Indian tribes are coping with climate change impacts	2	Changed content and keywords.
430	2014-02-21 11:15:04.284551+00	4	31	43	How central Indian tribes are coping with climate change impacts	2	Changed status, content and keywords.
431	2014-02-21 11:55:02.319443+00	4	31	44	The Nawabs Of Garo Hills (Butterfly-centered eco-tourism in Meghalaya)	1	
432	2014-02-21 11:55:08.849082+00	6	31	45	Swaraj University, Udaipur : Self designed learning	1	
433	2014-02-21 11:57:35.999202+00	4	31	44	The Nawabs Of Garo Hills (Butterfly-centered eco-tourism in Meghalaya)	2	Changed content and keywords.
434	2014-02-21 11:58:37.126811+00	4	31	44	The Nawabs Of Garo Hills (Butterfly-centered eco-tourism in Meghalaya)	2	Changed content and keywords.
435	2014-02-21 11:59:31.940384+00	4	31	44	The Nawabs Of Garo Hills (Butterfly-centered eco-tourism in Meghalaya)	2	Changed content and keywords.
436	2014-02-21 12:01:07.743235+00	4	31	44	The Nawabs Of Garo Hills (eco-tourism in Meghalaya)	2	Changed title, status, content and keywords.
437	2014-02-21 12:11:00.878859+00	4	31	44	The Nawabs Of Garo Hills (eco-tourism in Meghalaya)	2	Changed content and keywords.
438	2014-02-21 12:12:20.101436+00	4	31	44	The Nawabs Of Garo Hills (eco-tourism in Meghalaya)	2	Changed content and keywords.
439	2014-02-21 12:14:45.616772+00	6	31	45	Swaraj University, Udaipur : Self designed learning	2	Changed status, featured_image, content, latitude, longitude, related_posts, description and keywords.
440	2014-02-21 12:15:06.956237+00	4	31	43	How central Indian tribes are coping with climate change impacts	2	Changed content and keywords.
441	2014-02-21 12:36:05.989319+00	1	32	13	Food and Water	2	Changed category_image.
442	2014-02-21 12:37:59.185804+00	6	31	45	Swaraj University, Udaipur : Self designed learning	2	Changed article_categories, content and keywords.
443	2014-02-21 12:49:39.068361+00	1	32	13	Food and Water	2	Changed category_image.
444	2014-02-21 13:26:28.269364+00	1	32	13	Food and Water	2	Changed category_image.
445	2014-02-21 15:08:40.41014+00	6	31	45	Swaraj University, Udaipur : Self designed learning	2	Changed article_categories, content and keywords.
446	2014-02-22 04:56:31.155562+00	6	3	7	nikhiltest	1	
447	2014-02-22 04:58:03.854034+00	6	3	7	nikhiltest	2	Changed password, is_staff and user_permissions.
448	2014-02-22 05:42:06.490204+00	7	31	46	test article created by test user	1	
449	2014-02-22 05:44:15.982676+00	6	31	46	test article created by test user	2	Changed content.
450	2014-02-22 05:46:52.870964+00	6	3	7	nikhiltest	2	Changed password and user_permissions.
451	2014-02-22 05:48:02.516223+00	6	3	7	nikhiltest	2	Changed password and user_permissions.
452	2014-02-22 05:50:39.656121+00	6	3	7	nikhiltest	2	Changed password.
453	2014-02-22 05:53:31.267243+00	7	31	46	test article created by test user	2	Changed content.
454	2014-02-22 05:58:01.521224+00	6	2	2	Content_Creator_nikhil	1	
455	2014-02-22 05:58:37.092427+00	6	3	7	nikhiltest	2	Changed password, groups and user_permissions.
456	2014-02-22 06:57:28.173021+00	4	31	43	How central Indian tribes are coping with climate change impacts	2	Changed content and keywords.
457	2014-02-22 06:59:59.710483+00	4	31	43	How central Indian tribes are coping with climate change impacts	2	Changed content and keywords.
458	2014-02-22 07:02:25.714137+00	4	31	43	How central Indian tribes are coping with climate change impacts	2	Changed content and keywords.
459	2014-02-22 07:06:30.468606+00	7	31	46	test article created by test user	3	
460	2014-02-22 07:15:52.437629+00	4	31	19	Sustainability framework for India	2	Changed content and keywords.
461	2014-02-22 07:16:07.868763+00	6	31	45	Self designed learning at Swaraj University	2	Changed title, content and keywords.
462	2014-02-22 07:25:05.114691+00	4	31	19	Sustainability framework for India	2	Changed content and keywords.
463	2014-02-22 08:19:03.780678+00	6	15	26	Events	2	Changed content.
464	2014-02-22 08:40:16.627504+00	4	31	42	'Ugly Indians' clean up Bangalore 	2	Changed content and keywords.
465	2014-02-22 08:53:01.549566+00	6	15	26	Events	2	Changed content.
466	2014-02-22 08:54:35.035903+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content and keywords.
467	2014-02-22 08:56:28.621672+00	4	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed article_author, content and keywords.
468	2014-02-22 09:02:05.718646+00	4	31	32	The Grassroots Lokpal	2	Changed content and keywords.
469	2014-02-22 09:03:18.860898+00	4	31	32	The Grassroots Lokpal	2	Changed content and keywords.
470	2014-02-22 09:11:52.094457+00	4	31	32	The Grassroots Lokpal	2	Changed content and keywords.
471	2014-02-22 09:12:31.53743+00	4	31	32	The Grassroots Lokpal	2	Changed content and keywords.
472	2014-02-22 09:24:37.934972+00	4	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed content, latitude and longitude.
473	2014-02-22 09:31:37.452723+00	4	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed content.
474	2014-02-22 09:32:58.518053+00	4	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed content.
475	2014-02-22 09:39:56.544007+00	4	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed content.
476	2014-02-22 10:00:08.354909+00	1	23	6	Contribute	2	Changed content, response, email_copies and description.
477	2014-02-22 10:02:32.796204+00	1	23	6	Contribute	2	Changed content, response, email_copies and description.
478	2014-02-22 10:18:50.919783+00	6	31	47	test	1	
479	2014-02-22 10:21:29.726121+00	1	15	17	Resources	2	Changed content and in_menus.
480	2014-02-22 10:22:53.999048+00	1	15	17	Resources	2	Changed content and in_menus.
481	2014-02-22 10:24:23.99079+00	1	15	17	Resources	2	Changed content and in_menus.
482	2014-02-22 10:26:58.810969+00	1	15	17	Resources	2	Changed content and in_menus.
483	2014-02-22 10:30:05.759819+00	1	15	17	Resources	2	Changed content and in_menus.
484	2014-02-22 10:30:29.296292+00	1	15	17	Resources	2	Changed content and in_menus.
485	2014-02-22 10:53:52.10003+00	6	31	47	test	2	Changed status, article_author, content, latitude and longitude.
486	2014-02-22 11:19:36.589898+00	1	31	47	test	3	
487	2014-02-22 11:29:47.423704+00	6	23	6	Contribute	2	Changed content, response and description. Changed help_text for Field "Story Location". Changed help_text for Field "Detailed Story Attachment".
488	2014-02-22 11:32:19.392187+00	6	15	17	Resources	2	Changed content and in_menus.
489	2014-02-22 11:32:33.017125+00	6	15	17	Resources	2	Changed content and in_menus.
490	2014-02-23 11:24:41.252737+00	5	31	48	India’s women farmers become a force for change	1	
491	2014-02-23 11:33:21.649862+00	5	31	48	India’s women farmers become a force for change	2	Changed content, latitude, longitude and description.
492	2014-02-23 11:35:31.643392+00	5	31	48	India’s women farmers become a force for change	2	Changed content and keywords.
493	2014-02-23 11:38:29.205665+00	5	31	48	India’s women farmers become a force for change	2	Changed content and keywords.
494	2014-02-24 06:28:58.441175+00	4	31	48	India’s women farmers become a force for change	2	Changed content and keywords.
495	2014-02-24 08:40:37.43146+00	4	31	49	A Journey to the Sacred Forest of Sariska	1	
496	2014-02-24 08:50:49.106046+00	4	31	49	A Journey to the Sacred Forest of Sariska	2	Changed content, latitude, longitude and description.
497	2014-02-24 08:51:19.921829+00	4	31	49	A Journey to the Sacred Forest of Sariska	2	Changed content and keywords.
498	2014-02-24 08:56:28.268957+00	4	31	49	A Journey to the Sacred Forest of Sariska	2	Changed status, content and keywords.
499	2014-02-24 09:04:49.225703+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	1	
500	2014-02-24 09:06:11.959057+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed content and description.
501	2014-02-24 09:20:32.155429+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed content, latitude, longitude and keywords.
502	2014-02-24 09:21:14.334996+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed article_categories, content and keywords.
503	2014-02-24 09:21:58.114295+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed content and keywords.
504	2014-02-24 09:24:21.256478+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed content and keywords.
505	2014-02-24 09:31:18.970961+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed content and keywords.
506	2014-02-24 09:31:59.009656+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed content and keywords.
507	2014-02-24 09:40:25.803219+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed content and keywords.
508	2014-02-24 09:44:38.765717+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed content and keywords.
509	2014-02-24 09:46:54.47202+00	4	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed status, content and keywords.
510	2014-02-24 10:13:32.586734+00	5	31	48	India’s women farmers become a force for change	2	Changed status, content and keywords.
511	2014-02-24 10:19:16.047189+00	5	31	51	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	1	
512	2014-02-24 10:20:06.856316+00	5	31	51	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed slug.
513	2014-02-24 10:47:43.889897+00	4	31	52	Community-based Homestays: Innovation in Tourism	1	
514	2014-02-24 11:10:48.658808+00	4	31	52	Community-based Homestays: Innovation in Tourism	2	Changed content.
515	2014-02-24 11:12:03.2794+00	4	31	52	Community-based Homestays: Innovation in Tourism	2	Changed content.
516	2014-02-24 12:41:57.111854+00	4	31	52	Community-based Homestays: Innovation in Tourism	2	Changed content.
517	2014-02-24 12:47:24.647603+00	4	31	52	Community-based Homestays: Innovation in Tourism	2	Changed content, related_posts and description.
518	2014-02-24 12:49:12.838048+00	4	31	52	Community-based Homestays: Innovation in Tourism	2	Changed content.
519	2014-02-24 12:55:03.707386+00	5	31	51	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	No fields changed.
520	2014-02-24 12:56:57.064151+00	4	31	52	Community-based Homestays: Innovation in Tourism	2	Changed content and keywords.
521	2014-02-24 12:56:58.808281+00	5	31	51	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed content.
522	2014-02-24 13:08:32.800349+00	5	31	51	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed content, latitude and longitude.
523	2014-02-24 13:10:15.071331+00	5	31	51	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed status.
524	2014-02-24 13:11:20.099171+00	5	31	51	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed status.
525	2014-02-24 13:12:22.221355+00	5	31	51	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	3	
526	2014-02-24 13:26:33.315839+00	4	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed status and content.
527	2014-02-25 04:21:15.687961+00	3	31	53	Built to last (Houses to withstand extreme desert weather)	1	
528	2014-02-25 04:40:15.405481+00	3	31	54	Natwar Sarangi of Odisha, the individual revolutionary	1	
529	2014-02-25 04:55:18.866279+00	6	31	18	School Without Walls, Symantak, Sindhudurg, Maharashtra	2	Changed content and keywords.
530	2014-02-25 05:15:30.513717+00	3	31	55	Suitability of alternative systems for urban mass transport for indian cities	1	
531	2014-02-25 05:16:22.935726+00	3	31	55	Suitability of alternative systems for urban mass transport for indian cities	2	Changed content and keywords.
532	2014-02-25 05:23:00.010767+00	3	31	55	Suitability of alternative systems for urban mass transport for indian cities	2	Changed featured_image, content and keywords.
533	2014-02-25 05:25:48.360984+00	3	31	53	Built to last (Houses to withstand extreme desert weather)	2	Changed featured_image, content and keywords.
534	2014-02-25 05:27:11.047017+00	3	31	11	Hunnarshala Builds Homes — and Entrepreneurs	2	Changed featured_image, content and keywords.
535	2014-02-25 05:31:05.795616+00	4	31	18	School Without Walls, Syamantak, Sindhudurg, Maharashtra	2	Changed title, content and keywords.
536	2014-02-25 05:55:42.872557+00	3	31	56	Conservation through democratic governance 	1	
537	2014-02-25 05:55:57.923584+00	3	31	56	Conservation through democratic governance 	2	Changed content and keywords.
538	2014-02-25 06:17:11.961666+00	3	31	57	Lure of the homestay	1	
539	2014-02-25 06:28:45.623291+00	1	31	58	Test Article	1	
540	2014-02-25 06:29:10.513204+00	1	31	58	Test Article	3	
541	2014-02-25 06:34:59.577522+00	4	31	39	Swasthya Swara : A Unique Community Health Solution	2	Changed content and keywords.
542	2014-02-25 06:35:50.491942+00	4	31	39	Swasthya Swara : A Unique Community Health Solution	2	Changed status, content and keywords.
543	2014-02-25 07:21:58.503722+00	3	31	59	Community-based Homestays: Innovation in Tourism	1	
544	2014-02-25 07:24:12.454712+00	3	31	59	Community-based Homestays: Innovation in Tourism	2	Changed content and keywords.
545	2014-02-25 09:01:31.852576+00	4	31	60	A cycling India: To carve an alternative growth trail	1	
546	2014-02-25 09:03:59.722357+00	4	31	60	A cycling India: To carve an alternative growth trail	2	Changed content and description.
547	2014-02-25 09:04:50.29672+00	4	31	60	A cycling India: To carve an alternative growth trail	2	Changed content and keywords.
548	2014-02-25 09:08:37.763081+00	4	31	60	A cycling India: To carve an alternative growth trail	2	Changed content and keywords.
549	2014-02-25 10:01:46.727984+00	6	31	45	Self designed learning at Swaraj University	2	Changed content and keywords.
550	2014-02-25 10:14:01.995308+00	1	31	29	Biases in news reporting	2	Changed article_categories, content and keywords.
551	2014-02-25 11:56:11.821466+00	1	31	61	New Test Article	1	
552	2014-02-25 11:56:42.979421+00	1	31	61	New Test Article	3	
553	2014-02-25 11:59:21.922745+00	1	31	62	New Test Article	1	
554	2014-02-25 12:00:04.386346+00	1	31	62	New Test Article	3	
555	2014-02-25 12:20:55.100228+00	1	31	63	New Test Article	1	
556	2014-02-25 12:21:41.380247+00	1	31	63	New Test Article	3	
557	2014-02-25 13:03:11.463977+00	1	31	64	New Test Article	1	
558	2014-02-25 13:03:37.84499+00	1	31	64	New Test Article	3	
559	2014-02-25 13:07:12.661756+00	1	31	65	Test Article	1	
560	2014-02-25 13:07:36.297719+00	1	31	65	Test Article	3	
561	2014-02-25 13:50:05.982118+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	1	
562	2014-02-25 13:50:55.846136+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
563	2014-02-25 13:51:48.042701+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
564	2014-02-25 13:52:08.397689+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
565	2014-02-25 13:54:41.649909+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
566	2014-02-25 14:00:54.181697+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
567	2014-02-25 14:05:47.581349+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
568	2014-02-25 14:14:45.902221+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
569	2014-02-25 14:16:19.718281+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
570	2014-02-25 15:47:43.811594+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed content.
571	2014-02-25 15:48:35.839115+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed featured_image and content.
572	2014-02-25 16:11:42.13064+00	6	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	1	
573	2014-02-25 16:16:53.523604+00	6	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	2	Changed content.
574	2014-02-25 16:28:44.932953+00	6	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	2	Changed content.
575	2014-02-25 16:30:12.467925+00	6	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	2	Changed content and related_posts.
576	2014-02-25 16:31:05.781164+00	6	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	2	Changed content.
577	2014-02-25 16:34:37.015217+00	6	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	2	Changed featured_image and content.
578	2014-02-25 16:35:47.602056+00	6	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	2	Changed content.
579	2014-02-25 16:42:34.280264+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	1	
580	2014-02-25 16:43:15.849062+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed content.
581	2014-02-25 18:23:12.55176+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed content.
582	2014-02-25 18:23:52.41977+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed content.
583	2014-02-25 18:24:10.189035+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed content.
584	2014-02-25 18:24:28.511693+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed content.
585	2014-02-25 18:25:34.726301+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed content.
586	2014-02-25 18:30:39.487549+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed article_categories, featured_image, content and keywords.
587	2014-02-25 18:59:47.407362+00	6	31	69	Centre for Learning, Secunderabad	1	
588	2014-02-25 19:07:58.816222+00	6	31	69	Self-Assessment at Centre for Learning, Secunderabad	2	Changed title and content.
589	2014-02-25 19:11:24.564528+00	6	31	69	Self-Assessment at Centre for Learning, Secunderabad	2	Changed content, latitude, longitude and related_posts.
590	2014-02-25 19:11:50.621348+00	6	31	69	Self-Assessment at Centre for Learning, Secunderabad	2	Changed content.
591	2014-02-25 19:18:19.867314+00	6	31	70	School in the Forest : Gurukula Botanical Sanctuary, Kerala	1	
592	2014-02-25 19:54:39.055955+00	6	31	70	School in the Forest : Gurukula Botanical Sanctuary, Kerala	2	Changed content and description.
593	2014-02-25 19:55:11.563907+00	6	31	70	School in the Forest : Gurukula Botanical Sanctuary, Kerala	2	Changed content.
594	2014-02-25 19:55:52.331813+00	6	31	70	School in the Forest : Gurukula Botanical Sanctuary, Kerala	2	Changed content.
595	2014-02-25 19:57:12.543028+00	6	31	70	School in the Forest : Gurukula Botanical Sanctuary, Kerala	2	Changed content and related_posts.
596	2014-02-25 20:28:26.658838+00	6	31	71	Kanavu, Kerala : Where Learning Happens	1	
597	2014-02-25 20:28:57.39221+00	6	31	71	Kanavu, Kerala : Where Learning Happens	2	Changed content.
598	2014-02-25 20:31:12.597314+00	6	31	71	Kanavu, Kerala : Where Learning Happens	2	Changed content.
599	2014-02-26 02:54:43.564117+00	6	15	4	About	2	Changed content.
600	2014-02-26 02:55:06.315201+00	6	15	4	About	2	Changed content.
601	2014-02-26 02:57:14.200205+00	6	15	4	About	2	Changed content.
602	2014-02-26 02:57:43.097296+00	6	15	4	About	2	Changed content.
603	2014-02-26 03:03:33.208457+00	6	31	72	Local Alternatives to Globalized Development	1	
604	2014-02-26 03:04:13.973085+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
605	2014-02-26 03:05:11.748346+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
606	2014-02-26 03:06:13.007951+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
607	2014-02-26 03:10:39.179929+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
608	2014-02-26 03:20:39.976129+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
609	2014-02-26 03:28:58.264307+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content and description.
610	2014-02-26 03:29:58.474394+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
611	2014-02-26 03:38:29.615406+00	3	31	60	A cycling India: To carve an alternative growth trail	2	Changed content and keywords.
612	2014-02-26 03:38:41.550438+00	6	31	72	Local Alternatives to Globalized Development	2	Changed featured_image and content.
613	2014-02-26 03:39:38.577989+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
614	2014-02-26 03:40:41.541984+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
615	2014-02-26 03:41:35.852951+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
616	2014-02-26 03:42:36.121392+00	6	31	72	Local Alternatives to Globalized Development	2	Changed content.
617	2014-02-26 03:43:27.693098+00	3	32	9	Settlements & Transport	2	Changed title.
618	2014-02-26 03:43:54.641779+00	3	31	71	Kanavu, Kerala : Where Learning Happens	2	Changed content.
619	2014-02-26 04:10:03.479521+00	3	31	22	The new jungle drums	2	Changed title and keywords.
620	2014-02-26 04:15:24.689+00	3	31	39	Swasthya Swara : A Unique Community Health Solution	2	Changed content and keywords.
621	2014-02-26 04:20:00.063419+00	3	31	39	Swasthya Swara : A Unique Community Health Solution	2	Changed content and keywords.
622	2014-02-26 04:23:02.810556+00	3	31	53	Built to last	2	Changed title, content and keywords.
623	2014-02-26 04:53:29.934499+00	3	31	73	Torch bearers for millet seed security	1	
624	2014-02-26 04:53:57.435144+00	3	31	73	Torch bearers for millet seed security	2	Changed article_categories, content and keywords.
625	2014-02-26 05:05:03.778486+00	1	32	9	Settlements And Transport	2	Changed title.
626	2014-02-26 05:05:32.340838+00	1	32	9	Settlements And Transport	2	எந்த புலமும் மாறவில்லை.
627	2014-02-26 05:30:01.935571+00	1	15	10	About / Co-Hosts	2	Changed content and in_menus.
628	2014-02-26 05:30:03.395571+00	3	31	74	How do I explain Un-Schooling to skeptics?	1	
629	2014-02-26 05:30:26.45878+00	1	15	10	About / Co-Hosts	2	Changed content and in_menus.
630	2014-02-26 05:30:57.260227+00	3	31	74	How do I explain Un-Schooling to skeptics?	2	Changed status, content and keywords.
631	2014-02-26 06:57:34.168307+00	3	31	75	Aarohi - Organic Learning	1	
632	2014-02-26 18:33:10.128749+00	3	31	34	Radical democracy	2	Changed featured_image and content.
633	2014-02-26 18:55:11.529636+00	3	31	75	Aarohi - Organic Learning	2	Changed article_author, content, latitude, longitude and keywords.
634	2014-02-26 18:55:40.627584+00	3	31	75	Aarohi - Organic Learning	2	Changed status, content and keywords.
635	2014-02-26 18:55:56.65841+00	3	31	73	Torch bearers for millet seed security	2	Changed status.
636	2014-02-26 18:58:01.575573+00	6	31	76	Vigyan Ashram, Pabal, Pune 	1	
637	2014-02-26 19:02:41.891706+00	6	31	76	Vigyan Ashram, Pabal, Pune 	2	Changed content.
638	2014-02-26 19:07:52.883479+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	1	
639	2014-02-26 19:09:09.69994+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	2	Changed content and keywords.
640	2014-02-26 19:10:45.616776+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	2	Changed content and keywords.
641	2014-02-26 19:15:38.441275+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	2	Changed content and keywords.
642	2014-02-26 19:18:03.435095+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	2	Changed content and keywords.
643	2014-02-26 19:18:52.144251+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	2	Changed content and keywords.
644	2014-02-26 19:19:24.100947+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	2	Changed content and keywords.
645	2014-02-26 19:19:50.471504+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	2	Changed content and keywords.
646	2014-02-26 19:20:10.908752+00	3	31	77	Adharshila Learning Center, Madhya Pradesh, India	2	Changed content and keywords.
647	2014-02-26 19:35:33.697351+00	3	31	78	A Barefoot Journey to Tilonia	1	
648	2014-02-26 19:36:21.662965+00	3	31	78	A Barefoot Journey to Tilonia	2	Changed content and keywords.
649	2014-02-26 19:36:47.077985+00	3	31	78	A Barefoot Journey to Tilonia	2	Changed content and keywords.
650	2014-02-26 19:37:49.995521+00	3	31	78	A Barefoot Journey to Tilonia	2	Changed content and keywords.
651	2014-02-26 19:38:55.451029+00	3	31	78	A Barefoot Journey to Tilonia	2	Changed content and keywords.
652	2014-02-26 19:56:46.587766+00	3	31	79	Understanding Children Anew Beyond ‘Teacher-Taught’ Paradigm	1	
653	2014-02-26 19:57:32.910946+00	3	15	17	Resources	2	Changed content and in_menus.
654	2014-02-26 19:59:40.048172+00	3	31	79	Understanding Children Anew Beyond ‘Teacher-Taught’ Paradigm	2	Changed content and keywords.
655	2014-02-26 20:07:37.89432+00	3	15	29	Resources / Videos	1	
656	2014-02-26 20:10:12.324469+00	3	15	29	Resources / Videos	2	Changed content and in_menus.
657	2014-02-26 20:11:09.125866+00	3	15	29	Resources / Videos	2	Changed content and in_menus.
658	2014-02-26 20:15:25.768607+00	3	15	17	Resources	2	Changed content and in_menus.
659	2014-02-26 20:16:28.756666+00	3	15	29	Footer / Resources / Videos	2	Changed content and in_menus.
660	2014-02-26 20:20:46.643869+00	3	31	79	Understanding Children Anew Beyond ‘Teacher-Taught’ Paradigm	2	Changed content and keywords.
661	2014-02-26 20:20:55.845842+00	3	15	29	Footer / Resources / Videos	2	Changed content and in_menus.
662	2014-02-26 20:22:39.553809+00	3	15	17	Resources	2	Changed content and in_menus.
663	2014-02-27 06:24:43.590013+00	3	31	80	Life of Pi-yush- 21st Century activist, Salem	1	
664	2014-02-27 11:34:38.247705+00	4	31	72	Local Alternatives to Globalized Development	2	Changed content and description.
665	2014-02-27 11:38:13.963958+00	4	31	72	Local Alternatives to Globalized Development	2	Changed content.
666	2014-02-27 11:51:56.291062+00	4	31	72	Local Alternatives to Globalized Development	2	Changed content.
667	2014-02-27 11:52:38.522037+00	4	31	72	Local Alternatives to Globalized Development	2	Changed article_categories and content.
668	2014-02-27 12:12:25.629534+00	4	31	60	A cycling India: To carve an alternative growth trail	2	Changed content and keywords.
669	2014-02-27 12:13:16.212657+00	4	31	60	A cycling India: To carve an alternative growth trail	2	Changed content and keywords.
670	2014-02-27 14:20:01.773008+00	3	31	80	Life of Pi-yush- 21st Century activist, Salem	2	Changed article_categories, content and keywords.
671	2014-02-27 14:48:17.348396+00	3	31	49	A Journey to the Sacred Forest of Sariska	2	Changed content, latitude and longitude.
672	2014-02-27 14:53:23.951623+00	3	31	81	Bangalore bus Commuters' Forum	1	
673	2014-02-27 14:54:21.310542+00	3	31	81	Bangalore bus Commuters' Forum	2	Changed content and keywords.
674	2014-02-28 04:21:28.554543+00	3	32	13	Food and Water	2	Changed category_image.
675	2014-02-28 04:49:57.112156+00	3	32	13	Food and Water	2	Changed category_image.
676	2014-02-28 05:17:58.559364+00	1	32	13	Food and Water	2	Changed category_image.
677	2014-02-28 05:22:06.474792+00	1	32	13	Food and Water	2	Changed category_image.
678	2014-02-28 05:43:14.955836+00	3	31	82	Chandigarh Eco-cabs	1	
679	2014-02-28 05:48:12.61095+00	1	31	83	New Test Article	1	
680	2014-02-28 05:48:42.571185+00	1	31	83	New Test Article	3	
681	2014-02-28 05:59:27.335345+00	3	31	82	Chandigarh Eco-cabs	2	Changed content and keywords.
682	2014-02-28 06:03:14.805125+00	1	15	10	About / Co-Hosts	2	Changed content and in_menus.
683	2014-02-28 06:06:38.512442+00	3	31	84	Ecocabs in Fazilka	1	
684	2014-02-28 06:07:44.940648+00	1	15	10	About / Co-Hosts	2	Changed content and in_menus.
685	2014-02-28 06:07:51.48958+00	3	31	84	Ecocabs in Fazilka	2	Changed status.
686	2014-02-28 06:08:07.086843+00	3	31	82	Chandigarh Eco-cabs	2	Changed content, related_posts and keywords.
687	2014-02-28 06:08:36.560203+00	3	31	82	Chandigarh Eco-cabs	2	Changed content and keywords.
688	2014-02-28 06:08:47.526963+00	3	31	84	Ecocabs in Fazilka	2	Changed content and keywords.
689	2014-02-28 06:10:17.985802+00	3	31	84	Ecocabs in Fazilka	2	Changed content and keywords.
690	2014-02-28 06:26:00.029664+00	3	31	84	Ecocabs in Fazilka	2	Changed featured_image, content and keywords.
691	2014-02-28 09:06:06.072976+00	1	32	13	Food and Water	2	Changed category_image.
692	2014-02-28 09:07:21.218743+00	1	32	13	Food and Water	2	No fields changed.
693	2014-02-28 10:03:13.344825+00	6	31	76	Vigyan Ashram, Pabal, Pune 	2	Changed content, latitude, longitude, related_posts, description and keywords.
694	2014-02-28 10:22:39.864496+00	6	31	76	Vigyan Ashram, Pabal, Pune 	2	Changed content and keywords.
695	2014-02-28 10:24:48.253456+00	6	31	76	Vigyan Ashram, Pabal, Pune 	2	Changed status, content and keywords.
696	2014-02-28 10:25:22.524094+00	6	31	76	Vigyan Ashram, Pabal, Pune 	2	Changed publish_date, content and keywords.
697	2014-02-28 10:28:24.171851+00	6	31	76	Vigyan Ashram, Pabal, Pune 	2	Changed content and keywords.
698	2014-02-28 10:29:12.984276+00	6	31	76	Vigyan Ashram, Pabal, Pune 	2	Changed content and keywords.
699	2014-02-28 10:53:45.009303+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed status, content, latitude, longitude and related_posts.
700	2014-02-28 10:54:03.934049+00	6	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed publish_date and content.
701	2014-02-28 11:06:04.840079+00	6	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	2	Changed article_categories, status, publish_date, content, latitude, longitude and related_posts.
702	2014-02-28 11:10:58.585223+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed publish_date, content, latitude, longitude and keywords.
703	2014-02-28 11:23:04.727277+00	6	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed status, content and keywords.
704	2014-02-28 11:38:48.199101+00	6	31	69	Self-Assessment at Centre for Learning, Secunderabad	2	Changed status, publish_date, content and related_posts.
705	2014-02-28 11:47:40.022212+00	6	31	70	School in the Forest : Gurukula Botanical Sanctuary, Kerala	2	Changed publish_date and content.
706	2014-02-28 11:57:54.496474+00	6	31	70	School in the Forest : Gurukula Botanical Sanctuary, Kerala	2	Changed status, content, latitude, longitude, related_posts and keywords.
707	2014-02-28 12:00:07.799302+00	6	31	71	Kanavu, Kerala : Where Learning Happens	2	Changed publish_date, content, latitude and longitude.
708	2014-02-28 12:06:22.338293+00	6	31	71	Kanavu, Kerala : Where Learning Happens	2	Changed status, content, related_posts and keywords.
709	2014-03-01 06:25:53.795052+00	3	15	30	Resources / Learnings from Networks	1	
710	2014-03-01 06:26:37.243211+00	3	15	30	Resources / Learnings from Networks	2	Changed content and in_menus.
711	2014-03-01 06:30:45.066298+00	3	15	17	Resources	2	Changed content and in_menus.
712	2014-03-01 06:38:58.871752+00	3	15	30	Resources / Learnings from Networks	2	Changed content and in_menus.
713	2014-03-01 13:29:02.919192+00	3	15	30	Resources / Networks	2	Changed title, content and in_menus.
714	2014-03-01 13:30:17.428397+00	3	15	17	Resources	2	Changed content and in_menus.
715	2014-03-01 13:30:41.588654+00	3	15	30	Resources / Networks	2	Changed content, in_menus and slug.
716	2014-03-01 13:31:20.248673+00	3	15	17	Resources	2	Changed content and in_menus.
717	2014-03-02 05:51:40.67416+00	3	31	85	National Conference on Technology, Policy and Community: Small Experiments in Sustainability	1	
718	2014-03-02 05:55:48.567798+00	3	15	26	Events	2	Changed content.
719	2014-03-02 05:56:37.940789+00	3	31	85	National Conference on Technology, Policy and Community: Small Experiments in Sustainability	2	Changed content.
720	2014-03-02 06:05:03.621602+00	3	15	26	Events	2	Changed content.
721	2014-03-02 06:05:25.571846+00	3	31	85	National Conference on Technology, Policy and Community: Small Experiments in Sustainability	2	Changed status.
722	2014-03-02 06:17:32.795047+00	3	31	86	Participatory Budgeting in Pune : A critical review	1	
723	2014-03-02 06:18:28.198272+00	3	15	30	Resources / Networks	2	Changed content and in_menus.
724	2014-03-02 06:19:23.700751+00	3	31	86	Participatory Budgeting in Pune : A critical review	2	Changed status.
725	2014-03-02 06:19:46.191227+00	3	15	30	Resources / Networks	2	Changed status, content and in_menus.
726	2014-03-02 07:08:46.245099+00	3	31	87	Ignited Minds: Elango turns Kuthambakkam village as a model village	1	
727	2014-03-02 07:08:59.057135+00	3	31	87	Ignited Minds: Elango turns Kuthambakkam village as a model village	2	Changed status.
728	2014-03-02 07:12:31.890353+00	3	15	29	Resources / Videos	2	Changed content and in_menus.
729	2014-03-02 07:13:21.378533+00	3	31	87	Ignited Minds: Elango turns Kuthambakkam village as a model village	2	Changed content and keywords.
730	2014-03-02 07:21:25.13568+00	3	15	31	Resources / Presentations & Slideshows	1	
731	2014-03-02 07:27:06.058244+00	3	15	29	Resources / Visual & Audio resources	2	Changed title, content, in_menus and slug.
732	2014-03-02 07:28:10.061132+00	3	15	17	Resources	2	Changed content and in_menus.
733	2014-03-02 07:29:07.169618+00	3	15	17	Resources	2	Changed content and in_menus.
734	2014-03-02 07:29:39.438404+00	3	15	29	Resources / Visual & Audio resources	2	Changed content and in_menus.
735	2014-03-03 09:17:40.74158+00	1	15	26	Events	2	Changed content.
736	2014-03-03 09:18:26.727315+00	1	15	26	Events	2	Changed content.
737	2014-03-03 09:19:07.915015+00	1	15	26	Events	2	Changed content.
738	2014-03-03 09:19:45.144805+00	1	15	26	Events	2	Changed content.
739	2014-03-04 05:04:07.416134+00	3	31	88	Learning Un Learning Program	1	
740	2014-03-04 05:06:30.585575+00	3	31	88	Learning Un Learning Program	2	Changed content.
741	2014-03-04 05:07:05.578735+00	3	15	26	Events	2	Changed content.
742	2014-03-04 05:07:17.457933+00	3	31	88	Learning Un Learning Program	2	Changed status.
743	2014-03-04 05:08:51.035597+00	3	31	88	Learning Un Learning Program	2	Changed content.
744	2014-03-04 05:10:58.896945+00	3	15	26	Events	2	Changed content.
745	2014-03-04 05:27:18.950644+00	3	15	31	Resources / Presentations & Slideshows	2	Changed content and in_menus.
746	2014-03-04 05:28:02.464678+00	3	15	31	Resources / Presentations & Slideshows	2	Changed status, content and in_menus.
747	2014-03-04 06:11:37.712852+00	3	15	17	Resources	2	Changed content and in_menus.
748	2014-03-04 06:20:29.876571+00	3	15	31	Resources / Presentations & Slideshows	2	Changed status, content and in_menus.
749	2014-03-04 06:22:47.738653+00	3	15	31	Resources / Presentations & Slideshows	2	Changed content and in_menus.
750	2014-03-04 06:23:39.589729+00	3	15	31	Resources / Presentations & Slideshows	2	Changed content and in_menus.
751	2014-03-04 06:24:16.931228+00	3	15	31	Resources / Presentations & Slideshows	2	Changed content and in_menus.
752	2014-03-04 06:34:13.715661+00	1	15	31	Resources / Presentations & Slideshows	2	Changed content and in_menus.
753	2014-03-04 06:34:37.769516+00	1	15	31	Resources / Presentations & Slideshows	2	Changed content and in_menus.
754	2014-03-04 13:16:16.496544+00	3	15	31	Resources / Presentations & Slideshows	2	Changed status, content and in_menus.
755	2014-03-04 13:18:06.320842+00	3	15	30	Resources / Networks	2	Changed content and in_menus.
756	2014-03-04 13:18:57.009767+00	3	15	17	Resources	2	Changed content and in_menus.
757	2014-03-05 04:25:30.818331+00	3	15	32	Resources / Books & Reports	1	
758	2014-03-05 04:31:40.109839+00	3	15	32	Resources / Books & Reports	2	Changed content and in_menus.
759	2014-03-05 04:31:53.958307+00	3	15	17	Resources	2	Changed content and in_menus.
760	2014-03-06 14:09:54.082627+00	3	15	32	Resources / Books & Reports	2	Changed content and in_menus.
761	2014-03-06 14:10:36.356451+00	3	31	55	Suitability of alternative systems for urban mass transport for indian cities	3	
762	2014-03-06 14:32:14.28252+00	3	15	4	About	2	Changed content.
763	2014-03-06 15:09:52.544983+00	3	15	26	Events	2	Changed content.
764	2014-03-06 15:36:46.838606+00	3	31	89	The key to the handloom crisis	1	
765	2014-03-06 15:53:27.384692+00	3	31	89	The key to the handloom crisis	2	Changed status.
766	2014-03-06 16:05:40.417533+00	3	31	88	Learning Un Learning Program	2	Changed content and description.
767	2014-03-06 16:06:37.415453+00	3	31	86	Participatory Budgeting in Pune : A critical review	2	Changed content and description.
768	2014-03-06 16:09:12.250721+00	3	31	85	National Conference on Technology, Policy and Community: Small Experiments in Sustainability	2	Changed content and description.
769	2014-03-06 16:11:33.63209+00	3	31	88	Learning Un Learning Program	2	Changed content.
770	2014-03-06 16:12:11.312809+00	3	31	88	Learning Un Learning Program	2	Changed featured_image and content.
771	2014-03-06 16:13:51.487427+00	3	31	88	Learning Un Learning Program	2	Changed featured_image and content.
772	2014-03-06 16:19:44.728098+00	3	31	85	National Conference on Technology, Policy and Community: Small Experiments in Sustainability	2	Changed featured_image and content.
773	2014-03-06 16:30:19.90657+00	3	15	31	Resources / Presentations & Slideshows	2	Changed content and in_menus.
774	2014-03-06 16:42:48.172577+00	3	15	33	Resources / Newsletters & Websites	1	
775	2014-03-06 16:44:54.914848+00	3	15	17	Resources	2	Changed content and in_menus.
776	2014-03-06 16:47:06.05564+00	3	15	33	Resources / Newsletters & Websites	2	Changed status, content and in_menus.
777	2014-03-06 17:00:33.595912+00	3	31	90	Decentralising ration procurement in Odisha’s anganwadis	1	
778	2014-03-06 17:01:42.56761+00	3	31	90	Decentralising ration procurement in Odisha’s anganwadis	2	Changed content and keywords.
779	2014-03-06 17:20:16.528899+00	3	31	82	Chandigarh Eco-cabs	2	Changed featured_image, content and keywords.
780	2014-03-06 17:20:48.3817+00	3	31	81	Bangalore bus Commuters' Forum	2	Changed featured_image, content and keywords.
781	2014-03-06 17:21:13.775958+00	3	31	73	Torch bearers for millet seed security	2	Changed featured_image, content and keywords.
782	2014-03-06 17:21:45.718523+00	3	31	50	Sikkim ‘livelihood schools' to promote organic farming	2	Changed featured_image, content and keywords.
783	2014-03-06 17:22:16.668232+00	3	31	48	India’s women farmers become a force for change	2	Changed featured_image, content and keywords.
784	2014-03-06 17:24:21.531222+00	3	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed featured_image, content and keywords.
785	2014-03-06 17:24:59.43484+00	3	31	30	Climate Change and Limits to Growth-Oriented Model of Development: Case of China and India	2	Changed featured_image, content and keywords.
786	2014-03-06 17:25:42.728109+00	3	31	26	Community-led conservation in India	2	Changed featured_image and content.
787	2014-03-06 17:26:29.939797+00	3	31	15	 Enabling youth towards saving ‘development’-induced destruction. 	2	Changed featured_image and keywords.
788	2014-03-06 17:27:21.573087+00	3	31	14	Consumer Complaints through Community Radio in Mewat, Haryana	2	Changed featured_image, content and keywords.
789	2014-03-06 17:28:18.080706+00	3	31	10	Democracy in Ancient India	2	Changed featured_image, article_author, content and keywords.
790	2014-03-06 17:28:50.671384+00	3	31	13	India’s move to e-governance exposes ancient flaws	2	Changed featured_image, content and keywords.
791	2014-03-06 17:29:27.433719+00	3	31	19	Sustainability framework for India	2	Changed featured_image, content and keywords.
792	2014-03-06 17:37:49.868387+00	3	15	4	About	2	Changed content.
793	2014-03-06 17:38:42.890875+00	3	15	4	About	2	Changed content.
794	2014-03-06 18:30:14.19804+00	3	15	4	About	2	Changed content.
795	2014-03-06 18:33:21.512375+00	3	3	3	aletha	2	Changed password and email.
796	2014-03-07 03:13:54.275975+00	3	31	80	Life of Pi-yush- 21st Century activist, Salem	2	Changed article_categories, status, content and keywords.
797	2014-03-07 03:23:13.887733+00	3	31	91	Kerala Organic Farming Policy announced	1	
798	2014-03-07 03:25:05.58413+00	3	15	30	Resources / Networks	2	Changed content and in_menus.
799	2014-03-07 03:28:07.401475+00	3	15	30	Resources / Networks	2	Changed content and in_menus.
800	2014-03-07 04:16:53.813702+00	3	31	92	Decentralised Water and Energy Conservation in Urban Setting	1	
801	2014-03-07 04:19:58.43922+00	3	31	92	Decentralised Water and Energy Conservation in Urban Setting	2	Changed content and keywords.
802	2014-03-07 04:20:35.305542+00	3	31	92	Decentralised Water and Energy Conservation in Urban Setting	2	Changed featured_image, content and keywords.
803	2014-03-07 04:20:45.65766+00	3	31	92	Decentralised Water and Energy Conservation in Urban Setting	2	Changed status.
804	2014-03-07 04:38:54.909013+00	3	31	92	Decentralised Water and Energy Conservation in Urban Setting	2	Changed content, latitude, longitude and keywords.
805	2014-03-07 04:42:15.663631+00	3	31	11	In a Quake’s Wake, Hunnarshala Builds Homes — and Entrepreneurs	2	Changed title, content, latitude, longitude and keywords.
806	2014-03-07 04:46:19.839372+00	3	31	26	Community-led conservation in India	2	Changed content and related_posts.
807	2014-03-07 04:52:02.160199+00	3	31	25	Mangarbani sacred grove near Delhi	2	Changed content and keywords.
808	2014-03-07 04:52:38.198149+00	3	31	25	Mangarbani sacred grove near Delhi	2	Changed content and keywords.
809	2014-03-07 04:57:20.937698+00	3	31	40	The story of a principled chief conservator of forests in Bastar, Chhattisgarh	2	Changed content.
810	2014-03-07 05:01:06.569512+00	3	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content and keywords.
811	2014-03-07 05:03:57.202193+00	3	31	41	Tribals prefer traditional way of governance over Panchayati Raj	2	Changed content, related_posts and keywords.
812	2014-03-07 05:04:58.282681+00	3	31	56	Conservation through democratic governance 	2	Changed content, related_posts and keywords.
813	2014-03-07 05:44:58.980323+00	3	31	2	Homestay with a difference!	2	Changed content and related_posts.
814	2014-03-10 04:19:15.682174+00	3	31	39	Healing a Tradition	2	Changed title, content and keywords.
815	2014-03-10 04:24:42.110059+00	3	31	39	Swasthya Swara : A Unique Community Health Solution	2	Changed title, article_categories, content and keywords.
816	2014-03-10 04:27:23.937077+00	3	31	39	स्वास्थ्य Swara : A Unique Community Health Solution	2	Changed title, content and keywords.
817	2014-03-10 04:31:56.374328+00	3	31	17	Healing a Tradition	2	Changed title, content, related_posts and keywords.
818	2014-03-10 04:38:20.202966+00	3	31	39	स्वास्थ्य Swara : A Unique Community Health Solution	2	Changed content and keywords.
819	2014-03-10 04:38:57.599919+00	3	31	19	Sustainability framework for India	3	
820	2014-03-10 04:40:41.175556+00	3	15	32	Resources / Books & Reports	2	Changed content and in_menus.
821	2014-03-10 04:41:18.011842+00	3	15	17	Resources	2	Changed content and in_menus.
822	2014-03-10 04:41:43.092993+00	3	15	17	Resources	2	Changed content and in_menus.
823	2014-03-10 04:42:09.343027+00	3	15	30	Resources / Networks	2	Changed content and in_menus.
824	2014-03-10 04:43:32.029588+00	3	15	29	Resources / Visual & Audio resources	2	Changed content and in_menus.
825	2014-03-10 04:44:42.033576+00	3	15	31	Resources / Presentations & Slideshows	2	Changed content and in_menus.
826	2014-03-10 04:45:16.682669+00	3	15	32	Resources / Books & Reports	2	Changed content and in_menus.
827	2014-03-10 04:45:36.302714+00	3	15	33	Resources / Newsletters & Websites	2	Changed content and in_menus.
828	2014-03-10 05:01:22.3407+00	3	31	93	The Pellipadugu (AP) Declaration on Food Sovereignty	1	
829	2014-03-11 09:22:22.224311+00	1	31	93	The Pellipadugu (AP) Declaration on Food Sovereignty	2	Changed content, show_download_link and keywords.
830	2014-03-11 09:22:47.751828+00	1	31	93	The Pellipadugu (AP) Declaration on Food Sovereignty	2	Changed content, show_download_link and keywords.
831	2014-03-11 09:23:18.187618+00	1	31	92	Decentralised Water and Energy Conservation in Urban Setting	2	Changed content, show_download_link and keywords.
832	2014-03-11 09:24:25.235918+00	1	31	93	The Pellipadugu (AP) Declaration on Food Sovereignty	2	Changed content and keywords.
833	2014-03-11 09:24:29.945198+00	1	31	92	Decentralised Water and Energy Conservation in Urban Setting	2	Changed content and keywords.
834	2014-03-11 09:30:56.26166+00	1	31	88	Learning Un Learning Program	2	Changed content.
835	2014-03-11 10:32:25.197355+00	1	31	93	The Pellipadugu (AP) Declaration on Food Sovereignty	2	Changed content and keywords.
836	2014-03-13 10:28:26.548397+00	1	31	93	The Pellipadugu (AP) Declaration on Food Sovereignty	2	Changed featured_image, content and keywords.
837	2014-03-13 10:28:44.531149+00	1	31	92	Decentralised Water and Energy Conservation in Urban Setting	2	Changed featured_image, content and keywords.
838	2014-03-13 10:29:11.240633+00	1	31	91	Kerala Organic Farming Policy announced	2	Changed featured_image, content and keywords.
839	2014-03-13 10:29:52.156141+00	1	31	90	Decentralising ration procurement in Odisha’s anganwadis	2	Changed featured_image, content and keywords.
840	2014-03-13 10:30:33.146914+00	1	31	35	Ecological sustainability	2	Changed featured_image and content.
841	2014-03-13 10:30:51.905221+00	1	31	34	Radical democracy	2	Changed featured_image and content.
842	2014-03-13 10:31:10.662887+00	1	31	33	Economic democracy	2	Changed featured_image.
843	2014-03-13 10:32:06.347658+00	1	31	89	The key to the handloom crisis	2	Changed featured_image, content and keywords.
844	2014-03-13 10:32:56.55643+00	1	31	88	Learning Un Learning Program	2	Changed featured_image and content.
845	2014-03-13 10:33:33.240746+00	1	31	87	Ignited Minds: Elango turns Kuthambakkam village as a model village	2	Changed featured_image, content and keywords.
846	2014-03-13 10:33:52.984208+00	1	31	28	Localise to save the world! Lessons from Mendha Lekha	2	Changed featured_image, content and keywords.
847	2014-03-13 10:34:16.890168+00	1	31	18	School Without Walls, Syamantak, Sindhudurg, Maharashtra	2	Changed featured_image, content and keywords.
848	2014-03-13 10:34:37.71847+00	1	31	17	Healing a Tradition	2	Changed featured_image, content and keywords.
849	2014-03-13 10:39:26.55482+00	1	31	85	National Conference on Technology, Policy and Community: Small Experiments in Sustainability	2	Changed featured_image and content.
850	2014-03-13 10:39:43.934299+00	1	31	71	Kanavu, Kerala : Where Learning Happens	2	Changed featured_image, content and keywords.
851	2014-03-13 10:40:21.40944+00	1	31	70	School in the Forest : Gurukula Botanical Sanctuary, Kerala	2	Changed featured_image, content and keywords.
852	2014-03-13 10:40:39.296197+00	1	31	69	Self-Assessment at Centre for Learning, Secunderabad	2	Changed featured_image and content.
853	2014-03-13 10:40:56.138293+00	1	31	68	Adivasi Academy, Gujarat: Rescuing cultures of India, one word at a time	2	Changed featured_image, content and keywords.
854	2014-03-13 10:41:27.750344+00	1	31	88	Learning Un Learning Program	2	Changed featured_image and content.
855	2014-03-13 10:41:49.052739+00	1	31	86	Participatory Budgeting in Pune : A critical review	2	Changed featured_image and content.
856	2014-03-13 10:42:18.282848+00	1	31	67	Shikshantar, Udaipur : Towards an Organic Learning Community	2	Changed featured_image and content.
857	2014-03-13 10:42:36.936803+00	1	31	66	Manzil, Delhi : Opening doors, creating pathways	2	Changed featured_image and content.
858	2014-03-13 10:42:41.08132+00	1	31	76	Vigyan Ashram, Pabal, Pune 	2	Changed featured_image, content and keywords.
859	2014-03-13 10:42:45.746005+00	1	31	84	Ecocabs in Fazilka	2	Changed featured_image, content and keywords.
860	2014-03-13 10:42:50.015818+00	1	31	82	Chandigarh Eco-cabs	2	Changed featured_image, content and keywords.
861	2014-03-13 10:44:32.127082+00	1	31	35	Ecological sustainability	2	Changed featured_image and content.
862	2014-03-13 10:44:41.1593+00	1	31	33	Economic democracy	2	Changed featured_image.
863	2014-03-13 10:46:24.165796+00	1	32	2	Alternative Economies	2	Changed category_image.
864	2014-03-13 10:46:54.945881+00	1	32	10	Politics	2	Changed title and category_image.
865	2014-03-13 10:47:06.739887+00	1	32	2	Economics and Technologies	2	Changed title.
866	2014-03-13 10:47:25.811222+00	1	32	4	Energy	2	Changed category_image.
867	2014-03-13 10:47:51.9758+00	1	32	3	Environment And Ecology	2	Changed title and category_image.
868	2014-03-13 10:48:21.200109+00	1	32	12	Health And Hygiene	2	Changed title and category_image.
869	2014-03-13 10:48:40.473464+00	1	32	8	Knowledge And Media	2	Changed title and category_image.
870	2014-03-13 10:48:59.270194+00	1	32	6	Learning And Education	2	Changed title and category_image.
871	2014-03-13 10:50:07.21299+00	1	32	1	Livelihoods	2	Changed category_image.
872	2014-03-13 10:52:23.899573+00	1	32	5	Policy Perspectives	2	Changed title and category_image.
873	2014-03-13 10:52:59.406113+00	1	32	9	Settlements And Transport	2	Changed category_image.
874	2014-03-13 10:53:15.174759+00	1	32	7	Society, Culture And Peace	2	Changed title and category_image.
875	2014-03-13 10:53:37.86505+00	1	32	8	Knowledge And Media	2	Changed category_image.
876	2014-03-14 12:01:58.500294+00	1	15	5	Perspectives	2	Changed title and content.
877	2014-03-14 12:02:08.015925+00	1	23	6	Add Story	2	Changed title, content, response and description.
878	2014-03-18 12:43:38.561037+00	1	16	14	Footer / Contribute a Story	2	title को बदला गया हैं
879	2014-03-18 12:44:09.005298+00	1	16	24	Footer / Contribute a Story / Guidelines To Contribute	2	title को बदला गया हैं
880	2014-03-18 12:44:27.032786+00	1	16	28	Footer / Contribute a Story / Terms Of Service	2	title को बदला गया हैं
881	2014-03-19 06:23:43.113246+00	1	23	6	Add	2	Changed title, content, response, description and gen_description.
882	2014-03-24 12:06:21.81001+00	1	16	14	Footer / Contribute A Story	2	title மாற்றபட்டுள்ளது.
883	2014-03-26 06:04:33.641045+00	1	32	14	Blah	1	
884	2014-03-26 06:04:45.758913+00	1	32	14	Blah	3	
885	2014-03-31 06:22:05.558207+00	1	34	1	Test Title	1	
886	2014-03-31 06:24:09.803326+00	1	37	1	Blah in Test Title	1	
887	2014-03-31 06:24:56.756112+00	1	38	1	Blah in Test Title on 2014-03-31 11:46:15+05:30	2	No fields changed.
888	2014-03-31 06:26:10.954187+00	1	35	1	Vikalp Sangam <vikalp.github@gmail.com> to Test Title	1	
889	2014-03-31 06:26:37.184735+00	1	38	1	Blah in Test Title on 2014-03-31 11:46:15+05:30	2	Changed subscriptions.
890	2014-03-31 06:59:52.145225+00	1	35	2	admin@admin.com to Test Title	3	
891	2014-03-31 06:59:52.146912+00	1	35	1	Vikalp Sangam <vikalp.github@gmail.com> to Test Title	3	
892	2014-03-31 07:01:11.375646+00	1	38	1	Blah in Test Title on 2014-03-31 06:16:15+00:00	3	
893	2014-03-31 07:01:29.718468+00	1	37	1	Blah in Test Title	3	
894	2014-03-31 07:02:05.896405+00	1	34	1	Test Title	3	
895	2014-03-31 07:02:52.979068+00	1	34	2	New Stories On Vikalp Sangam	1	
896	2014-03-31 07:04:47.461062+00	1	35	6	admin@admin.com to New Stories On Vikalp Sangam	3	
897	2014-03-31 07:08:14.47773+00	1	37	2	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam	1	
898	2014-03-31 07:09:02.55955+00	1	38	2	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 11:57:39+05:30	2	No fields changed.
899	2014-03-31 07:19:33.196964+00	1	38	2	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 06:27:39+00:00	3	
900	2014-03-31 07:23:35.872636+00	1	35	9	ChandanKS <chandan.ks@outlook.com> to New Stories On Vikalp Sangam	3	
901	2014-03-31 07:23:35.874244+00	1	35	8	Chandan <chandan.911.ck@gmail.com> to New Stories On Vikalp Sangam	3	
902	2014-03-31 07:23:45.48124+00	1	35	7	Vikalp <vikalp.github@gmail.com> to New Stories On Vikalp Sangam	2	Changed name_field.
903	2014-03-31 08:21:00.296683+00	1	38	3	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 06:27:39.602638+00:00	3	
904	2014-03-31 08:23:12.612097+00	1	38	4	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 12:50:33+05:30	1	
905	2014-03-31 08:23:31.749013+00	1	38	4	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 07:20:33+00:00	3	
906	2014-03-31 08:24:08.554619+00	1	38	5	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 12:50:33+05:30	1	
907	2014-03-31 08:24:26.594823+00	1	38	5	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 07:20:33+00:00	3	
908	2014-03-31 08:25:05.909696+00	1	37	2	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam	2	No fields changed.
909	2014-03-31 08:25:20.939205+00	1	37	2	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam	3	
910	2014-03-31 08:26:10.097966+00	1	37	3	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam	1	
911	2014-03-31 08:26:32.076843+00	1	37	3	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam	2	Added article "BLAH".
912	2014-03-31 08:26:42.825269+00	1	38	6	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 13:54:17+05:30	1	
913	2014-03-31 08:27:07.215384+00	1	38	6	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 08:24:17+00:00	3	
914	2014-03-31 08:27:50.763283+00	1	38	7	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 13:57:32+05:30	1	
915	2014-03-31 08:28:26.329586+00	1	38	8	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 08:24:17.844106+00:00	3	
916	2014-03-31 08:28:26.331539+00	1	38	7	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 08:27:32+00:00	3	
917	2014-03-31 08:28:46.021587+00	1	38	9	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 13:54:17+05:30	2	No fields changed.
918	2014-03-31 08:28:53.705245+00	1	38	9	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 08:24:17+00:00	3	
919	2014-03-31 08:32:43.342886+00	1	38	10	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam on 2014-03-31 08:24:17.844106+00:00	3	
920	2014-03-31 08:44:54.070246+00	1	37	3	Vikalp Sangam Weekly Digest in New Stories On Vikalp Sangam	3	
921	2014-03-31 11:12:27.74445+00	1	34	2	New Stories On Vikalp Sangam	3	
922	2014-03-31 11:12:59.208622+00	1	34	3	Newsletter	1	
923	2014-03-31 11:13:47.974669+00	1	35	10	admin@admin.com to Newsletter	3	
924	2014-03-31 11:38:28.321881+00	1	37	4	Vikalp Sangam Weekly Digest in Newsletter	1	
925	2014-04-03 10:24:32.126532+00	1	32	5	Perspectives	2	Changed title.
926	2014-04-03 10:47:21.489695+00	1	31	94	Lorem Ispum!	1	
927	2014-04-03 10:49:19.486432+00	1	31	94	Lorem Ispum!	3	
928	2014-05-05 15:54:52.210501+00	1	31	93	The Pellipadugu (AP) Declaration on Food Sovereignty	2	Changed content and keywords.
929	2014-05-05 15:56:48.123686+00	1	31	93	The Pellipadugu (AP) Declaration on Food Sovereignty	2	Changed content and keywords.
930	2014-05-05 15:57:29.171051+00	1	31	92	Decentralised Water and Energy Conservation in Urban Setting	2	Changed content and keywords.
931	2014-05-05 15:57:47.622867+00	1	31	91	Kerala Organic Farming Policy announced	2	Changed content and keywords.
932	2014-05-05 15:58:00.937662+00	1	31	88	Learning Un Learning Program	2	Changed content.
933	2014-05-05 15:58:54.030278+00	1	31	85	National Conference on Technology, Policy and Community: Small Experiments in Sustainability	2	Changed content.
934	2014-08-03 11:15:56.455486+00	1	31	95	Random Title	1	
935	2014-08-03 11:29:06.135971+00	1	15	26	Events	2	Changed content and in_menus.
936	2014-08-03 11:29:19.303691+00	1	15	26	Events	2	Changed content and in_menus.
937	2014-08-03 11:36:03.304399+00	1	31	95	Random Title	3	
\.


--
-- Data for Name: django_comment_flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_comment_flags (id, user_id, comment_id, flag, flag_date) FROM stdin;
\.


--
-- Data for Name: django_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_comments (id, content_type_id, object_pk, site_id, user_id, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed) FROM stdin;
1	31	70	1	\N	Random	random@random.com		Test comment!!	2014-04-01 09:04:41.303414+00	10.0.2.2	t	f
2	31	70	1	\N	Random2	random@random.com		Test Comment 2!! This should come first!	2014-04-01 09:05:07.981034+00	10.0.2.2	t	f
3	31	70	1	\N	Random2Reply	random@random.com		Reply to second comment!	2014-04-01 09:05:27.039038+00	10.0.2.2	t	f
4	31	70	1	\N	Random2Reply2	random@random.com		Second reply to second comment!	2014-04-01 09:05:54.258541+00	10.0.2.2	t	f
5	31	28	1	1	Random	random@random.com		YoLo!!	2014-04-04 09:41:31.622647+00	10.0.2.2	t	f
6	31	30	1	1	YoLo!	random@random.com		Test Comment!	2014-04-04 09:41:59.813244+00	10.0.2.2	t	f
7	31	92	1	1	SomeOne	random@random.com		Just some random comment!	2014-04-04 09:42:31.116861+00	10.0.2.2	t	f
8	31	91	1	1	YoLo	random@random.com		No Comments!	2014-04-04 09:42:56.736487+00	10.0.2.2	t	f
9	31	91	1	1	YoLo	random@random.com		Some Comment!	2014-04-04 09:43:08.188672+00	10.0.2.2	t	f
10	31	82	1	1	YoLo	random@random.com		Random!	2014-04-04 09:43:30.010793+00	10.0.2.2	t	f
11	31	82	1	1	YoLo	random@random.com		Wooden Soul.	2014-04-04 09:43:38.327692+00	10.0.2.2	t	f
12	31	90	1	1	YoLo	random@random.com		YoLo YoLo YoLo YoLo YoLo YoLo YoLo YoLo YoLo YoLo!!!!!!!!!!!!!	2014-04-04 09:44:02.647841+00	10.0.2.2	t	f
14	31	49	1	1	YoLo	random@random.com		YoLo YoLo!!	2014-04-04 10:24:00.591359+00	10.0.2.2	t	f
13	31	89	1	1	YoLo	random@random.com		Test!	2014-04-04 10:22:56.697222+00	10.0.2.2	t	f
15	31	49	1	1	YoLo	random@random.com		Test!	2014-04-04 10:26:52.706408+00	10.0.2.2	t	f
16	31	89	1	1	YoLo	random@random.com		A	2014-04-04 10:27:24.064612+00	10.0.2.2	t	f
17	31	89	1	1	YoLo	random@random.com		B	2014-04-04 10:27:28.932417+00	10.0.2.2	t	f
18	31	29	1	1	YoLo	random@random.com		Nice Read!	2014-04-04 10:28:04.219908+00	10.0.2.2	t	f
19	31	28	1	1	YoLo	random@random.com		Test Comment!	2014-04-04 10:44:53.990391+00	10.0.2.2	t	f
20	31	29	1	1	YoLo	random@random.com		Kuch Bhi!	2014-04-04 10:45:20.488288+00	10.0.2.2	t	f
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	redirect	redirects	redirect
6	session	sessions	session
7	site	sites	site
8	migration history	south	migrationhistory
9	log entry	admin	logentry
10	comment	comments	comment
11	comment flag	comments	commentflag
12	Setting	conf	setting
13	Site permission	core	sitepermission
14	Page	pages	page
15	Rich text page	pages	richtextpage
16	Link	pages	link
17	Blog post	blog	blogpost
18	Blog Category	blog	blogcategory
19	Comment	generic	threadedcomment
20	Keyword	generic	keyword
21	assigned keyword	generic	assignedkeyword
22	Rating	generic	rating
23	Form	forms	form
24	Field	forms	field
25	Form entry	forms	formentry
26	Form field entry	forms	fieldentry
27	Gallery	galleries	gallery
28	Image	galleries	galleryimage
29	Twitter query	twitter	query
30	Tweet	twitter	tweet
31	article	vikalp	article
32	article category	vikalp	articlecategory
33	kv store	thumbnail	kvstore
34	newsletter	newsletter	newsletter
35	subscription	newsletter	subscription
36	article	newsletter	article
37	message	newsletter	message
38	submission	newsletter	submission
39	custom user	auth	customuser
40	extension user	auth	extensionuser
41	custom permissions user	auth	custompermissionsuser
42	is active test user1	auth	isactivetestuser1
43	custom user non unique username	auth	customusernonuniqueusername
44	custom user bad required fields	auth	customuserbadrequiredfields
45	concrete model	contenttypes	concretemodel
46	foo without url	contenttypes	foowithouturl
47	foo with url	contenttypes	foowithurl
48	foo with broken absolute url	contenttypes	foowithbrokenabsoluteurl
49	proxy model	contenttypes	proxymodel
50	test model	sitemaps	testmodel
51	test model	endless_pagination	testmodel
\.


--
-- Data for Name: django_redirect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_redirect (id, site_id, old_path, new_path) FROM stdin;
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
23gw4ds4twevlo941ud6hov5mrzy8kkd	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 11:41:23.365764+00
fa85i4pedz6h1pi8gxct4wqtjkmbe9au	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-11 13:49:30.105+00
q1oqygtw2nh51fmnx2pvy9r2zr57o8gx	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-06 05:48:23.284817+00
x0v37nns9duhg1s5ztsi1pksp66rqyza	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-12 04:36:07.195372+00
wnb5sdezvnpxk5a6s97lecp3qu0a7hjl	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-02-20 05:31:20.292301+00
0jiwelnabrcwrl479t6t6q27p4dxpw2b	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-02-27 11:27:17.958412+00
0a3c2k1294vvo000q8q8jwj7dsbz72kn	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-12 07:24:27.455272+00
qdr61stmm8j1096zt6o2ummchmt8mi0b	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-02-27 12:03:32.811186+00
cshcjqmzzuomqlxdvf80lcpzi08xyfdw	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-13 05:20:57.756625+00
zw92m4ipqqs70a9dxl3id48cs5dlibop	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-02-23 19:13:08.92998+00
0tyricsaixuy2l7mwftn2q9q4rtav5af	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-17 07:47:15.167332+00
juqgvmlqrmxhearfq6vmvomavy5wzw3d	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-02-24 06:19:43.215127+00
qhn5630h69202yyed92aks1sph5ig5t6	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-24 06:22:55.886441+00
mpdmnqwvlta5na9xzwumi6h1ffnmib6y	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-24 11:14:04.504186+00
l21kjpatzisp1a7w0g3bw32ksrte4vbt	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-19 06:59:40.503334+00
x0hxkyvkiycxurbos8885380a88ej2zx	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-02-19 07:19:00.33839+00
ka5b2zvcy5uxu6sbjl9ao67msr7cs9jq	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-02-19 07:37:07.168544+00
5mb5swkiptcrhoozl50iabpqvp5dn1qb	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-02-25 05:51:48.26487+00
pubizb78gi6lefqsqay2l85l9uiwhja8	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-02-25 07:04:35.5385+00
gpstt9ire27b73na1gz2d51ydvar1qni	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-19 07:37:24.521026+00
46vyxyz2b5v8jnkw78vek0x62a825ubt	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-19 09:13:40.030987+00
i24ccsmedarie208r8e97k69jti5mfg1	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-02-26 04:14:19.819984+00
gb8hie79q7y5t91clp2rsf3yutlspa25	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-02-26 09:30:00.584249+00
d50lt7mezh29ekzkftdvffjrrk6i67vo	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-02-28 05:56:06.736201+00
6ghnbl8xlzknvj5wldpl8krd4g8t9yxs	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-26 13:11:28.519802+00
rn5jvustqp298tjpj6dg2lrw4iq97ky5	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-02-28 05:56:24.145413+00
clcbquzoxe1ti8msichb6z8t1w2222nz	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-02-26 16:32:30.47223+00
j3jbna5r9no1qxyirsj52bbwb68frcrp	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-02-28 06:09:03.937315+00
mro053m7fvu792pm0t5xgcni1xrp0iin	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-02-26 18:45:15.86702+00
2usz33lcc0h5hjzk0m618uj9hfjfx8hp	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-02-28 12:45:23.492591+00
41uepkugq4hj1kfxy1mp8tv1reazt2vy	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-02 14:26:58.269355+00
635j6zhjk57bezpa1dvtiqqatwnobetj	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-02 16:52:52.833998+00
kcdms4glunwwjq5421e5fzlch16lht1o	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-02 16:59:50.01477+00
n8tgdwn1mw945ls1x590cozlnw6h28og	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-02 16:59:53.98464+00
3mrrpyb7itu9cpet88yd5t84rqsfg9bj	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-02 17:04:49.127901+00
sd0eoeov9sh9t2graeg2exiqv1bv37rq	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-02 17:04:53.540574+00
uj6pevem7hsbuip28bwlxzflron09u2z	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-02 17:04:53.619188+00
b57iyimo34fbpqnrkihlewnph3dwxlz6	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-04 13:53:27.950128+00
yq5azm9g381y133546f9flw4kvgx1x3d	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-12 07:16:11.6102+00
c6n60vpsutujzhn7eg501fkwgswd7k35	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-03 04:40:51.423498+00
nbzcq6b8rg2ejl0qcysua2rqswbzio1n	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-04 17:26:50.672899+00
prodnejd0j4dq192ygxqja3ebfx5p6fw	NDU1NzJmMjA4NjhmMjkyYzFhNzQyZDFiNjZmOWFlMzVjNWRkOWRkMzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwZ1Lg==	2014-03-08 08:31:54.269541+00
1gck0sorg3l3o18v4cr6g93rcj8q87l2	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 10:50:43.600185+00
cvjw3i25d81g03kia43x6ubhzxql7ebr	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-24 05:02:10.094429+00
3k4uoelmbfgihzxrhn1agbmkfy3rn1r0	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-12 10:42:00.307181+00
7hj2pfnyfptekammh4ukx6637324p9yf	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-04 09:55:23.853757+00
1cj710wqfpvfzsrx6y0v1dcq407h8k2c	Njc2YjFkNTcyYmFhZTNiNTYzNWI2NDNhMTVlMDBjMGY3MmIzY2U4NjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UPZGphbmdvX2xhbmd1YWdlcQRYAgAAAGVucQVVDV9hdXRoX3VzZXJfaWRxBksGdS4=	2014-03-07 07:07:38.84885+00
bstpck2fguxt8xw5ir45sv5v4vidaoyk	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-04 17:29:30.204645+00
yhym35km4s5cf8rrwi18bfncodcgeqyy	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-04 10:21:32.018985+00
p9v0lxxk0o6f6bei6hsb8tlbu6ul9yy0	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-11 09:07:08.221302+00
wxthcpv84zxp5gcg8dceio5ztffockbo	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-04 11:37:43.951852+00
rhma9k9l4jphcz2dk2fu1sjuuamv4in2	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-04 17:33:32.151171+00
ku7x007crt0hz42xiyxq7dgl843hy8r4	Y2RlYTE4YmI4MDk5MzYxYTE5ZGQzYzJlNWQwYjhiYTU0MmFjOTk0OTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwVVD2RqYW5nb19sYW5ndWFnZXEFWAIAAABlbnEGdS4=	2014-03-09 11:15:40.555839+00
mgjnq86eaetzwc9hxl1nryae4f7mp85z	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-06 07:27:38.018978+00
obdlb6x5ppjjdj0jiz29wj1ay5hmbmyt	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-06 09:11:03.989378+00
2m6uv7engoh9ny3r93bdiy36ylew8f61	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-07 08:36:02.928535+00
w205hr32k0eua7jlkse2v3kymxaa69oz	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 12:41:22.443294+00
gajz395ewgdnn1jglrbsdrkm3v7x0mx7	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-06 11:49:20.829026+00
7ery35ry05flhwbprh9x2d1utzfy5thb	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-06 12:04:24.488403+00
or24xx8c6k8w2mja5zmkpa3rxf23o45j	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-06 12:13:28.565054+00
kodq1bubnqw9ed00pbkg9s4e3ytdtx54	Y2NkZDRlOGE0YWQ3MzcwMDZhZWFmNWNkOTM1ZDA4YzNjM2JiZmZlNDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1Lg==	2014-03-07 04:27:35.318022+00
vrg0qgy8txo6h8gk8h17e0yuaterq4k7	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-07 09:16:13.080965+00
zwgudp997xm4mewbsnfpv6o67nwotljm	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-07 09:27:39.315058+00
7i7esbcb7cnwngxup22gc5q9wtw78uxa	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 10:06:04.070843+00
5aizn3h3v7d2cz2x6zenur092m5j3vdw	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-05 09:02:55.134048+00
85veh49m833r05wnj0s009l2ifckoe0j	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-05 09:35:43.089149+00
k4qevwjr2whu59qd32wnhao0lltc027m	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-07 05:41:58.147716+00
vq0kdkiqbef2ea22lxlkc6pf39v9t4q9	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-05 10:22:04.10572+00
gvfkmhth4dn6r1w7axr0dejqgsyvxafw	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 10:15:02.581511+00
7mnyjvpepq3dcb4097b6spr47npmejkb	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-05 12:02:50.116399+00
qp74tse4p197i4xcjorl6wxnwye5sjwr	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-05 13:47:48.900337+00
2r2pk7myjc7yjas99scah5ipi4pozou2	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-05 23:01:47.395945+00
uyqv2leeox9b8c79xbn3rh692amblwqp	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-07 06:36:03.075591+00
hprqorz5fsvklqd26fdrhplynxpfwrwb	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-07 08:59:36.903119+00
m0g79dgmz435tfom17uv6qkpu8xke770	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 10:49:16.175369+00
68745jukxgi636od9w7xss2hop4h6iy9	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-15 09:13:13.262932+00
oihey9el5mav1yfvawduncp0bn3xtre8	Y2I3MTAxZGQ4OGZkMTA4MDNkOGI2ZjBmNTk3NTBmMGQ3Nzg3ODZiMzqAAn1xAShVDV9hdXRoX3VzZXJfaWRxAksEVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UtbWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kcQRVD2RqYW5nb19sYW5ndWFnZXEFWAIAAABlbnEGdS4=	2014-03-07 12:01:58.368731+00
j8phdo1mxn15zm61hxiok7d2jf43gllb	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-12 06:29:56.574773+00
z3pgubp9a3wlcmtixd3s4wfhb2xkkald	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-08 09:23:05.599016+00
gar0c3qnp8uay59sl6cvxcjxblkql6lk	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-12 10:37:53.623627+00
mbccdfhk951tskm9aojabikljw7m7609	MjJlMzZiZTZmMDMxMDk1NjYxY2Y1ODM4MzFlODMxYzNiMmEzZWExNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UPZGphbmdvX2xhbmd1YWdlcQRYAgAAAGVucQVVDV9hdXRoX3VzZXJfaWRxBksBdS4=	2014-03-10 11:37:06.651601+00
snllh0bjj54chqldqu214pvxlkfylqsm	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-11 03:39:22.936609+00
0fjwttj4b3bv0zyf26x1ll8h82401hsm	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-07 15:46:49.332462+00
0vbjcvhgwr3hafdg3mbj6jorv9ss6zrk	NDU1NzJmMjA4NjhmMjkyYzFhNzQyZDFiNjZmOWFlMzVjNWRkOWRkMzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwZ1Lg==	2014-03-08 11:19:16.499209+00
3mvaax3xkace62ztx42mue5vovnci7o2	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-08 05:44:40.474989+00
p2w0fjkgszhnur5ux86ck70xl2ipef53	YWFlOTRlMmY2MGExZGIyNGY5ZmJkNmFjYzk0NjUwOTBkYzIzNzQxMjqAAn1xAShVDV9hdXRoX3VzZXJfaWRxAksBVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UtbWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kcQRVD2RqYW5nb19sYW5ndWFnZXEFWAIAAABoaXEGdS4=	2014-03-08 06:18:40.144864+00
b20fi2xdb3b0sed0ourm55rudvnqo3f6	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-15 06:23:43.122143+00
1m89r4qbnqwcqtwnrr3dh1z8bd173xn7	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-13 04:04:36.747359+00
5db0g4i2rnggxs3t3leocp57hya9cu7r	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-08 18:02:28.31914+00
x893bnyljvlhtmo6mq72m2z9qp1g15hs	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-09 08:56:05.619745+00
kr12ckkciy6tapfzzlqmwspwb2wk9njk	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-11 04:25:04.25151+00
xxjymm0bm27snpral2xlvxomnm1ai24u	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-13 04:10:38.746551+00
6t9ggj7s7nzm2q3vzier7hnnmix4vp12	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-09 12:54:11.136949+00
0ebub5249y8fj1uovwar797mt65vaui9	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-13 05:06:03.816447+00
b6v6nkd331jwma0qtnw8zij63th08pob	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-11 06:01:18.208308+00
dce89tejel9qt6jnq5dxcmehkfw04px3	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-10 05:14:53.224632+00
b3plnu3pmav4c7e6zlywiq9yw4yf72q8	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-15 09:27:55.409138+00
juxx43hed101h9zomjzluqobtb8cf27w	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-11 06:29:14.687693+00
hsb6ti9gd7zl70siduey3iavw1ypn0tz	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-11 07:43:32.267785+00
7vqfbhf6jypj7kntw6gbeeh5pg8svq4u	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-16 14:21:15.85244+00
0zmk5aqwwg9fd17yg74qjf6kfvnurn2v	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-17 10:11:59.175249+00
kga6sy55ujbs20f7g21ebvlzgpvr9n48	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-17 18:07:08.448821+00
xyvxdnw5xhlhejgcl5tfco99x9aey4ax	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-11 22:17:51.88412+00
9xw1x1qqbmzhjr0s0iiolkrctr2zxpt9	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-13 05:59:30.286827+00
3fguek4iq2w1jdpzasa48jn8q13k09pi	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-13 08:22:13.717262+00
wy0c6rf4oh6r9bmfja36q4e93ryq6h0q	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-13 13:23:26.425434+00
y08szzlr4ni54676uxb0bbzfq4wjn9vv	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-18 06:26:10.1572+00
ipxfjovifn6arncbzpzagl15hhk6s64s	MTI5NzZmYzBlM2I1NWI4YWIxNjlkZTNjMzRmZTY0YmQ3YzA0YmRiNzqAAn1xAShYCgAAAHRlc3Rjb29raWVxAlgGAAAAd29ya2VkcQNVD2RqYW5nb19sYW5ndWFnZXEEWAIAAABlbnEFdS4=	2014-03-12 05:06:20.66367+00
62h7ibqbj63e9wshec3uh441f84ofcbd	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-14 06:44:52.504684+00
829hzfi2p1wn1bw7adkn8ythfju3hwyw	NDU1NzJmMjA4NjhmMjkyYzFhNzQyZDFiNjZmOWFlMzVjNWRkOWRkMzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwZ1Lg==	2014-03-14 09:52:56.964451+00
r1bdjbupt9eypt9ezxbpnjt2bcjh2251	NjYxMGU2Zjc3ODQ3ODA4NDViZWI3NjgxMDdlNzk2MzE3MWFlNmRiMzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwFVD2RqYW5nb19sYW5ndWFnZXEFWAIAAABlbnEGdS4=	2014-03-14 11:55:28.74325+00
64z5bmb9ocblxbnpeafzsot5tvjasyrh	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-24 04:18:22.793869+00
biyq5d47i71hqf9dcdjegxfzhsok6ugq	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-07 10:52:13.083167+00
8b7kjurj1306w3xv2irdg9vwblfuyv0p	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-12 06:57:59.155455+00
r5i4ah44f45canr81f29qxndzequxt72	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-10 11:27:46.520146+00
039z64755i6an82ll8p6cmrg03vpggwe	NDU1NzJmMjA4NjhmMjkyYzFhNzQyZDFiNjZmOWFlMzVjNWRkOWRkMzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwZ1Lg==	2014-03-12 15:08:22.288825+00
f8ozs5mh0eh4bdt7y32drnm561h53umj	MjJlMzZiZTZmMDMxMDk1NjYxY2Y1ODM4MzFlODMxYzNiMmEzZWExNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UPZGphbmdvX2xhbmd1YWdlcQRYAgAAAGVucQVVDV9hdXRoX3VzZXJfaWRxBksBdS4=	2014-03-08 10:51:17.756634+00
ygddi6d9rq7h75ykawtjzpujnelu7ljp	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-08 14:41:45.293543+00
lprnkegirsmjumaifzme5oh8edo1mlay	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-12 20:30:39.801436+00
z4x7xu7bpbh60ojsmw90oo59vo891rdh	NTFkOGQxZjFmNDlmNTA4MjhkOGNlNzBlMGU5NmI0YjAxNzNmOThmNTqAAn1xAShVDV9hdXRoX3VzZXJfaWRxAksBVQ9kamFuZ29fbGFuZ3VhZ2VxA1gCAAAAZW5xBFUSX2F1dGhfdXNlcl9iYWNrZW5kcQVVLW1lenphbmluZS5jb3JlLmF1dGhfYmFja2VuZHMuTWV6emFuaW5lQmFja2VuZHEGdS4=	2014-03-07 11:32:47.770644+00
ukoozpj896ioqjlduw2x7v338yd7utg6	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-11 06:58:05.20846+00
o8t6m7m80zcuqh5bsbjeaqtg06whu1wm	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-09 03:17:15.738043+00
e5nq4whjxuuknrlrewa7qto7ybkrjzo9	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-07 12:03:14.570001+00
3pftlvdv05r5tyab2kyg5oqqvkyz6np5	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-09 11:00:47.308751+00
f8gill85p5l8u6p2l20vhh6wk093nu7b	NDU1NzJmMjA4NjhmMjkyYzFhNzQyZDFiNjZmOWFlMzVjNWRkOWRkMzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwZ1Lg==	2014-03-07 12:35:56.596521+00
j1fi54v5srof2nua9kinimzkl6vkjn1w	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-15 13:27:30.131744+00
h3a3n4zqf4eubu6sa3qz3tbc8mx2ez22	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-11 07:43:40.990223+00
uotkaubdy14ycjgtzyqhf4dtqtxid8tw	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-09 12:47:47.387094+00
5uv4eg3c7mxakw5zb9xpigx6cjuet39h	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 17:00:48.815087+00
x152b2tg2ogja8z6yspblxxw2nvqz4ml	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-16 05:48:00.613788+00
bfr3fl0f46qi3tn4vgrk6377ep3gjk8i	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-09 13:25:36.251629+00
o2jsl1u8z03u0tjgxp2iaii7irfwdkvy	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-13 06:27:08.885118+00
7lww3mm45xy7qfl6uq1h0aslpyqp0i1y	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-11 13:07:40.479322+00
igxzvrgyod7pm51vf1mxixseohq5g3w4	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-08 06:51:28.363541+00
55ay556yxlfqe1xr0brk26jknjfz087b	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-10 05:50:47.003323+00
lpgzzp6pn2fsccjf7rwmifs0c5thuie4	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-10 07:52:33.487764+00
28ah3khx3ykvzl285ha5gpxra26b945x	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-16 14:21:18.787693+00
4e9hcd9nybwkuoel5eap5912hw46eiug	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-12 05:35:51.347127+00
9dgmsbyge84ypwfqxd41k1i9asr0uy29	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-18 05:20:35.786137+00
3z2tymta7t1p0j67vcqrz2tftfn35ouy	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-14 07:08:33.209796+00
n2x8d3wom2qhu1znb01i5ien1tn6om0e	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-18 10:01:05.206998+00
7xofinkg5z16w5saf7srr53ccpzjxn4x	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-18 13:15:55.642276+00
xlm5j5gcw69c0gfcp4jq3zn73mdeznhe	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-15 06:06:21.604007+00
7y2djpimfkpomn58axs5pr669tmrxq7w	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-20 13:59:12.425836+00
j1q98rdz5myqgsvtinlk2xpd8zvzucpm	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-20 18:29:48.365577+00
mo5k5k5u67lir9kwst3tv9ucjvwk9wvc	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-21 11:46:19.238749+00
f6v40pinnkqprw3v0zxxkalr8z9v9b23	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-21 17:32:28.34267+00
rv08an1rsajpbvmwiyzy8y7wozi1cvq0	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-22 15:59:33.434977+00
sv0v5kombq6td5n21bd3rm63s4hnb23g	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-07 10:13:01.029225+00
mjv62emignkm4yx7usb5e1dl171vso2l	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-11 03:39:05.112208+00
l07o6bjbm6g41mg1tyte9gje6cu6tct7	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-07 10:27:39.081593+00
zry1uzp67uecbup02nzwnek2moyyyj9x	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 10:34:33.838323+00
sp6alg8nwpmrzc9drg8kfp8zg01cj2ar	OGVhNTI5ODg2MjZjOWNmM2NlYmZhN2RmODUzZjg4ZGJhMTU0YWE0NzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UPZGphbmdvX2xhbmd1YWdlcQRYAgAAAGhpcQVVDV9hdXRoX3VzZXJfaWRxBksBdS4=	2014-03-08 10:38:48.606791+00
3zzxxdiqjohj0mqtaipse86u2kau0l95	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-15 18:43:17.018616+00
ui74acpvr5jku12bts0bf27bcakzjcu1	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-07 11:43:16.298455+00
9u1rvpmufzlqbfclqi406des7jqyof0z	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 10:36:11.91351+00
nys0maqmi8l8bjor8k5r2pukkynostf9	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-11 04:57:36.336186+00
9afce3mhxug13yitf0aw4d5aa1wrp2u1	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-07 10:36:55.530963+00
1iofvzo93r5jlobui9kokxa26gov0luz	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-07 10:39:01.505503+00
frrzce11xr423qdb6ugpezegqc9jbv41	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-12 18:30:03.576618+00
uc3mc8szf4qtnvho72jv7ckijdvvfo1w	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-07 12:36:38.645395+00
ez6fzm7ejwu5qd9yz12tfeaiq3qjw4b2	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 10:40:49.796833+00
fxgbpepd60hdkgtg5kstf9sjk1sq7yao	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-03-07 10:41:29.713702+00
dvn5mwe4sgn28li48v427hwesn5t1fwj	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-11 08:50:12.994953+00
klge19698c1jlxxett8l4i23a2fvt5y5	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-18 04:53:16.65047+00
xlve6e9v4jgi2xpwz2r2dstelwh6pylm	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-08 14:54:38.718056+00
msl8m6ssisz17i5k2c202x7zt2njdw0d	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-08 17:26:25.885732+00
w8xio3n9poe0zm5wtqy0pac3velv88bb	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-11 13:08:05.494933+00
f9ys002n9pdh80u8chl7ijt48ws5l191	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-09 04:50:49.348965+00
ixk488b6osoqcrp6nazxju6gn9f4c2le	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-13 07:58:22.159126+00
9zkzzb09oh0g0yuxewc1yc0vqulvo2ns	MDNmNDg5Njc5MTUyMzM3OGZhNzQ3OTJlOGU4N2NkYjg3ZDdlNWQ0YjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwR1Lg==	2014-03-13 11:31:10.274732+00
djstnqsczw4pkva807krb2r5ap21gbrg	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-13 14:19:03.440686+00
0b5rqrvyi5t189z309wf1moeoxrmdt99	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-09 15:57:14.443017+00
xq7spiu397sjofbd700kticexu9nhe2x	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-10 05:20:00.58109+00
7wnzkel9co3bqmlciue14bi8ldyt4wvm	NDU1NzJmMjA4NjhmMjkyYzFhNzQyZDFiNjZmOWFlMzVjNWRkOWRkMzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwZ1Lg==	2014-03-10 07:55:05.587286+00
abhf8dapg3jyqgglir3kterlmc2f9sqo	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-14 06:38:06.80113+00
oq5iuudxhlm34f15ylwqswj5kcabb6x8	ZjZlZTBlNGYzYTI1YTEwMDJkMGM4MWEwYTY2OTJmNDFkNDM4N2MzMjqAAn1xAShVDV9hdXRoX3VzZXJfaWRxAksBVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UtbWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kcQRVD2RqYW5nb19sYW5ndWFnZXEFWAIAAABlbnEGdS4=	2014-03-20 14:48:40.628208+00
2uiiqrf5pxa7ts3oisxzyu6474o147tn	ZTQwMjI4NDYzNGZiY2U2ZGE2MDM1Njk2MDQ2ZmFmZDkwNTU4YTMxODqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UPZGphbmdvX2xhbmd1YWdlcQRYAgAAAGVucQVVDV9hdXRoX3VzZXJfaWRxBksEdS4=	2014-03-14 10:57:41.448093+00
llftuqp3ha981k6wta6eo8qo37qui374	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-21 03:11:08.066752+00
pj471z8dl1i06jpdgouto1uq0iksx760	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-21 03:11:27.627866+00
jnyn1j0zzo2yxwzpvp1j8goa7d9nj9bk	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-21 03:12:16.085522+00
v20lkbl30lyd8mqm337v1op9rcvu5ij8	YjlhMTJmNWFmMmI1ZmJmZWM2MTQzNmUyMDdkOTcxODBhYmVlOWYxYzqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGhpcQNzLg==	2014-03-21 14:39:58.738545+00
g39y6vruaa1ctdepy7lwas0e1eq6jaej	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-03-22 07:42:03.484316+00
j41z7jq94nl53znlpl5q2jim28ie1sg2	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-22 15:55:05.974618+00
zexss9waqv9wnjxxjpyvxjlsae00armz	YjczNjVlNjRhODlkODBjYjRiM2I2NzA4ZDJiZjVmNzI0YmNlZTc4YTqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2014-03-23 11:36:30.726502+00
in20nlqrp0w0o46louuuazd2t5variji	NDlkOGUyOGUzNTI3ZTdlZmI0NWU1NzNkYWNhNTI0MjlhYzc2ODZjNDqAAn1xAShVDV9hdXRoX3VzZXJfaWRxAksFVQ9kamFuZ29fbGFuZ3VhZ2VxA1gCAAAAZW5xBFUSX2F1dGhfdXNlcl9iYWNrZW5kcQVVLW1lenphbmluZS5jb3JlLmF1dGhfYmFja2VuZHMuTWV6emFuaW5lQmFja2VuZHEGdS4=	2014-03-22 07:24:15.043293+00
p5u400g28rpsk4st7fpbyctwtzloidlt	Y2Q2NDAzZGJmZmFlNjNkNWM4OWEwZDE1ZDM0NWY4YzFhZmNhNjBjNzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1Lg==	2014-03-23 12:21:00.891948+00
g14npp3lk70kdz5pxliwss64mjzwlhv8	YWFlOTRlMmY2MGExZGIyNGY5ZmJkNmFjYzk0NjUwOTBkYzIzNzQxMjqAAn1xAShVDV9hdXRoX3VzZXJfaWRxAksBVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UtbWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kcQRVD2RqYW5nb19sYW5ndWFnZXEFWAIAAABoaXEGdS4=	2014-03-25 13:10:44.16812+00
70l2kz6thsx4jl3qxojrf32ez96qg2yp	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-03-27 10:27:35.400972+00
ej5c464u1urs6pzgm4k8k9m0l4c709dc	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-04-17 15:20:19.12927+00
0vvnjjksaaur47pg9l79n1oyabudt0yt	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-03-28 12:02:28.271515+00
huthk9goiaarjhi43o5gmx3yvusxxz8s	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-04-01 14:00:14.69857+00
vczfpcft9r2nc5svwgsm71ilduhe9igz	ZjZlZTBlNGYzYTI1YTEwMDJkMGM4MWEwYTY2OTJmNDFkNDM4N2MzMjqAAn1xAShVDV9hdXRoX3VzZXJfaWRxAksBVRJfYXV0aF91c2VyX2JhY2tlbmRxA1UtbWV6emFuaW5lLmNvcmUuYXV0aF9iYWNrZW5kcy5NZXp6YW5pbmVCYWNrZW5kcQRVD2RqYW5nb19sYW5ndWFnZXEFWAIAAABlbnEGdS4=	2014-04-18 15:08:32.894058+00
266661c0j9bmrmk3o66aia1rw70tryzt	NGZjOGM2MzUzODk0ZDA1NDAxNzJlMGJjMmEwMDk3MGNjOGRlNGMwMjqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRhcQNzLg==	2014-04-21 06:45:17.435224+00
m2fsmbmc38cqymqoi7bxml88cmsch8vh	NDA2ZDA3MTgwZjBhMTM4NDAwZGNjY2IwMTkyZDU3YmNmNDhlZWRlNjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVS1tZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1Lg==	2014-05-19 15:54:40.487411+00
7abs32ydajf8zvo9o0wy401u49v0fyfz	OWYxOGYyYzUzNDUzMzA5YTIxMTNiZWRjZGIzOGJmMjBmNGVhOWU4NDqAAn1xAShYCgAAAHRlc3Rjb29raWVxAlgGAAAAd29ya2VkcQNVD2RqYW5nb19sYW5ndWFnZXEEWAIAAAB0YXEFdS4=	2014-04-02 07:15:35.26487+00
yifd719aha0vzvdf50krtwf6tm45d1m4	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-05-19 18:38:33.524725+00
od395jpp289vgb6zahd6e5w4o7u4f87c	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-08-17 11:37:00.414308+00
ak739tqv7tqvrij6hrp7mpv9lnatq4dx	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-04-07 12:20:33.920348+00
0h8uz82ku7hnsyzo1us908s65g54k3t3	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-04-09 06:04:49.216278+00
33drk86r8ajh4x0rav0toojx2b0nosat	ZWJjMjc5ZGEyOTRlZmIzYzAyYzE1YThjMWM4ZmJjZDk5NGYxMzFhNTqAAn1xAVUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAGVucQNzLg==	2014-04-11 07:23:26.873712+00
43c8mbn3jh27irvw5zlsqwhwd7m9wuz3	YTVlNjEyMzlkZDdkYmUxZWFmYzVhMGMzZjFlMDgyMGMwMDY2MzUyZDqAAn1xAS4=	2014-04-14 11:46:21.638382+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_site (id, domain, name) FROM stdin;
1	127.0.0.1:8000	Default
\.


--
-- Data for Name: endless_pagination_testmodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY endless_pagination_testmodel (id) FROM stdin;
\.


--
-- Data for Name: forms_field; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_field (_order, form_id, "default", required, label, visible, help_text, choices, id, placeholder_text, field_type) FROM stdin;
5	6		t	Story Description	t	Provide summary and details about the story, do mention any keywords, contact persons details etc.		5		2
0	15		t	Name	t			9		1
2	6		f	Email Id	t	An email where we can reach you		3		3
0	6		t	Name	t			1		1
1	6		t	Contact Number	t	In case of any clarification		2		13
4	6		f	Link, if available	t	If story is already published on web then link to it		8		14
7	6		f	Remarks	t	Anything else that you would like to share about the story.		7		2
1	15		t	Email ID / Phone no	t	A way to contact you for more details		10		1
2	15		t	Your Query / Comments / Feedback	t			12		2
3	6		f	Story Location	t	Enter District & State or latitude-longitude		4		1
6	6		f	Detailed Story Attachment	t	If you have more than 1 file then please attach a Zip file containing all files. Max size 5MB.		6		9
\.


--
-- Data for Name: forms_fieldentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_fieldentry (entry_id, field_id, id, value) FROM stdin;
1	1	1	Chandan
1	2	2	9999999999.0
1	3	3	
1	4	4	
1	8	5	
1	5	6	Test - Story description goes here!
1	6	7	forms/fd5e1ed8-06bb-49aa-a86f-738de689024f/AF-Discussion_notes_18thNov.pdf
1	7	8	
2	1	9	Nikhil Sheth
2	2	10	9665831250.0
2	3	11	nikhil.js@gmail.com
2	4	12	Pune, Maharashtra
2	8	13	http://www.vikalpsangam.org/article/swaraj-university-udaipur-self-designed-learning
2	5	14	This is a test story submission. Where does this come to on the admin end?\r\nMultiple lines : 1\r\nMultiple lines : 2\r\nMultiple lines : 3\r\nMultiple lines : 4\r\nMultiple lines : 5\r\nMultiple lines : 6\r\nMultiple lines : 7\r\nMultiple lines : 8\r\nMultiple lines : 9\r\nMultiple lines : 10\r\n
2	6	15	forms/0c09c942-f99f-4c6e-859c-9720e87e51a4/How Wolves Change Rivers.srt
2	7	16	Remark line.\r\n\r\nMultiple lines : 1\r\nMultiple lines : 2\r\nMultiple lines : 3\r\nMultiple lines : 4\r\nMultiple lines : 5\r\n
3	1	17	Nikhil Sheth
3	2	18	9665831250.0
3	3	19	nikhil.js@gmail.com
3	4	20	Pune, Maharashtra
3	8	21	http://www.iamsoangry.calm/
3	5	22	Angry citizen ranting at the state of society and how everybody is corrupt and should all be fed to the dogs.
3	6	23	forms/bfd85a5b-350a-4bd7-9b5e-3e59a7b94225/shikshantar.docx
3	7	24	This is a test contribution. I'm attaching a word file called "shikshantar.docx". Where is it going?
4	1	25	Nikhil Sheth
4	2	26	9665831250.0
4	3	27	nikhil.js@gmail.com
4	4	28	Pune, Maharashtra
4	8	29	http://www.iamsoangry.calm/
4	5	30	Angry citizen ranting at the state of society and how everybody is corrupt and should all be fed to the dogs.
4	6	31	forms/ac361c24-34d8-4168-aa45-3de556dcb191/Manzil.docx
4	7	32	This is a test contribution. I'm attaching a word file called "Manzil.docx". Where is it going?
5	1	33	nikhil
5	2	34	2134156.0
5	3	35	nikhil.js@gmail.com
5	4	36	
5	8	37	
5	5	38	asdasdasd
5	6	39	forms/c6473923-b618-4cca-af06-409141af0702/Bhaskar_Save__Gandhi_of_Natural_Farming__edited.doc
5	7	40	
6	1	41	Pankaj
6	2	42	1234567890.0
6	3	43	
6	4	44	Hemalkasa
6	8	45	
6	5	46	this is a test sith attachment
6	6	47	forms/3b9fc4db-82b8-4d01-851f-ec1cad8e1a39/Kalpavriksh Meeting Dec 17.mm
6	7	48	
\.


--
-- Data for Name: forms_form; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_form (email_message, page_ptr_id, email_copies, button_text, response, content, send_email, email_subject, email_from) FROM stdin;
	15	alternativesforum@gmail.com	Submit	<h2>Thank you!</h2>\n<p>Thanks a lot for your inputs! If you have requested any information then someone would reach out to you with the details. If you have a suggestion for us then we will try to incorporate it in our site.</p>\n<p></p>\n<p>Thanks again for you inputs and time!</p>	<h1>Contact Us</h1>\n<p>If you have any queries or suggestions or need more information please contact us as below:</p>	t	Contact from site	contact@vikalpsangam.com
Hey there,\r\nA new story has been shared on Alternatives Forum. Please find its details below.	6	alternativesforum@gmail.com	Submit	<h3>Thanks!</h3>\n<p>Thanks a lot for sharing your story with us. We will be reviewing this story and may reach out to you in case of any queries or any more details required.</p>	<h3>Have a Story to Share? Please contribute!!</h3>\n<p>A platform like this cannot be successful without the active involvement of people from all parts of the country and all walks of life. If you have a story, a book or a film that has inspired you, or even if you simply have a lead to an initiative, we’d like to hear from you!</p>\n<p>The stories can be practical activities, policies, processes, technologies, and concepts/frameworks. They can be practiced or proposed/propagated by communities, government, civil society organizations, individuals. The main features of such a story would be ecological sustainability, social well-being and democracy. Of course no single initiative may have all these features, but even if they have one they are worth featuring here, so long as they are not seriously threatening the others. </p>\n<p>Please provide as much of details about the story in the story description, do mention any keywords, contact persons details so that others can get in touch with them. Do refer to <a href="/contribute-a-story/story-guidelines">story posting guidelines</a>.</p>\n<p>If you face any issues with this form, feel free to contact us on <a href="mailto:info@vikalpsangam.org">info@vikalpsangam.org</a></p>	t	New Story shared on Vikalp Sangam!	alternativesforum@gmail.com
\.


--
-- Data for Name: forms_formentry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY forms_formentry (entry_time, id, form_id) FROM stdin;
2014-02-13 11:23:46.610568+00	1	6
2014-02-21 15:02:17.053821+00	2	6
2014-02-22 07:15:53.690974+00	3	6
2014-02-22 07:17:10.575828+00	4	6
2014-02-22 08:30:23.449696+00	5	6
2014-02-22 10:00:51.985973+00	6	6
\.


--
-- Data for Name: galleries_gallery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY galleries_gallery (page_ptr_id, content, zip_import) FROM stdin;
\.


--
-- Data for Name: galleries_galleryimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY galleries_galleryimage (id, _order, gallery_id, file, description) FROM stdin;
\.


--
-- Data for Name: generic_assignedkeyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_assignedkeyword (content_type_id, id, keyword_id, object_pk, _order) FROM stdin;
31	2004	276	76	0
31	2005	279	76	1
31	2006	73	76	2
31	2007	295	76	3
31	2008	296	76	4
31	1781	95	25	0
31	1782	96	25	1
31	1783	97	25	2
31	1784	98	25	3
31	1785	2	25	4
31	1806	253	56	0
31	1807	254	56	1
31	1808	255	56	2
31	1809	93	56	3
31	15	9	3	0
31	16	4	3	1
31	17	5	3	2
31	18	6	3	3
31	19	7	3	4
31	20	11	5	0
31	21	12	5	1
31	22	13	5	2
31	1810	39	56	4
31	1811	171	56	5
31	2009	270	76	5
31	35	2	6	0
31	36	11	6	1
31	37	14	6	2
31	38	15	6	3
31	39	16	6	4
31	40	17	6	5
31	257	32	12	0
31	258	33	12	1
31	259	29	12	2
31	260	34	12	3
31	261	35	12	4
31	262	36	12	5
31	134	63	16	0
31	135	15	16	1
31	136	11	16	2
31	137	2	16	3
31	263	37	12	6
31	264	38	12	7
31	2010	74	76	6
31	272	92	24	0
31	273	93	24	1
31	274	10	24	2
31	275	2	24	3
31	276	94	24	4
31	66	12	8	0
31	67	10	8	1
31	68	1	8	2
31	69	20	8	3
31	70	21	8	4
31	2046	323	91	0
31	2047	324	91	1
31	920	188	44	0
31	346	14	9	0
31	347	22	9	1
31	348	23	9	2
31	349	24	9	3
31	350	25	9	4
31	921	154	44	1
31	922	189	44	2
31	923	190	44	3
31	924	192	44	4
31	1475	275	78	0
31	925	193	44	5
31	302	18	7	0
31	303	19	7	1
31	304	10	7	2
31	305	2	7	3
31	306	9	7	4
31	926	194	44	6
31	927	195	44	7
31	928	196	44	8
31	929	197	44	9
31	1476	139	78	1
31	1477	276	78	2
31	1478	73	78	3
31	1491	277	79	0
31	1492	278	79	1
31	1493	270	79	2
31	1494	279	79	3
31	185	78	20	0
31	186	79	20	1
31	187	80	20	2
31	1495	280	79	4
31	1496	72	79	5
31	1506	260	60	0
31	1507	261	60	1
31	1508	262	60	2
31	1509	263	60	3
31	1510	264	60	4
31	543	8	4	0
31	544	9	4	1
31	545	2	4	2
31	546	10	4	3
31	1511	265	60	5
31	1324	228	59	4
15	467	2	2	0
15	468	12	2	1
15	469	10	2	2
15	470	11	2	3
15	471	73	2	4
15	472	76	2	5
15	399	99	1	0
15	400	36	1	1
15	401	11	1	2
15	402	73	1	3
15	403	76	1	4
15	404	2	1	5
15	405	28	1	6
15	406	44	1	7
15	407	1	1	8
15	408	63	1	9
15	409	10	1	10
15	410	58	1	11
15	411	41	1	12
15	412	9	1	13
15	413	17	1	14
15	414	74	1	15
15	415	57	1	16
15	416	22	1	17
15	417	88	1	18
15	418	107	1	19
15	419	108	1	20
15	420	109	1	21
15	421	110	1	22
15	473	42	2	6
15	474	109	2	7
15	475	110	2	8
15	476	107	2	9
15	477	108	2	10
15	478	26	2	11
15	479	63	2	12
15	480	28	2	13
15	481	88	2	14
31	1772	28	11	0
31	1773	29	11	1
31	1774	30	11	2
31	1775	31	11	3
31	1455	273	77	0
31	1010	155	42	0
31	1011	156	42	1
31	2048	240	91	2
31	2049	21	91	3
31	2050	231	95	0
31	2051	18	95	1
31	2052	339	95	2
31	1012	157	42	2
31	1013	158	42	3
31	1014	159	42	4
31	1015	160	42	5
31	1016	31	42	6
31	1017	161	42	7
31	1018	162	42	8
31	501	115	31	0
31	502	9	31	1
31	503	116	31	2
31	1456	94	77	1
31	1457	73	77	2
31	1458	274	77	3
31	1291	256	57	0
31	1292	9	57	1
31	2011	294	84	0
31	2012	31	84	1
31	1293	257	57	2
31	2013	293	84	2
31	2029	88	93	0
31	2030	330	93	1
31	2031	69	93	2
31	2032	331	93	3
31	2033	332	93	4
31	2034	333	93	5
31	2035	334	93	6
31	1320	256	59	0
31	1321	9	59	1
31	1322	259	59	2
31	1323	227	59	3
31	1090	132	32	0
31	1091	133	32	1
31	1092	134	32	2
31	1093	135	32	3
31	1094	136	32	4
31	1095	137	32	5
31	1096	5	32	6
31	1097	72	32	7
31	1098	138	32	8
31	1099	139	32	9
31	1100	140	32	10
31	1101	141	32	11
31	987	174	43	0
31	988	175	43	1
31	989	176	43	2
31	990	92	43	3
31	991	178	43	4
31	992	179	43	5
31	993	180	43	6
31	994	181	43	7
31	995	182	43	8
31	996	183	43	9
31	997	184	43	10
31	998	185	43	11
31	999	186	43	12
31	1000	187	43	13
31	1102	142	32	12
31	1103	143	32	13
31	1104	144	32	14
31	1105	145	32	15
31	1106	146	32	16
31	1209	227	52	0
31	1210	228	52	1
31	1211	229	52	2
31	1212	206	52	3
31	1213	23	52	4
31	1214	230	52	5
31	1215	231	52	6
31	1216	232	52	7
31	1223	238	54	0
31	1224	18	54	1
31	1225	239	54	2
31	1226	240	54	3
31	1227	241	54	4
31	1254	242	55	0
31	1255	243	55	1
31	1256	244	55	2
31	1257	245	55	3
31	1258	246	55	4
31	1259	247	55	5
31	1260	248	55	6
31	1261	249	55	7
31	1262	250	55	8
31	1263	251	55	9
31	1264	252	55	10
31	1325	23	59	5
31	1326	229	59	6
31	1327	232	59	7
31	1340	73	45	0
31	1341	74	45	1
31	1342	57	45	2
31	1343	63	45	3
31	1344	191	45	4
31	1345	103	29	0
31	1346	70	29	1
31	1347	93	29	2
31	1348	104	29	3
31	1349	105	29	4
31	1350	106	29	5
31	2036	186	93	7
31	1366	84	22	0
31	1367	71	22	1
31	1368	85	22	2
31	1369	86	22	3
31	1370	87	22	4
31	2037	335	93	8
31	2038	336	93	9
31	2039	337	93	10
31	2040	338	93	11
31	1389	233	53	0
31	1390	234	53	1
31	1391	235	53	2
31	1392	236	53	3
31	1393	88	53	4
31	1394	237	53	5
31	1404	268	74	0
31	1405	269	74	1
31	1406	270	74	2
31	1417	271	75	0
31	1418	13	75	1
31	1419	74	75	2
31	1420	270	75	3
31	1421	272	75	4
31	1422	138	75	5
31	1671	283	81	0
31	1672	284	81	1
31	1673	285	81	2
31	1674	286	81	3
31	1675	287	81	4
31	1676	288	81	5
31	1677	289	81	6
31	1678	290	81	7
31	1679	291	81	8
31	1680	13	81	9
31	1681	266	73	0
31	1682	267	73	1
31	1683	5	73	2
31	1684	213	50	0
31	1685	214	50	1
31	1686	215	50	2
31	1687	216	50	3
31	1688	217	50	4
31	1689	133	50	5
31	1690	198	48	0
31	1691	199	48	1
31	1692	200	48	2
31	1693	201	48	3
31	1694	202	48	4
31	1695	203	48	5
31	1696	204	48	6
31	1707	111	30	0
31	1708	112	30	1
31	1709	113	30	2
31	1710	114	30	3
31	1711	56	15	0
31	1712	57	15	1
31	1713	58	15	2
31	1714	59	15	3
31	1715	60	15	4
31	1716	61	15	5
31	1717	51	14	0
31	1718	52	14	1
31	1719	53	14	2
31	1720	54	14	3
31	1721	55	14	4
31	1722	26	10	0
31	1723	27	10	1
31	1724	39	13	0
31	1725	40	13	1
31	1726	41	13	2
31	1727	42	13	3
31	1728	43	13	4
31	1729	44	13	5
31	1730	45	13	6
31	1731	46	13	7
31	1732	47	13	8
31	1733	48	13	9
31	1734	49	13	10
31	1735	50	13	11
31	1736	76	19	0
31	1737	77	19	1
31	1738	281	80	0
31	1739	138	80	1
31	1740	282	80	2
31	1741	319	80	3
31	1742	206	80	4
31	1743	320	80	5
31	1744	321	80	6
31	1745	63	80	7
31	1746	279	80	8
31	1747	322	80	9
31	1796	163	41	0
31	1797	164	41	1
31	1798	165	41	2
31	1799	166	41	3
31	1800	167	41	4
31	1801	168	41	5
31	1802	169	41	6
31	1803	170	41	7
31	1804	171	41	8
31	1805	173	41	9
31	1847	69	39	0
31	1848	258	39	1
31	1849	148	39	2
31	1850	149	39	3
31	1851	150	39	4
31	1852	151	39	5
31	1853	152	39	6
31	1854	153	39	7
31	1855	154	39	8
31	1947	311	90	0
31	1948	312	90	1
31	1949	313	90	2
31	1950	314	90	3
31	1951	315	90	4
31	1952	18	90	5
31	1953	316	90	6
31	1954	317	90	7
31	1955	318	90	8
31	1956	304	89	0
31	1957	305	89	1
31	1958	306	89	2
31	1959	307	89	3
31	1960	308	89	4
31	1961	309	89	5
31	1962	201	89	6
31	1963	310	89	7
31	1964	142	89	8
31	1965	5	89	9
31	1966	301	87	0
31	1967	30	87	1
31	1968	290	87	2
31	1969	302	87	3
31	1970	303	87	4
31	1971	73	87	5
31	1972	115	28	0
31	1973	102	28	1
31	1974	72	18	0
31	1975	73	18	1
31	1976	74	18	2
31	1977	75	18	3
31	1978	64	17	0
31	1979	65	17	1
31	1980	66	17	2
31	1981	67	17	3
31	1982	68	17	4
31	1983	69	17	5
31	1984	70	17	6
31	1985	71	17	7
31	1986	21	71	0
31	1987	270	71	1
31	1988	74	71	2
31	1989	21	70	0
31	1990	297	70	1
31	1991	298	70	2
31	1992	299	70	3
31	1993	300	70	4
31	1994	216	70	5
31	1995	57	68	0
31	1996	22	68	1
31	1997	207	68	2
31	1998	142	68	3
31	1999	73	68	4
31	2000	163	68	5
31	2001	93	68	6
31	2002	74	68	7
31	2003	154	68	8
31	2014	292	82	0
31	2015	31	82	1
31	2016	293	82	2
31	2041	325	92	0
31	2042	326	92	1
31	2043	327	92	2
31	2044	328	92	3
31	2045	329	92	4
\.


--
-- Data for Name: generic_keyword; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_keyword (slug, id, title, site_id) FROM stdin;
organic-farming	1	organic-farming	1
ecology	2	ecology	1
timbaktu-collective	4	timbaktu collective	1
andhra-pradesh	5	Andhra Pradesh	1
anantpur	6	Anantpur	1
women-empowerment	7	women empowerment	1
swach	8	SWaCH	1
livelihoods	9	livelihoods	1
environment	10	environment	1
energy	11	energy	1
environment-ecology	12	environment  Ecology	1
bangalore	13	Bangalore	1
livelihood	14	livelihood	1
greenpeace	15	Greenpeace	1
energy-case-studies	16	energy case studies	1
case-studies	17	case studies	1
odisha	18	Odisha	1
chilika-lake	19	Chilika Lake	1
western-ghats	20	western Ghats	1
kerala	21	Kerala	1
society	22	society	1
culture	23	culture	1
jharcraft	24	Jharcraft	1
jharkhand	25	Jharkhand	1
democracy	26	democracy	1
ancient-republics	27	ancient republics	1
settlements	28	settlements	1
gujarat	29	Gujarat	1
housing	30	housing	1
eco-friendly	31	eco-friendly	1
kacchh	32	Kacchh	1
kutch	33	Kutch	1
sethu	34	Sethu	1
urban-sethu	35	urban Sethu	1
civil-society-initiative	36	civil society initiative	1
grassroots-urban-goverance	37	grassroots urban goverance	1
bhuj-bole-che	38	Bhuj Bole Che	1
karnataka	39	Karnataka	1
digital-solutions	40	digital solutions	1
bhoomi	41	Bhoomi	1
record-of-rights	42	Record of Rights	1
tenance-and-crops	43	Tenance and Crops	1
rural	44	rural	1
corruption	45	corruption	1
exploitation	46	exploitation	1
oppression	47	oppression	1
e-kiosk	48	e-kiosk	1
gender	49	gender	1
village-accountants	50	village accountants	1
community-radio	51	community radio	1
low-literacy-rate	52	low literacy rate	1
consumer-rights	53	consumer rights	1
haryana	54	Haryana	1
mewat	55	Mewat	1
development	56	Development	1
social-issues	57	social issues	1
environmental-issues	58	environmental issues	1
sambhaavanaa-institute-of-public-policy-and-politics	59	Sambhaavanaa Institute of Public Policy and Politics	1
himdhara-environment-and-research-collective	60	Himdhara Environment and Research Collective	1
askot-arakot-yatra	61	Askot-Arakot Yatra	1
india-energy-revolution	62	India Energy Revolution	1
sustainability	63	sustainability	1
chhattisgarh	64	Chhattisgarh	1
net-based-healthcare	65	Net-based healthcare	1
healing-practices	66	healing practices	1
medical-systems	67	Medical Systems	1
medicinal-plants	68	Medicinal Plants	1
traditional-knowledge	69	Traditional Knowledge	1
tribals	70	Tribals	1
shubhranshu-choudhary	71	Shubhranshu Choudhary	1
maharashtra	72	Maharashtra	1
education	73	education	1
alternative-learning	74	alternative learning	1
organic-learning	75	organic learning	1
economy	76	economy	1
society-polity	77	society polity	1
paothang-channel	78	Paothang Channel	1
takhel	79	Takhel	1
pa-system	80	PA system	1
dr-aaditeshwar-seth	81	Dr Aaditeshwar Seth	1
gram-vaani	82	Gram Vaani	1
grins-gramin-radio-inter-networking-system	83	GRINS Gramin Radio Inter-Networking System	1
cgnetswara	84	CGNetSwara	1
adivasi-gonds	85	Adivasi Gonds	1
bill-thies	86	Bill Thies	1
cell-phone-based-networking-systems	87	Cell phone-based networking systems	1
seeds	88	seeds	1
biodiversity-conservation-farm	89	Biodiversity Conservation Farm	1
vandana-shiva	90	Vandana Shiva	1
dehra-dun	91	Dehra Dun	1
baiga	92	Baiga	1
adivasis	93	adivasis	1
madhya-pradesh	94	Madhya Pradesh	1
aravali	95	Aravali	1
mangarbani	96	Mangarbani	1
new-delhi	97	New Delhi	1
enironment	98	enironment	1
comunity-conservation	99	comunity conservation	1
community-conserved-areascca	101	community conserved areasCCA	1
globalisation	102	globalisation	1
nagaland	103	Nagaland	1
displacement	104	displacement	1
reporting	105	Reporting	1
news	106	News	1
kalpavriksh	107	Kalpavriksh	1
shikshantar	108	Shikshantar	1
deccan-development-society	109	Deccan Development Society	1
bhoomi-college	110	Bhoomi College	1
china	111	China	1
india	112	India	1
economic-growth	113	Economic Growth	1
climate-change	114	Climate Change	1
mendha-lekha-1	115	Mendha-Lekha	1
community-rights	116	Community Rights	1
community-based	132	community-based	1
monitoring	133	monitoring	1
rights-of-civil-society	134	rights of civil society	1
ration	135	ration	1
healthcare	136	healthcare	1
social-audit	137	social audit	1
tamil-nadu	138	Tamil Nadu	1
rajasthan	139	Rajasthan	1
mnregs	140	MNREGS	1
nrhm	141	NRHM	1
empowerment	142	empowerment	1
complaints	143	complaints	1
sathi-cehat	144	SATHI-CEHAT	1
intimidation	145	intimidation	1
limitations	146	limitations	1
formal-health-care-system	147	formal health-care system	1
allopathy	148	allopathy	1
cost	149	cost	1
mobile-phone	150	mobile phone	1
remote	151	remote	1
vaid	152	vaid	1
accredition	153	accredition	1
conservation	154	conservation	1
garbage-dump	155	Garbage dump	1
urine-stench	156	urine stench	1
paan-stains	157	paan stains	1
missing-footpath-slabs	158	missing footpath slabs	1
masks	159	masks	1
anonymity	160	anonymity	1
waterless	161	waterless	1
toilets	162	toilets	1
particularly-vulnerable-tribal-group	163	particularly vulnerable tribal group	1
garasiya	164	Garasiya	1
bhil	165	Bhil	1
korku	166	Korku	1
koraga	167	Koraga	1
jenu-khurba	168	Jenu Khurba	1
kothodi	169	Kothodi	1
sahariya	170	Sahariya	1
governance	171	governance	1
panchayati-raj	173	Panchayati Raj	1
bewar	174	bewar	1
penda	175	penda	1
traditional-agricultural-techniques	176	traditional agricultural techniques	1
madia	178	Madia	1
dindori	179	Dindori	1
mandla	180	Mandla	1
bhamragad	181	Bhamragad	1
environmental-stress	182	environmental stress	1
kutki	183	kutki	1
millet	184	millet	1
kohla	185	kohla	1
fra	186	FRA	1
habitat-rights	187	habitat rights	1
eco-tourism	188	eco-tourism	1
garo-hills	189	Garo hills	1
meghalaya	190	Meghalaya	1
swaraj	191	swaraj	1
balpakram	192	Balpakram	1
baghmara	193	Baghmara	1
butterflies	194	butterflies	1
birds	195	birds	1
siju	196	Siju	1
gongrot	197	Gongrot	1
land-ownership	198	land ownership	1
farms	199	farms	1
farmers	200	farmers	1
agriculture	201	agriculture	1
land-reform	202	land reform	1
family	203	family	1
womens-rights	204	womens rights	1
community	206	community	1
sacred	207	sacred	1
organic	213	organic	1
farming	214	farming	1
training	215	training	1
forest	216	forest	1
certifying-agencies	217	certifying agencies	1
karmari-village	218	Karmari village	1
sarpanch	219	sarpanch	1
damodar	220	Damodar	1
forest-regeneration	221	forest regeneration	1
mauli-kot	222	Mauli Kot	1
timber-smuggling	223	timber smuggling	1
village-forest	224	village forest	1
sacred-grove	225	sacred grove	1
mobilisation	226	mobilisation	1
adventure	227	Adventure	1
tourism	228	tourism	1
benefits	229	benefits	1
monastry	230	monastry	1
rumbak	231	Rumbak	1
wildlife	232	wildlife	1
building-materials	233	Building Materials	1
climate-adaptation	234	Climate Adaptation	1
disaster-housing	235	Disaster Housing	1
rural-architecture	236	Rural Architecture	1
low-popularity	237	low popularity	1
cuttack	238	Cuttack	1
rice	239	rice	1
organic-farming-1	240	organic farming	1
carbofuran	241	Carbofuran	1
bus	242	bus	1
tram	243	tram	1
metro	244	metro	1
automated-guided-transit	245	Automated Guided Transit	1
capital-requirement	246	capital requirement	1
energy-sources	247	energy sources	1
consumption	248	consumption	1
technology	249	technology	1
potential	250	potential	1
environmental-impact	251	environmental impact	1
mass-transport	252	mass transport	1
soligas	253	Soligas	1
brt	254	BRT	1
biligiri-rangaswamy-temple	255	Biligiri Rangaswamy Temple	1
homestays	256	homestays	1
arunachal-pradesh	257	Arunachal Pradesh	1
health-care	258	health-care	1
himalayan-states	259	Himalayan states	1
infrastructure	260	infrastructure	1
safety	261	safety	1
nutp	262	NUTP	1
quality-of-life	263	quality of life	1
decongestion	264	decongestion	1
fitness	265	fitness	1
agricultureal-biodiversity	266	agricultureal biodiversity	1
medak	267	medak	1
swashikshan	268	Swashikshan	1
unschooling	269	unschooling	1
alternative-education	270	alternative education	1
aarohi-school	271	aarohi school	1
hosur	272	Hosur	1
adharshila	273	Adharshila	1
tribal-education	274	tribal education	1
tilonia	275	Tilonia	1
barefoot-college	276	Barefoot college	1
sadhana-school	277	Sadhana School	1
village-school	278	Village school	1
learning	279	learning	1
pune	280	Pune	1
salem	281	salem	1
piyush-sethia	282	Piyush Sethia	1
fares	283	fares	1
connectivity	284	connectivity	1
harassment	285	harassment	1
bmtc	286	BMTC	1
shelters	287	shelters	1
forum	288	forum	1
facilities	289	facilities	1
transparency	290	transparency	1
alternative-transport	291	alternative transport	1
rickshaw	292	rickshaw	1
transport	293	transport	1
traditional-rickshaw	294	traditional rickshaw	1
dropouts	295	dropouts	1
hands-on	296	hands on	1
nature	297	nature	1
botanical	298	botanical	1
sanctuary	299	sanctuary	1
rainforest	300	rainforest	1
panchayat-raj	301	Panchayat Raj	1
panchayat-academy	302	Panchayat Academy	1
employment	303	employment	1
malmal	304	Malmal	1
khadi	305	khadi	1
decentralised-cotton-yarn-trust	306	Decentralised Cotton Yarn Trust	1
uzramma	307	Uzramma	1
cotton-seed	308	cotton seed	1
spinning	309	spinning	1
weaver	310	weaver	1
snp	311	SNP	1
icds	312	ICDS	1
wcd	313	WCD	1
thr	314	THR	1
take-home-ration	315	take home ration	1
anganwadi	316	anganwadi	1
supplementary-nutrition-programme-snp	317	supplementary nutrition programme SNP	1
mid-day-meal	318	Mid Day Meal	1
restoration	319	Restoration	1
bio-gas	320	bio-gas	1
horticulture	321	horticulture	1
activist	322	activist	1
sustainable	323	sustainable	1
toxin-free	324	toxin-free	1
dhas-gramin-vikas-kendra	325	Dhas Gramin vikas Kendra	1
rahul-banerjee	326	Rahul Banerjee	1
aerator	327	aerator	1
recharge	328	recharge	1
hand-pump	329	hand-pump	1
soil	330	soil	1
market	331	market	1
resources	332	resources	1
sovereignty	333	sovereignty	1
pesa	334	PESA	1
insimp	335	INSIMP	1
monoculture	336	monoculture	1
commons	337	commons	1
food	338	food	1
new-keyword	339	new keyword	1
\.


--
-- Data for Name: generic_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_rating (content_type_id, id, value, object_pk, rating_date, user_id) FROM stdin;
\.


--
-- Data for Name: generic_threadedcomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY generic_threadedcomment (by_author, comment_ptr_id, replied_to_id, rating_count, rating_average, rating_sum) FROM stdin;
f	1	\N	0	0	0
f	2	\N	0	0	0
f	3	2	0	0	0
f	4	2	0	0	0
f	5	\N	0	0	0
t	6	\N	0	0	0
f	7	\N	0	0	0
f	8	\N	0	0	0
f	9	\N	0	0	0
f	10	\N	0	0	0
f	11	\N	0	0	0
f	12	\N	0	0	0
f	14	\N	0	0	0
f	13	13	0	0	0
f	15	14	0	0	0
f	16	\N	0	0	0
f	17	16	0	0	0
t	18	\N	0	0	0
f	19	\N	0	0	0
t	20	18	0	0	0
\.


--
-- Data for Name: newsletter_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY newsletter_article (id, sortorder, title, text, url, image, post_id) FROM stdin;
\.


--
-- Data for Name: newsletter_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY newsletter_message (id, title, slug, newsletter_id, date_create, date_modify) FROM stdin;
4	Vikalp Sangam Weekly Digest	vikalp-sangam-weekly-digest	3	2014-03-31 11:38:28.320527+00	2014-03-31 11:38:28.320571+00
\.


--
-- Data for Name: newsletter_newsletter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY newsletter_newsletter (id, title, slug, email, sender, visible, send_html) FROM stdin;
3	Newsletter	newsletter	alternativesforum@gmail.com	Team Vikalp Sangam	t	t
\.


--
-- Data for Name: newsletter_newsletter_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY newsletter_newsletter_site (id, newsletter_id, site_id) FROM stdin;
3	3	1
\.


--
-- Data for Name: newsletter_submission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY newsletter_submission (id, newsletter_id, message_id, publish_date, publish, prepared, sent, sending) FROM stdin;
\.


--
-- Data for Name: newsletter_submission_subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY newsletter_submission_subscriptions (id, submission_id, subscription_id) FROM stdin;
\.


--
-- Data for Name: newsletter_subscription; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY newsletter_subscription (id, user_id, name, email, ip, newsletter_id, create_date, activation_code, subscribed, subscribe_date, unsubscribed, unsubscribe_date) FROM stdin;
11	\N	Vikalp	vikalp.github@gmail.com	10.0.2.2	3	2014-03-31 11:13:30.055593+00	f65bf60874521a872cd8d7fa469f01541db2166a	t	2014-03-31 11:13:30.064239+00	f	\N
\.


--
-- Data for Name: pages_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_link (page_ptr_id) FROM stdin;
7
8
13
14
16
18
20
22
24
28
\.


--
-- Data for Name: pages_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_page (status, _order, parent_id, description, title, short_url, login_required, id, expiry_date, publish_date, titles, content_model, slug, keywords_string, site_id, gen_description, in_menus, _meta_title, in_sitemap, created, updated) FROM stdin;
2	0	7	Footer / About Us	About Us	\N	f	8	\N	2014-02-09 23:09:10+00	Footer / About Us	link	about/co-hosts/		1	t	3	\N	f	2014-02-09 17:39:05.239875+00	2014-02-18 09:25:54.037473+00
2	1	7	Footer / Resources	Resources	\N	f	18	\N	2014-02-09 23:59:20+00	Footer / Resources	link	/resources/		1	t	3	\N	f	2014-02-09 18:29:15.350579+00	2014-02-09 18:56:31.385651+00
2	0	6	Story Category Descriptions\n 	Story Categories	\N	f	19	\N	2014-02-17 12:40:48+00	Contribute / Story Categories	richtextpage	contribute-a-story/story-categories		1	t			t	2014-02-17 12:40:55.937854+00	2014-02-20 08:51:34.388309+00
2	9	\N	Footer	Footer	\N	f	7	\N	2014-02-09 23:07:35+00	Footer	link	Footer		1	t	3	\N	f	2014-02-09 17:37:41.354528+00	2014-02-09 17:37:41.354528+00
2	6	\N	Browse through the list of resources, books, articles, videos etc about sustainability, ecology, environment, etc based on the categories listed below	Resources	\N	f	17	\N	2014-02-09 23:57:40+00	Resources	richtextpage	resources		1	f			t	2014-02-09 18:28:21.564407+00	2014-03-10 04:41:43.075223+00
2	1	6	Story Posting Guidelines\n	Story Guidelines	\N	f	21	\N	2014-02-17 12:46:22+00	Contribute / Story Guidelines	richtextpage	contribute-a-story/story-guidelines		1	t			t	2014-02-17 12:46:58.883779+00	2014-02-20 05:29:45.354239+00
2	1	17		Networks	\N	f	30	\N	2014-03-01 06:13:07+00	Resources / Networks	richtextpage	resources/networks		1	f			t	2014-03-01 06:25:53.77184+00	2014-03-10 04:42:09.324531+00
2	0	4	Co-hosts for Vikalp Sangam	Co-Hosts	\N	f	10	\N	2014-02-09 17:51:48+00	About / Co-Hosts	richtextpage	about/co-hosts		1	f			t	2014-02-09 17:51:48.010618+00	2014-02-28 06:07:44.921759+00
2	5	\N	Contact Us\nIf you have any queries or suggestions or need more information please contact us as below:	Contact Us	\N	f	15	\N	2014-02-09 23:50:42+00	Contact Us	form	contact-us		1	t	3		t	2014-02-09 18:23:22.761729+00	2014-02-20 09:09:07.128502+00
2	0	18	Footer / Resources / Stories on Map	Stories on Map	\N	f	22	\N	2014-02-18 09:30:27+00	Footer / Resources / Stories on Map	link	/map/		1	t	3	\N	f	2014-02-18 09:30:30.599307+00	2014-02-18 10:44:59.60995+00
2	1	18	Footer / Resources / Story Categories	Story Categories	\N	f	20	\N	2014-02-17 12:41:44+00	Footer / Resources / Story Categories	link	/contribute-a-story/story-categories		1	t	3	\N	f	2014-02-17 12:41:47.526344+00	2014-02-17 12:45:15.221017+00
2	0	17	Story Posting Guidelines\n	Story Guidelines	\N	f	23	\N	2014-02-18 09:31:49+00	Resources / Story Guidelines	richtextpage	resources/story-guidelines		1	t			t	2014-02-18 09:32:05.766228+00	2014-02-18 09:32:05.775056+00
2	4	\N	Credits for the Website	Credits	\N	f	12	\N	2014-02-09 23:41:13+00	Credits	richtextpage	credits		1	f	3		t	2014-02-09 18:11:45.090941+00	2014-02-18 13:51:47.674515+00
2	0	8	Footer / Contact Us	Contact Us	\N	f	16	\N	2014-02-09 23:54:43+00	Footer / About Us / Contact Us	link	/contact-us/		1	t	3	\N	f	2014-02-09 18:24:39.898218+00	2014-02-18 09:18:52.295585+00
2	1	8	Footer / Contact Us / Credits	Credits	\N	f	13	\N	2014-02-09 23:44:42+00	Footer / About Us / Credits	link	/credits/		1	t	3	\N	f	2014-02-09 18:14:39.790042+00	2014-02-18 09:18:54.908297+00
2	3	17		Presentations & Slideshows	\N	f	31	\N	2014-03-02 07:17:38+00	Resources / Presentations & Slideshows	richtextpage	resources/presentations-slideshows		1	f			t	2014-03-02 07:21:25.113435+00	2014-03-10 04:44:42.014703+00
1	4	17		Books & Reports	\N	f	32	\N	2014-03-05 04:20:37+00	Resources / Books & Reports	richtextpage	resources/books-reports		1	f			t	2014-03-05 04:25:30.794339+00	2014-03-10 04:45:16.662044+00
2	8	\N	As the world hurtles towards greater ecological devastation, inequalities, and social conflicts, the biggest question facing us is: are there alternative ways of meeting human needs and aspirations, without trashing the earth and without leaving half of humanity behind?\r\n\r\nAcross India (as in the rest of the world), this question is being answered by a multitude of grassroots and policy initiatives: from meeting basic needs in ecologically sensitive ways to decentralised governance and producer-consumer movements, from rethinking urban and rural spaces towards sustainability to struggles for social and economic equity.\r\n\r\nUnfortunately, documentation and public awareness of such initiatives in India is poor. There are very few attempts to consolidate and present in cohesive manner, the range of these alternatives.\r\n\r\nWe offer this website as one response to these gaps. It hopes to feature alternatives in the full range of human endeavour as they take place in India, and through this to help build bridges amongst them, learn from each other, and together present a challenge to the mainstream system. This is part of a larger process in which the co-host organisations are involved, at networking alternatives in India and internationally...	About	\N	f	4	\N	2014-01-29 16:21:37+00	About	richtextpage	about		1	f	1		t	2014-01-29 10:51:50.348337+00	2014-03-06 18:30:14.178284+00
2	2	17		Visual & Audio resources	\N	f	29	\N	2014-02-26 19:58:04+00	Resources / Visual & Audio resources	richtextpage	resources/visual-audio-resources		1	f			t	2014-02-26 20:07:37.869772+00	2014-03-10 04:43:32.010459+00
2	5	17		Newsletters & Websites	\N	f	33	\N	2014-03-06 16:37:53+00	Resources / Newsletters & Websites	richtextpage	resources/newsletters-websites		1	f			t	2014-03-06 16:42:48.149671+00	2014-03-10 04:45:36.284422+00
2	1	\N	These are stories that offer alternatives to current systems. The stories encompass Ecology, Livelihoods, Settlements, Alternative Politics, Environment, Learning and Education, Knowledge & Media, Transportation, Food and Water.\r\n	Stories	\N	f	2	\N	2014-01-28 13:49:56+00	Stories	richtextpage	article	ecology environment  Ecology environment energy education economy Record of Rights Deccan Development Society Bhoomi College Kalpavriksh Shikshantar democracy sustainability settlements seeds	1	f	1	Stories	t	2014-01-28 13:49:56.39985+00	2014-02-19 09:49:34.550826+00
2	2	6	Terms of Service and Copyright\n	Terms of Service	\N	f	27	\N	2014-02-19 07:29:36+00	Contribute / Terms of Service	richtextpage	contribute-a-story/terms-of-service		1	t			t	2014-02-19 07:31:26.606006+00	2014-02-20 10:50:15.419738+00
2	0	\N	\n	Home	\N	f	1	\N	2013-12-24 10:41:19.281+00	Home	richtextpage	/		1	t	1,2,3		t	2013-12-24 10:41:19.285+00	2013-12-24 10:41:19.285+00
2	2	7	Footer / Contribute A Story	Contribute A Story	\N	f	14	\N	2014-02-09 23:49:30+00	Footer / Contribute A Story	link	/contribute-a-story/		1	t	3	\N	f	2014-02-09 18:19:25.321363+00	2014-03-24 12:06:21.806913+00
2	0	14	Footer / Contribute a Story / Guidelines To Contribute	Guidelines To Contribute	\N	f	24	\N	2014-02-18 09:33:48+00	Footer / Contribute a Story / Guidelines To Contribute	link	/contribute-a-story/story-guidelines/		1	t	3	\N	f	2014-02-18 09:33:50.827188+00	2014-03-18 12:44:09.001979+00
2	1	14	Footer / Contribute a Story / Terms Of Service	Terms Of Service	\N	f	28	\N	2014-02-19 07:37:00+00	Footer / Contribute a Story / Terms Of Service	link	/contribute-a-story/terms-of-service		1	t	3	\N	f	2014-02-19 07:37:03.139249+00	2014-03-18 12:44:27.029714+00
2	3	\N	Story, Perspective, or Resources!	Add	\N	f	6	\N	2014-02-09 22:58:43+00	Add	form	contribute-a-story		1	f	1		t	2014-02-09 17:34:04.246039+00	2014-03-19 06:23:43.087544+00
2	7	\N	These are various events that are related to Alternatives like Ecology, Conservation, Energy, Settlement, Travel, Policy, Environment, Health & Hygiene, knowledge, Livelihoods, Society and Culture. This will be events organized across India. These events could be organized by a co-host or by any other organization that is working in Alternatives space.\r\n\r\nWe will be listing upcoming events as well as provide details of any Past events and any experience reports created\r\n 	Events	\N	f	26	\N	2014-02-19 07:12:45+00	Events	richtextpage	events		1	f	1	Events	t	2014-02-19 07:14:13.488398+00	2014-08-03 11:29:19.295014+00
2	2	\N	Policy Editorials\r\nThis is our editorial commentary on various policy matters related to sustainability and environmental justice. 	Perspectives	\N	f	5	\N	2014-02-09 22:52:43+00	Perspectives	richtextpage	policy-edits		1	f	1,2,3		t	2014-02-09 17:23:19.719147+00	2014-03-14 12:01:58.485263+00
\.


--
-- Data for Name: pages_richtextpage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pages_richtextpage (content, page_ptr_id) FROM stdin;
<h1>Story Posting Guidelines</h1>\n<p></p>\n<p>Please refer to these guidelines for posting stories to this site.</p>\n<ul>\n<li>Share a story summary</li>\n<li>Suggest the Category where this story should belong. You may suggest more than 1 category. Refer to <a href="/contribute/category-descriptions">Category descriptions.</a></li>\n<li>Provide contact details of the author or person(s) involved in the story</li>\n<li>Suggest keywords that would help others find this story</li>\n<li>Provide as much detail as possible</li>\n<li>Provide pictures to make the story more appealing</li>\n<li>If you have more than 1 file then please upload those as a single Zip file</li>\n</ul>\n<h3><strong>How to get Map Coordinates?</strong></h3>\n<p>Here are basic steps to get map coordinates lattitude and longitude from Google Maps<strong><br></strong></p>\n<ol>\n<li>Visit Google maps site <a href="http://maps.google.co.in" target="_blank">maps.google.co.in</a></li>\n<li>Search for the location of the story that you are sharing</li>\n<li>Right click close to the location and select menu "Whats here?"</li>\n<li>You should see the Lattitude and Longitude in the Search window of the map</li>\n<li>Please share these values in the contribute form</li>\n</ol>	23
<h3><img height="84" src="/static/media/uploads/logos/newsletterswebsites.png" style="vertical-align: middle; margin: 3px;" width="75">Newsletters &amp; websites</h3>\n<p></p>\n<h3>Newsletters</h3>\n<ul>\n<li><a href="http://kalpavriksh.org/index.php/outreach/people-in-conservation-newsletter.html" target="_blank">People in Conservation</a></li>\n<li><a href="http://kalpavriksh.org/index.php/conservation-livelihoods1/protected-area-update.html" target="_blank">Protected Area Update</a></li>\n</ul>\n<h3>Websites</h3>\n<ul>\n<li><a href="http://pathashaala.tcec-kfi.org/" target="_blank">Pathashaala - a school for learners</a></li>\n</ul>	33
<h2>Story Category Descriptions</h2>\n<p> </p>\n<h3><b>Society, culture and peace</b></h3>\n<p>What we want to feature here are initiatives to enhance social and cultural aspects of human life: the revival and progressive use of visual, performing, and other arts, of the myriad crafts of the country, of threatened or submerged languages, and other such cultural traits and processes. We would also like to cover the various struggles and constructive movements to achieve social justice and peace, to reduce inequalities and inequities of various kinds including caste, class, gender, ethnicity, and religion, and to create dignity in living for those currently oppressed and exploited. Finally, we include movements to generate ethical living and thinking, and spread values such as simplicity, honesty, frugality, and tolerance.</p>\n<p> </p>\n<p>What we would like to avoid here are initiatives that have communal, sexist, or other motives and biases that are related to social injustice and inequity, or those appealing to a narrow nationalism intolerant of other cultures and peoples.</p>\n<p> </p>\n<h3><b>Alternative economies &amp; technologies</b></h3>\n<p>This section would like to feature stories of initiatives that help to create an alternative to the dominant neo-liberal or state-dominated economy. These include: localisation of economic activity with democratic control, producer and consumer collectives, local currencies and trade, non-monetised exchage and the gift economy, ecologically sensitive products and processes, sustainable production and consumption, innovative technologies, macro-economic concepts that respect ecological limits, and approaches to human well-being that go beyond growth, GDP and other narrow measures and indicators.</p>\n<p> </p>\n<p>What we would like to avoid here are superficial and false solutions, such as predominantly market and technological fixes for problems that are deeply social and political, or more generally, ‘green growth’ kind of approaches that only tinker around with the existing system.</p>\n<p> </p>\n<h3><b>Livelihoods</b></h3>\n<p>The search for dignified, ecologically sustainable and meaningful livelihoods and jobs is what we would like to feature in this section. This includes the continuation and enhancement of fulfilling traditional occupations that communities choose to continue, including in agriculture, pastoralism, forestry, fisheries, crafts, and others in the primary economy. It also includes sustainable, dignified  jobs in manufacturing and service sectors where producers and service-providers are in control of their destinies and revenues are equitably distributed.</p>\n<p> </p>\n<p>What we would like to avoid here are livelihoods, traditional or modern, where non-workers are in control and profiting (monetarily or politically) from the exploitation of workers, even if the enterprise claims to be ecologically sustainable.</p>\n<p> </p>\n<h3><b>Settlements and Transportation </b></h3>\n<p>This features both rural and urban areas, and the search to make human settlements sustainable, equitable, and fulfilling places to live and work in. This includes: sustainable architecture, localized generation of basic infrastructural, water and energy needs, urban biodiversity conservation, waste/garbage minimisation and recycling, efficiency and frugality in the use of these basics, the defense and revival of common and open spaces, participatory budgeting and planning of settlements.</p>\n<p> </p>\n<p>We would also like to include stories of sustainable, equitable means of transport that can be accessed by all and that do not create ecological and social problems as is the case with a focus on privatized motorized transport. Stories on the promotion of public transport, cycling, walking, human/animal powered and other forms of ecologically sustainable and equitable transportation, planning for equitable access, reclaiming the roads and parking lots for public use, and so on, are featured.</p>\n<p> </p>\n<p>Expensive, elitist models that may be ecologically sustainable but are not relevant for most people, are likely to be avoided here.</p>\n<p> </p>\n<h3><b>Alternative politics </b></h3>\n<p>In this section we hope to feature initiatives and approaches towards people-centred governance and decision-making, with direct participation, and based on principles of social and environmental justice. This includes initiatives attempting to realize local non-hierarchical systems of decision-making in urban and rural areas, and linkages of these to each other at bio-cultural levels. We would also like to include collectives or communities that raise non-party political concerns at the local level and beyond, as well as initiatives that enhance accountability and transparency of political bodies. Policy frameworks that are based on or promote the alternative economies featured elsewhere on this site, such as well-being, instead of the mainstream development model which focuses on economic growth, would also be featured.</p>\n<p> </p>\n<h3><b>Knowledge and media</b></h3>\n<p>We would like to include here stories of use of knowledge as an empowering and enabling tool for a more equitable and ecologically sustainable world. This covers initiatives that encourage cross-fertilisation between ideas, and promote information exchange and transcending boundaries between modern and traditional, formal and informal, and urban and rural spheres of knowledge; processes that make information access free, or easier in places usually neglected, considered ‘remote’ or disconnected; initiatives to make knowledge part of the ‘commons’ rather than a commodity privately owned or controlled; and alternative media initiatives that raise questions ignored or deliberately allowed to remain  hidden in the mainstream media, and innovative use of media to communicate enabling information.</p>\n<p> </p>\n<h3><b>Environment and ecology</b></h3>\n<p>This section relates to initiatives that promote the principles of ecological integrity and limits. These are initiatives which envision models of decentralized conservation<i> </i>of land, water and biodiversity, based on a respect for both local and modern knowledge, and considering environment as an integral part of life and work.  It also highlight attempts at linking livelihoods to ecological regeneration and restoration at local and landscape level. We hope also to feature innovative attempts to deal with problems of pollution and waste. Overall, this section will try to work towards an understanding of the ecosystem which includes sociological, historical and geographical considerations while deciding on the path that local urban/ rural communities and the larger society take towards well-being.</p>\n<p> </p>\n<p>Superficial solutions to ecological problems, such as planting trees to offset pollution, are likely to be avoided here.</p>\n<p> </p>\n<h3><b>Energy</b></h3>\n<p>This section highlights initiatives that explore and encourage alternatives to the current centralized, environmentally damaging and unsustainable sources of energy, such as  decentralized renewable sources. It also includes attempts at ensuring equitable access to ecologically sustainable energy, optimizing production and distribution, improving efficiency, making public institutions accountable, and regulating demand (e.g. for luxury consumption).</p>\n<p> </p>\n<p>It is unlikely that this section will feature expensive, elitist technologies and processes that have no relevance to the majority of people.</p>\n<p> </p>\n<h3><b>Learning and Education</b></h3>\n<p>In this section we want to feature stories of initiatives to create spaces and opportunities for learning and education that enable continued or renewed connection with the environment and nature, with one’s community, with one’s inner voice, and with humanity as a whole. These are stories of efforts to nurture a fuller range of collective and individual potentials and relationships, stories of unlearning the alienating, fragmenting, individualizing ‘education’ that mainstream institutions have been giving, stories where the formal and the informal, the traditional and modern, the local and global, and the head-heart-hands are synergized to expand our imaginations. Initiatives ensuring accountability of public institutions including the state towards facilitating such learning and education would also be covered.</p>\n<p> </p>\n<h3><b>Health and Hygiene</b></h3>\n<p>We would like here to feature stories of initiatives ensuring healthcare for all. These are based on approaches that help prevent ill-health in the first place, including the provision of nutritional food, enabling an environment that is healthy, and so on. They include ensuring access to curative facilities to those who have conventionally not had such access. And they have stories of synergizing various health systems, traditional and modern, bringing back into popular use the diverse systems from India and outside including indigenous/folk medicine, nature cure, Ayurvedic, Unani and other such systems, and other holistic or integrative approaches. Community-based management and control of healthcare and hygiene, and ensuring accountability of the state’s responsibility towards citizens in health, are part of the stories featured here.</p>\n<p> </p>\n<h3><b>Food and Water</b></h3>\n<p>This section features initiatives towards producing and making accessible safe and nutritious food, sustaining the diversity of Indian cuisine, and promoting slow food. Along with this, it carries stories on making water use and distribution ecologically sustainable and equitable, achieving decentralised conservation, retaining water as part of the commons, and democratic governance of water and wetlands.</p>\n<p> </p>\n<p>We would like to avoid featuring purely elitist food fads even if they pertain to healthy or organic food, and expensive technological water solutions that have no relevance for the majority of people.</p>	19
<h2>Co-hosts of Vikalp Sangam</h2>\n<p></p>\n<h3><a href="http://www.kalpavriksh.org" target="_blank"><img height="190" src="/static/media/uploads/logos/kvlogo_withwords_small.png" style="margin: 3px; float: left;" width="120"></a><a href="http://www.kalpavriksh.org" target="_blank">Kalpavriksh</a></h3>\n<p>Kalpavriksh (KV) is a voluntary group based in India, working on environmental education, research, campaigns, and direct action. It began in 1979, with a students' campaign to save Delhi's Ridge Forest area from encroachments and destruction. Starting with these roots in local action, KV has moved on to work on a number of local, national, and global issues. Its activities are directed to ensuring conservation of biological diversity, challenging the current destructive path of 'development', helping in the search for alternative forms of livelihoods and development, assisting local communities in empowering themselves to manage their natural resources, and reviving a sense of oneness with nature.</p>\n<p></p>\n<p></p>\n<p></p>\n<p></p>\n<h2><a href="http://www.shikshantar.in" target="_blank"><img height="49" src="/static/media/uploads/logos/shikshantar_logo.jpg" style="vertical-align: top; margin: 3px;" width="382"></a></h2>\n<p>Shikshantar was founded in 1998 to challenge the culture of schooling and institutions of thought-control. Today, factory schooling is suppressing many diverse forms of human creativity, wisdom and cooperation whilst promoting a system built on the commodification of life. We are committed to creating spaces where individuals and communities can engage in deep dialogue to: <br>1) generate meaningful critiques to expose and dismantle existing models of Education, Development and Progress; <br>2) reclaim control over their own learning processes, knowledge systems and learning ecosystems; and <br>3) imagine (and continually re-imagine) their own shared visions, structures and practices for swaraj.</p>\n<p>Radical processes of unlearning, gift culture and jugaad are being experimented with in order to seed new alternatives. Shikshantar is based in Udaipur, Rajasthan. It has helped to incubate Swaraj University, Udaipur as a Learning City, Halchal Slow Food Cafe, Families Learning Together Network, Walkouts-Walkon Network and the Learning Societies Unconference.</p>\n<p><br><a href="http://www.swarajuniversity.org" target="_blank">http://www.swarajuniversity.org</a></p>\n<p></p>\n<h3><br><a href="http://www.bhoomicollege.org/" target="_blank"><img height="89" src="/static/media/uploads/logos/bhoomimaglogo.jpg" width="360"></a></h3>\n<p>Bhoomi Network is an NGO based in Bangalore which is committed to creating participative spaces for deep, holistic and practical learning for sustainable living. It has organized several conferences, unconferences and festivals on organic food and farming and other aspects of sustainability. </p>\n<p>It has also launched:</p>\n<p>The Bhoomi college (www.bhoomicollege.org) which offers a 1 year post graduate programme on Science and Management for Sustainable Living as well as short programmes on food, organic farming, deep ecology, holistic science and economics etc.</p>\n<p>The Eternal Bhoomi magazine (www.bhoomimagazine.org) which features positive initiatives of sustainable living as well as articles with holistic perspectives on Nature, ecology and culture from renowned writers and thinkers from around the world.</p>\n<div><a href="http://www.bhoomicollege.org/" target="_blank">www.bhoomicollege.org</a></div>\n<p><a href="http://www.bhoomimagazine.org/" target="_blank">www.bhoomimagazine.org</a></p>\n<p></p>\n<p></p>\n<h3><img src="/static/media/uploads/logos/dds_logo_3d.jpg" style="float: left; margin: 3px;" width="120"><a href="http://www.ddsindia.com/" target="_blank">Deccan Development Society</a> </h3>\n<p>The Deccan Development Society (DDS), is a two and half decade old grassroots organisation working in about 75 villages with women's Sanghams (voluntary village level associations of the poor) in the Medak District of Andhra Pradesh. The 5000 women members of the Society represent the poorest  segments in their village communities. Most of them are dalits, the most excluded group in the Indian social hierarchy.</p>\n<p>In order to produce a new dignity for the women from the bottom of the pyramind, DDS  has set for itself  the goal of achieving community sovereignty.</p>	10
<h2><strong>Credits</strong></h2>\n<p><strong>Madhuvanti Anantharajan</strong> for the logos.</p>\n<p><a href="http://in.boell.org/"><strong>Heinrich Boll Foundation</strong></a>  for ongoing part-funding of the site.</p>\n<p><a href="http://www.actionaid.org/india"><strong>Action Aid India</strong></a> for one-time financial support.</p>\n<p><strong><a href="http://www.thoughtworks.com">ThoughtWorks Technologies (India) Pvt. Ltd</a>.</strong> for the design and development of this website.</p>\n<p><strong>Vikal Samdariya</strong> for Hindi navigation words.<br><strong></strong></p>\n<p><strong>Sushruti Santhanam</strong> for Tamil navigation words.</p>	12
<blockquote>\n<p></p>\n</blockquote>	1
<h3><img height="67" src="/static/media/uploads/logos/presentss.png" style="margin: 3px; vertical-align: middle;" width="100">Presentations &amp; Slideshows</h3>\n<ul>\n<li>\n<p><a href="/static/media/uploads/Resources/cycle_safe_survey_highlights_3.ppsx">Promoting cycling in Pune by enhancing safety for cyclists</a>- by <span size="2">Amarnath and Sanskriti Menon, CEE (Center for Environment Education, Pune</span>)</p>\n</li>\n</ul>	31
<h3>About Vikalp Sangam</h3>\n<p>'Vikalp Sangam = Alternatives Confluence'</p>\n<p>As the world hurtles towards greater ecological devastation, inequalities, and social conflicts, the biggest question facing us is: are there alternative ways of meeting human needs and aspirations, without trashing the earth and without leaving half of humanity behind?</p>\n<p>Across India (as in the rest of the world), this question is being answered by a multitude of grassroots and policy initiatives: from meeting basic needs in ecologically sensitive ways to decentralised governance and producer-consumer movements, from rethinking urban and rural spaces towards sustainability to struggles for social and economic equity.</p>\n<p>Unfortunately, documentation and public awareness of such initiatives in India is poor. There are very few attempts to consolidate and present in cohesive manner, the range of these alternatives.</p>\n<p>We offer this website as one response to these gaps. It hopes to feature alternatives in the full range of human endeavour as they take place in India, and through this to help build bridges amongst them, learn from each other, and together present a challenge to the mainstream system. This is part of a larger process in which the co-host organizations are involved, at networking alternatives in India and internationally.</p>\n<p>Alternative initiatives featured here can be practical activities, policies, processes, technologies, and concepts/frameworks. They can be practiced or proposed/propagated by communities, government, civil society organizations, individuals. Their main features are:</p>\n<ol>\n<li>Ecological sustainability, including the conservation of nature (ecosystems, species, functions, cycles) and its resilience.</li>\n<li>Social well-being and justice, including lives that are fulfilling and satisfactory physically, socially, culturally, and spiritually, and where there is equity in socio-economic and political entitlements, benefits, rights and responsibilities.</li>\n<li>Direct democracy, where decision-making starts at the smallest unit of human settlement, in which every human has the right, capacity and opportunity to take part, and builds up from this unit to larger levels of governance that are downwardly accountable.</li>\n<li>Economic democracy, in which local communities (including producers and consumers, often combined in one) have control over the means of production, distribution, exchange, markets; where localization is a key principle, and larger trade and exchange is built on it.</li>\n</ol>\n<p>Of course no single initiative may have all these features, but even if they have one they are worth featuring here, so long as they are not seriously threatening the others. For instance, we may not put up a brilliant new green technology that is so expensive it will be usable only for the rich, unless it also has potential to reach the poor. Or a greening initiative by a communally fundamentalist organization. Or a radical political experiment that is bent on clearfelling a forest to make its point. There will always be greys in the spectrum of alternatives, but we will learn as we proceed how to distinguish genuine attempts from superficial or counterproductive ones. </p>\n<h3><a href="/about/co-hosts/">Click here to read about <span class="external">the co-hosts</span></a></h3>	4
<blockquote>\n<p></p>\n</blockquote>	2
<h2>Terms of Service and Copyright</h2>\n<p><a href="http://creativecommons.org/licenses/by-nc-sa/4.0/deed.en_US" rel="license"><img alt="Creative Commons License" src="http://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png"></a></p>\n<p>This work is licensed under a <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/deed.en_US" rel="license">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.</p>\n<p>The above applies to all material on this website unless otherwise specifically mentioned by the author. </p>\n<p>All ideas and opinions expressed here are those of the authors themselves and not necessarily supported or seconded by Vikalp Sangam.</p>\n<p>Re-production of material on this site from other sources is in the spirit of further spreading the message of sustainability and equity, and is for purely non-commercial purposes. We apologise if we have not been able to take permission from authors or publishers for each story reproduced here. If any author or copyright holder has objections to such reproduction, please let us know and we will immediately take their material off the site.</p>\n<p>Also, all content - text, images, audio, video and data is assumed to be original and if not original free of any copyright. Vikalp Sangam, or anyone associated with this site is not responsible for any copyright violations.</p>\n<p>Any uses or re-production of this material should be accompanied by acknowledgement of the original source.</p>	27
<h1>Story Posting Guidelines</h1>\n<p></p>\n<p>Please refer to these guidelines for posting stories to this site.</p>\n<ul>\n<li>Share a story summary</li>\n<li>Suggest the Category where this story should belong. You may suggest more than 1 category. Refer to <a href="/contribute-a-story/story-categories/">Category descriptions.</a></li>\n<li>Provide contact details of the author or person(s) involved in the story</li>\n<li>Suggest keywords that would help others find this story</li>\n<li>Provide as much detail as possible</li>\n<li>Provide pictures to make the story more appealing</li>\n<li>If you have more than 1 file then please upload those as a single Zip file</li>\n</ul>\n<h3><strong>How to get Map Coordinates?</strong></h3>\n<p>Here are basic steps to get map coordinates latitude and longitude from Google Maps<strong><br></strong></p>\n<ol>\n<li>Visit Google maps site <a href="http://maps.google.co.in" target="_blank">maps.google.co.in</a></li>\n<li>Search for the location of the story that you are sharing</li>\n<li>Right click close to the location and select menu "Whats here?"</li>\n<li>You should see the Latitude and Longitude in the Search window of the map</li>\n<li>Please share these values in the contribute form</li>\n</ol>	21
<h3><img height="64" src="/static/media/uploads/logos/networks_1.png" style="vertical-align: middle; margin: 3px;" width="75">Networks<br><br></h3>\n<ul>\n<li>The Initiative on Waste, Informal workers and Chennai’s Future is a coalition led by Transparent Chennai, MIDS and GAIA working on issues related to<strong><a href="http://www.transparentchennai.com/" target="_blank"> solid waste management in Ward 173</a></strong> for the past year. We have recently completed a detailed mapping and survey exercise on waste generation and composition in the ward</li>\n<li>A study shows that both citizens groups and political parties want to improve the <strong><a href="/article/participatory-budgeting-in-pune-a-critical-review/#.UxLNB866Zdg" target="_blank">Participatory Budgeting process</a></strong> introduced by the Pune Municipal Corporation, and both would be important actors in the further evolution of this process</li>\n<li>In almost three years of deployment in India,<a href="http://itidjournal.org/index.php/itid/article/view/1053" target="_blank"><strong> CGNet Swara</strong></a> has logged more than 137,000 phone calls and released 2,100 messages.</li>\n<li>The <a href="http://peopleslinguisticsurvey.org/Default.aspx" target="_blank"><strong>PLSI</strong></a> is an authentic and comprehensive survey carried out by persons who belong to the respective speech communities or have worked closely with them over a considerable period of time.</li>\n</ul>	30
<h2>Policy Editorials</h2>\n<p>This is our editorial commentary on various policy matters related to sustainability and environmental justice.</p>	5
<h2><span>Upcoming Events</span></h2>\n<h3><span> Learning Un Learning: Sadhana Village School</span></h3>\n<p>The program of Learning Un Learning will be at Adliabad from March 24th till 28th at Guruji s Kalashram.<br><a href="http://www.kalaashram.org/p/about.html" target="_blank">http://www.kalaashram.org/p/<wbr></wbr>about.html</a><br>The fees is Rs 4000 which includes simple food, stay and donation to Ashram. If you can afford please consider to donate to meet expenses of documentation etc.</p>\n<p>After this event Guruji is having 3 days - 29, 30, 31- Ugadi celebrations. You may stay back for this event too.<br>Do confirm your participation as soon as possible.</p>\n<p><span><strong><a href="/article/learning-un-learning-program/#.UxVe1M66Zdg" target="_blank">MORE DETAILS</a></strong></span></p>\n<p><span><strong><br></strong></span></p>\n<hr>\n<p><span><strong>Free Spring Protection Course in Panchgani : MRA, Panchgani<br></strong></span></p>\n<p><strong>To celebrate World Water Day 2014,</strong> we will be holding a short course on spring protection in Panchgani, Maharashtra on March 20th &amp; 21st, 2014. The goal is to build awareness and capacity within the Western Ghats to protect spring ecosystems and ensure safe, sustainable drinking water. Day 1 includes presentations by various experts and farmers with local experience covering basic concepts and best practices. Adequate time will be given for interaction regarding participant-specific issues – so bring maps and photos if you have them. The overnight and second day is optional and will include a field visit/work day for hands on training at a village site"</p>\n<p><span><strong>To register, or for more information on the programme or travel details please contact Archana Rao at <a href="mailto:arao.grampar@gmail.com" target="_blank">arao.grampar@gmail.com</a> or on 7758009817</strong></span></p>\n<p><span><strong><a href="/static/media/uploads/Events/spring_protection_course_invite_mar20_panchgani.pdf">Invitation &amp; Programme</a><br></strong></span></p>\n<p></p>\n<hr>\n<p><strong>National Conference on Technology, Policy and Community: Small Experiments </strong><br><strong> in Sustainability</strong><br> <br> <b>Date: March 14-15, 2014, Hyderabad</b><br> <em>Organized by Department of Humanities and Social Sciences, BITS Pilani, </em><br><em> Hyderabad campus</em></p>\n<p>Knowledge accumulated by communities over generations in the areas of agriculture, water harvesting methods and uses of water which seem to be based on notions of sustainability have been attracting increased attention. However, the communities seem to be faced with the challenges posed by state policies which are based on notions of scalability and administrative and bureaucratic control wherein the focus is on one policy for all areas as against the knowledge of small communities which is unique to specific areas. <br> <strong><a href="/article/national-conference-on-technology-policy-and-community-small-experiments-in-sustainability/#.UxLG9s66Zdg" target="_blank"></a></strong></p>\n<p><strong><a href="/article/national-conference-on-technology-policy-and-community-small-experiments-in-sustainability/#.UxLG9s66Zdg" target="_blank">FOR MORE DETAILS</a></strong></p>\n<h2></h2>\n<hr>\n<h2></h2>\n<h2>Past Events</h2>\n<h4></h4>\n<h4>Round table on 'Energy Transition in India', Pune</h4>\n<p><strong>Summary:</strong> Heinrich Boell Foundation and CEE invite you to a Roundtable Discussion on Energy Transition in India : Exploring the German Energiewende.<br>Energiewende (German for 'energy transition') is currently one of the most ambitious concepts for transforming a country's energy system from a fossil fuel basis towards renewable sources. Germany has over the past years designed policies on the reduction of fossil fuel use, climate protection, a phase-out of nuclear power and the scale-up of renewable energies for a sustainable development of its energy regime. The final goal is the full electricity shift towards renewable energy sources supported by energy efficiency while ensuring energy security for the economy, creating green jobs and reducing greenhouse gas emissions.</p>\n<p><strong>Date:</strong> 1 March, 2014</p>\n<p><strong>Location:</strong> YASHADA, Near University Circle, Baner Road, Pune - 411 007</p>\n<p><strong>Contact:</strong> sanskriti.menon [at] ceeindia.org</p>\n<p><a href="/static/media/uploads/Events/invitation_energiewende_roundtable_pune.pdf">Click here to see full invite</a> (pdf, 398KB)</p>\n<p></p>\n<hr>\n<h4></h4>\n<h4>Adivasi Food festival, Odisha</h4>\n<p><strong>Summary:</strong> This is a unique event where people from a dozen tribes who live in the villages of Odisha, Jharkhand, Chhattisgarh, Madhya Pradesh and Maharashtra will gather with their local produce to tell us how and why they prefer their traditional food. Members from the Kondh, Koya, Didai, Santhal, Juanga, Baiga, Bhil, Pahari Korva, Paudi Bhuiyan and Birhor from more than 300 villages spread across the tribal heartland of India.</p>\n<p><strong>Date:</strong> 25th February, 2014<strong></strong></p>\n<p><strong>Location:</strong> Bisamcuttack, Rayagada, Odisha</p>	26
<h2>List of resources </h2>\n<p>Browse through the list of resources, books, articles, videos etc about sustainability, ecology, environment,education, etc.</p>\n<h3><a href="/resources//videos/" target="_blank"><img height="62" src="/static/media/uploads/Story_Images/chattisgarh_snake_video.png" style="margin: 5px; vertical-align: middle;" width="64"></a><a href="/resources/visual-audio-resources/" target="_blank">Visual &amp; Audio resources</a></h3>\n<h3><img height="64" src="/static/media/uploads/logos/networks_1.png" style="vertical-align: middle; margin: 3px;" width="75"><a href="/resources/networks/" target="_blank">Networks</a></h3>\n<h3><img height="50" src="/static/media/uploads/logos/presentss.png" style="vertical-align: middle; margin: 3px;" width="75"><a href="/resources/presentations-slideshows/" target="_blank">Presentations &amp; Slide shows</a></h3>\n<p></p>\n<h3><img height="57" src="/static/media/uploads/logos/bksrep.png" style="vertical-align: middle; margin: 3px;" width="75"><a href="/resources/books-reports/">Books &amp; Reports</a></h3>\n<p></p>\n<h3><a href="/resources/newsletters-websites/" target="_blank"><img height="84" src="/static/media/uploads/logos/newsletterswebsites.png" style="vertical-align: middle; margin: 3px;" width="75">Newsletters &amp; Websites</a></h3>	17
<h3><img height="62" src="/static/media/uploads/Story_Images/chattisgarh_snake_video.png" style="vertical-align: middle;" width="64">Visual &amp; Audio resources</h3>\n<ul>\n<li><a href="http://www.youtube.com/user/sadhanavillagepune" target="_blank">Sadhana Village school</a> (Read more about <a href="/article/understanding-children-anew-beyond-teacher-taught-paradigm/#.Uw5JJ866Zdg" target="_blank">Sadhana Village School</a> Pune)</li>\n<li><strong>Published on Nov 2, 2012:</strong>SWaCH members -- waste-pickers in Pune and Pimpri Chinchwad, India -- discussed Extended Producer Resposibility at a consultation held on October, 30, 2012. Highlights from the consultation are shown in the<a href="https://www.youtube.com/watch?v=ysg4rKQrLGo&amp;noredirect=1"><strong> film</strong>.</a> ....Read More about <a href="/article/picking-a-brighter-future/"><strong>SWach</strong></a></li>\n<li>Watch <strong><a href="https://www.youtube.com/watch?v=oSzWOkrLeIo" target="_blank">Elango talk</a></strong> at the 4th. NCSE seminar, about how he worked towards creating a Model Village in Tamil Nadu. Read about him <a href="/article/ignited-minds-elango-turns-kuthambakkam-village-as-a-model-village/#.UxLZdM66Zdg" target="_blank">here</a></li>\n</ul>	29
<h3><img height="57" src="/static/media/uploads/logos/bksrep.png" style="vertical-align: middle; margin: 3px;" width="75">Books &amp; reports</h3>\n<p></p>\n<ul>\n<li>\n<p><a href="/static/media/uploads/Stories_PDFs/sustainability_framework_epw_july_27_2013.pdf" target="_blank"><strong>Sustainability Framework for India</strong></a> is aimed at policy-level discussions, as well as an aid to civil society to push for necessary changes to take Indian economy, society and polity towards the goal of human well-being with ecological sustainability as one fulcrum. A possible post-2015 framework of implementation of the Millennium Development Goals, that combines sustainability and human well-being, that could be applied globally, including its key principles, is attempted at here (First Published in Economic &amp; Political Weekly, july 27, 2012)</p>\n</li>\n<li>Mansoor Khan the author of the<a href="/static/media/uploads/Resources/concept_note_-_the_third_curve.pdf" target="_blank"><strong> The Third Curve</strong></a>: the end of growth will present a series of lectures in various places. To track and note his lectures please check the <a href="http://www.mansoorkhan.net/" target="_blank">Calendar on his webpage</a></li>\n</ul>\n<ul>\n<li>Suitability of alternative systems for <strong>urban mass transport</strong> for  Indian cities by Verma, Ashish and Dhinga, S.L.  The <a href="/static/media/uploads/Stories_PDFs/sustainabilityofalternatesysforumt_indiancities_verma_dhingra_et18.pdf" target="_blank"><strong>present paper</strong></a>, discusses the public transport requirements by the stages of growth of a city, and lists criteria for judging how a decision may be made about the mode to selected for addition to a given city's infrastructure.. and presents in detail, the alternative systems of urban mass transit and their system characteristics, and tries to establish their suitability for Indian Cities of various size and form  First <a href="http://hdl.handle.net/10077/6865">Published in</a> EUT Edizioni Università di Trieste ISTIEE Istituto per lo studio dei trasporti nell’integrazione economica</li>\n</ul>	32
\.


--
-- Data for Name: sitemaps_testmodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sitemaps_testmodel (id, name) FROM stdin;
\.


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	django_extensions	0001_empty	2014-01-28 13:24:45.821627+00
2	conf	0001_initial	2014-01-28 13:24:45.896872+00
3	conf	0002_auto__add_field_setting_site	2014-01-28 13:24:45.918723+00
4	conf	0003_update_site_setting	2014-01-28 13:24:45.929849+00
5	conf	0004_ssl_account_settings_rename	2014-01-28 13:24:45.938495+00
6	core	0001_initial	2014-01-28 13:24:46.017279+00
7	pages	0001_initial	2014-01-28 13:24:46.062705+00
8	pages	0002_auto__del_field_page__keywords__add_field_page_keywords_string__chg_fi	2014-01-28 13:24:46.135511+00
9	blog	0001_initial	2014-01-28 13:24:46.21292+00
10	blog	0002_auto	2014-01-28 13:24:46.254616+00
11	blog	0003_categories	2014-01-28 13:24:46.280757+00
12	blog	0004_auto__del_field_blogpost_category	2014-01-28 13:24:46.306929+00
13	blog	0005_auto__del_comment__add_field_blogpost_comments_count__chg_field_blogpo	2014-01-28 13:24:46.37769+00
14	blog	0006_auto__del_field_blogpost__keywords__add_field_blogpost_keywords_string	2014-01-28 13:24:46.433311+00
15	core	0002_auto__del_keyword	2014-01-28 13:24:46.442405+00
16	core	0003_auto__add_sitepermission	2014-01-28 13:24:46.488851+00
17	core	0004_set_site_permissions	2014-01-28 13:24:46.508458+00
18	core	0005_auto__chg_field_sitepermission_user__del_unique_sitepermission_user	2014-01-28 13:24:46.561093+00
19	generic	0001_initial	2014-01-28 13:24:46.708747+00
20	generic	0002_auto__add_keyword__add_assignedkeyword	2014-01-28 13:24:46.855279+00
21	generic	0003_auto__add_rating	2014-01-28 13:24:46.889796+00
22	generic	0004_auto__chg_field_rating_object_pk__chg_field_assignedkeyword_object_pk	2014-01-28 13:24:46.956569+00
23	generic	0005_keyword_site	2014-01-28 13:24:46.996612+00
24	generic	0006_move_keywords	2014-01-28 13:24:47.023852+00
25	generic	0007_auto__add_field_assignedkeyword__order	2014-01-28 13:24:47.058495+00
26	generic	0008_set_keyword_order	2014-01-28 13:24:47.088857+00
27	generic	0009_auto__chg_field_keyword_title__chg_field_keyword_slug	2014-01-28 13:24:47.16627+00
28	generic	0009_auto__del_field_threadedcomment_email_hash	2014-01-28 13:24:47.19512+00
29	generic	0010_auto__chg_field_keyword_slug__chg_field_keyword_title	2014-01-28 13:24:47.269321+00
30	generic	0011_auto__add_field_threadedcomment_rating_count__add_field_threadedcommen	2014-01-28 13:24:47.314325+00
31	generic	0012_auto__add_field_rating_rating_date	2014-01-28 13:24:47.349687+00
32	generic	0013_auto__add_field_threadedcomment_rating_sum	2014-01-28 13:24:47.385946+00
33	generic	0014_auto__add_field_rating_user	2014-01-28 13:24:47.425826+00
34	blog	0007_auto__add_field_blogpost_site	2014-01-28 13:24:47.57395+00
35	blog	0008_auto__add_field_blogpost_rating_average__add_field_blogpost_rating_cou	2014-01-28 13:24:47.64173+00
36	blog	0009_auto__chg_field_blogpost_content	2014-01-28 13:24:47.714685+00
37	blog	0010_category_site_allow_comments	2014-01-28 13:24:47.776866+00
38	blog	0011_comment_site_data	2014-01-28 13:24:47.818232+00
39	blog	0012_auto__add_field_blogpost_featured_image	2014-01-28 13:24:47.866083+00
40	blog	0013_auto__chg_field_blogpost_featured_image	2014-01-28 13:24:47.936795+00
41	blog	0014_auto__add_field_blogpost_gen_description	2014-01-28 13:24:47.994858+00
42	blog	0015_auto__chg_field_blogcategory_title__chg_field_blogcategory_slug__chg_f	2014-01-28 13:24:48.13135+00
43	blog	0016_add_field_blogpost__meta_title	2014-01-28 13:24:48.183217+00
44	blog	0017_add_field_blogpost__related_posts	2014-01-28 13:24:48.234637+00
45	blog	0018_auto__add_field_blogpost_in_sitemap	2014-01-28 13:24:48.285175+00
46	blog	0019_auto__add_field_blogpost_rating_sum	2014-01-28 13:24:48.345431+00
47	blog	0020_auto__add_field_blogpost_created__add_field_blogpost_updated	2014-01-28 13:24:48.402724+00
48	forms	0001_initial	2014-01-28 13:24:48.613671+00
49	forms	0002_auto__add_field_field_placeholder_text	2014-01-28 13:24:48.644534+00
50	forms	0003_auto__chg_field_field_field_type	2014-01-28 13:24:48.701489+00
51	forms	0004_auto__chg_field_form_response__chg_field_form_content	2014-01-28 13:24:48.772989+00
52	forms	0005_auto__chg_field_fieldentry_value	2014-01-28 13:24:48.826022+00
53	pages	0003_auto__add_field_page_site	2014-01-28 13:24:48.952711+00
54	pages	0004_auto__del_contentpage__add_richtextpage	2014-01-28 13:24:48.975368+00
55	pages	0005_rename_contentpage	2014-01-28 13:24:48.993904+00
56	pages	0006_auto__add_field_page_gen_description	2014-01-28 13:24:49.034761+00
57	pages	0007_auto__chg_field_page_slug__chg_field_page_title	2014-01-28 13:24:49.119131+00
58	pages	0008_auto__add_link	2014-01-28 13:24:49.146744+00
59	pages	0009_add_field_page_in_menus	2014-01-28 13:24:49.180114+00
60	pages	0010_set_menus	2014-01-28 13:24:49.202088+00
61	pages	0011_delete_nav_flags	2014-01-28 13:24:49.222862+00
62	pages	0012_add_field_page__meta_title	2014-01-28 13:24:49.248575+00
63	pages	0013_auto__add_field_page_in_sitemap	2014-01-28 13:24:49.28928+00
64	pages	0014_auto__add_field_page_created__add_field_page_updated	2014-01-28 13:24:49.333063+00
65	galleries	0001_initial	2014-01-28 13:24:49.449085+00
66	twitter	0001_initial	2014-01-28 13:24:49.55517+00
67	twitter	0002_auto__chg_field_query_value	2014-01-28 13:24:49.588353+00
68	vikalp	0001_initial	2014-01-28 13:24:49.679083+00
69	vikalp	0002_initial	2014-01-28 13:24:49.682941+00
70	vikalp	0003_auto__add_article	2014-01-28 13:24:49.866647+00
71	vikalp	0004_auto__add_apost	2014-01-28 13:24:49.921053+00
72	vikalp	0005_auto__del_apost	2014-01-28 13:24:49.967138+00
73	vikalp	0006_auto__add_field_article_content_type	2014-01-28 13:24:50.024974+00
74	vikalp	0007_auto__del_field_article_content_type	2014-01-28 13:24:50.068642+00
75	vikalp	0008_auto__add_articlecategory	2014-01-28 13:24:50.1196+00
76	vikalp	0009_auto__del_articlecategory	2014-01-28 13:24:50.165755+00
77	vikalp	0010_auto__add_field_article_add_to_carousel	2014-01-28 13:24:50.218504+00
78	vikalp	0011_auto__del_field_article_add_to_carousel	2014-01-28 13:24:50.262535+00
79	vikalp	0012_auto__add_articlecategory	2014-01-28 13:24:50.320371+00
80	vikalp	0013_auto	2014-01-28 13:24:50.378799+00
81	vikalp	0014_auto__del_field_articlecategory_category_image	2014-01-28 13:24:50.431568+00
82	vikalp	0015_auto__add_field_articlecategory_category_image	2014-01-28 13:24:50.491399+00
83	vikalp	0016_auto__add_field_article_article_author	2014-01-28 13:24:50.54847+00
84	vikalp	0017_auto__add_field_article_add_to_carousel	2014-01-28 13:24:50.609694+00
85	vikalp	0018_auto__add_field_articlecategory_category_long_description__chg_field_a	2014-02-05 06:56:43.414459+00
86	vikalp	0019_auto__chg_field_articlecategory_category_long_description__chg_field_a	2014-02-05 06:56:43.528808+00
87	vikalp	0020_auto__chg_field_articlecategory_category_long_description	2014-02-05 06:56:43.636356+00
88	vikalp	0021_auto__add_field_article_lattitude__add_field_article_longitude	2014-02-12 13:19:07.210304+00
89	vikalp	0022_auto__chg_field_article_longitude__chg_field_article_lattitude	2014-02-12 13:19:07.339615+00
90	vikalp	0023_auto__del_field_article_lattitude__add_field_article_latitude	2014-02-12 13:19:07.429783+00
91	vikalp	0024_auto__add_field_article_show_download_link	2014-03-10 05:46:16.363251+00
92	vikalp	0025_auto__del_field_article_show_download_link	2014-03-11 10:31:21.152495+00
93	newsletter	0001_initial	2014-03-31 05:44:02.79211+00
94	newsletter	0002_auto__del_field_article_thumb	2014-03-31 05:44:02.822536+00
95	newsletter	0003_auto__chg_field_article_image	2014-03-31 05:44:02.886232+00
96	newsletter	0004_template_files	2014-03-31 05:44:02.910623+00
97	newsletter	0005_auto__del_emailtemplate__del_unique_emailtemplate_title_action__del_fi	2014-03-31 05:44:02.937034+00
98	newsletter	0006_auto__add_field_newsletter_send_html	2014-03-31 05:44:02.974274+00
\.


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY thumbnail_kvstore (key, value) FROM stdin;
\.


--
-- Data for Name: twitter_query; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_query (interested, type, id, value) FROM stdin;
\.


--
-- Data for Name: twitter_tweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY twitter_tweet (retweeter_profile_image_url, text, created_at, remote_id, retweeter_user_name, profile_image_url, full_name, query_id, user_name, id, retweeter_full_name) FROM stdin;
\.


--
-- Data for Name: vikalp_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY vikalp_article (blogpost_ptr_id, promoted, article_author, add_to_carousel, longitude, latitude) FROM stdin;
16	f		f	\N	\N
3	t	Ashish Kothari	f	\N	\N
5	f	Niveditha Jain	f	\N	\N
21	f		f	85.3179930	23.8757920
79	f	Vashima Goyal 	f	73.5637520	18.5733620
78	f	Chandrika Maheshwari	f	74.9371360	26.6524450
4	f	Ashish Kothari	f	73.8286660	18.5072410
20	f	Thingnam Anjulika Samom	f	94.0471490	24.8212300
25	f	AMITA BAVISKAR	f	77.1821700	28.4963970
57	f	Seema Bhatt	f	\N	\N
9	f	Ashish Kothari	f	\N	\N
27	f	Adil Basha	f	76.6492900	12.6622800
24	f	Ashish Kothari & Shiba Desor	f	81.0758970	22.9457480
23	f		f	78.0399510	30.3257680
1	t	Aditya Malaviya	f	\N	\N
54	f	Ashish Kothari	f	85.8828160	20.4678680
6	t	Grace Boyle and Avinash Krishnamurthy	f	\N	\N
7	t	Ashish Kothari	f	\N	\N
8	t	Akshai Jain	f	\N	\N
14	f	Dipak K Dash	f	\N	\N
73	f	J B S Umanadh, Hyderabad	f	77.6165910	17.6850770
53	f	Ankur Paliwal	f	71.1817360	26.1162940
43	f	Aparna Pallavi	f	\N	\N
60	f	Editor, CauseBecause October 19, 2010	f	\N	\N
40	f	Madhu Ramnath	f	82.0143950	19.0912790
10	f	Steve Muhlberger,  Associate Professor of History, Nipissing University	f	\N	\N
39	f	 Neyaz Farooquee	f	\N	\N
81	f	Vinay Sreenivasa	f	77.5911140	13.0138810
72	f	Ashish Kothari	f	\N	\N
22	f	Keya Acharya	f	81.8444820	21.7390910
12	t	Ashish Kothari	f	\N	\N
56	f	Shiba Desor, Ashish Kothari, Nitin Rai	f	77.1389290	12.0027190
31	f	Aparna Pallavi	f	80.2845020	20.2455290
45	f	Manish Jain	f	73.6863000	24.5787000
2	t	Ashish Kothari, Neema Pathak	f	80.2355680	30.0795310
11	f	wharton, Univ. of Pennsylvania	f	69.6688840	23.2413460
32	f	Madhavi Rajadhyaksha	f	\N	\N
26	f	Ashish Kothari & Neema Pathak	f	\N	\N
48	f	Keya Acharya	f	77.5275060	13.2936985
80	f	Adil Basha	f	78.1446650	11.6737550
42	f	Vasanthi Hariprakash	f	77.0000000	12.0000000
44	f	Yaranajit Deka, Nimesh Ved	f	90.0000000	25.0000000
52	f	Seema Bhatt	f	\N	\N
74	f	Dola Dasgupta	f	73.8547900	18.5362580
77	f	Christian Casillas	f	77.2320550	26.1751590
59	f	Seema Bhatt	f	\N	\N
75	f	Aarohi school	f	77.6442720	13.0005440
50	f	Karma Samten Yangzom	f	88.0000000	27.0000000
15	f	Anand Bodh	f	\N	\N
13	f	Keya Acharya	f	\N	\N
41	f		f	\N	\N
69	f	Ramgopal K	f	78.5003200	17.4284300
18	t	Sachin Desai	f	73.5835286	16.0353545
82	f	SUM Net India	f	76.7793969	30.7332998
76	f	Rasika Dhavse	f	74.0587834	18.8327833
90	f	Pradeep Baisakh	f	84.9645990	21.5552840
92	f	Venugopal Pillai	f	75.8591080	22.7312240
84	f	SUM Net India	f	74.0250000	30.4030000
68	f	Anand Giridharadas	f	73.9137000	22.3579000
17	t	Aparna Pallavi	f	\N	\N
86	f	Sanskriti Menon, with inputs from Avinash Madhale and Amarnath	f	\N	\N
67	f	Shilpa Jain and Manish Jain	f	73.6863000	24.5787000
66	f	Ravi Gulati, Founder, Manzil	f	77.2223000	28.5991000
91	f	The Hindu, Staff Reporter	f	76.3421630	11.1352870
34	f		t	\N	\N
88	f		f	\N	\N
87	f	Prime Point Foundation	f	80.0110960	13.0317360
49	f	Jen Morgan	f	76.4743420	27.4936540
71	f	Alex M. George	f	76.1349300	11.7380700
85	f	Department of Humanities and Social Sciences, BITS Pilani, Hyderabad campus	f	\N	\N
89	f	Neeta Deshpande	f	80.1525870	17.6440220
28	t	Ashish Kothari	f	80.2828680	20.2452670
29	f	Nikhil Sheth	f	\N	\N
35	f		t	\N	\N
33	f		t	\N	\N
70	f	Suprabha Seshan	f	75.8625000	11.8075000
30	f	Chiara Piovani and Minqi Li	f	\N	\N
93	f		f	81.5188000	16.5477140
\.


--
-- Data for Name: vikalp_article_article_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY vikalp_article_article_categories (id, article_id, articlecategory_id) FROM stdin;
173	31	9
174	31	10
110	12	8
653	81	9
654	81	3
563	75	6
321	43	1
322	43	3
323	43	13
655	73	8
12	3	1
13	5	3
14	5	4
120	24	10
19	6	3
20	6	4
121	24	3
122	23	1
123	23	3
124	23	6
656	73	1
331	42	9
332	42	10
32	8	3
657	73	13
39	1	1
658	50	1
135	7	1
136	7	3
659	50	3
660	48	1
49	16	3
50	16	4
661	48	13
662	48	7
665	30	2
343	32	10
344	32	12
574	77	6
203	4	1
204	4	3
666	30	3
669	15	3
154	9	1
155	9	7
670	15	6
671	14	8
579	78	6
672	14	7
673	10	10
582	79	6
77	21	8
78	21	10
79	21	7
674	13	10
82	20	8
678	80	9
588	60	9
424	52	1
425	52	3
591	49	3
592	49	13
593	49	7
99	27	1
679	80	3
680	80	6
437	54	1
438	54	3
439	54	13
305	44	3
306	44	7
691	11	9
692	26	10
693	26	3
695	25	3
696	40	10
697	40	3
698	40	7
452	57	1
453	57	3
701	41	10
702	41	7
703	56	10
704	56	3
705	2	1
706	2	2
460	59	1
461	59	3
466	45	6
467	29	5
713	39	12
546	22	8
547	22	10
552	53	9
553	53	3
560	74	6
740	90	12
741	90	13
742	89	1
743	89	7
744	87	10
745	28	2
746	28	10
747	18	6
748	17	8
749	17	12
750	71	6
751	70	3
752	70	6
753	69	6
754	68	6
755	68	7
756	67	6
757	66	6
758	76	6
759	84	1
760	84	3
761	84	9
762	82	1
763	82	3
764	82	9
768	93	2
769	93	10
770	93	13
771	92	9
772	92	4
773	91	1
774	91	13
\.


--
-- Data for Name: vikalp_articlecategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY vikalp_articlecategory (blogcategory_ptr_id, category_description, category_image, category_long_description) FROM stdin;
4	Sustainable, equitable energy production and access including decentralized renewables and efficiency	uploads/energy_1_1.png	This section highlights initiatives that explore and encourage alternatives to the current centralized, environmentally damaging and unsustainable sources of energy, such as  decentralized renewable sources. It also includes attempts at ensuring equitable access to ecologically sustainable energy, optimizing production and distribution, improving efficiency, and regulating demand (e.g. for luxury consumption).
10	People-centred governance and decision-making, ensuring accountability and transparency	uploads/alternative_politics_1.png	This section features initiatives and approaches towards people-centred governance and decision-making, with direct participation, and based on principles of social and environmental justice. This includes initiatives attempting to realize local non-hierarchical systems of decision-making in urban and rural areas, and linkages of these to each other at bio-cultural levels. This would also include collectives or communities that raise non-party political concerns at the local level and beyond, as well as initiatives that enhance accountability and transparency of political bodies. It will include alternative policy frameworks that are based on or promote the alternative economies featured elsewhere on this site, such as meaningful practices and concepts of well-being, instead of the mainstream development model which focuses on economic growth. 
2	Community-based alternatives for production, consumption, and exchange	uploads/alternative_economies_1_1.png	This section features stories of initiatives that help to create an alternative to the dominant neo-liberal or state-dominated economy. These include: localisation of economic activity with democratic control, producer and consumer collectives, local currencies and trade, non-monetised exchage and the gift economy, ecologically sensitive products and processes, macro-economic concepts that respect ecological limits, and approaches to human well-being that go beyond growth, GDP and other narrow measures and indicators. \r\n\r\nWhat we do not feature are superficial and false solutions, such as market and technological fixes for problems that are deeply social and political, or more generally, ‘green growth’ kind of approaches that only tinker around with the existing system. \r\n
3	Environmental conservation and sustainability, respecting ecological integrity and limits	uploads/environment_and_ecology_1.png	This section relates to initiatives that promote the principles of ecological integrity and limits. These are initiatives which envision models of decentralized conservation of land, water and biodiversity, based on a respect for both local and modern knowledge, and considering environment as an integral part of life and work. It also highlight attempts at linking livelihoods to ecological regeneration and restoration at local and landscape level. It will feature innovative attempts to deal with problems of pollution and waste. Overall, this section will try to work towards an understanding of the ecosystem which includes sociological, historical and geographical considerations while deciding on the path that local urban/ rural communities and the larger society take towards well-being.
12	Healthcare for all, focusing on preventive, diverse systems of health and medicine	uploads/health_1_1.png	This section features stories of initiatives ensuring healthcare for all. These are based on approaches that help prevent ill-health in the first place, including the provision of nutritional food, enabling an environment that is healthy, and so on. They include ensuring access to curative facilities to those who have conventionally not had such access. And they have stories of synergizing various health systems, traditional and modern, bringing back into popular use the diverse systems from India and outside including indigenous/folk medicine, nature cure, Ayurvedic, Unani and other such systems, and other holistic or integrative approaches. Community-based management and control of healthcare and hygiene, and ensuring accountability of the state’s responsibility towards citizens in health, would be part of the stories featured here.
6	Learning processes focusing on ethics, sustainability, equity, and well-being	uploads/education_1_2.png	This section features stories of initiatives to create spaces and opportunities for learning and education that enable continued or renewed connection with the environment and nature, with one’s community, and with humanity as a whole. These are stories of efforts to nurture a fuller range of collective and individual potentials and relationships, stories of unlearning the alienating, individualizing ‘education’ that mainstream institutions have been giving, stories where the formal and the informal, the traditional and modern, the local and global, are synergized. Initiatives ensuring accountability of the state’s responsibility towards citizens in education would also be covered. 
1	Dignified, ecologically sustainable and meaningful livelihoods and jobs	uploads/livelihoods_1_1.png	The search for dignified, ecologically sustainable and meaningful livelihoods and jobs is featured in this section. This includes the continuation and enhancement of fulfilling traditional occupations that communities choose to continue, including in agriculture, pastoralism, forestry, fisheries, crafts, and others in the primary economy. It also includes sustainable, dignified  jobs in manufacturing and service sectors where producers and service-providers are in control of their destinies and revenues are equitably distributed. \r\n\r\n
7	Enhancing socio-cultural well-being, ensuring justice and equity 	uploads/society_and_culture_1.png	Featured here are initiatives to enhance social and cultural aspects of human life: the revival and progressive use of visual, performing, and other arts, of the myriad crafts of the country, of threatened or submerged languages, of food and cuisine diversity, and other such cultural traits and processes. They also cover the various struggles and constructive movements to achieve social justice, to reduce inequalities and inequities of various kinds including caste, class, gender, ethnicity, and religion, and to create dignity in living for those currently oppressed and exploited. Finally, they include movements to generate ethical living and thinking, and spread values such as simplicity, honesty, frugality, and tolerance. 
5	Policy Edits.	uploads/livelihood_3.png	Policy Editorials.
13	Making water use and distribution ecologically sustainable, making food accessible, safe and sustainable	uploads/water_and_food.png	This section features initiatives towards producing and making accessible safe and nutritious food, sustaining the diversity of Indian cuisine, and promoting slow food. Along with this, it carries stories on making water use and distribution ecologically sustainable and equitable, achieving decentralised conservation, retaining water as part of the commons, and democratic governance of water and wetlands. \r\n\r\nWe would like to avoid featuring purely elitist food fads even if they pertain to healthy or organic food, and expensive technological water solutions that have no relevance for the majority of people. 
9	Human settlements with sustainability, equity, and fulfillment. Sustainable, equitable means including non-motorised and public transport	uploads/settlements_1_1.png	This features both rural and urban areas, and the search to make human settlements sustainable, equitable, and fulfilling places to live and work in. This includes: sustainable architecture, localized generation of basic infrastructural, water and energy needs, urban biodiversity conservation, waste/garbage minimisation and recycling, efficiency and frugality in the use of these basics, the defense and revival of common and open spaces, participatory budgeting and planning of settlements. \r\n\r\nWe would also like to include stories of sustainable, equitable means of transport that can be accessed by all and that do not create ecological and social problems as is the case with a focus on privatized motorized transport. Stories on the promotion of public transport, cycling, walking, human/animal powered and other forms of ecologically sustainable and equitable transportation, planning for equitable access, reclaiming the roads and parking lots for public use, and so on, are featured. \r\n\r\nExpensive, elitist models that may be ecologically sustainable but are not relevant for most people, are likely to be avoided here. 
8	Knowledge and media as empowering and enabling tools for equity and sustainability	uploads/knowledge_science_and_technology_1.png	This section features stories of use of knowledge as an empowering and enabling tool for a more equitable and ecologically sustainable world. This includes: Initiatives that encourage cross-fertilisation between ideas, promotes information exchange and transcends boundaries between modern and traditional, formal and informal, and urban and rural spheres of knowledge; Initiatives that make information access free, or easier in places usually neglected, considered ‘remote’ or disconnected; Initiatives to make knowledge part of the ‘commons’ rather than a commodity, privately owned or controlled; Also initiatives that promote an alternative media that raises questions ignored or deliberately allowed to remain  hidden in the mainstream media, and innovative use of media to communicate enabling information. \r\n
\.


--
-- Name: auth_custompermissionsuser_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_custompermissionsuser
    ADD CONSTRAINT auth_custompermissionsuser_email_key UNIQUE (email);


--
-- Name: auth_custompermissionsuser_groups_custompermissionsuser_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_custompermissionsuser_groups
    ADD CONSTRAINT auth_custompermissionsuser_groups_custompermissionsuser_id_key UNIQUE (custompermissionsuser_id, group_id);


--
-- Name: auth_custompermissionsuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_custompermissionsuser_groups
    ADD CONSTRAINT auth_custompermissionsuser_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_custompermissionsuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_custompermissionsuser
    ADD CONSTRAINT auth_custompermissionsuser_pkey PRIMARY KEY (id);


--
-- Name: auth_custompermissionsuser_user_pe_custompermissionsuser_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_custompermissionsuser_user_permissions
    ADD CONSTRAINT auth_custompermissionsuser_user_pe_custompermissionsuser_id_key UNIQUE (custompermissionsuser_id, permission_id);


--
-- Name: auth_custompermissionsuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_custompermissionsuser_user_permissions
    ADD CONSTRAINT auth_custompermissionsuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_customuser_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_customuser
    ADD CONSTRAINT auth_customuser_email_key UNIQUE (email);


--
-- Name: auth_customuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_customuser
    ADD CONSTRAINT auth_customuser_pkey PRIMARY KEY (id);


--
-- Name: auth_customuserbadrequiredfields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_customuserbadrequiredfields
    ADD CONSTRAINT auth_customuserbadrequiredfields_pkey PRIMARY KEY (id);


--
-- Name: auth_customuserbadrequiredfields_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_customuserbadrequiredfields
    ADD CONSTRAINT auth_customuserbadrequiredfields_username_key UNIQUE (username);


--
-- Name: auth_customusernonuniqueusername_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_customusernonuniqueusername
    ADD CONSTRAINT auth_customusernonuniqueusername_pkey PRIMARY KEY (id);


--
-- Name: auth_extensionuser_groups_extensionuser_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_extensionuser_groups
    ADD CONSTRAINT auth_extensionuser_groups_extensionuser_id_key UNIQUE (extensionuser_id, group_id);


--
-- Name: auth_extensionuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_extensionuser_groups
    ADD CONSTRAINT auth_extensionuser_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_extensionuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_extensionuser
    ADD CONSTRAINT auth_extensionuser_pkey PRIMARY KEY (id);


--
-- Name: auth_extensionuser_user_permissions_extensionuser_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_extensionuser_user_permissions
    ADD CONSTRAINT auth_extensionuser_user_permissions_extensionuser_id_key UNIQUE (extensionuser_id, permission_id);


--
-- Name: auth_extensionuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_extensionuser_user_permissions
    ADD CONSTRAINT auth_extensionuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_extensionuser_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_extensionuser
    ADD CONSTRAINT auth_extensionuser_username_key UNIQUE (username);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_isactivetestuser1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_isactivetestuser1
    ADD CONSTRAINT auth_isactivetestuser1_pkey PRIMARY KEY (id);


--
-- Name: auth_isactivetestuser1_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_isactivetestuser1
    ADD CONSTRAINT auth_isactivetestuser1_username_key UNIQUE (username);


--
-- Name: auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blogcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_categories_blogpost_id_79f2a5569187bd14_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_blogpost_id_79f2a5569187bd14_uniq UNIQUE (blogpost_id, blogcategory_id);


--
-- Name: blog_blogpost_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);


--
-- Name: blog_blogpost_related_po_from_blogpost_id_3007eb9b6b16df8b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_po_from_blogpost_id_3007eb9b6b16df8b_uniq UNIQUE (from_blogpost_id, to_blogpost_id);


--
-- Name: blog_blogpost_related_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_pkey PRIMARY KEY (id);


--
-- Name: conf_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT conf_setting_pkey PRIMARY KEY (id);


--
-- Name: contenttypes_concretemodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenttypes_concretemodel
    ADD CONSTRAINT contenttypes_concretemodel_pkey PRIMARY KEY (id);


--
-- Name: contenttypes_foowithbrokenabsoluteurl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenttypes_foowithbrokenabsoluteurl
    ADD CONSTRAINT contenttypes_foowithbrokenabsoluteurl_pkey PRIMARY KEY (foowithouturl_ptr_id);


--
-- Name: contenttypes_foowithouturl_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenttypes_foowithouturl
    ADD CONSTRAINT contenttypes_foowithouturl_name_key UNIQUE (name);


--
-- Name: contenttypes_foowithouturl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenttypes_foowithouturl
    ADD CONSTRAINT contenttypes_foowithouturl_pkey PRIMARY KEY (id);


--
-- Name: contenttypes_foowithurl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenttypes_foowithurl
    ADD CONSTRAINT contenttypes_foowithurl_pkey PRIMARY KEY (foowithouturl_ptr_id);


--
-- Name: core_sitepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_sit_sitepermission_id_31fc3b7b7e3badd5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sit_sitepermission_id_31fc3b7b7e3badd5_uniq UNIQUE (sitepermission_id, site_id);


--
-- Name: core_sitepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: core_sitepermission_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);


--
-- Name: django_comment_flags_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_key UNIQUE (user_id, comment_id, flag);


--
-- Name: django_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect_site_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT django_redirect_site_id_key UNIQUE (site_id, old_path);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: endless_pagination_testmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY endless_pagination_testmodel
    ADD CONSTRAINT endless_pagination_testmodel_pkey PRIMARY KEY (id);


--
-- Name: forms_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT forms_field_pkey PRIMARY KEY (id);


--
-- Name: forms_fieldentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_pkey PRIMARY KEY (id);


--
-- Name: forms_form_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT forms_form_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: forms_formentry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT forms_formentry_pkey PRIMARY KEY (id);


--
-- Name: galleries_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT galleries_gallery_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: galleries_galleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT galleries_galleryimage_pkey PRIMARY KEY (id);


--
-- Name: generic_assignedkeyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_pkey PRIMARY KEY (id);


--
-- Name: generic_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT generic_keyword_pkey PRIMARY KEY (id);


--
-- Name: generic_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT generic_rating_pkey PRIMARY KEY (id);


--
-- Name: generic_threadedcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomment_pkey PRIMARY KEY (comment_ptr_id);


--
-- Name: newsletter_article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_article
    ADD CONSTRAINT newsletter_article_pkey PRIMARY KEY (id);


--
-- Name: newsletter_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_message
    ADD CONSTRAINT newsletter_message_pkey PRIMARY KEY (id);


--
-- Name: newsletter_message_slug_5e7325d04f0d286c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_message
    ADD CONSTRAINT newsletter_message_slug_5e7325d04f0d286c_uniq UNIQUE (slug, newsletter_id);


--
-- Name: newsletter_newsletter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_newsletter
    ADD CONSTRAINT newsletter_newsletter_pkey PRIMARY KEY (id);


--
-- Name: newsletter_newsletter_site_newsletter_id_157959c635ce6a05_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_newsletter_site
    ADD CONSTRAINT newsletter_newsletter_site_newsletter_id_157959c635ce6a05_uniq UNIQUE (newsletter_id, site_id);


--
-- Name: newsletter_newsletter_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_newsletter_site
    ADD CONSTRAINT newsletter_newsletter_site_pkey PRIMARY KEY (id);


--
-- Name: newsletter_newsletter_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_newsletter
    ADD CONSTRAINT newsletter_newsletter_slug_key UNIQUE (slug);


--
-- Name: newsletter_submission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_submission
    ADD CONSTRAINT newsletter_submission_pkey PRIMARY KEY (id);


--
-- Name: newsletter_submission_subsc_submission_id_23923544083fa5cf_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_submission_subscriptions
    ADD CONSTRAINT newsletter_submission_subsc_submission_id_23923544083fa5cf_uniq UNIQUE (submission_id, subscription_id);


--
-- Name: newsletter_submission_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_submission_subscriptions
    ADD CONSTRAINT newsletter_submission_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: newsletter_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_subscription
    ADD CONSTRAINT newsletter_subscription_pkey PRIMARY KEY (id);


--
-- Name: newsletter_subscription_user_id_411425e698392372_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY newsletter_subscription
    ADD CONSTRAINT newsletter_subscription_user_id_411425e698392372_uniq UNIQUE (user_id, email, newsletter_id);


--
-- Name: pages_contentpage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT pages_contentpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT pages_link_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: pages_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT pages_page_pkey PRIMARY KEY (id);


--
-- Name: sitemaps_testmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sitemaps_testmodel
    ADD CONSTRAINT sitemaps_testmodel_pkey PRIMARY KEY (id);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: thumbnail_kvstore_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);


--
-- Name: twitter_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_query
    ADD CONSTRAINT twitter_query_pkey PRIMARY KEY (id);


--
-- Name: twitter_tweet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT twitter_tweet_pkey PRIMARY KEY (id);


--
-- Name: vikalp_article_article_categori_article_id_8f90b087ef79ffd_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vikalp_article_article_categories
    ADD CONSTRAINT vikalp_article_article_categori_article_id_8f90b087ef79ffd_uniq UNIQUE (article_id, articlecategory_id);


--
-- Name: vikalp_article_article_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vikalp_article_article_categories
    ADD CONSTRAINT vikalp_article_article_categories_pkey PRIMARY KEY (id);


--
-- Name: vikalp_article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vikalp_article
    ADD CONSTRAINT vikalp_article_pkey PRIMARY KEY (blogpost_ptr_id);


--
-- Name: vikalp_articlecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vikalp_articlecategory
    ADD CONSTRAINT vikalp_articlecategory_pkey PRIMARY KEY (blogcategory_ptr_id);


--
-- Name: auth_custompermissionsuser_email_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_custompermissionsuser_email_like ON auth_custompermissionsuser USING btree (email varchar_pattern_ops);


--
-- Name: auth_custompermissionsuser_groups_custompermissionsuser_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_custompermissionsuser_groups_custompermissionsuser_id ON auth_custompermissionsuser_groups USING btree (custompermissionsuser_id);


--
-- Name: auth_custompermissionsuser_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_custompermissionsuser_groups_group_id ON auth_custompermissionsuser_groups USING btree (group_id);


--
-- Name: auth_custompermissionsuser_user_permissions_custompermissio648b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_custompermissionsuser_user_permissions_custompermissio648b ON auth_custompermissionsuser_user_permissions USING btree (custompermissionsuser_id);


--
-- Name: auth_custompermissionsuser_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_custompermissionsuser_user_permissions_permission_id ON auth_custompermissionsuser_user_permissions USING btree (permission_id);


--
-- Name: auth_customuser_email_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_customuser_email_like ON auth_customuser USING btree (email varchar_pattern_ops);


--
-- Name: auth_customuserbadrequiredfields_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_customuserbadrequiredfields_username_like ON auth_customuserbadrequiredfields USING btree (username varchar_pattern_ops);


--
-- Name: auth_extensionuser_groups_extensionuser_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_extensionuser_groups_extensionuser_id ON auth_extensionuser_groups USING btree (extensionuser_id);


--
-- Name: auth_extensionuser_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_extensionuser_groups_group_id ON auth_extensionuser_groups USING btree (group_id);


--
-- Name: auth_extensionuser_user_permissions_extensionuser_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_extensionuser_user_permissions_extensionuser_id ON auth_extensionuser_user_permissions USING btree (extensionuser_id);


--
-- Name: auth_extensionuser_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_extensionuser_user_permissions_permission_id ON auth_extensionuser_user_permissions USING btree (permission_id);


--
-- Name: auth_extensionuser_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_extensionuser_username_like ON auth_extensionuser USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_isactivetestuser1_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_isactivetestuser1_username_like ON auth_isactivetestuser1 USING btree (username varchar_pattern_ops);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_blogcategory_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogcategory_site_id ON blog_blogcategory USING btree (site_id);


--
-- Name: blog_blogpost_categories_blogcategory_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_categories_blogcategory_id ON blog_blogpost_categories USING btree (blogcategory_id);


--
-- Name: blog_blogpost_categories_blogpost_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_categories_blogpost_id ON blog_blogpost_categories USING btree (blogpost_id);


--
-- Name: blog_blogpost_related_posts_from_blogpost_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_related_posts_from_blogpost_id ON blog_blogpost_related_posts USING btree (from_blogpost_id);


--
-- Name: blog_blogpost_related_posts_to_blogpost_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_related_posts_to_blogpost_id ON blog_blogpost_related_posts USING btree (to_blogpost_id);


--
-- Name: blog_blogpost_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_site_id ON blog_blogpost USING btree (site_id);


--
-- Name: blog_blogpost_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX blog_blogpost_user_id ON blog_blogpost USING btree (user_id);


--
-- Name: conf_setting_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX conf_setting_site_id ON conf_setting USING btree (site_id);


--
-- Name: contenttypes_foowithouturl_name_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX contenttypes_foowithouturl_name_like ON contenttypes_foowithouturl USING btree (name varchar_pattern_ops);


--
-- Name: core_sitepermission_sites_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_site_id ON core_sitepermission_sites USING btree (site_id);


--
-- Name: core_sitepermission_sites_sitepermission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX core_sitepermission_sites_sitepermission_id ON core_sitepermission_sites USING btree (sitepermission_id);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_comment_flags_comment_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_comment_id ON django_comment_flags USING btree (comment_id);


--
-- Name: django_comment_flags_flag; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_flag ON django_comment_flags USING btree (flag);


--
-- Name: django_comment_flags_flag_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_flag_like ON django_comment_flags USING btree (flag varchar_pattern_ops);


--
-- Name: django_comment_flags_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comment_flags_user_id ON django_comment_flags USING btree (user_id);


--
-- Name: django_comments_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_content_type_id ON django_comments USING btree (content_type_id);


--
-- Name: django_comments_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_site_id ON django_comments USING btree (site_id);


--
-- Name: django_comments_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_comments_user_id ON django_comments USING btree (user_id);


--
-- Name: django_redirect_old_path; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_old_path ON django_redirect USING btree (old_path);


--
-- Name: django_redirect_old_path_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_old_path_like ON django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_redirect_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_redirect_site_id ON django_redirect USING btree (site_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: forms_field_form_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_field_form_id ON forms_field USING btree (form_id);


--
-- Name: forms_fieldentry_entry_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_fieldentry_entry_id ON forms_fieldentry USING btree (entry_id);


--
-- Name: forms_formentry_form_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX forms_formentry_form_id ON forms_formentry USING btree (form_id);


--
-- Name: galleries_galleryimage_gallery_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX galleries_galleryimage_gallery_id ON galleries_galleryimage USING btree (gallery_id);


--
-- Name: generic_assignedkeyword_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_content_type_id ON generic_assignedkeyword USING btree (content_type_id);


--
-- Name: generic_assignedkeyword_keyword_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_assignedkeyword_keyword_id ON generic_assignedkeyword USING btree (keyword_id);


--
-- Name: generic_keyword_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_keyword_site_id ON generic_keyword USING btree (site_id);


--
-- Name: generic_rating_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_rating_content_type_id ON generic_rating USING btree (content_type_id);


--
-- Name: generic_rating_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_rating_user_id ON generic_rating USING btree (user_id);


--
-- Name: generic_threadedcomment_replied_to_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX generic_threadedcomment_replied_to_id ON generic_threadedcomment USING btree (replied_to_id);


--
-- Name: newsletter_article_post_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_article_post_id ON newsletter_article USING btree (post_id);


--
-- Name: newsletter_article_sortorder; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_article_sortorder ON newsletter_article USING btree (sortorder);


--
-- Name: newsletter_message_newsletter_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_message_newsletter_id ON newsletter_message USING btree (newsletter_id);


--
-- Name: newsletter_message_slug; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_message_slug ON newsletter_message USING btree (slug);


--
-- Name: newsletter_message_slug_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_message_slug_like ON newsletter_message USING btree (slug varchar_pattern_ops);


--
-- Name: newsletter_newsletter_site_newsletter_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_newsletter_site_newsletter_id ON newsletter_newsletter_site USING btree (newsletter_id);


--
-- Name: newsletter_newsletter_site_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_newsletter_site_site_id ON newsletter_newsletter_site USING btree (site_id);


--
-- Name: newsletter_newsletter_slug_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_newsletter_slug_like ON newsletter_newsletter USING btree (slug varchar_pattern_ops);


--
-- Name: newsletter_newsletter_visible; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_newsletter_visible ON newsletter_newsletter USING btree (visible);


--
-- Name: newsletter_submission_message_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_message_id ON newsletter_submission USING btree (message_id);


--
-- Name: newsletter_submission_newsletter_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_newsletter_id ON newsletter_submission USING btree (newsletter_id);


--
-- Name: newsletter_submission_prepared; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_prepared ON newsletter_submission USING btree (prepared);


--
-- Name: newsletter_submission_publish; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_publish ON newsletter_submission USING btree (publish);


--
-- Name: newsletter_submission_publish_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_publish_date ON newsletter_submission USING btree (publish_date);


--
-- Name: newsletter_submission_sending; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_sending ON newsletter_submission USING btree (sending);


--
-- Name: newsletter_submission_sent; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_sent ON newsletter_submission USING btree (sent);


--
-- Name: newsletter_submission_subscriptions_submission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_subscriptions_submission_id ON newsletter_submission_subscriptions USING btree (submission_id);


--
-- Name: newsletter_submission_subscriptions_subscription_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_submission_subscriptions_subscription_id ON newsletter_submission_subscriptions USING btree (subscription_id);


--
-- Name: newsletter_subscription_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_subscription_email ON newsletter_subscription USING btree (email);


--
-- Name: newsletter_subscription_email_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_subscription_email_like ON newsletter_subscription USING btree (email varchar_pattern_ops);


--
-- Name: newsletter_subscription_newsletter_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_subscription_newsletter_id ON newsletter_subscription USING btree (newsletter_id);


--
-- Name: newsletter_subscription_subscribed; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_subscription_subscribed ON newsletter_subscription USING btree (subscribed);


--
-- Name: newsletter_subscription_unsubscribed; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_subscription_unsubscribed ON newsletter_subscription USING btree (unsubscribed);


--
-- Name: newsletter_subscription_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX newsletter_subscription_user_id ON newsletter_subscription USING btree (user_id);


--
-- Name: pages_page_parent_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pages_page_parent_id ON pages_page USING btree (parent_id);


--
-- Name: pages_page_site_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pages_page_site_id ON pages_page USING btree (site_id);


--
-- Name: thumbnail_kvstore_key_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX thumbnail_kvstore_key_like ON thumbnail_kvstore USING btree (key varchar_pattern_ops);


--
-- Name: twitter_tweet_query_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX twitter_tweet_query_id ON twitter_tweet USING btree (query_id);


--
-- Name: vikalp_article_article_categories_article_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX vikalp_article_article_categories_article_id ON vikalp_article_article_categories USING btree (article_id);


--
-- Name: vikalp_article_article_categories_articlecategory_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX vikalp_article_article_categories_articlecategory_id ON vikalp_article_article_categories USING btree (articlecategory_id);


--
-- Name: article_id_refs_blogpost_ptr_id_d055c4f3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vikalp_article_article_categories
    ADD CONSTRAINT article_id_refs_blogpost_ptr_id_d055c4f3 FOREIGN KEY (article_id) REFERENCES vikalp_article(blogpost_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: articlecategory_id_refs_blogcategory_ptr_id_6b19120a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vikalp_article_article_categories
    ADD CONSTRAINT articlecategory_id_refs_blogcategory_ptr_id_6b19120a FOREIGN KEY (articlecategory_id) REFERENCES vikalp_articlecategory(blogcategory_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_custompermissionsuser_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_custompermissionsuser_groups
    ADD CONSTRAINT auth_custompermissionsuser_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_custompermissionsuser_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_custompermissionsuser_user_permissions
    ADD CONSTRAINT auth_custompermissionsuser_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_extensionuser_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_extensionuser_groups
    ADD CONSTRAINT auth_extensionuser_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_extensionuser_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_extensionuser_user_permissions
    ADD CONSTRAINT auth_extensionuser_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogcategory_id_refs_id_91693b1c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blogcategory_id_refs_id_91693b1c FOREIGN KEY (blogcategory_id) REFERENCES blog_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogcategory_ptr_id_refs_id_92aee4f2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vikalp_articlecategory
    ADD CONSTRAINT blogcategory_ptr_id_refs_id_92aee4f2 FOREIGN KEY (blogcategory_ptr_id) REFERENCES blog_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogpost_id_refs_id_6a2ad936; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_categories
    ADD CONSTRAINT blogpost_id_refs_id_6a2ad936 FOREIGN KEY (blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blogpost_ptr_id_refs_id_62d378b1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vikalp_article
    ADD CONSTRAINT blogpost_ptr_id_refs_id_62d378b1 FOREIGN KEY (blogpost_ptr_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comment_ptr_id_refs_id_d4c241e5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT comment_ptr_id_refs_id_d4c241e5 FOREIGN KEY (comment_ptr_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_1c638e93; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT content_type_id_refs_id_1c638e93 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_c36d959c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT content_type_id_refs_id_c36d959c FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contenttypes_foowithbrokenabsoluteurl_foowithouturl_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenttypes_foowithbrokenabsoluteurl
    ADD CONSTRAINT contenttypes_foowithbrokenabsoluteurl_foowithouturl_ptr_id_fkey FOREIGN KEY (foowithouturl_ptr_id) REFERENCES contenttypes_foowithouturl(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contenttypes_foowithurl_foowithouturl_ptr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenttypes_foowithurl
    ADD CONSTRAINT contenttypes_foowithurl_foowithouturl_ptr_id_fkey FOREIGN KEY (foowithouturl_ptr_id) REFERENCES contenttypes_foowithouturl(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: custompermissionsuser_id_refs_id_494c0d7b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_custompermissionsuser_groups
    ADD CONSTRAINT custompermissionsuser_id_refs_id_494c0d7b FOREIGN KEY (custompermissionsuser_id) REFERENCES auth_custompermissionsuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: custompermissionsuser_id_refs_id_69f8e960; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_custompermissionsuser_user_permissions
    ADD CONSTRAINT custompermissionsuser_id_refs_id_69f8e960 FOREIGN KEY (custompermissionsuser_id) REFERENCES auth_custompermissionsuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_comment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES django_comments(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comment_flags_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_site_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_site_id_fkey FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_comments
    ADD CONSTRAINT django_comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entry_id_refs_id_e329b086; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_fieldentry
    ADD CONSTRAINT entry_id_refs_id_e329b086 FOREIGN KEY (entry_id) REFERENCES forms_formentry(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extensionuser_id_refs_id_26dde060; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_extensionuser_groups
    ADD CONSTRAINT extensionuser_id_refs_id_26dde060 FOREIGN KEY (extensionuser_id) REFERENCES auth_extensionuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: extensionuser_id_refs_id_608dceb9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_extensionuser_user_permissions
    ADD CONSTRAINT extensionuser_id_refs_id_608dceb9 FOREIGN KEY (extensionuser_id) REFERENCES auth_extensionuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: form_id_refs_page_ptr_id_4d605921; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_formentry
    ADD CONSTRAINT form_id_refs_page_ptr_id_4d605921 FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: form_id_refs_page_ptr_id_5a752766; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_field
    ADD CONSTRAINT form_id_refs_page_ptr_id_5a752766 FOREIGN KEY (form_id) REFERENCES forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: from_blogpost_id_refs_id_6404941b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT from_blogpost_id_refs_id_6404941b FOREIGN KEY (from_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gallery_id_refs_page_ptr_id_d6457fc6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_galleryimage
    ADD CONSTRAINT gallery_id_refs_page_ptr_id_d6457fc6 FOREIGN KEY (gallery_id) REFERENCES galleries_gallery(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: keyword_id_refs_id_aa70ce50; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_assignedkeyword
    ADD CONSTRAINT keyword_id_refs_id_aa70ce50 FOREIGN KEY (keyword_id) REFERENCES generic_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: message_id_refs_id_5e7f8afa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_submission
    ADD CONSTRAINT message_id_refs_id_5e7f8afa FOREIGN KEY (message_id) REFERENCES newsletter_message(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: newsletter_id_refs_id_8246082f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_subscription
    ADD CONSTRAINT newsletter_id_refs_id_8246082f FOREIGN KEY (newsletter_id) REFERENCES newsletter_newsletter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: newsletter_id_refs_id_cb26d87c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_newsletter_site
    ADD CONSTRAINT newsletter_id_refs_id_cb26d87c FOREIGN KEY (newsletter_id) REFERENCES newsletter_newsletter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: newsletter_id_refs_id_e56e88af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_submission
    ADD CONSTRAINT newsletter_id_refs_id_e56e88af FOREIGN KEY (newsletter_id) REFERENCES newsletter_newsletter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: newsletter_id_refs_id_f1cc3298; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_message
    ADD CONSTRAINT newsletter_id_refs_id_f1cc3298 FOREIGN KEY (newsletter_id) REFERENCES newsletter_newsletter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_ptr_id_refs_id_2adddb0b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_link
    ADD CONSTRAINT page_ptr_id_refs_id_2adddb0b FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_ptr_id_refs_id_558d29bc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_richtextpage
    ADD CONSTRAINT page_ptr_id_refs_id_558d29bc FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_ptr_id_refs_id_75804475; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY galleries_gallery
    ADD CONSTRAINT page_ptr_id_refs_id_75804475 FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: page_ptr_id_refs_id_fe19b67b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY forms_form
    ADD CONSTRAINT page_ptr_id_refs_id_fe19b67b FOREIGN KEY (page_ptr_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_68963b8e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT parent_id_refs_id_68963b8e FOREIGN KEY (parent_id) REFERENCES pages_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_id_refs_id_72dd33f8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_article
    ADD CONSTRAINT post_id_refs_id_72dd33f8 FOREIGN KEY (post_id) REFERENCES newsletter_message(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: query_id_refs_id_b81595a6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY twitter_tweet
    ADD CONSTRAINT query_id_refs_id_b81595a6 FOREIGN KEY (query_id) REFERENCES twitter_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: replied_to_id_refs_comment_ptr_id_83bd8e31; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_threadedcomment
    ADD CONSTRAINT replied_to_id_refs_comment_ptr_id_83bd8e31 FOREIGN KEY (replied_to_id) REFERENCES generic_threadedcomment(comment_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_29e7e142; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conf_setting
    ADD CONSTRAINT site_id_refs_id_29e7e142 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_390e2add; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_redirect
    ADD CONSTRAINT site_id_refs_id_390e2add FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_70c9ac77; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pages_page
    ADD CONSTRAINT site_id_refs_id_70c9ac77 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_91a6d9d4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT site_id_refs_id_91a6d9d4 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_93afc60f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogcategory
    ADD CONSTRAINT site_id_refs_id_93afc60f FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_ac21095f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT site_id_refs_id_ac21095f FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_dcd704c8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_newsletter_site
    ADD CONSTRAINT site_id_refs_id_dcd704c8 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: site_id_refs_id_f6393455; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_keyword
    ADD CONSTRAINT site_id_refs_id_f6393455 FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sitepermission_id_refs_id_7dccdcbd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission_sites
    ADD CONSTRAINT sitepermission_id_refs_id_7dccdcbd FOREIGN KEY (sitepermission_id) REFERENCES core_sitepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: submission_id_refs_id_0b47adf9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_submission_subscriptions
    ADD CONSTRAINT submission_id_refs_id_0b47adf9 FOREIGN KEY (submission_id) REFERENCES newsletter_submission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: subscription_id_refs_id_cc4f3f4e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_submission_subscriptions
    ADD CONSTRAINT subscription_id_refs_id_cc4f3f4e FOREIGN KEY (subscription_id) REFERENCES newsletter_subscription(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: to_blogpost_id_refs_id_6404941b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost_related_posts
    ADD CONSTRAINT to_blogpost_id_refs_id_6404941b FOREIGN KEY (to_blogpost_id) REFERENCES blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_01a962b8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpost
    ADD CONSTRAINT user_id_refs_id_01a962b8 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_7f1eb652; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY newsletter_subscription
    ADD CONSTRAINT user_id_refs_id_7f1eb652 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_9436ba96; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY generic_rating
    ADD CONSTRAINT user_id_refs_id_9436ba96 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_b319fa2a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY core_sitepermission
    ADD CONSTRAINT user_id_refs_id_b319fa2a FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

