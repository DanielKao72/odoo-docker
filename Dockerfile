FROM odoo:18.0
COPY ./addons /mnt/extra-addons
COPY ./config/odoo.conf /etc/odoo/odoo.conf
CMD ["odoo", "--conf", "/etc/odoo/odoo.conf", "-i", "base"]