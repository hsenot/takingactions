sudo -u postgres pg_dump -t task -t task_undertaken -t task_contribution takingactions > `date +%Y%m%d-%H%M%S`-db.sql
