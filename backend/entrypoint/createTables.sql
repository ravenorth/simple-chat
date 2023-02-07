CREATE TABLE chat_user(
    username character varying(255) NOT NULL,
    user_password character varying(255),
    PRIMARY KEY(username)
);

CREATE TABLE user_message(
    id SERIAL NOT NULL,
    chat_user_name character varying(255),
    msg text DEFAULT 'DELETED USER'::text,
    create_time timestamp without time zone NOT NULL DEFAULT now(),
    PRIMARY KEY(id),
    CONSTRAINT user_message_chat_user_name_fkey FOREIGN key(chat_user_name) REFERENCES chat_user(username)
);
