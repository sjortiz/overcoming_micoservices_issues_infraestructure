echo "Generating a service token"
export token=$(curl -H "X-Vault-Token: SuperSecretToken" \
                      -X POST http://0.0.0.0:8200/v1/auth/token/create| jq '.auth.client_token')
echo $token

echo "Adding mongo-credentials"
