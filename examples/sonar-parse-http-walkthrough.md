# Sonar Parse HTTP Flow Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 82 | hold |
| stress | grammar width | 112 | watch |
| edge | label quality | 176 | ship |
| recovery | error locality | 191 | ship |
| stale | token drift | 223 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around grammar width and error locality.
