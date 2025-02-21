#!/bin/bash
read branch
case $branch in
    "dev")
        echo "branch is dev"
        build=true
        test=true
        deploy=true
        echo "Can build $build"
        ;;
    "qa")
        echo "branch is qa"
        build=false
        test=true
        deploy=true
        echo "Can build $build"
        ;;
    "master")
        echo "branch is master"
        build=false
        test=false
        deploy=true
        echo "Can deploy $deploy"
        ;;
esac