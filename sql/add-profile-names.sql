-- Добавляет поля имени и фамилии в профили пользователей.
-- Выполнить один раз в Supabase SQL Editor проекта.

alter table public.profiles
  add column if not exists first_name text,
  add column if not exists last_name text;

comment on column public.profiles.first_name is 'Имя пользователя';
comment on column public.profiles.last_name is 'Фамилия пользователя';
