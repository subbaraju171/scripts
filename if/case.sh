#!/bin/bash
colour="blue"
case $colour in
    "red")
        echo "colour is red"
        ;;
    "blue")
        echo "colour is blue"
        ;;
    "green")
        echo "colour is green"
        ;;
    "*")
        echo "unkown colour"
        ;;
esac
