# sonar-parse-http-flow

`sonar-parse-http-flow` packages a practical parsers exercise in Ruby. The emphasis is on deterministic behavior, a small public API, and examples that explain the tradeoffs.

## How I Read Sonar Parse HTTP Flow

The useful thing to inspect here is how the same score rule is represented in code, metadata, and examples. If those three pieces disagree, the audit script should make the drift visible.

## Internal Model

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Ruby code keeps the module small and leans on Minitest for direct fixture checks.

## Problem Shape

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Main Behaviors

- Uses fixture data to keep error labels changes visible in code review.
- Includes extended examples for grammar boundaries, including `recovery` and `degraded`.
- Documents golden examples tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.

## Scenario Walkthrough

`recovery` is the first example I would inspect because it lands on the `accept` path with a score of 243. The broader file also keeps `degraded` at -21 and `recovery` at 243, which gives the model a useful low-to-high spread.

## Repository Map

- `lib`: library code
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Run It Locally

Install Ruby and run the commands from the repository root. The project does not need credentials or a hosted service.

## How To Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Validation

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Known Edges

The scoring model is simple by design. More domain-specific behavior should be added through explicit adapters or extra fixture classes rather than hidden constants.

## Follow-Up Work

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more parsers fixture that focuses on a malformed or borderline input.
