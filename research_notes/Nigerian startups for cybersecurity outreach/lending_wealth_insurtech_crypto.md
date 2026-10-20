# Nigerian Lending, Savings/Wealth, Insurtech, PensionTech and Crypto/Stablecoin Startups: Outreach Targets for a Beginner Cybersecurity Freelancer

Research date: 2026-10-20. Desk research only. No company was scanned or tested, and no `/.well-known/security.txt` file was fetched, so the security.txt / VDP status of every company below is UNVERIFIED unless stated. Two news domains (techcabal.com, businessday.ng) failed DNS from the research environment, so some facts rely on search-result summaries of those articles. These are cited, but the full pages should be re-checked before quoting. No contact emails are given. The best outreach channel is inferred: founder LinkedIn/X or the company's LinkedIn page.

Out of scope and excluded (covered by another researcher): payments, neobank and BaaS companies (Paystack, Flutterwave, Moniepoint, Kuda, Opay, Palmpay, Fincra, Anchor, Brass, Mono, Okra), plus remittance apps such as LemFi and Raenest.

---

## Q1: Which smaller Nigerian lending/wealth/insurtech/pension/crypto startups are active and funded in 2025–2026?

### Takeaway
About 18 candidates show activity in 2025–2026: news, product launches, licences or funding. Disclosed equity rounds in this segment are mostly old (2021–2023). Recent capital is mostly debt or commercial paper (Sycamore), small grants (Bamboo) or soft commitments (Blockradar). Pitches should therefore lean on regulatory pressure rather than "you just raised." Headcount figures could not be sourced for most companies (see Gaps).

### Cited Findings: company profiles

**A. DIGITAL LENDING / BNPL / LENDING INFRA**

