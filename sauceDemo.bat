@echo off
cd "C:\Users\Administrator\PycharmProjects\sauceDemoProject\suits"
robot  -d  ../results/login/ login/loginPageTest.robot
robot  -d  ../results/cart/ cart/cartPageTest.robot
robot  -d  ../results/checkout/ checkout/checkoutPageTest.robot
pause

