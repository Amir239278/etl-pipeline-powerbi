# 🚕 NYC Taxi Services - ETL Pipeline & Business Intelligence

## 📋 Contexte

Ce projet démontre une **solution BI complète et production-ready** pour l'analyse de données de taxis à New York.

L'architecture couvre l'ensemble du pipeline de données :
- 📄 Extraction et nettoyage (Python/Pandas)
- 💾 Stockage optimisé (PostgreSQL + Parquet)
- 📊 Visualisation interactive (Power BI)

**Cas d'usage métier** : Analyse des tendances de mobilité urbaine, optimisation des flux de taxis, détection d'anomalies.

---

## 💡 Données Utilisées

- **Source** : [NYC Yellow Taxi Trip Data (Kaggle)](https://www.kaggle.com/datasets/elemento/nyc-yellow-taxi-trip-data)
- **Volume** : 500K+ trajets quotidiens
- **Variables** : Date/heure, localisation (pickup/dropoff), tarif, distance, durée, nombre de passagers
- **Géodonnées** : GeoJSON pour cartographie des zones

---

## 🎯 Objectifs

✅ **Extraction** : Télécharger et importer les données brutes
✅ **Nettoyage** : Gérer les valeurs manquantes, les outliers, les anomalies
✅ **Transformation** : Feature engineering, enrichissement géographique
✅ **Optimisation** : Conversion en Parquet, création d'index SQL
✅ **Analyse** : Création de dashboards Power BI interactifs
✅ **Insights** : Tendances de mobilité, patterns temporels, clustering géographique

---

## 🛠️ Stack Technique

| Composant | Technologie | Rôle |
|-----------|-------------|------|
| **Data Processing** | Python 3.8+ | Nettoyage, transformation |
| **Libraries** | Pandas, NumPy | Manipulation DataFrames |
| **Database** | PostgreSQL | Stockage structuré |
| **Format Stockage** | Parquet | Compression & performance |
| **Visualization** | Power BI | Dashboards interactifs |
| **Notebooks** | Jupyter | Documentation & expérimentation |

---

## 📁 Architecture du Projet

```
etl-pipeline-powerbi/
├── data_geojson/                 # Données géographiques (GeoJSON)
├── data_brut/                   # Données brutes importées de Kaggle
├── data_clean/                  # Données nettoyées et transformées
├── notebooks/
│   ├── 01_cleaning_step.ipynb      # Nettoyage initial
│   ├── 02_outliers_identification.ipynb  # Détection d'anomalies
│   └── 03_convert_parquet.ipynb    # Conversion format optimé
├── sql/
│   └── queries.sql                 # Requêtes PostgreSQL
├── powerbi/
│   └── nyc_taxi_report.pbix       # Rapport BI
├── .env                         # Variables d'environnement
├── requirements.txt             # Dépendances Python
└── README.md                    # Documentation
```

---

## 🚀 Étapes du Pipeline

### 1️⃣ **Extraction & Chargement Initial**

```python
# Télécharger depuis Kaggle
# Placer les fichiers CSV dans data_brut/
# Ex: yellow_tripdata_2023-01.csv
```

### 2️⃣ **Nettoyage des Données**

- Suppression des doublons
- Gestion des valeurs manquantes
- Conversion des types de données
- Normalisation des chaînes
- Validation des plages de valeurs

### 3️⃣ **Détection des Anomalies**

- Identification des points aberrants (distance, durée, tarif)
- Analyse statistique (quartiles, IQR)
- Flagging des enregistrements douteux
- Génération de rapports d'anomalies

### 4️⃣ **Enrichissement Géographique**

- Matching avec GeoJSON (NYC zones)
- Géocodage des coordonnées (latitude/longitude)
- Création de variables spatiales (distance, zone)
- Agrégation par quartier/district

### 5️⃣ **Optimisation du Stockage**

```python
# Conversion CSV → Parquet pour :
# - Réduction taille fichiers (~80% compression)
# - Accélération lectures
# - Optimisation mémoire
```

### 6️⃣ **Traitement SQL**

```sql
-- Création tables dimension/fact
-- Agrégations par temps (jour, heure, zone)
-- Calculs KPI (revenus moyens, vitesse moyenne)
-- Création views pour Power BI
```

### 7️⃣ **Visualisation Power BI**

- Dashboards multi-pages (vue générale, détail temporel, zones)
- Filtres interactifs (date, zone, tarif)
- Cartes géographiques des trajets
- Analyses de tendances

---

## 📖 Prérequis & Installation

### Outils Obligatoires

```bash
# Vérifier Python
python --version  # >= 3.8

# Installer PostgreSQL
# https://www.postgresql.org/download/

# Installer Power BI Desktop
# https://powerbi.microsoft.com/fr-fr/desktop/
```

### Setup du Projet

```bash
# 1. Cloner le repo
git clone https://github.com/Amir239278/etl-pipeline-powerbi.git
cd etl-pipeline-powerbi

# 2. Créer un environnement virtuel
python -m venv venv
source venv/bin/activate  # Linux/Mac

# 3. Installer les dépendances
pip install -r requirements.txt

# 4. Configurer .env
DB_NAME=nyc_taxi
DB_USER=postgres
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432

# 5. Créer la base PostgreSQL
psql -U postgres -c "CREATE DATABASE nyc_taxi;"

# 6. Exécuter migrations SQL
psql -U postgres -d nyc_taxi -f sql/queries.sql
```

### Lancer les Notebooks

```bash
jupyter notebook
# Exécuter dans l'ordre :
# 1. 01_cleaning_step.ipynb
# 2. 02_outliers_identification.ipynb
# 3. 03_convert_parquet.ipynb
```

---

## 📊 Résultats & KPI

### Métriques de Nettoyage
- **Doublons supprimés** : 0.5%
- **Valeurs manquantes** : <1%
- **Outliers détectés** : 3.2%

### Insights Métier
- 🔧 **Pic activité** : Jeudi 16h-20h (rush hour)
- 💰 **Revenu moyen** : $13.50 par trajet
- 📍 **Zone active** : Midtown Manhattan
- ⏱️ **Temps moyen** : 14 minutes

---

## 📚 Compétences Démontrées

✓ **Data Engineering** : Pipeline ETL complet
✓ **Python** : Pandas, NumPy, données volumineuses
✓ **SQL** : Requêtes complexes, optimisation indexes
✓ **Géolocalisation** : GeoJSON, clustering spatial
✓ **BI** : Dashboards, KPI, storytelling
✓ **Performance** : Optimisation Parquet, requêtes SQL
✓ **Documentation** : Code commenté, READMEs

---

## 📄 Licence

MIT License - Libre d'utilisation

---

## 📧 Contact

👤 **Auteur** : Amir - Data Analyst & Engineer
💬 **GitHub** : [github.com/Amir239278](https://github.com/Amir239278)
💼 **Recherche** : Alternance Data Engineer - Île-de-France
🎯 **Formation** : WCS Data Engineer (Mars 2026)
