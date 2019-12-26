CREATE TABLE IF NOT EXISTS postbox (
    ref character varying(10) UNIQUE NOT NULL,
    postcode character varying(10) NOT NULL,
    loc1 character varying(255) NOT NULL,
    loc2 character varying(255) NOT NULL,
    lat double precision,
    lon double precision,
    whenlocated timestamp NULL,
    username text,
    last_week time,
    last_sat time,
    gone boolean DEFAULT false NOT NULL,
    gone_reason text
);

CREATE TABLE IF NOT EXISTS postbox_noref (
    lat double precision NOT NULL,
    lon double precision NOT NULL,
    done boolean
);
