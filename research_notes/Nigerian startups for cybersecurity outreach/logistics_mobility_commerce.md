# Nigerian Logistics, Mobility, E-commerce, B2B Retail and Food-Delivery Startups: Prospects for a Beginner Cybersecurity Freelancer (as of 2026-10-20)

> Method note: these are desk-research notes built from web search result summaries. In this session WebFetch failed with DNS errors (techcabal.com, thecondia.com) and outbound curl to company sites returned no connection. So:
> (a) facts come from search-result summaries of the cited pages, and full articles were not read;
> (b) **websites, security.txt, responsible-disclosure and bug-bounty status could NOT be checked for any company**, and this has to be done by hand before outreach;
> (c) "operating in 2026" is graded by how strong the evidence is: **Strong** = 2025–26 news or funding; **Moderate** = 2026 third-party listings or reviews only; **Weak** = no 2025–26 evidence found.
> No contact emails were invented. Founder LinkedIn/X handles were not verified, so they are left out and listed as a gap.
> Domains marked "(unverified)" come from general knowledge and were NOT confirmed this session.

## Which smaller Nigerian logistics/mobility/commerce startups are active and funded in 2025–2026?

### Takeaway
About 20 candidates fit the brief. The best-evidenced active and recently funded prospects are Chowdeck (stretch), Heyfood, Gigmile, Treepz, Shipbubble, Topship, Haul247, Renda, Sendbox, Fez Delivery and Bumpa. Several well-known names are excluded because they went bankrupt, shut down or pivoted out of scope: Gokada (Chapter 11), GoLemon, Heroshe, Joovlin, Sabi (pivoted to minerals) and possibly Kobo360. Most of the small firms have no publicly reported 2025–26 round, and their latest funding dates from 2021–2024.

