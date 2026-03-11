# Conference Paper
<details>
  <summary> Click to see the tex code</summary>


  ```tex
\documentclass[conference]{IEEEtran}
\IEEEoverridecommandlockouts

% ===================== PACKAGES =====================
\usepackage{cite}
\usepackage{amsmath,amssymb,amsfonts}
\usepackage{algorithmic}
\usepackage{graphicx}
\usepackage{textcomp}
\usepackage{xcolor}
\usepackage{float}

\def\BibTeX{{\rm B\kern-.05em{\sc i\kern-.025em b}\kern-.08em
    T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}

% ===================== DOCUMENT =====================
\begin{document}

\title{PID-Based Stability Control of Roll, Pitch, and Yaw for Fixed-Wing Unmanned Aerial Vehicles}

\author{
\IEEEauthorblockN{Sooraj Krishna S}
\IEEEauthorblockA{
\textit{Department of Electrical and Computer Engineering} \\
\textit{College of Engineering Trivandrum} \\
Kerala, India \\
elu250666@cet.ac.in
}
\and
\IEEEauthorblockN{Try Susanto, Muhammad Bayu Setiawan, \\ Akhmad Jayadi, Farli Rossi, \\ Afrizal Hamdhi, and Jaka Persada Sembiring}
    \IEEEauthorblockA{\textit{Faculty of Engineering and Computer
Science} \\
    \textit{Universitas Teknokrat Indonesia}\\
    Lampung, Indonesia \\
}
}

\maketitle

% ===================== ABSTRACT =====================
\begin{abstract}
Unmanned Aerial Vehicles (UAVs) are increasingly utilized in civilian and military applications requiring autonomous flight capability. Fixed-wing UAVs, while efficient for long-range missions, are highly susceptible to instability caused by environmental disturbances and control limitations. This paper presents the implementation of a Proportional-Integral-Derivative (PID) control system to maintain roll, pitch, and yaw stability of a fixed-wing UAV. The proposed control system uses feedback from an Inertial Measurement Unit (IMU) to continuously minimize angular deviation from predefined setpoints. Experimental flight tests demonstrate that the implemented PID controller effectively stabilizes the aircraft under external disturbances, achieving acceptable rise time, settling time, overshoot, and steady-state error characteristics for all three rotational axes.
\end{abstract}

\begin{IEEEkeywords}
Unmanned Aerial Vehicle, Fixed-Wing UAV, PID Control, Flight Stability, Roll Pitch Yaw
\end{IEEEkeywords}

% ===================== INTRODUCTION =====================
\section{Introduction}
Recent advancements in aerospace and embedded systems have significantly accelerated the development of Unmanned Aerial Vehicles (UAVs). UAVs are aircraft that operate without an onboard human pilot and can be controlled either manually through remote operation or autonomously using onboard control algorithms. These systems are widely employed in surveillance, mapping, agriculture, disaster monitoring, and defense applications.

UAVs can be broadly classified into rotary-wing and fixed-wing configurations. Rotary-wing UAVs enable vertical takeoff and landing but suffer from limited endurance. In contrast, fixed-wing UAVs provide superior aerodynamic efficiency and longer flight duration, making them suitable for long-range missions. However, fixed-wing UAVs are more sensitive to disturbances such as wind gusts and control surface inaccuracies, which may lead to instability during flight.

Maintaining aircraft stability is a critical requirement, especially during autonomous operation where real-time pilot intervention is unavailable. To address this challenge, a closed-loop control system capable of continuously correcting flight deviations is required. Among various control strategies, the Proportional-Integral-Derivative (PID) controller remains widely adopted due to its simplicity, robustness, and effectiveness in dynamic systems. This paper focuses on implementing a PID-based stabilization system for roll, pitch, and yaw control of a fixed-wing UAV.

% ===================== THEORETICAL BACKGROUND =====================
\section{Theoretical Background}

\subsection{Unmanned Aerial Vehicle Dynamics}
A UAV operates based on aerodynamic principles that govern lift, drag, thrust, and weight. The rotational motion of the aircraft is defined along three primary axes: roll, pitch, and yaw. Control of these axes is achieved using control surfaces such as ailerons, elevator, and rudder.

\subsection{PID Control Theory}
The PID controller combines three control actions: proportional, integral, and derivative. Each component contributes uniquely to the overall system response.

The general PID control equation is expressed as:
\begin{equation}
u(t) = K_p e(t) + K_i \int_{0}^{t} e(t) dt + K_d \frac{de(t)}{dt}
\end{equation}

where $e(t)$ represents the error between the desired setpoint and the measured output, while $K_p$, $K_i$, and $K_d$ denote the proportional, integral, and derivative gains respectively.

\subsection{System Performance Parameters}
The performance of the control system is evaluated using standard time-domain specifications:
\begin{itemize}
\item Rise Time
\item Peak Time
\item Maximum Overshoot
\item Settling Time
\item Steady-State Error
\end{itemize}

These parameters provide insight into the responsiveness and stability of the controlled system.

% ===================== RESEARCH METHODOLOGY =====================
\section{Research Methodology}

\subsection{UAV Platform Description}
The fixed-wing UAV used in this study has a wingspan of 1447 mm and a weight of 493 g excluding the battery. The aircraft utilizes conventional control surfaces to achieve motion along the roll, pitch, and yaw axes.

\begin{figure}[H]   % !t forces figure to top of column
    \centering
    \includegraphics[width=0.45\textwidth]{img1.png}
    \caption{Configuration of the motion system on the UAV model}
    \label{fig:UAV_model}
\end{figure}

\subsection{Control Surface Mechanism}
\begin{table}[htbp]
\caption{UAV Motion Control Mechanism}
\centering
\begin{tabular}{|c|c|c|}
\hline
\textbf{Axis} & \textbf{Control Surface} & \textbf{Motion Description} \\
\hline
Pitch & Elevator & Nose Up / Down \\
Roll & Aileron & Wing Tilt \\
Yaw & Rudder & Nose Left / Right \\
\hline
\end{tabular}
\label{tab:control_surface}
\end{table}

\subsection{Electronic System Architecture}
The UAV electronic system consists of an IMU sensor for attitude estimation, a microcontroller for processing, servo motors as actuators, and a telemetry module for data transmission.

\begin{figure}[H]   % !t forces figure to top of column
    \centering
    \includegraphics[width=0.45\textwidth]{img2.png}
    \caption{Electronic block diagram of the UAV system}
    \label{fig:Electronic}
\end{figure}

\subsection{PID Control System Design}
The PID controller operates in a closed-loop configuration where the measured angular orientation from the IMU is continuously compared with the reference setpoint. The resulting error is processed by the PID algorithm to generate corrective servo commands.
\begin{figure}[H]   % !t forces figure to top of column
    \centering
    \includegraphics[width=0.45\textwidth]{img3.png}
    \caption{PID control system block diagram}
    \label{fig:pid_block}
\end{figure}


% ===================== RESULTS AND DISCUSSION =====================
\section{Results and Discussion}

\subsection{Control System Performance}
The control system was evaluated by introducing disturbances during flight and observing the system response.

\begin{table}[htbp]
\caption{PID Control Performance Summary}
\centering
\begin{tabular}{|c|c|c|c|c|}
\hline
\textbf{Axis} & \textbf{Rise Time (s)} & \textbf{Settling Time (s)} & \textbf{Overshoot} & \textbf{Steady-State Error} \\
\hline
Roll & 0.5 & 1.5 & 4.65\% & 0.48$^\circ$ \\
Pitch & 0.9 & 2.0 & 3.0\% & 0.60$^\circ$ \\
Yaw & 0.48 & 4.65 & 3.0\% & 3.11$^\circ$ \\
\hline
\end{tabular}
\label{tab:results}
\end{table}

\subsection{Roll, Pitch, and Yaw Response}
Each axis was tested independently by applying angular disturbances and observing recovery behavior.

\begin{figure}[H]   % !t forces figure to top of column
    \centering
    \includegraphics[width=0.45\textwidth]{roll.png}
    \caption{Roll angle response}
    \label{fig:roll}
\end{figure}
\begin{figure}[H]   % !t forces figure to top of column
    \centering
    \includegraphics[width=0.45\textwidth]{pitch.png}
    \caption{Pitch angle response}
    \label{fig:pitch}
\end{figure}
\begin{figure}[H]   % !t forces figure to top of column
    \centering
    \includegraphics[width=0.45\textwidth]{yaw.png}
    \caption{Yaw angle response}
    \label{fig:yaw}
\end{figure}

% ===================== CONCLUSION =====================
\section{Conclusion}
This study successfully demonstrates the implementation of a PID-based control system for stabilizing a fixed-wing UAV. The proposed controller effectively maintains roll, pitch, and yaw stability under external disturbances. Experimental results indicate satisfactory transient and steady-state performance across all axes, validating the suitability of PID control for autonomous fixed-wing UAV applications.

% ===================== ACKNOWLEDGMENT =====================
\section*{Acknowledgment}
The authors would like to thank the institution and laboratory facilities that supported this research work.
The authors would also like to sincerely thank Universitas Teknokrat Indonesia (UTI) for providing funds to support in completing this study. 

% ===================== REFERENCES =====================
\begin{thebibliography}{00}

\bibitem{b1}
Widyantara, D. B., Sumiharto, R., \& Wibowo, S. B. Purwarupa Sistem Kendali Kestabilan Pesawat Tanpa Awak Sayap Tetap Menggunakan Robust PID. IJEIS (Indonesian Journal of Electronics and Instrumentation Systems), 6(2), 2016, 139. https://doi.org/10.22146/ijeis.15260.

\bibitem{b2}
Deswara, H., \& Djamari, F. X. Analisa Performa Propulsi Roket Solid Propellant Untuk Peluncur Pesawat Uav ( Unmanned Aerial Vehicle ). 2015, 5(3), 42–49.

\bibitem{b3}
Irmawan, E., Mulyono, P., Studi, P., Dirgantara, T., Tinggi, S., \& Kedirgantaraan, T. Kendali Fuzzy-Pid Pada Sikap Longitudinal Dan Sikap, 2018. 2(2), 1–7.

\bibitem{b4}
Prakoso, T., Setiawan, B., Kurnia, H., Jurusan, S., Elektronika, T., Elektro, T., \& Negeri, P. Sistem Kestabilan Sudut Pitch Pada Uav. 2016. 3(2), 76–84.

\bibitem{b5}
Hartono, B. Penerapan Kendali Terbang PID pada Fully Autonomous Quadcopter. Penerapan Kendali Terbang PID Pada Fully Autonomous Quadcopter, 2017, 1–7.

\bibitem{b6}
Arindya, R. Penalaan Kendali PID untuk pengendali proses, 2017,. Jurnal Teknologi Elektro, 8(2), 109.

\bibitem{b7}
Zaky, M., Minggu, D., \& Sulistiyanto, G. Penerapan PID (Proportional Integral Derivative) Untuk Mengontrol Mode Manual Drone Hexacopter, 2020.

\end{thebibliography}

\end{document}
