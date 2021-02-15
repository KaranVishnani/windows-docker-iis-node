FROM mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019

ADD /dependencies/node-v12.18.3-x64.msi /build/node-x64.msi
ADD /dependencies/iisnode-full-v0.2.21-x64.msi /build/iisnode-full-x64.msi
ADD /dependencies/rewrite_amd64_en-US.msi /build/rewrite_amd64_en-US.msi

RUN msiexec /i C:\build\node-x64.msi /qn /l*v C:\build\node.log
RUN msiexec /i C:\build\rewrite_amd64_en-US.msi /qn /l*v C:\build\rewrite.log
RUN msiexec /i C:\build\iisnode-full-x64.msi /qn /l*v C:\build\iisnode.log
