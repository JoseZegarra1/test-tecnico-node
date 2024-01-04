# Proyecto de Pruebas Unitarias con Jenkins y Docker y la instalacion de Jenkins en un wsl2

- `docker-compose up`: ejecuta el docker compose para levantar la herramienta Jenkins

Esta rama contiene un proyecto de pruebas unitarias utilizando Jenkins y Docker.

## Archivos

- `Jenkinsfile`: Este archivo contiene la configuración del pipeline de Jenkins. El pipeline se encarga de ejecutar las pruebas unitarias y realizar el push del código.

- `tests/`: Este directorio contiene las pruebas unitarias del proyecto. Puedes agregar nuevas pruebas o modificar las existentes según tus necesidades.

## Ejecución

Para ejecutar las pruebas unitarias y realizar el push del código, sigue estos pasos:

1. Configura un servidor Jenkins con soporte para Docker.

2. Crea un nuevo job en Jenkins y configúralo para que apunte al archivo `Jenkinsfile` de este repositorio.

3. Ejecuta el job en Jenkins. Esto iniciará el pipeline y ejecutará las pruebas unitarias.

4. Si todas las pruebas unitarias pasan, el código será automáticamente pusheado al repositorio.

