insert into usr (id, username, password, active)
values ('b599a6b9-8936-4829-bdf3-3494ddc9e781', 'admin', 123, true);

insert into usr_role (usr_id, roles)
values ('b599a6b9-8936-4829-bdf3-3494ddc9e781', 'USER'),
       ('b599a6b9-8936-4829-bdf3-3494ddc9e781', 'ADMIN');