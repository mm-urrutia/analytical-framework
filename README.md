# Analytical Framework: Transforming Technical Data into Business Value

## Dataset Overview  

This project analyses a dataset from Kaggle entitled “Credit Card Churn Prediction”, created by Anwar.S, containing anonymised customer information from a fictitious bank. The dataset consists of 10,128 records and 23 variables, covering demographic, financial, and behavioural data. The target variable is Attrition_Flag, which indicates whether a customer has left the service (1) or remains active (0).  

The dataset includes variables such as age, income, credit limit, transaction amounts, and number of products, making it suitable for both predictive modelling and customer segmentation.  

---

## Objective  

The primary goal of this project is to develop a framework for predicting customer churn and segmenting clients into meaningful groups that can inform business strategies. By combining machine learning models, explainable AI (SHAP), clustering techniques, and a business intelligence dashboard, the study addresses two key questions:  

1. Which specific customers and strategic segments are most likely to churn?  
2. What are the key factors that contribute to churn in each segment?  

---

## Methodology  

1. **Data Preparation**  
   - Cleaning duplicate or irrelevant columns  
   - Winsorization to mitigate outliers  
   - One-Hot Encoding for categorical variables  
   - StandardScaler for numerical features  
   - Removal of highly correlated variables to reduce multicollinearity  

2. **Predictive Modelling**  
   - Evaluated Logistic Regression, Random Forest, and XGBoost  
   - Models compared using Accuracy, Precision, Recall, and F1-score  
   - Chose XGBoost as the best-performing model, and applied it to the active (non-churn) customer base to predict churn scoring  
   - Applied SHAP values to interpret variable contributions  

3. **Clustering Analysis**  
   - Used K-Means to identify behavioural segments  
   - PCA applied for visualisation of clusters in 2D  
   - Defined 3 clusters:  
     - Medium Income & Low Usage  
     - Low Income & High Usage  
     - Medium-High Income & Active Usage  

4. **Database Integration**  
   - Created a MySQL relational schema with 7 tables for demographic, transactional, predictive, and clustering results  

5. **Business Intelligence Dashboard**  
   - Developed an interactive Power BI dashboard including:  
     - KPIs on churn risk categories  
     - Distribution of customers by cluster  
     - Scatter plots linking churn risk with spending  
     - SHAP drivers for interpretability  

---

## Key Findings  

- XGBoost outperformed other models, offering the most reliable churn prediction.  
- Transactional behaviour (e.g., number of transactions, balance changes) was found to be more predictive of churn than demographic variables.  
- Low and medium income customers with high usage patterns represent over 85% of medium and high churn risk.  
- Cluster-based insights:  
  - *Low Income & High Usage*: high churn probability linked to low credit limits and high utilisation.  
  - *Medium Income & Low Usage*: risk tied to low engagement despite moderate resources.  
  - *Medium-High Income & Active Usage*: lower churn risk but high-value customers, making retention a priority.  
- The Power BI dashboard enabled business-friendly exploration of churn scores, risk categories, and key drivers.  

---

## Challenges  

- Outliers in financial variables required mitigation to avoid biasing models.  
- Highly correlated features introduced multicollinearity, addressed by variable elimination.  
- Categorical encoding expanded feature space significantly, requiring careful preprocessing.  
- Class imbalance in the target variable made recall critical for evaluating models.  

---

## References  

