create table hibernate_sequence (next_val bigint) ;
 insert into hibernate_sequence values ( 1 );
 insert into hibernate_sequence values ( 1 );

create table Usr (
                      id bigint not null,
                      username varchar(255),
                      first_name varchar(255),
                      last_name varchar(255),
                      password varchar(255),
                      email varchar(255),
                      created_at Date,
                      primary key (id),

                      activation_code varchar(255),
                      active bit not null
);

create table Article (
                         id bigint not null,
                         title varchar(255),
                         text varchar(2048),
                         status ENUM('public','draft'),
                         author_id bigint,
                         created_at Date,
                         updated_at Date,
                         primary key (id)
);

create table Tag (
                     id bigint,
                     name varchar(255),
                     primary key(id)
);

create table Comment (
                         id bigint,
                         message varchar(255),
                         post_id bigint,
                         author_id bigint,
                         created_at Date
);

create table User_role (
                           user_id bigint not null,
                           roles varchar(255)) ;


create table Article_tag (
                             article_id bigint,
                             tag_id bigint
);

alter table User_role add constraint foreign key(user_id) references Usr (id);
alter table Comment add constraint foreign key(post_id) references Article (id);
alter table Comment add constraint foreign key(author_id) references Usr (id);
alter table Article add constraint foreign key(author_id) references Usr (id);
alter table Article_tag add constraint foreign key (article_id) references Article (id);
alter table Article_tag add constraint foreign key (tag_id) references Tag (id);
