# Dockerfile
FROM odoo:18.0

# Copiar tus addons personalizados
COPY ./addons /mnt/extra-addons

# (Opcional) Copiar archivo de configuración
COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Asegúrate de que Odoo use tu archivo de config
CMD ["odoo", "--conf", "/etc/odoo/odoo.conf"]