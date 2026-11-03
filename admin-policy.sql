-- 관리자 삭제 권한 설정용 SQL
-- 1) Supabase Authentication > Users 에서 관리자 계정을 만든 뒤
-- 2) 아래 ADMIN_EMAIL 값을 실제 관리자 이메일로 변경하고 실행하세요.

drop policy if exists "admin delete scores" on public.scores;

create policy "admin delete scores"
on public.scores
for delete
to authenticated
using (
  auth.jwt() ->> 'email' = 'ADMIN_EMAIL'
);

-- 참고:
-- 기존 SELECT/INSERT/UPDATE 정책은 그대로 유지됩니다.
-- DELETE는 위 이메일로 로그인한 인증 사용자만 허용됩니다.
