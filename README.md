# NYC Taxi Services - Data Processing & Visualization  

## 🌟 Contexte et Présentation  
Ce projet s’appuie sur un **jeu de données public** issu de **Kaggle**, contenant des informations détaillées sur les trajets effectués par les taxis de New York. L’objectif est d’explorer et d’analyser ces données afin de mieux comprendre les tendances des déplacements, d’identifier les éventuelles anomalies et d’optimiser leur exploitation pour des analyses plus poussées.  

Grâce à un **pipeline de traitement des données**, nous effectuons différentes étapes : **nettoyage, transformation, stockage et visualisation** des données. Ce projet met en avant des techniques de manipulation de données en **Python (Pandas, NumPy, etc.)**, d’optimisation des performances via **PostgreSQL**, et de création de visualisations interactives avec **Power BI**.

---

## 🎯 Objectif du Projet  
Ce projet a pour but d'effectuer un traitement approfondi des données de NYC Taxi Services afin de :  
✅ Nettoyer et structurer les données pour une meilleure analyse.  
✅ Identifier et traiter les valeurs aberrantes.  
✅ Optimiser le stockage et la rapidité d’accès aux données.  
✅ Visualiser les tendances et insights clés sur **Power BI**.  

---

## 📂 Source des Données  
Les données utilisées dans ce projet proviennent de **Kaggle**. Vous pouvez les télécharger en suivant ce lien :  

🔗 **[NYC Taxi Dataset - Kaggle](https://www.kaggle.com/datasets/elemento/nyc-yellow-taxi-trip-data)** 

Une fois téléchargées, placez les fichiers dans le dossier **`data_brut/`** du projet.

---

## 🗃️ Structure du Projet  
```plaintext
nyc_taxi_project/
├──  data_geojson/ 
├──  data_brut/ 
├──  data_clean/                         # Contient les fichiers de données (à télécharger depuis Kaggle)
├──  notebooks/                          # Notebooks Jupyter pour l’analyse et le traitement des données
│   ├── cleaning_step.ipynb              # Nettoyage et préparation des données
│   ├── convert_parquet.ipynb            # Conversion des fichiers en format Parquet
│   └── outliers_identification.ipynb    # Identification et gestion des valeurs aberrantes
├──  sql/                                # Contient les scripts SQL
│   └── sql.sql                          # Requêtes SQL pour le traitement des données
├──  powerbi/                            # Contient le rapport Power BI
│   └── nyc_taxi_report.pbix             # Fichier Power BI (format .pbix)
├──  .env                                # Fichier contenant les variables environnement
├──  requirements.txt                    # Liste des dépendances Python
└──  README.md                           # Documentation du projet
```

---

## 🛠️ Contenu du Projet  

### 1️⃣ Prétraitement des Données  
Les différentes étapes de préparation et de transformation des données sont réalisées via des **notebooks Jupyter** :  
📌 **`convert_parquet.ipynb`** : Ajout des informations du geojson et conversion des fichiers en **Parquet** pour un stockage optimisé.  
📌 **`cleaning_step.ipynb`** : Nettoyage et structuration des données.  
📌 **`outliers_identification.ipynb`** : Détection et gestion des **valeurs illogiques** et des **outliers de distance et temps de course**.  

### 2️⃣ Traitement SQL  
Le fichier **`sql.sql`** contient les **requêtes SQL** exécutées sous **PostgreSQL** pour l'agrégation et l’optimisation des données issuent du geojson.

### 3️⃣ Visualisation des Données  
Les **données traitées** sont exploitées pour fournir des **visualisations interactives sur Power BI**.  
🔗 **Accédez au tableau de bord Power BI** :  [![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-orange?logo=powerbi)](https://app.powerbi.com/view?r=eyJrIjoiYjA2NWNiNTktM2Q1YS00YWE4LWI5OGUtMTBlY2VkNTdmYjA3IiwidCI6IjQ0OTFmMGVlLWY1MDMtNDcyNi1hNWViLTFmMGM0ZGFjODJhOSJ9&pageName=0ddccbb621013b0fcf8d)  

---

## 💪 Prérequis  
Pour exécuter ce projet, vous aurez besoin des outils suivants :  
- **Python 3.12**  
- **Jupyter Notebook**  
- **PostgreSQL**  
- **Power BI Desktop**  

---

## 🛠 Installation  
1️⃣ **Clonez le dépôt** :  
```sh
git clone https://github.com/Dim2960/nyc-taxi-data-analysis
cd nyc-taxi-data-analysis
```
2️⃣ **Installez les dépendances** :  
```sh
pip install -r requirements.txt
```
3️⃣ **Téléchargez les données depuis Kaggle** et placez-les dans le dossier `data/`.  

4️⃣ **Créez un fichier .env** à la racine avec le contenu suivant :
```ini
DB_NAME=nyc_geo
DB_USER=postgres
DB_PASSWORD=[Password]
DB_HOST=localhost
DB_PORT=5432
```
🗨️ Remplacez [Password] par votre valeur réelle.

5️⃣ **Lancez Jupyter Notebook** et exécutez les notebooks dans l’ordre recommandé.  

---

## 📩 Contact  
Pour toute question ou suggestion, n’hésitez pas à ouvrir une **issue** ou à me contacter directement.  

📧 Email : contact@datadriven-dynamix.fr  
🌐 LinkedIn : www.linkedin.com/in/dim-lefebvre60 

---

## 📚 Licence
Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

