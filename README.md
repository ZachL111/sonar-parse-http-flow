# sonar-parse-http-flow

`sonar-parse-http-flow` explores parsers with a small Ruby codebase and local fixtures. The technical goal is to implement a Ruby parsers project for http state machine modeling, using transition tables and invalid-transition tests.

## Use Case

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Sonar Parse HTTP Flow Review Notes

`stale` and `baseline` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Highlights

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/sonar-parse-http-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `token drift` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Ruby implementation avoids hidden state so fixture changes are easy to reason about.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The same command runs the local verification path. The highest-scoring domain case is `stale` at 223, which lands in `ship`. The most cautious case is `baseline` at 82, which lands in `hold`.

## Future Work

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
