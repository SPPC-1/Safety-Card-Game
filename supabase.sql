create table if not exists public.scores (
  name text primary key,
  score numeric not null check (score >= 0 and score <= 100),
  pairs integer not null check (pairs between 0 and 10),
  remaining numeric not null check (remaining between 0 and 30),
  tries integer not null check (tries >= 0),
  updated_at timestamptz not null default now()
);

alter table public.scores enable row level security;

create policy "public read scores" on public.scores for select using (true);
create policy "public insert scores" on public.scores for insert with check (true);
create policy "public update scores" on public.scores for update using (true) with check (true);
