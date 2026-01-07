-- Active: 1767804029560@@127.0.0.1@5432@postgres
create user suporte_estagio 
with password 'estagiario123';

grant update on reservas to  suporte_estagio;

grant select on all tables  in  schema public to suporte_estagio;

