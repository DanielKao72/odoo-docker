FROM odoo:18.0

COPY ./addons /mnt/extra-addons
COPY ./config/odoo.conf /etc/odoo/odoo.conf

# Forzar puerto desde variable de entorno PORT (Render lo inyecta automáticamente)
CMD ["sh", "-c", "odoo --conf /etc/odoo/odoo.conf --http-port=$PORT -i base"]