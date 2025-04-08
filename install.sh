#!/usr/bin/env zsh

# Installation minimaliste de Cursor AI
mkdir -p ~/.config/cursor_install
cd ~/.config/cursor_install

echo "📥 Téléchargement de Cursor AI..."
wget -O cursor.AppImage https://download.cursor.sh/linux/appImage || {
    echo "❌ Échec du téléchargement"
    exit 1
}

chmod +x cursor.AppImage

echo "alias cursor='~/.config/cursor_install/cursor.AppImage'" >> ~/.zshrc
source ~/.zshrc

echo "✅ Installation terminée !"
echo "Commande disponible: cursor"
echo "Dossier d'installation: ~/.config/cursor_install/"
