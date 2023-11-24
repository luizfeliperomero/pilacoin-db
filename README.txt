After starting the container: 
- docker exec -it <container-id> bash
- psql -U postgres -d Mining
- ALTER TABLE query_response_pila ALTER COLUMN nonce TYPE TEXT;
- ALTER TABLE query_response_pila ALTER COLUMN nonce_pila TYPE TEXT;
- ALTER TABLE query_response_pila ALTER COLUMN chave_criador TYPE TEXT;