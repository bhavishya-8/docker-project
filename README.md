# Dockerfile for Apache HTTP Server on CentOS 7
![Running GIF](https://camo.githubusercontent.com/1140a4f2ffe1d7d5432df78421909e56c97909423568e609983ec3d4fbcb0b22/68747470733a2f2f726561646d652d747970696e672d7376672e6865726f6b756170702e636f6d3f666f6e743d4f72626974726f6e2673697a653d343026636f6c6f723d253233373941353030266865696768743d3637266475726174696f6e3d333030302663656e7465723d74727565266c696e65733d254630253946253835254236254630253946253836253831254630253946253835254234254630253946253835254234254630253946253836253833254630253946253835254238254630253946253835254244254630253946253835254236254630253946253836253832)


This Dockerfile sets up an Apache HTTP Server on CentOS 7.

## Instructions

1. Create a `Dockerfile` in your project directory.

2. Copy and paste the following content into your `Dockerfile`:

```Dockerfile
# Use the official CentOS 7 image as the base image
FROM centos:7

# Update the system, install httpd, and clean up
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

# Copy the index.html file to the document root
COPY index.html /var/www/html/

# Expose port 8080 for incoming connections
EXPOSE 8080

# Start the Apache HTTP Server in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
1. Place your `index.html` file in the same directory as the Dockerfile.

2. Build the Docker image by running the following command in the terminal:

    ```sh
    docker build -t apache-centos .
    ```

    Replace `apache-centos` with your preferred image name.

3. Run a container from the image using the following command:

    ```sh
    docker run -d -p 8080:8080 apache-centos
    ```

4. Access the Apache HTTP Server by opening a web browser and navigating to [http://localhost:8080](http://localhost:8080).

## Notes

- This Dockerfile uses the official CentOS 7 image as the base image.
- The `httpd` package (Apache HTTP Server) is installed.
- The `index.html` file is copied to the document root directory.
- The server listens on port 8080, which is exposed for incoming connections.
- The Apache HTTP Server is started in the foreground, allowing the container to run continuously.

## License

This project is licensed under the [MIT License](LICENSE).

## Author

Dockerfile created by [Your Name](https://your-website-url-here.com).
![Running GIF](  https://raw.githubusercontent.com/trinib/trinib/82213791fa9ff58d3ca768ddd6de2489ec23ffca/images/footer.svg)
