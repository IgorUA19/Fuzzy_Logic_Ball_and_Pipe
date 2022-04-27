# Fuzzy_Logic_Ball_and_Pipe

**Overview of Project** 
	
 This project starts with a physical ball and pipe system that is made up of a vertical cylinder with a ping pong ball controlled by a fan at the bottom with height measured by a time of flight sensor at the top. Our project objective is to balance the ball at a target altitude by using a controller of our groups choice. Our group decided on the Fuzzy Logic Controller, or the FLC. We have to correctly implement the FLC into the MATLAB codes to open serial communication with a ball and pipe system. 



**Theory of Control Method** 

The Fuzzy Logic Controller, FLC, is a control system that runs off the mathematical system known as "Fuzzy Logic". Fuzzy Logic is logic that can handle the concept of partial truth or "partially true". It accomplishes this by having the truth value of variables to be any real number between 0 and 1 and using a Human Based set of rules created by the designer to weigh out the "partial truths" and make a decision based on the rules.
In a system the Fuzzy Logic Controller, FLC would take an input called a "crisp input" into the Fuzzifer for Fuzzification, it then takes the converted fuzzy variables to the "Rules" this is where the partial truth portion is weighed out, inside the Inference. After the Inference, the fuzzy variables moved to the Defuzzifier for Defuzzification. Once they have been fully defuzzified they are outputted as crisp outputs.   



**Guide to use code**
1. Download zip of the files.
2. Extract the files
3. Open real_world file
4. In the command window type _fuzzy_ in the command window  (Figure 1 shows the output of this command)
![Screenshot (194)](https://user-images.githubusercontent.com/78972990/165425365-3369cddc-645a-407d-b10c-364a7170de8f.png)
6. Click: _file, import, import from file_ 
![Screenshot (195)](https://user-images.githubusercontent.com/78972990/165425559-921c7818-cae0-49a2-aba4-657fedc4191c.png)
7. Select: _Control2_
![Screenshot (196)](https://user-images.githubusercontent.com/78972990/165425696-0c698cb5-d2bb-47ff-aebf-6614c0b15938.png)
8. After click: _file, export, export to wrkspace_
![Screenshot (198)](https://user-images.githubusercontent.com/78972990/165425892-924577c3-786d-4d39-a104-f4e7f063c4df.png)
9. Your workspace should look like this
![Screenshot (197)](https://user-images.githubusercontent.com/78972990/165425954-7fec7aee-d495-47e8-add6-280f095fab02.png)
10. Now connect the device to a usb port and make sure the right COM port is specified
11. Run the code



