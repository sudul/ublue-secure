
#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

flatpak remote-delete --system --force fedora
flatpak remote-delete --user --force fedora
# flatpak remote-delete --system --force flathub
# flatpak remote-delete --user --force flathub
# flatpak remove --system --noninteractive --all
flatpak remote-add --if-not-exists --user --subset=verified flathub-verified https://flathub.org/repo/flathub.flatpakrepo
