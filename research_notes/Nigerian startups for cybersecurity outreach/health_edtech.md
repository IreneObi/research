# Nigerian Healthtech & Edtech Startups for Beginner Cybersecurity Outreach

Research date: 2026-10-20. Desk research only (web search plus a few attempted fetches). Limits on method, read these first:
- WebFetch could not resolve techcabal.com or insights.techcabal.com (DNS failure), and outbound curl from the sandbox returned no connection. That means **no company website, security.txt, responsible-disclosure page or bug bounty could be checked directly**. Every "security.txt" field below is "NOT VERIFIED".
- Most details come from search-engine summaries of TechCabal, Techpoint, Tracxn, Crunchbase and similar pages. The underlying URLs are cited. Aggregators (Tracxn, CB Insights, StartupList, Revelio, Dealroom) are estimates and often stale.
- Fields marked "(unverified, background knowledge)" were not confirmed by a source in this session. The report writer should treat them as leads only.
- No contact emails were found or invented. The best outreach channel is the company's LinkedIn page or the founders' LinkedIn profiles, unless noted otherwise.

---

## Which smaller Nigerian healthtech/edtech startups are active and funded in 2025–2026?

### Takeaway
Fresh 2025–2026 equity rounds for small Nigerian healthtech and edtech companies are rare. Most of the startups that are clearly alive last raised in 2022–2024 and showed activity in 2025–2026 (events, partnerships, fundraising). The shortlist below has about 10 healthtech and 10 edtech names. Helium Health and uLesson are flagged "stretch", and Reliance Health is a third large name that probably also belongs in the stretch group. Confirmed shutdowns to EXCLUDE: 54gene (2023), Healthlane (2023), Medsaf (March 2024), Edukoya (Feb 2025).

