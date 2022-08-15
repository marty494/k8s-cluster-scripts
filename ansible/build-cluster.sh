HOSTS_MNT="--mount type=bind,source="${PWD}"/hosts,target=/etc/ansible/hosts"
YAML_PB_MNT="--mount type=bind,source="${PWD}/runbooks/cluster",target=/yaml"
CFG_MNT="--mount type=bind,source="${PWD}"/ansible.cfg,target=/etc/ansible/ansible.cfg"
VARS_MNT="--mount type=bind,source="${PWD}"/vars.yml,target=/vars.yml"

sudo docker run $HOSTS_MNT $YAML_PB_MNT  $CFG_MNT -ti rdomloge/ansible ansible-playbook yaml/k8s-runbook.yaml

#docker run $HOSTS_MNT $YAML_PB_MNT  $CFG_MNT -ti rdomloge/ansible ansible-playbook -v yaml/resetpasswd.yaml
