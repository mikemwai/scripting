#!/bin/bash
staff="/Staff"
students="/Students"
backup="/backups"
rsync -av "$staff" "$backup"
rsync -av "$students" "$backup"
