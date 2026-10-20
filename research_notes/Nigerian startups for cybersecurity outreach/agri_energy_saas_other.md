# Nigerian non-fintech startups (Agritech, Cleantech/Energy, Proptech, HR-tech, B2B SaaS, AI, Media/Creator) for beginner cybersecurity outreach

Scope note: this was desk research only (web search and published articles), as of 2026-10-20. Nothing was scanned or tested. I tried to fetch `/.well-known/security.txt` from 24 company domains, but every request failed at the network/proxy layer (HTTP 000). **So security.txt, responsible-disclosure and bug-bounty status is UNVERIFIED for every company below.** Check it by hand in a browser before pitching. No contact emails are given because none were found in sources, and none should be invented. Founder LinkedIn/X handles were not visible in the search results I read, so they are not given here (see Gaps).

## Q1: Which smaller Nigerian startups in these non-fintech sectors are active and funded in 2025–2026?

### Takeaway
I found 25 candidates (about 22 core plus flagged ones). The strongest leads, meaning recent funding plus clear 2025–2026 activity, are:
- PaidHR (seed, June 2025)
- SeamlessHR (Series A extension, January 2025)
- Arnergy (Series B, April 2025)
- Winich Farms (June 2025 round, April 2026 interview)
- Salpha Energy (June 2025)
- Earthbond (pre-seed, 2025)
- PowerLabs (pre-seed, April 2026)
- Lendsqr (product launches in October 2025)
- Prembly (grants in September and November 2025)
- Awarri (N-ATLAS LLM, September 2025)
- Spitch (accelerator, November 2025)
- Selar (active in 2026 tax news)
- Mainstack (2026 conference)
- MAX (USD 24M, January 2026; stretch)

Older-funded companies need a liveness check before outreach: Spleet, Seso Global, Propel, Bumpa, Termii, Releaf, Crop2Cash, Intron and Orda (one source lists Orda as "Acquired"). I found no funded, currently active Nigerian legaltech or govtech startup with 2025–2026 evidence.

### Cited Findings

