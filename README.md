# From members to owners

What happens to a football club when its members hand it over to a company? In 2021 Brazil passed the SAF law (Lei 14.193), which lets clubs move their football into a company that investors can buy. By the end of 2025 there were about 117 SAFs, including big names like Cruzeiro, Botafogo, Bahia and Atlético Mineiro. Clubs that stayed member owned, like Flamengo and Palmeiras, give a natural comparison.

I want to know what these clubs actually got out of it. Did they spend to win, or did they fix their books? And does it matter who bought them?

Brazil is the newest case of something other countries already went through. Spain forced most clubs to become companies (SADs) in 1990, while Real Madrid, Barcelona, Athletic and Osasuna stayed member owned. Chile did something similar in 2005, and Portugal and Italy have their own versions. So the last part of the project puts Brazil next to them.

> **Work in progress.** The table below shows where the project is.

## Questions

1. **Main question.** When a club becomes a company, does it trade financial health for results on the pitch, or the other way around? For each club I measure both sides and see where it lands between "spent to win" and "fixed the books".
2. **Does the owner matter?** I compare owner types. Multi club groups (City Group at Bahia), a single rich owner (Cruzeiro) and local investors (Atlético Mineiro).
3. **How does Brazil compare?** The same on field analysis for Spain, Chile, Portugal and Italy.

## Plan

| Phase | What | Status |
|---|---|---|
| 0 | Scope and decisions | done |
| 1 | Repo setup | done, renv.lock still to generate |
| 2 | Literature check | next |
| 3 | Data collection (club list, results, squad values, transfers, financial statements) | |
| 4 | One tidy club by season dataset | |
| 5 | Brazil analysis, before and after plus difference in differences | |
| 6 | Owner type comparison | |
| 7 | Global comparison | |
| 8 | Write up | |

Every decision and the reason for it is in [docs/decisions.md](docs/decisions.md).

## Data

Brazilian clubs publish audited financial statements every year, so the ten years before each conversion are covered. Those come as PDFs and get read with pdftools plus manual checks. Results, squad values and transfers come from Transfermarkt and FBref through worldfootballR. Every source will be listed in docs/sources.md.

**Disclaimer.** The data stops at the 2025 season. Clubs that converted late, like Atlético Mineiro in November 2023, only have two seasons as a SAF, so their results are early signs at best.

## Repository layout

```
run_all.R        runs every stage in order
R/               all code, one script per step
notebooks/       Quarto notebooks that walk through the analysis
data/raw/        downloads and club PDFs, not in git (the scripts rebuild them)
data/manual/     numbers typed in or checked by hand from the PDFs
data/processed/  clean tables the analysis uses
figures/         charts
results/         model output and tables
docs/            decisions log, sources, data dictionary
tests/           checks on the data and code
```

Vasco converted in 2022 but is left out, because a court gave control back to its association in May 2024. The reason is in the decisions log.

## Reproduce it

You need R 4.3 or newer.

```bash
Rscript R/00_setup.R   # installs the exact package versions with renv
Rscript run_all.R      # every stage in order
Rscript run_all.R --list
```

The code also runs on GitHub Actions on every push to a branch other than main. The log of the last run is in `logs/last_run.log`.

## Licence

MIT for the code. Data keeps the licence of its source.
