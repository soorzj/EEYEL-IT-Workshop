# Report Assignment

<details>
  <summary> Click to see the tex code</summary>


  ```tex
\documentclass[a4paper,12pt,oneside]{report}
\usepackage{epsfig}
\usepackage{longtable}
\usepackage{enumerate}
\usepackage{afterpage}
\usepackage{graphicx}
\usepackage{multirow}
\usepackage{amsmath, amsfonts} 
\usepackage[left=3.5cm,top=1.5cm,right=3cm,bottom=4cm]{geometry}
\usepackage{setspace}           
\usepackage{float}
\hyphenpenalty=5000
\tolerance=1000

\usepackage{lscape} % for landscape tables
\usepackage{cite}
\renewcommand{\baselinestretch}{1.7} 
\renewcommand{\bibname}{References}
\begin{document}
	
\thispagestyle{empty}
\oddsidemargin 1.48cm
\evensidemargin .5cm

\begin{center}
{\Large \bf APPLICATION OF UNMANNED AIRCRAFT
PID CONTROL SYSTEM FOR ROLL, PITCH
AND YAW STABILITY ON FIXED WINGS \\}
\vspace*{0.75cm}
{\large \textbf Seminar Report}\\
{\normalsize \it Submitted to The APJ Abdul Kalam Technological University\\
in partial fulfillment of the requirements
for activities }
\\of
{\em B.Tech.}
in\\
\vspace*{1.5mm} 
IT Workshop Asiignments\\
\vspace*{.75cm}
by
\vspace*{.25cm}
\\{\bf Sooraj Krishna S}
\\{\bf Uni.Reg.No. TVE25EL064}
\vspace*{0.75cm}
\vspace*{1.5cm}
\begin{figure}[hbt]
\centering
\centerline{\includegraphics[scale=0.9]{cet.png}}
\end{figure}
\vspace*{1.5cm}
\\{\footnotesize DEPARTMENT OF ELECTRICAL ENGINEERING}
\\{\small \bf COLLEGE OF ENGINEERING TRIVANDRUM}\\
{\small \bf KERALA\\
January 2026}
\end{center}
\newpage


\begin{center}  {\large \bf  Declaration}\vspace{0.1cm}\end{center}
I undersigned hereby declare that the seminar report \textbf{APPLICATION OF UNMANNED AIRCRAFT PID CONTROL SYSTEM FOR ROLL, PITCH AND YAW STABILITY ON FIXED WINGS}, submitted for partial fulfillment of the requirements for the award of degree of Bachelor of Technology of the APJ Abdul Kalam Technological University, Kerala is a bonafide work done by me under supervision of  IT Workshop Superwisors. This submission represents my ideas in my own words and where ideas or words of others have been included, I have adequately and accurately cited and referenced the original sources. I  also declare that I have adhered to ethics of academic honesty and integrity and have not misrepresented or fabricated any data or idea or fact or source in my submission. I understand that any violation of the above will be a cause for disciplinary action by the institute and/or the University and can also evoke penal action from the sources which have thus not been properly cited or from whom proper permission has not been obtained. This report has not been previously formed the basis for the award of any degree, diploma or similar title of any other University.
\vspace{1cm}
\\Place : Thiruvananthapuram
\\Date : 17/01/2026
\hspace{7cm} Sooraj Krishna S
\newpage

\thispagestyle{empty}

\vspace*{-0.3cm}
\begin{center}  {\large \bf  DEPARTMENT OF ELECTRICAL ENGINEERING}\vspace{0.1cm}\end{center}
\begin{center}  {\large \bf COLLEGE OF ENGINEERING TRIVANDRUM}\vspace{0.1cm}\end{center}
\begin{center}  {\large \bf THIRUVANANTHAPURAM - 16, }\vspace{0.1cm}\end{center}

\begin{figure}[hbt]
\centering
\centerline{\includegraphics[scale=0.9]{cet.png}}
\end{figure}


\begin{center}  \textbf{{\large \textit {Certificate}}}\vspace{.1cm}\end{center}

 \textit {This  is  to  certify  that  the report entitled \textbf {APPLICATION OF UNMANNED AIRCRAFT PID CONTROL SYSTEM FOR ROLL, PITCH AND YAW STABILITY ON FIXED WINGS } submitted  by \textbf{Sooraj Krishna S}, \textbf{Uni.Reg.No. TVE25EL064} to the \textbf{APJ Abdul Kalam Technological University} in partial fulfillment of the requirements  for  the  award  of the Degree of \textbf{B.Tech} for the subject IT Workshop, is a bonafide record of the project work carried out by him under our guidance  and  supervision. This  report in  any  form    has  not  been  submitted  to  any  other University or Institute for any purpose.}


\newpage
\thispagestyle{empty}
\begin{center}  {\Large \bf Acknowledgement}\end{center}
%%\begin{abstract}\vspace{1cm}
\noindent 
\par 
I have great pleasure in expressing my gratitude to \textbf{Dr. N. Mayadevi}, Professor, Department of Electrical Engineering, College of Engineering, Trivandrum, for her valuable guidance and suggestions to make this work a great success.
\par
I express my thanks to \textbf{Prof. Zubin J. B.}, Assistant Professor, Department of Electrical Engineering, College of Engineering, Trivandrum, for all necessary help extended to me in the fulfillment of this work.
\par
I would like to express my sincere thanks to my thesis guide \textbf{Dr. Harikumar R.}, Associate Professor, Department of Electrical Engineering, College of Engineering, Trivandrum, for all the necessary help, expert guidance in Power Systems, and encouragement extended to me in the fulfillment of this work.
\par
I also acknowledge my gratitude to other members of faculty in the Department of Electrical Engineering, my family, and my friends for their wholehearted cooperation and encouragement.
\par
\vspace*{1cm}
\hspace{9cm} \textbf{Sooraj Krishna S}

\newpage
\pagenumbering{roman}

\begin{abstract}\vspace{1cm}\addcontentsline{toc}{chapter}{Abstract} 
\noindent

Unmanned Aerial Vehicles (UAVs) are increasingly used for mapping and military applications. Fixed-wing UAVs require a runway for takeoff, while rotary-wing UAVs can take off vertically. UAV flight can be manual or autonomous, but both face stability challenges during maneuvers. This study implemented a Proportional–Integral–Derivative (PID) control system to maintain stability in roll, pitch, and yaw axes. The results demonstrate that the PID controller effectively stabilizes fixed-wing UAVs during autonomous flight, providing reliable control under varying conditions.


\end{abstract}
\newpage
\tableofcontents 	\cleardoublepage%\newpage 
\addcontentsline{toc}{chapter}{List of Figures} 
\listoffigures 	\cleardoublepage %\newpage 
\addcontentsline{toc}{chapter}{List of Tables}
\listoftables 	\cleardoublepage%\newpage
\addcontentsline{toc}{chapter}{List of Symbols}
\newpage
{\Huge \bf List of Symbols}
\noindent
%Add symbols used here...

%*************************************************************************************************

\chapter{Introduction}
\pagenumbering{arabic}
\label{chap:intro}
\section{UAV}
Unmanned Aerial Vehicle (UAV) is an unmanned aircraft currently undergoing many developments in the non- military or military field, which is widely used to assist human work in mapping missions of a region until it is used as a military weapon. UAVs have two types of wing types: Fixed-wing UAV, a vehicle that requires an airstrip to perform a take-off, and Rotary-wing UAV, which has rotating wings for performing vertical take-off. The flying mode on the UAV itself can be controlled in 2 ways: manually and automatic flying controlled by a system embedded in the aircraft. Some problems or disturbances occur when the aircraft is maneuvering in the air; one is the loss of stability. The study proposes a PID method overcoming the loss of stability on the flying aircraft. The method is a combination of 3 controls: Proportional Control, Integral Control, and Derivative Control. The result shows that the PID method has been successfully applied to fixed-wing vehicles and can control the stability of the roll, pitch, and yaw angles when flying independently. .
\section{Summary}
Unmanned Aerial Vehicles (UAVs) serve critical roles in mapping and military operations, operating in either fixed-wing (airstrip-dependent) or rotary-wing (vertical takeoff) configurations. Flight is managed through manual control or automated embedded systems, though both face stability challenges during maneuvers. To combat this, this study implements a PID (Proportional-Integral-Derivative) control method to provide real-time stability corrections.

Core Highlights:
Stability Solution: Integrates Proportional, Integral, and Derivative control actions to counteract environmental and maneuvering disturbances.

Implementation: Specifically optimized for fixed-wing UAV platforms to handle stability during independent flight.

Control Output: Successfully regulates the three critical rotational axes: Roll, Pitch, and Yaw.
\newpage


\chapter{PID Controller}
\pagenumbering{arabic}
\label{chap:pid}
\section{UAVs and PID}
The rapid development of aerospace technology has led to significant advances in Unmanned Aerial Vehicles (UAVs). UAVs are crewless aircraft that can be controlled either manually by a ground pilot using remote control or autonomously through an onboard system. Pilots must understand the aircraft’s characteristics, including size, shape, model, and flight behavior. UAVs are generally classified into rotary-wing and fixed-wing types. Rotary-wing UAVs use propellers for lift and control and do not require a runway , while fixed-wing UAVs use fixed wings and typically require a runway.

Stability is a critical requirement for fixed-wing UAVs, as they are susceptible to disturbances caused by weather conditions and pilot input. While manual control can maintain stability, it becomes less effective during long-distance or high-altitude missions. Therefore, an autonomous control system is needed to maintain flight stability. One commonly used method is the Proportional-Integral-Derivative (PID) control system, which minimizes error by continuously providing feedback to achieve a desired setpoint. For this, this study implemented a PID control system on a fixed-wing UAV to maintain flight stability.




\chapter{MECHANISM OF MOTION ON THE UAV}
\label{chap:mechanism}
\section{NATIONAL AERONAUTICS AND SPACE ADMINISTRATION, 2010) }

The details are given in Table \ref{tab:table1} 

\begin{table}[h!]
	\begin{center}
		\caption{MECHANISM OF MOTION ON THE UAV (NATIONAL AERONAUTICS AND SPACE ADMINISTRATION, 2010)}
		\label{tab:table1}
		\begin{tabular}{|l|c|c|c|} 
    \hline
    \textbf{Corner} & \textbf{Control Surface} & \textbf{UAV Movement} & \textbf{Axis} \\ \hline
    Pitch & Elevator & Nose Up / Down & Lateral \\ \hline
    Roll & Aileron & Wings Up / Down & Longitudinal \\ \hline
    Yaw & Rudder & Nose Left / Right & Vertical \\ \hline
\end{tabular}
	\end{center}
\end{table}



\chapter{PID Controller Algorithm}
\label{chap:Algorithm}
\section{Algorithm}
The schematic of PID Controller for a UAV is shown in Figure \ref{fig:pid_alogirthm}
	\begin{center}
		\begin{figure}[hbt]
			\centering
			\centerline{\includegraphics[scale=1.2]{pid.png}}
			\caption{Block Diagram of PID Control System on UAV}
			\label{fig:pid_alogirthm}
		\end{figure}
	\end{center}
\section{Summary}
\ref{fig:pid_alogirthm} illustrates the PID control process, where the error was calculated as the difference between the actual value and the predetermined setpoint. This error was processed by the proportional, integral, and derivative controllers, and the resulting output was added to a predefined PWM base value to drive the servo motor actuator. The UAV then responded according to commands from the microcontroller. As a closed-loop system, PID control continuously received feedback from the IMU sensor in the form of actual angle measurements, allowing the system to correct errors until stability was achieved.

The proportional control output was directly proportional to the error, determined by multiplying the error by the proportional gain (Kp). The value of Kp significantly affected system performance: a small Kp resulted in slow response, while an excessively large Kp caused instability and oscillations. Therefore, proper tuning of Kp was essential to achieve stable system behavior.
\newpage

\chapter{Equations of the PID Controller}
If $e(t)$ is the error function wrt time,
\section{Propotional $K_p$}
\begin{equation}
P=K_p e(t)
\end{equation}
\section{Integral $K_i$}
\begin{equation}
I = K_i \int_{0}^{t} e(t)dt
\end{equation}
\section{Differential $K_d$}
\begin{equation}
D = K_d \frac{de(t)}{dt}
\end{equation}

\newpage
\chapter{Test results}
\section{UAV Specifications}
The dimensions of the UAV Tested have a wingspan of 1447 mm and a weight without a battery of 493g. The detailed configuration of the motion system on this model is shown in \ref{fig:uav}.
\begin{figure}[h]
    \centering
    \includegraphics[width=0.5\linewidth]{uav.png}
    \caption{The UAV used in tesing}
    \label{fig:uav}
\end{figure}

The mechanism of its movement in space is given in Chapter \ref{chap:mechanism}
\section{Control System Results}
The Test Results are as follows:
\begin{table}[h!]
\centering
\caption{PID Control Performance for UAV Motion System}
\label{tab:pid_results}
\begin{tabular}{|c|l|c|}
\hline
\textbf{Motion Axis} & \textbf{Performance Parameter} & \textbf{Value} \\ \hline
\multirow{4}{*}{Pitch} 
 & Rise Time (s)            & 0.9  \\ \cline{2-3}
 & Settling Time (s)        & 2.0  \\ \cline{2-3}
 & Steady-State Error (°)   & 0.60 \\ \cline{2-3}
 & Peak Error (°)           & -25.99 \\ \hline
\multirow{4}{*}{Roll}  
 & Rise Time (s)            & 0.5  \\ \cline{2-3}
 & Settling Time (s)        & 1.5  \\ \cline{2-3}
 & Steady-State Error (°)   & 0.48 \\ \cline{2-3}
 & Peak Error (°)           & -22.69 \\ \hline
\multirow{4}{*}{Yaw}   
 & Rise Time (s)            & 0.48 \\ \cline{2-3}
 & Settling Time (s)        & 4.65 \\ \cline{2-3}
 & Steady-State Error (°)   & 3.11 \\ \cline{2-3}
 & Peak Error (°)           & -14.01 \\ \hline
\end{tabular}
\end{table}
\section{Roll Angle Test Results}
The roll test results were given a peak disturbance of -17.52o and resulted in a steady-state error value of -1.00782, a rise time of 0.97 for the roll test was 0.1s, the setting time was 1.76, and the time required was 0.4s. The overshoot value was 4.65. Tuning results that produce Kp roll = 0.01, Ki roll = 1.3, and Kd roll = 0.01.
\begin{figure}[h!]
    \centering
    \includegraphics[width=0.75\linewidth]{roll.png}
    \caption{Roll Angle Test}
    \label{fig:roll}
\end{figure}
\section{Pitch Angle Test Results}
The results carried out on the pitch test were given a peak disturbance of -21.93o and resulted in a steady-state error value of -1.8, a rise time of 0.19, the time required for the pitch test was 3.3s, the setting time was 2.47, and the time required was 0.3s. The overshoot value was 3o and Tuning results that produce Kp pitch = 0.3, Ki pitch = 0.01, Kd pitch = 0.02
\begin{figure}[h!]
    \centering
    \includegraphics[width=0.75\linewidth]{pitch.png}
    \caption{Pitch Angle Test}
    \label{fig:pitch}
\end{figure}
\section{Yaw Angle Test Results}
The results of the yaw test were given a peak disturbance of - 14.01o and resulted in a steady-state error value of -3.1, a rise time of 0.48, the time required for the yaw test was 0.6s, the settling time was 4.65, and the time required was 4.5s. The overshoot value was 3o. Tuning results that produce Kp yaw
= 1.3, Ki yaw = 0.01, Kd yaw = 0.01
\begin{figure}[h!]
    \centering
    \includegraphics[width=0.75\linewidth]{yaw.png}
    \caption{Yaw Angle Test}
    \label{fig:yaw}
\end{figure}
\newpage
\chapter{Conclusions}

This report demonstrated the use of a PID control system to stabilize roll, pitch, and yaw in a fixed-wing UAV. The study discussed the fundamental principles of PID control and explained the role of proportional, integral, and derivative actions in minimizing error and enhancing system response. The mechanisms of UAV motion along the roll, pitch, and yaw axes were described, along with the corresponding control surfaces used to achieve attitude control. A closed-loop PID control algorithm was implemented using feedback from IMU sensors, and control commands were applied to servo actuators through PWM signals. Experimental testing was conducted on a fixed-wing UAV to evaluate the effectiveness of the proposed control system. Experimental results showed low steady-state errors and acceptable rise and settling times for all axes. The PID controller effectively improved UAV stability and provides a foundation for future enhancements, such as adaptive or intelligent control methods.


\bibliography{references} %references is another file with extension ".bib" ie references.bib where you have all the references in the appropriate format
\bibliographystyle{IEEEtran}
\nocite{*}
\end{document}
