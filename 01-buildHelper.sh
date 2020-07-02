## pass one of the vars-esxi.yaml or vars-kvm.yaml to this to build helper for correct platform
ansible-playbook -e @$1 tasks/main.yml
/usr/local/bin/helpernodecheck