### Cited Findings — ecosystem context
- The TechCabal Insights "State of Healthtech in Nigeria 2026" report (May 2026, with Digital Health Nigeria and CHAI) counts **128 active and 40 inactive** Nigerian healthtech startups. 97% of the inactive ones were founded before the pandemic. Closures spiked in 2018, 2019 and 2023, with 13 shutdowns in those periods. — [TechCabal](https://techcabal.com/2026/05/29/nigeria-added-65-healthtech-startups-after-covid-19-says-report/); [Report page](https://insights.techcabal.com/report/state-of-healthtech-in-nigeria-2026/)
- The same report names Healthlane alongside 54gene among the 2023 closures (per search summary of report coverage) — [Condia](https://thecondia.com/condia-insider-african-healthtech-struggling/); [Carecity Weekly](https://carecityweekly.substack.com/p/128-startups-271-million-and-one)
- Tracxn shows very little 2025 equity funding in Nigerian healthtech: **$50K across 1 round up to July 2025**. This is a database view and may be incomplete. — [Tracxn](https://tracxn.com/d/explore/healthtech-startups-in-nigeria/__BuNQoA9qXCPoTqXX3KpFNf_2McFFX3tp30-yxFBmVzs)
- An academic review (2025) finds wide seed activity in Nigerian digital health but steep attrition before Series A/B. — [Springer, Health Economics Review](https://link.springer.com/article/10.1186/s13561-025-00708-6)
- Tracxn lists 935 edtech startups in Nigeria (May 2026), and 511 of them are K-12 with $30.1M total funding in K-12. — [Tracxn edtech](https://tracxn.com/d/explore/edtech-startups-in-nigeria/__cRSooeKK_qSvYO9N0to07twfBz6ccTKFBUr95JQ-PkU); [Tracxn K-12](https://tracxn.com/d/explore/k-12-edtech-startups-in-nigeria/___6gEWd-brwfZX_LB4sPG70B-lj3wCxTExfSOFabXUz8)

### Cited Findings — EXCLUDE (shut down)
- **54gene** (genomics/diagnostics) began winding down in July 2023, and its website was offline by September 2023. It had raised about $45M. — [Dabafinance](https://dabafinance.com/en/news/nigeriabased-biotech-startup-54gene-to-shut-down); [Brand Spur, Jul 2026](https://brandspurng.com/2026/07/20/54gene-how-nigerias-genomics-startup-rose-to-global-prominence-before-its-collapse/)
- **Medsaf** (pharma procurement) shut down in March 2024 after raising more than $7M. Causes were a failed acquisition, debts and unpaid hospital receivables (reported June 2025). — [The Condia](https://thecondia.com/medsaf-shutdown-drug-supply/)
- **Edukoya** (exam prep, Honey Ogundeyi) shut down in February 2025. It had raised a $3.5M pre-seed in 2021 and served more than 80k students. — [Techpoint](https://techpoint.africa/2025/02/26/edukoya-shuts-down/); [Nairametrics](https://nairametrics.com/2025/02/26/nigerian-edtech-startup-edukoya-shuts-down-4-years-after-raising-3-5-million/); [Launch Base Africa](https://launchbaseafrica.com/2025/02/27/what-went-wrong-at-edukoya-nigerian-edtech-closure-raises-market-questions-and-financial-red-flags/)
- Techpoint reports that most African startup shutdowns in Q1 2025 were Nigerian. — [Techpoint](https://techpoint.africa/insight/african-startups-shutdown-2025/)
- TechCabal's 2025 roundup of collapsed deals exists but could not be fetched. — [TechCabal](https://techcabal.com/2025/12/26/africas-most-notable-tech-deal-collapses-in-2025/)

### HEALTHTECH SHORTLIST (10 + stretch)

Common exposure for all healthtech entries: health data is **sensitive personal data under NDPA 2023**. Breaches must be reported to the NDPC within 72 hours, and fines can reach the greater of 2% of annual gross revenue or ₦10M. Sources are under Q2 below.

**H1. Remedial Health** (pharmacy supply chain / B2B ordering and credit for pharmacies)
- Funding: **$12M Series A led by QED Investors (mid-2023)** and a **$4.4M seed (Sept 2022)**. YC-backed. It was the only Nigerian healthtech that raised debt in 2023. — [Crunchbase](https://www.crunchbase.com/organization/remedial-health); [Techpoint insight](https://techpoint.africa/insight/equity-grants-african-healthtech-funding/)
- Seedtable's 2026 Lagos healthtech ranking lists it among the smaller-stage names. — [Seedtable](https://seedtable.com/best-healthtech-startups-in-lagos)
- HQ: Lagos (per Seedtable listing). Founders: Samuel Okwuada and Victor Sowande (unverified, background knowledge). Website: remedial.health (unverified).
- Exposure: pharmacy customer KYC, credit and payment data, plus a mobile ordering app. The likely risk is fraud and account takeover more than patient data.
- Service fit: OWASP mobile/web test under contract; Google Workspace/M365 hardening; phishing awareness for sales and ops staff; NDPA gap assessment.
- Status 2026: listed in 2026 rankings. No shutdown reports found.

**H2. Healthtracka** (at-home lab diagnostics / test booking)
- Funding: Tracxn lists $1.5M total, with the latest recorded round a grant in Sept 2022. — [Tracxn](https://tracxn.com/d/companies/healthtracka/__NO_MsT1yIsEuV8YIsrvIMNOCel948BqFAZf0NCBUEhc)
- Active in 2025: it announced the "Banking on Women's Health Conference 2025" and a State of Women's Health in Nigeria report (April 2025). — [ThisDay](https://www.thisdaylive.com/2025/04/03/healthtracka-announces-banking-on-womens-health-conference-2025-landmark-report-launch/)
- HQ: Lagos (Seedtable). Founder: Ifeoluwa Dare-Johnson (unverified, background knowledge).
- Exposure: lab results (special-category), women's health data, home addresses, online payments.
- Service fit: NDPA gap assessment and DPIA; email-auth review (SPF/DKIM/DMARC) because results are often sent by email; phishing training.

**H3. Clafiya** (home-based primary care / community health workers)
- Funding: **$610K pre-seed (2023)** from Norrsken Accelerator, Acquired Wisdom Fund, Hustle Fund, Voltron Capital and others. — [Incubees](https://incubees.com/nigerian-health-tech-startup-clafiya-raised-610k-pre-seed-funding/)
- LinkedIn: [linkedin.com/company/clafiya](https://www.linkedin.com/company/clafiya)
- HQ: Lagos (unverified). Founders: Ekene Agu and Tito Amana (unverified, background knowledge).
- Exposure: patient records captured on field devices, so lost or stolen devices are a risk.
- Service fit: mobile-device and backup/ransomware-readiness checklist; policy drafting (acceptable use, BYOD); NDPA DPIA. A small team makes it a good first client.
- Status: 2025–2026 activity not confirmed. Gap.

**H4. WellaHealth** (HMO-tech micro-insurance plus pharmacy benefits network)
- It processed ₦1.4bn in pharmaceutical benefits and works with more than 2,000 community pharmacies in all 36 states. It launched Healthsend Africa for diaspora healthcare payments and partners with MyTherapist.ng on micro-insurance (dates unclear). — [TechBooky](https://www.techbooky.com/health-tech-startup-in-nigeria-hits-1-4b-naira-milestone/); [Techpoint](https://techpoint.africa/news/mytherapistng-expands-services-wellahealth/); [Leadership](https://leadership.ng/tech-startup-plans-increased-diaspora-remittances-for-healthcare/)
- Funding: up to $100K from the Google Black Founders Fund (2022) and a grant from Investing in Innovation Africa. YC alumnus (unverified). — [Crunchbase](https://www.crunchbase.com/organization/wella-health)
- Website: [wellahealth.com](https://www.wellahealth.com/blog/5-latest-health-trends-in-nigeria/) (blog confirmed in search). Founder: Ikpeme Neto, LinkedIn [ng.linkedin.com/in/ikpemeneto](https://ng.linkedin.com/in/ikpemeneto). The profile came up in search; his role as WellaHealth CEO is background knowledge.
- Exposure: insurance, health and payment data, cross-border remittance flows, and API integrations with thousands of pharmacies.
- Service fit: NDPA gap assessment, especially because NDPC's Aug 2025 sweep targeted **insurance** entities; third-party/API security review under contract; phishing training.

**H5. Platos Health** (AI metabolic-health platform / body-monitor devices)
- Funding: **$1.4M pre-seed (announced ~May 2025)** with backing reported from Google for Startups, Invest International and angels. The Platos Body Monitor is sold through more than 300 pharmacies (MedPlus, Justrite, Alpha). — [AfroTech](https://afrotech.com/lagos-based-startup-platos-health-announces-1-4m-pre-seed-funding-round-for-ai-powered-metabolic-health-platform); [Yahoo Finance](https://finance.yahoo.com/news/lagos-based-startup-platos-health-173023037.html)
- HQ: Lagos. Founders: not confirmed (gap).
- Exposure: biometric and health metrics from IoT devices, an app and cloud backend.
- Service fit: OWASP mobile testing; NDPA DPIA for AI processing of health data; cloud account hardening. This is the freshest-funded name on the list.

**H6. Intron Health** (AI clinical speech recognition / transcription for African accents)
- Funding: **$1.6M pre-seed (July 2024)**. — [Techpoint](https://techpoint.africa/2024/07/25/intron-health-raises-pre-seed)
- HQ: Lagos (unverified). Founder: Tobi Olatunji (unverified, background knowledge).
- Exposure: clinician dictation audio and transcripts that contain patient data. AI training-data governance and cross-border transfer are NDPA issues.
- Service fit: DPIA / AI data-governance policy drafting; cloud and M365 hardening. 2025–2026 status not confirmed in this session (gap).

**H7. MyItura** (diagnostics booking / "Shopify for healthcare providers")
- It was actively fundraising in 2026. Crunchbase lists a grant from CcHUB. — [Pitchwise blog](https://www.pitchwise.se/blog/myitura-pitchwise-story); [Crunchbase](https://www.crunchbase.com/organization/myitura); [StartupMapHub](https://startupmaphub.com/startups/seed/nigeria)
- Exposure: multi-tenant patient and provider data on an SME-provider SaaS platform, plus payments.
- Service fit: external attack-surface and email-auth review; OWASP web test; NDPA gap assessment. This is a very early-stage, pre-seed-sized prospect.

**H8. 10mg Health** (AI, collateral-free credit for clinics and pharmacies)
- Listed as a Nigerian seed-stage healthtech "open to funding". — [StartupMapHub](https://startupmaphub.com/startups/seed/nigeria)
- A separate search found no other coverage. Treat it as **low-confidence** and verify that it exists and operates before outreach.
- Exposure: lending and KYC data for health businesses (fintech-grade risk).

**H9. Lifestores Healthcare** (pharmacy chain / OgaPharmacy B2B supply)
- Funding: **$3M pre-Series A led by Health54 (CFAO's healthcare CVC), Oct 2022**. — [TechGist Africa](https://techgistafrica.com/funding/lifestores-healthcare-based-in-nigeria-has-closed-a-3-million-pre-series-a-funding-round/); [BusinessPost](https://businesspost.ng/health/lifestores-healthcare-gets-3m-to-offer-more-services/)
- Listed in Seedtable's 2026 Lagos ranking. — [Seedtable](https://seedtable.com/best-healthtech-startups-in-lagos)
- Exposure: prescription and customer data across many retail locations, POS and payments, and the inventory system.
- Service fit: backup/ransomware readiness; staff phishing training for distributed pharmacy staff; policy drafting.

**H10. DrugStoc** (licensed pharma distribution e-commerce for providers)
- Funding: about $4.4–4.56M total (trackers disagree). The latest entry is a grant or competition prize from Sept 2023. No 2025–2026 raise found. — [Tracxn](https://tracxn.com/d/companies/drugstoc/__Zg9Iswsx3iyV1XE1X6m-Z94S4S3W5PSm5auPjIeM0y4); [CB Insights](https://www.cbinsights.com/company/drugstoc)
- HQ: Lagos. Founder: Chibuzo Opara (unverified, background knowledge).
- Exposure: B2B ordering and payments, pharmacovigilance and traceability data. Supply-chain fraud and phishing (invoice fraud) are the main risks.
- Service fit: email-auth review (BEC prevention); Workspace hardening; phishing training.
- Status: operating status in 2026 not independently confirmed. Medsaf's collapse shows that this sub-sector is fragile.

**Other healthtech leads (unvetted):** CribMD, a telehealth listing, had no shutdown report found but no recent activity was confirmed either. Report coverage also shows the Kangpe-to-Reliance pivot.

**STRETCH H-S1. Helium Health** (EMR/hospital software plus HeliumCredit financing)
- **$30M Series B (June 2023) led by AXA IM Alts**, bringing total funding to $42.12M. It acquired Meddy (Qatar). Dealroom shows team size falling 11.6% year on year (undated). — [Techpoint](https://techpoint.africa/news/helium-health-30m-seriesb/); [Dealroom](https://dealroom.co/companies/helium-health/); [LinkedIn](https://www.linkedin.com/company/heliumhealth)
- Exposure: hospital EMR data at scale, which makes it the highest-value health-data target among Nigerian startups. It probably has internal security staff, so a beginner should only pitch narrow work (e.g., awareness training for client hospitals).

**STRETCH H-S2 (note: a third large name). Reliance Health** (tech-enabled HMO, formerly Kangpe/YC)
- **$40M Series B (2022) led by General Atlantic**. It has integrations with more than 2,000 pharmacies. — [Crunchbase](https://www.crunchbase.com/organization/reliancehealth/news_and_analysis); [Technext](https://technext24.com/news/telemedicine-is-finally-taking-off-in-nigeria/)
- It sits above the 2-stretch cap together with Helium and uLesson. The report writer should pick 2 of the 3.

### EDTECH SHORTLIST (10 + stretch)

Common exposure: many of these process **children's data**. NDPA 2023 requires parental or guardian consent for processing a child's data, and many also take school-fee payments.

**E1. Edves** (K-12 school management / digital infrastructure)
- Founded 2016 by Dimeji Falana and Yinka Adesina. Seed funding of about $766.5K (Nairametrics, 2024) or $575K (African Exponent). The sources conflict. — [Nairametrics](https://nairametrics.com/2024/05/12/meet-nigerian-ceos-of-edtech-startups-who-have-raised-100k-in-funding-rounds/); [African Exponent](https://www.africanexponent.com/top-18-educational-tech-startups-disrupting-the-academic-landscape-in-africa-2025/)
- Exposure: student records, grades, parent contacts and fee payments for many schools in one multi-tenant SaaS.
- Service fit: OWASP web test of the school portal; NDPA gap assessment including children's consent; DPA/processor-contract templates for school clients. **This is a top prospect.**

**E2. Schoolable** (tuition collection / school-fee payments and financing for private K-12)
- Lagos, founded 2018–2020 (sources conflict). Founders are listed as Henry Chibuzo (CEO) and Angela Essien, but one source names Philip Eche. Investors include Founders Factory Africa and Y Combinator. — [StartupList Africa](https://www.startuplist.africa/startups/schoolable); [Tracxn](https://tracxn.com/d/companies/schoolable/__xw4NN28_0yvFSaGw6thKGknrOFyZwa4zNlw5CygFgU0); [Founderstack Africa](https://founderstackafrica.com/startup/schoolable)
- Exposure: payment flows, parent credit/KYC data and children's enrolment data. There may be a separate AllPro "Schoolable" savings product, so name collision is possible. — [Technext](https://technext24.com/news/allpros-schoolable-is-an-edtech-solution-that-helps-parents-plan-save-and-track-school-fees-payments-in-nigeria/)
- Status 2025–2026 not confirmed (gap).

**E3. EduPali (FastaMoni Technologies)** (school-fee payments with split payments for low-income families)
- Co-founder and CEO Adetola Adele. It had more than 100 schools by 2023 and was raising a $500K pre-seed. — [Techloy](https://www.techloy.com/edupali-lets-you-make-school-fee-payments-with-ease/); [TechEstate](https://techestate.io/2023/08/03/nigerian-startup-launches-school-fee-payments-platform/)
- Exposure: payment and instalment-credit data, plus children's data. Service fit: email-auth and anti-fraud; OWASP web test; NDPA. Status 2025–2026 not confirmed.

**E4. Klas** (online teaching / virtual classroom platform for creators)
- **$1M seed, 6 Feb 2024**. The founder is reported as Mubarak Imam (founded 2021) or CEO Nathan Nwachukwu (founded 2022); the sources conflict. — [Tracxn edtech list](https://tracxn.com/d/explore/edtech-startups-in-nigeria/__cRSooeKK_qSvYO9N0to07twfBz6ccTKFBUr95JQ-PkU/companies); [Techpression](https://techpression.com/nigerian-edtech-startups-secure-100k/); [Ecofin](https://www.ecofinagency.com/news-services/2107-47776-inclusive-training-in-africa-nigerian-edtech-innovates-from-the-diaspora)
- Exposure: creator payouts and payments, learner accounts, video content. Service fit: OWASP web test; M365/Workspace hardening.

**E5. Afrilearn** (K-12 curriculum video lessons, WAEC/JAMB prep)
- Co-founded in 2019 with Gabriel Olatunji-Legend. Support from UNICEF, the AU and the Netherlands. Investors include Village Capital and The Bulb. Revenue comes from subscriptions. — [Forbes Africa 2023](https://www.forbesafrica.com/entrepreneurs/2023/08/14/beyond-the-classroom-nigerian-edtech-entrepreneurs-aim-to-serve-the-world); [Wikipedia](https://en.wikipedia.org/wiki/Afrilearn)
- Exposure: many minors' accounts plus subscription payments. Service fit: NDPA children's-consent review; phishing training.

**E6. Teesas** (K-12 learning app plus Summer School)
- Ranked #5 Nigerian edtech by impact (Nov 2025) and ran Teesas Summer School in mid-2025. CB Insights: alive, $1.85M raised. — [Technext Nov 2025](https://technext24.com/2025/11/06/top-5-nigerian-edtech-platforms-2025/); [CB Insights](https://www.cbinsights.com/company/teesas); [Brand Spark](https://www.thebrandsparks.com/2025/01/13/case-study-how-teesas-became-a-top-3-edtech-brand-in-nigeria/)
- Exposure: minors' data and payments. **Confirmed active in 2025.**

**E7. Tespire** (Abuja edtech)
- Joined the CcHUB x Mastercard Foundation EdTech Fellowship in 2025 (up to $100K equity-free) and opened a seed round in January 2026 (per search summary; the underlying article URL was not isolated, see [Abuja City](https://abujacity.com/post/abuja-startup-ecosystem)). Low confidence on product details.

**E8. The VARLC Project** (peer-tutoring platform), plus Ntapi Inc and Neuronest (AI learning)
- These won ₦7M combined in 2025 from the Women and Career EdTech Fellowship. VARLC won ₦4.5M. — [BusinessDay](https://businessday.ng/technology/article/three-nigerian-edtech-startups-secure-n7m-in-seed-funding-to-scale-ai-peer-learning-platforms/)
- They are very small (micro-grant stage). A good match for low-cost policy and NDPA starter packs.

**E9. AltSchool Africa** (tech-talent school; **runs a cybersecurity diploma and B.Sc.**)
- It offers a 12-month cybersecurity diploma (prepares for Security+, CEH, Cisco CyberOps) and a B.Sc. Cybersecurity delivered with American Open University of Nigeria (NUC-accredited pathway). Its pages describe instructor-led mentorship, but no named cyber instructors were found. — [AltSchool B.Sc.](https://altschoolafrica.com/degrees/cybersecurity); [Diploma page](https://engineering.altschoolafrica.com/programs/cyber-security); [AltSchool blog](https://blog.altschoolafrica.com/top-cybersecurity-courses-in-nigeria/); [Wikipedia](https://en.wikipedia.org/wiki/AltSchool_Africa); [EdTechReview funding](https://www.edtechreview.in/news/nigeria-based-edtech-altschool-raises-funds-to-promote-african-tech-talent/)
- Two angles: (a) prospect, because it handles student and payment data for a large learner base; (b) **possible employer or partner for beginner instructors, mentors or teaching assistants**. It is larger than seed stage, so treat it as a near-stretch.

**E10. Utiva** (tech-skills bootcamps; **cybersecurity bootcamp listed**)
- It runs mentor-led programs, including cybersecurity, and a third-party guide lists a "Utiva Cybersecurity Bootcamp" with mentorship and job support. Its instructors are described as industry practitioners. — [Utiva cloud bootcamp page](https://utiva.io/courses/cloud-bootcamp/); [EdTechnology.ng 2026](https://www.edtechnology.com.ng/top-10-edtech-platforms-in-nigeria-2026/); [Fibertrain](https://fibertrain.net/how-to-become-a-cyber-security-expert-in-nigeria/)
- Angle: **instructor or mentor partnership** more than a security-services client.

**STRETCH E-S1. uLesson** (K-12 learning app/devices, Lekki)
- Founded 2019 by Sim Shagaya. $25.6M over 4 rounds, with the latest a Series B in Dec 2021. Revelio estimates headcount fell from 448 (2023) to 191 (2026). — [Tracxn](https://tracxn.com/d/companies/ulesson/__K8utVJnLq8lMKhZ2G6LxRS4xKfJRcTAHc0alzLn-25c); [Revelio Labs](https://www.reveliolabs.com/companies/ulesson/employees); [Wikipedia](https://en.wikipedia.org/wiki/ULesson)
- Exposure: large volume of minors' data. Shrinking staff may mean security work is being outsourced, so it is worth a narrow pitch.

### Inferences
- The most realistic beginner targets are the small, recently active, NDPA-exposed firms: Healthtracka, Clafiya, Platos Health, MyItura, WellaHealth, Edves, Teesas, EduPali, Klas and the micro-grant edtechs. They are too small for internal security teams and too new for Big-4 engagements.
- Edu-fintech (Schoolable, EduPali) and pharmacy-credit (Remedial, 10mg Health) firms carry fintech-like fraud and BEC risk. An email-auth (DMARC) review plus phishing training is a cheap, non-intrusive opening offer.
- AltSchool and Utiva are better treated as instructor or partnership channels than as clients.

### Gaps
- No company websites could be fetched, so websites, founding years, headcounts and founder handles are largely unconfirmed. Headcount (5–150 staff) was not verified for any small company.
- 2025–2026 operating status is unconfirmed for Clafiya, Intron Health, DrugStoc, Schoolable, EduPali, Klas, CribMD and 10mg Health. A LinkedIn post-recency check is needed.
- Not covered: Gradely, PrepClass, FlexiSAF (SAFSMS/school finance), Decagon, Semicolon, MDaaS/Beta Health, Curacel (health-insurance claims infra). No sources were checked for them in this session.
- Platos Health founders, the 10mg Health legal entity and Tespire's product details were not found.

---

## What data-protection exposure makes them good prospects (NDPA special-category data, children's data)?

### Takeaway
Health data is sensitive personal data under NDPA 2023. Children's data needs parental consent. Breach notification is due within 72 hours, fines reach 2% of turnover, and NDPC compliance-audit-return deadlines create a recurring, sales-friendly obligation. Small health and edtech startups usually cannot meet these duties in-house.

### Cited Findings
- The NDPC and the Federal Ministry of Health partnered in April 2025 on healthcare-sector data privacy reforms. The NDPC warned that breaches could cause misdiagnosis, discrimination and even loss of life. — [Nairametrics](https://nairametrics.com/2025/04/18/ndpc-partners-with-health-ministry-to-boost-data-protection-in-nigerias-healthcare-sector/)
- On 26 Aug 2025 the NDPC began sector-by-sector investigations of suspected NDPA non-compliance, starting with insurance, pension, banking and insurance brokers. Entities had 21 days to provide evidence of 2024 Compliance Audit Returns (CAR). Insurance-linked HMO-tech such as WellaHealth and Reliance Health is adjacent to this. — [DataGuidance](https://www.dataguidance.com/news/nigeria-ndpc-begins-sector-sector-investigation)
- Breach notification to the NDPC is due within 72 hours. The GAID (General Application and Implementation Directive) took full effect on 19 Sept 2025. — [Wikipedia: NDPC](https://en.wikipedia.org/wiki/Nigeria_Data_Protection_Commission); [Multilaw guide](https://www.multilaw.com/Multilaw/Multilaw/Data_Protection_Laws_Guide/DataProtection_Guide_Nigeria.aspx)
- Fines go up to 2% of annual gross revenue or ₦10M, whichever is greater. The 2025 CAR filing window was extended to 30 May 2026. — [Ehile Manasseh & Co.](https://ehilemanassehandco.ng/insights/ndpa-enforcement-2026-compliance-audit-returns.html); [Privacy Needle](https://privacyneedle.com/ndpc/nigeria-set-for-stricter-ndpa-enforcement-in-2026/)
- The NDPC has opened a probe into **tertiary institutions'** NDPA compliance covering students, staff and alumni data. This is relevant context for edtech vendors serving schools. — [Punch (via search)](https://punchng.com/ndpc-probes-tertiary-institutions-over-data-protection-compliance/)
- Common healthcare data-protection mistakes in Nigeria are listed by a law firm. This is vendor content and can be used as a pitch reference. — [Johan Consults](https://johanconsults.com/blog/data-protection-mistakes-in-healthcare-in-nigeria/)
- TechCabal Insights notes that Nigerian healthtechs build around fragmented data systems. — [TC Insights](https://insights.techcabal.com/nigerias-healthtech-startups-are-building-around-fragmented-data-systems/)

### Inferences
- Beginner-sellable packages that map to these obligations are: (1) NDPA gap assessment, CAR-readiness and DPIA templates; (2) a 72-hour breach-response playbook plus a backup/ransomware checklist; (3) DMARC/SPF/DKIM and public attack-surface review using passive OSINT only; (4) phishing awareness training; (5) policy drafting (privacy notice, children's consent flows, retention, vendor/DPA terms).
- A beginner should partner with or refer to an NDPC-licensed Data Protection Compliance Organisation (DPCO) for the formal CAR filing. The DPCO licensing regime was not researched here, so verify it.

### Gaps
- The exact NDPA section numbers for children's consent and sensitive data were not pulled from the Act text in this session.
- DPCO licensing requirements for consultants were not researched.

---

## Any publicised incidents or NDPC actions?

### Takeaway
No publicly reported breach tied to any shortlisted startup was found. Sector-level incidents exist, including an alleged dark-web sale of about 130k Nigerian patient records (Oct 2025, unverified) and a 2018 NAIIS HIV-survey data exposure. NDPC enforcement so far has hit large firms (MultiChoice, Fidelity Bank) rather than health or edtech startups.

### Cited Findings
- **Oct 2025 (alleged):** a dark-web actor posted a dataset said to come from a Nigerian healthcare facilities provider, with about 130,000 patient records (names, payer/card numbers, phones, birth dates). Unverified. — [CYFIRMA](https://www.cyfirma.com/research/cyber-threat-assessment-on-nigeria/)
- WizCase found unsecured medical databases, including more than 80,000 records from the 2018 Nigeria HIV/AIDS Indicator and Impact Survey (NAIIS). Reported about 2 years ago. — [Daily Trust](https://dailytrust.com/nigerian-medical-data-at-risk-following-worldwide-leaks/)
- A Nigerian fintech (BestFin / iCredit) left an open MongoDB of more than 300GB exposing about 846k customers. This is not health or edtech, but it is a useful example of the misconfiguration class. — [Privacy Needle](https://privacyneedle.com/general-privacy/massive-nigerian-fintech-sms-data-leak-resurfaces/)
- NDPC fines: **MultiChoice ₦766.2M** (June/July 2025, cross-border transfers) and **Fidelity Bank ₦555.8M** (Aug 2024). The NDPC reportedly collected about ₦7.2bn in registrations, fees and fines and completed 246 breach investigations. These figures come from secondary sources. — [ITEdgeNews](https://www.itedgenews.africa/ndpc-slams-multichoice-with-%E2%82%A6766m-fine-for-privacy-violations/); [KS Legal](https://kslegal.org/ndpcs-fine-against-multichoice-nigeria/); [Techmoonshot Feb 2026](https://techmoonshot.com/2026/02/10/nigeria-just-collected-%E2%82%A67-2-billion-in-data-privacy-penalties-and-its-just-getting-started/)
- An older Medium post titled "Africa's Biggest Ever Data Leak?" appeared in results but was not read. — [Medium](https://nweike.medium.com/africas-biggest-ever-data-leak-9ee51810cf70)

### Inferences
- Without company-specific incidents, outreach should lean on sector risk and regulatory pressure (the NDPC health partnership, the insurance sweep, the tertiary-institution probe, the CAR deadlines) rather than on naming any company's breach.
- Desk-only constraint: any attack-surface "review" in a pitch should be passive (DNS/email-auth records, public certificate transparency) and offered for authorisation before deeper work.

### Gaps
- **security.txt / responsible-disclosure / bug bounty: NOT VERIFIED for any company** because site fetches failed in this environment. Recheck manually at `https://<domain>/.well-known/security.txt` and on the privacy/security pages. No public bug bounty programme for any listed company was surfaced in searches.
- No company-specific NDPC action against a Nigerian healthtech or edtech startup was found.
- The CYFIRMA-reported victim was not named in the summary.
