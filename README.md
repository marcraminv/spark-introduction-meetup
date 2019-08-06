# Practical introduction to Apache Spark

Options to practise:

1. **Click here to open the jupyter**  👉 👉 👉 [![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/marcraminv/spark-introduction-meetup/master)

2. **Build your own container in local if you have Docker installed**

    Go to the project `cd introduction-spark` and run the following command:
    ```bash
    docker build --tag spark-introduction:1.0.0 .
    ```

    And then run the following command:
    ```
    USER_NAME=`whoami`
    DIR=`pwd`

    docker run \
    --rm \
    -it \
    --name jupyter \
    -p 8888:8888 -p 4040:4040 \
    -e NB_USER=$USER_NAME \
    --user root \
    -v "$DIR":/home/$USER_NAME \
    -w "/home/$USER_NAME" \
    jupyter/all-spark-notebook:latest
    ```