1. **Sycamore** (P2P/digital lending and wealth). HQ Lagos.
   - The company opened a ₦3bn commercial-paper offer on 9 March 2026 under a ₦20bn CP programme. The offer had two ₦1.5bn tranches at 24–25% yields. BAS Capital was lead arranger, DataPro rated it BBB+/A2, and proceeds were to fund lending capacity. — [Nairametrics, 13 Mar 2026](https://nairametrics.com/2026/03/13/sycamore-opens-₦3-billion-commercial-paper-offer-to-investors-under-₦20-billion-programme-early-subscriptions-underway/)
   - In May 2025 it was raising ₦1bn (~$628k) to complete a $1.5M debt round, a week after securing ₦1.5bn from Cascador. — [TechCabal, 30 May 2025](https://techcabal.com/2025/05/30/sycamore-debt/); [Bridge MENA](https://bridgemena.com/news/sycamore-finalizes-1-5m-debt-financing-round)
   - Security exposure: it holds both borrower and investor KYC/BVN data, so account-takeover (ATO) risk on investor wallets is relevant. It falls under the FCCPC 2025 digital lending regulations. A public CP issuance means more investor and rating scrutiny.
   - Service fit: NDPA gap assessment, external attack-surface and email-authentication review (SPF/DKIM/DMARC), and phishing training for support staff.
   - Founders, founding year and headcount: not verified (gap).

2. **CredPal** (BNPL / consumer credit cards). HQ Lagos.
   - It raised a $15M bridge round (equity + debt) on 29 Mar 2022, with total funding of about $16.7M. The round was tied to an Airtel Nigeria BNPL partnership and planned expansion to Kenya, Egypt, Ghana and Cameroon. — [PYMNTS](https://www.pymnts.com/?p=1271342); [TechCabal](https://techcabal.com/?p=90966)
   - Tracxn lists a Series A on 17 May 2022 led by Acasia Ventures, with $16.5M across 7 rounds and 18 investors. — [Tracxn](https://tracxn.com/d/companies/credpal/__mDWczjTvKFQ11U5JAj3KnZnBse3tGh7LVSnpnNrprXY)
   - 2025 activity: a CreditChek partnership is dated 29 Jan 2025. A Mar 2025 market report says CredPal is "scaling." — [Persana profile](https://insights.persana.ai/CredPal); [BusinessWire Mar 2025](https://www.businesswire.com/news/home/20250305061185/en)
   - No 2025/2026 equity round was found.
   - Security exposure: BNPL merchant integrations and APIs, consumer BVN/NIN data, and FCCPC 2025 registration.
   - Service fit: OWASP web/mobile testing under contract, and a DPIA template for credit-scoring data.

3. **Lendsqr** (lending-as-a-service / loan-management software for lenders). HQ Lagos.
   - Founder/CEO: Adedeji Olowe, who also chairs Paystack's board. — [Crunchbase person](https://www.crunchbase.com/person/adedeji-olowe); [dejiolowe.com](https://dejiolowe.com/about/)
   - PitchBook lists a ~$1M seed round in April 2022. — [PitchBook](https://pitchbook.com/profiles/company/493914-79); [Tracxn](https://tracxn.com/d/companies/lendsqr/__i0xaw69Wv_T4-nLtzj4z_rZt5lnOPP0zcNPT61R5h1A)
   - In 2025 it developed AI to screen borrowers using facial and voice data. — [TechCabal, 29 Apr 2025](https://techcabal.com/2025/04/29/lendsqr-ai-borrowers/)
   - In October 2025 it partnered with credit bureaus to offer free loan reporting. In Feb 2026 Olowe was publicly campaigning that "90% of loans go unreported." — [Nairametrics, 16 Feb 2026](https://nairametrics.com/2026/02/16/90-of-loans-go-unreported-adedeji-olowe-exposes-nigerias-broken-credit-system/)
   - Security exposure: it is a multi-tenant SaaS holding many lenders' borrower data, which means concentration risk. Biometric (face/voice) data is sensitive personal data under the NDPA, so a DPIA is very likely required.
   - Service fit: DPIA support for biometric processing, cloud-configuration review, and helping draft a VDP.
   - Outreach: Olowe is publicly vocal (blog and media), so founder outreach via LinkedIn/X is realistic.

4. **Aella Credit** (CBN-licensed digital microfinance). HQ Lagos.
   - Described as CBN-licensed. Its lender page was updated April 2026, which indicates it is still operating. — [Lendsqr lender page](https://lendsqr.com/lenders/aella-credit)
   - Tracxn lists no funding, which conflicts with Aella's historically reported raises (unverified here). — [Tracxn](https://tracxn.com/d/companies/aella-credit/__ZOSUes3KiaP1wtV0QF4Hy_ZXFyo8qoQxcSXAoWKlwVc)
   - Security exposure: an MFB licence brings CBN cybersecurity expectations, plus FCCPC registration for its digital lending.
   - Service fit: phishing training, and security policy drafting mapped to CBN and NDPA requirements.

**B. SAVINGS / WEALTH / INVESTMENT**

5. **Cowrywise** (savings + mutual-fund investing app). HQ Lagos. Founded 2017.
   - Backers: Quona Capital, Kairos, Catalyst Fund, Y Combinator. — [TechCabal 2025 investment-platforms piece](https://techcabal.com/2025/10/04/investment-platforms-in-nigeria/)
   - Raised a $3M pre-Series A led by Quona in Jan 2021, with $3.1–3.3M total. — [Nairametrics tag page](https://nairametrics.com/tag/razaq-ahmed); [CB Insights](https://www.cbinsights.com/company/cowrywise/financials). Co-founder Razaq Ahmed is per the Nairametrics tag.
   - No 2025–2026 round found.
   - Incident angle: Bamboo and Cowrywise suffered app disruptions during the Dangote refinery IPO rush in Sept 2026. — [TechCabal, 14 Sep 2026](https://techcabal.com/2026/09/14/bamboo-cowrywise-explain-dangote-ipo-disruptions/)
   - Security exposure: SEC-regulated fund platform with investor KYC/BVN data. ATO risk is high on savings wallets.
   - Service fit: ATO and phishing awareness content for customer support, and an external attack-surface review.

6. **Risevest** (dollar investing; owns Chaka, a digital sub-broker). HQ Lagos.
   - The SEC warned the public against investing via Risevest in early 2025 because it lacked a required licence. Risevest secured a Fund & Portfolio Manager licence via RV Fund Management Ltd in Feb 2026. — [Technext, 19 Feb 2026](https://technext24.com/2026/02/19/risevest-secures-sec-licence/); [Dabafinance](https://dabafinance.com/en/news/nigeria-fintech-secures-sec-licence-risevest); [BusinessPost](https://businesspost.ng/economy/risevest-gets-sec-licence-to-legally-operate-in-nigeria-s-capital-market/)
   - It acquired Chaka in Sept 2023 and Kenya's Hisa in 2024. One unverified guide says Chaka was rebranded to Hisa in June 2026. — [Kobo Terminal](https://koboterminal.com/blog/bamboo-vs-trove-vs-chaka-vs-risevest); [TechCabal Oct 2025](https://techcabal.com/2025/10/04/investment-platforms-in-nigeria/)
   - Over 600k users. — [TechCabal Oct 2025](https://techcabal.com/2025/10/04/investment-platforms-in-nigeria/)
   - Pitch angle: being newly licensed means a fresh SEC compliance and governance build-out. A merged multi-entity platform raises data-mapping and NDPA cross-border transfer issues (Nigeria/Kenya/US brokers).
   - Service fit: NDPA gap assessment, ROPA/data-flow mapping, and policy drafting.

7. **Bamboo** (US and Nigerian stock trading). HQ Lagos. Started operations in 2020.
   - Raised $2.4M, then a $15M Series A (31 Jan 2022) with Greycroft and Tiger Global. Latest listed item is a $0.05M business-plan-competition award (16 Dec 2025). — [TechCabal Oct 2025](https://techcabal.com/2025/10/04/investment-platforms-in-nigeria/); [CB Insights](https://www.cbinsights.com/company/bamboo-5/financials)
   - SEC-registered; works with Lambeth Capital for local trades. — [Kobo Terminal](https://koboterminal.com/blog/bamboo-vs-trove-vs-chaka-vs-risevest)
   - Incident: app disruptions during the Sept 2026 Dangote IPO surge (an availability issue, not a confirmed breach). — [TechCabal, 14 Sep 2026](https://techcabal.com/2026/09/14/bamboo-cowrywise-explain-dangote-ipo-disruptions/)
   - Service fit: phishing and social-engineering training for support staff, since high-attention IPO events attract impersonation scams. Also an external attack-surface review.
   - Upper-end Series A, but still within scope.

8. **Trove** (stock-trading app). HQ Lagos.
   - Main backer is Asset Resource Management. Older data shows about $323k raised. — [The Condia 2023](https://thecondia.com/investment-apps-nigeria-2023/)
   - Still operating and listed among active Nigerian investment platforms in 2025. — [TechCabal Oct 2025](https://techcabal.com/2025/10/04/investment-platforms-in-nigeria/); [Techpoint guide](https://techpoint.africa/guide/10-best-investment-platforms-in-nigeria/)
   - Small team, likely budget-constrained, so a good fit for low-cost engagements: email-auth review and a VDP draft.

9. **PiggyVest — STRETCH #1** (savings/investment, Nigeria's largest savings app). HQ Lagos.
   - Reported ₦1.3 trillion in payouts and over 6M users in 2025. — [Techpoint](https://techpoint.africa/news/piggyvest-2025-payouts/)
   - AUM grew 110% in 2025. It launched in-house payments (powered by PocketApp) and retired legacy virtual account numbers. — [Tracxn/Crunchbase summary](https://www.crunchbase.com/organization/piggybank.ng/signals_and_news/timeline)
   - Flutterwave invested about $3M in early 2024 (undisclosed). — [PAN Finance](https://panfinance.net/flutterwave-invests-substantially-in-piggyvest/)
   - Likely too large for a beginner, but its new payments stack expands the attack surface. Best approached via a VDP submission rather than a sales pitch.

**C. INSURTECH**

10. **Curacel** (AI claims/fraud infrastructure + embedded insurance API "Grow"). HQ Lagos. Founded 2019.
    - Founders: Henry Mascot (CEO), John Flash Dada. — [yespress profile, Aug 2026](https://yespress.io/henry-mascot); [TechCrunch](https://techcrunch.com/?p=2484707)
    - Rounds: $450k pre-seed, then $3M seed in Feb 2023 (YC W22). Total $3.5–3.95M. — [Nairametrics Feb 2023](https://nairametrics.com/2023/02/14/nigerias-insurtech-startup-curacel-raises-3-million-in-seed-funding/); [Techpoint](https://techpoint.africa/news/curacel-has-raised-a-3-million-seed/); [Tracxn](https://tracxn.com/d/companies/curacel/__DXeu2HFkba_ZxNczf4iJrl7wz4Z2-okT-CeNPmbDVhM)
    - Partnered with Cornerstone Insurance on motor AI in Oct 2025. Still active in 2026, with the CEO also starting Soteria AI. — [yespress](https://yespress.io/henry-mascot)
    - Clients include AXA Mansard and Old Mutual (per a directory). — [Dealroom](https://dealroom.co/companies/curacel/)
    - Security exposure: processes insurers' claims and health data. Health data is sensitive under the NDPA, and NAICOM-regulated clients will push vendor-security questionnaires.
    - Service fit: help answering vendor security questionnaires, a DPIA for AI claims processing, and a cloud-config review.

11. **MyCover.ai** (insurance distribution / embedded insurance API). HQ Lagos.
    - Raised a $1.25M pre-seed in July 2023, led by Ventures Platform with Founders Factory Africa and Techstars. Over $1M GWP at the time. — [FinSMEs](https://www.finsmes.com/2023/07/mycover-ai-raises-1-25m-pre-seed-funding.html); [MyCover.ai blog](https://mycover.ai/blog/mycover.ai_secures_$1.25M_pre_Seed_funding/)
    - No 2025–2026 news found, so its operating status in 2026 should be confirmed via the website and LinkedIn.
    - Service fit: API security testing under contract, and NDPA data-processor agreements with insurer partners.

12. **Casava** (digital micro-insurance). HQ Lagos.
    - Raised a $4M pre-seed in Feb 2022. — [TechCrunch](https://techcrunch.com/2022/02/02/casava-gets-4m-pre-seed-to-make-insurance-affordable-and-accessible-to-nigerians/)
    - **2026 operating status NOT verified.** Do not pitch until confirmed (see Gaps).

**D. PENSIONTECH**

13. **Awabah** (micro-pension + bundled health/accident/life cover for informal workers). HQ Lagos.
    - PenCom licensed it as the first "Accredited Pension Agent." Its ValuBah bundle costs about ₦3,000/month. — [CB Insights](https://www.cbinsights.com/company/awabah)
    - Funding is roughly $370k–$492k across angel, Techstars London and accelerator money (latest 29 Nov 2023, per Caplight). — [Nairametrics 2022](https://nairametrics.com/2022/06/23/awabah-nigerias-innovative-micro-pension-tech-startup/); [Seedtable](https://seedtable.com/companies/awabah); [Caplight](https://www.caplight.com/company/awabahng)
    - Pitch angle: PenCom is redesigning Micro Pension into a "Personal Pension Plan" (Sept 2025) and using licensed Super Agents for onboarding, so agent-channel fraud and KYC are a growing exposure. — [Pension Policy International](https://www.pensionpolicyinternational.com/nigeria-pencom-redesigns-pension-plan-targets-informal-sector/)
    - Small team, so a strong beginner fit: agent phishing and social-engineering training, and NDPA basics.

14. **PenSphere** (pension remittance platform, says it is PenCom-approved). — [pensphere.ng](https://pensphere.ng/)
    - Very little public information was found: no funding or founder data. Treat it as a low-confidence lead.

**E. CRYPTO / STABLECOIN**

15. **Busha** (crypto exchange). HQ Lagos.
    - Raised a $4.2M seed in Nov 2021, led by Jump Capital with Cadenza, Blockwall, Greenhouse Capital, CMT Digital and Raba. — [Tech In Africa](https://www.techinafrica.com/nigeria-crypto-exchange-busha-raises-a-4-2m-seed-round/); [Technext](https://technext24.com/news/crypto-exchange-busha-secures-4-2m-seed-funding-for-pan-african-expansion/)
    - Holds SEC provisional licence / approval-in-principle under ARIP. — [Techpoint](https://techpoint.africa/insight/nigerias-sec-grants-crypto-licence-to-busha-and-quidax/); [TechCabal Feb 2025](https://techcabal.com/2025/02/06/sec-to-issue-crypto-licences-faster/)
    - Lists cNGN. — [TechCabal Aug 2025](https://techcabal.com/2025/08/29/roqqu-list-cngn/)
    - Exposure: hot-wallet custody and ATO risk. The ISA 2025 / SEC registration path requires documented controls.
    - Service fit: security policy drafting for SEC full-registration packs, and phishing training.

16. **Quidax** (crypto exchange; cNGN listing). HQ Lagos.
    - Received an SEC provisional licence in Aug 2024. — [Mariblock](https://www.mariblock.com/nigerian-sec-grants-provisional-crypto-licenses-amid-regulatory-shift/); [CoinGeek](https://coingeek.com/nigeria-licenses-its-first-digital-asset-exchanges/)
    - Founders and funding were not verified in this research (gap).
    - Same exposure and fit as Busha.

17. **Roqqu** (crypto exchange → "super trading platform"). HQ Lagos. Founder/CEO: Benjamin (Eseoghene) Onomor. — [Startuplist](https://www.startuplist.africa/startups/roqqu)
    - As of Aug 2025 it was still awaiting an SEC provisional licence, and it listed cNGN. — [TechCabal Aug 2025](https://techcabal.com/2025/08/29/roqqu-list-cngn/); [Techeconomy](https://techeconomy.ng/roqqu-lists-sec-regulated-cngn-stablecoin-nigeria/)
    - 30,000 users on its futures product by Mar 2026, plus crypto cards and a prediction market. — [TechCabal, 23 Mar 2026](https://techcabal.com/2026/03/23/roqqu-crypto-cards-prediction-market/)
    - Launched tokenized stocks (via Ondo) in Aug 2026 and plans tokenised Nigerian stocks. — [TechCabal, 16 Oct 2026](https://techcabal.com/2026/10/16/roqqus-plan-to-tokenise-nigerian-stocks/); [Streamline Feed](https://streamlinefeed.co.ke/news/roqqu-announce-the-launch-tokenized-stocks-as-it-evolves-into-a-super-trading-platform)
    - Pitch angle: a rapidly expanding product surface (cards, futures, tokenized securities) while its licence is pending. This creates a strong need for documented security policies.

18. **Blockradar** (non-custodial stablecoin wallet API infrastructure for fintechs). HQ Lagos.
    - Founded 2024; TechCabal says launched Mar 2025. — [TechCabal](https://techcabal.com/fr/?p=165372)
    - Founders: Abdulfatai Suleiman (CEO, ex-Lazerpay co-founder) and Morgan Williams (COO). — [The Condia: Suleiman](https://thecondia.com/people/abdulfatai-suleiman/); [The Condia: Williams](https://thecondia.com/people/morgan-williams/)
    - Backed by Coinbase Ventures and 4DX Ventures. Won the Crypto Valley 2025 competition, which carried $1.2M in soft commitments (not closed capital). — [Mariblock](https://mariblock.com/blockradar-wins-crypto-valley-startup-competition-2025/)
    - Volume claims conflict: over $100M on-chain per The Condia versus over $1B per [AU-Startups](https://au-startups.com/news/blockradar-crosses-billion-stablecoin-volume).
    - Exposure: API keys and webhook security for 100+ fintech clients, and gas-sponsorship abuse. Supply-chain concentration means one compromise affects many clients.
    - Service fit: API security testing under contract, and VDP drafting.
    - Very early-stage and technical founders, so best reached via founder X/LinkedIn.

19. **Breet** (crypto sell-to-cash-out app; Nigeria and Ghana). Active, publishing 2026 content. — [Breet blog](https://breet.io/blog/best-crypto-apps-in-nigeria)
    - Founders and funding were not verified (gap). Small-company profile, so a good beginner fit (email-auth, phishing training, policy drafting).

20. **Patricia** (crypto/gift-card exchange): INCIDENT CASE, pitch with caution.
    - Halted withdrawals in April 2023 after reporting a breach. TechCabal reported the breach actually occurred in Jan 2022 and cost about $2M. — [TechCabal Aug 2023](https://techcabal.com/2023/08/19/patricia-customer-assets/)
    - Converted user balances to an internal "PTK" token. Customers were still unable to withdraw over a year later. — [Techpoint, May 2024](https://techpoint.africa/2024/05/06/patricia-customer-fund-crisis/); [Techpoint](https://techpoint.africa/insight/how-patricia-plans-to-pay-customers-back/); [Cointelegraph](https://cointelegraph.com/news/patricia-ceo-debunks-closure-rumors-crypto-exchange)
    - 2025–2026 status unverified. There is reputational and payment risk for a freelancer, so it is listed for incident context, not as a recommended target.

**Stretch #2 (optional): Yellow Card.** It is the large pan-African stablecoin on/off-ramp and is listed among crypto firms operating in Nigeria. — [Wikipedia: Cryptocurrency in Nigeria](https://en.wikipedia.org/wiki/Cryptocurrency_in_Nigeria). Its size is beyond beginner reach, so suggest a VDP submission only.

### Inferences
- The most beginner-realistic targets are small teams with live regulatory or product pressure: Awabah, Trove, Breet, Blockradar, Sycamore, Lendsqr and MyCover.ai. Mid-size targets include Cowrywise, Bamboo, Risevest, Roqqu, Busha, Quidax, Curacel and CredPal.
- Recent funding is predominantly debt (Sycamore CP), so "compliance readiness for investors and rating agencies" is a better hook than "post-raise security."

### Gaps
- Headcounts for all companies were not found in any accessible source. Check LinkedIn company pages for the employee count.
- Founders and LinkedIn/X handles are unverified for Sycamore, CredPal, Aella, Bamboo, Trove, Risevest, MyCover.ai, Casava, Awabah, Quidax and Breet. I did not record handles from memory.
- 2026 operating status could not be confirmed for Casava, MyCover.ai, PenSphere and Patricia.
- Larger lenders such as Carbon, FairMoney, Renmoney and Migo were not researched for 2025–26 status (budget limit). FairMoney and Carbon would be "stretch" candidates.
- Security.txt / responsible-disclosure / bug-bounty status: no public evidence was found for ANY company in this list. A search for Cowrywise/PiggyVest disclosure programmes returned nothing. Moniepoint (out of scope) does publish a security-acknowledgements page. — [Moniepoint](https://moniepoint.com/security-acknowledgements). The freelancer should manually check each site's footer and `/.well-known/security.txt` in a browser. Absence of a VDP is itself a pitch point.

---

## Q2: Which face fresh regulatory pressure (FCCPC 2025 digital lending regs, SEC ISA 2025 crypto rules, NDPC compliance audits) that creates a pitch angle?

### Takeaway
All lenders (Sycamore, CredPal, Aella, and Lendsqr's lender clients) face FCCPC registration and penalties. All crypto firms face ISA 2025 SEC registration, rising capital thresholds and pending stablecoin rules. Every company processing BVN/NIN data faces NDPA obligations, under an NDPC that is actively enforcing against loan-app privacy abuses.

### Cited Findings
- **FCCPC Digital, Electronic, Online, or Non-Traditional Consumer Lending Regulations 2025**:
  - Took effect 21 July 2025 and required registration within 90 days. Covers data-privacy violations and abusive recovery. Penalties are up to ₦100M or 1% of turnover, plus director disqualification of up to 5 years (FCCPC figure; other outlets misreport the percentage). — [FCCPC](https://fccpc.gov.ng/digital-lending-fccpc-tackles-abuses-issues-landmark-regulations/); [Nairametrics, Sep 2025](https://nairametrics.com/2025/09/03/fccpc-commences-n100-million-sanction-rule-against-non-compliant-digital-lending-operators-in-nigeria/); [Techpoint](https://techpoint.africa/insight/digital-lending-regulations-fccpc/)
  - Registered loan apps rose to 492 by Oct 2025. — [Nairametrics, 23 Oct 2025](https://nairametrics.com/2025/10/23/fccpc-registered-loan-apps-surge-to-492-amid-n100-million-penalty-rule/)
  - Approved list reached 505 by June 2026. — [PM News, 27 Jun 2026](https://pmnewsnigeria.com/2026/06/27/fccpc-expands-approved-loan-app-list-raises-total-to-505/)
- **NDPC enforcement**:
  - TechCabal (Sept 2025) reports about three loan-shark-related breach complaints per day.
  - Largest fine to date: ₦766.2M against MultiChoice (June 2025). — [TechCabal, 10 Sep 2025](https://techcabal.com/2025/09/10/nigerias-ndpc-battles-three-loan-shark-breaches-daily/); [KS Legal](https://kslegal.org/ndpcs-fine-against-multichoice-nigeria/)
  - A ₦555.8M fine is attributed to Fidelity Bank by Legal500, while another source attributes the same figure to Meta (conflict unresolved). 246 concluded probes led to 11 enforcement actions. — [Legal500](https://www.legal500.com/intelligence/nigeria/privacy/updates-on-the-recent-activities-and-other-developments-in-the-data-privacy-sector)
  - Earlier precedent under the NDPR: NITDA fined Soko Loans ₦10M. — [GEP Law](https://geplaw.com/the-cost-of-consent-a-turning-point-for-privacy-in-nigeria/)
- **SEC / ISA 2025**:
  - The Act classifies digital/virtual assets as securities and requires VASPs, DAOPs and digital asset exchanges to register with the SEC. Foreign operators targeting Nigerians are also captured. — [Afriwise](https://www.afriwise.com/blog/isa-2025-what-investors-need-to-know-about-nigerias-new-capital-market-law); [Guardian NG](https://guardian.ng/opinion/columnists/new-investment-and-securities-act-2025-and-nigerias-capital-market/)
  - ARIP approval-in-principle is conditional and not a final licence. SEC stablecoin rules were reportedly proposed Aug 2026 (not final). Capital thresholds were raised: ₦2bn for exchanges/custodians per one source, ₦500M per another, with a reported 30 June 2027 compliance deadline. — [Chambers 2026](https://practiceguides.chambers.com/practice-guides/blockchain-crypto-assets-2026/nigeria/trends-and-developments); [Liminal](https://www.liminalcustody.com/blog/stablecoin-regulation-africa/); [Dabafinance](https://dabafinance.com/en/news/nigeria-opens-stablecoin-sandbox-as-crypto-rules-take-shape)
- **SEC investment-platform enforcement**: the early-2025 public warning against Risevest, resolved by the Feb 2026 licence. — [Technext](https://technext24.com/2026/02/19/risevest-secures-sec-licence/)
- **PenCom**:
  - Micro Pension is being redesigned as the Personal Pension Plan with Super Agents (Sept 2025). — [Pension Policy International](https://www.pensionpolicyinternational.com/nigeria-pencom-redesigns-pension-plan-targets-informal-sector/)
  - Cumulative micro-pension contributors were 186,825 at 31 Mar 2025. — [PenCom Q1 2025 report](https://www.pencom.gov.ng/wp-content/uploads/2025/08/Q1-2025-report-FINAL-COPY-1.pdf)
- **Industry-wide**: in 2025 the EFCC reportedly uncovered more than 12,000 people harvesting and reselling BVN/NIN data to fintechs, which feeds KYC fraud. — [WeeTracker, Jul 2025](https://weetracker.com/2025/07/28/fintech-identity-fraud-nigeria-efcc-nimc-2025/)

### Inferences
- Lenders: pitch an "FCCPC + NDPA readiness pack" covering privacy notice, consent flows (no contact-list scraping), DPIA and a breach-response plan.
- Crypto firms (Busha, Quidax, Roqqu, Breet, Blockradar): pitch "SEC registration security documentation." This covers an information security policy, a key-management/custody policy, an incident-response plan and staff phishing training. These are beginner-deliverable artefacts that regulators and the 2027 deadline make urgent.
- Wealth apps (Risevest, Bamboo, Cowrywise, Trove): pitch ATO/phishing defence and customer-support social-engineering training around high-attention events like the Dangote IPO.

### Gaps
- No NDPC fine against a specific named lending/wealth/crypto startup in this segment was found.
- The FCCPC approved/watchlist PDF was not retrieved, so the registration status of individual lenders (Sycamore, CredPal, Aella) is unconfirmed.
- The exact NDPC Compliance Audit Return (CAR) filing deadline for 2026 was not retrieved.

---

## Q3: Which have had publicised incidents?

### Takeaway
In this segment, the only confirmed security incident at a named company is Patricia's breach (reported in 2023). Bamboo and Cowrywise had availability disruptions in Sept 2026. The clearest loan-app data leak (iCredit/BestFin, 2024) involves a lender not on the target list, but it is a useful pitch case study.

### Cited Findings
- **Patricia**:
  - Halted withdrawals in April 2023 after a breach, which TechCabal dated to Jan 2022 at a cost of about $2M.
  - Converted balances into the off-chain PTK token, and repayment problems persisted into 2024. — [TechCabal](https://techcabal.com/2023/08/19/patricia-customer-assets/); [Techpoint](https://techpoint.africa/2024/05/06/patricia-customer-fund-crisis/)
- **Bamboo and Cowrywise**: app disruptions during the Dangote IPO subscription rush, Sept 2026. This was an outage or performance event; no breach was reported. — [TechCabal, 14 Sep 2026](https://techcabal.com/2026/09/14/bamboo-cowrywise-explain-dangote-ipo-disruptions/)
- **iCredit / BestFin Nigeria (loan app, not a target)**:
  - A 300GB database was left open from 2 Jul to 26 Aug 2024, exposing data on 846,000 clients, including BVN validation logs and SMS content. — [Cybernews](https://cybernews.com/security/massive-data-spill-exposes-sms-bestfin-nigeria/); [Techpoint](https://techpoint.africa/news/alleged-data-leak-exposes-private-messages/)
  - Good case study for "cloud configuration review" pitches to lenders.
- **Sector context in 2026 (alleged or partially confirmed)**:
  - Zenith Bank confirmed limited customer-data access on 4 Aug 2026. — [Techeconomy](https://techeconomy.ng/zenith-bank-confirms-data-breach-as-cyberattacks-on-nigerian-banks-intensify)
  - Threat actors claimed breaches of Sterling Bank and Fast Credit Finance. These come from a single blog and are unverified. — [creativeminds.dev](https://creativeminds.dev/blog/nigeria-2026-cyber-crisis/)

### Inferences
- The thin incident record among smaller firms likely reflects weak disclosure norms, not strong security. Regulators are reportedly moving toward mandatory breach disclosure (unverified), so incident-response planning is a timely offer.

### Gaps
- No confirmed 2025–2026 breach was found at Sycamore, CredPal, Lendsqr, Aella, Cowrywise, Risevest, Trove, Curacel, MyCover.ai, Awabah, Busha, Quidax, Roqqu, Blockradar or Breet.
- Patricia's 2025–2026 status and any prosecution outcome were not found.
