create table profiles(
    id bigint ,
    bio TEXT,
    phone_number varchar(255),
    date_of_birth DATE,
    loyalty_points int unsigned default 0,
    constraint profiles_pk primary key(id),
    constraint user_id_fk foreign key (id) references users(id)
);
create table tags(
    id int auto_increment,
    name varchar(255) not null,
    constraint tags_pk primary key(id)
);
create table user_tags(
    user_id bigint not null,
    tag_id int not null,
    constraint user_tags_pk primary key(user_id,tag_id),
    constraint usertag_user_fk foreign key (user_id) references users(id),
    constraint usertag_tag_fk foreign key (tag_id) references tags(id)
);

