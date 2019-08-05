# The Ultimate Docker/Wordpress Local Development Setup

## Short Explanation

Upon running `docker-compose up -d`, you will have two directories generated:

- db_data/ - All MySQL data
- wordpress/ - Your wordpress installation

db_data is gitignored by default.

To backup (dump) your database, run the script ./export_db.sh. This will not only dump your database, but also compress it into a tar archive.

By default, the exported tar of your database dump will included in version control. If you using a public repository, you may want to gitignore the tar export and distrute it between your machines using another method.

To import the previously exported tar of your database, run the ./import_db.sh script.

## Requirements:

- docker-compose & docker (duh)
- The "tar" command. Should be availible on every Linux distribution and probably Mac too.

Enjoy!