**Context and exclusions**
- Nigerian startup funding totals vary a lot by source:
  - About USD 304M in 2025 and about USD 254M in H1 2026 (citing Africa: The Big Deal) — [Launch Base Africa](https://launchbaseafrica.com/2026/08/28/five-countries-half-a-million-dollars-inside-nigerias-new-startup-funding-math/)
  - USD 959M for 2025 — [Liners](https://liners.com/african-tech-ecosystem/nigeria)
- Agritech funding across Africa fell to USD 168.1M in 2025, from USD 206.9M in 2024 — [TechCabal agritech tag](https://techcabal.com/tag/agritech/)
- Tracxn reports USD 12M of Nigerian HR SaaS equity funding across 2 rounds as of June 2025 — [Tracxn HR SaaS Nigeria](https://tracxn.com/d/explore/hr-saas-startups-in-nigeria/__q32e6xCwi00Qado2PBsHsjL5i0y9cBpDxiOlABM8-IY)
- **Exclude Bento Africa (HR/payroll).**
  - It "temporarily" shut down in February 2025 amid allegations of tax and pension remittance fraud, the CEO resigned, and clients including Moniepoint and Paystack ended contracts — [TechCabal](https://techcabal.com/2025/02/10/bento-africa-temporarily-shut-down/)
  - I found no report that it reopened.
- **Other Nigerian shutdowns to exclude:**
  - Joovlin (January 2025), Edukoya and 54gene — [Techpoint shutdowns 2025](https://techpoint.africa/insight/african-startups-shutdown-2025/); [Condia](https://thecondia.com/african-startups-shut-down-2025/)
  - Okra's status is disputed (shut down vs. restructuring) — [Condia](https://thecondia.com/african-startups-shut-down-2025/)
- **Legaltech:**
  - Tracxn (October 2025) lists 61 Nigerian legaltech startups, of which only 5 are funded, such as VESTI (about USD 500K) and JUDY Innovative Technologies (about USD 100K). Those rounds date from 2018–2022 — [Tracxn legaltech Nigeria](https://tracxn.com/d/explore/legal-tech-startups-in-nigeria/___IbhmYS0-u24Fcjp-9oFAj20F3zKEjSyDes47fuscLY/companies)
  - I found no 2025–2026 legaltech rounds.

---

#### AGRITECH

**1. Winich Farms — STRONG LEAD**
- **Business:** agri value-chain financing and trade platform. It is building "financial infrastructure for agricultural value chains," operates in 29 of 36 states, and claims more than USD 50M in GMV/TPV — [Disrupt Africa, Apr 2026](https://disruptafrica.com/2026/04/23/nigerias-winich-farms-is-building-financial-infrastructure-for-agricultural-value-chains/)
- **Funding:**
  - Six-figure pre-Series A extension from DisrupTech Ventures, June 2025 — [Disrupt Africa](https://disruptafrica.com/2025/06/17/nigerian-agri-tech-startup-winich-farms-raises-funding-from-disruptech-ventures/)
  - Earlier USD 3M pre-Series A, October 2024 — [TechCabal agritech tag](https://techcabal.com/tag/agritech/)
- **Partnership:** pilot with SeedFi for produce-collateralised loans, May 2025, with more than 700 farmers expected — [Nairametrics](https://nairametrics.com/2025/05/19/empowering-nigerias-backbone-seedfi-and-winich-farms-unlock-access-to-credit-for-farmers/)
- **Founding year:** sources conflict — 2018 per [PitchBook](https://pitchbook.com/profiles/company/458395-03), 2020 per Disrupt Africa (2026).
- **Website:** winichfarms.com (I could not confirm this domain; the network fetch failed).
- **Security exposure:** farmer KYC and identity data, loan and collateral records, payment flows, partner integrations with lenders.
- **Service fit:** NDPA 2023 gap-assessment support for farmer PII, email-auth (SPF/DKIM/DMARC) review, phishing awareness for field and ops staff.
- **Outreach:** LinkedIn (company and founders). Founder names were not in the sources I read.

**2. Releaf — MODERATE (verify current activity)**
- **Founders:** Ikenna Nzewi (CEO) and Uzoma Ayogu (CTO).
- **Business:** palm-kernel processing tech (Kraken II) and a climate arm, Releaf Earth (biochar) — [Kolaking](https://kolaking.substack.com/p/releaf-led-by-nigerian-entrepreneur)
- **Funding:**
  - USD 4.2M seed, September 2021 — [Food Digital](https://fooddigital.com/food/dollar42mn-funding-nigerian-agritech-startup-releaf)
  - USD 3.3M pre-Series A, dated January 2023, led by Samurai Incubate Africa — [Prime Business Africa](https://www.primebusiness.africa/?p=60652)
  - A Business A.M item dated January 2026 repeats older seed figures, so it is likely misdated — [Business A.M](https://businessamlive.com/?p=72171)
- **2025 round:** none found.
- **HQ:** Uyo (from my background knowledge; not confirmed in the sources above).
- **Security exposure:** supplier and farmer payment data, plus OT/industrial processing equipment. Industrial or OT testing is not beginner work.
- **Service fit:** policy drafting, M365/Workspace config review.
- **Outreach:** LinkedIn.

**3. Crop2Cash — MODERATE**
- **Profile:** headquartered in Ibadan, founded 2017, 27 employees — [PitchBook](https://pitchbook.com/profiles/company/399106-18). Farmonaut gives 2018 and a larger headcount; treat Farmonaut with caution — [Farmonaut](https://farmonaut.com/africa/agritech-expo-top-agritech-startups-in-nigeria-2025)
- **Business:** digital payments for farmers and digitised value-chain steps such as weighing and quality control — [PitchBook](https://pitchbook.com/profiles/company/399106-18)
- **Security exposure:** farmer KYC/BVN-type data, USSD and payment flows, field-agent devices.
- **Service fit:** NDPA gap assessment, phishing training, external attack-surface review.
- **Note:** its 27 employees fits the target size well.

**4. Agriarche — WEAK (thin data)**
- **Funding:** USD 500K debt financing, listed in a 2025 roundup; focus on logistics and storage — [Techgix roundup](https://techgix.vercel.app/post/9-nigerian-startups-that-gained-funding-in-2025)
- **Caveat:** that roundup is a low-authority aggregator, so confirm with a primary source.

**5. ThriveAgric — STRETCH (larger)**
- USD 56.4M debt raise in 2022, which is often mis-cited as a 2025 deal — [Ventureburn](https://ventureburn.com/2022/03/nigerian-agritech-thriveagric-56-4m/)
- Likely more than 150 staff (unverified). It has a large farmer database, so the PII exposure is significant.

---

#### CLEANTECH / ENERGY

**6. Arnergy — STRONG LEAD (upper end of size)**
- **Business:** solar with lease-to-own financing (Z Lite product).
- **Funding:** Series B in April 2025, a USD 15M extension led by CardinalStone. One source says total capital is USD 18M (inconsistent wording). Plans more than 12,000 installs by 2029 — [UrbanGeekz](https://urbangeekz.com/2025/04/bill-gates-arnergy-15m-series-b-nigerias-solar/); [Wikipedia](https://en.wikipedia.org/wiki/Arnergy)
- **Security exposure:** a fleet of connected or remotely monitored solar systems (IoT/remote-lockout platform), customer financing PII, payment flows.
- **Service fit:**
  - Beginner: external attack-surface and email-auth review, NDPA documentation, ISO 27001 readiness documentation.
  - Not for a beginner: IoT/firmware testing (needs a senior partner).

**7. Salpha Energy — STRONG LEAD (small, female-founded)**
- USD 1.3M from All On in June 2025 to expand local assembly of solar home systems. Described as the only female-founded startup running a solar home system assembly facility in sub-Saharan Africa — [People of Color in Tech](https://peopleofcolorintech.com/articles/nigerian-startup-raises-1-3m-to-give-underserved-communities-affordable-solar-power/)
- **Security exposure:** PAYG-style customer data (if it uses PAYG; not confirmed), manufacturing and ERP systems.
- **Service fit:** policy drafting, Workspace/M365 review, phishing training.

**8. Earthbond — STRONG LEAD (pre-seed, small)**
- **Business:** solar for SMEs, with repayment plans of up to 48 months through 4 microfinance-bank partners.
- **Funding:** USD 200K pre-seed from Madica in 2025 — [ImpactAlpha](https://impactalpha.com/earthbond-solar-nigeria-200000-madica/); [People of Color in Tech](https://peopleofcolorintech.com/articles/nigerian-startup-raises-200k-to-help-businesses-go-solar/)
- **Security exposure:** SME credit data shared with MFB partners. Bank partners usually send vendor security questionnaires.
- **Service fit:** help answering security questionnaires, NDPA gap assessment.

**9. PowerLabs — STRONG LEAD (AI + energy, pre-seed)**
- **Founded:** 2023, by Tobechukwu (Tobe) Arize (CEO) and David Adebiyi (CTO).
- **Funding:** pre-seed led by Breega, with Catalyst Fund, Mercy Corps Ventures and Kaleo Ventures; announced 13 April 2026; amount undisclosed — [WeeTracker](https://weetracker.com/2026/04/09/powerlabs-pre-seed-funding-ai-energy-nigeria/); [Vanguard](https://www.vanguardngr.com/2026/04/nigerian-startup-secure-pre-seed-funding-to-scale-ai-energy-solutions/); [iAfrica](https://iafrica.com/nigerian-energy-startup-powerlabs-raises-pre-seed-funding-to-scale-ai-powered-grid-management-platform/)
- **Product:** "Pai Enterprise" orchestrates grid, diesel, solar and battery power in real time for hospitals, data centres, factories and critical infrastructure — same sources.
- **Security exposure:** a cloud control plane connected to customer energy assets (OT/IoT). Its enterprise and critical-infrastructure customers will send security questionnaires.
- **Service fit:** security-questionnaire prep, ISO 27001 readiness documentation, cloud config review.
- **Outreach:** LinkedIn (founders are named publicly).

**10. MAX (Metro Africa Xpress) — STRETCH**
- **Business:** EV and mobility financing, with an Ibadan assembly facility of up to 3,600 vehicles a month.
- **Funding:** USD 24M debt and equity, January 2026; reported profitable — [TechCabal](https://techcabal.com/2026/01/16/max-24-million-profitbale/)
- **Security exposure:** a fleet of telematics and IoT-connected vehicles, driver KYC, loan repayments.
- Larger than the target size.

---

#### PROPTECH

**11. Spleet — MODERATE (verify current activity)**
- **Founded:** 2018, by Akintola (Tola) Adesanmi and Dolapo Adebayo.
- **Business:** rent management and "Rent Now, Pay Later" financing (no-collateral loans up to NGN 3M).
- **Funding:**
  - USD 625K pre-seed led by MetaProp, March 2022 — [Disrupt Africa](https://disruptafrica.com/2022/03/15/nigerian-prop-tech-startup-spleet-raises-625k-pre-seed-funding-round/)
  - USD 2.6M seed led by MaC Venture Capital, October 2022 — [Techpoint](https://techpoint.africa/news/nigerian-proptech-spleet-seed/); [Nairametrics](https://nairametrics.com/2022/10/04/spleet-nigerian-proptech-startup-raises-2-6-million-in-seed-round/)
- **Latest activity:** no 2025–2026 coverage found.
- **Security exposure:** tenant PII, ID documents, income and credit data, landlord bank details.
- **Service fit:** NDPA gap assessment, OWASP web/mobile testing under contract.

**12. Seso Global — WEAK/MODERATE (verify)**
- **Business:** proptech CRM / real-estate SaaS.
- **Funding:** USD 600K pre-seed from Kepple Ventures, Rising Tide Africa, Moabi Group and others; date unclear (probably around 2022) — [Tech In Africa](https://www.techinafrica.com/nigeria-proptech-startup-raises-us600000-pre-seed-capital/)
- **Security exposure:** multi-tenant SaaS holding developers' buyer data.
- **Service fit:** security-questionnaire prep, policy drafting.

---

#### HR-TECH / TALENT

**13. PaidHR — STRONG LEAD**
- **Founded:** 2020, by Seye Bandele and Lekan Omotosho.
- **Funding:**
  - USD 1.8M seed (oversubscribed against a USD 1.5M target), closed 23 June 2025.
  - Led by Accion Venture Lab, with Zrosk, Chui Ventures and Zedcrest Capital.
  - Earlier: USD 500K pre-seed (2022) and USD 600K (2023).
  - Cumulative total: about USD 2.9M per TechCabal, or USD 2.3M per Techpoint.
  - Sources: [TechCabal](https://techcabal.com/2025/06/23/paidhr-raises-seed-round/); [Techpoint](https://techpoint.africa/news/paidhr-seed-funding/); [Accion](https://www.accion.org/news/paidhr-raises-1-8m-seed-round-led-by-accion-venture-lab-to-boost-africas-growing-workforce/)
- **HQ:** Lagos — [Tracxn](https://tracxn.com/d/explore/hr-saas-startups-in-nigeria/__q32e6xCwi00Qado2PBsHsjL5i0y9cBpDxiOlABM8-IY)
- **Security exposure:** employee PII, salaries, bank details, tax and pension data; multi-tenant SaaS; payroll payment flows.
- **Service fit:** NDPA gap assessment, security-questionnaire and ISO 27001 readiness documentation, M365/Workspace review.

**14. SeamlessHR (now Seamless Technologies) — STRONG LEAD (Series A; may exceed 150 staff)**
- **Funding:** USD 9M Series A extension from the Gates Foundation and Helios Digital Ventures, 20 January 2025, below its USD 10M target. Total raised is about USD 25M — [TechCabal](https://techcabal.com/2025/01/20/seamlesshr-raises-9-million-series-a-extension/); [Launchbase](https://launchbaseafrica.com/2025/01/20/nigerias-seamlesshr-secures-9m-in-series-a-extension-to-drive-africa-wide-expansion/)
- **Rebrand:** renamed Seamless Technologies and expanding into financial services, procurement and AI — [TechEconomy](https://techeconomy.ng/?p=185394)
- **Customers:** sells HR/payroll to large enterprises and banks, so vendor security questionnaires are routine.
- **Pitch angle:** it probably already has some security staff, so a beginner should pitch narrow support work, such as phishing simulations or policy updates.

**15. Propel — MODERATE (verify)**
- **Business:** HR-tech / talent community platform.
- **Funding:** USD 2.74M seed led by No Such Ventures, with APX, Golden Egg Check and Future of Learning Fund, July 2023 — [Techpoint](https://techpoint.africa/2023/07/10/hr-tech-startup-propel-seed-funding/)
- **Latest activity:** no 2025–2026 news found.
- **Security exposure:** candidate and community PII.
- **Service fit:** NDPA, OWASP web testing.

---

#### B2B SaaS / SME TOOLS

**16. Bumpa — MODERATE**
- **Business:** Lagos e-commerce and inventory tools for small retailers.
- **Funding:**
  - USD 4M seed led by Base10 Partners, October 2022 (one source says 2023) — [Tracxn](https://tracxn.com/d/companies/bumpa/__7yxl1invDfyNX0ovLpjXRZf6vEIs22cbnqNf_d0mfSU); [StartupList](https://www.startuplist.africa/startups/bumpa/fundings)
  - Undisclosed Jobtech Alliance funding in 2025 — [Tech In Africa](https://www.techinafrica.com/nigerian-startup-bumpa-and-kenyan-startup-flowcart-receive-funding-from-jobtech-alliance/)
- **Security exposure:** multi-tenant SaaS, merchant and customer data, payment integrations.
- **Service fit:** OWASP web/mobile testing under contract, email auth.

**17. Termii — MODERATE**
- **Business:** CPaaS (SMS/OTP messaging APIs) and eSIM.
- **Funding:**
  - USD 3.65M led by Ventures Platform, June 2023; reported profitable — [TechCrunch](https://techcrunch.com/2023/06/12/nigerias-termii-to-launch-mobile-app-and-scale-customer-engagement-business-with-new-funding/)
  - Total funding: about USD 5.18M per [Tracxn](https://tracxn.com/d/companies/termii/__-HT2DU2NUdyfWA4WQH16vjHLtz3584fPcgMYA5w5MFo). StartupIntros gives an implausible USD 38.6M.
  - Earlier: USD 1.4M seed in 2021 (YC company) — [TechCrunch 2021](https://techcrunch.com/2021/03/19/nigerias-termii-raises-1-4m-seed-led-by-future-africa-and-kepple-africa-ventures/)
- **Security exposure:** carries bank and fintech OTP traffic, so enterprise questionnaires are certain. Also exposed to SIM-swap and OTP-abuse risk and API-key leakage.
- **Service fit:** questionnaire prep, ISO 27001 readiness documentation.

**18. Lendsqr — STRONG LEAD (B2B to lenders)**
- **Founded:** 2018. CEO Adedeji Olowe.
- **Business:** lending-as-a-service cloud platform.
- **Recent activity:**
  - In October 2025 it partnered with CreditRegistry and CRC to automate free credit-bureau reporting, which supports CBN compliance — [TechCabal](https://techcabal.com/2025/10/01/lendsqr-credit-bureau-reporting/)
  - In October 2024 it launched a NGN 1B working-capital fund for lenders — [Tech In Africa](https://www.techinafrica.com/fintech-startup-lendsqr-is-launching-a-₦1-billion-working-capital-fund-to-support-lenders/)
- **Scale:** more than 100 lenders and about 500K borrowers (undated) — [Condia](https://thecondia.com/lendsqrs-is-making-credit-affordable/)
- **Funding:** undisclosed pre-seed (date unknown).
- **Classification:** borderline fintech-infrastructure, but sold as B2B SaaS.
- **Security exposure:** multi-tenant SaaS holding borrower KYC/BVN data for many lenders.
- **Service fit:** questionnaire and ISO 27001 readiness, NDPA.

**19. Prembly (formerly Identitypass) — STRONG LEAD (identity/KYC SaaS)**
- **Profile:** YC company, Lagos, team of about 80 — [Y Combinator](https://www.ycombinator.com/companies/identitypass)
- **Funding:**
  - USD 360K pre-seed (November 2021) and USD 2.8M seed led by MaC Venture Capital — [Seedtable](https://seedtable.com/companies/prembly/funding-rounds/seed-2022-05)
  - Latest: an MTN Cloud Accelerator grant on 6 September 2025; total about USD 3.66M — [CB Insights](https://www.cbinsights.com/company/identitypass/financials)
- **Merger:** merged with Peleza (July 2024) to form Prembly Group — [Briter](https://www.briter.co/companies/prembly-formerly-identitypass)
- **HQ:** sources conflict (Lagos vs. Washington DC).
- **Security exposure:** a very high-value store of KYC/biometric PII, used by banks and fintechs.
- **Pitch angle:** it likely already holds certifications (not verified), so pitch narrow support work only.

**20. Orda — FLAG (possibly acquired)**
- **Business:** restaurant POS/SaaS, Lagos.
- **Funding:** USD 1.1M pre-seed (Techstars, Hustle Fund and others) — [CIO Africa](https://www.cioafrica.co/nigerian-startup-orda-raises-1-1-million-pre-seed-for-expansion/). Seed round with Visa, 7 November 2024 — [Tracxn](https://tracxn.com/d/companies/orda/__iUR9A9j-nCQajfHdkecFr9esD0F7Ue-MWhiVFE84W7M)
- **Status:** the Microtraction portfolio page on Tracxn lists Orda's stage as "Acquired" (total USD 4.5M) — [Tracxn Microtraction](https://tracxn.com/d/venture-capital/microtraction/__G2y3W2zwubLkuLoS0FCp8_fh2qXQEqDePxNm9XowqnE). The acquirer is unverified.
- **Action:** verify status before including.

---

#### AI / LLM

**21. Awarri — STRONG LEAD (govtech-adjacent AI)**
- **People:** co-founder and CEO Silas Adekunle.
- **Product:** built N-ATLAS with the Federal Ministry of Communications, Innovation & Digital Economy. It was unveiled at UNGA80 in September 2025, covers Yoruba, Hausa, Igbo and Nigerian English, and is reportedly based on Llama-3 8B.
- **Follow-on:** "ATLAS Umoja" (pan-African); about 5,000 developers since launch.
- Sources: [TechCabal, Sep 2025](https://techcabal.com/2025/09/26/the-high-stakes-push-to-build-nigerias-first-open-source-llm/); [IET](https://engx.theiet.org/b/blogs/posts/n-atlas-nigeria-s-ai-future)
- **Founding year:** 2019 per one source; conflicting.
- **Funding:** no disclosed round found.
- **Security exposure:** training-data governance, model/data leakage, government-partner data handling.
- **Service fit:** policy drafting (AI acceptable use, data handling), NDPA gap assessment, cloud config review.

**22. Spitch (Lagos) — MODERATE/STRONG (small)**
- **People:** founder Temi Babalola.
- **Product:** speech-to-text and text-to-speech APIs for Yoruba, Hausa, Igbo, Nigerian English and Amharic; launched October 2024 — [TheCable](https://thecable.ng/interview-we-can-keep-nigerias-endangered-languages-alive-through-ai-says-temi-babalola)
- **Funding:** C3 Impact Accelerator in-kind support on 19 November 2025; funding otherwise undisclosed — [Briter](https://www.briter.co/companies/spitch)
- **Caution:** do not confuse it with the Swiss company Spitch, led by CEO Alexey Popov.
- **Security exposure:** API-key handling, voice-data retention.
- **Service fit:** a developer-platform security review and docs (security page, data-retention policy).

**23. Intron Health — MODERATE**
- **Business:** clinical speech recognition AI, Lagos.
- **Funding:** USD 1.6M pre-seed led by Microtraction (with Plug and Play, Octopus Ventures and others), July 2024 — [Techpoint](https://techpoint.africa/news/intron-health-raises-pre-seed/); [BusinessDay](https://businessday.ng/health/article/nigerian-health-startup-secures-1-6m-for-clinical-speech-conversion/)
- **2025–2026 news:** none found.
- **Security exposure:** health data (patient voice and clinical notes), cloud plus on-prem deployments in hospitals. Hospital clients will ask security questions.
- **Service fit:** NDPA (health data is sensitive personal data), questionnaire prep.

---

#### MEDIA / CREATOR ECONOMY

**24. Selar — STRONG LEAD (bootstrapped)**
- **Business:** Lagos platform for creators selling digital products.
- **Scale:** about NGN 18B paid to creators in 2025 and about 400,000 creators (founder-reported). Paid NGN 9.8B in 2024 — [Techpoint](https://techpoint.africa/news/selar-paid-out-9-8-billion-in-2024/); [BusinessDay](https://businessday.ng/features/article/inside-selars-rise-the-platform-fuelling-africas-creator-economy/)
- **Funding:** bootstrapped; said in 2024 it has no need to raise — same sources.
- **2026 activity:** in a tax dispute with LIRS (July–August 2026) — [TechCabal](https://techcabal.com/2026/08/14/nigeria-creator-economy-tax/); [WeeTracker](https://weetracker.com/2026/07/16/selar-tax-dispute-lirs-creator-economy/)
- **Security exposure:** creator payouts (account-takeover leading to payout fraud), buyer PII, digital-product piracy.
- **Service fit:** phishing awareness, email-auth review, OWASP testing under contract.

**25. Mainstack — FLAG (US-incorporated, Nigerian subsidiary)**
- **Business:** creator commerce and payments.
- **Funding:** undisclosed pre-seed (April 2023), Techstars NYC alumnus; TechCrunch Battlefield top-20 in 2023 — [Techpoint](https://techpoint.africa/2023/09/19/mainstack-emerges-t0op-20-at-techcrunch-startup-battlefield-200/)
- **Structure:** "US-based ... has a subsidiary in Nigeria" — [Techpoint](https://techpoint.africa/2023/09/19/mainstack-emerges-t0op-20-at-techcrunch-startup-battlefield-200/)
- **2026 activity:** hosted a Lagos conference in March 2026 (rivalry with Selar) — [Techmoonshot](https://techmoonshot.com/2026/03/19/when-creator-economy-rivals-go-to-war-inside-the-selar-mainstack-billboard-battle-that-turned-a-lagos-conference-into-nigerias-messiest-tech-feud-of-2026/). LIRS says it is "taking statutory action against Mainstack" — [WeeTracker](https://weetracker.com/2026/07/16/selar-tax-dispute-lirs-creator-economy/)
- **Fit:** its Nigeria-primary operations make it eligible, but its HQ is not in Nigeria.

---

#### Reported breaches
- I found no publicly reported breach at any of the 25 companies above.
- Related Nigerian incidents that are useful as pitch context:
  - Remita: a 3 TB exposure attributed to a misconfigured AWS bucket (ByteToBreach) — [BusinessDay](https://businessday.ng/cac-hack-exposes-15m-company-documents-undermining-nigerias-anti-money-laundering-reforms/)
  - Startup Lagos platform: a leak of 6,695 accounts (June 2024) — [HEROIC](https://heroic.com/darkhive-breaches/startup-lagos-leak-6695-accounts-exposed/)
  - CAC: 15M company documents exposed — [BusinessDay](https://businessday.ng/technology/article/cac-hack-exposes-15m-company-documents-undermining-nigerias-anti-money-laundering-reforms/)
  - Trend: Nigeria account breaches fell 85% in Q1 2025 (Surfshark) — [TechCabal](https://techcabal.com/2025/05/09/nigeria-records-drop-in-account-breaches-2025/)

### Inferences
- The best-fit beginner targets are seed-stage companies with sensitive PII and enterprise customers, but probably no dedicated security staff: PaidHR, Earthbond, PowerLabs, Lendsqr, Winich Farms, Salpha, Spitch, Crop2Cash and Selar.
- SeamlessHR, Prembly, Termii and Arnergy are near the top of the size range. They probably have some security function, so pitch scoped support work there, not "full security."
- Energy/IoT companies (Arnergy, PowerLabs, Salpha, MAX) have device-fleet exposure that a beginner should not test. Offer documentation, cloud/email/config work, and refer any IoT testing to a senior partner.
- The absence of any reported breach does not mean these companies are secure. Nigerian firms have a history of denying incidents ([TechCabal 2020](https://techcabal.com/2020/09/01/two-nigerian-banks-have-been-hacked-they-deny-it-heres-a-bigger-problem/)).

### Gaps
- **security.txt / responsible disclosure / bug bounty:** I could not check any company because all automated fetches failed. Check by hand at `https://<domain>/.well-known/security.txt` and in each site's footer.
- **Founder LinkedIn/X handles:** not captured. Founder names are confirmed only for PaidHR, Spleet, PowerLabs, Awarri, Spitch, Releaf and Lendsqr (CEO).
- **Headcount:** sourced only for Crop2Cash (27, PitchBook) and Prembly (about 80, YC). All others are unknown; check LinkedIn company pages.
- **Websites:** the domains I tried (for example paidhr.co, spleet.africa, getorda.com) are my assumptions and could not be checked by fetch. Confirm each from the company's official social profiles.
- **Liveness in 2026 is unconfirmed for:** Spleet, Seso Global, Propel, Releaf, Intron, Termii, Bumpa and Orda (possibly acquired).
- **Not researched (search budget ran out):** uduX (music streaming), LawPavilion (legaltech), and other govtech companies. Qoray (EV) returned no results.
- **Agriarche:** the only source is a low-quality aggregator.

## Q2: Which sell B2B SaaS to enterprises/banks and so face vendor security questionnaires?

### Takeaway
The clearest "I'll help you answer security questionnaires / prepare for ISO 27001 or SOC 2" targets are companies whose buyers are banks, lenders, hospitals or large enterprises: Termii, Prembly, Lendsqr, SeamlessHR, PaidHR, PowerLabs, Earthbond, Intron Health, Seso Global, Bumpa and Awarri.

### Cited Findings
- **Termii:** a messaging and OTP API provider to businesses; reported profitable in 2023 — [TechCrunch](https://techcrunch.com/2023/06/12/nigerias-termii-to-launch-mobile-app-and-scale-customer-engagement-business-with-new-funding/)
- **Prembly:** identity verification for businesses; YC company with about 80 staff — [YC](https://www.ycombinator.com/companies/identitypass)
- **Lendsqr:**
  - Sells lending infrastructure to more than 100 lenders — [Condia](https://thecondia.com/lendsqrs-is-making-credit-affordable/)
  - Its automation supports CBN-mandated reporting to credit bureaus — [TechCabal](https://techcabal.com/2025/10/01/lendsqr-credit-bureau-reporting/)
  - So regulated-lender clients will do vendor due diligence.
- **SeamlessHR:** enterprise HR/payroll; its Gates/Helios-backed expansion now includes financial services — [TechCabal](https://techcabal.com/2025/01/20/seamlesshr-raises-9-million-series-a-extension/); [TechEconomy](https://techeconomy.ng/?p=185394)
- **PaidHR:** HR/payroll SaaS; plans to expand its customer success teams after its 2025 seed — [Techpoint](https://techpoint.africa/news/paidhr-seed-funding/)
- **PowerLabs:** customers include hospitals, data centres, factories and critical infrastructure — [WeeTracker](https://weetracker.com/2026/04/09/powerlabs-pre-seed-funding-ai-energy-nigeria/)
- **Earthbond:** partners with 4 microfinance banks — [ImpactAlpha](https://impactalpha.com/earthbond-solar-nigeria-200000-madica/)
- **Intron Health:** deploys in the cloud and on-premise for healthcare providers — [Techpoint](https://techpoint.africa/news/intron-health-raises-pre-seed/)
- **Awarri:** works with a federal ministry (government data-handling expectations) — [TechCabal](https://techcabal.com/2025/09/26/the-high-stakes-push-to-build-nigerias-first-open-source-llm/)
- **Certifications:** none of the search results mention ISO 27001 or SOC 2 for any of these companies. For Prembly specifically, the search returned nothing on certification — [CB Insights](https://www.cbinsights.com/company/identitypass/financials)

### Inferences
- **Pitch priority:**
  1. Lendsqr, PaidHR, Earthbond and PowerLabs: seed or pre-seed, selling into regulated or critical buyers, and probably without in-house GRC staff.
  2. Termii, Prembly and SeamlessHR: larger, so pitch narrow support work such as drafting questionnaire answers, policy refreshes or phishing simulations.
- Under NDPA 2023, companies that handle data for banks and lenders, such as Lendsqr, Prembly and the payroll SaaS firms, act as data processors. A beginner can credibly offer an NDPA processor-obligations gap list and a data-processing-agreement template review, while making clear this is not legal advice.

### Gaps
- I could not verify whether any of these companies already holds ISO 27001 or SOC 2. Check each company's trust or security page and the certification-body registries.
- I found no published security questionnaires or trust centres for these companies.
