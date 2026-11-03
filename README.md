# 중대재해 예방 경진대회 - 안전카드 기억력 챌린지

## 게임 구성
- 4x5 카드, 10쌍
- 5초 암기
- 30초 제한
- 성공 80점 + 시간 15점 + 정확도 5점 = 100점 만점
- 오답 0.7초 표시, 다른 카드 즉시 선택 가능
- 100ms 중복 입력 차단 + 2장 단위 독립 판정
- TOP 10
- 동일 이름은 최고 기록 1건만 유지하도록 DB 기본키를 name으로 구성

## 공용 TOP 10 활성화
1. Supabase 새 프로젝트 생성
2. SQL Editor에서 `supabase.sql` 실행
3. Project Settings > API에서 Project URL과 anon public key 확인
4. `index.html`의 CFG 값을 교체
   - SUPABASE_URL
   - SUPABASE_ANON_KEY
5. GitHub Pages에서 main / (root)로 배포

## 참고
현재 UPSERT는 동일 이름의 새 기록으로 덮어씁니다. 행사 운영에서 최고점만 유지하도록 하려면 추후 DB 함수 또는 서버측 로직으로 보강할 수 있습니다.
