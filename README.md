# otm-docker

Development environment for OpenTransportManager project based on Docker

## Requirements

- git
- docker
- docker-compose
- make _(recommended)_

# Getting started

Clone `otm-docker` repository

```
git clone https://github.com/opentransportmanager/otm-docker.git
```

Initialize environment (clone services repositories, spin up containers, install dependencies and set up .env)

```
make
```

Services are available under:

| service              | url                   |
| -------------------- | --------------------- |
| otm-api              | http://localhost:8000 |
| otm-passenger-client | http://localhost:8005 |

## Troubleshooting

#### The stream or file "/usr/src/otm-api/storage/logs/laravel.log" could not be opened: failed to open stream: Permission denied

```
sudo chown -R www-data:www-data ./otm-api/storage
```
