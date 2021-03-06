PGDMP         (                z         #   fusepong_solutions_core_development    13.4    13.4 D   ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    50125 #   fusepong_solutions_core_development    DATABASE     ?   CREATE DATABASE fusepong_solutions_core_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
 3   DROP DATABASE fusepong_solutions_core_development;
                postgres    false                       1259    50739    access_alerts    TABLE       CREATE TABLE public.access_alerts (
    id bigint NOT NULL,
    less_difference numeric,
    alert_type character varying DEFAULT 'SUSPICIOUS_ACCESS'::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.access_alerts;
       public         heap    postgres    false                       1259    50737    access_alerts_id_seq    SEQUENCE     }   CREATE SEQUENCE public.access_alerts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.access_alerts_id_seq;
       public          postgres    false    270            ?           0    0    access_alerts_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.access_alerts_id_seq OWNED BY public.access_alerts.id;
          public          postgres    false    269                       1259    50749    access_alerts_scan_actions    TABLE     j   CREATE TABLE public.access_alerts_scan_actions (
    scan_action_id bigint,
    access_alert_id bigint
);
 .   DROP TABLE public.access_alerts_scan_actions;
       public         heap    postgres    false            ?            1259    50527    agents    TABLE       CREATE TABLE public.agents (
    id bigint NOT NULL,
    name character varying,
    last_name character varying,
    gender character varying,
    location_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.agents;
       public         heap    postgres    false            ?            1259    50525    agents_id_seq    SEQUENCE     v   CREATE SEQUENCE public.agents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.agents_id_seq;
       public          postgres    false    247            ?           0    0    agents_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.agents_id_seq OWNED BY public.agents.id;
          public          postgres    false    246            
           1259    50711    agreement_admin_users    TABLE     1  CREATE TABLE public.agreement_admin_users (
    id bigint NOT NULL,
    name character varying,
    last_name character varying,
    organization_name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    nit character varying
);
 )   DROP TABLE public.agreement_admin_users;
       public         heap    postgres    false            	           1259    50709    agreement_admin_users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.agreement_admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.agreement_admin_users_id_seq;
       public          postgres    false    266            ?           0    0    agreement_admin_users_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.agreement_admin_users_id_seq OWNED BY public.agreement_admin_users.id;
          public          postgres    false    265                       1259    50722    agreement_entries_quantities    TABLE     ?   CREATE TABLE public.agreement_entries_quantities (
    id bigint NOT NULL,
    quantity numeric,
    agreement_admin_user_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 0   DROP TABLE public.agreement_entries_quantities;
       public         heap    postgres    false                       1259    50720 #   agreement_entries_quantities_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.agreement_entries_quantities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.agreement_entries_quantities_id_seq;
       public          postgres    false    268            ?           0    0 #   agreement_entries_quantities_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.agreement_entries_quantities_id_seq OWNED BY public.agreement_entries_quantities.id;
          public          postgres    false    267            ?            1259    50135    ar_internal_metadata    TABLE     ?   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    postgres    false            7           1259    51202    articles    TABLE     ?  CREATE TABLE public.articles (
    id bigint NOT NULL,
    special_category_id bigint,
    location_id bigint,
    name character varying,
    publication_date timestamp without time zone,
    description character varying,
    url character varying,
    url_type character varying,
    visible_to_user boolean DEFAULT false,
    news_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    expiration date
);
    DROP TABLE public.articles;
       public         heap    postgres    false            6           1259    51200    articles_id_seq    SEQUENCE     x   CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          postgres    false    311            ?           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          postgres    false    310            ?            1259    50477    authentication_signatures    TABLE     I  CREATE TABLE public.authentication_signatures (
    id bigint NOT NULL,
    jti character varying,
    aud character varying,
    device_id bigint,
    state character varying,
    expiration timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 -   DROP TABLE public.authentication_signatures;
       public         heap    postgres    false            ?            1259    50475     authentication_signatures_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.authentication_signatures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.authentication_signatures_id_seq;
       public          postgres    false    242            ?           0    0     authentication_signatures_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.authentication_signatures_id_seq OWNED BY public.authentication_signatures.id;
          public          postgres    false    241            =           1259    51286    booking_offices    TABLE     s  CREATE TABLE public.booking_offices (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    last_name character varying DEFAULT ''::character varying NOT NULL,
    location_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.booking_offices;
       public         heap    postgres    false            <           1259    51284    booking_offices_id_seq    SEQUENCE        CREATE SEQUENCE public.booking_offices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.booking_offices_id_seq;
       public          postgres    false    317            ?           0    0    booking_offices_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.booking_offices_id_seq OWNED BY public.booking_offices.id;
          public          postgres    false    316            )           1259    51014    bookings    TABLE     ?  CREATE TABLE public.bookings (
    id bigint NOT NULL,
    user_id bigint,
    sublocation_id bigint,
    weekday character varying,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    state character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    day_schedule integer DEFAULT 0,
    local_time character varying DEFAULT '00:00'::character varying,
    access_type character varying
);
    DROP TABLE public.bookings;
       public         heap    postgres    false            (           1259    51012    bookings_id_seq    SEQUENCE     x   CREATE SEQUENCE public.bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bookings_id_seq;
       public          postgres    false    297            ?           0    0    bookings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.bookings_id_seq OWNED BY public.bookings.id;
          public          postgres    false    296            ?            1259    50285 
   categories    TABLE     ?  CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying,
    presence integer DEFAULT 0,
    popularity integer DEFAULT 0,
    is_parent boolean DEFAULT false,
    parent_category_id integer,
    published boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    company_id bigint
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    50283    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    222            ?           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    221                       1259    50780    client_segments    TABLE     ?   CREATE TABLE public.client_segments (
    id bigint NOT NULL,
    segment_value_id bigint NOT NULL,
    client_id bigint NOT NULL,
    value character varying
);
 #   DROP TABLE public.client_segments;
       public         heap    postgres    false                       1259    50778    client_segments_id_seq    SEQUENCE        CREATE SEQUENCE public.client_segments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.client_segments_id_seq;
       public          postgres    false    275            ?           0    0    client_segments_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.client_segments_id_seq OWNED BY public.client_segments.id;
          public          postgres    false    274            ?            1259    50182    clients    TABLE     ?  CREATE TABLE public.clients (
    id bigint NOT NULL,
    name character varying,
    last_name character varying,
    nationality character varying,
    gender character varying,
    birthday date,
    location character varying,
    picture character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    location_id bigint,
    access_state character varying DEFAULT 'DENIED'::character varying,
    type character varying DEFAULT 'Client'::character varying NOT NULL,
    plan_from date,
    plan_until date,
    plan_type character varying,
    membership_type character varying,
    profession character varying DEFAULT ''::character varying,
    address character varying DEFAULT ''::character varying,
    update_data boolean DEFAULT true,
    access_doors integer[] DEFAULT '{}'::integer[],
    user_category_id bigint
);
    DROP TABLE public.clients;
       public         heap    postgres    false            ?            1259    50180    clients_id_seq    SEQUENCE     w   CREATE SEQUENCE public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    208            ?           0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    207                       1259    50823    codes_packages    TABLE       CREATE TABLE public.codes_packages (
    id bigint NOT NULL,
    offer_id bigint,
    files jsonb DEFAULT '{}'::jsonb,
    codes jsonb DEFAULT '{}'::jsonb,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 "   DROP TABLE public.codes_packages;
       public         heap    postgres    false                       1259    50821    codes_packages_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.codes_packages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.codes_packages_id_seq;
       public          postgres    false    279            ?           0    0    codes_packages_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.codes_packages_id_seq OWNED BY public.codes_packages.id;
          public          postgres    false    278            3           1259    51116 	   companies    TABLE     ?  CREATE TABLE public.companies (
    id bigint NOT NULL,
    subdomain character varying,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    unicode boolean,
    multicode boolean,
    read_qr boolean,
    read_agent boolean,
    read_code boolean,
    reward boolean,
    rad_scan boolean,
    description character varying,
    address character varying,
    identify_number character varying,
    logo character varying,
    dashboard_users boolean DEFAULT false,
    dashboard_offers boolean DEFAULT false,
    dashboard_rewards boolean DEFAULT false,
    dashboard_access boolean DEFAULT false,
    offers_redemption_form character varying,
    offers_favorites boolean DEFAULT false,
    rewards_user_characteristics boolean DEFAULT false,
    rewards_segments boolean DEFAULT false,
    rewards_rewards boolean DEFAULT false,
    access_general_access character varying,
    access_without_internet_access boolean DEFAULT false,
    access_keyboard_access boolean DEFAULT false,
    access_dynamic_invitations boolean DEFAULT false,
    access_room_bookings character varying,
    access_courtesies boolean DEFAULT false,
    access_covenants boolean DEFAULT false,
    access_reports boolean DEFAULT false,
    access_alerts boolean DEFAULT false,
    access_counter boolean DEFAULT false,
    access_user_access boolean DEFAULT false,
    locations_offers_and_rewards boolean DEFAULT false,
    locations_sublocations json,
    locations_holidays boolean DEFAULT false,
    personal_trainer_classes boolean DEFAULT false,
    messages_notifications boolean DEFAULT false,
    messages_segment_mails boolean DEFAULT false,
    news_general_news boolean DEFAULT false,
    news_video_news boolean DEFAULT false,
    news_twits_news boolean DEFAULT false,
    events_tickets boolean DEFAULT false,
    company_connections_company_connections boolean DEFAULT false,
    client_information_us boolean DEFAULT false,
    client_information_contact_us boolean DEFAULT false,
    personalize_web_page boolean DEFAULT false,
    personalize_mobile_app boolean DEFAULT false,
    personalize_colors json,
    personalize_principal_sections character varying[] DEFAULT '{}'::character varying[],
    personalize_secondary_sections character varying[] DEFAULT '{}'::character varying[],
    personalize_personalize_mails boolean DEFAULT false,
    inside_request_payment_certificate boolean DEFAULT false,
    inside_request_work_certificate boolean DEFAULT false,
    inside_request_contribution_certificate boolean DEFAULT false,
    inside_request_payroll_credit boolean DEFAULT false,
    api_connections_crm boolean DEFAULT false,
    api_connections_end_points boolean DEFAULT false,
    contact_email character varying DEFAULT 'hola@fusepong.com'::character varying,
    validate_covid_terms boolean DEFAULT false,
    whatsapp_notifications boolean,
    max_time_exceeded_blocking boolean DEFAULT false
);
    DROP TABLE public.companies;
       public         heap    postgres    false            2           1259    51114    companies_id_seq    SEQUENCE     y   CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.companies_id_seq;
       public          postgres    false    307            ?           0    0    companies_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;
          public          postgres    false    306            A           1259    51337    company_infos    TABLE     ?  CREATE TABLE public.company_infos (
    id bigint NOT NULL,
    image character varying,
    title character varying,
    text character varying,
    mission character varying,
    vision character varying,
    sections_title character varying,
    sections text[] DEFAULT '{}'::text[],
    company_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.company_infos;
       public         heap    postgres    false            @           1259    51335    company_infos_id_seq    SEQUENCE     }   CREATE SEQUENCE public.company_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.company_infos_id_seq;
       public          postgres    false    321            ?           0    0    company_infos_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.company_infos_id_seq OWNED BY public.company_infos.id;
          public          postgres    false    320            ?            1259    50363 
   conditions    TABLE       CREATE TABLE public.conditions (
    id bigint NOT NULL,
    description character varying NOT NULL,
    frequent boolean DEFAULT true,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    company_id bigint
);
    DROP TABLE public.conditions;
       public         heap    postgres    false            ?            1259    50361    conditions_id_seq    SEQUENCE     z   CREATE SEQUENCE public.conditions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.conditions_id_seq;
       public          postgres    false    230            ?           0    0    conditions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.conditions_id_seq OWNED BY public.conditions.id;
          public          postgres    false    229                       1259    50918    counters    TABLE     ?  CREATE TABLE public.counters (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    last_name character varying DEFAULT ''::character varying NOT NULL,
    location_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    offline_encrypted_data character varying
);
    DROP TABLE public.counters;
       public         heap    postgres    false                       1259    50916    counters_id_seq    SEQUENCE     x   CREATE SEQUENCE public.counters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.counters_id_seq;
       public          postgres    false    287            ?           0    0    counters_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.counters_id_seq OWNED BY public.counters.id;
          public          postgres    false    286                       1259    50812    deporwin_tokens    TABLE     ?   CREATE TABLE public.deporwin_tokens (
    id bigint NOT NULL,
    token_api character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.deporwin_tokens;
       public         heap    postgres    false                       1259    50810    deporwin_tokens_id_seq    SEQUENCE        CREATE SEQUENCE public.deporwin_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.deporwin_tokens_id_seq;
       public          postgres    false    277            ?           0    0    deporwin_tokens_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.deporwin_tokens_id_seq OWNED BY public.deporwin_tokens.id;
          public          postgres    false    276            ?            1259    50458    devices    TABLE       CREATE TABLE public.devices (
    id bigint NOT NULL,
    user_id bigint,
    device_type character varying,
    signature character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    fcm_id character varying
);
    DROP TABLE public.devices;
       public         heap    postgres    false            ?            1259    50456    devices_id_seq    SEQUENCE     w   CREATE SEQUENCE public.devices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.devices_id_seq;
       public          postgres    false    240            ?           0    0    devices_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;
          public          postgres    false    239            9           1259    51226    events    TABLE     ?  CREATE TABLE public.events (
    id bigint NOT NULL,
    special_category_id bigint,
    location_id bigint,
    name character varying,
    event_date character varying,
    description character varying,
    url character varying,
    url_type character varying,
    visible_to_user boolean DEFAULT false,
    event_link character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.events;
       public         heap    postgres    false            8           1259    51224    events_id_seq    SEQUENCE     v   CREATE SEQUENCE public.events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    313            ?           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    312            ?            1259    50319 	   favorites    TABLE     ?   CREATE TABLE public.favorites (
    id bigint NOT NULL,
    client_id bigint,
    favoritable_type character varying,
    favoritable_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.favorites;
       public         heap    postgres    false            ?            1259    50317    favorites_id_seq    SEQUENCE     y   CREATE SEQUENCE public.favorites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.favorites_id_seq;
       public          postgres    false    226            ?           0    0    favorites_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.favorites_id_seq OWNED BY public.favorites.id;
          public          postgres    false    225            #           1259    50963    fingerprints    TABLE     ?   CREATE TABLE public.fingerprints (
    id bigint NOT NULL,
    user_id bigint,
    encrypted_code character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.fingerprints;
       public         heap    postgres    false            "           1259    50961    fingerprints_id_seq    SEQUENCE     |   CREATE SEQUENCE public.fingerprints_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fingerprints_id_seq;
       public          postgres    false    291            ?           0    0    fingerprints_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fingerprints_id_seq OWNED BY public.fingerprints.id;
          public          postgres    false    290            /           1259    51082    holidays    TABLE     K  CREATE TABLE public.holidays (
    id bigint NOT NULL,
    date date,
    min_time timestamp without time zone,
    max_time timestamp without time zone,
    holiday_type character varying,
    time_zone character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.holidays;
       public         heap    postgres    false            .           1259    51080    holidays_id_seq    SEQUENCE     x   CREATE SEQUENCE public.holidays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.holidays_id_seq;
       public          postgres    false    303            ?           0    0    holidays_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.holidays_id_seq OWNED BY public.holidays.id;
          public          postgres    false    302            1           1259    51097    inactive_times    TABLE     k  CREATE TABLE public.inactive_times (
    id bigint NOT NULL,
    sublocation_id bigint,
    weekday character varying,
    start_time character varying DEFAULT '00:00'::character varying,
    end_time character varying DEFAULT '00:00'::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 "   DROP TABLE public.inactive_times;
       public         heap    postgres    false            0           1259    51095    inactive_times_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.inactive_times_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.inactive_times_id_seq;
       public          postgres    false    305            ?           0    0    inactive_times_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.inactive_times_id_seq OWNED BY public.inactive_times.id;
          public          postgres    false    304                       1259    50627    invitations    TABLE     ?  CREATE TABLE public.invitations (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    "from" timestamp without time zone,
    until timestamp without time zone,
    state character varying DEFAULT 'CREATED'::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    init_hour character varying,
    finish_hour character varying,
    offset_time character varying,
    available_locations integer[] DEFAULT '{}'::integer[]
);
    DROP TABLE public.invitations;
       public         heap    postgres    false                       1259    50625    invitations_id_seq    SEQUENCE     {   CREATE SEQUENCE public.invitations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.invitations_id_seq;
       public          postgres    false    258            ?           0    0    invitations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.invitations_id_seq OWNED BY public.invitations.id;
          public          postgres    false    257            ;           1259    51256    invited_clients    TABLE     _  CREATE TABLE public.invited_clients (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    mobile character varying,
    rut character varying,
    invitation_state character varying,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    user_id bigint,
    location_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ticket_type character varying,
    image_qr character varying,
    consecutive integer,
    pin character varying,
    access_pin character varying
);
 #   DROP TABLE public.invited_clients;
       public         heap    postgres    false            :           1259    51254    invited_clients_id_seq    SEQUENCE        CREATE SEQUENCE public.invited_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.invited_clients_id_seq;
       public          postgres    false    315            ?           0    0    invited_clients_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.invited_clients_id_seq OWNED BY public.invited_clients.id;
          public          postgres    false    314                       1259    50645    invited_users    TABLE     *  CREATE TABLE public.invited_users (
    id bigint NOT NULL,
    invitation_id bigint NOT NULL,
    email character varying,
    state character varying DEFAULT 'CREATED'::character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.invited_users;
       public         heap    postgres    false                       1259    50643    invited_users_id_seq    SEQUENCE     }   CREATE SEQUENCE public.invited_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.invited_users_id_seq;
       public          postgres    false    260            ?           0    0    invited_users_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.invited_users_id_seq OWNED BY public.invited_users.id;
          public          postgres    false    259            -           1259    51065    location_capacities    TABLE     ?   CREATE TABLE public.location_capacities (
    id bigint NOT NULL,
    location_id bigint,
    day character varying,
    capacity integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 '   DROP TABLE public.location_capacities;
       public         heap    postgres    false            ,           1259    51063    location_capacities_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.location_capacities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.location_capacities_id_seq;
       public          postgres    false    301            ?           0    0    location_capacities_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.location_capacities_id_seq OWNED BY public.location_capacities.id;
          public          postgres    false    300            ?            1259    50509    location_offers    TABLE        CREATE TABLE public.location_offers (
    location_id bigint NOT NULL,
    offer_id bigint NOT NULL,
    id bigint NOT NULL
);
 #   DROP TABLE public.location_offers;
       public         heap    postgres    false            ?            1259    50556    location_offers_id_seq    SEQUENCE        CREATE SEQUENCE public.location_offers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.location_offers_id_seq;
       public          postgres    false    245            ?           0    0    location_offers_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.location_offers_id_seq OWNED BY public.location_offers.id;
          public          postgres    false    250            ?            1259    50207    location_schedules    TABLE     ?  CREATE TABLE public.location_schedules (
    id bigint NOT NULL,
    location_id bigint,
    sunday character varying,
    monday character varying,
    tuesday character varying,
    wednesday character varying,
    thursday character varying,
    friday character varying,
    saturday character varying,
    works_on_holidays boolean DEFAULT false,
    works_on_sundays boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 &   DROP TABLE public.location_schedules;
       public         heap    postgres    false            ?            1259    50205    location_schedules_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.location_schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.location_schedules_id_seq;
       public          postgres    false    212            ?           0    0    location_schedules_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.location_schedules_id_seq OWNED BY public.location_schedules.id;
          public          postgres    false    211            ?            1259    50193 	   locations    TABLE     ?  CREATE TABLE public.locations (
    id bigint NOT NULL,
    latitude numeric,
    longitude numeric,
    title character varying NOT NULL,
    city character varying NOT NULL,
    location_type character varying NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    address character varying,
    telephone character varying,
    email character varying,
    image character varying NOT NULL,
    link character varying,
    concept character varying,
    nationality_code character varying NOT NULL,
    published boolean DEFAULT false,
    is_shopping_center boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_trainer boolean DEFAULT false,
    schedule_image character varying,
    manager_image character varying,
    manager_email character varying,
    location_category_id bigint,
    deporwin_doors_access integer[] DEFAULT '{}'::integer[],
    country character varying DEFAULT 'Chile'::character varying,
    time_zone character varying DEFAULT 'America/Santiago'::character varying,
    use_fingerprint boolean DEFAULT false,
    company_id bigint
);
    DROP TABLE public.locations;
       public         heap    postgres    false            ?            1259    50191    locations_id_seq    SEQUENCE     y   CREATE SEQUENCE public.locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.locations_id_seq;
       public          postgres    false    210            ?           0    0    locations_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.locations_id_seq OWNED BY public.locations.id;
          public          postgres    false    209            ?            1259    50545    notifications    TABLE     ?  CREATE TABLE public.notifications (
    id bigint NOT NULL,
    client_id bigint,
    title character varying NOT NULL,
    message character varying NOT NULL,
    state character varying DEFAULT 'CREATED'::character varying NOT NULL,
    link character varying,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    notification_type character varying DEFAULT 'new_reward'::character varying
);
 !   DROP TABLE public.notifications;
       public         heap    postgres    false            ?            1259    50543    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    249            ?           0    0    notifications_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;
          public          postgres    false    248            ?            1259    50301    object_categories    TABLE       CREATE TABLE public.object_categories (
    id bigint NOT NULL,
    category_id bigint,
    categorizable_type character varying,
    categorizable_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 %   DROP TABLE public.object_categories;
       public         heap    postgres    false            ?            1259    50299    object_categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.object_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.object_categories_id_seq;
       public          postgres    false    224            ?           0    0    object_categories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.object_categories_id_seq OWNED BY public.object_categories.id;
          public          postgres    false    223            ?            1259    50267    object_tags    TABLE     ?   CREATE TABLE public.object_tags (
    id bigint NOT NULL,
    tag_id bigint,
    taggable_type character varying,
    taggable_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.object_tags;
       public         heap    postgres    false            ?            1259    50265    object_tags_id_seq    SEQUENCE     {   CREATE SEQUENCE public.object_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.object_tags_id_seq;
       public          postgres    false    220            ?           0    0    object_tags_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.object_tags_id_seq OWNED BY public.object_tags.id;
          public          postgres    false    219            ?            1259    50494    offer_photos    TABLE     "  CREATE TABLE public.offer_photos (
    id bigint NOT NULL,
    offer_id bigint,
    image character varying NOT NULL,
    title character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.offer_photos;
       public         heap    postgres    false            ?            1259    50492    offer_photos_id_seq    SEQUENCE     |   CREATE SEQUENCE public.offer_photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.offer_photos_id_seq;
       public          postgres    false    244            ?           0    0    offer_photos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.offer_photos_id_seq OWNED BY public.offer_photos.id;
          public          postgres    false    243            ?            1259    50236    offers    TABLE     ?  CREATE TABLE public.offers (
    id bigint NOT NULL,
    expiration date,
    title character varying NOT NULL,
    tc text NOT NULL,
    description text NOT NULL,
    published boolean DEFAULT false NOT NULL,
    is_rewardable boolean DEFAULT false NOT NULL,
    is_multi_redeemable_per_user boolean DEFAULT false NOT NULL,
    redeem_limit_per_user integer DEFAULT 1 NOT NULL,
    redeem_limit integer DEFAULT 1 NOT NULL,
    redeem_count integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    is_class boolean DEFAULT false,
    reedem_code character varying,
    has_code boolean DEFAULT false,
    limit_days integer DEFAULT 0,
    company_id bigint
);
    DROP TABLE public.offers;
       public         heap    postgres    false            ?            1259    50234    offers_id_seq    SEQUENCE     v   CREATE SEQUENCE public.offers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.offers_id_seq;
       public          postgres    false    216            ?           0    0    offers_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.offers_id_seq OWNED BY public.offers.id;
          public          postgres    false    215            ?            1259    50413 
   progresses    TABLE     ^  CREATE TABLE public.progresses (
    id bigint NOT NULL,
    client_id bigint,
    requirement_id bigint,
    reward_id bigint,
    current_progress integer DEFAULT 1,
    progress_type character varying,
    completed boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.progresses;
       public         heap    postgres    false            ?            1259    50411    progresses_id_seq    SEQUENCE     z   CREATE SEQUENCE public.progresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.progresses_id_seq;
       public          postgres    false    236            ?           0    0    progresses_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.progresses_id_seq OWNED BY public.progresses.id;
          public          postgres    false    235            ?            1259    50570    push_messages    TABLE     U  CREATE TABLE public.push_messages (
    id bigint NOT NULL,
    title character varying,
    message character varying,
    users character varying[] DEFAULT '{}'::character varying[],
    send_date_time timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.push_messages;
       public         heap    postgres    false            ?            1259    50568    push_messages_id_seq    SEQUENCE     }   CREATE SEQUENCE public.push_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.push_messages_id_seq;
       public          postgres    false    252            ?           0    0    push_messages_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.push_messages_id_seq OWNED BY public.push_messages.id;
          public          postgres    false    251            +           1259    51049    releases    TABLE     ?   CREATE TABLE public.releases (
    id bigint NOT NULL,
    system character varying,
    version character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.releases;
       public         heap    postgres    false            *           1259    51047    releases_id_seq    SEQUENCE     x   CREATE SEQUENCE public.releases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.releases_id_seq;
       public          postgres    false    299            ?           0    0    releases_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.releases_id_seq OWNED BY public.releases.id;
          public          postgres    false    298            ?            1259    50395    requirements    TABLE     ?   CREATE TABLE public.requirements (
    id bigint NOT NULL,
    type character varying,
    attribute_json jsonb,
    condition_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.requirements;
       public         heap    postgres    false            ?            1259    50393    requirements_id_seq    SEQUENCE     |   CREATE SEQUENCE public.requirements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.requirements_id_seq;
       public          postgres    false    234            ?           0    0    requirements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.requirements_id_seq OWNED BY public.requirements.id;
          public          postgres    false    233            ?            1259    50375    rewards    TABLE     1  CREATE TABLE public.rewards (
    id bigint NOT NULL,
    "from" timestamp without time zone,
    until timestamp without time zone,
    offer_id bigint NOT NULL,
    condition_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.rewards;
       public         heap    postgres    false            ?            1259    50373    rewards_id_seq    SEQUENCE     w   CREATE SEQUENCE public.rewards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.rewards_id_seq;
       public          postgres    false    232            ?           0    0    rewards_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.rewards_id_seq OWNED BY public.rewards.id;
          public          postgres    false    231            ?            1259    50163    roles    TABLE     ?   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying,
    resource_type character varying,
    resource_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            ?            1259    50161    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    205            ?           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    204                       1259    50680    scan_actions    TABLE     @  CREATE TABLE public.scan_actions (
    id bigint NOT NULL,
    direction character varying NOT NULL,
    user_id bigint NOT NULL,
    invited_user_id bigint,
    scan_device_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    qr_generate_device character varying,
    previous_scan_id bigint,
    access_type character varying DEFAULT 'TO_TRAIN'::character varying NOT NULL,
    booking_id bigint,
    invited_client_id bigint,
    invited_by_user boolean DEFAULT false,
    location_id integer
);
     DROP TABLE public.scan_actions;
       public         heap    postgres    false                       1259    50678    scan_actions_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scan_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scan_actions_id_seq;
       public          postgres    false    264            ?           0    0    scan_actions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.scan_actions_id_seq OWNED BY public.scan_actions.id;
          public          postgres    false    263                       1259    50663    scan_devices    TABLE     q  CREATE TABLE public.scan_devices (
    id bigint NOT NULL,
    uuid character varying,
    name character varying,
    location_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    stable_version_id bigint DEFAULT 1,
    updated_version_id bigint DEFAULT 1,
    local_ip character varying
);
     DROP TABLE public.scan_devices;
       public         heap    postgres    false                       1259    50661    scan_devices_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scan_devices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scan_devices_id_seq;
       public          postgres    false    262            ?           0    0    scan_devices_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.scan_devices_id_seq OWNED BY public.scan_devices.id;
          public          postgres    false    261                       1259    50891    scan_firmwares    TABLE     c  CREATE TABLE public.scan_firmwares (
    id bigint NOT NULL,
    version character varying DEFAULT '2019.12.3.0'::character varying NOT NULL,
    link character varying DEFAULT 'https://github.com/ansonruby/Firmware1'::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 "   DROP TABLE public.scan_firmwares;
       public         heap    postgres    false                       1259    50889    scan_firmwares_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.scan_firmwares_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.scan_firmwares_id_seq;
       public          postgres    false    285            ?           0    0    scan_firmwares_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.scan_firmwares_id_seq OWNED BY public.scan_firmwares.id;
          public          postgres    false    284            ?            1259    50127    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false                       1259    50763    segment_values    TABLE     ?   CREATE TABLE public.segment_values (
    id bigint NOT NULL,
    value character varying,
    segment_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    ranges numeric[]
);
 "   DROP TABLE public.segment_values;
       public         heap    postgres    false                       1259    50761    segment_values_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.segment_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.segment_values_id_seq;
       public          postgres    false    273            ?           0    0    segment_values_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.segment_values_id_seq OWNED BY public.segment_values.id;
          public          postgres    false    272                       1259    50874    segmented_emails    TABLE       CREATE TABLE public.segmented_emails (
    id bigint NOT NULL,
    affair character varying,
    title character varying,
    message character varying,
    shipment_date timestamp without time zone DEFAULT '2021-12-27 19:52:29.310153'::timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    unregistered_users character varying[] DEFAULT '{}'::character varying[],
    users character varying[] DEFAULT '{}'::character varying[]
);
 $   DROP TABLE public.segmented_emails;
       public         heap    postgres    false                       1259    50872    segmented_emails_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.segmented_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.segmented_emails_id_seq;
       public          postgres    false    283            ?           0    0    segmented_emails_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.segmented_emails_id_seq OWNED BY public.segmented_emails.id;
          public          postgres    false    282            ?            1259    50445    segments    TABLE     !  CREATE TABLE public.segments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    key character varying DEFAULT ''::character varying NOT NULL,
    company_id bigint
);
    DROP TABLE public.segments;
       public         heap    postgres    false            ?            1259    50443    segments_id_seq    SEQUENCE     x   CREATE SEQUENCE public.segments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.segments_id_seq;
       public          postgres    false    238            ?           0    0    segments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.segments_id_seq OWNED BY public.segments.id;
          public          postgres    false    237            ?            1259    50226    shopping_center_outlets    TABLE     ?   CREATE TABLE public.shopping_center_outlets (
    id bigint NOT NULL,
    shopping_center_id integer,
    outlet_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 +   DROP TABLE public.shopping_center_outlets;
       public         heap    postgres    false            ?            1259    50224    shopping_center_outlets_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.shopping_center_outlets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.shopping_center_outlets_id_seq;
       public          postgres    false    214            ?           0    0    shopping_center_outlets_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.shopping_center_outlets_id_seq OWNED BY public.shopping_center_outlets.id;
          public          postgres    false    213            5           1259    51191    special_categories    TABLE     ?   CREATE TABLE public.special_categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    icon character varying
);
 &   DROP TABLE public.special_categories;
       public         heap    postgres    false            4           1259    51189    special_categories_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.special_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.special_categories_id_seq;
       public          postgres    false    309            ?           0    0    special_categories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.special_categories_id_seq OWNED BY public.special_categories.id;
          public          postgres    false    308            '           1259    50997    sublocation_schedules    TABLE     Q  CREATE TABLE public.sublocation_schedules (
    id bigint NOT NULL,
    sublocation_id bigint,
    sunday jsonb,
    monday jsonb,
    tuesday jsonb,
    wednesday jsonb,
    thursday jsonb,
    friday jsonb,
    saturday jsonb,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 )   DROP TABLE public.sublocation_schedules;
       public         heap    postgres    false            &           1259    50995    sublocation_schedules_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sublocation_schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.sublocation_schedules_id_seq;
       public          postgres    false    295            ?           0    0    sublocation_schedules_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.sublocation_schedules_id_seq OWNED BY public.sublocation_schedules.id;
          public          postgres    false    294            %           1259    50980    sublocations    TABLE     J  CREATE TABLE public.sublocations (
    id bigint NOT NULL,
    location_id bigint,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sublocation_type character varying DEFAULT 'default'::character varying,
    enabled boolean DEFAULT true
);
     DROP TABLE public.sublocations;
       public         heap    postgres    false            $           1259    50978    sublocations_id_seq    SEQUENCE     |   CREATE SEQUENCE public.sublocations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sublocations_id_seq;
       public          postgres    false    293            ?           0    0    sublocations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sublocations_id_seq OWNED BY public.sublocations.id;
          public          postgres    false    292            ?            1259    50253    tags    TABLE     F  CREATE TABLE public.tags (
    id bigint NOT NULL,
    name character varying,
    natural_name character varying,
    presence integer DEFAULT 0,
    popularity integer DEFAULT 0,
    published boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.tags;
       public         heap    postgres    false            ?            1259    50251    tags_id_seq    SEQUENCE     t   CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.tags_id_seq;
       public          postgres    false    218            ?           0    0    tags_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;
          public          postgres    false    217            !           1259    50943 
   token_pins    TABLE     ?  CREATE TABLE public.token_pins (
    id bigint NOT NULL,
    user_id bigint,
    pins character varying[] DEFAULT '{}'::character varying[],
    burned_pins character varying[] DEFAULT '{}'::character varying[],
    last_update timestamp without time zone DEFAULT '2021-12-27 19:52:29.44312'::timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.token_pins;
       public         heap    postgres    false                        1259    50941    token_pins_id_seq    SEQUENCE     z   CREATE SEQUENCE public.token_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.token_pins_id_seq;
       public          postgres    false    289            ?           0    0    token_pins_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.token_pins_id_seq OWNED BY public.token_pins.id;
          public          postgres    false    288                       1259    50862    unregistered_data_segments    TABLE     ?   CREATE TABLE public.unregistered_data_segments (
    id bigint NOT NULL,
    data json[] DEFAULT '{}'::json[],
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.unregistered_data_segments;
       public         heap    postgres    false                       1259    50860 !   unregistered_data_segments_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.unregistered_data_segments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.unregistered_data_segments_id_seq;
       public          postgres    false    281            ?           0    0 !   unregistered_data_segments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.unregistered_data_segments_id_seq OWNED BY public.unregistered_data_segments.id;
          public          postgres    false    280            ?            1259    50583    user_actions    TABLE     ?  CREATE TABLE public.user_actions (
    id bigint NOT NULL,
    log_file character varying,
    user_id integer,
    controller character varying,
    action character varying,
    instance_id integer,
    user_agent character varying,
    geolocation character varying,
    state character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.user_actions;
       public         heap    postgres    false            ?            1259    50581    user_actions_id_seq    SEQUENCE     |   CREATE SEQUENCE public.user_actions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_actions_id_seq;
       public          postgres    false    254            ?           0    0    user_actions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_actions_id_seq OWNED BY public.user_actions.id;
          public          postgres    false    253            ?           1259    51312    user_categories    TABLE     }  CREATE TABLE public.user_categories (
    id bigint NOT NULL,
    name character varying,
    description character varying DEFAULT ''::character varying,
    access_doors integer[] DEFAULT '{}'::integer[],
    company_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    send_invitation boolean DEFAULT false
);
 #   DROP TABLE public.user_categories;
       public         heap    postgres    false            >           1259    51310    user_categories_id_seq    SEQUENCE        CREATE SEQUENCE public.user_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.user_categories_id_seq;
       public          postgres    false    319            ?           0    0    user_categories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.user_categories_id_seq OWNED BY public.user_categories.id;
          public          postgres    false    318            ?            1259    50145    users    TABLE     l  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    mobile character varying,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    user_info_type character varying,
    user_info_id bigint,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    rut character varying,
    deporwin_person_id integer,
    acceptance_terms_covid boolean DEFAULT false,
    acceptance_date timestamp without time zone,
    gym character varying DEFAULT ''::character varying,
    gym_address character varying DEFAULT ''::character varying,
    from_franchise boolean DEFAULT false,
    user_company character varying,
    company integer,
    validation_code character varying,
    send_invitation boolean DEFAULT false,
    access_pin character varying,
    physiotherapy_appointment boolean DEFAULT false,
    blocked boolean DEFAULT false,
    unlocked_on_platform boolean DEFAULT false
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    50143    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202            ?            1259    50173    users_roles    TABLE     L   CREATE TABLE public.users_roles (
    user_id bigint,
    role_id bigint
);
    DROP TABLE public.users_roles;
       public         heap    postgres    false                        1259    50595    voucher_redemptions    TABLE       CREATE TABLE public.voucher_redemptions (
    id bigint NOT NULL,
    voucher_id bigint,
    redemption_uuid character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    location_id bigint
);
 '   DROP TABLE public.voucher_redemptions;
       public         heap    postgres    false            ?            1259    50593    voucher_redemptions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.voucher_redemptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.voucher_redemptions_id_seq;
       public          postgres    false    256            ?           0    0    voucher_redemptions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.voucher_redemptions_id_seq OWNED BY public.voucher_redemptions.id;
          public          postgres    false    255            ?            1259    50337    vouchers    TABLE     ?  CREATE TABLE public.vouchers (
    id bigint NOT NULL,
    offer_id bigint,
    client_id bigint,
    redeem_count integer DEFAULT 0 NOT NULL,
    is_reward boolean DEFAULT false NOT NULL,
    status character varying DEFAULT 'READY_FOR_REDEEMAL'::character varying,
    redemption_uuid character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    agent_id bigint,
    is_class boolean DEFAULT false
);
    DROP TABLE public.vouchers;
       public         heap    postgres    false            ?            1259    50335    vouchers_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vouchers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vouchers_id_seq;
       public          postgres    false    228            ?           0    0    vouchers_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vouchers_id_seq OWNED BY public.vouchers.id;
          public          postgres    false    227            %           2604    50742    access_alerts id    DEFAULT     t   ALTER TABLE ONLY public.access_alerts ALTER COLUMN id SET DEFAULT nextval('public.access_alerts_id_seq'::regclass);
 ?   ALTER TABLE public.access_alerts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    269    270    270                       2604    50530 	   agents id    DEFAULT     f   ALTER TABLE ONLY public.agents ALTER COLUMN id SET DEFAULT nextval('public.agents_id_seq'::regclass);
 8   ALTER TABLE public.agents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            #           2604    50714    agreement_admin_users id    DEFAULT     ?   ALTER TABLE ONLY public.agreement_admin_users ALTER COLUMN id SET DEFAULT nextval('public.agreement_admin_users_id_seq'::regclass);
 G   ALTER TABLE public.agreement_admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            $           2604    50725    agreement_entries_quantities id    DEFAULT     ?   ALTER TABLE ONLY public.agreement_entries_quantities ALTER COLUMN id SET DEFAULT nextval('public.agreement_entries_quantities_id_seq'::regclass);
 N   ALTER TABLE public.agreement_entries_quantities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            x           2604    51205    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    311    311                       2604    50480    authentication_signatures id    DEFAULT     ?   ALTER TABLE ONLY public.authentication_signatures ALTER COLUMN id SET DEFAULT nextval('public.authentication_signatures_id_seq'::regclass);
 K   ALTER TABLE public.authentication_signatures ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            }           2604    51289    booking_offices id    DEFAULT     x   ALTER TABLE ONLY public.booking_offices ALTER COLUMN id SET DEFAULT nextval('public.booking_offices_id_seq'::regclass);
 A   ALTER TABLE public.booking_offices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    317    316    317            B           2604    51017    bookings id    DEFAULT     j   ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public.bookings_id_seq'::regclass);
 :   ALTER TABLE public.bookings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    297    297            ?           2604    50288    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            (           2604    50783    client_segments id    DEFAULT     x   ALTER TABLE ONLY public.client_segments ALTER COLUMN id SET DEFAULT nextval('public.client_segments_id_seq'::regclass);
 A   ALTER TABLE public.client_segments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274    275            ?           2604    50185 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            *           2604    50826    codes_packages id    DEFAULT     v   ALTER TABLE ONLY public.codes_packages ALTER COLUMN id SET DEFAULT nextval('public.codes_packages_id_seq'::regclass);
 @   ALTER TABLE public.codes_packages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279            K           2604    51119    companies id    DEFAULT     l   ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);
 ;   ALTER TABLE public.companies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    307    307            ?           2604    51340    company_infos id    DEFAULT     t   ALTER TABLE ONLY public.company_infos ALTER COLUMN id SET DEFAULT nextval('public.company_infos_id_seq'::regclass);
 ?   ALTER TABLE public.company_infos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    321    320    321                       2604    50366    conditions id    DEFAULT     n   ALTER TABLE ONLY public.conditions ALTER COLUMN id SET DEFAULT nextval('public.conditions_id_seq'::regclass);
 <   ALTER TABLE public.conditions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            6           2604    50921    counters id    DEFAULT     j   ALTER TABLE ONLY public.counters ALTER COLUMN id SET DEFAULT nextval('public.counters_id_seq'::regclass);
 :   ALTER TABLE public.counters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286    287            )           2604    50815    deporwin_tokens id    DEFAULT     x   ALTER TABLE ONLY public.deporwin_tokens ALTER COLUMN id SET DEFAULT nextval('public.deporwin_tokens_id_seq'::regclass);
 A   ALTER TABLE public.deporwin_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276    277                       2604    50461 
   devices id    DEFAULT     h   ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);
 9   ALTER TABLE public.devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            z           2604    51229 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312    313            ?           2604    50322    favorites id    DEFAULT     l   ALTER TABLE ONLY public.favorites ALTER COLUMN id SET DEFAULT nextval('public.favorites_id_seq'::regclass);
 ;   ALTER TABLE public.favorites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            =           2604    50966    fingerprints id    DEFAULT     r   ALTER TABLE ONLY public.fingerprints ALTER COLUMN id SET DEFAULT nextval('public.fingerprints_id_seq'::regclass);
 >   ALTER TABLE public.fingerprints ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    291    291            G           2604    51085    holidays id    DEFAULT     j   ALTER TABLE ONLY public.holidays ALTER COLUMN id SET DEFAULT nextval('public.holidays_id_seq'::regclass);
 :   ALTER TABLE public.holidays ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    302    303    303            H           2604    51100    inactive_times id    DEFAULT     v   ALTER TABLE ONLY public.inactive_times ALTER COLUMN id SET DEFAULT nextval('public.inactive_times_id_seq'::regclass);
 @   ALTER TABLE public.inactive_times ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    305    305                       2604    50630    invitations id    DEFAULT     p   ALTER TABLE ONLY public.invitations ALTER COLUMN id SET DEFAULT nextval('public.invitations_id_seq'::regclass);
 =   ALTER TABLE public.invitations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258            |           2604    51259    invited_clients id    DEFAULT     x   ALTER TABLE ONLY public.invited_clients ALTER COLUMN id SET DEFAULT nextval('public.invited_clients_id_seq'::regclass);
 A   ALTER TABLE public.invited_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    315    314    315                       2604    50648    invited_users id    DEFAULT     t   ALTER TABLE ONLY public.invited_users ALTER COLUMN id SET DEFAULT nextval('public.invited_users_id_seq'::regclass);
 ?   ALTER TABLE public.invited_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            F           2604    51068    location_capacities id    DEFAULT     ?   ALTER TABLE ONLY public.location_capacities ALTER COLUMN id SET DEFAULT nextval('public.location_capacities_id_seq'::regclass);
 E   ALTER TABLE public.location_capacities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    301    300    301                       2604    50558    location_offers id    DEFAULT     x   ALTER TABLE ONLY public.location_offers ALTER COLUMN id SET DEFAULT nextval('public.location_offers_id_seq'::regclass);
 A   ALTER TABLE public.location_offers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    245            ?           2604    50210    location_schedules id    DEFAULT     ~   ALTER TABLE ONLY public.location_schedules ALTER COLUMN id SET DEFAULT nextval('public.location_schedules_id_seq'::regclass);
 D   ALTER TABLE public.location_schedules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            ?           2604    50196    locations id    DEFAULT     l   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.locations_id_seq'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210                       2604    50548    notifications id    DEFAULT     t   ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 ?   ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            ?           2604    50304    object_categories id    DEFAULT     |   ALTER TABLE ONLY public.object_categories ALTER COLUMN id SET DEFAULT nextval('public.object_categories_id_seq'::regclass);
 C   ALTER TABLE public.object_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    50270    object_tags id    DEFAULT     p   ALTER TABLE ONLY public.object_tags ALTER COLUMN id SET DEFAULT nextval('public.object_tags_id_seq'::regclass);
 =   ALTER TABLE public.object_tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220                       2604    50497    offer_photos id    DEFAULT     r   ALTER TABLE ONLY public.offer_photos ALTER COLUMN id SET DEFAULT nextval('public.offer_photos_id_seq'::regclass);
 >   ALTER TABLE public.offer_photos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            ?           2604    50239 	   offers id    DEFAULT     f   ALTER TABLE ONLY public.offers ALTER COLUMN id SET DEFAULT nextval('public.offers_id_seq'::regclass);
 8   ALTER TABLE public.offers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                       2604    50416    progresses id    DEFAULT     n   ALTER TABLE ONLY public.progresses ALTER COLUMN id SET DEFAULT nextval('public.progresses_id_seq'::regclass);
 <   ALTER TABLE public.progresses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236                       2604    50573    push_messages id    DEFAULT     t   ALTER TABLE ONLY public.push_messages ALTER COLUMN id SET DEFAULT nextval('public.push_messages_id_seq'::regclass);
 ?   ALTER TABLE public.push_messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            E           2604    51052    releases id    DEFAULT     j   ALTER TABLE ONLY public.releases ALTER COLUMN id SET DEFAULT nextval('public.releases_id_seq'::regclass);
 :   ALTER TABLE public.releases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    299    298    299                       2604    50398    requirements id    DEFAULT     r   ALTER TABLE ONLY public.requirements ALTER COLUMN id SET DEFAULT nextval('public.requirements_id_seq'::regclass);
 >   ALTER TABLE public.requirements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234                       2604    50378 
   rewards id    DEFAULT     h   ALTER TABLE ONLY public.rewards ALTER COLUMN id SET DEFAULT nextval('public.rewards_id_seq'::regclass);
 9   ALTER TABLE public.rewards ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            ?           2604    50166    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205                        2604    50683    scan_actions id    DEFAULT     r   ALTER TABLE ONLY public.scan_actions ALTER COLUMN id SET DEFAULT nextval('public.scan_actions_id_seq'::regclass);
 >   ALTER TABLE public.scan_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264                       2604    50666    scan_devices id    DEFAULT     r   ALTER TABLE ONLY public.scan_devices ALTER COLUMN id SET DEFAULT nextval('public.scan_devices_id_seq'::regclass);
 >   ALTER TABLE public.scan_devices ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            3           2604    50894    scan_firmwares id    DEFAULT     v   ALTER TABLE ONLY public.scan_firmwares ALTER COLUMN id SET DEFAULT nextval('public.scan_firmwares_id_seq'::regclass);
 @   ALTER TABLE public.scan_firmwares ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    284    285            '           2604    50766    segment_values id    DEFAULT     v   ALTER TABLE ONLY public.segment_values ALTER COLUMN id SET DEFAULT nextval('public.segment_values_id_seq'::regclass);
 @   ALTER TABLE public.segment_values ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273            /           2604    50877    segmented_emails id    DEFAULT     z   ALTER TABLE ONLY public.segmented_emails ALTER COLUMN id SET DEFAULT nextval('public.segmented_emails_id_seq'::regclass);
 B   ALTER TABLE public.segmented_emails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    283    283            
           2604    50448    segments id    DEFAULT     j   ALTER TABLE ONLY public.segments ALTER COLUMN id SET DEFAULT nextval('public.segments_id_seq'::regclass);
 :   ALTER TABLE public.segments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            ?           2604    50229    shopping_center_outlets id    DEFAULT     ?   ALTER TABLE ONLY public.shopping_center_outlets ALTER COLUMN id SET DEFAULT nextval('public.shopping_center_outlets_id_seq'::regclass);
 I   ALTER TABLE public.shopping_center_outlets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            w           2604    51194    special_categories id    DEFAULT     ~   ALTER TABLE ONLY public.special_categories ALTER COLUMN id SET DEFAULT nextval('public.special_categories_id_seq'::regclass);
 D   ALTER TABLE public.special_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    308    309    309            A           2604    51000    sublocation_schedules id    DEFAULT     ?   ALTER TABLE ONLY public.sublocation_schedules ALTER COLUMN id SET DEFAULT nextval('public.sublocation_schedules_id_seq'::regclass);
 G   ALTER TABLE public.sublocation_schedules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    295    294    295            >           2604    50983    sublocations id    DEFAULT     r   ALTER TABLE ONLY public.sublocations ALTER COLUMN id SET DEFAULT nextval('public.sublocations_id_seq'::regclass);
 >   ALTER TABLE public.sublocations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    293    293            ?           2604    50256    tags id    DEFAULT     b   ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);
 6   ALTER TABLE public.tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            9           2604    50946    token_pins id    DEFAULT     n   ALTER TABLE ONLY public.token_pins ALTER COLUMN id SET DEFAULT nextval('public.token_pins_id_seq'::regclass);
 <   ALTER TABLE public.token_pins ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    288    289            -           2604    50865    unregistered_data_segments id    DEFAULT     ?   ALTER TABLE ONLY public.unregistered_data_segments ALTER COLUMN id SET DEFAULT nextval('public.unregistered_data_segments_id_seq'::regclass);
 L   ALTER TABLE public.unregistered_data_segments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    281    281                       2604    50586    user_actions id    DEFAULT     r   ALTER TABLE ONLY public.user_actions ALTER COLUMN id SET DEFAULT nextval('public.user_actions_id_seq'::regclass);
 >   ALTER TABLE public.user_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            ?           2604    51315    user_categories id    DEFAULT     x   ALTER TABLE ONLY public.user_categories ALTER COLUMN id SET DEFAULT nextval('public.user_categories_id_seq'::regclass);
 A   ALTER TABLE public.user_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    318    319    319            ?           2604    50148    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                       2604    50598    voucher_redemptions id    DEFAULT     ?   ALTER TABLE ONLY public.voucher_redemptions ALTER COLUMN id SET DEFAULT nextval('public.voucher_redemptions_id_seq'::regclass);
 E   ALTER TABLE public.voucher_redemptions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            ?           2604    50340    vouchers id    DEFAULT     j   ALTER TABLE ONLY public.vouchers ALTER COLUMN id SET DEFAULT nextval('public.vouchers_id_seq'::regclass);
 :   ALTER TABLE public.vouchers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            a          0    50739    access_alerts 
   TABLE DATA           `   COPY public.access_alerts (id, less_difference, alert_type, created_at, updated_at) FROM stdin;
    public          postgres    false    270    ?      b          0    50749    access_alerts_scan_actions 
   TABLE DATA           U   COPY public.access_alerts_scan_actions (scan_action_id, access_alert_id) FROM stdin;
    public          postgres    false    271   ?      J          0    50527    agents 
   TABLE DATA           b   COPY public.agents (id, name, last_name, gender, location_id, created_at, updated_at) FROM stdin;
    public          postgres    false    247   :?      ]          0    50711    agreement_admin_users 
   TABLE DATA           t   COPY public.agreement_admin_users (id, name, last_name, organization_name, created_at, updated_at, nit) FROM stdin;
    public          postgres    false    266   ??      _          0    50722    agreement_entries_quantities 
   TABLE DATA           u   COPY public.agreement_entries_quantities (id, quantity, agreement_admin_user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    268   ??                0    50135    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          postgres    false    201   ??      ?          0    51202    articles 
   TABLE DATA           ?   COPY public.articles (id, special_category_id, location_id, name, publication_date, description, url, url_type, visible_to_user, news_type, created_at, updated_at, expiration) FROM stdin;
    public          postgres    false    311   ?      E          0    50477    authentication_signatures 
   TABLE DATA           w   COPY public.authentication_signatures (id, jti, aud, device_id, state, expiration, created_at, updated_at) FROM stdin;
    public          postgres    false    242   ?^      ?          0    51286    booking_offices 
   TABLE DATA           l   COPY public.booking_offices (id, user_id, name, last_name, location_id, created_at, updated_at) FROM stdin;
    public          postgres    false    317   sw      |          0    51014    bookings 
   TABLE DATA           ?   COPY public.bookings (id, user_id, sublocation_id, weekday, start_time, end_time, state, created_at, updated_at, day_schedule, local_time, access_type) FROM stdin;
    public          postgres    false    297   ?w      1          0    50285 
   categories 
   TABLE DATA           ?   COPY public.categories (id, name, presence, popularity, is_parent, parent_category_id, published, created_at, updated_at, company_id) FROM stdin;
    public          postgres    false    222   ?w      f          0    50780    client_segments 
   TABLE DATA           Q   COPY public.client_segments (id, segment_value_id, client_id, value) FROM stdin;
    public          postgres    false    275   ~x      #          0    50182    clients 
   TABLE DATA             COPY public.clients (id, name, last_name, nationality, gender, birthday, location, picture, created_at, updated_at, location_id, access_state, type, plan_from, plan_until, plan_type, membership_type, profession, address, update_data, access_doors, user_category_id) FROM stdin;
    public          postgres    false    208   ?x      j          0    50823    codes_packages 
   TABLE DATA           \   COPY public.codes_packages (id, offer_id, files, codes, created_at, updated_at) FROM stdin;
    public          postgres    false    279   @z      ?          0    51116 	   companies 
   TABLE DATA           O  COPY public.companies (id, subdomain, name, created_at, updated_at, unicode, multicode, read_qr, read_agent, read_code, reward, rad_scan, description, address, identify_number, logo, dashboard_users, dashboard_offers, dashboard_rewards, dashboard_access, offers_redemption_form, offers_favorites, rewards_user_characteristics, rewards_segments, rewards_rewards, access_general_access, access_without_internet_access, access_keyboard_access, access_dynamic_invitations, access_room_bookings, access_courtesies, access_covenants, access_reports, access_alerts, access_counter, access_user_access, locations_offers_and_rewards, locations_sublocations, locations_holidays, personal_trainer_classes, messages_notifications, messages_segment_mails, news_general_news, news_video_news, news_twits_news, events_tickets, company_connections_company_connections, client_information_us, client_information_contact_us, personalize_web_page, personalize_mobile_app, personalize_colors, personalize_principal_sections, personalize_secondary_sections, personalize_personalize_mails, inside_request_payment_certificate, inside_request_work_certificate, inside_request_contribution_certificate, inside_request_payroll_credit, api_connections_crm, api_connections_end_points, contact_email, validate_covid_terms, whatsapp_notifications, max_time_exceeded_blocking) FROM stdin;
    public          postgres    false    307   ]z      ?          0    51337    company_infos 
   TABLE DATA           ?   COPY public.company_infos (id, image, title, text, mission, vision, sections_title, sections, company_id, created_at, updated_at) FROM stdin;
    public          postgres    false    321   G{      9          0    50363 
   conditions 
   TABLE DATA           c   COPY public.conditions (id, description, frequent, created_at, updated_at, company_id) FROM stdin;
    public          postgres    false    230   d{      r          0    50918    counters 
   TABLE DATA           }   COPY public.counters (id, user_id, name, last_name, location_id, created_at, updated_at, offline_encrypted_data) FROM stdin;
    public          postgres    false    287   ?{      h          0    50812    deporwin_tokens 
   TABLE DATA           P   COPY public.deporwin_tokens (id, token_api, created_at, updated_at) FROM stdin;
    public          postgres    false    277   ?{      C          0    50458    devices 
   TABLE DATA           f   COPY public.devices (id, user_id, device_type, signature, created_at, updated_at, fcm_id) FROM stdin;
    public          postgres    false    240   ?{      ?          0    51226    events 
   TABLE DATA           ?   COPY public.events (id, special_category_id, location_id, name, event_date, description, url, url_type, visible_to_user, event_link, created_at, updated_at) FROM stdin;
    public          postgres    false    313   *}      5          0    50319 	   favorites 
   TABLE DATA           l   COPY public.favorites (id, client_id, favoritable_type, favoritable_id, created_at, updated_at) FROM stdin;
    public          postgres    false    226   G}      v          0    50963    fingerprints 
   TABLE DATA           [   COPY public.fingerprints (id, user_id, encrypted_code, created_at, updated_at) FROM stdin;
    public          postgres    false    291   d}      ?          0    51082    holidays 
   TABLE DATA           q   COPY public.holidays (id, date, min_time, max_time, holiday_type, time_zone, created_at, updated_at) FROM stdin;
    public          postgres    false    303   ?}      ?          0    51097    inactive_times 
   TABLE DATA           s   COPY public.inactive_times (id, sublocation_id, weekday, start_time, end_time, created_at, updated_at) FROM stdin;
    public          postgres    false    305   ?}      U          0    50627    invitations 
   TABLE DATA           ?   COPY public.invitations (id, user_id, "from", until, state, created_at, updated_at, init_hour, finish_hour, offset_time, available_locations) FROM stdin;
    public          postgres    false    258   ?}      ?          0    51256    invited_clients 
   TABLE DATA           ?   COPY public.invited_clients (id, name, email, mobile, rut, invitation_state, start_time, end_time, user_id, location_id, created_at, updated_at, ticket_type, image_qr, consecutive, pin, access_pin) FROM stdin;
    public          postgres    false    315   ?}      W          0    50645    invited_users 
   TABLE DATA           `   COPY public.invited_users (id, invitation_id, email, state, created_at, updated_at) FROM stdin;
    public          postgres    false    260   ?~      ?          0    51065    location_capacities 
   TABLE DATA           e   COPY public.location_capacities (id, location_id, day, capacity, created_at, updated_at) FROM stdin;
    public          postgres    false    301   ?~      H          0    50509    location_offers 
   TABLE DATA           D   COPY public.location_offers (location_id, offer_id, id) FROM stdin;
    public          postgres    false    245   a      '          0    50207    location_schedules 
   TABLE DATA           ?   COPY public.location_schedules (id, location_id, sunday, monday, tuesday, wednesday, thursday, friday, saturday, works_on_holidays, works_on_sundays, created_at, updated_at) FROM stdin;
    public          postgres    false    212   ~      %          0    50193 	   locations 
   TABLE DATA           }  COPY public.locations (id, latitude, longitude, title, city, location_type, name, description, address, telephone, email, image, link, concept, nationality_code, published, is_shopping_center, created_at, updated_at, is_trainer, schedule_image, manager_image, manager_email, location_category_id, deporwin_doors_access, country, time_zone, use_fingerprint, company_id) FROM stdin;
    public          postgres    false    210   ?      L          0    50545    notifications 
   TABLE DATA           ?   COPY public.notifications (id, client_id, title, message, state, link, image, created_at, updated_at, notification_type) FROM stdin;
    public          postgres    false    249   ?      3          0    50301    object_categories 
   TABLE DATA           z   COPY public.object_categories (id, category_id, categorizable_type, categorizable_id, created_at, updated_at) FROM stdin;
    public          postgres    false    224   /?      /          0    50267    object_tags 
   TABLE DATA           e   COPY public.object_tags (id, tag_id, taggable_type, taggable_id, created_at, updated_at) FROM stdin;
    public          postgres    false    220   L?      G          0    50494    offer_photos 
   TABLE DATA           g   COPY public.offer_photos (id, offer_id, image, title, description, created_at, updated_at) FROM stdin;
    public          postgres    false    244   i?      +          0    50236    offers 
   TABLE DATA             COPY public.offers (id, expiration, title, tc, description, published, is_rewardable, is_multi_redeemable_per_user, redeem_limit_per_user, redeem_limit, redeem_count, created_at, updated_at, is_class, reedem_code, has_code, limit_days, company_id) FROM stdin;
    public          postgres    false    216   ??      ?          0    50413 
   progresses 
   TABLE DATA           ?   COPY public.progresses (id, client_id, requirement_id, reward_id, current_progress, progress_type, completed, created_at, updated_at) FROM stdin;
    public          postgres    false    236   ??      O          0    50570    push_messages 
   TABLE DATA           j   COPY public.push_messages (id, title, message, users, send_date_time, created_at, updated_at) FROM stdin;
    public          postgres    false    252   ??      ~          0    51049    releases 
   TABLE DATA           O   COPY public.releases (id, system, version, created_at, updated_at) FROM stdin;
    public          postgres    false    299   ݁      =          0    50395    requirements 
   TABLE DATA           f   COPY public.requirements (id, type, attribute_json, condition_id, created_at, updated_at) FROM stdin;
    public          postgres    false    234   ??      ;          0    50375    rewards 
   TABLE DATA           d   COPY public.rewards (id, "from", until, offer_id, condition_id, created_at, updated_at) FROM stdin;
    public          postgres    false    232   ?                 0    50163    roles 
   TABLE DATA           ]   COPY public.roles (id, name, resource_type, resource_id, created_at, updated_at) FROM stdin;
    public          postgres    false    205   4?      [          0    50680    scan_actions 
   TABLE DATA           ?   COPY public.scan_actions (id, direction, user_id, invited_user_id, scan_device_id, created_at, updated_at, qr_generate_device, previous_scan_id, access_type, booking_id, invited_client_id, invited_by_user, location_id) FROM stdin;
    public          postgres    false    264   ??      Y          0    50663    scan_devices 
   TABLE DATA           ?   COPY public.scan_devices (id, uuid, name, location_id, created_at, updated_at, stable_version_id, updated_version_id, local_ip) FROM stdin;
    public          postgres    false    262   ??      p          0    50891    scan_firmwares 
   TABLE DATA           S   COPY public.scan_firmwares (id, version, link, created_at, updated_at) FROM stdin;
    public          postgres    false    285   ǂ                0    50127    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    200   5?      d          0    50763    segment_values 
   TABLE DATA           _   COPY public.segment_values (id, value, segment_id, created_at, updated_at, ranges) FROM stdin;
    public          postgres    false    273   ?      n          0    50874    segmented_emails 
   TABLE DATA           ?   COPY public.segmented_emails (id, affair, title, message, shipment_date, created_at, updated_at, unregistered_users, users) FROM stdin;
    public          postgres    false    283   !?      A          0    50445    segments 
   TABLE DATA           U   COPY public.segments (id, name, created_at, updated_at, key, company_id) FROM stdin;
    public          postgres    false    238   >?      )          0    50226    shopping_center_outlets 
   TABLE DATA           l   COPY public.shopping_center_outlets (id, shopping_center_id, outlet_id, created_at, updated_at) FROM stdin;
    public          postgres    false    214   [?      ?          0    51191    special_categories 
   TABLE DATA           T   COPY public.special_categories (id, name, created_at, updated_at, icon) FROM stdin;
    public          postgres    false    309   x?      z          0    50997    sublocation_schedules 
   TABLE DATA           ?   COPY public.sublocation_schedules (id, sublocation_id, sunday, monday, tuesday, wednesday, thursday, friday, saturday, created_at, updated_at) FROM stdin;
    public          postgres    false    295   Ɔ      x          0    50980    sublocations 
   TABLE DATA           p   COPY public.sublocations (id, location_id, name, created_at, updated_at, sublocation_type, enabled) FROM stdin;
    public          postgres    false    293   N?      -          0    50253    tags 
   TABLE DATA           o   COPY public.tags (id, name, natural_name, presence, popularity, published, created_at, updated_at) FROM stdin;
    public          postgres    false    218   ??      t          0    50943 
   token_pins 
   TABLE DATA           i   COPY public.token_pins (id, user_id, pins, burned_pins, last_update, created_at, updated_at) FROM stdin;
    public          postgres    false    289   +?      l          0    50862    unregistered_data_segments 
   TABLE DATA           V   COPY public.unregistered_data_segments (id, data, created_at, updated_at) FROM stdin;
    public          postgres    false    281   H?      Q          0    50583    user_actions 
   TABLE DATA           ?   COPY public.user_actions (id, log_file, user_id, controller, action, instance_id, user_agent, geolocation, state, created_at, updated_at) FROM stdin;
    public          postgres    false    254   e?      ?          0    51312    user_categories 
   TABLE DATA           ?   COPY public.user_categories (id, name, description, access_doors, company_id, created_at, updated_at, send_invitation) FROM stdin;
    public          postgres    false    319   ??                0    50145    users 
   TABLE DATA           ?  COPY public.users (id, email, mobile, encrypted_password, user_info_type, user_info_id, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, rut, deporwin_person_id, acceptance_terms_covid, acceptance_date, gym, gym_address, from_franchise, user_company, company, validation_code, send_invitation, access_pin, physiotherapy_appointment, blocked, unlocked_on_platform) FROM stdin;
    public          postgres    false    203   ?      !          0    50173    users_roles 
   TABLE DATA           7   COPY public.users_roles (user_id, role_id) FROM stdin;
    public          postgres    false    206   ҍ      S          0    50595    voucher_redemptions 
   TABLE DATA           s   COPY public.voucher_redemptions (id, voucher_id, redemption_uuid, created_at, updated_at, location_id) FROM stdin;
    public          postgres    false    256   	?      7          0    50337    vouchers 
   TABLE DATA           ?   COPY public.vouchers (id, offer_id, client_id, redeem_count, is_reward, status, redemption_uuid, created_at, updated_at, agent_id, is_class) FROM stdin;
    public          postgres    false    228   &?      ?           0    0    access_alerts_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.access_alerts_id_seq', 1, false);
          public          postgres    false    269            ?           0    0    agents_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.agents_id_seq', 1, true);
          public          postgres    false    246            ?           0    0    agreement_admin_users_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.agreement_admin_users_id_seq', 1, false);
          public          postgres    false    265            ?           0    0 #   agreement_entries_quantities_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.agreement_entries_quantities_id_seq', 1, false);
          public          postgres    false    267            ?           0    0    articles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.articles_id_seq', 10, true);
          public          postgres    false    310            ?           0    0     authentication_signatures_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.authentication_signatures_id_seq', 111, true);
          public          postgres    false    241            ?           0    0    booking_offices_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.booking_offices_id_seq', 1, false);
          public          postgres    false    316            ?           0    0    bookings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bookings_id_seq', 1, false);
          public          postgres    false    296            ?           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 7, true);
          public          postgres    false    221            ?           0    0    client_segments_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.client_segments_id_seq', 1, false);
          public          postgres    false    274            ?           0    0    clients_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clients_id_seq', 24, true);
          public          postgres    false    207            ?           0    0    codes_packages_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.codes_packages_id_seq', 1, false);
          public          postgres    false    278            ?           0    0    companies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.companies_id_seq', 6, true);
          public          postgres    false    306            ?           0    0    company_infos_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.company_infos_id_seq', 1, false);
          public          postgres    false    320            ?           0    0    conditions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.conditions_id_seq', 1, false);
          public          postgres    false    229            ?           0    0    counters_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.counters_id_seq', 1, false);
          public          postgres    false    286            ?           0    0    deporwin_tokens_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.deporwin_tokens_id_seq', 1, false);
          public          postgres    false    276            ?           0    0    devices_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.devices_id_seq', 22, true);
          public          postgres    false    239            ?           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
          public          postgres    false    312            ?           0    0    favorites_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.favorites_id_seq', 1, false);
          public          postgres    false    225            ?           0    0    fingerprints_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fingerprints_id_seq', 1, false);
          public          postgres    false    290            ?           0    0    holidays_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.holidays_id_seq', 1, false);
          public          postgres    false    302            ?           0    0    inactive_times_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.inactive_times_id_seq', 1, false);
          public          postgres    false    304            ?           0    0    invitations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.invitations_id_seq', 1, false);
          public          postgres    false    257            ?           0    0    invited_clients_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.invited_clients_id_seq', 15, true);
          public          postgres    false    314            ?           0    0    invited_users_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.invited_users_id_seq', 1, false);
          public          postgres    false    259            ?           0    0    location_capacities_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.location_capacities_id_seq', 7, true);
          public          postgres    false    300            ?           0    0    location_offers_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.location_offers_id_seq', 1, false);
          public          postgres    false    250            ?           0    0    location_schedules_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.location_schedules_id_seq', 1, true);
          public          postgres    false    211            ?           0    0    locations_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.locations_id_seq', 2, true);
          public          postgres    false    209            ?           0    0    notifications_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);
          public          postgres    false    248            ?           0    0    object_categories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.object_categories_id_seq', 1, false);
          public          postgres    false    223            ?           0    0    object_tags_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.object_tags_id_seq', 1, false);
          public          postgres    false    219            ?           0    0    offer_photos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.offer_photos_id_seq', 1, false);
          public          postgres    false    243            ?           0    0    offers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.offers_id_seq', 1, false);
          public          postgres    false    215            ?           0    0    progresses_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.progresses_id_seq', 1, false);
          public          postgres    false    235            ?           0    0    push_messages_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.push_messages_id_seq', 1, false);
          public          postgres    false    251            ?           0    0    releases_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.releases_id_seq', 1, false);
          public          postgres    false    298            ?           0    0    requirements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.requirements_id_seq', 1, false);
          public          postgres    false    233            ?           0    0    rewards_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.rewards_id_seq', 1, false);
          public          postgres    false    231            ?           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          postgres    false    204            ?           0    0    scan_actions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scan_actions_id_seq', 1, false);
          public          postgres    false    263                        0    0    scan_devices_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scan_devices_id_seq', 1, false);
          public          postgres    false    261                       0    0    scan_firmwares_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.scan_firmwares_id_seq', 1, true);
          public          postgres    false    284                       0    0    segment_values_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.segment_values_id_seq', 1, false);
          public          postgres    false    272                       0    0    segmented_emails_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.segmented_emails_id_seq', 1, false);
          public          postgres    false    282                       0    0    segments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.segments_id_seq', 1, false);
          public          postgres    false    237                       0    0    shopping_center_outlets_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.shopping_center_outlets_id_seq', 1, false);
          public          postgres    false    213                       0    0    special_categories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.special_categories_id_seq', 1, true);
          public          postgres    false    308                       0    0    sublocation_schedules_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.sublocation_schedules_id_seq', 1, true);
          public          postgres    false    294                       0    0    sublocations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sublocations_id_seq', 1, true);
          public          postgres    false    292            	           0    0    tags_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tags_id_seq', 3, true);
          public          postgres    false    217            
           0    0    token_pins_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.token_pins_id_seq', 1, false);
          public          postgres    false    288                       0    0 !   unregistered_data_segments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.unregistered_data_segments_id_seq', 1, false);
          public          postgres    false    280                       0    0    user_actions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_actions_id_seq', 1, false);
          public          postgres    false    253                       0    0    user_categories_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.user_categories_id_seq', 3, true);
          public          postgres    false    318                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 19, true);
          public          postgres    false    202                       0    0    voucher_redemptions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.voucher_redemptions_id_seq', 1, false);
          public          postgres    false    255                       0    0    vouchers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.vouchers_id_seq', 1, false);
          public          postgres    false    227                       2606    50748     access_alerts access_alerts_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.access_alerts
    ADD CONSTRAINT access_alerts_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.access_alerts DROP CONSTRAINT access_alerts_pkey;
       public            postgres    false    270            ?           2606    50535    agents agents_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.agents
    ADD CONSTRAINT agents_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.agents DROP CONSTRAINT agents_pkey;
       public            postgres    false    247                       2606    50719 0   agreement_admin_users agreement_admin_users_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.agreement_admin_users
    ADD CONSTRAINT agreement_admin_users_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.agreement_admin_users DROP CONSTRAINT agreement_admin_users_pkey;
       public            postgres    false    266                       2606    50730 >   agreement_entries_quantities agreement_entries_quantities_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.agreement_entries_quantities
    ADD CONSTRAINT agreement_entries_quantities_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.agreement_entries_quantities DROP CONSTRAINT agreement_entries_quantities_pkey;
       public            postgres    false    268            ?           2606    50142 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            postgres    false    201            D           2606    51211    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    311            ?           2606    50485 8   authentication_signatures authentication_signatures_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.authentication_signatures
    ADD CONSTRAINT authentication_signatures_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.authentication_signatures DROP CONSTRAINT authentication_signatures_pkey;
       public            postgres    false    242            P           2606    51296 $   booking_offices booking_offices_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.booking_offices
    ADD CONSTRAINT booking_offices_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.booking_offices DROP CONSTRAINT booking_offices_pkey;
       public            postgres    false    317            2           2606    51022    bookings bookings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.bookings DROP CONSTRAINT bookings_pkey;
       public            postgres    false    297            ?           2606    50297    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    222                       2606    50785 $   client_segments client_segments_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.client_segments
    ADD CONSTRAINT client_segments_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.client_segments DROP CONSTRAINT client_segments_pkey;
       public            postgres    false    275            ?           2606    50190    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    208                       2606    50833 "   codes_packages codes_packages_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.codes_packages
    ADD CONSTRAINT codes_packages_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.codes_packages DROP CONSTRAINT codes_packages_pkey;
       public            postgres    false    279            @           2606    51124    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    307            W           2606    51346     company_infos company_infos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.company_infos
    ADD CONSTRAINT company_infos_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.company_infos DROP CONSTRAINT company_infos_pkey;
       public            postgres    false    321            ?           2606    50372    conditions conditions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.conditions
    ADD CONSTRAINT conditions_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.conditions DROP CONSTRAINT conditions_pkey;
       public            postgres    false    230            "           2606    50928    counters counters_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.counters
    ADD CONSTRAINT counters_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.counters DROP CONSTRAINT counters_pkey;
       public            postgres    false    287                       2606    50820 $   deporwin_tokens deporwin_tokens_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.deporwin_tokens
    ADD CONSTRAINT deporwin_tokens_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.deporwin_tokens DROP CONSTRAINT deporwin_tokens_pkey;
       public            postgres    false    277            ?           2606    50466    devices devices_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devices DROP CONSTRAINT devices_pkey;
       public            postgres    false    240            H           2606    51235    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    313            ?           2606    50327    favorites favorites_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT favorites_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.favorites DROP CONSTRAINT favorites_pkey;
       public            postgres    false    226            )           2606    50971    fingerprints fingerprints_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fingerprints
    ADD CONSTRAINT fingerprints_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fingerprints DROP CONSTRAINT fingerprints_pkey;
       public            postgres    false    291            ;           2606    51090    holidays holidays_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.holidays
    ADD CONSTRAINT holidays_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.holidays DROP CONSTRAINT holidays_pkey;
       public            postgres    false    303            =           2606    51107 "   inactive_times inactive_times_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.inactive_times
    ADD CONSTRAINT inactive_times_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.inactive_times DROP CONSTRAINT inactive_times_pkey;
       public            postgres    false    305            ?           2606    50636    invitations invitations_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT invitations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.invitations DROP CONSTRAINT invitations_pkey;
       public            postgres    false    258            N           2606    51264 $   invited_clients invited_clients_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.invited_clients
    ADD CONSTRAINT invited_clients_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.invited_clients DROP CONSTRAINT invited_clients_pkey;
       public            postgres    false    315            ?           2606    50654     invited_users invited_users_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.invited_users
    ADD CONSTRAINT invited_users_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.invited_users DROP CONSTRAINT invited_users_pkey;
       public            postgres    false    260            9           2606    51073 ,   location_capacities location_capacities_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.location_capacities
    ADD CONSTRAINT location_capacities_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.location_capacities DROP CONSTRAINT location_capacities_pkey;
       public            postgres    false    301            ?           2606    50560 $   location_offers location_offers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.location_offers
    ADD CONSTRAINT location_offers_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.location_offers DROP CONSTRAINT location_offers_pkey;
       public            postgres    false    245            ?           2606    50217 *   location_schedules location_schedules_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.location_schedules
    ADD CONSTRAINT location_schedules_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.location_schedules DROP CONSTRAINT location_schedules_pkey;
       public            postgres    false    212            ?           2606    50203    locations locations_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public            postgres    false    210            ?           2606    50554     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public            postgres    false    249            ?           2606    50309 (   object_categories object_categories_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.object_categories
    ADD CONSTRAINT object_categories_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.object_categories DROP CONSTRAINT object_categories_pkey;
       public            postgres    false    224            ?           2606    50275    object_tags object_tags_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.object_tags
    ADD CONSTRAINT object_tags_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.object_tags DROP CONSTRAINT object_tags_pkey;
       public            postgres    false    220            ?           2606    50502    offer_photos offer_photos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.offer_photos
    ADD CONSTRAINT offer_photos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.offer_photos DROP CONSTRAINT offer_photos_pkey;
       public            postgres    false    244            ?           2606    50250    offers offers_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.offers DROP CONSTRAINT offers_pkey;
       public            postgres    false    216            ?           2606    50423    progresses progresses_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.progresses
    ADD CONSTRAINT progresses_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.progresses DROP CONSTRAINT progresses_pkey;
       public            postgres    false    236            ?           2606    50579     push_messages push_messages_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.push_messages
    ADD CONSTRAINT push_messages_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.push_messages DROP CONSTRAINT push_messages_pkey;
       public            postgres    false    252            6           2606    51057    releases releases_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.releases
    ADD CONSTRAINT releases_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.releases DROP CONSTRAINT releases_pkey;
       public            postgres    false    299            ?           2606    50403    requirements requirements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT requirements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.requirements DROP CONSTRAINT requirements_pkey;
       public            postgres    false    234            ?           2606    50380    rewards rewards_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.rewards
    ADD CONSTRAINT rewards_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.rewards DROP CONSTRAINT rewards_pkey;
       public            postgres    false    232            ?           2606    50171    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    205                       2606    50688    scan_actions scan_actions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.scan_actions
    ADD CONSTRAINT scan_actions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.scan_actions DROP CONSTRAINT scan_actions_pkey;
       public            postgres    false    264            ?           2606    50671    scan_devices scan_devices_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.scan_devices
    ADD CONSTRAINT scan_devices_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.scan_devices DROP CONSTRAINT scan_devices_pkey;
       public            postgres    false    262                        2606    50901 "   scan_firmwares scan_firmwares_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.scan_firmwares
    ADD CONSTRAINT scan_firmwares_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.scan_firmwares DROP CONSTRAINT scan_firmwares_pkey;
       public            postgres    false    285            ?           2606    50134 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    200                       2606    50771 "   segment_values segment_values_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.segment_values
    ADD CONSTRAINT segment_values_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.segment_values DROP CONSTRAINT segment_values_pkey;
       public            postgres    false    273                       2606    50886 &   segmented_emails segmented_emails_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.segmented_emails
    ADD CONSTRAINT segmented_emails_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.segmented_emails DROP CONSTRAINT segmented_emails_pkey;
       public            postgres    false    283            ?           2606    50455    segments segments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.segments
    ADD CONSTRAINT segments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.segments DROP CONSTRAINT segments_pkey;
       public            postgres    false    238            ?           2606    50231 4   shopping_center_outlets shopping_center_outlets_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.shopping_center_outlets
    ADD CONSTRAINT shopping_center_outlets_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.shopping_center_outlets DROP CONSTRAINT shopping_center_outlets_pkey;
       public            postgres    false    214            B           2606    51199 *   special_categories special_categories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.special_categories
    ADD CONSTRAINT special_categories_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.special_categories DROP CONSTRAINT special_categories_pkey;
       public            postgres    false    309            0           2606    51005 0   sublocation_schedules sublocation_schedules_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.sublocation_schedules
    ADD CONSTRAINT sublocation_schedules_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.sublocation_schedules DROP CONSTRAINT sublocation_schedules_pkey;
       public            postgres    false    295            -           2606    50988    sublocations sublocations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sublocations
    ADD CONSTRAINT sublocations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.sublocations DROP CONSTRAINT sublocations_pkey;
       public            postgres    false    293            ?           2606    50264    tags tags_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tags DROP CONSTRAINT tags_pkey;
       public            postgres    false    218            '           2606    50954    token_pins token_pins_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.token_pins
    ADD CONSTRAINT token_pins_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.token_pins DROP CONSTRAINT token_pins_pkey;
       public            postgres    false    289                       2606    50871 :   unregistered_data_segments unregistered_data_segments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.unregistered_data_segments
    ADD CONSTRAINT unregistered_data_segments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.unregistered_data_segments DROP CONSTRAINT unregistered_data_segments_pkey;
       public            postgres    false    281            ?           2606    50591    user_actions user_actions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_actions
    ADD CONSTRAINT user_actions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_actions DROP CONSTRAINT user_actions_pkey;
       public            postgres    false    254            U           2606    51322 $   user_categories user_categories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_categories
    ADD CONSTRAINT user_categories_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.user_categories DROP CONSTRAINT user_categories_pkey;
       public            postgres    false    319            ?           2606    50156    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            ?           2606    50603 ,   voucher_redemptions voucher_redemptions_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.voucher_redemptions
    ADD CONSTRAINT voucher_redemptions_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.voucher_redemptions DROP CONSTRAINT voucher_redemptions_pkey;
       public            postgres    false    256            ?           2606    50348    vouchers vouchers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vouchers
    ADD CONSTRAINT vouchers_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vouchers DROP CONSTRAINT vouchers_pkey;
       public            postgres    false    228            ?           1259    50316    categorizable_type_category    INDEX     y   CREATE INDEX categorizable_type_category ON public.object_categories USING btree (categorizable_type, categorizable_id);
 /   DROP INDEX public.categorizable_type_category;
       public            postgres    false    224    224                       1259    50753 3   index_access_alerts_scan_actions_on_access_alert_id    INDEX     ?   CREATE INDEX index_access_alerts_scan_actions_on_access_alert_id ON public.access_alerts_scan_actions USING btree (access_alert_id);
 G   DROP INDEX public.index_access_alerts_scan_actions_on_access_alert_id;
       public            postgres    false    271                       1259    50752 2   index_access_alerts_scan_actions_on_scan_action_id    INDEX     ?   CREATE INDEX index_access_alerts_scan_actions_on_scan_action_id ON public.access_alerts_scan_actions USING btree (scan_action_id);
 F   DROP INDEX public.index_access_alerts_scan_actions_on_scan_action_id;
       public            postgres    false    271            ?           1259    50541    index_agents_on_location_id    INDEX     U   CREATE INDEX index_agents_on_location_id ON public.agents USING btree (location_id);
 /   DROP INDEX public.index_agents_on_location_id;
       public            postgres    false    247            	           1259    50736 =   index_agreement_entries_quantities_on_agreement_admin_user_id    INDEX     ?   CREATE INDEX index_agreement_entries_quantities_on_agreement_admin_user_id ON public.agreement_entries_quantities USING btree (agreement_admin_user_id);
 Q   DROP INDEX public.index_agreement_entries_quantities_on_agreement_admin_user_id;
       public            postgres    false    268            E           1259    51223    index_articles_on_location_id    INDEX     Y   CREATE INDEX index_articles_on_location_id ON public.articles USING btree (location_id);
 1   DROP INDEX public.index_articles_on_location_id;
       public            postgres    false    311            F           1259    51222 %   index_articles_on_special_category_id    INDEX     i   CREATE INDEX index_articles_on_special_category_id ON public.articles USING btree (special_category_id);
 9   DROP INDEX public.index_articles_on_special_category_id;
       public            postgres    false    311            ?           1259    50491 ,   index_authentication_signatures_on_device_id    INDEX     w   CREATE INDEX index_authentication_signatures_on_device_id ON public.authentication_signatures USING btree (device_id);
 @   DROP INDEX public.index_authentication_signatures_on_device_id;
       public            postgres    false    242            Q           1259    51308 $   index_booking_offices_on_location_id    INDEX     g   CREATE INDEX index_booking_offices_on_location_id ON public.booking_offices USING btree (location_id);
 8   DROP INDEX public.index_booking_offices_on_location_id;
       public            postgres    false    317            R           1259    51307     index_booking_offices_on_user_id    INDEX     _   CREATE INDEX index_booking_offices_on_user_id ON public.booking_offices USING btree (user_id);
 4   DROP INDEX public.index_booking_offices_on_user_id;
       public            postgres    false    317            3           1259    51034     index_bookings_on_sublocation_id    INDEX     _   CREATE INDEX index_bookings_on_sublocation_id ON public.bookings USING btree (sublocation_id);
 4   DROP INDEX public.index_bookings_on_sublocation_id;
       public            postgres    false    297            4           1259    51033    index_bookings_on_user_id    INDEX     Q   CREATE INDEX index_bookings_on_user_id ON public.bookings USING btree (user_id);
 -   DROP INDEX public.index_bookings_on_user_id;
       public            postgres    false    297            ?           1259    51248    index_categories_on_company_id    INDEX     [   CREATE INDEX index_categories_on_company_id ON public.categories USING btree (company_id);
 2   DROP INDEX public.index_categories_on_company_id;
       public            postgres    false    222            ?           1259    50298    index_categories_on_name    INDEX     V   CREATE UNIQUE INDEX index_categories_on_name ON public.categories USING btree (name);
 ,   DROP INDEX public.index_categories_on_name;
       public            postgres    false    222                       1259    50797 "   index_client_segments_on_client_id    INDEX     c   CREATE INDEX index_client_segments_on_client_id ON public.client_segments USING btree (client_id);
 6   DROP INDEX public.index_client_segments_on_client_id;
       public            postgres    false    275                       1259    50796 )   index_client_segments_on_segment_value_id    INDEX     q   CREATE INDEX index_client_segments_on_segment_value_id ON public.client_segments USING btree (segment_value_id);
 =   DROP INDEX public.index_client_segments_on_segment_value_id;
       public            postgres    false    275                       1259    50798 7   index_client_segments_on_segment_value_id_and_client_id    INDEX     ?   CREATE INDEX index_client_segments_on_segment_value_id_and_client_id ON public.client_segments USING btree (segment_value_id, client_id);
 K   DROP INDEX public.index_client_segments_on_segment_value_id_and_client_id;
       public            postgres    false    275    275            ?           1259    50619    index_clients_on_location_id    INDEX     W   CREATE INDEX index_clients_on_location_id ON public.clients USING btree (location_id);
 0   DROP INDEX public.index_clients_on_location_id;
       public            postgres    false    208            ?           1259    51329 !   index_clients_on_user_category_id    INDEX     a   CREATE INDEX index_clients_on_user_category_id ON public.clients USING btree (user_category_id);
 5   DROP INDEX public.index_clients_on_user_category_id;
       public            postgres    false    208                       1259    50839     index_codes_packages_on_offer_id    INDEX     _   CREATE INDEX index_codes_packages_on_offer_id ON public.codes_packages USING btree (offer_id);
 4   DROP INDEX public.index_codes_packages_on_offer_id;
       public            postgres    false    279            X           1259    51352 !   index_company_infos_on_company_id    INDEX     a   CREATE INDEX index_company_infos_on_company_id ON public.company_infos USING btree (company_id);
 5   DROP INDEX public.index_company_infos_on_company_id;
       public            postgres    false    321            ?           1259    51143    index_conditions_on_company_id    INDEX     [   CREATE INDEX index_conditions_on_company_id ON public.conditions USING btree (company_id);
 2   DROP INDEX public.index_conditions_on_company_id;
       public            postgres    false    230            #           1259    50940    index_counters_on_location_id    INDEX     Y   CREATE INDEX index_counters_on_location_id ON public.counters USING btree (location_id);
 1   DROP INDEX public.index_counters_on_location_id;
       public            postgres    false    287            $           1259    50939    index_counters_on_user_id    INDEX     Q   CREATE INDEX index_counters_on_user_id ON public.counters USING btree (user_id);
 -   DROP INDEX public.index_counters_on_user_id;
       public            postgres    false    287            ?           1259    50473    index_devices_on_signature    INDEX     S   CREATE INDEX index_devices_on_signature ON public.devices USING btree (signature);
 .   DROP INDEX public.index_devices_on_signature;
       public            postgres    false    240            ?           1259    50472    index_devices_on_user_id    INDEX     O   CREATE INDEX index_devices_on_user_id ON public.devices USING btree (user_id);
 ,   DROP INDEX public.index_devices_on_user_id;
       public            postgres    false    240            ?           1259    50474 &   index_devices_on_user_id_and_signature    INDEX     h   CREATE INDEX index_devices_on_user_id_and_signature ON public.devices USING btree (user_id, signature);
 :   DROP INDEX public.index_devices_on_user_id_and_signature;
       public            postgres    false    240    240            I           1259    51247    index_events_on_location_id    INDEX     U   CREATE INDEX index_events_on_location_id ON public.events USING btree (location_id);
 /   DROP INDEX public.index_events_on_location_id;
       public            postgres    false    313            J           1259    51246 #   index_events_on_special_category_id    INDEX     e   CREATE INDEX index_events_on_special_category_id ON public.events USING btree (special_category_id);
 7   DROP INDEX public.index_events_on_special_category_id;
       public            postgres    false    313            ?           1259    50333    index_favorites_on_client_id    INDEX     W   CREATE INDEX index_favorites_on_client_id ON public.favorites USING btree (client_id);
 0   DROP INDEX public.index_favorites_on_client_id;
       public            postgres    false    226            ?           1259    50334 6   index_favorites_on_favoritable_type_and_favoritable_id    INDEX     ?   CREATE INDEX index_favorites_on_favoritable_type_and_favoritable_id ON public.favorites USING btree (favoritable_type, favoritable_id);
 J   DROP INDEX public.index_favorites_on_favoritable_type_and_favoritable_id;
       public            postgres    false    226    226            *           1259    50977    index_fingerprints_on_user_id    INDEX     Y   CREATE INDEX index_fingerprints_on_user_id ON public.fingerprints USING btree (user_id);
 1   DROP INDEX public.index_fingerprints_on_user_id;
       public            postgres    false    291            >           1259    51113 &   index_inactive_times_on_sublocation_id    INDEX     k   CREATE INDEX index_inactive_times_on_sublocation_id ON public.inactive_times USING btree (sublocation_id);
 :   DROP INDEX public.index_inactive_times_on_sublocation_id;
       public            postgres    false    305            ?           1259    50642    index_invitations_on_user_id    INDEX     W   CREATE INDEX index_invitations_on_user_id ON public.invitations USING btree (user_id);
 0   DROP INDEX public.index_invitations_on_user_id;
       public            postgres    false    258            K           1259    51276 $   index_invited_clients_on_location_id    INDEX     g   CREATE INDEX index_invited_clients_on_location_id ON public.invited_clients USING btree (location_id);
 8   DROP INDEX public.index_invited_clients_on_location_id;
       public            postgres    false    315            L           1259    51275     index_invited_clients_on_user_id    INDEX     _   CREATE INDEX index_invited_clients_on_user_id ON public.invited_clients USING btree (user_id);
 4   DROP INDEX public.index_invited_clients_on_user_id;
       public            postgres    false    315            ?           1259    50660 $   index_invited_users_on_invitation_id    INDEX     g   CREATE INDEX index_invited_users_on_invitation_id ON public.invited_users USING btree (invitation_id);
 8   DROP INDEX public.index_invited_users_on_invitation_id;
       public            postgres    false    260            7           1259    51079 (   index_location_capacities_on_location_id    INDEX     o   CREATE INDEX index_location_capacities_on_location_id ON public.location_capacities USING btree (location_id);
 <   DROP INDEX public.index_location_capacities_on_location_id;
       public            postgres    false    301            ?           1259    50522 $   index_location_offers_on_location_id    INDEX     g   CREATE INDEX index_location_offers_on_location_id ON public.location_offers USING btree (location_id);
 8   DROP INDEX public.index_location_offers_on_location_id;
       public            postgres    false    245            ?           1259    50524 1   index_location_offers_on_location_id_and_offer_id    INDEX     ~   CREATE INDEX index_location_offers_on_location_id_and_offer_id ON public.location_offers USING btree (location_id, offer_id);
 E   DROP INDEX public.index_location_offers_on_location_id_and_offer_id;
       public            postgres    false    245    245            ?           1259    50523 !   index_location_offers_on_offer_id    INDEX     a   CREATE INDEX index_location_offers_on_offer_id ON public.location_offers USING btree (offer_id);
 5   DROP INDEX public.index_location_offers_on_offer_id;
       public            postgres    false    245            ?           1259    50223 '   index_location_schedules_on_location_id    INDEX     m   CREATE INDEX index_location_schedules_on_location_id ON public.location_schedules USING btree (location_id);
 ;   DROP INDEX public.index_location_schedules_on_location_id;
       public            postgres    false    212            ?           1259    51125    index_locations_on_company_id    INDEX     Y   CREATE INDEX index_locations_on_company_id ON public.locations USING btree (company_id);
 1   DROP INDEX public.index_locations_on_company_id;
       public            postgres    false    210            ?           1259    50204 )   index_locations_on_latitude_and_longitude    INDEX     n   CREATE INDEX index_locations_on_latitude_and_longitude ON public.locations USING btree (latitude, longitude);
 =   DROP INDEX public.index_locations_on_latitude_and_longitude;
       public            postgres    false    210    210            ?           1259    50800 '   index_locations_on_location_category_id    INDEX     m   CREATE INDEX index_locations_on_location_category_id ON public.locations USING btree (location_category_id);
 ;   DROP INDEX public.index_locations_on_location_category_id;
       public            postgres    false    210            ?           1259    50555     index_notifications_on_client_id    INDEX     _   CREATE INDEX index_notifications_on_client_id ON public.notifications USING btree (client_id);
 4   DROP INDEX public.index_notifications_on_client_id;
       public            postgres    false    249            ?           1259    50315 &   index_object_categories_on_category_id    INDEX     k   CREATE INDEX index_object_categories_on_category_id ON public.object_categories USING btree (category_id);
 :   DROP INDEX public.index_object_categories_on_category_id;
       public            postgres    false    224            ?           1259    50281    index_object_tags_on_tag_id    INDEX     U   CREATE INDEX index_object_tags_on_tag_id ON public.object_tags USING btree (tag_id);
 /   DROP INDEX public.index_object_tags_on_tag_id;
       public            postgres    false    220            ?           1259    50282 2   index_object_tags_on_taggable_type_and_taggable_id    INDEX     ?   CREATE INDEX index_object_tags_on_taggable_type_and_taggable_id ON public.object_tags USING btree (taggable_type, taggable_id);
 F   DROP INDEX public.index_object_tags_on_taggable_type_and_taggable_id;
       public            postgres    false    220    220            ?           1259    50508    index_offer_photos_on_offer_id    INDEX     [   CREATE INDEX index_offer_photos_on_offer_id ON public.offer_photos USING btree (offer_id);
 2   DROP INDEX public.index_offer_photos_on_offer_id;
       public            postgres    false    244            ?           1259    51131    index_offers_on_company_id    INDEX     S   CREATE INDEX index_offers_on_company_id ON public.offers USING btree (company_id);
 .   DROP INDEX public.index_offers_on_company_id;
       public            postgres    false    216            ?           1259    50439    index_progresses_on_client_id    INDEX     Y   CREATE INDEX index_progresses_on_client_id ON public.progresses USING btree (client_id);
 1   DROP INDEX public.index_progresses_on_client_id;
       public            postgres    false    236            ?           1259    50442 >   index_progresses_on_client_id_and_requirement_id_and_reward_id    INDEX     ?   CREATE UNIQUE INDEX index_progresses_on_client_id_and_requirement_id_and_reward_id ON public.progresses USING btree (client_id, requirement_id, reward_id);
 R   DROP INDEX public.index_progresses_on_client_id_and_requirement_id_and_reward_id;
       public            postgres    false    236    236    236            ?           1259    50440 "   index_progresses_on_requirement_id    INDEX     c   CREATE INDEX index_progresses_on_requirement_id ON public.progresses USING btree (requirement_id);
 6   DROP INDEX public.index_progresses_on_requirement_id;
       public            postgres    false    236            ?           1259    50441    index_progresses_on_reward_id    INDEX     Y   CREATE INDEX index_progresses_on_reward_id ON public.progresses USING btree (reward_id);
 1   DROP INDEX public.index_progresses_on_reward_id;
       public            postgres    false    236            ?           1259    50410 $   index_requirements_on_attribute_json    INDEX     g   CREATE INDEX index_requirements_on_attribute_json ON public.requirements USING btree (attribute_json);
 8   DROP INDEX public.index_requirements_on_attribute_json;
       public            postgres    false    234            ?           1259    50409 "   index_requirements_on_condition_id    INDEX     c   CREATE INDEX index_requirements_on_condition_id ON public.requirements USING btree (condition_id);
 6   DROP INDEX public.index_requirements_on_condition_id;
       public            postgres    false    234            ?           1259    50392    index_rewards_on_condition_id    INDEX     Y   CREATE INDEX index_rewards_on_condition_id ON public.rewards USING btree (condition_id);
 1   DROP INDEX public.index_rewards_on_condition_id;
       public            postgres    false    232            ?           1259    50391    index_rewards_on_offer_id    INDEX     Q   CREATE INDEX index_rewards_on_offer_id ON public.rewards USING btree (offer_id);
 -   DROP INDEX public.index_rewards_on_offer_id;
       public            postgres    false    232            ?           1259    50178 5   index_roles_on_name_and_resource_type_and_resource_id    INDEX     ?   CREATE INDEX index_roles_on_name_and_resource_type_and_resource_id ON public.roles USING btree (name, resource_type, resource_id);
 I   DROP INDEX public.index_roles_on_name_and_resource_type_and_resource_id;
       public            postgres    false    205    205    205            ?           1259    50172 ,   index_roles_on_resource_type_and_resource_id    INDEX     t   CREATE INDEX index_roles_on_resource_type_and_resource_id ON public.roles USING btree (resource_type, resource_id);
 @   DROP INDEX public.index_roles_on_resource_type_and_resource_id;
       public            postgres    false    205    205            ?           1259    51040     index_scan_actions_on_booking_id    INDEX     _   CREATE INDEX index_scan_actions_on_booking_id ON public.scan_actions USING btree (booking_id);
 4   DROP INDEX public.index_scan_actions_on_booking_id;
       public            postgres    false    264            ?           1259    51277 '   index_scan_actions_on_invited_client_id    INDEX     m   CREATE INDEX index_scan_actions_on_invited_client_id ON public.scan_actions USING btree (invited_client_id);
 ;   DROP INDEX public.index_scan_actions_on_invited_client_id;
       public            postgres    false    264            ?           1259    50705 %   index_scan_actions_on_invited_user_id    INDEX     i   CREATE INDEX index_scan_actions_on_invited_user_id ON public.scan_actions USING btree (invited_user_id);
 9   DROP INDEX public.index_scan_actions_on_invited_user_id;
       public            postgres    false    264                        1259    50754 &   index_scan_actions_on_previous_scan_id    INDEX     k   CREATE INDEX index_scan_actions_on_previous_scan_id ON public.scan_actions USING btree (previous_scan_id);
 :   DROP INDEX public.index_scan_actions_on_previous_scan_id;
       public            postgres    false    264                       1259    50706 $   index_scan_actions_on_scan_device_id    INDEX     g   CREATE INDEX index_scan_actions_on_scan_device_id ON public.scan_actions USING btree (scan_device_id);
 8   DROP INDEX public.index_scan_actions_on_scan_device_id;
       public            postgres    false    264                       1259    50704    index_scan_actions_on_user_id    INDEX     Y   CREATE INDEX index_scan_actions_on_user_id ON public.scan_actions USING btree (user_id);
 1   DROP INDEX public.index_scan_actions_on_user_id;
       public            postgres    false    264            ?           1259    50677 !   index_scan_devices_on_location_id    INDEX     a   CREATE INDEX index_scan_devices_on_location_id ON public.scan_devices USING btree (location_id);
 5   DROP INDEX public.index_scan_devices_on_location_id;
       public            postgres    false    262            ?           1259    50903 '   index_scan_devices_on_stable_version_id    INDEX     m   CREATE INDEX index_scan_devices_on_stable_version_id ON public.scan_devices USING btree (stable_version_id);
 ;   DROP INDEX public.index_scan_devices_on_stable_version_id;
       public            postgres    false    262            ?           1259    50910 (   index_scan_devices_on_updated_version_id    INDEX     o   CREATE INDEX index_scan_devices_on_updated_version_id ON public.scan_devices USING btree (updated_version_id);
 <   DROP INDEX public.index_scan_devices_on_updated_version_id;
       public            postgres    false    262            ?           1259    50708    index_scan_devices_on_uuid    INDEX     Z   CREATE UNIQUE INDEX index_scan_devices_on_uuid ON public.scan_devices USING btree (uuid);
 .   DROP INDEX public.index_scan_devices_on_uuid;
       public            postgres    false    262                       1259    50777 "   index_segment_values_on_segment_id    INDEX     c   CREATE INDEX index_segment_values_on_segment_id ON public.segment_values USING btree (segment_id);
 6   DROP INDEX public.index_segment_values_on_segment_id;
       public            postgres    false    273            ?           1259    51137    index_segments_on_company_id    INDEX     W   CREATE INDEX index_segments_on_company_id ON public.segments USING btree (company_id);
 0   DROP INDEX public.index_segments_on_company_id;
       public            postgres    false    238            ?           1259    50233 *   index_shopping_center_outlets_on_outlet_id    INDEX     s   CREATE INDEX index_shopping_center_outlets_on_outlet_id ON public.shopping_center_outlets USING btree (outlet_id);
 >   DROP INDEX public.index_shopping_center_outlets_on_outlet_id;
       public            postgres    false    214            ?           1259    50232 3   index_shopping_center_outlets_on_shopping_center_id    INDEX     ?   CREATE INDEX index_shopping_center_outlets_on_shopping_center_id ON public.shopping_center_outlets USING btree (shopping_center_id);
 G   DROP INDEX public.index_shopping_center_outlets_on_shopping_center_id;
       public            postgres    false    214            .           1259    51011 -   index_sublocation_schedules_on_sublocation_id    INDEX     y   CREATE INDEX index_sublocation_schedules_on_sublocation_id ON public.sublocation_schedules USING btree (sublocation_id);
 A   DROP INDEX public.index_sublocation_schedules_on_sublocation_id;
       public            postgres    false    295            +           1259    50994 !   index_sublocations_on_location_id    INDEX     a   CREATE INDEX index_sublocations_on_location_id ON public.sublocations USING btree (location_id);
 5   DROP INDEX public.index_sublocations_on_location_id;
       public            postgres    false    293            %           1259    50960    index_token_pins_on_user_id    INDEX     U   CREATE INDEX index_token_pins_on_user_id ON public.token_pins USING btree (user_id);
 /   DROP INDEX public.index_token_pins_on_user_id;
       public            postgres    false    289            S           1259    51328 #   index_user_categories_on_company_id    INDEX     e   CREATE INDEX index_user_categories_on_company_id ON public.user_categories USING btree (company_id);
 7   DROP INDEX public.index_user_categories_on_company_id;
       public            postgres    false    319            ?           1259    50160 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public            postgres    false    203            ?           1259    50157 .   index_users_on_user_info_type_and_user_info_id    INDEX     x   CREATE INDEX index_users_on_user_info_type_and_user_info_id ON public.users USING btree (user_info_type, user_info_id);
 B   DROP INDEX public.index_users_on_user_info_type_and_user_info_id;
       public            postgres    false    203    203            ?           1259    50177    index_users_roles_on_role_id    INDEX     W   CREATE INDEX index_users_roles_on_role_id ON public.users_roles USING btree (role_id);
 0   DROP INDEX public.index_users_roles_on_role_id;
       public            postgres    false    206            ?           1259    50176    index_users_roles_on_user_id    INDEX     W   CREATE INDEX index_users_roles_on_user_id ON public.users_roles USING btree (user_id);
 0   DROP INDEX public.index_users_roles_on_user_id;
       public            postgres    false    206            ?           1259    50179 (   index_users_roles_on_user_id_and_role_id    INDEX     l   CREATE INDEX index_users_roles_on_user_id_and_role_id ON public.users_roles USING btree (user_id, role_id);
 <   DROP INDEX public.index_users_roles_on_user_id_and_role_id;
       public            postgres    false    206    206            ?           1259    50610 (   index_voucher_redemptions_on_location_id    INDEX     o   CREATE INDEX index_voucher_redemptions_on_location_id ON public.voucher_redemptions USING btree (location_id);
 <   DROP INDEX public.index_voucher_redemptions_on_location_id;
       public            postgres    false    256            ?           1259    50609 '   index_voucher_redemptions_on_voucher_id    INDEX     m   CREATE INDEX index_voucher_redemptions_on_voucher_id ON public.voucher_redemptions USING btree (voucher_id);
 ;   DROP INDEX public.index_voucher_redemptions_on_voucher_id;
       public            postgres    false    256            ?           1259    50542    index_vouchers_on_agent_id    INDEX     S   CREATE INDEX index_vouchers_on_agent_id ON public.vouchers USING btree (agent_id);
 .   DROP INDEX public.index_vouchers_on_agent_id;
       public            postgres    false    228            ?           1259    50360    index_vouchers_on_client_id    INDEX     U   CREATE INDEX index_vouchers_on_client_id ON public.vouchers USING btree (client_id);
 /   DROP INDEX public.index_vouchers_on_client_id;
       public            postgres    false    228            ?           1259    50359    index_vouchers_on_offer_id    INDEX     S   CREATE INDEX index_vouchers_on_offer_id ON public.vouchers USING btree (offer_id);
 .   DROP INDEX public.index_vouchers_on_offer_id;
       public            postgres    false    228            ?           2606    51265 #   invited_clients fk_rails_00e428a753    FK CONSTRAINT     ?   ALTER TABLE ONLY public.invited_clients
    ADD CONSTRAINT fk_rails_00e428a753 FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.invited_clients DROP CONSTRAINT fk_rails_00e428a753;
       public          postgres    false    3469    203    315            ?           2606    50934    counters fk_rails_0e72841a96    FK CONSTRAINT     ?   ALTER TABLE ONLY public.counters
    ADD CONSTRAINT fk_rails_0e72841a96 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 F   ALTER TABLE ONLY public.counters DROP CONSTRAINT fk_rails_0e72841a96;
       public          postgres    false    287    210    3485            r           2606    50536    agents fk_rails_0ffb3fef89    FK CONSTRAINT     ?   ALTER TABLE ONLY public.agents
    ADD CONSTRAINT fk_rails_0ffb3fef89 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 D   ALTER TABLE ONLY public.agents DROP CONSTRAINT fk_rails_0ffb3fef89;
       public          postgres    false    3485    210    247            z           2606    50689     scan_actions fk_rails_1093475ac8    FK CONSTRAINT        ALTER TABLE ONLY public.scan_actions
    ADD CONSTRAINT fk_rails_1093475ac8 FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.scan_actions DROP CONSTRAINT fk_rails_1093475ac8;
       public          postgres    false    3469    203    264            a           2606    50310 %   object_categories fk_rails_12f836b8d0    FK CONSTRAINT     ?   ALTER TABLE ONLY public.object_categories
    ADD CONSTRAINT fk_rails_12f836b8d0 FOREIGN KEY (category_id) REFERENCES public.categories(id);
 O   ALTER TABLE ONLY public.object_categories DROP CONSTRAINT fk_rails_12f836b8d0;
       public          postgres    false    222    224    3503            g           2606    50386    rewards fk_rails_16ae9a0797    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rewards
    ADD CONSTRAINT fk_rails_16ae9a0797 FOREIGN KEY (condition_id) REFERENCES public.conditions(id);
 E   ALTER TABLE ONLY public.rewards DROP CONSTRAINT fk_rails_16ae9a0797;
       public          postgres    false    3520    230    232            o           2606    50503     offer_photos fk_rails_19b556db05    FK CONSTRAINT     ?   ALTER TABLE ONLY public.offer_photos
    ADD CONSTRAINT fk_rails_19b556db05 FOREIGN KEY (offer_id) REFERENCES public.offers(id);
 J   ALTER TABLE ONLY public.offer_photos DROP CONSTRAINT fk_rails_19b556db05;
       public          postgres    false    3495    244    216            ?           2606    50731 0   agreement_entries_quantities fk_rails_1ddce2a3b3    FK CONSTRAINT     ?   ALTER TABLE ONLY public.agreement_entries_quantities
    ADD CONSTRAINT fk_rails_1ddce2a3b3 FOREIGN KEY (agreement_admin_user_id) REFERENCES public.agreement_admin_users(id);
 Z   ALTER TABLE ONLY public.agreement_entries_quantities DROP CONSTRAINT fk_rails_1ddce2a3b3;
       public          postgres    false    3590    266    268            ?           2606    51074 '   location_capacities fk_rails_1e6dd115e9    FK CONSTRAINT     ?   ALTER TABLE ONLY public.location_capacities
    ADD CONSTRAINT fk_rails_1e6dd115e9 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 Q   ALTER TABLE ONLY public.location_capacities DROP CONSTRAINT fk_rails_1e6dd115e9;
       public          postgres    false    301    3485    210            p           2606    50512 #   location_offers fk_rails_245b8b45a1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.location_offers
    ADD CONSTRAINT fk_rails_245b8b45a1 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 M   ALTER TABLE ONLY public.location_offers DROP CONSTRAINT fk_rails_245b8b45a1;
       public          postgres    false    3485    245    210            x           2606    50904     scan_devices fk_rails_24665386c7    FK CONSTRAINT     ?   ALTER TABLE ONLY public.scan_devices
    ADD CONSTRAINT fk_rails_24665386c7 FOREIGN KEY (stable_version_id) REFERENCES public.scan_firmwares(id);
 J   ALTER TABLE ONLY public.scan_devices DROP CONSTRAINT fk_rails_24665386c7;
       public          postgres    false    3616    285    262            i           2606    50424    progresses fk_rails_27dcd15290    FK CONSTRAINT     ?   ALTER TABLE ONLY public.progresses
    ADD CONSTRAINT fk_rails_27dcd15290 FOREIGN KEY (client_id) REFERENCES public.clients(id);
 H   ALTER TABLE ONLY public.progresses DROP CONSTRAINT fk_rails_27dcd15290;
       public          postgres    false    3478    208    236            ?           2606    51006 )   sublocation_schedules fk_rails_2a18495285    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sublocation_schedules
    ADD CONSTRAINT fk_rails_2a18495285 FOREIGN KEY (sublocation_id) REFERENCES public.sublocations(id);
 S   ALTER TABLE ONLY public.sublocation_schedules DROP CONSTRAINT fk_rails_2a18495285;
       public          postgres    false    3629    295    293            f           2606    50381    rewards fk_rails_3169e903ef    FK CONSTRAINT     |   ALTER TABLE ONLY public.rewards
    ADD CONSTRAINT fk_rails_3169e903ef FOREIGN KEY (offer_id) REFERENCES public.offers(id);
 E   ALTER TABLE ONLY public.rewards DROP CONSTRAINT fk_rails_3169e903ef;
       public          postgres    false    3495    232    216            d           2606    50354    vouchers fk_rails_35b9b0ce9d    FK CONSTRAINT        ALTER TABLE ONLY public.vouchers
    ADD CONSTRAINT fk_rails_35b9b0ce9d FOREIGN KEY (client_id) REFERENCES public.clients(id);
 F   ALTER TABLE ONLY public.vouchers DROP CONSTRAINT fk_rails_35b9b0ce9d;
       public          postgres    false    208    3478    228            ?           2606    51241    events fk_rails_3d0bd29ec6    FK CONSTRAINT     ?   ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_rails_3d0bd29ec6 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 D   ALTER TABLE ONLY public.events DROP CONSTRAINT fk_rails_3d0bd29ec6;
       public          postgres    false    210    3485    313            m           2606    50467    devices fk_rails_410b63ef65    FK CONSTRAINT     z   ALTER TABLE ONLY public.devices
    ADD CONSTRAINT fk_rails_410b63ef65 FOREIGN KEY (user_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.devices DROP CONSTRAINT fk_rails_410b63ef65;
       public          postgres    false    3469    240    203            Z           2606    51330    clients fk_rails_44af8178f7    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT fk_rails_44af8178f7 FOREIGN KEY (user_category_id) REFERENCES public.user_categories(id);
 E   ALTER TABLE ONLY public.clients DROP CONSTRAINT fk_rails_44af8178f7;
       public          postgres    false    208    3669    319            ?           2606    51108 "   inactive_times fk_rails_4541abbef1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inactive_times
    ADD CONSTRAINT fk_rails_4541abbef1 FOREIGN KEY (sublocation_id) REFERENCES public.sublocations(id);
 L   ALTER TABLE ONLY public.inactive_times DROP CONSTRAINT fk_rails_4541abbef1;
       public          postgres    false    305    3629    293            e           2606    51144    conditions fk_rails_4c062d685d    FK CONSTRAINT     ?   ALTER TABLE ONLY public.conditions
    ADD CONSTRAINT fk_rails_4c062d685d FOREIGN KEY (company_id) REFERENCES public.companies(id);
 H   ALTER TABLE ONLY public.conditions DROP CONSTRAINT fk_rails_4c062d685d;
       public          postgres    false    307    3648    230            q           2606    50517 #   location_offers fk_rails_5504ad696b    FK CONSTRAINT     ?   ALTER TABLE ONLY public.location_offers
    ADD CONSTRAINT fk_rails_5504ad696b FOREIGN KEY (offer_id) REFERENCES public.offers(id);
 M   ALTER TABLE ONLY public.location_offers DROP CONSTRAINT fk_rails_5504ad696b;
       public          postgres    false    245    3495    216            `           2606    51249    categories fk_rails_5740af41d8    FK CONSTRAINT     ?   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT fk_rails_5740af41d8 FOREIGN KEY (company_id) REFERENCES public.companies(id);
 H   ALTER TABLE ONLY public.categories DROP CONSTRAINT fk_rails_5740af41d8;
       public          postgres    false    222    3648    307            ]           2606    50218 &   location_schedules fk_rails_57ddedb342    FK CONSTRAINT     ?   ALTER TABLE ONLY public.location_schedules
    ADD CONSTRAINT fk_rails_57ddedb342 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 P   ALTER TABLE ONLY public.location_schedules DROP CONSTRAINT fk_rails_57ddedb342;
       public          postgres    false    3485    212    210            ?           2606    50791 #   client_segments fk_rails_5811b56e94    FK CONSTRAINT     ?   ALTER TABLE ONLY public.client_segments
    ADD CONSTRAINT fk_rails_5811b56e94 FOREIGN KEY (client_id) REFERENCES public.clients(id);
 M   ALTER TABLE ONLY public.client_segments DROP CONSTRAINT fk_rails_5811b56e94;
       public          postgres    false    275    3478    208            ?           2606    51217    articles fk_rails_5c439af3a6    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_rails_5c439af3a6 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 F   ALTER TABLE ONLY public.articles DROP CONSTRAINT fk_rails_5c439af3a6;
       public          postgres    false    210    311    3485            l           2606    51138    segments fk_rails_5d63343bc6    FK CONSTRAINT     ?   ALTER TABLE ONLY public.segments
    ADD CONSTRAINT fk_rails_5d63343bc6 FOREIGN KEY (company_id) REFERENCES public.companies(id);
 F   ALTER TABLE ONLY public.segments DROP CONSTRAINT fk_rails_5d63343bc6;
       public          postgres    false    3648    238    307            ?           2606    51323 #   user_categories fk_rails_69faa69da3    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_categories
    ADD CONSTRAINT fk_rails_69faa69da3 FOREIGN KEY (company_id) REFERENCES public.companies(id);
 M   ALTER TABLE ONLY public.user_categories DROP CONSTRAINT fk_rails_69faa69da3;
       public          postgres    false    307    319    3648            s           2606    50604 '   voucher_redemptions fk_rails_740df2069f    FK CONSTRAINT     ?   ALTER TABLE ONLY public.voucher_redemptions
    ADD CONSTRAINT fk_rails_740df2069f FOREIGN KEY (voucher_id) REFERENCES public.vouchers(id);
 Q   ALTER TABLE ONLY public.voucher_redemptions DROP CONSTRAINT fk_rails_740df2069f;
       public          postgres    false    256    3518    228            c           2606    50349    vouchers fk_rails_7505ef8ec6    FK CONSTRAINT     }   ALTER TABLE ONLY public.vouchers
    ADD CONSTRAINT fk_rails_7505ef8ec6 FOREIGN KEY (offer_id) REFERENCES public.offers(id);
 F   ALTER TABLE ONLY public.vouchers DROP CONSTRAINT fk_rails_7505ef8ec6;
       public          postgres    false    216    228    3495            ?           2606    51302 #   booking_offices fk_rails_762931fe71    FK CONSTRAINT     ?   ALTER TABLE ONLY public.booking_offices
    ADD CONSTRAINT fk_rails_762931fe71 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 M   ALTER TABLE ONLY public.booking_offices DROP CONSTRAINT fk_rails_762931fe71;
       public          postgres    false    3485    317    210            y           2606    50911     scan_devices fk_rails_77ebd9fffa    FK CONSTRAINT     ?   ALTER TABLE ONLY public.scan_devices
    ADD CONSTRAINT fk_rails_77ebd9fffa FOREIGN KEY (updated_version_id) REFERENCES public.scan_firmwares(id);
 J   ALTER TABLE ONLY public.scan_devices DROP CONSTRAINT fk_rails_77ebd9fffa;
       public          postgres    false    3616    285    262            }           2606    50755     scan_actions fk_rails_7a5b999122    FK CONSTRAINT     ?   ALTER TABLE ONLY public.scan_actions
    ADD CONSTRAINT fk_rails_7a5b999122 FOREIGN KEY (previous_scan_id) REFERENCES public.scan_actions(id);
 J   ALTER TABLE ONLY public.scan_actions DROP CONSTRAINT fk_rails_7a5b999122;
       public          postgres    false    3588    264    264            ?           2606    51028    bookings fk_rails_7d3ec5ae35    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk_rails_7d3ec5ae35 FOREIGN KEY (sublocation_id) REFERENCES public.sublocations(id);
 F   ALTER TABLE ONLY public.bookings DROP CONSTRAINT fk_rails_7d3ec5ae35;
       public          postgres    false    293    3629    297            u           2606    50637    invitations fk_rails_7eae413fe6    FK CONSTRAINT     ~   ALTER TABLE ONLY public.invitations
    ADD CONSTRAINT fk_rails_7eae413fe6 FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.invitations DROP CONSTRAINT fk_rails_7eae413fe6;
       public          postgres    false    203    258    3469            [           2606    50801    locations fk_rails_8908cd1975    FK CONSTRAINT     ?   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fk_rails_8908cd1975 FOREIGN KEY (location_category_id) REFERENCES public.segment_values(id);
 G   ALTER TABLE ONLY public.locations DROP CONSTRAINT fk_rails_8908cd1975;
       public          postgres    false    273    210    3600            k           2606    50434    progresses fk_rails_89ca6cc7c1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.progresses
    ADD CONSTRAINT fk_rails_89ca6cc7c1 FOREIGN KEY (reward_id) REFERENCES public.rewards(id);
 H   ALTER TABLE ONLY public.progresses DROP CONSTRAINT fk_rails_89ca6cc7c1;
       public          postgres    false    232    3525    236            ^           2606    51132    offers fk_rails_89ef98830c    FK CONSTRAINT     ?   ALTER TABLE ONLY public.offers
    ADD CONSTRAINT fk_rails_89ef98830c FOREIGN KEY (company_id) REFERENCES public.companies(id);
 D   ALTER TABLE ONLY public.offers DROP CONSTRAINT fk_rails_89ef98830c;
       public          postgres    false    3648    307    216            ?           2606    50972     fingerprints fk_rails_8a320d442f    FK CONSTRAINT        ALTER TABLE ONLY public.fingerprints
    ADD CONSTRAINT fk_rails_8a320d442f FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.fingerprints DROP CONSTRAINT fk_rails_8a320d442f;
       public          postgres    false    291    3469    203            _           2606    50276    object_tags fk_rails_8f6810534c    FK CONSTRAINT     |   ALTER TABLE ONLY public.object_tags
    ADD CONSTRAINT fk_rails_8f6810534c FOREIGN KEY (tag_id) REFERENCES public.tags(id);
 I   ALTER TABLE ONLY public.object_tags DROP CONSTRAINT fk_rails_8f6810534c;
       public          postgres    false    218    3497    220            ?           2606    51347 !   company_infos fk_rails_9235e56ab7    FK CONSTRAINT     ?   ALTER TABLE ONLY public.company_infos
    ADD CONSTRAINT fk_rails_9235e56ab7 FOREIGN KEY (company_id) REFERENCES public.companies(id);
 K   ALTER TABLE ONLY public.company_infos DROP CONSTRAINT fk_rails_9235e56ab7;
       public          postgres    false    3648    321    307                       2606    51278     scan_actions fk_rails_9842e1d244    FK CONSTRAINT     ?   ALTER TABLE ONLY public.scan_actions
    ADD CONSTRAINT fk_rails_9842e1d244 FOREIGN KEY (invited_client_id) REFERENCES public.invited_clients(id);
 J   ALTER TABLE ONLY public.scan_actions DROP CONSTRAINT fk_rails_9842e1d244;
       public          postgres    false    264    3662    315            ?           2606    51297 #   booking_offices fk_rails_9a37fd4565    FK CONSTRAINT     ?   ALTER TABLE ONLY public.booking_offices
    ADD CONSTRAINT fk_rails_9a37fd4565 FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.booking_offices DROP CONSTRAINT fk_rails_9a37fd4565;
       public          postgres    false    3469    317    203            n           2606    50486 -   authentication_signatures fk_rails_9e9f704705    FK CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_signatures
    ADD CONSTRAINT fk_rails_9e9f704705 FOREIGN KEY (device_id) REFERENCES public.devices(id);
 W   ALTER TABLE ONLY public.authentication_signatures DROP CONSTRAINT fk_rails_9e9f704705;
       public          postgres    false    3540    242    240            ?           2606    50786 #   client_segments fk_rails_a01779d1a0    FK CONSTRAINT     ?   ALTER TABLE ONLY public.client_segments
    ADD CONSTRAINT fk_rails_a01779d1a0 FOREIGN KEY (segment_value_id) REFERENCES public.segment_values(id);
 M   ALTER TABLE ONLY public.client_segments DROP CONSTRAINT fk_rails_a01779d1a0;
       public          postgres    false    3600    273    275            ?           2606    50955    token_pins fk_rails_aaac6a1c2e    FK CONSTRAINT     }   ALTER TABLE ONLY public.token_pins
    ADD CONSTRAINT fk_rails_aaac6a1c2e FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.token_pins DROP CONSTRAINT fk_rails_aaac6a1c2e;
       public          postgres    false    289    3469    203            v           2606    50655 !   invited_users fk_rails_ac4d3cbf40    FK CONSTRAINT     ?   ALTER TABLE ONLY public.invited_users
    ADD CONSTRAINT fk_rails_ac4d3cbf40 FOREIGN KEY (invitation_id) REFERENCES public.invitations(id);
 K   ALTER TABLE ONLY public.invited_users DROP CONSTRAINT fk_rails_ac4d3cbf40;
       public          postgres    false    258    3571    260            ?           2606    50772 "   segment_values fk_rails_ae4bb82b84    FK CONSTRAINT     ?   ALTER TABLE ONLY public.segment_values
    ADD CONSTRAINT fk_rails_ae4bb82b84 FOREIGN KEY (segment_id) REFERENCES public.segments(id);
 L   ALTER TABLE ONLY public.segment_values DROP CONSTRAINT fk_rails_ae4bb82b84;
       public          postgres    false    238    3538    273            Y           2606    50620    clients fk_rails_ae769b0e0b    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT fk_rails_ae769b0e0b FOREIGN KEY (location_id) REFERENCES public.locations(id);
 E   ALTER TABLE ONLY public.clients DROP CONSTRAINT fk_rails_ae769b0e0b;
       public          postgres    false    3485    208    210            h           2606    50404     requirements fk_rails_b6977275a4    FK CONSTRAINT     ?   ALTER TABLE ONLY public.requirements
    ADD CONSTRAINT fk_rails_b6977275a4 FOREIGN KEY (condition_id) REFERENCES public.conditions(id);
 J   ALTER TABLE ONLY public.requirements DROP CONSTRAINT fk_rails_b6977275a4;
       public          postgres    false    230    234    3520            b           2606    50328    favorites fk_rails_c0602d923f    FK CONSTRAINT     ?   ALTER TABLE ONLY public.favorites
    ADD CONSTRAINT fk_rails_c0602d923f FOREIGN KEY (client_id) REFERENCES public.clients(id);
 G   ALTER TABLE ONLY public.favorites DROP CONSTRAINT fk_rails_c0602d923f;
       public          postgres    false    226    3478    208            w           2606    50672     scan_devices fk_rails_c529dfe86a    FK CONSTRAINT     ?   ALTER TABLE ONLY public.scan_devices
    ADD CONSTRAINT fk_rails_c529dfe86a FOREIGN KEY (location_id) REFERENCES public.locations(id);
 J   ALTER TABLE ONLY public.scan_devices DROP CONSTRAINT fk_rails_c529dfe86a;
       public          postgres    false    210    262    3485            \           2606    51126    locations fk_rails_ca4b9e9931    FK CONSTRAINT     ?   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fk_rails_ca4b9e9931 FOREIGN KEY (company_id) REFERENCES public.companies(id);
 G   ALTER TABLE ONLY public.locations DROP CONSTRAINT fk_rails_ca4b9e9931;
       public          postgres    false    210    307    3648            ?           2606    50989     sublocations fk_rails_cc6c2b37e7    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sublocations
    ADD CONSTRAINT fk_rails_cc6c2b37e7 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 J   ALTER TABLE ONLY public.sublocations DROP CONSTRAINT fk_rails_cc6c2b37e7;
       public          postgres    false    3485    210    293            ?           2606    50834 "   codes_packages fk_rails_d5e91f750a    FK CONSTRAINT     ?   ALTER TABLE ONLY public.codes_packages
    ADD CONSTRAINT fk_rails_d5e91f750a FOREIGN KEY (offer_id) REFERENCES public.offers(id);
 L   ALTER TABLE ONLY public.codes_packages DROP CONSTRAINT fk_rails_d5e91f750a;
       public          postgres    false    216    279    3495            t           2606    50611 '   voucher_redemptions fk_rails_d6d85e65cc    FK CONSTRAINT     ?   ALTER TABLE ONLY public.voucher_redemptions
    ADD CONSTRAINT fk_rails_d6d85e65cc FOREIGN KEY (location_id) REFERENCES public.locations(id);
 Q   ALTER TABLE ONLY public.voucher_redemptions DROP CONSTRAINT fk_rails_d6d85e65cc;
       public          postgres    false    210    256    3485            ~           2606    51041     scan_actions fk_rails_d8ca29c6a3    FK CONSTRAINT     ?   ALTER TABLE ONLY public.scan_actions
    ADD CONSTRAINT fk_rails_d8ca29c6a3 FOREIGN KEY (booking_id) REFERENCES public.bookings(id);
 J   ALTER TABLE ONLY public.scan_actions DROP CONSTRAINT fk_rails_d8ca29c6a3;
       public          postgres    false    3634    264    297            |           2606    50699     scan_actions fk_rails_dcc3302c80    FK CONSTRAINT     ?   ALTER TABLE ONLY public.scan_actions
    ADD CONSTRAINT fk_rails_dcc3302c80 FOREIGN KEY (scan_device_id) REFERENCES public.scan_devices(id);
 J   ALTER TABLE ONLY public.scan_actions DROP CONSTRAINT fk_rails_dcc3302c80;
       public          postgres    false    3580    262    264            {           2606    50694     scan_actions fk_rails_e13821f149    FK CONSTRAINT     ?   ALTER TABLE ONLY public.scan_actions
    ADD CONSTRAINT fk_rails_e13821f149 FOREIGN KEY (invited_user_id) REFERENCES public.invited_users(id);
 J   ALTER TABLE ONLY public.scan_actions DROP CONSTRAINT fk_rails_e13821f149;
       public          postgres    false    260    3574    264            ?           2606    51270 #   invited_clients fk_rails_eab34f4662    FK CONSTRAINT     ?   ALTER TABLE ONLY public.invited_clients
    ADD CONSTRAINT fk_rails_eab34f4662 FOREIGN KEY (location_id) REFERENCES public.locations(id);
 M   ALTER TABLE ONLY public.invited_clients DROP CONSTRAINT fk_rails_eab34f4662;
       public          postgres    false    3485    315    210            ?           2606    51023    bookings fk_rails_ef0571f117    FK CONSTRAINT     {   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk_rails_ef0571f117 FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.bookings DROP CONSTRAINT fk_rails_ef0571f117;
       public          postgres    false    3469    297    203            ?           2606    50929    counters fk_rails_f42ce01538    FK CONSTRAINT     {   ALTER TABLE ONLY public.counters
    ADD CONSTRAINT fk_rails_f42ce01538 FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.counters DROP CONSTRAINT fk_rails_f42ce01538;
       public          postgres    false    3469    287    203            ?           2606    51236    events fk_rails_f52083b5bf    FK CONSTRAINT     ?   ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_rails_f52083b5bf FOREIGN KEY (special_category_id) REFERENCES public.special_categories(id);
 D   ALTER TABLE ONLY public.events DROP CONSTRAINT fk_rails_f52083b5bf;
       public          postgres    false    309    313    3650            j           2606    50429    progresses fk_rails_f837b96cb0    FK CONSTRAINT     ?   ALTER TABLE ONLY public.progresses
    ADD CONSTRAINT fk_rails_f837b96cb0 FOREIGN KEY (requirement_id) REFERENCES public.requirements(id);
 H   ALTER TABLE ONLY public.progresses DROP CONSTRAINT fk_rails_f837b96cb0;
       public          postgres    false    3529    234    236            ?           2606    51212    articles fk_rails_f97080968d    FK CONSTRAINT     ?   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT fk_rails_f97080968d FOREIGN KEY (special_category_id) REFERENCES public.special_categories(id);
 F   ALTER TABLE ONLY public.articles DROP CONSTRAINT fk_rails_f97080968d;
       public          postgres    false    311    3650    309            a      x?????? ? ?      b      x?????? ? ?      J   ?   x?3?tLO?+I?(??M-????4?4202?54?52W0??25?21?344461?#????? ?      ]      x?????? ? ?      _      x?????? ? ?         ?   x?K?+?,???M?+?LI-K??/ ???u?t??-?L????M?-?,?Hq??qqq ?kp      ?      x???Y??Ȓ5?|wQ??I????j?@3@$&???<?FГ??S0??Uu%?m?)? 8 "<????L?o??п=?ߒO??i?~????7#;>???̒%?m\?߸jI>U?[?&QE??￵????????n?r??~?)????
?2gAo(?????ۿ??\?g`?.[2???9?1I????????eR?Q?$???k??`?j^???-??????o??????l?ת߲y???_?O'?9,8?e??????78??߲?Ǥ????O_????>)??_??????L?????K?w4?巴??? ?????8^????)??u?Z???6|??????X????j?|??+?K??v[??om?_???[6E=??n??;?2e?1pg???????o???K?%?U\Y???ќ????L?,k9M??˱փ???̲<?????w??9xv?߃?
?????G??@???pV??l??l?n?Ŭ=??z??[??.?Ҿ?o???k?c??xK?[o?n[?}?????????Cf??euN.???z?K??EY???,0??^??S|?Hw???????????ew0??խ?G??ib?9O"??0??Y>???Dx??(F????e?㬍ɤ??Z???]EUgu??? ?v??X???/a?Ǯ?Ю??&?G?q? !????뮻N??A{T'^?????O?}u[؝;k??????9??I<???kQ??W4??va??????v?V??!?#~	???q?/??άp??2yh?{l??]<?????Zh??????M?`lv|ڧ`?^??:u???}V؉??ӣ??7!ss?x?;??6???E???X<_??????#?zs??4$v?r??ݣ?{????zO???l??|?k?
i?|??]U?>{??? <~mW?/?.W?-?????U*E???5?e???q)?Q ?f?A??Q????cW?3???:TE??N??n9??^̇-{Y?5+???wS?????c?8????_?W	{LD????ϔ??d? ??%???ҊN??]????c??? ?|R_ܢ?s????n???Q?(???GG???n|?/_#?????j?/l2??iY?????O- ?w???>??:t?<l?R2'[??`_?)[l???)@?<?ݑ_?T=?Z8ś᩷0?.??|OE=?~??GÉUc?^q?-`???`?veY??r???c?Xu?nx|? ??? T?2aS}?<,?6}=?O3ȃ?>???ir?p+?f?VD?h?c??D:?{?<A@*?먭?.a8?[[}?[?????MB?jF?Ry? ??;[q˔?P?oB5??s?V#?DU~?*UY?V|?B??w?????雜{???Q?u_?p\???)/?w4????ha?nm??? |????1/H??"71r?V+F?,??@?q:'????7V ?^?7M#????D??m????Jv?V>???M?ܼrdA?>|??E?\??}Pz?z?E??
?\??s/-{l?柘??a/???̫?3????`?ܕj???y?3ij%a̯??$??θ=K(????_????.U2!,?b?}?P??j(Dc??Υ?FbL???????ւ?l?? ?<X^Ƨ!k?;t%y????
??L?$?ڼ?R????Ģ??į(??ژ????
D?ϓ?Y?4????N?~?Iyn??(?}ɧ?"k'<?#?u??k{?#?=!7o?#?3G?+vƢ}&?n?y??C?d???P?3??lp?PO?9???.?ι????*???
?%	
??$??????`?T??\ɀ?K???Dq1????.{r<?,R?5?j?@??iv??(G>?d??3?B?%Ɇx?T?`T@?+????4ۚ1?3/r??9?e?%?3?5?1?U?T???????|H?????=S"a??9??o????&????9??A(,\4b>?e"L*????栗???=?>*?S?ڞ???[?sdO?3~?ՎM?????2?R???%&??1`?o
???h? ǆ??O???x???=?$????pP"HR????jH??3???F	??緒(ַq? $fa?????#??Ae??>?"y??O")'c?0eA?:[?K2???,?????F:d@?'T?	A?Җ??b	????:0?"zfe?45??4????B?.?? rTAp}??=?
?Zq?d?v$?,?6U?]f︀T?????E?bq[_h?q?
Eܼ6s???uf~5=?$3?T|EG?t;?p????v? bk^T
y??m??<?L"?k???d???뢨??/???n??ff}Z?Є???-(?2??&?X?o??5.B?Vc$??p?Հn̑.h?"(K/???6ł%a1??}#hx?pwOM??M?'??!?Y?k???`Ũ??6???F??zk??a????v??b|?$ J?????e?l"??ײը?p?#???d???R??~!->MA=T???V?????????y???P%-??B?xKj?	???n??fF?P??ҝ??ik???Z[?????F???O????'??֕)v????s3?oLDڔM_4
_?Cd???O?igV?s?)?ӥ$Ս|??ἂ??AU!hTǑ?x @??3????T*恦qTG??Dւr?	?G?
?
?+?h8_0r?Bx???%}??z?V8??i,1^5?S????L????uIU?eН?j?:?'?WO??sI?t?v?)?ly?l?J=?G??B?g??-?? o??Je;?+d?o
?????y 1`o?C;"I??????O?>?4???~[َ??p1?p?PQm??pߠ??_???	?UP?t+?TA??I?/֯?@%??! 8?g??Q????b??s?&X??>?Aa:?????ធ??}N
?=??-7??????jy??T??2|.?????Qn
???1?&KO?/?҄Joy???F?鮐b??a??3?ϔ??I???&?G?cR͡?#?u?(??4Ƽ/????lU???dB?Ԡ)???Ȫʿi???8}C??Ȁ?j????p?$?Ejj??e?????5:?b?f>?x??,f4??["?Mk'??<???h??e^??????y????[?=???ψ?E3ZK??W?ݕ?b??XX?O???Tn?A?-P?O?Ce6ф??6??;?ݓ0?]ع^??JԮ*???@ι12?|ȼ???֬!?!2?8??%b??}IJ???????FԨ?<g? ?&???!`?1?[EB??l???H???@??鋒?8?ll??5???~??S ?v?@V?a60?J?i??&??mۮ+?j??,??? ?'???7??)?
_Y!	??)???9Oc7????&g?*bB??ƴ	;???5??>???<."ʇ??@?f?B󑼐i?hH???L?X'?W!?"?x?L?3+??%???BI#ײ??햯 ?????I???\Z?؂??0??Q/'ڒ?}Y???C*?O??q?s?Զ9?v'???t???-?; ?.?
5+8#?[|I
?Lg???+?O?!J??$1?ͫ6?}R;?f?'??Io??1?01d?,d??????ᦍ??*AQֶ?q?KS??p?m#M???f????????䁄??x
6i???|I!!?????(?? O*?~?????7U?zDZ0WNU???gP [C&&?13????? ??<?nu??H<I??֑??7?6 xg???4?1+?뒣??դ+??????Ґ?h?)8H???#Bi???B???O?>?Ζ?نi??&ͱU??ע??!?)#???_r???;?6c?w?|A?M#
???F???⩑?{?????? G??L?'?]???{?LGQ?6?-??p???c5?pɛ<UҼ?C?s?tkOO???Ӌ??ʶ?f?A{?&??ݱjwb????y??1??ٓ{??@<?ߴSj?`??_?p???n<??DV$??;?7YX????.???a???(??@?e??hVQ]??b|m?nq??D???zO? Cj?)q?y*푡????ν??iy9?Y???`???U=DL??y?K?.??[v<?I??/    ?=?mɅL*??ו%n?Fb?>l?A`Bx????jw?3?bmJ?=?(h|?4Ii??????\#?׎vGuokW_???؟??KL?+? ???kJ???It??Q??u)??$???}Ұ=????F3??2?f??{@h=?!???< )8b?ģZeῂR???-?<?L???m?j??e$?????꺡?a??:?>?*=?U?9????????d??? ??+m????!?8?A??ߍ??>^???َ??n?Y;???)?????>?9????,?P??	???k????'
???X2??{3x?f??ͤ?g%???ۏ???/???=??d?s?$??S?<5??>??<?_??z
~_?.???|??;??
??????????????K8??̟??۫???sA?_L??`,??)?_???z???(?)??G???'oLJ???M?9X??}?????i?p???????Ґ?ѯ?2?wm????R???heR?/???12????`?????X~=B???Caۯ??|?2?yPe~?5?9v????r?g??0lC?????5??Ȃ9???7?)NL??F???&$y`??ߑ??????tW8??? ?̑X?5L????˃X????-???\}]???`???8 ?w?~Np??????x?????r????????ݪ??g,???5??????zί=??}?u?????xH^:/g*`j?Z֋?q?ao??;d?%?????N5??o1?t4?????????W?????U`?w?????(?2???)???.^??ɗu.??A?v?z??IM?9?.??֒??(A?B/?/?,"?!?.)?2???`??'?z>p?tWp@????qO?"??z????g????]?G_A?T?G????bқ?;oeӸ?P??|F_???k????.SȰ?{????k?z????L??q;0?0)?8-????q???C?=?g???_??????F??oO`E,m?,????%[?璇D???}{??%ʟ;?????0O?֜????p?!?F??씙?!?
˶E??箹ٌ??s?~?SК???? ??2?2?!~,?@?5????[.^7?EEi?m*X5q?t????`X?%_!??'	?$?:1??????#??/?ܲ?r"a??s?i??_?%?~7??T`??9?%??"?{bj?'??[?$#?:?^Hk/?ix?K??G?????????sw<Z??!-???_??T?7??B?l?	?c,;}???<?ە? ?????y_
ǿP?<????? }??S ؖ???&???r???,?q;G?!???wQ'?Z,??G?$]??(q???U?l?ZV??<???,?ǄY??M?V+L????I?C?w???a9?I????מN??o????0]P??qg???l???ɋ?T?#?)???)۵ʈ??.???e@?w?JN?|?ʙH?g?B?ɓ?%:}?????e?䃥/g?K??A??j???{?ź???`?D,?^??7b>????3px+???;#?>c?1?F	??Z???W?zp??=?Tr7|GC2'???J?? ?^] e??????7?H??{c?R`??+??N?????{??r7????a???Io]vCh??spF?H??ԅ?p??)<??(???ָ?*Vj?$? ?Q??P'?,?ABf	?̊d????????%?G?h???L????[?Y?Tjv??7???0|LL|????w?xf?nwS?/?"i?D3n????&??Rn<?)?????0з???d? ?)??L槎?&????ªnO???MoV???X???#?c??h?%:?^??V????M?U??]??K{?h6?!I}??	G`?i??q??Ϣd?Ģ?ǻ?B?FX;?<	???;+.?V4>'_WR?g?^I? $5[.G1??שϠ?lrL????9,??E??,???_)???%?_%??????%????{.G:L????$?uR??&????"??l?W!:b?t?j?R?????A??Is??4~~&?!?~???@a0b??8????i<e?ȕ?}?N???q=-3?:?}:?1????>??t????]?u?b?%?)????t??F??????h
????ĳ;c )P?V??l???à?????6??x???q2??t??cR?"{??Ɯ???Wڀ??+9ոQl?U==?u??S???qZ?1v?p~?^_*X?ov?בϏ???
X?mݷ?
?}??+F?ܯK? 1N??u?;m?=?E?Z?íA?tPmI??c?????x2??`????0v???g?? D???.??V	F2B??0e?$?????^???M]i|????ޡ ??&V`L?QG?P.k??NN??????????m?	?gwQ?/??]???+?i?s\?Q#? M??S??ct??Vv???nt????$7F?xФ?s5P"z????????EC??^???? hXU????½'??????I?:~ٔ??z??h
sՋ?*/?+,?&no1??+!?f0??8yr?8Z??L??蜸,o?m???7P??>?D^<ښ???\;?K>&?)3?k0ō???t?e(?Or*(?[?0?M?/?:??lD??A??????!?!E???%]?ܚ??NRy?3$b?hkvz??y?Jh^?I58
?=D%.?m>??????㜐qW?hbO?=U???u?5????ڛ??????͋???D"?TWg?`V??NL???n]eaݰ??jY?ڝ?K?A?)??Hn??,!$I?u?N?S?]H?K슑?XC?@?ESv???<z??bQS?W,???1?Nb????{ޗ?3l??t(????ת-H?B;??]????y??p5??'??4???b???OH?Pu????k???=&zѠ??????e?{Z?in?B?N?E"?hA??i ~?N?E<?uH???K??!?ZW?k?p3?[???5fk??;(?s???\c|A
?>????uQ??"g?$?b?	?ƀ??7WɕU´?c??<?;??]w??c 3MDv?I*V\????pS??5??;????E?}??߂S??xA.??*??x???8ŨK3???Z?????{v?Q?XUլ?VZAI?֛????r???z?:???u??r????s(?-;_?U}??ȋ?&?e??2????DۤW:?f0 =W߀%?%s????(?#6S?t&???L]7uh??}?mB3?8W?h??Ɏ???S?œ?[}X??E2?Zr?6&v?ZރK?A??,??!uo?&???%??f /?w=??9_׷?;????g?rt?[^?-????v??:f6$C?8]?s??~Փ??P??B?wZ?d?????@?g=???J???a$*?_%oz?$v?xb??W6ѣ???93t?
?- ?NW&?
?D2????H??SF}?]?????}???????>??j?鯞???@B?|=?@e>??0???=?΁????F?f׍9?ۛ9r+???<0~??l???g??X]??pgu????'????Z~[?,ɨr
?u?6?Y?*?????-?z_d_~???v? ??p?+?
?^/??u???=??y?5jPr???3??I??t???绤?????X[?"??Ӻ????.??????P?[,x?{??>D?Y}????6?V??9??˹??r?zl|?62????8??????v!h?"cj\?3?\5????UwSA?g-??????/9?~J?:?GD?ڮξVW????ȯB/?}$G??OMb&5???[g8?vKE???r?kx?&?Lѻ?;{?$~k?L1??qH???U?P?U?,??@?)?????w??^`	>?ֽ\???????-)?b? e????}P?z?9FB???N?Q#????+??)?P#??#_n??R#?V??7Ur3N=?U??????۴B????Bn_????????~d??ᓜ?f?t???L}????=?A??x???n??&x???LE^V?,]"	9??$?Y^?????JԘ"??k6xC???H??n??F@?    ??ʜ???il??{V/j?գ?='????P??eU?Q?.???h?!??0E?ȁ?2FɁ~????'???f,V["i??~һ+?Ma???f?d?Z)vC?ĸ?vٗőH??욼ͪ?w?n؊E?L?C?????r???>O?`?l?????wǱ?B?'A ??8??L?Z?*w???|?????!???????^;?N??:????/b???gjI????~?)?H
?#?6?(?61?>T?Ց??MK???ựד.?#Z???????H???!?ڷ?ph???A?ܝ4+?????Ąm?'?4B??ķ?k?꺑mQv?L?Iu8w??5I+?L?q???<???j@M1????`K????o????K?{sۗ!p1???i???4K|?yy???d߰:?D??ȟH??>?>???=#n???MI^??Mw?Vk?ӻ)??B?-????MK?O?.?d?Tz?"???S?)?T]?l?02f?{?G??????I?|?6?ѫ?>?g?J????9?}O???qAV??ЖM?]?-
???%P?m8(aQ??C佢.?ɩwS^???v?o?ڎ7???_h?W;??c?p?w?h??ɜ???N?7}u?zۑ?4L??v??ɼ/??*K??C?ԡ>?5??9??H???;%?G??h?o7???Y
????kz)?dX?1<?l?â]?AI1K??u??}????-?????)(&`???u??v?怂%fU+???H??y~????6??m???Y??\>?YZ?aqrX7??;4G?AIIڇ?]K????C:U?G?J?vfA7???	??????8?5"??C?Ҏ?,ֹg?r8i?U?a?|"????x?+ʝr?"????W??Y]=??h?i&|?X;??j]P?.Px??-?=ެdK1J????????]M?s??1ǎ6?j?4U?O??@???w??TZ?;u????r[5c[2??|I??y??bG?T?w????e???z_?C?h7???"????pl???o??k?Z??jfU??7Xcʜte?t?t?D??aE(???Pg?a?[Q*k9?G4?5t????|???$?uDW?Z$7?? ???&
?uw?ǌt?2??狢D?1?\݋a?? <?K?N??^F?i?ci?????????u?Bd????^r???
q##F??,o;?6??>?2h?W??'΍3P?????Ļdt??y8??:???=?q??\???|???-?O???i?{'??W@5c??1?(t????M!?????;w??jL?~`/܄h|???$?,?"?t??ڵ??q[U?%???Ֆ&?+??Q????э??M?#?M?|F???????+?? ?Q????˞?୷???T4???????e?P ??m?M???~?T?tX^??%?5?ʊ-o???^pw???q?;???.H?f???Ooaˉ'I??ޙ?u%???4?@?oPq?萐? ?L?d?t?v?F?v_?W??I?[T?墍?4?W3L?XY?C??JS???R??\K?D[?h{???No&K???`1d???@???O?J1J?Z?.???i??????? ?1??q??5?u?}?%????(?΍~??@?2b?U?8?)	t|?$ZrIҷh???({u?zL?#7x??\'<F~???:??{7??E?`D?B1J?w?#]??}???|???	?f#????h?K^0N}??Ab-?rg?\?? (??????9?@?V(??f?1m?n?]???i?r^E?y	J"?62??M ??$?՚?G NR-?ֱ??_KcR"ϝ?Aeđ[???????
??a?N????Q??
~?onB????yC?̑??[? 1????
?+??M?m?)??YĻ?ZqҊ?Ne?2?a5T???1>?O|c?nE@?ܹĠ\4A'??Dh?Eu?q?l?J~?????p??ϣ??굠??ʎ/6?????E1)Ոl3=?ei??!c?uk???	k?}GFT0??>??4?o?+t?a}-?qT?[?K?5[????*j??Gz???תj?{????к?6T???Q??k?4?
\?6ɘ^>g}CI?K?+D?C??w?&?{b?v
:~?+L.F????F?g*L??H????I??Q?????4W.j?v?چ?gƜ??v5*??6	uu˰ 2?Aai?!J??E???E??????fr|p?;?+Znʮ?ՙ??u????h??Z6??D?JZ.?9azME?Mѩ±??;?5é?P?r?.?̒ဖ ?{/???<??*?5?F[???n?^ք?dd@??yhd?u???????Q?W?s$A?͙w?}?C-??ؤ:m2Vdek?,̃"Ϸ???s[\e|???o??&މ??h?Y|4?s?ṝW?????8???C?_??Y????Ck??J?s?η?+??????y?P??ɇ???j?-??i??UDt??????"?K ?B??ynq?H??̩L?e????G??6ۮ??C??$K,rnqE?#}?@?x?.?+??	?ϖ5?ơGӊA?>S??@??ÓH[?#????;??5??A?*ІU?*??v|?Z???kT?~??/?0bc:-??#????q??4K???P|??A??mɷv?c?u!???Z?֭)#??G?????%qe?eARK:'L?*????Ss*A?1˜TBD|?oje%%?4?ӌk7q?%ږc?'????!??? ??
?8??УU????|{??s?N???]jw??A?M??D??&??n?ѝH&??7??&?R? и????о?N܉$ϳ??C?R|??i?8vW??qA?>??=??;?ĠsC3?7TAG?as?n7????????@???fwb??,\?%?x"?H7O?>?ѡɨI^	ꎕ?&???s???8[?Z???I??_??~b^?[? ??s???+@??D}??24?2?h??A*OyM??--?????(N??ͫ???ؒ?ڜR=?x?Y??SS)??????a?6???^?DG	?h??f??	 N}g?>k?:???7?E??S???c6?30/???#!???hTY??>o?i4?"??An\!?#?b[?1*??w?ƆTq???H˜?????G????????????D??y???FYw?G?z?l\?????ys+?B?????X???Ւ8??P?J;?1?????f??u?/?#e?$O9??:?Ð?"??{?<?
>'??G?F@?)s?Z???g՗??:?Vq?H?)??QE?$:i??7?????A????Z?Zie&??)m~=A?????ix8?;?Pϟ??r?r(?WLqe?g??K?`VqTb!2????c???[??Wy????l?:??4??j??D???߸???H?fm?T???+???? b?x?????i?Y?Z3?????݃v??/?x??r~zv????U?^??????/??Y??(?Jpܟ#l%M?7?Rk??>?^z???w?s?h{???FrK4#6?L??????n?[s??|???ۋ??F=2Ys?m8?H?6C?f?	???[o?? ??.??k?Fb3.k]?|??W??J$?㽇??`?cyY=?????dHփ6???vR?W?y???,?;?"B?Y????[?j?cz?w̵?F?(S????h>#s>^?%?T??}ad??1B???/Ͱ??#Wb9H?y|?=???˩ͧGl?r'??r???F}?a????zš???????0^N.?$?????$>?5$ˉ?:???]?m ?߁$?Y?;???k?j?????T?-?H???dw-??bG4u5?????s?$߲??D??B?z2??M??????rn??? sM^?C?\?>???x3?t?\,?$~m?a?)w?BQ???ݎ?'???i?#q??????([?h,???/j٩`??&?[H?R>I??C?l?T????U???a(?Z?3???rp?(?H9~????gK???K?[?X???2G?20??????(aZ???
( w???2??t0??9?3???Z@A?1?????S?????c>R?E?nv?X4?׻ȉU?v???md???Χ?ƃ?Tr?Y?H??2?C\ذU?qM?????%????|??E????:??\r?l?r?3˕?	?????3D?5`9    ????«???+Zx?o???$?j????6dy?B?M&???#?pc?H??/??H??<̵?0????.???Z[???TD???F?6?
њS?!??i??m??·?m??k9?A???T??????d???Z??4?3v|p?i?-F]e?u??}??#????gJm?ŰLE???>I???:???g??$K?	???	0b???8?]?Ȼ?M??|?Q???	??Ù?GA???Sab[?wO??-cU??V{??+I??"?|?4iV#l?\?2?dd????@'???ͽU?????3?????~Ŷ?mh]gH{A??|?-?2?Gmu?r1n9?W_?5??+|??c?????wV	G{?$?q_?[/??? 9??W?@??{\?????I????:?]?_Lʺ?e.~L'Ϻ???J?????C?- ֗?F/L9)ͻb?D?
}o
?'??? ?????m;;v?_@????ۑ?z?0?,?܉?]WҼƦX9?8?????z??ē=hE?߁v1???9e???;b???]?=?o??q???a@"č@?*Y??A??x$?bö?TQ???0~???k!??JJ?JuM?~?=?! ?p޴?̉??J|???e-@??oc??ӻt?V?F&oi??(??nA?w?x?]E???i?????ؽ-??@?;?(f ?lOޑ?~f?4հ ?[8?qb?gu??}HS%?pe?? ?{މ-?N???'???]???????ؐ???LDj?C??At?????a7MZ	?s???&OÑ/m?(?SE?<?????
5j?	|9b??k???u?SFĉƮ>>?uʶ]%???S}jR? λ?^???n?ʟ?l;o~Fs??nR???Ft???p?H#
m?I?"o??(??Ѝ?pZ|?????Fi?Ĭ&?br?? x?i???N~N?Pp??>??????S ???"/a?8???>???M?JLO??\?v?c?????`t<?y??'?ӿ@??>??%??E??֓Q,Ŗ???*?|??}?$W|˓?9?m????_e?????@O{,H !n9ICy?!????????????:??r?:?ls14?>??????A?ͩw?ɥ6??T?$m??;D?.tP1??`	??zx?Yi???;?s_y??~???N93?V?K?j@??l?¡~???K|U/Sv
???IV_?%+??????߿]???Ӵn?-??]?;,?oݲ?q?8Z??
,&?{????U?????h?<??I??+??ͻЫ[I/??z????)3/g????n?^Hq?Ӂ?"&?@V?????t??s??u???Eи?$??he?,y??u???y???)?y?z????S|3%o*??????@Bdp??EV?/
?8???????QI???L??E# ?7??zj?L?}a????i-?????_}?ǎ?@?&x?~??Ӣ7???S?s????O?̪?L??T&3C???T?l?p?U???R????%?#??Wj|-??<?ca~
a%?5??J??I???'?m?ct?yn???%9$?/??JA???-?o??fP??3??w??!???X?,3????m ?ws?Ǚ??D??ꄔ????s???6???)DD?_V?-?2?r?G?J??? 0G?j;?k|?N0???f????? ?s?E?'?M`1??wJY?]?C??x??_v?}E???2??_ퟄݯ2o?7g3?D??b?P?dw???!?????>?>w?x'?????A,?\??a?????\J1?f?5?ŋ?p:?8?	X?b???x???<??????h&??tɵ?F2??Lauwj?Ƙ2=<????Ύ?Or?u??y&???q??=??_C?*W??ݤ??)?A????????<)bq/q???p??U???㾗3?l6??????{??*)"?C??[CU?n?a??8/2E?^???N9???X?&/???[!|?/???@e???T?O???????(s?]?I??_?UY'f?o?43H??ן?(2W??X^	?Hg???G@'???ȍ??#?4????b??^җ?.:?ĉĽ?O?V+?×?&=Dp#ؼa?&;?????{?>)????l??:?-ӹ??z?@?!??`??V?!ّe??v??????W??쒾?t?o??>??? nł?????&?}??:?lB??=0n?????c?,?د????:`n8?ʺ9* ? ??^?k????g^?SoI???{ҋ??T??.???z??H`??"#?	棪K??ӡ8?b!=?!)!??tk?͝?3?c??%'TXLl?ųYШRhIӰ??????-)|??tҏ?t%?D?h?u74+??{??.ee2qC;????M1?^(X???![;?o???;o?@??1?ؠ?Ԟ+
????????g
??? ?kԄ?WcQl??C?t_Y?+?IK?r?dS󎳛???jF)???????kt?Bg?Q?2%8-_?6v|???gFH??Qj?yբ{#V?]?7oꂶ5~6???G???MF?5??]?lZ?^??>???s?????r?]S?*Տ?+u??u??ʻ??sݸR`h?(}?6??,??%c??Ųlֺ-??S?
I&?e???$	K??%0_??Z??ُz????cK?g?Y$???_???????SI??>??????'?%Ǟ2-??????:6܍?A??S???MF/@??	E;՚?/P?q??6[?V??X?
q>&?_??s??|[F????J?m?P?#??'?RؾU??j%o?C?1	?"?zfئt>?fkר??????~??ZJ?l?r/??4>?????;gX??z?5?7A?횗-?*-?~?/фpgs_? =????W?Y?lV????lD_??S??"=?^z???尺vޡ????????SS-??n?1?????/???????b?⫝J?Q?zwH??o?_?{?xռ?$???>b???u6?PI+?Rm?~?8??A?U??f ???+fa?SIC`f??n?_$c(|????iA?*s???CMl>Q2S9??
?l??L?3????{!$L??+???X?R+7????f??P?8bD????<U??N?k??_) s?B??_??v?P?<?ҟ??G ?ĥ??|0?sBo?X??ơ?E?(?w ъÁJ???74U?8??ߠ:	?Q?ѫ/??[???%+W.?란????lP??l?????N?%??$J??m????jO?????syB??R*??j삖???lt?7E)?Ei?y?(@???l1???.R#?Ɍo'%???G?B???֗:pkd????lI=8?^??ߝ:?Z???u?n??#??FO?[p<?EJZ-hvh&d]閯??+g?bЖ???k?\??O??VT?~?????q??p???????9??????????d??y?Kg?d?wo\?(??t?ZHL?h???+ޑE??`??l??Q?S!??ؗ?>7Lw?	?D%????E	D)?z?o?bo??Q=02H?$?x??ڣ*`2??2*?e?@m
?/rS?????n?~?????t5?cqs?t2?edU3m+???(ں?T???oPr?],?L4Oq???Qe??o?P??W?w?X$;h0??????$sAC??w$0A|Q??tosV! ?hܸ????:??l?[?;f#%?????_?L?`??|??*?r?B???9l?Ԗ7??????Q?5?\\]&i?͜?ˬ???;?ʣ??l?db3?궊0????8
??=?$??.]?u?v?u???1??X? ?Ǚ??w?1?+a?$?-?????,ɒR`?N??6????T?c?8??n???R%񩺙???4?Eq?ϡL"? w??A??????z$?cK$ނ???؍ʋܙ?vup6???_,?A???hj*?gm_????8)?P??.?C??W??)??S?Z??i???U??\rȫ_???W?M???u???C?Ę&?y{???~????X??zz?`MP?m*???^06?????5??]?^??'ae?????w@$?Q??x?V?q??ݛO%'W'S?`}???vl?2T??F8v?MIQ9?<A̮/յ?$?CZ?????P??ֻκK-    ?S>ߡ Q????????Q(???wX8F??\??|???`Gڨ?'??S????^?L??׶/E?oL???2????Z)??gl?E^??Yl?;/??=?vL?ϕ?JI???N$?????H?~?z?eD?蹺2H?????'_???[??eY?P???hW?u?Q??L-u+l???o????8`^?j?L???????#e?}?l?T?\??
?eR~[?q?K???>Ɵ`|?p;????F+??R?K?#,9???f???W?rEit?+??Ŝf????~v?Ӧ?'?LgE???rv+?ݍ?k<???~_?xQ8?{;????,???_(??;?߉?`Mח??Y??*?#Gp??V1????k???vH????D?(vQ????ӯ^?ݘֻ9???7?1sX??/??X?X??Tʱ??????Z?̟???5?Z74???6?0OE`??sf??\??????8?U?aL?mM??~rl???~O????j67A??
?b?|aq?@??U?zW?FH??[?u?3???h??ܰ??k'???Dv?T??!??5?????c??1x?aw?/Y?J??.???7%?oD?t?uSc???Z??YZ?f??????/???e?>6tܚi,7???L?NQ?$}"????GQ??]uH3~/???l?-?e???/..jL???-:??????scU?u??6{8N?K?fq??*?p????zQ	?WL??Zԁ,???.0??6<X-z?k??V?>.Ĵ_?^???=???3??G#?|e?k?8?p?)?WP?3??g???5UžQ???7 ???;OG???扥N?X??Fțh;1?Q?;???H?uZ?x????f?h??|?(????}??W?F?A?*?9??A8??Ƒ?j??Y?*q~???U1- ??N?v|-???o???]??Ď??顺?P??"\??????X=?JƱ_3]?M?Kx?*??še?;?1?????xx??/??4?X??E9?D???l?7?x????r??? ]?"??Z>??؉lS??????D?j]91@?z?????&&?<???Oj?M)E?{????<?n? ??K??=?????W?t?R?BBB}?P????5XIT??ῃ?VD3u&~????FRT6?L*??~E?E?A2É??N??!??;??b?:??G?U?|Όѓ=r?߬ػAXn??fq)eTpg&??⋹?:?7_??N֧]mѷ?g?3Zn?n??pgq?y?+?$?ڋ?0_??W5v??4?m5젭??!]ӳs0?}?B???Uy?x|???V[:?݃#ƗO"??3g?? L`S??f?s?U????U0M?ۊ/c?	Rː???W?R/???y???u???$XU?:WB0ZP?j??}???b
^???]?vRF*???pl??b???;?6?0H?sOg矡?F]c%??9b??v??}?|?q????????ۨ1?צ??1??g?bߥpg? ag?#?h???9??j?+?h?o???P?P_	?гT4g??k?;m?I??;?uƱ8??l??r?@?}2?A??M3??U??H?i????????'??ư!?j???T???WqD?q?Z?ݼ?Im????E???d????Ӎ%??߼hz8Y
b?6??Y??~?&Uo?o/H:?????Wa????e???t???+??؉9`5?-j????B??Bт?
??d')Ek?0K?H?????E???:?D?5?!b.?]`???;??R?B??f??oy?g?D|??Ǧ#b?ͱv0??=,6(dր???$?S??`~Kmm]?w??0??R?F>Z???U??C?o?|a?x??????bAa??`Pf??x" ??	?&?'?A?????-?:io:??2O?????~?8?9??.???7?????+???~#?H????Vte?AK??$bL???9?o?8???#U???<???A??Y
??T??:??9?/?h?????B?)?+?Ɇ?jP????J?ݾ??x?~	????G?k>??#lr??&?|?A4?'??Bc?R?k)v%???????g-G~?2n??~???M?	ɞ??j7?"R5???v??q????I???x? &?5>????P?I????ӭ?)?}ʢ???>;ei???I9Q?ζ??y???`??N=״??n?v?)9@?E?-??Z:;?Z??0f?????,*w@?????>??l???·???a????nA9?cn]??F?GT?Q?E?xh~?????^5N???֤??;??Jfg'i??$JPR?Puf??J??=??OM????i??jJ??;i?[aT??hcPD?.???T??|??-??#f?\??????????I?m?X??*}??Ӂk?????7?㤬??r????i???C???]?>??0?z?o?????=ڬ??????R???{@O??}M?K?3??@Ԭ?U7???¿p?t?@???u??A,??@?9@???????v?6u?]? ?'K???H?(u?*???!?0y??RםmM?ȇ???o[??]??͕??Zۯ]c??2Tֲ
'?[???>H?l????A?? Ҹ??e???@??/???k?8?(?OǮ?????Հ?,6?{W????Uq?]?uH?r[???z???ac1RW???o???h}?4??|6????z1??6??' z?8?Jib%??ţV:%?PR?? ????p;6????Q??Mf??.Gu?ĉE?r???M?$??zX?????B&???31߲pƑ?????????z?~??z[????????XA???炊?=Tg?$??ԅ?q????RJRuu?	??n?%_?u&Ɗ}?ܞ???3B?"?Ю[	>???޾????<V????xW9????m'?W3`?ר?<?J???] sF?o?,A?>??L?@Z?ʟ~?6??×MQ?5????]?M#?ݪ?;??Xbl?8?F,?n???s %_|MM?]z?s*EI?]????	7_@?E8?5+?{T]?????-pP_ۥg??C????^[v??ȸ?D?%){?A?ꛝ??٘$8n	=we? 9x1? ??w?S??1Q&???<`q72ݮ???v?(?N?=1?i??o?? ?i???3qf?Z/x?ri?ۗ?{??i?¦?>q{u?N????IU??#?7??????m?y???F_????m?{???V??y??d98???`@R???????慛1?????u*???
zg?????vk?٩m?sCn???q56r?W?-??$C%l??8?O%js..u??:q??Ը?
?2??u???#?w?l??<??&? ????P???"?9??m?%??,?o??A߀<K?{????me??N??????!??
?k?wc?v??#×Gm???\2?׾5?GZ?!iE??)??/u7B??Ռ?^?@?????$@?{|Z@mg??$?Q??]S?;?t???f8)??}?0{L??mMa?d??o?aD??駖??S)?X?&Ћ?;d?}x?/???*ixg-?u!5z?I"?gQj?;z?>??m??T0/{N??s????????ښ??݅3?c??]?V????̱?{$???h?X?O?Z???????VuS?(??Op?#?(??Ѐ???40<?U&v??0?t*u?ru?g"???y?_?!?J?X??u=?,*??=??*?N%?Q???k?w??>????????H@??2G?8????	??3?^??5%???~????D?T?E?+Y??6k?;J???	:???!????|8+???q??A?R??{???e?V?h{?????d?m:??	???x?Tx??>M?.?|??o?=?xG5҇808?l??u~?Z??,?6?p???g?7h&u??z`?8?h?졲??=?b??D"1????~G>;Y??w
?g?k?)L	m???$SZF??G?6???%?^#????y?/>^?????T??W???O#	?bZ?7?
k??PzwTwd??9???0i#px?f???,XE???? ??	?uߥ??LZ,?{??)??b???t|?nM.??d?N???
?db? 䗨z?g?j??^? ?ޔF?c?4?ܖ֏d???i2?t??S?<??"!??t ?  6T??z???Pa?&??9??x4PC?/S?2?̋?c?ΎOA?NH????qS2?x|w(Av????[????
?Za?[?~???x?o?<??R?~	???n,F??3?m?|???W?=C?!??vb??p??N?f?.??N????g}4UB???*o ?7I?ʖwl
??V???y=?0????Y??`??5=@<-?GF????j@/?AxU??????L#Ti?v?q?#.??!?%?)ߴ<x???؀6????E	?Mm????G?>k?????;?I????%n??qZ]Օ1|???v??Xp?x?o?s????O????Y6????_??v*{79b-?HV?? ??????5??,?c??k?*?~?K4Iu~8?c:5蠭fM?.ڬjC?tHJ???7?0,f?@Ae???EP
k4?E)z?-????#?n?g?$i"???*?W????.Ўm?γ??h????ʙ?j?۶?$?m?[?xKMHm	??VS??tﰚ??R??ioC?7??,Kq#???W?xM?--#
?x?@??F?+-?? Z?OP?$??`?C??,??v?h/??]??6~?hh/~??u??W???r?\?Ӊ???`ȗ?XO?]&䋍
?	??0R,???W????W???z??G?H?XW:]߈6??Pޖ	?M??M??P%V??P\?Y!??w???e$?-?z?K5/pSLXh?>l?E??M?w?e?$??ˏ??a?čr~{?@??笀Kf?V?q???`娕???l??????_E??khc ???4S??<??`???/&??@???T?7???"l{?????s?:=w.??8m??7% ??A$z??=??N+?R??(cȬ???d?? y??/?M?/C?iя^&v?[?z?&? ??M1????X??Ou8?c?[???@??E????)?\4?А??+???
??,???Ob???6>7Lm???uC?(??^??O?%???-!ɢԄ?jF5?/;?s????,????@???H??e?cK	P??
$-??A?E?????F*????fW:??_?}????"?Uu+?k8м??rE????ǟ????? ???"?C??zP?????U??s??h}??=??????S.?*>Pd~????/y??J{?W??@%?ND??_?0??????Х'Y??ʴ??nd?j0/?a??i?=?}?{?U?A??AP? :??{?I?}ݼژ?"?????d|??J+n??$??P???m??L?"?w??n?6?! >?r??Z>hB.?nXx??Q?ե????????搚5D=?* ??C;ͨ?Bp_[ ???z??0?^^?G?ʔlt?????aae!??ʳ`/????????8)?????<hj??wzVra0&l?_?4{`$s??N??Ė?g??2?4??mL6?z7ܾ?t??emhȥ`9N?x???nvc?????۫"??{ ??Z[?JZ??K?i?g?\H???PF??|??? e>?o?
Jع???ȉ?? ?*????(?(??&?:l>?d?8IM~??*H???"E??TP?????`?'??=?I?????7N3????:??e??t??3????????җ\3??Жg???ɬA?.}??t?Z?X?%?d?zW?T??=?gi???_,?CH?M??????O???S?GĲ??U??@????O??6`?󏿻m??6??߿W???ԿK?o??I?U??p?!sP;*??u????(?	T!D???] ?n(?W?$]?????vN_蹲? ?,f+4^?yd?k????G??8]??:,yÃ?8h?i??7?:???͎??l?^BDu???޽???eH?\??%???O????G?&Q?SQ L??ݰFX??(??l??8?A?e??$0o?q???O??`l}?9B?}8+>a7?ɾ??+?Q???p?-????y_|yg-۝{?xp?I"z???g???????/??Cx??4?}??0E?~???G_?q???? 8???u?<?TM?6?6??w??WT۹?#E??/??????qV??? M?J?8?reu?cS
???˧??UR?|???O?????V??U? %??Pb??????V?eq?ƃ	w??.>?5 ?0?1?????:H^??Qbj?????x?*?t?E?ꛃ?o3????OR?????1?}??8?|3?xc???܅??)p????K?????>N???&??)?*4?\??????_??3P?~??!r?)?~????v^,?z???B??????-???mq?5N><{??^???ϟz?po?l́aO?????-?1?????~?!/"? P\p,???6?ú?=?`???Z?x?~?R???????'k???y??'????و?@?y????K?@C??"?E???n?p߳W???d?Jq穇?x?????	????74L?c?Y?յ_?2n$p??y?B?{??3???`?d????fe !V?\C???{?oN??!?i???8BEѷ??Q_???A?i?#?????+????+??g???c?^FE?V???u3??k???~x=K???e6?˳??G??A?R??},????ޡ??.???Z????Jx????wevz????????|?	?7???F
?
x?b?8??㗿?`???̛??k?????N_D??N?G?7{??s???[???!??jE??p??:???;:??7??~??X????)?}X?eҕ?7?1???????w????lǱO???㼂???K?Ӎj?K?g??F??鉼???F)h??ǘ?0???%?b???k?爣?????H?BT??qڣ?+$?F???r4??.e?/晏LrM?8\֮?+?H(p????oQ??9ݐ?)8<u?I???ɴ?L&?.{????^q??^?ȴW???$?B	}>?E?6Oӕ??u[??n?"s|e?r+[<Ȱ??X^??????${
/?ݦ???R??\j?C<???n$s$??mWзl?C??w?_?+4??????9	:?}+?%<4??????ל???vx??M	?????#??s?????Gm?ٮ6w!>???_????}??(???k·p??>???!cS?`\???z???y???֦??g???l+??<??2?+\H?y??UK7??6??OMqI?{,?D??KKw\?.?f?G?ft$?FS?J?N틽iw?Q?hl??c?xZw??:?ŋ1˘?u~І^???&?v?E?dnN?sE?4o??k????&/P?酙???:FTWA?]?P?yT??h??!tJH9?L?{Sؓ7븿_Q?/?~?'hl#З?/ã?W w?2???&'??g???ؾP?@???m?ɯ?ҁӞo5???q=? ?y}?:??????tE?'uۢ????ׂ?.?J????MH?z?????????t:???g????!?}????R.?ڗJH??_?]=?ڬ??ˣ?V6Q???}:M??"?Zkj?G}n???????%???h??o]E?q?s??rqV&??O??"*?!'??????'?????0??=??]?? LV}l9??.????1?[a??\??U????'o??%?Z$?gj?ѮM?+q3B6ONu?;ޘX{???U?&? ???`??(?W}?uU???矞"\?f?"?ہ>y?(|)n?Ɏ?$<??8S??:?Sk?}=???[???????K=h????
?]MM?,wO1?!?"RE???[?B???`?S?M??l?0?6?Ͻ?q?wz.Q???JV?^!!??'??ۜ??:w??Xv0;?_~?bF?ۤ??R?`??Qj??Oa??L??͊9?A?_???$??'Ok?o???????nb?"?@I???;?@??????\i??7?\)H???Cu??M^?????1.C????? ??b???????E???_{???? ???????$??????濷??$????E????????????????i???      E      x?͛M?$9n???	???I???L&?i??}?̊?????Tw? UI<?G2??SN!?`D???晜???d?$g6_Sã1?Cˡ?K???B????????????lbD?2?/??fܗ?/????e?/I?!&h?\?lS?ȌͷQ????<?ϵ?^7i)x??+#?4toLqs?5???K?f????????!?j?\?ۜ?,?U??J???U??q??)nMZ/9?8h?jgJ*bL?a:??qY???e??vd????]?$&??Ҕ?Gm??Z?/є?Z?E?դT4?^?M????7|??6.?_暔?v?u????7l?Ki?ᦛ?ss?u????bی?5تn4??Mn5?????ƥ??\?m??b????Ö??Ar?sj??
k???$?$???6?z!k?????:FRV~???p?׏??>??????Q?%{m?r)?9O:J?&?f?
?Tɐ??5hs?z?J?~zӨ?n?b???_???>???k????Zd??1?K-?ԓ??R?b <?7?S??i[?ڦQՒ%??ei?xY????J??ݚ-z@?c}o?_5?ZdR{ZZou?@[Ю?Y'#?˦??????d???????/Q)?$??Oۑ2??ɵ?Y???LS??!?^b?&?0????????:HT??,???M??Op?-???[u?MN?޳[?5~?R?%ej(??my???o????%?DL???Eݴ??^gTº˖?Fu????k?HD6e??+mX??Mzr#]??-Ҧ???	0T*n?&G`???m?m????_?5)??P???k???dt?KT?j??a??U??H?H?8??u??ksH^?)??m`????~??>]?Ыk?~?#?LH?x??<XV??dcK?o?U?=?> .f?)RZ?N?H?̻k;??v?????m?:?^Zl???2??y?`̰?hh?֦?Y*PLV3?????/?-ϫ??!G?>?v붸??Yo$I-?? 5?9???`p?:??ζv;??L?YZo2???????lR????k?q+?=?tnb(??@Lm&?\??V?M2G힡?4/w?P23???2??fݗ	ρ9?????o?n??[?q@t<P>??4??????????W@?`z?6Pd??g~Wc~?b???u??u?>?v&t?ۣuP
ɩ????Sv?έM??H??Ր?
?Am?S???<3??3?N?i;?w	?յ\Y??ΚdKM?=u??????D?GL`??"$?[q@??"5T????b	?|?׭??)?,??k?t{???X!Y?1???l&s tt??*??d*?>3Q???f??]ƾi(?䟙??0??ɵ???"?e 5?	G??st?(m+?ĚB ma@?UTӝiZ????	̚??@E͕-?a??߻|???1??ȷZm??O??e?Dݠ4ޏ?;([PLv???K?IK/?60??~?r q????k`Ϯ]?Y???N9?  L??0???u5nR(?,??A5????ns?K?e?????M?zv?OW#?ډ????g?A?VyC0???7??v??c%Ҧq???r??]X??&???0D??k?????qx$eN?r????mmC	5?a*?V????B???&0??)?Ypڎ`????յKڨ??[h>??V???\??$?uc?&hb???@j?H7]2<Swc?Q????i;???=)o\;a???N??p?d ?t???α?>B<RU?-463??̈?|???un?????????|p?"0?`?H?X????*???m(???r=~n?PE3??^OB*?%0???.=??/??P!?
:팝?g????{G?Df0zͯZ?Q?d$?K?'? <Z??&cvM~=w??H?)|p???q??Y????.?|*????5h"?????B(?Δ=3b??ɕ????x?????p?%?W?NFfN4??b???*?ARh1???i?iV#3???ec?y???뛝\?Q???D???i;"?C?=?? jj?%~?P?a}???[եagUԛcX?^??j?⚮uoÂ??y},?c;}?>Ǹq?????f1Л???A??Yv/ot ?0V??Lu??c?DI??.??S1.?.:8?OA?`??k???.?L?[?f??2?T+?o?:???z'R?u?dһ??????E???{?????]???c6	e?9[#4???%?R?Բ	s?X???.&?%?g??F?o.??Ⱥ??????vR=40??d??I͕bZ????a?]N?2V? f3???D??7?!,~vڎ$ަ????Q?'?h#-0jKy?I?̰??
@09eÕ?]#?Iv?m`?????????,y???T?^P?K!?sB??D?L-o???ŋMud?ĺ?Z\??????׵??H?????v?&eӠS?jv	~j??1,?F̀Xw?q?P?nQ?J?/l??[??e??v@^l???!V??_)jM.$u1?
?Bf2?Q?????0?w?'?k?|????҇??~l?]?6|p??+zm􆴨i?f?L?G?Ҝ?-pɞ?q?)??A???%??C`HD???l?S?f?յ?c?VS?s?0/[??	?	??B?&??Uf)???2&???~??j,??7?f???????Nv?fUcH?~g7g@Q?N??~2?kTZ?'?@?)E'?,
?60?r??????k??];
??`?.Z?J??,=??vƮ?\??9?I?뛅1?3Pl??J,]W_?v??+?'?N???????U????)?"+???-̴x?:ڰ>????L|$U~??s?;0??\W_6h`N??V>?v??XTƒ??X`n?=s??m4?J?pkɌq?<?Z?^>?K_?+?e;<:?wƞ\;?2?5s?m?Ar??	ޣc2??l.{2??B??TY??~???g??wڎ???u??];ܲ??76??? ?f-@QIsks?FD=?I,egC?;%w?3_暖?v??!\q?ٵ{?1?C4	i=Ц?=??&???:?4-vkr?@mu???v??.h???sN?^3???????(5Uv~EV???٨?u?Ԇ+:?X?ȸ?*qe??}`????ز??\7?ɳ3?????)??\k1?8?? ?֢s+?d??a??>??{V????0|??C?߮?ÔB	??b4U?fY??-??*ܵ'f6J?O??,g??pe?:R???'?^?؏m?w?5??]?R/6CRJ?F??it??oA??L?fS?/v???Y?|?lE???>?U??՗?Х(?{???aK?t]'???F?첄ur?*S<n?)????f????A/??uyqX^?d_??ǆ?0?????V??EB?\??ȷ1-	?C?	8???i?u??5??݋3???e?NO???d?^V?m1?{????P6?R??[??????%H?z???j??]9\Kd,M??????\?u??$???*??ad??v????^??l??4????h\+???[B?ֻ9?ϫ??n??%?s????F??D?ݘёLt4A??dj (},%???????w"$?Z??V_?????	{?? ?뵴1@T??Z??遅?7??R[??T"?Z?*1?$?;h?K??^_?Jݵ??]{????Xo?Ax`#?/??)?j ???6g\KsxG??uީ??;p]?5W??c;Dͯ^}??A???@?U?(?6??9L[?ݘq?P##!?P&?%,I7?(f?|?ҏlG2*?p??oӲU?|IT4So??`????~*??:?⺗?0]xmj1?C0?>?g??>l?"U???k?s$?)??'J92?fy?,?z??[XY]~????T?vo?u?O`?%c??A?y>????C?#K<K??(??Lr7Mq???6??qгa??\e=mhu??z??~???u?e;?-????/?Һ2?????j?o??M???[?????)0?Z?3hR[?;??:O??O?ᬄp?سk??E?#U0??k`???<H?GP~Kp?j???^?Z?m?{m̦w?????*h?K?????????C?*?5/RE?7??c?ll?K??bPYmY??
Jl?e,?K*?Z??6x???i?q??l?	?K1*=??I?,M? ?  ?y??I?!G?k?;?j??jL?ZD?;??Yp??N?l?\?_?K?O?Z7????l????@炰3?2s<'1}???he?
ʻ?ǜT?????????9?p??gCZB_2?,Y?(hY????sC9e$TTx]D??!Q&???7??d,^???v????k?[S?d?2?Od?+???????6???p??1JO|?B?QH7ſVJ/???Z??{v???~݁Q?њ][GNJ_?5?[$?橾҈?@??DB???]???f???ч?0E???vZå??0`1v???????a.???f??Xd?ی?-???????s]}َ???{??0???`?Ͳg?|?? +?z?׍ ?~?MG?fU?$u<??????Za?퀇s??g?Nch??nMg@ N???&??@???l$??]wNL-Y?SC?g?ŷ?4^?9?_p??m}y?\{????RZ?? ???2(????&?V¯+?X???A?;=???/k/???#????kg 7?)?>a**?T?>?~@_?????t?#?e?Q???i?y?^??}3?N?ߙWx??vH^nd???, ?!1?yH3?D?yeƃ????l?=?'Ł??]O??u?s????P?3????Q?
4???M??U??T7#C)???^Z4??<??]]oW?zT 7??6c?,?KZN???uV]\?z;l????<P}??"?Z]Z?llN???AR???vnd??\?}?S?/g?a; ?Y?׎?D?L??A??YH?M???9M????@ڙ?n?~@??G??>??v?w5????éqϚ??kO?E?)?Xu?8qK??p?F ????%­-???<?9?(8?6??]??7Yj^?2?lG?l?~p??o??ؐ???????3?bR?N???D?4?G?әy"????????灔?C??????kOa2#j????U????z(?C	?4?P,d?Q?AR?J?&???-???1D|9G??61?Ab=?r?)o#??sB????cT???????:=PU?*?:?ᦕ???-#t?-?,?P?r.?a;?i??v?l͆????	?9??)mIq?????Ź?l?KY
*'zxt??.?ɟ7Y៤G???Z?C?Ņ|p?Y???f?mB0F?m	????5%+??)???q?Fc???͈???s?!?ӯǩ???FZ?\???g???U(???݊?g??'3?{y60jt??.?(?1?W~???.?u?ΘyY??v???????=??b\???~?E?R|(??????V???<??އ???S`?֧?=??z?8?y??3C?q,????#??[_f??|fDzXkZO????DA?&??*?.?sV??Rc?a;?&????8?I???IV?jK+&7?VR?????7?۴J??_?$???]d??1?$???????|p??l4??R??IC?H?5???n!???EWXϫ?v??;lc?7?";Zi?2O;??#????k?҃?v}'e??Bx??a?0j?Ά˜?u??w??Za???a?-????=H???r????l?H?O?~?^ z6g?a???[1??t??+?\?o5??p(?i?\G2J??w???翞??y؎ue?&*:?l??7??&	??1??Ai???G:`??0,?l}?$???N????՟?/???#?Şo??F????RllRdc[G?UT=?U?#i????Dt=?_o7??kt??????????a?QmN?Ϭa?!=7?>4Բ????????1J߷???O???i;$????Ph???????????!WT2??l(U&?(?j\/??'?'j?$??M??K>????v?R?
????????b]??K?????O?{??׈ )f??*???t4?_???V???Lό?Č ?
P|????7Ɇ???$????K????˶?r??p?????S%???K??ks?@??_o7?
?d&3?t????wh????x? ?
???s?????c+k??*)???PdmJ?J.??n7?KI?k??`G???P\?? zY??q?Z??Ehy.????%!?K4\p?x.?o?d^5??kaCPz3?:??w??u??^???v??z???[?0?Sg?Da?0n?y??8Lͅ-?2?_?<??:cI???V?񬵗??"[?#?e?ӆ???A?????+????dr>??????#ɍy??c?????=j      ?      x?????? ? ?      |      x?????? ? ?      1   ?   x??б?0???<E_ ?][*?????Rm??}^?SP'?i?4??/wvl??};???gUI?1`??C^(,?LrИc(Ue?_???>????,_????܅??7-??͛??MA
????3????B?(???3????<=>??UU?C?Ԍ??k?1%B?0?`??ѽˈٚ*@ȕ/??UE?????      f      x?????? ? ?      #   ?  x???MN?0FדS??<c;???ʏ@? ĲS?j??(M?(?a8c?-?ɋO??~y3?p*یm???6Fa?{o? %?a?S?ASh*?J?I?Tm%~??tpqz??wU?=?@/KN???q???=?&| !d?????\??????׌?o?6@???+]?	?QL??2L?Bc??f:o+!??vw[???"[?ˑ?Y?b??????????)\OC??d1[?ZdI?5?U?bA|O?D!U??$?????!?g?QGK?Q
?3?W?Ů?+;?&G?#?1S?t?P"1?~??p???M??ց),??j?d~|s7iU!?a??9???϶*(???#n?Pd:?q????C?x???/&N??{???P???L%?DK???{\OE?$??w??u      j      x?????? ? ?      ?   ?   x?͑M?@???+?-?쎣???ڥk?-?\q?K??+???5?????}`ه'хI?K???8?cY?f?-??3??QL+2`??!tj?fUo?????,E^o?m?{}?γ?IK]?D???w\tL?㸶82<\???o&?(?1??c?? ?dICh?wT???b?!4EG?(}A*???X?):8*??Ha????+dul`Kс/?vmu??u?x>Q      ?      x?????? ? ?      9      x?????? ? ?      r      x?????? ? ?      h      x?????? ? ?      C   _  x???=n1?k?)|	$E??? ?O???h??߿????? ?????Q_?????AwV???PD?{\i??v??D?:???0"E?'ȍ?eKh?Ug??y???@?	Kc7?d~_&?cr????????]l?`??w?????+p???7mX[?dd9?LZ8??q?e?)?V&?Ǒ?/?!h??0?J%?LZ?s?C0?????#C??????@?|?D]O????y[??????s˚??f?b??nU?
??7L?-vT)>;)????c?riTj?l3?a?J?a?8ޛ?g??s?c?#?Fq?ѐ$?My&z???c?a?cAJ?-?_y???Ia??3??y??i???,?/i_?      ?      x?????? ? ?      5      x?????? ? ?      v      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      U      x?????? ? ?      ?   ?   x?}??
?0???S?,M??YO???0vO^?(?6=??VA??H!???a???g?;GC??m???w1?D??5???ꦩw@?h#pC?:????L:2N(?!?N?ĥ!Tz?^?G?X8?s[Ut?~??c?????aVNƩs |??a?W?h??"#??????lz???j??з?&?ى3ƞ??MN      W      x?????? ? ?      ?   ?   x???1?0??9>E/ ?_B?p?.HP?C??*n_ÎY?[?lE??;???<;0?4?7I}@??-3??j?uZ,D??h$????q?`tT?Da??U??d?d$?Ty??e F?F"??-?Z??x?8/?v??s}5=Z"??Ec?      H      x?????? ? ?      '   L   x?3?4?40?#+-1?8( A
Hj????}Ei@hd`d?kh?kd?`hnebdel?gidafd?G?+F??? -?A?      %   (  x?}?MN?0?דS??_?dt[!$?݌?I?d?!M? ?NBK+???dK?F???O?vgZ??r???ɏ]??4?a????ѣ?8?{̣?F??/pn??l??U?1)Mǔ???V"Ӷ??iP?N?8\ʵ?z???&LΛV?V??n?6???ߞ]??	?W"???????!?u< ??f?BH?a?Od&????????q?q?+?C??W??u????C?R???N??b+?L)a???1??Q?e??DnrnZ%Zi?F?Z???O???????e )?h=^gp????PdY?.???      L      x?????? ? ?      3      x?????? ? ?      /      x?????? ? ?      G      x?????? ? ?      +      x?????? ? ?      ?      x?????? ? ?      O      x?????? ? ?      ~      x?????? ? ?      =      x?????? ? ?      ;      x?????? ? ?          I   x?3?LL??????!##C]C#]#sCK+S#+#=ScC3<R\F??9??y%81?3?????????? 9??      [      x?????? ? ?      Y      x?????? ? ?      p   ^   x?3?420??34?3?3??())(???O?,?(M?K???O?+??+*M??w?,?-O,J5j12?54?52W0??25?2??3?4224?#????? ?i?         ?  x?U?Ir?6?>L??8?%??G" ?xaW$?Z??1uʎi???'???/.??r???grq??/???DW\???{??Gm=??<%c???B???G?*CM??F???ո??E???oRiW{???a?[?$?[??u?[<??j?R#??$-*2?F???m͜?v㊌#f?n	?g??7??\?h?<|?B␔?B?<??]Y?7y?;P?DB?}?	?V?C(n????VwC????Ɲr?4@J)?4~??r?8?*|7??+?"_?Qd?W??F??{???QR9???h???%.?=<?#vY%[?=??g`?}z?H7Ɠd??c?h|??5??PRI6??鼨?=?g?4??.?ݑ?3?F?U??/?ˈ??*!w?ɫ??m?vDc?]FyFhL??<(?l?1K?h\?[????yQذ???,b?x? z_?@A??Ƈ?A?@????h??????????˷????>+e?4?5Z???-yF???4?j?V ˖?F#ws_dm?Ç??m?^Xx???⬮he??}v??3T???7Ѓʄ?M?A??%\\o E?l?ld?x-?u?G?H?C?uu%H??V???)?s?!??=ڳB&????????:?Ra
m?e?ۊr????ђE??L*??FCwQ?ٲ?????^zF??J7$??B???????????D??a?=?G???X?~??xU?????????j?      d      x?????? ? ?      n      x?????? ? ?      A      x?????? ? ?      )      x?????? ? ?      ?   >   x?3?tM????=?6?????H??P??D????????R???????TIfnjNf^*W? ?      z   x   x?3?4??VJ?KQ?RP20?20P?QPJJM??CI+J-,M?K??B?K+?K2sS?s+???S????Ӎ?GM5?(Ӎ?u?t?,ͭL???-?,-,?M?Hq??qqq R?      x   E   x?3?4?t+?K???K,??/?4202?54?5?T04?21?2??3011?0?'??[??_???Y????? ??R      -   x   x?3?TK,??/??R@X?id`d?kh?kd?`hiejdeb?g``jhd?G?ˈS?-?(71h???@s3<R\Ɯʞy?%E???y%?ž?řɉ9?ŜȢ
a|vY?????????? C?@?      t      x?????? ? ?      l      x?????? ? ?      Q      x?????? ? ?      ?   }   x?}̱?0D?Z??? ??(q??i3A??=?#0???ប??9??d??HCV?????K?P?qYZb$?G?Yq@g7??]??	!oM<?M?ꡜ?????R?>???"#a)A????֝j?/??0?         ?  x???Ys?L??ɯ?En??޴U_U?ĉ{P?VsC?,n?~?k45???h?,??{?MߎǶ?????O#!L(#B{??B??|?o9A??mۦ??
5?Ӈ?q&nN}:???aVJ3?S?F?Y?r3??c?h??_<?T?="???=?Y???????:Ð???_??%8R?O?5|8b?~??6???nA?4g6???ɢ??L???N???oSkn?
NjC?k-3???????&?P?/?<???BuJ??.!??o!"-J>???x??e??%?3?:zȝ??ٹV?2??a?;?O704??މ???G??-??;??s???Ϩ????=Y,?TP琣+%???HI?R???K?Չ?@q?v???הN??I?4t!?P??? =9???K?|???????L????og?4={??l?Y?,?坢?N???*y?do~??\??$??@?*??B??20:?| P?R????^??=?*>j%wv????4?)?$?וn??)ʌ?@4??v>?ʞ??nL??k??%??_??'"q:??#??H?? Hg?j	K????%?J1,?$Rq?v1t?P|?|OE4??3;???????d?^?1~???Gw?jFe???????[?*??؄?^g???^Xxs???'????"?e`??i_+!?????mG??KyT	?#??2??c???A?????x_8???W\??'??????a9???JJ<?s????0T???Ꟶ?`]????i?6?C???M?~?ᕻX???W?^<v?F*??TM$.*
*-?D?U?PJ!??Ǳr???}???????ӵ???j??,??H?Q??^?-?V????ǽѠ???<u? ??&?G????J??\g?\yW??jb???Z??????	%?-??n?e>?mςsc??{f?S???R?'?x????>?v??b5?*?]???S??}????????Jn?Kr?|<?v???Љ?0v7Br?}b??,1(,??FcԞ?j?_]????ad?o???T?$??E?Wg??d???LA?u,???
}J???`<i???????bDL%!???;??p??Zs
??Ѫ?4?;{E??g'??w??3???`+\}??ʩ?
<?<?\??V??)???ZzF)g?ɼ??>0%Z۰c?O?|??W?%????C~????? ??&      !   '   x?3?4?2?4?2b 6b3 6b ????qqq h"?      S      x?????? ? ?      7      x?????? ? ?     