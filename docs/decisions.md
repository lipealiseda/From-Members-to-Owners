# Decisions log

Every choice about scope, data and method goes here with the reason behind it, so anyone reading the results can see what was decided and why. Newest at the bottom.

## Phase 0, November 2026

**Treated clubs.** Every SAF that spent real time in Série A or B and has usable financial statements. This gives more clubs than only the big five conversions (Cruzeiro, Botafogo, Vasco, Bahia, Atlético Mineiro), which matters because the owner type groups will be small.

**Seasons.** The data stops at the 2025 season. Atlético Mineiro converted in November 2023, so it only has two seasons after becoming a SAF. The README carries a disclaimer about this.

**Control clubs.** Clubs that are still member associations. A SAF club is compared with association clubs from the same division (Série A with Série A, Série B with Série B).

**What counts as "after".** Each club gets one long SAF period starting from its conversion date. Changes of owner inside that period (Ronaldo selling Cruzeiro to Pedro Lourenço in 2024) do not split it, because the question is about before and after becoming a SAF. A club going back to being run by its association would be a problem, see open questions.

**Financial health.** Two measures, total debt divided by revenue and the wage bill as a share of revenue.

**Owner types.** Multi club group, single rich owner, local investors. The follow up section checks whether results on the pitch differ by owner type.

**Global section.** Spain, Chile, Portugal and Italy, on field side only where the financial data is too thin. It is fine if this part ends up lighter than the Brazil part.

**Tools.** R with tidyverse, ggplot2, fixest, worldfootballR and pdftools. renv for package versions, Quarto for notebooks.

**Tools.** I have no R experience yet, so Claude writes the code and explains it. Claude's workspace cannot install R, so the R code runs on GitHub's servers through GitHub Actions (`.github/workflows/run-r.yml`). Every push to a branch other than main runs it and saves the results and a log back to the branch.

## Phase 1, November 2026

**Vasco is dropped.** In May 2024 a Rio court suspended 777 Partners' control and handed the Vasco SAF back to the association, which still runs it. That leaves about one clean season as a real SAF (2023), too little to say anything. Vasco can come back as a side story.

**Control clubs are Série A association clubs.** Cruzeiro and Botafogo converted while in Série B and went up soon after, so comparing only within the same division each season would mix the SAF effect with promotion. All SAF clubs get compared with association clubs in Série A. This replaces the "same division" rule from Phase 0. The difference in differences model compares changes, so it already allows Série B clubs to start from a lower level. What it needs is that both groups would have moved the same way without the SAF, which gets checked with the seasons before conversion.

**Results on the pitch.** Two measures, points per game and one league position across both divisions (Série B 1st place counts as 21st).
