# coinIdentifierVHDL

## Question

You are required to design a coin type detector of a vending machine that accepts three types of coins as the payment. Rs. 1, Rs. 2 and Rs. 5 are the three types of coins. Three light sensors are used in combination to detect the type of the coin. Figure 1 below shows how the light sensors (DX, DY and DZ) are positioned to identify the coins when the coins are rolling down the channel of the vending machine.

![coin](https://github.com/tharaka27/coinIdentifierVHDL/blob/main/Images/coin.PNG)

The timing diagram for the signals X, Y and Z generated from the three detectors DX, DY and DZ are given in Figure 2. The example timing diagram is the output when Rs. 1, Rs. 5 and Rs. 2 coins are respectively fed into the machine in that order. The detectors are positioned in such a way that only the waveforms X, Y, Z as shown are possible.

![coin](https://github.com/tharaka27/coinIdentifierVHDL/blob/main/Images/timing.PNG)

You may assume that a clock signal of suitably high frequency is used for the synchronous circuit.
In addition, the detectors are arranged in such a way that,
<ul>
 <li>Rising edge of Z is at least one clock cycle before Y.</li>
 <li>Rising edge of Y is at least one clock cycle before X.</li>
</ul>
<br>
When a coin is detected, one of the three outputs goes high shortly after the falling edge of Z for one clock period. You may assume that there are only three types of coins used in the vending machine and only one coin can roll down the channel at any one time.

## Explanation

![coin](https://github.com/tharaka27/coinIdentifierVHDL/blob/main/Images/analyzed.PNG)

![coin](https://github.com/tharaka27/coinIdentifierVHDL/blob/main/Images/tm.PNG)

![coin](https://github.com/tharaka27/coinIdentifierVHDL/blob/main/Images/tming.png)
