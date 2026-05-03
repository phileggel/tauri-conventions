# tauri-conventions

Shared coding conventions for Tauri 2 / Rust / React projects.

## Docs

| File                            | Purpose                                                  |
| ------------------------------- | -------------------------------------------------------- |
| `docs/backend-rules.md`         | Rust DDD structure, aggregates, services, repositories   |
| `docs/frontend-rules.md`        | React feature layout, components, hooks, navigation      |
| `docs/e2e-rules.md`             | WebdriverIO testability rules (selectors, React inputs)  |
| `docs/test_convention.md`       | Testing strategy and patterns (frontend + backend tiers) |
| `docs/ddd-reference.md`         | DDD concept reference for this stack                     |
| `docs/i18n-rules.md`            | i18n rules — all user-visible text via `t()`, key format |
| `docs/frontend-visual-proof.md` | Visual proof rules — screenshots required for UI changes |

## Setup

Bootstrap the sync script into your project (run once from your project root):

```bash
curl -fsSL https://raw.githubusercontent.com/phileggel/tauri-conventions/main/sync-conventions.sh -o sync-conventions.sh && chmod +x sync-conventions.sh
```

Then pull the latest convention docs:

```bash
./sync-conventions.sh
```

Add a recipe to your `justfile` to make it easy to update:

```just
sync-conventions:
    ./sync-conventions.sh
```

## Updating

Run `./sync-conventions.sh` from your project root at any time. The script self-updates before syncing docs.

## License

MIT — see [LICENSE](LICENSE).
