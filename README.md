# Docker PHP APACHE MYSQL & SYMFONY

Ce projet fournit un conteneur Docker qui inclut PHP 8.1, Apache, MySQL, phpMyAdmin et Symfony

## Introduction

Ce dépôt contient une configuration Docker avec Apache, MySQL, PHP 8.1 et inclut phpMyAdmin pour la gestion de base de données. Il est destiné à fournir un environnement de développement PHP/Symfony simple et reproductible.

## Pré-requis :white_check_mark:

- Docker
- Docker Compose

## Installation

1. Cloner le dépot Github :

```sh
git clone git@github.com:BenjaminP17/Docker-Symfony-Skeleton.git
```

2. Construire et démarrer les conteneurs :

```sh
docker-compose up -d
```

## Utilisation

- Accéder au serveur web :

Ouvrez votre navigateur et accédez à http://localhost:8741.

- Accéder à phpMyAdmin :

Ouvrez votre navigateur et accédez à http://localhost:8081.

- Utilisateur : Root
- Mot de passe : aucun