- Kumar, S. (2022). [Customer Retention Versus Customer Acquisition – Forbes](https://www.forbes.com/councils/forbesbusinesscouncil/2022/12/12/customer-retention-versus-customer-acquisition/)  
- Palacio, A. B. (2022). [The Art of Data-Driven Business – O’Reilly](https://learning.oreilly.com/library/view/the-art-of/9781804611036/)  
- Dua, R., Ghotra, S. M., & Pentreath, N. (2017). [Machine Learning with Spark – Second Edition, O’Reilly](https://learning.oreilly.com/library/view/machine-learning-with/9781785889936/)  
- Ng, J., & Shah, S. (2020). [Hands-On Artificial Intelligence for Banking – O’Reilly](https://learning.oreilly.com/library/view/hands-on-artificial-intelligence/9781788830782/)  
- Shaikh, A., Soller, H., Cerik, A., Darwazeh, F., & Młodziejewska, M. (2025). [Next-gen Banking Success Starts with the Right Data Architecture – McKinsey](https://www.mckinsey.com/capabilities/mckinsey-digital/our-insights/tech-forward/next-gen-banking-success-starts-with-the-right-data-architecture)  
- Bhuria, R., & Aluvala, S. (2025). [Predicting Bank Customer Churn with XGBoost – IEEE](https://ieeexplore.ieee.org/document/11011351)  
- Xu, Q., Liao, Y., Li, Q., Zhang, J., Song, Z., Wang, L., & Yuan, X. (2024). [SHAP-based Interpretable Models for Credit Default – IEEE](https://ieeexplore.ieee.org/document/10840375)  
- Delen, D. (2020). [Predictive Analytics: Data Mining, Machine Learning and Data Science – O’Reilly](https://learning.oreilly.com/library/view/predictive-analytics-data/9780135946527/)  
- Coussement, K., Lessmann, S., & Verstraeten, G. (2017). [Data Preparation for Customer Churn Prediction – ScienceDirect](https://www.sciencedirect.com/science/article/pii/S0167923616302020)  
- Trivedi, S., Pardo, Z. A., & Heffernan, N. T. (n.d.). [The Utility of Clustering in Prediction Tasks – PDF](https://home.ttic.edu/~shubhendu/Papers/clustering_bagging.pdf)  
- Chen, H., Chiang, R. H. L., & Storey, V. C. (2012). [Business Intelligence and Analytic: From Big Data to Big Impact – EBSCO](https://research.ebsco.com/c/x47ol5/viewer/pdf/ycxc5lug7v)  
- Mohammad, A. B., Al-Okaily, M., Al-Majali, M., & Masa'deh, R. (2022). [Business Intelligence and Analytics in Banking – ScienceDirect](https://www.sciencedirect.com/science/article/pii/S2199853123000756)  
- Dataset Source: [Kaggle – Credit Card Churn Prediction](https://www.kaggle.com/datasets/anwarsan/credit-card-bank-churn)  
- Jafari, R. (2022). [Hands-On Data Preprocessing in Python – O’Reilly](https://learning.oreilly.com/library/view/hands-on-data-preprocessing/9781801072137/)  
- Wilcox, R. R. (2023). [Applying Contemporary Statistical Techniques – ScienceDirect](https://www.sciencedirect.com/science/article/pii/B9780127515410500249)  
- Liu, Y. (2017). [Python Machine Learning By Example – O’Reilly](https://learning.oreilly.com/library/view/python-machine-learning/9781783553112/)  
- Jeyaraman, B. (2024). [Use Logistic Regression in Credit Scoring – O’Reilly](https://learning.oreilly.com/library/view/use-logistic-regression/9798341607903/)  
- Wade, C. (2020). [Hands-On Gradient Boosting with XGBoost – O’Reilly](https://learning.oreilly.com/library/view/hands-on-gradient-boosting/9781839218354/)  
- Mishra, P. (2021). [Practical Explainable AI Using Python – O’Reilly](https://learning.oreilly.com/library/view/practical-explainable-ai/9781484271582/)  
- Alammar, J., & Grootendorst, M. (2024). [Hands-On Large Language Models – O’Reilly](https://learning.oreilly.com/library/view/hands-on-large-language/9781098150952/)  
- Géron, A. (2025). [Hands-On Machine Learning with Scikit-Learn and PyTorch – O’Reilly](https://learning.oreilly.com/library/view/hands-on-machine-learning/9798341607972/)  
- Grippa, V. M., & Kuzmichev, S. (2021). [Learning MySQL, 2nd Edition – O’Reilly](https://learning.oreilly.com/library/view/learning-mysql-2nd/9781492085911/)  
- Deckler, G. (2022). [Learn Power BI, 2nd Edition – O’Reilly](https://learning.oreilly.com/library/view/learn-power-bi/9781801811958/)  

---

## Notes  

This project was originally developed as part of an academic work, but has been adapted into a professional case study to demonstrate the application of machine learning, clustering, databases, and business intelligence to real world customer churn problems.  
