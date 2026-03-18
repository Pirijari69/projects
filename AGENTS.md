# AGENTS.md

## Repository rules

- Treat this repository as the source of truth.
- Use `scripts/codex/setup.sh` as the canonical setup path.
- If setup fails, fix the setup script in the repo instead of working around it ad hoc.
- Keep live trading disabled by default.
- Never hardcode secrets.
- Always run lint, type checks, and tests before finalizing changes when the environment allows.
- Prefer direct Binance-specific handling over generic abstractions when correctness matters.
- Log all Telegram command accept/reject outcomes.
- Do not remove runtime symbol validation.
- Document any symbol substitution explicitly, including MATICUSDT -> POLUSDT if applicable.
