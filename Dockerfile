
# Use an official PHP runtime as a parent image
FROM php:8.2-apache

# Enable Apache mod_rewrite if needed (for URL rewriting, etc.)
RUN a2enmod rewrite

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the current directory contents into the container
COPY . .

# Set the permissions for the files (optional but recommended)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for web access
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
