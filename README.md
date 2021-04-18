# Quick reference

- **Maintained by**: [cloudpodznet](https://github.com/cloudpodznet)

# What is Idena?
Idena is the first proof-of-person blockchain based on democratic principles. Every node is linked to a cryptoidentity – one single person with equal voting power and mining income. It is one of the most decentralized blockchains with thousands of unique miners joining the network.

To start mining Idena, you need to prove you are a unique human. It does not require the disclosure of any personal data (no KYC). You have to appear online when the validation ceremony starts and solve a series of flip-tests (CAPTCHAs).

<br />
<br />
<p align="center">
  <a href="https://hub.docker.com/r/cloudpodznet/idena-docker" target="_blank">
    <img height="20%" width="20%" src="https://www.idena.io/static/images/idena-logo-round.svg">
  </a>
</p>
<br />
<br />

# How to use this image
:information_source: This image is intended for use on external node (e.g. VPS).

## Usage with docker-compose.yml
```
version: '3.8'
services:
  idena:
    image: cloudpodznet/idena-docker:latest
    restart: always
    ports:
      - "127.0.0.1:9009:9009"
      - "40405:40405"
    volumes:
      - ./data/idena:/app/idena/datadir
```

# License
View [license](https://github.com/idena-network/idena-go/blob/master/LICENSE) information for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.

## Links
- [DockerHub](https://hub.docker.com/r/cloudpodznet/idena-docker)

---

Consider supporting by donating iDNA to `0x9c2e1a1c5533f66c3bb59d799f7ea0ec96f06e8d`

---

If you are looking for VPS provider to host IDENA Node on check us out at [www.cloudpodz.net](https://www.cloudpodz.net)