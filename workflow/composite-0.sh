echo "::group::Install Gobuster with go get"
[ ! -x /home/runner/go/bin/gobuster ] && GO111MODULE=on go get -v github.com/OJ/gobuster/v3@latest
echo "/home/runner/go/bin/" >> $GITHUB_PATH
echo "::endgroup::"
