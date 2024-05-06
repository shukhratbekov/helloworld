#!/bin/bash

certbot renew --nginx --quiet

nginx -s reload
