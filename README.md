# 🚕 NYC Taxi Data – Prétraitement & Analyse

Projet d’analyse de données sur les trajets de taxis NYC : **prétraitement dans des notebooks Jupyter**, agrégations SQL dans une base relationnelle, et **visualisation des KPIs dans Power BI** pour mieux comprendre les volumes de trajets, les revenus et les zones les plus actives.

---

## 📋 Contexte & Objectif

Les données proviennent du jeu de données public NYC Taxi & Limousine Commission (TLC) / Kaggle, contenant des informations détaillées sur les courses : dates, distances, montants, zones de prise en charge/dépose, type de paiement, etc. 

L’objectif du projet est de :

- Nettoyer et structurer les données pour les rendre exploitables en analyse.
- Identifier et traiter les valeurs aberrantes (outliers de distance, durée, montant).
- Optimiser le stockage (Parquet + base SQL) pour faciliter les requêtes.
- Construire un rapport Power BI pour visualiser les tendances clés (volumes, revenus, zones, temporalité).

---

## 🗃️ Structure du projet

```text
nyc_taxi_project/
├── data_raw/              # Fichiers bruts téléchargés (CSV)
├── data_clean/            # Données nettoyées / transformées (CSV/Parquet)
├── notebooks/             # Notebooks Jupyter pour le traitement
│   ├── cleaning_step.ipynb          # Nettoyage et préparation
│   ├── convert_parquet.ipynb       # Conversion en Parquet
│   └── outliers_identification.ipynb # Détection des anomalies
├── sql/                   # Scripts SQL (agrégations / tables)
│   └── nyc_taxi_queries.sql
├── powerbi/               # Rapport Power BI
│   └── nyc_taxi_report.pbix
├── requirements.txt       # Dépendances Python
└── README.md
