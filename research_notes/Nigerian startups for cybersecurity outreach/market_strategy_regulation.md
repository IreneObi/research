# Nigerian Market Context and Go-To-Market Strategy for a Beginner Cybersecurity Freelancer Selling to Nigerian Startups (as of Oct 2026)

Research method note: about 18 searches and fetches. Several primary-source fetches failed with DNS errors (templars-law.com, mondaq, dlapiper), so some findings rely on search-result summaries of those pages. All items marked "estimate" or "unverified" should be checked before use. Today's date is 2026-10-20. The most recent dated items found are from early to mid 2026: the extension of the NDPC audit deadline to 30 May 2026, and a Templars client alert from January 2026.

## 1. Regulatory demand drivers (NDPA 2023, GAID 2025, DPCOs, CBN, Cybercrimes Act, fines)

### Takeaway
The NDPA 2023 and the GAID 2025 are the strongest and broadest demand drivers for selling to startups. Almost any startup that processes data on more than 200 people in six months is a "Data Controller/Processor of Major Importance" (DCPMI), so it has to register with the NDPC and pay a fee. It also has to run annual compliance audits, and the higher tiers must file their audit returns through a licensed DPCO. NDPC enforcement is real: Fidelity Bank was fined ₦555.8m and Multichoice ₦766m. The CBN cybersecurity framework binds banks and PSBs directly, and fintechs feel it mostly through bank-partner due diligence. The Cybercrimes Act amendment added 72-hour incident reporting. Its 0.5% levy was suspended and the CBN circular withdrawn in May 2024.

