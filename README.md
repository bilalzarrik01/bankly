# Bankly – Base de Données Bancaire

## 📌 Contexte du Projet
Bankly est une application bancaire en ligne permettant aux clients de :
- gérer leurs comptes,
- consulter leurs soldes,
- effectuer des transactions,
- contacter leur conseiller bancaire.

L'objectif est de fournir une plateforme simple, sécurisée et rapide pour les opérations financières courantes.

---

## 🎯 Objectif du Projet
Votre mission est de **modéliser et implémenter** une base de données relationnelle (maximum 4 tables) qui gère les fonctionnalités essentielles :
- Clients  
- Conseillers  
- Comptes  
- Transactions  

Vous devez :
- produire un schéma **ERD clair**,
- créer les tables SQL en respectant :
  - clés primaires,
  - clés étrangères,
  - intégrité référentielle.

---

## 🧩 Schéma de la Base de Données (ERD)

### **Customers**
| Champ | Type | Description |
|-------|------|-------------|
| customer_id | PK | Identifiant unique |
| full_name | VARCHAR | Nom complet |
| email | VARCHAR | Email du client |
| phone | VARCHAR | Numéro de téléphone |
| registration_date | DATETIME | Date d'inscription |

### **Advisors**
| Champ | Type | Description |
|-------|------|-------------|
| advisor_id | PK | Identifiant unique |
| full_name | VARCHAR | Nom du conseiller |
| email | VARCHAR | Email du conseiller |

### **Accounts**
| Champ | Type | Description |
|-------|------|-------------|
| account_id | PK | Identifiant unique |
| account_number | INT | Numéro du compte |
| balance | FLOAT | Solde |
| account_type | ENUM | Checking / Savings / Business |
| customerid | FK → Customers.customer_id |
| advisorid | FK → Advisors.advisor_id |

### **Transactions**
| Champ | Type | Description |
|-------|------|-------------|
| transaction_id | PK | Identifiant unique |
| amount | FLOAT | Montant |
| transaction_type | ENUM | debit / credit |
| transaction_date | DATETIME | Date de transaction |
| accountid | FK → Accounts.account_id |

---

## 🔗 Relations Entre les Tables
- Un **customer** possède plusieurs **accounts**  
- Un **advisor** gère plusieurs **accounts**  
- Un **account** possède plusieurs **transactions**  
- Une **transaction** appartient à un seul **account**

---

## 📝 Requêtes SQL à Réaliser

### ✔ Insertions et mises à jour
1. Insérer un nouveau customer  
2. Modifier le numéro de téléphone d’un customer  

### ✔ Sélections simples
3. Afficher tous les customers  
4. Afficher full_name et email seulement  
5. Afficher tous les accounts  
6. Afficher uniquement les account_number  
7. Afficher toutes les transactions  

### ✔ Conditions
8. Accounts avec balance > 10000  
9. Accounts avec balance ≤ 0  
10. Transactions de type **debit**  
11. Transactions de type **credit**  
12. Transactions du account_id = 1  
13. Customers ayant un account géré par advisor_id = 2  
14. Accounts avec type = "Savings"  
15. Transactions avec amount ≥ 500  
16. Transactions entre 100 et 1000  

### ✔ Jointures et tri
17. Accounts du customer_id = 1  
18. Accounts triés par balance (ASC)  
19. Transactions triées par amount (DESC)  
20. Top 5 plus grandes transactions  
21. Transactions triées par date (DESC)  
22. Dernières 3 transactions  
23. Afficher chaque account avec nom du customer + advisor (JOIN)

---

## ✅ Auteur
Projet réalisé par *Bilal Zarrik* dans le cadre du module **Base de Données SQL**.
