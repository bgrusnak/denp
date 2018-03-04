# denp
Docker Erlang Node.JS PostgreSQL template

Thanks to https://medium.com/@vetinary9212/%D1%80%D0%B0%D0%B7%D0%B2%D0%BE%D1%80%D0%B0%D1%87%D0%B8%D0%B2%D0%B0%D1%8E-%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BD%D0%B0-erlang-cowboy-%D1%81-%D0%BF%D0%BE%D0%BC%D0%BE%D1%89%D1%8C%D1%8E-docker-a8b80c08cab1

## How to use it
1. Open docker-compose.yml, read it and fix as you wish
2. Use dbmate in pg folder for the building of the db migrations (Look at https://github.com/amacneil/dbmate for the information)
3. Put your Erlang backend into back
4. Put your Node.JS frontend into front
5. Build plain html frontend in front/dist
6. call `./build.sh`
7. call `./start.sh`
8. Enjoy your docker stack
