@echo off
call activate mydata2
call conda info --envs
pip install -U scikit-learn
pip install -r requirements.txt
call conda install -c conda-forge pydotplus
if  errorlevel 1 goto ERROR
echo Success.
:ERROR
echo Failed.
call cmd