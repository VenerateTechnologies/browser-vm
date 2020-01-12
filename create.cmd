set "buildroot=%cd%\buildroot-v86"
set "dist=%cd%\dist"

docker run -ti --entrypoint "bash" --rm --name build-v86 -v %buildroot%:/buildroot-v86 -v %dist%:/build buildroot:latest 