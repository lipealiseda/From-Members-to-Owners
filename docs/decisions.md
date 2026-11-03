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

## Open questions

1. Vasco. In May 2024 a Rio court suspended 777 Partners' control and handed the Vasco SAF back to the association. The SAF still exists on paper, but the association runs it. How to treat Vasco from 2024 on.
2. Division matching. Cruzeiro, Botafogo and Vasco all converted while in Série B and were promoted soon after. Comparing only within the same division each season would mix the SAF effect with promotion.
3. Results measures. Financial health has its two measures. Results on the pitch still need theirs.
