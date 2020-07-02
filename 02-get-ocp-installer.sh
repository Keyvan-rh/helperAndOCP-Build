wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-install-linux-$1.tar.gz
wget https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux-$1.tar.gz
tar -xvf openshift-install-linux-$1.tar.gz
tar -xvf openshift-client-linux-$1.tar.gz
cp kubectl /usr/local/bin/.
cp oc /usr/local/bin/.
cp openshift-install /usr/local/bin/.