### Sector-level cited findings
- TechCabal reports that H1 2025 logistics and mobility funding was below the prior year but was still the sector's third most active deal period since 2019. Its list says MAX and Hytch were among Nigerian logistics and mobility startups that shut down between 2023 and H1 2025 (this claim about MAX is contradicted below) — [TechCabal H1 2025 logistics raises](https://techcabal.com/2025/07/23/top-logistics-mobility-startup-funding-h1-2025/) (search summary only)
- Tracxn counts 525 transportation and logistics startups in Nigeria (Aug 2026) — [Tracxn](https://tracxn.com/d/explore/transportation-and-logistics-startups-in-nigeria/__XAeJfVUVYOwW50k49GRlNYIj7O9HHf2ca5QAgCsis6U)
- WeeTracker (Jul 2025) reports that African B2B e-commerce players are pivoting away from distribution trucks and toward fintech and transactions ("B2B e-commerce boom backfires") — [WeeTracker](https://weetracker.com/2025/07/15/african-b2b-ecommerce-fintech-pivot/)

### EXCLUDED / do-not-pitch (shut down, bankrupt or out of scope)
- **Gokada** (bike-hailing, then logistics): filed for US Chapter 11 bankruptcy protection on 18 Oct 2024. Its CEO said the company was "on the brink of shutting down" throughout 2024, and it was raising $200k to keep running — [TechCabal Jan 2025](https://techcabal.com/2025/01/08/gokada-filed-for-chapter-11-bankruptcy-protection/); [Not a Deep Dive](https://www.notadeepdive.com/p/gokada-is-raising-200k-to-keep-the). Exclude.
- **GoLemon** (grocery delivery): one source reports it closed because investment dried up — [BusinessDay / search summary](https://businessday.ng/business-economy/article/nigerias-promising-startups-to-watch-in-2026/). This conflicts with a 2026 Startup Map Hub listing that shows it "actively raising" — [Startup Map Hub](https://startupmaphub.com/startups/seed/nigeria). Exclude until confirmed.
- **Heroshe** (cross-border shopping logistics): its decline began in 2024, and the Guardian groups it with 2025 shutdowns — [Guardian NG](https://guardian.ng/business-services/33-african-startups-shut-down-in-30-months/); [Techpoint](https://techpoint.africa/insight/african-startups-shutdown-2025/). Exclude.
- **Joovlin** (B2B supplier/retailer tools): shutdown announced January 2025 — [Techpoint Q1 2025 shutdowns](https://techpoint.africa/insight/african-startups-shutdown-2025/). Exclude.
- **Hytch** (mobility): listed by TechCabal as shut down — [TechCabal](https://techcabal.com/2025/07/23/top-logistics-mobility-startup-funding-h1-2025/). Exclude.
- **Sabi** (B2B informal retail): cut about 20% of staff in June 2025 and narrowed its focus to minerals trading and traceable exports. It is no longer B2B retail, so it is out of scope — [Owler](https://www.owler.com/company/sabiam)
- **Kobo360** (freight): has raised $86.2M in total, but no 2025–26 activity was found — [search summary of Tracxn/TechCabal](https://insights.techcabal.com/how-african-logistics-startups-attracted-1-8-billion-in-5-years/). Treat as not verified, and do not pitch without checking.
- **Omnibiz, Catlog**: no 2025–26 evidence found. Not included.
- **MAX (Metro Africa Xpress)**: the evidence conflicts. TechCabal lists it among shutdowns, while other sources say it pivoted to EV financing and battery swapping, returned to profitability in Nigeria, and raised further equity in 2026 — [TechCabal](https://techcabal.com/2025/07/23/top-logistics-mobility-startup-funding-h1-2025/) vs [Tech In Africa](https://www.techinafrica.com/nigerian-e-mobility-startup-max-secures-nithio-funding-raises-series-b3-round-to-29-million/); [TechLabari](https://techlabari.com/nigerian-ev-startup-max-pushes-funding-round-to-29-million/). Even if it is operating, it is Series B and large, so it is not a beginner target.

### Candidate list (~20). Order: Strong evidence first, then Moderate, then Weak; stretch names flagged

Common columns are given per company. "Exposure" is an inference from the business model, not a finding of any actual weakness. Service fit draws on these beginner-appropriate offers: external attack-surface review, email authentication (SPF/DKIM/DMARC) review, NDPA 2023 gap-assessment support, phishing training for ops staff, OWASP web/mobile testing under contract, cloud/Workspace configuration review, and policy drafting.

#### 1. Chowdeck — FOOD DELIVERY / QUICK-COMMERCE — **STRETCH** — Status: Strong
- Website: chowdeck.com (unverified). HQ: Lagos. Founded: October 2021.
- Founders: Femi Aluko (CEO; Crunchbase lists him as "Babafemi Aluko"), Olumide Ojo (CTO), Lanre Yusuf (COO) — [StartupList Africa team page](https://www.startuplist.africa/startups/chowdeck/team); [Crustdata](https://profiles.crustdata.com/company/chowdeck)
- Funding: $9M Series A, August 2025, led by Novastar Ventures with Y Combinator and AAIC Investment. The money is for expansion in Nigeria and Ghana and for quick-commerce (dark stores). Chowdeck also acquired the POS system Mira — [AfroTech](https://afrotech.com/chowdeck-closes-9m-series-a-round); [TechEconomy](https://techeconomy.ng/investor-appetite-grows-for-nigerias-logistics-tech-startups/)
- Scale: 11 cities in Nigeria and Ghana, about 1.5M customers, more than 20,000 riders. Reported as profitable — [AfroTech](https://afrotech.com/chowdeck-closes-9m-series-a-round)
- Headcount: about 259 (Crustdata and Tracxn, Aug–Sep 2026). Other sources give 244 (Dealroom) and 51–100 (Crunchbase) — [Crustdata](https://profiles.crustdata.com/company/chowdeck); [Dealroom](https://dealroom.co/companies/chowdeck/)
- **Reported incident:** a Techpoint Africa investigation published 7 May 2026 created a fake restaurant on Glovo and Chowdeck using a made-up tax ID and photos lifted from a real Lagos restaurant. Chowdeck initially rejected the fake CAC details but still let the store go live and trade until payouts reached ₦100,000. Chowdeck said some unregistered small businesses get limited access under tighter monitoring. It later introduced a three-tier "Vendor Badge" system — [Techpoint investigation](https://techpoint.africa/insight/investigation-glovo-and-chowdeck-onboarding-process/); [Techpoint follow-up](https://techpoint.africa/news/chowdeck-adds-vendor-badges/); [WeeTracker Jun 2026](https://weetracker.com/2026/06/02/chowdeck-vendor-badges-impersonation/). This was a merchant-onboarding and KYC weakness, not a data breach.
- Exposure: customer PII and addresses, live rider location, wallet and payments, vendor payouts, merchant-impersonation fraud, and consumer, rider and vendor mobile apps.
- Fit: at about 259 staff it probably has in-house security, so it is a stretch. The best angles are phishing training for the large rider and vendor-ops staff, and help writing vendor-onboarding verification policy. Outreach: LinkedIn to the CTO or COO, or a warm intro via the YC network.

#### 2. Heyfood — FOOD DELIVERY — Status: Strong/Moderate
- Website: heyfood.africa (unverified). HQ: Ibadan. Founded: 2021. Founders: Taiwo Akinropo (CEO), Demilade Odetara — [StartupList Africa](https://www.startuplist.africa/startups/heyfood)
- Funding: YC-backed. Undisclosed round from Y Combinator, Voltron Capital, Goodwater Capital and Ventures Platform. Tracxn says $500K in one round — [TechCabal Sep 2024](https://techcabal.com/2024/09/19/heyfood-expansion-to-abuja/); [Tracxn](https://tracxn.com/d/companies/heyfood/__yDf_qy8QceJG6mGB_sK3cz3xi2hj4zYQZV3gptWguzM)
- Expanded to Abuja and Benin while avoiding Lagos (2024) — [TechCabal](https://techcabal.com/2024/09/19/heyfood-expansion-to-abuja/)
- Headcount: about 40 (Latka, 2024; estimated $6M ARR). Low-quality source — [Latka](https://getlatka.com/companies/heyfood.africa/team)
- Exposure: the same marketplace model as Chowdeck (customer, rider and vendor PII, location, payments, vendor fraud).
- Fit: **ideal size**. Offer an email-auth and external attack-surface review, NDPA gap assessment, and phishing training for the ops team. Outreach: LinkedIn to the founders; YC founder directory.

#### 3. Gigmile — MOBILITY FINANCING (gig riders, vehicle asset financing) — Status: Strong
- Website: gigmile.com (unverified). HQ: Lagos. Founded: 2022. Founders: Kayode Adeyinka (CEO), Samuel Esiri (COO), both reportedly ex-Jumia — [Shore Africa Sep 2026](https://shore.africa/2026/09/02/kayode-led-gigmile-eyes-4-million/); [Techstars profile, Bounce Watch](https://bouncewatch.com/explore/startup/gigmile-techstars-22)
- Funding: closed a seed round around December 2025, led by a follow-on from ENZA Capital with Seedstars International Ventures and Norrsken Africa Fund. One source gives $2.3M. The company reports $21M raised in total across debt and equity. **IFC is weighing up to $4M of equity as part of a Series A (Sep 2026; awaiting board approval)** — [WeeTracker Dec 2025](https://weetracker.com/2025/12/01/gigmile-seed-round-mobility-financing-africa/); [Crowdfund Insider Sep 2026](https://www.crowdfundinsider.com/2026/09/304402-ifc-weighs-4m-investment-in-nigerian-vehicle-financing-startup-gigmile/). Alumni of Techstars '22.
- Exposure: KYC data and BVN/ID documents for riders, loan and repayment data, telematics and GPS on financed vehicles, and payment-collection integrations.
- Fit: **strong**. An IFC investment typically brings environmental, social and governance (E&S) and governance due-diligence demands, so policy drafting (ISMS-lite, access control, incident response), NDPA gap assessment and Workspace review are good offers. Outreach: LinkedIn to the CEO or COO; the Techstars network.

#### 4. Treepz (formerly Plentywaka) — MOBILITY / CORPORATE TRAVEL & BUS BOOKING — Status: Strong
- Website: treepz.com (unverified). HQ: Lagos. Founded: 2019. Founders: Onyeka Akumah (CEO), Johnny Enagwolor, Oluseyi Afolabi, John Shaibu — [TechGist Africa](https://techgistafrica.com/acquisition/treepz-a-nigerian-shared-mobility-startup-has-raised-2-8-million-in-a-seed-round-and-has-expanded-to-uganda-with-the-acquisition-of-ugabus/); [Wikipedia: Onyeka Akumah](https://en.wikipedia.org/wiki/Onyeka_Akumah)
- Funding: $2.8M seed (2021–22; Techstars Toronto). Backers include Google, SOSV, Techstars, BRK Capital and Shock Ventures. A $1.2M investment came with its Kenya launch. Acquired Ugabus (Uganda) and Stabus (Ghana) — [Techpoint](https://techpoint.africa/news/treepz-launches-in-kenya/)
- 2025 activity: launched in Canada in July 2025 with the University of Toronto as a client. Became the official transport provider for Miva Open University. Reports more than 5M customers across 4 African countries — [Disrupt Africa Jul 2025](https://disruptafrica.com/2025/07/30/nigerian-corporate-travel-startup-treepz-launches-in-canada/)
- Exposure: passenger PII and trip/location history, corporate client employee data, multi-country data transfers (NDPA cross-border rules, plus Canada's PIPEDA), payments.
- Fit: NDPA cross-border transfer gap assessment, policy drafting, and email-auth review. Outreach: LinkedIn or X to Onyeka Akumah, who is a visible founder.

#### 5. Shipbubble — LOGISTICS AGGREGATOR / SHIPPING API — Status: Moderate/Strong
- Website: shipbubble.com (unverified). HQ: Lagos. Founders: Jordan Ajibola (CEO), Ayodeji Abon (CTO) — [TechCabal Oct 2023](https://techcabal.com/2023/10/26/shipbubble-wants-to-help-nigerian-e-commerce-deliver-everything-everywhere-on-time/)
- Funding: small. Figures conflict: PitchBook shows a seed round dated 24 Apr 2025 (undisclosed; about $47.9K total), CB Insights says $70K total, and Tracxn shows a 2023 seed — [PitchBook](https://pitchbook.com/profiles/company/522568-81); [CB Insights](https://www.cbinsights.com/company/shipbubble); [Tracxn](https://tracxn.com/d/companies/shipbubble/__rf94sckDFvBwDGYk6fgb6Te3GWYQdxiNEk_WVUkHndA)
- Activity: Shopify app, a WordPress/WooCommerce plugin updated 24 Aug 2026, a 2026 blog, and a September 2025 partnership with Bumpa — [Shopify App Store](https://apps.shopify.com/shipbubble); [WordPress plugin](https://wordpress.com/plugins/shipbubble); [Shipbubble blog 2026](https://www.blog.shipbubble.com/top-10-reliable-dispatch-riders-in-lagos-fast-cheap-options-for-2026/)
- Exposure: public API keys used by merchants, third-party plugins (supply chain), sender and recipient PII and addresses, payments.
- Fit: **ideal very small target**. Offer API/OWASP testing under contract, email-auth review, and a privacy policy and data-processing agreement (DPA) under NDPA. Outreach: LinkedIn to the founders.

#### 6. Topship — CROSS-BORDER SHIPPING FOR MERCHANTS — Status: Moderate
- Website: topship.africa (unverified). HQ: Lagos. Founded: platform live March 2021. Founders: Moses Enenwali (CEO), Junaid Babatunde (CTO) — [TechCabal Jan 2022](https://techcabal.com/2022/01/19/topship-goes-from-being-an-instagram-business-to-a-ycombinator-company/)
- Funding: $2.5M seed (May 2022) led by Flexport, with Y Combinator (W22) — [TechCrunch](https://techcrunch.com/2022/05/16/nigerian-freight-and-e-commerce-provider-topship-raises-2-5m-from-flexport-and-yc); [YC](https://ycombinator.com/companies/topship)
- 2026 activity: appears in 2026 profiles and directories — [YesPress](https://yespress.io/topship-yc-w22)
- Exposure: shipper and consignee PII, customs documents and IDs, payments, merchant accounts open to takeover, a public API.
- Fit: email-auth and attack-surface review, phishing training for the customer-support team, NDPA review of international transfers. Outreach: LinkedIn; YC directory.

#### 7. Sendbox — E-COMMERCE FULFILMENT / LOGISTICS AGGREGATION — Status: Moderate
- Website: sendbox.co (unverified). HQ: Lagos. Founded: 2018 (review site). Founders: Emotu Balogun (CEO) and Olusegun Afolahan (COO), per a 2026 review site. Unverified — [brands.ng 2026 review](https://brands.ng/sendbox-nigeria-review-best-delivery-platform-for-small-businesses/)
- Funding: about $2M seed per a directory. Date and source unverified — [StartupList Africa shipping](https://www.startuplist.africa/industries/shipping)
- Exposure: merchant storefronts, shopper PII, delivery addresses, payments, API.
- Fit: OWASP web testing under contract, account-takeover controls review (2FA for merchants), and NDPA work. Outreach: LinkedIn.

#### 8. Fez Delivery — LAST-MILE DELIVERY — Status: Moderate
- Website: fezdelivery.co (unverified). HQ: Lagos, with hubs across Nigeria. Founder: Seun Alley (CEO); Kayode Adegbola (Chairman), per a directory (thin source) — [StartupList Africa](https://www.startuplist.africa/startups/fez-delivery/team)
- Funding: $1M seed (March 2023) led by Ventures Platform, with Voltron Capital and Acasia Ventures — [WeeTracker](https://weetracker.com/2023/03/28/top-supply-chain-and-logistics-in-nigeria/); [Ventureburn](https://ventureburn.com/2023/03/fez-delivery-raises-1m-to-revolutionise-delivery-in-nigeria/)
- 2026: still listed as a budget doorstep-delivery option on the Shipbubble 2026 blog — [Shipbubble blog](https://www.blog.shipbubble.com/top-10-reliable-dispatch-riders-in-lagos-fast-cheap-options-for-2026/)
- Exposure: recipient PII and addresses, rider location, cash-on-delivery and payment reconciliation, merchant dashboard accounts.
- Fit: phishing training for ops and hub staff, email-auth review, NDPA gap assessment. Outreach: LinkedIn.

#### 9. Kwik Delivery — LAST-MILE DELIVERY — Status: Moderate (verify)
- Listed in 2026 as a premium same-day delivery option, and no shutdown report was found — [Shipbubble 2026 blog](https://www.blog.shipbubble.com/top-10-reliable-dispatch-riders-in-lagos-fast-cheap-options-for-2026/). Kwik held talks in 2022 to acquire Gokada (did not proceed) — [TechCabal](https://techcabal.com/2023/02/03/kwik-deliver-potential-gokada-acquisition/)
- Founders, latest round and headcount: not found this session (gap).
- Fit: the same as Fez. Check the current site before pitching.

#### 10. Haul247 — FREIGHT / TRUCK & WAREHOUSE MARKETPLACE — Status: Moderate
- Website: haul247.co (unverified). HQ: Lagos. Funding: $3M seed (June 2023) led by Alitheia Capital (uMunthu Fund), with debt from Investment One. More than 1,000 trucks and about 151,000 sqm of warehousing — [TechCrunch](https://techcrunch.com/2023/06/08/nigerias-haul247-wants-to-be-africas-airbnb-for-trucks-and-warehouses); [BusinessDay](https://businessday.ng/technology/article/haul247-raises-3m-to-drive-innovation-in-africas-logistics-industry/)
- Listed as operating — [StartupList Africa](https://www.startuplist.africa/startups/haul247). No 2025–26 news found.
- Exposure: shipper and enterprise client data, driver IDs and licences, truck GPS, invoice and payment fraud (business email compromise risk with large B2B invoices).
- Fit: **BEC-focused email-auth (DMARC) review plus finance-team phishing training** is a strong pitch. Outreach: LinkedIn.

#### 11. Renda — B2B ORDER FULFILMENT / WAREHOUSING — Status: Moderate
- HQ: Lagos. Funding: $1.9M pre-seed (May 2024). The equity portion was led by Ingressive Capital, and the money was for expansion across Nigeria and Kenya — [TechCrunch](https://techcrunch.com/2024/05/02/renda-which-provides-order-fulfillment-for-businesses-in-africa-takes-in-1-9m/); [Nairametrics](https://nairametrics.com/2024/05/02/nigerian-logistics-startup-renda-secures-l1-9-million-in-pre-seed-round/)
- Founders and 2025–26 news: not found (gap).
- Exposure: client inventory and order data, consumer delivery PII, warehouse ops staff.
- Fit: Workspace/cloud configuration review, ops phishing training, NDPA work. Outreach: LinkedIn.

#### 12. TruQ — ON-DEMAND TRUCKING ("Uber for trucks") — Status: Weak/Moderate
- Founded: 2019. Founders: Williams Fatayo, Foluso Ojo. About $220K raised — [Orepulse](https://www.orepulse.com/news/top-20-logistics-tech-startups-solving-the-transportation-hurdles-in-africa). Live in Lagos, Ibadan and Abuja (Oct 2022). Clients include TradeDepot — [CrestHub](https://cresthub.com/truq-trucking-logistics-launch-abuja/)
- No 2025–26 news found, so verify status. Fit: an entry-level email-auth review and policies.

#### 13. Shuttlers — CORPORATE / COMMUTER BUS-HAILING — Status: Weak/Moderate
- HQ: Lagos. Funding: $1.6M seed (Nov 2021) led by VestedWorld, then $4M led by Verod-Kepple Africa Ventures, for $5.6M total — [Technext](https://technext.ng/2021/11/16/shuttlers-raises-1-6m-seed-funding-to-expand-its-bus-hailing-business-across-nigeria/); [Tekedia](https://www.tekedia.com/nigerian-ridesharing-startup-shuttlers-raises-4m-in-funding-round/)
- No 2025–26 evidence found, so verify. Exposure: commuter PII and home/route location data, corporate client data. Fit: NDPA location-data assessment.

#### 14. eDryv (Foltï Technologies) — EV RIDE-HAILING / RENTALS / CORPORATE TRANSPORT — Status: Moderate (new)
- HQ: Lagos. Launched April 2025 (service began 13 Apr 2025, Lagos Island) — [TechCabal Apr 2025](https://techcabal.com/2025/04/07/edryv-nigerias-first-95-green-powered-ev-ride-hailing-service-unveils-in-lagos/)
- Funding and founders: not found (gap).
- Fit: a new company building out its security, so offer **foundational policy drafting, NDPA registration support and a mobile-app OWASP test under contract**.

#### 15. SGX Mobility — ELECTRIC THREE-WHEELER OPERATOR (on Bolt) — Status: Moderate
- First EV operator on Bolt in Nigeria. Funding target €2.74M (story updated Aug 2025) — [GET.invest](https://www.get-invest.eu/story/an-electric-fleet-for-lagos-streets/)
- Exposure: driver financing KYC, telematics. Fit: small policy and NDPA engagement. Founders: not found.

#### 16. Bumpa — SOCIAL-COMMERCE / MERCHANT STORE & INVENTORY SOFTWARE — Status: Moderate
- Website: getbumpa.com (unverified). HQ: Lagos. Funding: $4M seed (2022) led by Base10 Partners, with Plug and Play, SHL Capital, Magic Fund, DFS Labs and others. A $200K pre-seed came in September 2021 — [Techpoint](https://techpoint.africa/news/nigerian-bumpa-4mseed/); [Tracxn](https://tracxn.com/d/companies/bumpa/__7yxl1invDfyNX0ovLpjXRZf6vEIs22cbnqNf_d0mfSU)
- Note: co-founder and CTO Adetunji Opayele died (reported 20 March 2025, per a sidebar headline seen in search; not independently confirmed). Partnered with Shipbubble in September 2025 — [search summary of Techpoint/Tracxn results above]. The loss of a CTO can leave a security-leadership gap, which is an inference.
- Exposure: thousands of SME merchant accounts (account-takeover risk), end-customer PII, payments and wallets, mobile apps.
- Fit: merchant 2FA and account-takeover review, OWASP testing under contract, NDPA (as a processor for merchants). Outreach: LinkedIn to the CEO.

#### 17. LagRide — STATE-BACKED RIDE-HAILING (Lagos) — Status: Strong
- In December 2025, Lagos State, UBA and LagRide set up a $100M facility for EVs and charging infrastructure. In January 2025 it was reported as moving to integrate EVs — [search summary; Tech In Africa](https://www.techinafrica.com/lagride-pioneers-electric-vehicle-integration-in-nigerias-ride-hailing-sector/)
- A government-linked public–private partnership, so procurement goes through formal channels and it is harder for a beginner. Exposure: rider and driver PII, location, payments.

#### 18. TradeDepot — B2B INFORMAL-RETAIL DISTRIBUTION + BNPL — **STRETCH** — Status: Moderate
- HQ: Lagos. $110M raise (equity plus debt; to extend BNPL to retailers) and $18M project financing (Feb 2023). About 326–396 staff — [Partech](https://partechpartners.com/news/tradedepot-raises-110-million-to-extend-buy-now-pay-later-to-retailers-across-africa); [PitchBook](https://pitchbook.com/profiles/company/228116-89); [Tracxn](https://tracxn.com/d/companies/tradedepot/__d7scQzzA_epIFkfvXmYUZ6iaipp2ekFaXd0Wc3pxypE)
- Exposure: retailer credit and KYC data, BNPL, field-sales devices. Fit: stretch, so offer only ops phishing training or specific scoped tasks.

#### 19. Alerzo — B2B INFORMAL-RETAIL ORDERING (Ibadan) — Status: Moderate (distressed)
- Repeated layoffs (about 70 in February 2024 and about 100 earlier). Reported $3.7M debt dispute and closure of its Singapore entities. Funding put at $14–20M — [Owler](https://www.owler.com/company/alerzo); [Tracxn](https://tracxn.com/d/companies/alerzo/__zXnpELFrxS0ZUqKxDebNEDXK2wvIuPC9et2T7i9rZE0)
- A distressed firm is unlikely to buy services, so it is low priority. Verify status.

#### 20. Vendease — B2B FOOD PROCUREMENT FOR RESTAURANTS — Status: Moderate (restructuring)
- Laid off about 120 staff (44%) in February 2025, its second cut in five months, while trying to close a Series A extension. About $23.3M raised in total — [Tracxn](https://tracxn.com/d/companies/vendease/__If65YknjHVW5c_qIOHQzMwN68F5yjk_pSS2SJzpeixk)
- After the cuts it probably has around 150 staff (inference). Exposure: restaurant client data, supplier payments, embedded credit. Fit: a lean team means outsourced policy and NDPA work could appeal. Low budget risk.

### Inferences
- The best beginner targets (small, recently active, handling PII and location data, likely without in-house security) are **Heyfood, Gigmile, Shipbubble, Topship, Fez Delivery, Haul247, Renda, Sendbox, Bumpa, Treepz and eDryv**.
- Gigmile, with IFC due diligence pending, and Chowdeck, after the impersonation story, have clear "why now" triggers for an outreach message.
- Investor portfolio networks (YC: Chowdeck, Heyfood, Topship; Ventures Platform: Fez, Heyfood; Techstars: Gigmile, Treepz; Voltron: Heyfood, Fez) are realistic warm-intro routes.

### Gaps
- **Websites, security.txt, vulnerability-disclosure policies and bug bounties: not verified for any company** because network fetches failed. No public bug-bounty programme was found in search for any of them.
- Founder LinkedIn and X handles were not verified, so none are listed.
- Headcount was found only for Chowdeck, Heyfood (Latka), TradeDepot and Vendease.
- Kwik, TruQ, Shuttlers, Haul247, Renda and Sendbox have no 2025–26 news, so confirm they still operate (site live, recent job posts or app updates).
- No quick-commerce-only or travel/ticketing pure-plays (for example Wakanow, a large stretch name, or ticketing startups) could be confirmed this session.

## What is their security exposure and any incidents?

### Takeaway
No publicly reported data breach was found for any company on this list. The only documented security-relevant incident is the **May 2026 Techpoint investigation showing fake-vendor onboarding on Glovo and Chowdeck** (KYC/fraud). The regulatory backdrop is sharpening, with active NDPC enforcement and a 72-hour breach-notification duty, which gives a compliance-led reason to pitch.

### Cited Findings
- A Techpoint Africa investigation (7 May 2026) registered a fake restaurant on Glovo and Chowdeck. Glovo approved it within 48 hours despite a false tax ID, after a ₦20,000 activation fee, and declined to comment. Chowdeck let the store trade until payouts hit ₦100,000. The investigation was triggered by a December 2025 complaint from a vendor who had been impersonated — [Techpoint](https://techpoint.africa/insight/investigation-glovo-and-chowdeck-onboarding-process/)
- Chowdeck later added vendor badges and tightened verification, but grievances remain — [Techpoint](https://techpoint.africa/news/chowdeck-adds-vendor-badges/); [WeeTracker](https://weetracker.com/2026/06/02/chowdeck-vendor-badges-impersonation/)
- Commentators note that fake restaurants can collect payments without delivering, harvest customer data, or serve as fronts for money laundering. One report says no law specifically governs food-delivery apps — [TechSocietal](https://techsocietal.org/wp/blog/fake-vendors-real-orders-nigerias-food-delivery-platforms-have-a-problem/); [TechCocoon](https://techcocoon.org/blog/glovo-chowdeck-and-the-trust-gap-in-nigeria-s-food-delivery-market/)
- Under the NDPA 2023, controllers must report personal-data breaches to the NDPC within 72 hours — [search summary; SmartSMS guide](https://smartsmssolutions.com/resources/blog/ng/ng12-s06-how-to-respond-data-breach-nigeria-ndpc)
- The NDPC fined MultiChoice ₦766M (July 2025) for unlawful processing and cross-border transfers — [Vanguard](https://www.vanguardngr.com/2025/07/ndpc-fines-multichoice-n766m-for-data-breach/)
- The NDPC probed Temu (February 2026) over whether app permissions such as contacts, photos and location are excessive for an e-commerce purchase. This is directly relevant to commerce and delivery apps — [AllAfrica](https://allafrica.com/stories/202602170066.html)
- The NDPC reportedly probed 1,369 firms over compliance or breach issues — [Daily Trust](https://dailytrust.com/nigerians-data-at-risk-as-ndpc-probes-1369-firms-over-breach/)

### Inferences
- The exposures common to this segment are: (1) rider and driver KYC/ID and live GPS location; (2) customer addresses, phone numbers and order history; (3) payment-gateway and wallet integrations, plus payout fraud; (4) account takeover of merchants and vendors; (5) business email compromise and invoice fraud in B2B freight; (6) excessive mobile-app permissions, which are now an NDPC enforcement theme following the Temu probe.
- Low-risk, beginner-appropriate pitch hooks are: "NDPA readiness in light of the Temu and MultiChoice actions", "vendor/merchant onboarding fraud lessons from the May 2026 Techpoint story", and "DMARC to stop spoofed invoices and rider-payout emails". Any SPF/DKIM/DMARC check uses only public DNS records and should be done during the outreach-preparation phase, not as part of this desk research.

### Gaps
- No breach reports were found for Heyfood, Gigmile, Treepz, Shipbubble, Topship, Sendbox, Fez, Kwik, Haul247, Renda, Bumpa or the others. That absence of reporting does not mean no incident occurred.
- Account-takeover and rider-fraud reports specific to these companies were not found.
- Security.txt and bug-bounty status remain unchecked.
