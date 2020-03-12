create table message (
    id       uuid not null,
    filename varchar(255),
    tag      varchar(255),
    text     varchar(2048),
    usr_id   uuid,
    primary key (id)
);

create table usr (
    id              uuid    not null,
    activation_code varchar(255),
    active          boolean not null,
    email           varchar(255),
    password        varchar(255) not null,
    username        varchar(255) not null,
    primary key (id)
);

create table usr_role (
    usr_id uuid not null,
    roles  varchar(255)
);

alter table if exists message
    add constraint fk_message_user foreign key (usr_id) references usr;

alter table if exists usr_role
    add constraint fk_user_role_user foreign key (usr_id) references usr;