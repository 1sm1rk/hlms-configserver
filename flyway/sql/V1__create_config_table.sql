/* create timestamp trigger function */
CREATE OR REPLACE FUNCTION trigger_set_timestamp()
RETURNS TRIGGER AS $$
BEGIN
  NEW.CREATED_ON = NOW();
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

/* create config properties table */
create table properties (
    id Serial,
    CREATED_ON timestamp DEFAULT now() ,
    APPLICATION varchar(255),
    PROFILE varchar(255),
    LABEL varchar(255),
    PROP_KEY varchar(255),
    VALUE varchar(255), primary key (id)
);

/* create trigger on properties table to update timestamp */
CREATE TRIGGER set_timestamp
    BEFORE UPDATE ON properties
    FOR EACH ROW
    EXECUTE PROCEDURE trigger_set_timestamp();