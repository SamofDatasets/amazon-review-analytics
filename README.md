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

- Kept only useful columns.  
- Converted review content to string (avoid errors later).  
- Converted `date` column to datetime → extracted **Year** and **Month**.  
- Dropped rows with missing dates & handled missing values.  
- Ensured clean dataset for analysis.  

### 3. Database Design
- **Tables:** Reviewer_name, Review_id, Review_rating, Review_content, Is_verified, Reviewers, Content_Sentiment, Title_Sentiment, Year.  
- **Relationships:**  
  - One product → many reviews  
  - One reviewer → many reviews  
  - One review → one sentiment  

### 4. Exploratory Data Analysis (EDA)
- Review rating distribution  
- Sentiment distribution  
- Trend of ratings over time (2023, 2024, 2025)  
- Verified vs Non-Verified reviews over time  
- Reviews by month (all years combined)  
- Average rating by month (2025)  
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
