# CYB599_quantum_group1

The Bernstein.docx

del2.py were the old documents 


To run the Q# code and C# code together, you need to have the following software installed:

Visual Studio Code
.NET Core SDK
Quantum Development Kit (QDK)
Here are the steps to set up the environment:

Install Visual Studio Code from the official website.
Install .NET Core SDK from the official website.
Install the Quantum Development Kit by following the instructions on the Microsoft Quantum website. This includes installing the .NET Core runtime and the Q# language extension for Visual Studio Code.
Open Visual Studio Code, and create a new project by selecting "File > New Project".
Select "Console Application (.NET Core)" as the project type and provide a suitable name for the project.
In the terminal, navigate to the project directory and execute the following command: dotnet add package Microsoft.Quantum.Standard.
Add the Q# code to the project by creating a new file with the ".qs" extension and copying the code into it.
Add the C# code to the project by creating a new file with the ".cs" extension and copying the code into it.
Build and run the project by selecting "Debug > Start Debugging" from the menu.
After following these steps, you should be able to run the Bernstein-Vazirani algorithm and see the result printed in the console.
