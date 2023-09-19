#!/bin/bash
PERSONS=(Kishore Supriya Sahasra Sanvita Shankaraiah Hemalatha)

echo "The first person Name is : ${PERSONS[0]}"
echo "The Second person Name is : ${PERSONS[1]}"
echo "The Third person Name is : ${PERSONS[2]}"
echo "The Fourth person Name is : ${PERSONS[3]}"
echo "The Fifth person Name is : ${PERSONS[4]}"
echo "The Sixth person Name is : ${PERSONS[5]}"
echo "The first and third persons names are: ${PERSONS[0]} & ${PERSONS[2]}"
echo "All Persons names are : ${PERSONS[@]}"

