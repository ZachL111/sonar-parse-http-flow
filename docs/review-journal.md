# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 82, lane `hold`
- `stress`: `grammar width`, score 112, lane `watch`
- `edge`: `label quality`, score 176, lane `ship`
- `recovery`: `error locality`, score 191, lane `ship`
- `stale`: `token drift`, score 223, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
