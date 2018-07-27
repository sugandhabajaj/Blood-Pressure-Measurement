# Blood-Pressure-Measurement
The project aims to calculate BP and HR with cuff-less measuring devices

# Abstract
In the past decade, the field of wireless networks and embedded sensors has seen tremendous advancements. Sensors are distinctively low-cost and low-power devices which are capable of precise measurements and data transfer. They act as technology enabler in most of cases which not only increases quality of product but also life. The products which incorporate these sensors find applications in industrial, commercial and military sectors such as home automation, healthcare, target tracking etc. The project proposes the design of portable, low-cost, easy-to-handle, continuous health monitoring system which uses sensors in healthcare. The device is designed keeping in mind the needs of different people. Currently available market products are unhandy and bulky, they are only suitable for hospital/ medical use. The paper focuses on bringing the healthcare to everyone busy in life who pay little attention towards regular health checkups. The physiological data is collected through sensors and sent to PC/ Mobile phone for estimation and display of BP and HR through a transmission device. The data gathered in the process is not only useful in estimation of cardiovascular quantities but also provides continuous data for the betterment of estimation algorithms.

# Introduction

Sensors have significant impact in fulfilling environmental challenges. They seamlessly fit in multiple fields which in turn brings ‘smart technology’ as more efficient way of feedback systems. The data collected by different sensors are used not only to control but also to analyze the behaviour of surroundings.
This project focuses on the sensors supporting healthcare, although they are in the stage of early development but are contributing majorly in health monitoring and diagnostic systems. As the quality of life is increasing in terms of comfort and automation, the world is witnessing larger health concerns such as Cardiovascular diseases. The change in food habits and lifestyle is accumulating to the disease prone environment. Thus, existing medical resources cannot fulfil future healthcare demands. Senior citizens or patients who cannot visit hospitals regularly due to certain economic or age related reasons after undergoing a treatment but require continuous monitoring are in large need for real-time continuous health monitoring systems. 
Major requirements of such system include less weight, minimal form-factor, low power, easy to use and patient specific calibration. Also it is important for medical data to be transmitted and received without error to maintain the integrity of data.

We are focusing on extraction of the following signals:

1.	PPG ( Photoplethysmogram) : An optical sensor placed near the human artery a pulse waveform can be detected. It is obtained by illuminating the area and measuring the change in light absorption. Each cardiac cycle appears as a peak and thus is captured by the optical sensor.
2.	ECG (Electrocardiogram) : The electrical activity of heart is recorded over a period of time using electrodes placed on skin. The heart pumps blood when muscles contract , generating their action potential which creates current. As the current spreads throughout the body, it creates potential difference and that signal is recorded as ECG signal.

The features which are extracted from these signals are useful in improving the risk related to cardiovascular diseases. In the paper a signal acquisition system is suggested which can non-invasively measure, transmit and analyse the above biological signals. The device is majorly focused on the estimation of BP (Blood Pressure) and HR (Heart Rate). 
The aim of development of such devices is to provide patients or customers with low cost, portable device for sustainable usage. But as each human is different it is sensible to design devices tailor-made for each need. For example., if we focus on an elderly patient / someone who is critically dealing with the cardiovascular diseases, it is important to have accurate estimation of the signals even if the measurement system is bit bulky. And for someone, who wants to stay fit but isn’t ready to give up comfort but is ready to compromise a little on accuracy. Both the needs can be catered by a little change in device design. For accuracy, it is important for the device to use both the sensor signals (ECG and PPG). But for restful measurement, using only PPG signal can approximately give the estimation. 


# Experimental Setup

A biomedical signal acquisition system is developed in order to monitor, process and communicate ECG (Electrocardiogram), the electric heart signal and PPG(Photoplethysmogram), the condition of arteries. The features from these signals are extracted in order to finally estimate diagnostic signals like BP and HR. 

The problem encountered can be divided into three phase, a) Amplification and Signal Extraction Unit, b) Sensor Network Unit, c) Signal reconstruction and Feature Estimation Unit.

# A.	Amplification and Signal Extraction Unit
In this unit, the sensor capturing unit is designed using Electrodes for ECG and pair of   LED and Photoreceptor for PPG signal. The captured signal is passed through signal amplification and conditioning circuit for better results. The resultant signal is passed to sensor unit for proper digitization and communication.
 

# B.	Sensor Network Unit
The sensor network node is the hardware  consists of four main components, i.e., sensors, processing unit, communication unit and power supply. Architecture of the sensor network is :

          

Here in the sensor unit, two sensors are used to gather the data from environment and then convert the corresponding analog signal to digital with ADC. The output digital data from ADC is fed to processing unit’s UART (Universal Asynchronous Receiver and Transmitter) for further transmission. In communication unit, transreceiver (FTDI - RS232)  is used to send and receive the data to and fro from the data processing unit.


# C.  Signal Reconstruction and Feature Estimation Unit
After the signal is communicated through the sensor node, it is received at the PC/ Mobile Phone for signal reconstruction. The signal is reconstructed from the digital incoming data. After which the clinically relevant information is extracted using data extraction algorithm and finally the output BP and HR is estimated.


The proposed signal acquisition system is made with low- cost and market available components. Thorough study was done in order to find the exact components for the minimum possible form factor. To obtain the best possible results, the probes are designed in a suitable way to not interrupt into the regular routine of the customer. ECG recordings are obtained by the non- polarized electrodes and PPG signal is extracted with the pair of reflective LED and Photoreceptor. 

