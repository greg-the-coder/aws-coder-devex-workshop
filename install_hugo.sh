# Install Hugo into Workspace
echo "Installing Hugo..."
curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | grep "download_url.*Linux-64bit.tar.gz" | grep -v "extended" | cut -d '"' -f 4 | wget -qi -
HUGO_TAR="$(find . -name "*Linux-64bit.tar.gz")"
tar -xzf $HUGO_TAR
chmod +x hugo
sudo mv hugo /usr/local/bin/hugo
hugo version
