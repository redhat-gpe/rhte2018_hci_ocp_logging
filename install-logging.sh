
ANSIBLE_LOG_PATH=/tmp/ansible-logging.log ansible-playbook -vvv --become \
  --become-user root \
  --inventory /etc/ansible/hosts \
  -e deployment_type=origin \
  -e openshift_image_tag=v3.11 \
  -e openshift_pkg_version="-3.11*" \
  playbooks/openshift-logging/config.yml
