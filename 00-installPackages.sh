# yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm
yum -y install ansible git
git clone https://github.com/Keyvan-rh/helperAndOCP-Build.git
cd helperAndOCP-Build
