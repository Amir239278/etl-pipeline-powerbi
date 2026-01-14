text
# 🚕 NYC Taxi Data – Prétraitement & Analyse

Projet d'analyse de données sur les trajets de taxis NYC : prétraitement dans des notebooks Jupyter, agrégations SQL dans une base relationnelle, et visualisation des KPIs dans Power BI pour mieux comprendre les volumes de trajets, les revenus et les zones les plus actives.

---

## 📋 Contexte & Objectif

Les données proviennent du jeu de données public NYC Taxi & Limousine Commission (TLC) / Kaggle, contenant des informations détaillées sur les courses : dates, distances, montants, zones de prise en charge/dépose, type de paiement, etc.

L'objectif du projet est de :

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
│   ├── cleaning_step.ipynb
│   ├── convert_parquet.ipynb
│   └── outliers_identification.ipynb
├── sql/
│   └── nyc_taxi_queries.sql
├── powerbi/
│   └── nyc_taxi_report.pbix
├── images/                # Captures d'écran du projet
│   ├── dashboard_kpi_overview.png
│   ├── dashboard_time_trends.png
│   └── dashboard_geo_view.png
├── requirements.txt
└── README.md
🛠️ Contenu & Étapes
1️⃣ Prétraitement des données (Jupyter)
Dans le dossier notebooks/ :

cleaning_step.ipynb : chargement des fichiers bruts, nettoyage (types, valeurs manquantes, doublons), filtrage des trajets incohérents (distance ≤ 0, temps négatif, montants aberrants).

convert_parquet.ipynb : conversion des fichiers nettoyés en Parquet pour un stockage plus léger et plus rapide.

outliers_identification.ipynb : analyse des distributions (distance, durée, montant) et traitement des outliers (cap, suppression, etc.).

2️⃣ Traitement SQL
Dans le dossier sql/ :

nyc_taxi_queries.sql contient les requêtes SQL exécutées dans une base (MySQL ou PostgreSQL) pour :

créer les tables de travail ;

agréger les données par jour, zone, type de paiement, tranche horaire ;

préparer des vues ou tables prêtes pour Power BI.

3️⃣ Visualisation des données (Power BI)
Dans le dossier powerbi/ :

nyc_taxi_report.pbix propose un rapport interactif avec :

KPIs : nombre de trajets, revenu total, tarif moyen ;

graphiques de tendances (par jour, mois, heure) ;

cartes / visuels par zone géographique ;

filtres par date, zone, type de course.

📸 Captures du projet
1. Vue globale des KPIs
Dashboard – KPIs globaux

2. Analyse temporelle
Dashboard – Tendances temporelles

3. Analyse géographique
Dashboard – Vue géographique

💪 Prérequis & Installation
Prérequis
Python 3.x

Jupyter Notebook

Base SQL (MySQL ou PostgreSQL)

Power BI Desktop

Installation
1️⃣ Cloner le dépôt :

bash
git clone https://github.com/Amir239278/etl-pipeline-powerbi.git
cd etl-pipeline-powerbi
2️⃣ Installer les dépendances :

bash
pip install -r requirements.txt
3️⃣ Télécharger les données (NYC TLC / Kaggle) et les placer dans data_raw/.

4️⃣ Lancer Jupyter Notebook :

bash
jupyter notebook
5️⃣ Exécuter les notebooks dans l'ordre :

cleaning_step.ipynb

convert_parquet.ipynb

outliers_identification.ipynb

6️⃣ Charger les données nettoyées dans votre base SQL en utilisant nyc_taxi_queries.sql.

7️⃣ Ouvrir powerbi/nyc_taxi_report.pbix dans Power BI Desktop et connecter la source de données à votre base.

👨‍💻 Auteur
Amir Meraka – Data Analyst (Power BI & Data Quality) – Île-de-France
En recherche de CDI/CDD/Stage Data Analyst / BI Analyst.

GitHub : https://github.com/Amir239278

LinkedIn : https://linkedin.com/in/amir-meraka
