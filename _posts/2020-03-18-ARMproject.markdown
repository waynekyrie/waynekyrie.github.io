---
layout: post
title:  "Automatic Onsite Polishing"
date:   2020-03-18 18:08:39 +00:00
image: /images/environment_setup_caption.jpg
categories: research
author: "Ruixuan Liu"
authors: "<strong>Ruixuan Liu</strong>, Weiye Zhao, Suqin He, Changliu Liu"
location: "Mill 19, Pittsburgh, PA"
venue: "ARM Institute"
permalink: /arm-polishing/
website: https://waynekyrie.github.io/arm-polishing/
youtube: https://youtu.be/DP9TUkI8tQg?si=WSw2SZFnq5oIZczj
---
## Overview
In manufacturing, many large workpieces are made by welding subcomponents together. It is required to remove the weld bead remained on the surface in order to deploy the workpiece in real applications. Conventionally, the weld beads are removed manually by human workers. However, the work is time-consuming, expensive, and more importantly, dangerous for human workers. For instance, a metal tube is manufactured by welding the upper half and the bottom half. The weld bead would remain both inside and outside the tube surface. It is relatively easy for a human to polish the bead on outter surface, but it is extremely difficult and dangerous for a human to polish inside the tube. Therefore, this project provides a robotic solution to the polishing task.

----

## Hardware Setup
The problem that this project intends to solve is polishing the weld bead inside a workpiece. We have the metal workpiece placed in front of our robot using a positioner. We designed a fixture for the robot to hold the polishing tool. The fixture allows the robot to reach into the workpiece and polish the weld bead inside. A depth camera is placed next to the setup to visually locate the setup.

<img src="/images/ARM_Polishing/environment_setup_caption.jpg" width="800">

----

## System Pipeline
We designed a state machine to control the workflow of the system pipeline. The pipeline includes six major states to complete the polishing task. The state machine controls the transition from states to states.<br />
1. Visual Alignment: The system uses the depth camera to estimate the transformation between the robot and the workpiece.
2. Measurement Planning: The motion planner plans a reference trajectory for measuring the inner weld bead. 
3. Surface Measurement: The controller controls the robot to reach into the tube and precisely measure the weld bead using the laser scanner. The transformation estimated by Visual Alignment is refined using the laser measurement. 
4. Polishing Decision: The motion planner plans a polishing trajectory.
5. Polishing: The controller controls the robot to safely performs the polishing.
6. Surface Measurement: The robot remeasures the inner surface to evaluate the polishing quality.
![](images/ARM_Polishing/state_machine.jpg)

To ensure the safety, we implemented a equivalent simulation environment to test all algorithms and system before deploying to the real robot. 

----

## Demos
Several demo videos are available below.

<figure class="video_container">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/DP9TUkI8tQg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
  
* [Full Simulation Demo](https://youtu.be/6X4YPcnalwg) This is a demo video showing the pipeline running in full simulation.
* [System Pipeline Demo](https://youtu.be/aBOw4GjS7xg) This is a video testing only the system pipeline on real robot. 


----

## Credit
This project is collaborated with Weiye Zhao and [Suqin He](https://www.ri.cmu.edu/ri-people/suqin-he/), advised by [Prof. Changliu Liu](https://www.ri.cmu.edu/ri-faculty/changliu-liu/). The project is also collaborated by Siemens and Yaskawa. The project is sponsored by the ARM Institute.

