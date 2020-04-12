
composer global require pantheon-systems/terminus:"^2.3"
composer global require drush/drush:"^10.2"

ln -sf "$HOME/.composer/vendor/pantheon-systems/terminus/bin/terminus" "/usr/local/bin"
ln -sf "$HOME/.composer/vendor/bin/drush" "/usr/local/bin"
echo "Composer packages installed."
