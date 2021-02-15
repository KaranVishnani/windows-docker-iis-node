# windows-docker-iis-node
The dockerfile to create the image of windows server core 2019 with IIS, nodejs, iisnode and rewrite module installed.

The DockerFile includes:
1. Base Image: iis:windowsservercore-ltsc2019
2. node-v12.18.3-x64.msi
3. iisnode-full-v0.2.21-x64.msi
4. rewrite_amd64_en-US.msi

These dependencies are used to run the Server-side rendering (SSR) with Angular Universal in docker containers.
