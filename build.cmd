set "buildroot=%cd%\buildroot-v86"
set "dist=%cd%\dist"

REM docker build -t buildroot .

docker run -ti --rm --entrypoint "bash" --name build-v86 -v %buildroot%:/buildroot-v86 -v %dist%:/build buildroot:latest 