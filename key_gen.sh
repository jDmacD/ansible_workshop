KEY_PATH="~/.ssh/ansible_id_rsa"
ssh-keygen -t rsa -q -f ${KEY_PATH} -N ""
PUB_KEY=$(cat "${KEYPATH}.pub")
echo "echo \"${PUB_KEY}\" > ~/.ssh/authorized_keys"