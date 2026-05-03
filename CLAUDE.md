# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A shared conventions library for Tauri 2 / Rust / React projects. It contains only markdown docs and a sync script — no application code. Downstream projects pull docs via `sync-conventions.sh`.

## Commands

```bash
just format          # run prettier over all docs and README
./sync-conventions.sh  # self-updates then re-fetches all docs into docs/
```

## Adding or editing docs

- All convention docs live in `docs/` and are pulled by downstream projects verbatim.
- The list of synced files is maintained in `sync-conventions.sh` (`FILES` array). Add a new filename there when adding a new doc.
- Update the table in `README.md` to match.
- Each doc must include the header warning: `**AI AGENT SHOULD NEVER UPDATE THIS DOCUMENT**` — these docs are authoritative references consumed by agents in other repos, not editable by them.
- Rule numbers (e.g. B1, F3) are explicitly unstable across versions; do not renumber.

## Doc conventions

- Backend rules (`backend-rules.md`): Rust DDD — bounded contexts in `context/`, use cases in `use_cases/`, wiring in `lib.rs`. Key invariants: no cross-context imports, `api.rs` is the only Tauri-aware layer, specta commands registered only in `core/specta_builder.rs`.
- Frontend rules (`frontend-rules.md`): React features are bounded contexts — no cross-feature imports except via router. `gateway.ts` is the only file allowed to call Tauri commands. `isMounted` guard must be a local `let` per effect, not a shared `useRef`.
- i18n rules (`i18n-rules.md`): all user-visible text in `.tsx` files must use `t("key")`; key format is `{domain}.{component}.{element}`; all locales must carry the same key set.
