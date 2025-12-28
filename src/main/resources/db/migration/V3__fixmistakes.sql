ALTER TABLE users 
drop column state;
ALTER TABLE addresses
add state varchar(255) not null;