### Cited Findings
**NDPA / GAID**
- The GAID 2025 took effect on 19 Sept 2025 and replaced the earlier NDPR framework — [Mondaq summary](https://www.mondaq.com/nigeria/privacy-protection/1606106/the-nigeria-data-protection-commission-issues-the-general-application-and-implementation-directive-2025-gaid); [Templars GAID alert](https://templars-law.com/app/uploads/2025/04/NDPC-Issues-the-Nigeria-Data-Protection-Act-General-Application-and-Implementation-Directive-2025.pdf); official text: [NDPC GAID PDF](https://ndpc.gov.ng/wp-content/uploads/2026/01/NDP-ACT-GAID-2025-MARCH-20-1.pdf). (Note: the date was taken from the search summary and was not verified against the full text.)
- Under the GAID, only DCPMIs file Compliance Audit Returns (CAR). Ultra-High Level (UHL) and Extra-High Level (EHL) DCPMIs must file through a DPCO. Ordinary-High Level (OHL) DCPMIs do not need a DPCO to file — [Mondaq](https://www.mondaq.com/nigeria/privacy-protection/1606106/the-nigeria-data-protection-commission-issues-the-general-application-and-implementation-directive-2025-gaid); [DLA Piper Privacy Matters](https://privacymatters.dlapiper.com/2025/06/nigeria-ndpc-issues-gaid-key-compliance-insights/)
- All controllers and processors must run a compliance audit within 15 months of starting business and annually after that. OHL entities register and renew their registration each year. The audit filing requirement for new entities applies only to UHL and EHL — [Mondaq (2026 audit obligations)](https://webiis10.mondaq.com/nigeria/data-protection/1736914/data-protection-compliance-in-nigeria-audit-return-obligations-for-2026)
- CAR filing fees depend on tier and the number of data subjects. Examples: UHL Tier A (50,000+ data subjects) is ₦1,000,000; EHL Tier A (10,000+) is ₦250,000. The overall range is about ₦100,000 to ₦1,000,000. Late filing carries a 50% penalty on the filing fee — [Mondaq](https://webiis10.mondaq.com/nigeria/data-protection/1736914/data-protection-compliance-in-nigeria-audit-return-obligations-for-2026); [Templars Jan 2026 alert](https://www.templars-law.com/app/uploads/2026/01/Client-Alert-Data-Protection-Compliance-in-Nigeria.pdf)
- The deadline for filing 2025 CARs was extended from 31 March to 30 May 2026 — [Mondaq: NDPC extends data audit filing deadline](https://webiis08.mondaq.com/nigeria/privacy-protection/1770448/regulatory-update-ndpc-extends-data-audit-filing-deadline)
- DCPMI registration (Feb 2024 Guidance Notice): an organisation enters "major importance" if it processes data on more than 200 data subjects in six months. One UHL factor is processing more than 5,000 data subjects. Registration fees are ₦250,000 (UHL), ₦100,000 (EHL) and ₦10,000 (OHL). Examples: UHL covers banks, telecoms and insurers; EHL covers MDAs, microfinance banks, hospitals and universities; OHL covers SMEs and schools. The criteria may have been reworded in later versions — [Mondaq highlights](https://www.mondaq.com/nigeria/data-protection/1434270/key-highlights-of-the-guidance-notice-on-registration-of-data-controllers-and-data-processors-of-major-importance); [NDPC registration notice PDF](https://ndpc.gov.ng/Files/registration.pdf); [Michalsons](https://www.michalsons.com/blog/nigeria-data-protection-act-ndpa-controller-and-processor-registration/77465)
- NDPA penalty: for DCPMIs, the higher of ₦10m or 2% of the previous year's gross revenue. Regulators can also order compensation and disgorgement of profits — [TheCable](https://www.thecable.ng/?p=1053071). For non-major-importance entities, a source reports the higher of ₦2m or 2% of revenue. An NDPR-era source says 1% / ₦2m, so the sources conflict — [Mondaq: deadline looms](https://webiis10.mondaq.com/nigeria/privacy-protection/1330572/deadline-looms-the-importance-of-data-protection-audits-and-the-cost-of-non-compliance)

**DPCO regime**
- Becoming a DPCO: eligible applicants include professional service consultancies, IT service providers, audit firms and law firms. Requirements: CAC registration, tax clearance, professional or academic qualifications for at least two staff, ID for one director, a website on a .ng domain, and at least one appointed DPO. Applications go through services.ndpc.gov.ng — [NDPC DPCO requirements](https://www.ndpc.gov.ng/dpco-registration-requirements/); [NDPC requirement page](https://www.ndpc.gov.ng/Home/requirement)
- The DPCO licence fee was reportedly raised from ₦50,000 to ₦2 million to screen out unserious applicants — [Nairametrics](https://nairametrics.com/?p=490236). The NDPC page only says "prescribed licensing fees". Some secondary sources mention professional indemnity insurance, which does not appear on the NDPC list — [Global Advisory Experts](https://globaladvisoryexperts.com/ndpc-data-controller-registration/)
- The NDPC has revoked DPCO licences (19 in one year) after performance reviews. A DPCO found concealing a breach loses its licence — [NDPC DPCO page](https://ndpc.gov.ng/dpco); [ITEdgeNews](https://www.itedgenews.africa/ndpc-reopens-registration-portal-for-aspiring-dpcos-to-enhance-data-protection-in-nigeria/)
- DPCOs typically offer privacy advisory, external DPO services, breach reporting and DPIAs. The NaDPAP whitelist criteria include engaging a DPCO plus a competent DPO — [OAL: Why SMEs need a DPCO](https://oal.law/?p=18489)

**Enforcement examples**
- Fidelity Bank was fined ₦555.8m (0.1% of its 2023 gross revenue) for processing without consent, via cookies and its banking apps. The fine was aggravated by poor cooperation, and it was the largest NDPC fine at the time. Fidelity disputed it — [ITEdgeNews](https://www.itedgenews.africa/fidelity-bank-fined-n555-8m-by-ndpc-for-data-protection-violations/); [TheWill](https://thewillnews.com/fidelity-bank-slammed-with-n555-8m-fine-for-data-breach); [TechnologyTimes](https://technologytimes.ng/fidelity-bank-app-caused-data-protection-fine/)
- Multichoice Nigeria was fined ₦766,242,500 over subscriber data and unlawful cross-border transfers, and was ordered to undergo a compliance audit — [ICIR](https://www.icirnigeria.org/ndpc-fines-multichoice-nigeria-%e2%82%a6766-million-over-data-privacy-violations/); [ITEdgeNews](https://www.itedgenews.africa/ndpc-slams-multichoice-with-₦766m-fine-for-privacy-violations/)
- Meta: the widely cited $220m fine came from the FCCPC (the competition and consumer regulator), not the NDPC. The ICIR reports combined Nigerian regulatory fines on Meta above $290m — [ICIR](https://www.icirnigeria.org/ndpc-fines-multichoice-nigeria-%e2%82%a6766-million-over-data-privacy-violations/). The NDPC's own Meta amount was not confirmed.
- The NDPC was investigating over 400 complaints against online lending (loan app) operators. I found no confirmed sanction amount on a specific loan app — [TheCable](https://www.thecable.ng/?p=1053071). The NDPC has also probed Moniepoint, Wema Bank and Bet9ja, and reportedly TikTok and Truecaller — [Condia](https://thecondia.com/ndpc-probe-data-protection-compliance-moniepoint-nigeria/); [ITEdgeNews](https://www.itedgenews.africa/wema-bank-bet-naija-face-fines-and-hefty-sanctions-over-privacy-breaches/); [TheCable tag page](https://thecable.ng/tag/nigeria-data-protection-commission)
- BusinessDay reports the NDPC has concluded 246 investigations and generated ₦5.2bn in revenue — [BusinessDay](https://businessday.ng/technology/article/ndpc-concludes-246-investigations-generates-n5-2bn-revenue-in-show-of-ironclad-enforcement/) (date and detail not verified)

**CBN framework**
- The CBN Risk-Based Cybersecurity Framework and Guidelines for DMBs and PSBs (2024) was issued on 31 May 2024 with full compliance due 1 July 2024. It replaces the 2018 framework and applies to commercial, merchant and non-interest banks and PSBs. Its parts include governance (Board, senior management, CISO), risk management, VAPT (Part 2.3), resilience, emerging tech, metrics/reporting and enforcement — [CBN PDF](https://cbn.gov.ng/Out/2024/BSD/CBN%20Risk-Based%20Cybersecurity%20Framework%20for%20DMBs%20and%20PSBs_2024.pdf); [OpenSecurityArchitecture control map](https://opensecurityarchitecture.org/frameworks/cbn-csf/controls). Secondary sources mention an annual self-assessment and participation in NigFinCERT; these were not verified against the CBN text.
- Note: the framework covers DMBs and PSBs. Its direct scope over PSPs, switches and fintech licensees could not be confirmed. The 2018 framework (for DMBs and PSPs) is at [CBN 2018](https://www.cbn.gov.ng/out/2018/bsd/risk%20based%20cybersecurity%20framework%20final.pdf).
- Regulation and sector regulators (telecoms, insurance, capital markets) increasingly expect third-party validation such as pentests — [DeepStrike](https://deepstrike.io/blog/top-penetration-testing-companies-nigeria-2025) (vendor blog, lower reliability)

**Cybercrimes (Amendment) Act 2024**
- Any individual or entity must report cyber threats or breaches to ngCERT within 72 hours of detection (previously 7 days), either directly or via sectoral CERTs or SOCs. Non-compliance carries a ₦2,000,000 fine and/or denial of internet services — [Engineering News / Creamer Media citing a law firm](https://engineeringnews.co.za/print-version/entities-will-be-required-to-report-cybercrime-within-72-hours-law-firm-2024-07-19); [Templars](https://templars-law.com/app/uploads/2024/08/Cybercrimes.pdf)
- Section 44(2)(a) levy: 0.5% of the value of electronic transactions, to be paid into the National Cybersecurity Fund (ONSA). The CBN circular of 6 May 2024 directed banks to collect it. Under s.44(8), failure to remit carries a fine of at least 2% of annual turnover — [KPMG Nigeria](https://kpmg.com/ng/en/insights/2024/05/central-bank-issues-guidance-on-the-collection-and-remittance-of-the-national-cybersecurity-levy-by-financial-institutions.html); [BusinessDay](https://businessday.ng/news/article/cbn-imposes-0-5-cybersecurity-levy-on-electronic-transfers/)
- The Federal Government suspended the levy on 14 May 2024, and the CBN withdrew the circular on 17 May 2024. Law firms note it could be reintroduced unless the statute is amended — [Channels TV](https://www.channelstv.com/2024/05/19/cbn-withdraws-cybersecurity-levy-circular-after-fg-suspension); [TechCabal](https://techcabal.com/2024/05/19/cbn-withdraws-cybersecurity-levy/); [Afriwise](https://www.afriwise.com/blog/cbn-withdraws-circular-on-the-collection-and-remittance-of-national-cybersecurity-levy)

### Inferences
- The best regulatory "hook" for a beginner selling to startups is NDPA readiness: DCPMI registration, a privacy notice, a records-of-processing inventory, a DPIA, a breach-response plan, and audit-readiness ahead of the next CAR cycle (likely early 2027). The 72-hour ngCERT reporting duty is a second hook for an incident-response plan.
- A beginner cannot legally file CARs for UHL or EHL clients. That route is (a) subcontracting to, or being employed by, a licensed DPCO, which needs only 2 qualified staff plus a DPO, so DPCOs plausibly need technical help, or (b) later forming a company that meets the requirements and paying the reported ₦2m licence fee. Option (a) is realistic for year one; option (b) is a year-two or later goal.
- For fintechs, CBN framework duties mostly reach a startup through its sponsor bank or PSB's third-party/vendor-risk questionnaires. That creates demand for "security questionnaire support" and for basic policies and evidence.
- Do not pitch the 0.5% levy as a current obligation. It is suspended.

### Gaps
- The exact GAID text on DCPMI tiers (it may have changed from the Feb 2024 notice) and current CAR fees for OHL could not be fetched directly.
- The current DPCO licence fee (₦2m reported) and the number of active DPCOs were not confirmed from the NDPC primary page.
- Whether the CBN 2024 framework or another CBN guideline binds PSPs, switches, MMOs and fintech licensees directly was not confirmed.
- SEC Nigeria and NCC cybersecurity requirements were not researched for lack of tool budget. The NCC's sector rules and SEC's digital-asset/fintech rules should be checked separately.
- PCI DSS: no Nigeria-specific source was found. General knowledge (not cited here) is that card-handling startups must satisfy their acquirer or processor's PCI DSS v4.0.x requirements. Verify before relying on it.
- No confirmed NDPC fine on a specific loan app was found.

## 2. Services a beginner can credibly sell vs. ones needing senior credentials; price benchmarks

### Takeaway
I found no published Naira rate cards for entry-level security services. Global pentest prices range from about $2k to $50k+, which is far above what most Nigerian seed-stage startups will pay. A beginner should sell low-risk, fixed-scope, evidence-producing services: email authentication, external attack-surface reviews, cloud and SaaS hardening, NDPA documentation support, awareness training and questionnaire help. Full pentests, DPCO audit filings and vCISO roles for regulated fintechs should be left to, or done under, senior or licensed parties.

### Cited Findings
- Global pentest cost benchmarks: typically $2,000 to $50,000, with an average of about $10,000 to $35,000. Web app tests run about $5,000 to $30,000. Price depends mainly on scope and testing style — [FireCompass 2025](https://firecompass.com/penetration-testing-cost-2025/); [TrustNet](https://trustnetinc.com/pricing/penetration-testing-cost/); [Beagle Security](https://beaglesecurity.com/blog/article/penetration-testing-cost.html) (non-Nigerian sources)
- Nigerian pentest providers (FactoSecure, CyberDome, Hackrowd, PhynxLabs, Digital Encode) do not publish prices — [DeepStrike list](https://deepstrike.io/blog/top-penetration-testing-companies-nigeria-2025)
- Regulatory price anchors a beginner can cite: DCPMI registration costs ₦10k / ₦100k / ₦250k, and CAR filing costs ₦100k to ₦1m plus a 50% late penalty — see Section 1 sources ([Mondaq](https://www.mondaq.com/nigeria/data-protection/1434270/key-highlights-of-the-guidance-notice-on-registration-of-data-controllers-and-data-processors-of-major-importance); [Mondaq 2026](https://webiis10.mondaq.com/nigeria/data-protection/1736914/data-protection-compliance-in-nigeria-audit-return-obligations-for-2026))
- DPCO services include external DPO, DPIA, breach reporting and audits — [OAL](https://oal.law/?p=18489)

### Inferences
These are estimates and have not been checked against Nigerian market data. They are suggested starting prices for a beginner, built from the anchors above and general freelance norms. Validate them through discovery calls.
- Email/domain hygiene fix (SPF/DKIM/DMARC, MX/TLS, DNSSEC check, dangling-subdomain check): about ₦100k to ₦300k one-off ($65 to $200). Beginner-credible.
- External attack-surface review (passive OSINT, exposed services, TLS, headers, leaked credentials on public breach-notification sites, subdomains) with written authorisation: about ₦200k to ₦600k. Beginner-credible if non-intrusive and authorised.
- Google Workspace / M365 / AWS account-hygiene hardening (MFA, admin roles, sharing, logging, root account, CIS-benchmark quick wins): about ₦250k to ₦750k. Beginner-credible.
- NDPA starter pack (privacy notice, ROPA, cookie consent, DPIA template, breach-response and 72-hour ngCERT/NDPC playbook, DCPMI registration support): about ₦300k to ₦1m. Pair with a lawyer or DPCO for legal sign-off. Beginners should not hold themselves out as giving legal advice.
- Security awareness session or phishing simulation (with written consent from the company): about ₦150k to ₦500k per session.
- Security questionnaire / vendor due-diligence support for bank or enterprise deals: about ₦150k to ₦500k per questionnaire.
- "vCISO-lite" retainer (monthly check-ins, policy upkeep, alert triage): about ₦250k to ₦800k a month.
- Basic OWASP web/mobile testing: only with a signed scope and preferably under a senior's review. Full pentests for CBN-regulated or PCI-scoped clients usually need recognised credentials (OSCP/CREST-type) and insurance, so subcontract or partner.
- Price in Naira with a USD reference. Offer fixed-scope packages; startups dislike open-ended day rates.

### Gaps
- No Nigerian Upwork, LinkedIn or Jobberman rate data was retrieved. All Naira figures above are estimates.
- No published DPCO audit or package fees were found. Quotes must be requested from licensed DPCOs.

## 3. Legal and ethical boundaries

### Takeaway
Never test anything without written authorisation. Nigeria's Cybercrimes Act criminalises unauthorised access to computer systems. Cold outreach that says "I found a vulnerability on your site" without a published VDP, bug bounty or consent can be read as unauthorised access, or even extortion. Keep outreach to passive, publicly observable signals, such as a missing DMARC record, and offer an authorised assessment.

### Cited Findings
- The Cybercrimes (Prohibition, Prevention etc.) Act 2015, as amended in 2024, contains offences including unauthorised access, alongside the new 72-hour reporting duty — [Templars Cybercrimes Amendment explainer](https://templars-law.com/app/uploads/2024/08/Cybercrimes.pdf); [PLAC on the amendment process](https://placng.org/Legist/cybercrimes-amendment-act-exposes-lapses-in-legislative-process/)
- A DPCO found concealing or abetting a breach loses its licence, which shows regulators expect breaches to be disclosed — [NDPC DPCO page](https://ndpc.gov.ng/dpco)
- The NDPA and GAID require breach notification and DPIAs, so handling client personal data as a consultant creates processor obligations (see Section 1 sources).

### Inferences
- Minimum paperwork before any engagement: an NDA (mutual), an engagement letter with a written scope or rules of engagement (targets, IPs and domains, dates and times, allowed techniques, exclusions, emergency contact, data-handling and deletion terms), and a signed authorisation from someone who actually owns the asset. Get third-party permission for cloud or hosted assets where provider policies require it (for example, AWS pentest policy).
- A data processing agreement is needed if you touch personal data (NDPA processor role).
- Passive-only cold outreach is acceptable: DNS/DMARC records, TLS grades and security headers are publicly retrievable without intrusion. Avoid port scanning, directory brute force or login testing before authorisation. Under the Cybercrimes Act's unauthorised-access offences these could create criminal exposure. Statute section numbers were not verified here, so cite the Act generally and check with a lawyer.
- Responsible disclosure: if you stumble on an issue, report it privately and free of charge without demanding payment, through a VDP or security.txt if one exists. Don't tie disclosure to a sales pitch.

### Gaps
- I did not retrieve the exact section numbers or penalties for unauthorised access in the 2015/2024 Act text.
- I found no source on how many Nigerian startups publish a VDP or security.txt. A beginner could measure this across the 100-prospect list.

## 4. Credibility routes for beginners

### Takeaway
Use low-cost certifications (ISC2 CC, CompTIA Security+, eJPT) plus a privacy credential to support NDPA work. Add visible community participation (CyberSafe Foundation/CyberGirls, OWASP chapters, ISACA Lagos) and 2 to 3 documented pro-bono or discounted case studies with startups. That is the realistic credibility stack. The NDPC requires DPCOs to show qualified staff, so certifications also open the route to working under a DPCO.

### Cited Findings
- CyberSafe Foundation is a Lagos-based nonprofit (founder Confidence Staveley). It runs the #NoGoFallMaga awareness campaign, which reports reaching 20m+ people — [GFCE partner profile](https://thegfce.org/partners/cybersafe-foundation/); [TechCabal interview](https://techcabal.com/ar/2022/12/09/interview-with-confidence-staveley-founder-of-cybersafe-foundation/)
- The CyberGirls Fellowship is a one-year programme covering pentesting, web app testing and incident response. One cohort drew 20,000+ applications from 45 African countries. It self-reports 1,500+ women trained, with about 50% going on to cyber roles — [Cyber Magazine](https://cybermagazine.com/cyber-security/cyber-girls-fellowship-launches-nigeria); [Guardian NG](https://guardian.ng/guardian-woman/cybergirls-fellowship-begins-selection-for-cohort-three-entries/)
- DPCO applicants must show professional or academic qualifications for at least two staff members, so certifications have direct regulatory value — [NDPC DPCO requirements](https://www.ndpc.gov.ng/dpco-registration-requirements/)
- Local pentest and bug-bounty-related firms include Hackrowd (listed as a provider) — [DeepStrike](https://deepstrike.io/blog/top-penetration-testing-companies-nigeria-2025)

### Inferences
- Suggested sequence: ISC2 CC (free exam vouchers have been offered in the past) or Security+, then eJPT for hands-on credibility. Add an NDPA/CDPO-type or IAPP CIPP/E-adjacent course for privacy work. ISO 27001 Lead Implementer suits customers preparing for enterprise or bank deals.
- Bug bounty platforms (HackerOne, Bugcrowd, Intigriti) give public, verifiable proof of skill. I found no confirmed list of Nigerian startups with public programmes.
- Pro-bono or discounted first engagements: offer 3 to 5 startups an authorised "free email/domain hygiene + NDPA gap check" in exchange for a written testimonial or an anonymised case study.

### Gaps
- I did not verify the active status of OWASP Lagos/Abuja chapters, ISACA Lagos, AfricaHackon, DEF CON groups in Nigeria, or Ingressive for Good's current cyber programmes.
- I found no local survey of which certifications Nigerian employers or startups value most.

## 5. Outreach channels

### Takeaway
The prospect universe is large: NITDA had registered 12,948 startups plus 925 hubs and accelerators on the Startup Portal by April 2024. Hubs, accelerators and the Startup Consultative Forum are efficient one-to-many channels. Founder LinkedIn outreach should lead with a passive, public finding (for example, "your domain has no DMARC policy") and an NDPA deadline angle.

### Cited Findings
- By April 2024 the NITDA Startup Portal had registered 12,948 startups, 912 VCs, 1,735 angels and 925 accelerators, incubators and hubs — [Guardian NG](https://guardian.ng/business-services/nigeria-startup-act-attracts-12948-small-businesses-as-labeling-begins/)
- In Oct 2025 NITDA named Startup Consultative Forum representatives, including Iyin Aboyeji, to the National Council for Digital Innovation and Entrepreneurship — [Nairametrics](https://nairametrics.com/2025/10/06/nigeria-startup-act-nitda-names-iyin-aboyeji-3-others-for-innovation-council/)
- The startup-labelling process under the Nigeria Startup Act 2022 — [Mondaq](https://www.mondaq.com/nigeria/corporate-and-company-law/1703610/obtaining-a-startup-label-under-the-nigeria-startup-act-2022); [KPMG](https://assets.kpmg.com/content/dam/kpmg/ng/pdf/Nigerian-Startup-Act.pdf)

### Inferences
- Partner with hubs and accelerators (CcHUB, Ventures Platform, LoftyInc, Google for Startups Africa, Techstars, YC alumni networks) by offering a free "security and NDPA basics for founders" workshop. Collect sign-ups from that.
- Partner with DPCOs and law firms that need technical delivery capacity. This is the referral channel for compliance work.
- Events (GITEX Nigeria, Lagos Startup Week, Africa Fintech Summit, CyberSafe and ISACA events) are useful for networking. Their 2026 dates were not verified.

### Gaps
- The current number of labelled startups (2025/26) was not found.
- 2026 event dates and the status of the Startup Association of Nigeria (SAN) were not verified.

## 6. Objections and evidence on the state of startup security in Nigeria/Africa

### Takeaway
Nigerian organisations face some of the highest attack volumes in the world (about 4,200 to 4,400 attempted attacks per organisation per week in 2025, per Check Point). High-profile fintech incidents (Flutterwave 2023 and 2024, Patricia 2022) and nine-figure NDPC fines give concrete counters to "we're too small" and "budget" objections.

### Cited Findings
- Check Point's African Perspectives 2025 report: Nigerian organisations averaged about 4,200 weekly attacks, against an African average of 3,153 and a global average of 1,963 (60% above the global figure) — [Guardian NG](https://guardian.ng/technology/tech/nigeria-records-4200-weekly-cyber-attacks-as-attackers-exploit-ai-report/); [TechEconomy](https://techeconomy.ng/nigeria-cyberattacks-africa-security-report-2025)
- Check Point Q1 2025: Nigeria recorded 4,388 attacks per organisation per week, and Africa was the highest region at 3,286. In Nov 2025 Nigeria recorded 3,374, second to Angola. Figures vary by period — [BusinessDay](https://businessday.ng/technology/article/nigerian-organisations-recorded-4388-attacks-per-week-in-q1-check-point/)
- Flutterwave, April 2024: about ₦11bn (about $7m) was reportedly diverted, and some insiders said at least $13.5m. Flutterwave said no customer funds were lost. Earlier, in 2023, about ₦2.9bn was reported stolen, which Flutterwave denied — [TechInAfrica](https://www.techinafrica.com/flutterwave-hit-by-cyberattack-%E2%82%A611-billion-compromised/); [Legit.ng](https://www.legit.ng/business-economy/technology/1592756-nigerian-payment-company-loses-n11-billion-security-breach-funds-transferred-accounts/); [ITEdgeNews](https://www.itedgenews.africa/flutterwave-hit-again-by-major-cybersecurity-breach-with-billions-diverted/)
- Patricia lost about $2m of depositor funds in 2022 — [Techpoint: major hack and fraud cases](https://techpoint.africa/2024/07/04/major-hack-and-fraud-cases-in-nigeria/)
- A claim that PiggyVest users lost about $2.1m to credential stuffing in 2024 comes from one opinion source and is uncorroborated — [AllAfrica](https://allafrica.com/stories/202510030185.html)

### Inferences
Objection handling (suggested responses, not from a source):
- "No budget": offer fixed-fee entry packages priced below the cost of a single NDPA penalty (₦2m or ₦10m minimum) or a late-filing surcharge. Point to bank and enterprise deals that require security questionnaires.
- "We use AWS/Google, so we're secure": explain the shared responsibility model. Most breaches come from misconfigured IAM, MFA gaps and email spoofing on the customer side, and the domain-hygiene check shows this quickly.
- "We're too small to be targeted": cite the Check Point figures. Credential stuffing and BEC are automated and indiscriminate.
- "We'll do it after the raise": investors and partner banks ask for evidence in due diligence, and NDPA duties apply from 200 data subjects.

### Gaps
- Kaspersky, Serianu and Deloitte Africa reports were not retrieved for lack of tool budget.
- I found no Nigeria-specific data on startup security maturity (for example, DMARC adoption among Nigerian startups). The freelancer could generate this from public DNS across the 100 prospects as a content-marketing asset.
- Breaches in 2025 and 2026 at Nigerian fintechs were not confirmed beyond the Flutterwave items above.
