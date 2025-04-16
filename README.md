# education-prediction-random-forest
Built a Random Forest model to predict individuals' education levels using demographic and financial data. Evaluated model accuracy through ROC curves and variable importance, achieving high AUC scores across all classes.
# 🎓 Education Level Prediction using Random Forest

This project applies supervised machine learning to predict individuals' education levels (High School, Bachelor's, Master's, PhD) based on demographic and financial features.

---

## 📌 Objective
To build a classification model using Random Forest and evaluate its performance using ROC curves and variable importance measures.

---

## 🧰 Tools & Technologies
- **R**
- `randomForest`, `boot`, `ROCR`
- ROC Curve Analysis
- Feature Importance Visualization

---

## 🔍 Workflow Summary
1. Loaded and cleaned data from `Income2.csv`
2. Created bootstrapped samples for training and validation
3. Trained a Random Forest classifier with 500 trees
4. Assessed model performance using:
   - Confusion Matrix
   - ROC Curves for each education level
   - AUC scores for prediction strength
5. Plotted variable importance to identify top predictors

---

## 📊 Key Insights
- Achieved high AUC scores across all education levels
- Most important predictors included **Income**, **Work Experience**, and **Age**
- Results support the potential for data-driven talent and education policy development

---

## 📁 Files
- `education_rf_model.R` – Full R script for training and evaluating the model
- *(Optional)* `education_roc_plot.png` – ROC visual (can be added manually)
- `README.md` – This documentation

---

## ⚠️ Dataset
> This dataset was used for academic purposes and is not included due to privacy constraints.

---

## 👤 Author
**Murtaza Gohari**  
Business Analytics | Machine Learning | Data Science Enthusiast  
[LinkedIn](https://www.linkedin.com/in/murtaza-gohari4747)
