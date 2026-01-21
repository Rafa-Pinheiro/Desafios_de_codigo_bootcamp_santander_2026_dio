DO
$$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'db_tcgpokemon_cards'
   ) THEN
      PERFORM dblink_exec(
         'dbname=' || current_database(),
         'CREATE DATABASE db_tcgpokemon_cards
            WITH
            OWNER = postgres
            ENCODING = ''UTF8''
            LOCALE_PROVIDER = ''libc''
            CONNECTION LIMIT = -1
            IS_TEMPLATE = False;'
      );
   END IF;
END
$$;

