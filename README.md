# 🛒 Amazon Product Review Analysis

  <img width="1428" height="802" alt="Image" src="https://github.com/user-attachments/assets/bca43b39-5b1e-46af-bdaa-4a495deb5938" />

  [**View Live/Interactive Dashboard**](https://app.powerbi.com/view?r=eyJrIjoiZWM5MjFhNmYtMGFmMC00MTU2LTgzYzctNWU1MjUzYWRmZjE1IiwidCI6IjljNmZkNWQ5LWMyMjgtNGIyMi1iZTljLTg5ZTk2NTgwZWRiMSJ9)

## 👥 Team Members
- Odunlami Zainab  
- Samuel Kayode  
- Faith Chris-Gbogi  
- Happiness Obioma Obi  

---

## 📌 Introduction
This project focuses on **extracting, cleaning, analyzing, and visualizing Amazon customer reviews** for a specific product: **MoKo Case for iPad**.  
The main goal was to **evaluate user sentiment, identify recurring themes, and provide actionable recommendations** to improve both the product and customer satisfaction.  

---

## 🔎 Methodology

### 1. Data Extraction
- Reviews collected using an automated scraper (handled pagination & duplicates).  
- **Final dataset:** 956 unique customer reviews.  

### 2. Data Cleaning (Jupyter Notebook)
- Standardized fields (rating, date, review length).  
- Created a unique ID for each review.
<img width="587" height="457" alt="Image" src="https://github.com/user-attachments/assets/73e21cc5-30d0-46bf-84ae-80664ee4da67" />
<img width="605" height="379" alt="Image" src="https://github.com/user-attachments/assets/de819843-16a6-4893-a4d2-08ad4ceaab14" />

- Kept only useful columns.  
- Converted review content to string (avoid errors later).  
- Converted `date` column to datetime → extracted **Year** and **Month**.
<img width="453" height="91" alt="Image" src="https://github.com/user-attachments/assets/182ddb33-e5e2-4e04-9fe8-baf8077ebdcb" />
<img width="465" height="174" alt="Image" src="https://github.com/user-attachments/assets/b8e3397e-0841-4bbb-9a92-8a01e2c7f3b6" />
<img width="335" height="310" alt="Image" src="https://github.com/user-attachments/assets/0dbe2e68-e778-4975-a292-f07f8651e262" />

- Dropped rows with missing dates & handled missing values.  
- Ensured clean dataset for analysis.  
<img width="448" height="659" alt="Image" src="https://github.com/user-attachments/assets/32c8cdf7-bb2e-4119-b991-9027c4f7f348" />
<img width="483" height="46" alt="Image" src="https://github.com/user-attachments/assets/356b76c4-4f01-4ddb-b993-00b2d3cfe798" />
<img width="881" height="146" alt="Image" src="https://github.com/user-attachments/assets/f9fee717-08aa-42aa-94a7-218c25638183" />

### 3. Database Design
- **Tables:** Reviewer_name, Review_id, Review_rating, Review_content, Is_verified, Reviewers, Content_Sentiment, Title_Sentiment, Year.  
- **Relationships:**  
  - One product → many reviews  
  - One reviewer → many reviews  
  - One review → one sentiment
![Image](https://github.com/user-attachments/assets/da2f8377-76a9-47c1-ae48-182e011876a0)  

### 4. Exploratory Data Analysis (EDA)
- Review rating distribution
<img width="886" height="272" alt="Image" src="https://github.com/user-attachments/assets/ef7916f6-39ff-46ea-a4e9-294f377937f0" />
<img width="958" height="738" alt="Image" src="https://github.com/user-attachments/assets/36a46a91-181f-4c92-bbe3-3b710dd32b99" />
  
- Sentiment distribution  
- Trend of ratings over time (2023, 2024, 2025)
<img width="939" height="108" alt="Image" src="https://github.com/user-attachments/assets/3785c7c0-6035-4faa-8b7d-99cd3be9439e" />
<img width="911" height="772" alt="Image" src="https://github.com/user-attachments/assets/e50940f2-e274-4a69-b684-2a4954d9f4fd" />

- Verified vs Non-Verified reviews over time  
- Reviews by month (all years combined)  
- Average rating by month (2025)
<img width="584" height="186" alt="Image" src="https://github.com/user-attachments/assets/e6c3c2d4-b7c1-4260-9ed2-5a38d1a8de63" />
<img width="609" height="100" alt="Image" src="https://github.com/user-attachments/assets/b4495b97-5e91-49ea-9531-8287302f774c" />
<img width="936" height="648" alt="Image" src="https://github.com/user-attachments/assets/319d4409-7535-4c26-93ef-a7fb75fca1a6" />

- Top reviewers  
- Keyword frequency & word content analysis  

### 5. Sentiment Analysis
- Applied **VADER/TextBlob** sentiment classification to titles & content.  

### 6. Visualization (Power BI)
- Built dashboard with:  
  - KPIs  
  - Rating distribution  
  - Sentiment trends  
  - Word cloud  
  - Interactive filters  

---

## ⚠️ Challenges Faced

1. **Scraping Restrictions** → CAPTCHAs, IP blocking, throttling (limited review collection).  
2. **Missing/Incomplete Data** → some fields reduced accuracy.  
3. **Sentiment Analysis Accuracy** → sarcasm/mixed reviews misclassified (e.g., “Not good fit” scored positive).  
4. **Bias in Review Behavior** → overrepresentation of very positive/negative customers.  
5. **Limited Scope** → focused on **one product only** (not generalizable).  
6. **Lack of External Context** → no sales/returns/competitor data for deeper validation.  
7. **Timeframe Limitations** → trends may be affected by external events (marketing, redesigns, seasonality).  

---

## 📊 Key Findings

<img width="1428" height="802" alt="Amazon Reviews Dashboard Image" src="https://github.com/user-attachments/assets/e3544931-8652-4bfc-a285-5fbcc2422029" />

### 1. Overall Review Performance
- **Total Reviews:** 956 (since 2022).  
- **Verified Purchases:** 97% (credible, authentic).  
- **Sentiment Breakdown:**  
  - Positive → 58.16% (~556)  
  - Neutral → 30.13% (~288)  
  - Negative → 11.72% (~112)  
- **Average Rating:** 3.3/5 (below Amazon’s 4.0+ competitiveness threshold).  

👉 *Insight:* Large neutral/negative share (42%) drags down competitiveness.  

---

### 2. Ratings & Sentiment Breakdown
- **5★ Reviews:** 78.34% positive → strong satisfaction.  
- **4★ Reviews:** 68.79% positive, but ~28% neutral → minor gaps.  
- **3★ Reviews:** 53% positive, ~35% neutral → mixed impressions.  
- **1–2★ Reviews:** Nearly half neutral/negative → quality/expectation mismatch.  

👉 *Insight:* Customers either love the product or feel indifferent/unsatisfied.  

---

### 3. Trends Over Time
- **2022:** 4 reviews (avg 4.8) → strong start.  
- **2023:** 62 reviews (avg 3.2).  
- **2024:** 261 reviews (lowest avg 3.0).  
- **2025 (YTD):** 629 reviews (avg 3.5, slight recovery).  

👉 *Insight:* Sales grew in 2025, but ratings declined post-2022 and only recently started improving.  

---

### 4. Top Reviewers
- Mostly **generic accounts** (e.g., “Amazon Customer”).  
- Few repeat/named reviewers.  

👉 *Insight:* Weak community trust; competitors with engaged/named reviewers may appear more credible.  

---

### 5. Content Sentiment
- **Positive (58%)** → durability, fit, usability.  
- **Neutral (30%)** → unusually high → unmet expectations.  
- **Negative (12%)** → quality & fit complaints.  

👉 *Insight:* Neutral reviews indicate functionality but lack of “wow factor.”  

---

## 💡 Business Recommendations

1. **Product Quality & Design Improvements**  
   - Address neutral/negative feedback → fit issues, durability, packaging.  
   - Run defect theme analysis on 1–3★ reviews.  
   - Goal: Reduce neutral/negative by **30% in 6 months**.  

2. **Enhance Listing & Marketing**  
   - Add compatibility chart, stress tests, lifestyle images.  
   - Clarify expectations to reduce confusion.  
   - Goal: Shift neutrals → positives.  

3. **Customer Engagement**  
   - Respond to negative reviews publicly.  
   - Request reviews from satisfied customers (especially recent).  
   - Encourage photo/video reviews.  
   - Goal: Raise rating to **4.0+ by end of 2025**.  

4. **Operational & Quality Control**  
   - Audit supplier batches (esp. 2024 dip).  
   - Monitor return/refund rates.  
   - Goal: Prevent repeat quality issues.  

5. **Competitive Strategy**  
   - Benchmark against top competitors → materials, features, pricing.  
   - Offer differentiation (e.g., durability warranty).  

6. **Long-Term Brand Building**  
   - Launch “**MoKo Care Promise**” (1-year replacement warranty).  
   - Encourage community sharing (Instagram/TikTok).  
   - Offer bundles (case + screen protector + stylus holder).  

---

## 📈 KPIs to Track Moving Forward
- Average Rating → **Target 4.0+ by Q4 2025**  
- Positive Sentiment → **70%+**  
- Neutral Sentiment → **<20%**  
- Negative Review Ratio → **<8%**  
- Return/Defect Rates → **<2%**  
- Review Volume Growth → maintain strong inflow with better quality  

---

## ✅ Summary Recommendation
The **MoKo iPad Case** has strong sales momentum (review surge in 2025) but faces **quality & expectation gaps**.  
Focus on:  
- Fixing **fit & durability issues**  
- Clarifying **compatibility & product details**  
- Proactive **customer engagement**  

👉 With these actions, the product can realistically move from **3.3 → 4.0+ average rating**, regaining competitiveness in the Amazon marketplace.  

---

## 🏁 Conclusion
This project demonstrated a **complete data pipeline**:  
- Data extraction  
- Cleaning  
- Exploratory Data Analysis  
- Sentiment Analysis  
- Visualization (Power BI)  

While the product is generally well-received, recurring issues (fit, durability) hold it back.  
**Implementing recommendations will boost satisfaction, reduce negative reviews, and improve sales performance.**  

---
