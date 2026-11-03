# What has already been studied

Phase 2 check, November 2026. The goal was to find out what is already known about clubs becoming companies, so this project adds something new and doesn't repeat old work. Searches covered Brazil (SAF), Spain (SAD), Chile (SADP), Portugal (SAD), club IPOs and owner types, in English, Portuguese and Spanish. Italy was not searched in depth yet and gets checked in Phase 7.

## Brazil and the SAF

There is a lot written about SAFs already, but most of it is descriptive. Many undergrad theses and short papers look at one club's statements before and after (Cruzeiro, Vasco, América MG) or read the law. Very few use a comparison group, and none found here measures both finances and results with a long pre period.

| Study | What they did | What they found |
|---|---|---|
| [Sousa et al., USP accounting congress](https://congressousp.fipecafi.org/Arquivos/45/Anais/6240%20.pdf) | Panel of the 26 clubs that played Série A in 2022 to 2024, club and year fixed effects, SAF as a yes or no variable, points weighted by division | SAF coefficient negative and not significant. Squad market value is what predicts results. No years before 2022, no DiD, finances only used as controls |
| [Gomes and Santos 2026, E&S Journal](https://revistaes.com.br/resumo-executivo/efeito-do-aporte-financeiro-das-safs-no-desempenho-de-clubes-de-futebol-brasileiro?lang=en) | Série A matches 2007 to 2024, Transfermarkt squad values, random forest and logistic models | SAF status has almost no predictive power on its own. Any effect seems to run through squad value |
| [Nunes et al. 2026, Revista Ibero Americana de Estratégia](https://periodicos.uninove.br/riae/article/view/30928) | Long qualitative case study of Cruzeiro | The SAF helped with debt restructuring, investment and governance. Better results came from leadership and management choices, which the law alone doesn't explain |
| [Nielsen and Carvalho, UFPR](https://static.even3.com/anais/1228055.pdf) | Earnings management in club statements before and after SAF | Found a significant difference between pre and post SAF periods in how much clubs manage their accounting numbers |
| [Gasparetto et al., Leeds Beckett](https://eprints.leedsbeckett.ac.uk/id/eprint/11445/1/FinancialAndSportingEfficiencyAndProductivityInBrazilianFootballClubsAM-GASPARETTO.pdf) | Financial and sporting efficiency of Brazilian clubs 2014 to 2022 | Useful background on how debt relates to performance in Brazil before the SAF wave |

## Clubs becoming companies in other countries

**Spain.** The closest study to ours is a [2014 Zaragoza thesis by Alicia García Lafuente](https://zaguan.unizar.es/record/15714/files/TAZ-TFG-2014-1350.pdf). It uses 16 Primera División clubs from 1980/81 to 2010/11, team and year fixed effects and an event study by years since conversion, with Real Madrid, Barcelona, Athletic and Osasuna as the clubs that stayed member owned. It found no clear short run effect on league position, and better results only 10 to 15 years after converting. Many of its coefficients are only significant at the 10% level, and results change when Real Madrid and Barcelona are dropped. It does not model finances. The history of how the 1990 law came about is in [García Martí, Gómez López and Durán González 2016](https://polired.upm.es/index.php/materiales_historia_deporte/article/download/4102/4150/15241).

**Chile.** Most of the work is legal or about fans and identity. The one performance study found is a [USM thesis by Gabriel Morales Carreño](https://repositorio.usm.cl/bitstreams/d785fd31-9db4-4812-8265-1cde77a69af8/download) that fits time series models to eight clubs one at a time, with no comparison group. Chile has since changed the 2005 law with [Ley 21.824](https://www.bcn.cl/leychile/navegar?idNorma=1224810), which adds supervision and fan ownership rules.

**Portugal.** Studies on Portuguese SADs focus on the share prices and finances of Benfica, Porto and Sporting. Nothing found tests what converting into a SAD did to results.

## IPOs and owner types

| Study | What they found |
|---|---|
| [Baur and McKeating 2011, International Journal of Sport Finance](https://ideas.repec.org/a/jsf/intjsf/v6y2011i1p40-59.html) | Results don't improve on average after an IPO. Only lower division clubs benefit. The 2009 working paper version reported worse domestic and international results after listing |
| [Wharton thesis 2019, "Why Are Sports Team IPOs Uncommon?"](https://repository.upenn.edu/handle/20.500.14332/37877) | Small positive change in points per game after an IPO, and listing helps clubs cut debt |
| [Rohde and Breuer 2016, Applied Economics and Finance](https://ideas.repec.org/a/rfa/aefjnl/v3y2016i2p243-255.html) | In the Premier League, private majority owners raise team spending and lower profits, and the spending effect comes mostly from foreign owners |
| [Rohde and Breuer 2018, Sport Management Review](https://econpapers.repec.org/RePEc:taf:rsmrxx:v:21:y:2018:i:5:p:563-581) | Foreign owners make clubs less efficient both financially and on the pitch |
| [Quansah, Lang and Frick 2026, European Sport Management Quarterly](https://api.unil.ch/iris/server/api/core/bitstreams/e6d7d9ae-ef49-4b4f-bddd-5f4064187a83/content) | 116 multi club owned clubs against 232 matched independent clubs, DiD with Sun and Abraham, 46 leagues including Brazil. Joining a multi club group did not improve league position in the three seasons after |

## Where this project adds something

1. **Both sides at once.** No study found puts financial health and results on the pitch together for the same SAF clubs, with ten years of statements before conversion and a comparison group.
2. **Série B.** The existing panel only covers clubs that played Série A from 2022. Cruzeiro and Botafogo converted while in Série B, so they are mostly missing from it.
3. **Owner type inside Brazil.** Quansah, Lang and Frick test multi club groups worldwide, but nobody compares multi club groups, single rich owners and local investors among SAFs.
4. **One method across countries.** Spain has one thesis and Chile one, each with its own method. Running the same design for Brazil, Spain and Chile is new.

The plain question "does an IPO help a club" is covered, which confirms the choice made earlier to focus on SAFs and corporatization.

## What this changes in the plan

1. **Debt can drop just on paper.** The SAF law lets the old debt stay with the association, which pays it off over time through a centralized repayment plan, while the new SAF starts much cleaner ([summary of the law](https://en.wikipedia.org/wiki/Sociedade_An%C3%B4nima_do_Futebol)). If we only read the SAF's own statements, debt divided by revenue will fall after conversion even if nothing really got better. This needs a decision before Phase 3.
2. **Don't control for squad value in the main model.** Two Brazilian studies find squad value is how money turns into results. If the model holds squad value fixed, it hides the very thing the SAF might change. Squad value goes in as a result of its own.
3. **Copy the good design choices.** Quansah, Lang and Frick use league position normalized across divisions, an event study by season and the Sun and Abraham estimator. Our plan already matches this, which makes the results easy to compare with theirs.
4. **Be honest about Spain.** The Spain part extends García Lafuente's thesis with more seasons and squad values. The README should say so.
5. **Pre and post accounting may differ.** Nielsen and Carvalho find accounting behaviour changes after the SAF, so the financial numbers from the PDFs need extra checking around the conversion year.
