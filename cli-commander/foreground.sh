# python --version
# pip3 list
echo -e "\e[101;93mDO NOT USE YOUR PRODUCTION CREDENTIALS IN ANY OF THESE EXAMPLES\e[0m"

while true; do
    read -p "Type 'Y' to acknowledge:?" yn
    case $yn in
        [Yy]* ) break;;
        * ) echo "Please answer yes by typing Y to acknowledge.";;
    esac
done
