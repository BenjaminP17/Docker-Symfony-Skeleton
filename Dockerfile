# Utilise l'image officielle PHP avec Apache
FROM php:8.1-apache

# Installe les extensions PHP nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copie les fichiers de configuration Apache si nécessaire
# COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Active les modules Apache nécessaires
RUN a2enmod rewrite

# Installe les dépendances pour phpMyAdmin
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

# Installer composer (optionnel, si vous avez besoin de composer)
# COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
