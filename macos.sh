###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################
# Remove the auto-hiding Dock delay - https://apple.stackexchange.com/questions/33600/how-can-i-make-auto-hide-show-for-the-dock-faster
defaults write com.apple.dock autohide-delay -float 0


###############################################################################
# Kill affected applications                                                  #
###############################################################################
for app in "Dock"; do
  killall "${app}" &> /dev/null
done

echo "Mac Os settings applied. Note that some of these changes require a logout/restart to take effect."
