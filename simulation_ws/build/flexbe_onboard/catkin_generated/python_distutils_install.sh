#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_onboard"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/comp2/simulation_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/comp2/simulation_ws/install/lib/python2.7/dist-packages:/home/comp2/simulation_ws/build/flexbe_onboard/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/comp2/simulation_ws/build/flexbe_onboard" \
    "/usr/bin/python2" \
    "/home/comp2/simulation_ws/src/flexbe_behavior_engine/flexbe_onboard/setup.py" \
     \
    build --build-base "/home/comp2/simulation_ws/build/flexbe_onboard" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/comp2/simulation_ws/install" --install-scripts="/home/comp2/simulation_ws/install/bin"
