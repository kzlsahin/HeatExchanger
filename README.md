# HeatExchanger

The aim of this study is to build an unsteady state dynamic model of an heat exchanger that is suitable to be improved for using on different studies and to be modified according to needs in the future. 

## Abstract

Heat exchangers have vital role in energy systems. Simulations of heat exchangers are important for the calculation of energy efficiency of a system. In this study a simple but effective dynamic model of a counter-flow heat exchanger is studied. Most of the simulations are based on steady state analysis, however while working with a system that is supposed to maintain a nearly constant temperature level for cooling systems, a controller should be used and thus the system should be modeled as a time depended unsteady state dynamic model. For this purpose, energy conservation equations are derived based on discrete time intervals and segmentation of the heat transfer volume.

## Experience Through the Development of the Model

For the first time I was working on the project, I was trying to solve the system of heat transfer on an heat exchanger. I got impressed and confused with the complexity of the heat system. While searching the literature about the solution for this kind of problem all I had found was efficiency analysis of heat exchangers for steady states. As I was looking for a dynamic modelling for an heat exchanger I was not able to use any of them, however I learned much.

My first attempt was to simplify the heat transfer system by linearising the temperature distribution of the system with small elements and then calculating the heat transfer for every step of the system to reach an optimum point of working state. I built the model on SIMULINK and then begun to analyze it. After a week I realized that the model is not suitable and consistent as it does not depended on a time interval. Then I begun to investigate the issue. I found that the method I had used to build my model was a finite differential method that is not suitable for a dynamic unsteady state system of heat transfer. My biggest problem was that I couldn’t know how should I have modeled the flow of the fluids according to time and heat transfer.

The last model I have built was based on a simple idea of modeling the fluids as a flow of enthalpy instead of a massive flow. Then I could model the equations of energy conversation on the imaginary segments of the heat transfer area. Enthalpy of a previous segment was flowing through the next one by the flow of the fluids, when I used a quite small time intervals for the system calculations, the flow of the enthalpy was exactly like an enthalpy transfer form one segment to another. 

After all of these studies I feel that it was an amazing experience that I wouldn’t expect from myself. I learned finite differential and finite element methods, heat transfer coefficients and efficiency of heat exchangers.

![screen shot](https://github.com/kzlsahin/HeatExchanger/blob/main/HeatexchangerModel.png?raw=true)
