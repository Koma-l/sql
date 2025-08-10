SQL> SET LINES 100 PAGES 100
SQL> SELECT*
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

14 rows selected.

SQL> --WAQTD NAME OF THE EMPLOEE ALONG WITH THEIR ANNUAL SALARY.
SQL> SELECT ENAME,SAL,SAL*12 AS ANNUAL_SALARY
  2  FROM EMP;

ENAME             SAL ANNUAL_SALARY                                                                 
---------- ---------- -------------                                                                 
SMITH             800          9600                                                                 
ALLEN            1600         19200                                                                 
WARD             1250         15000                                                                 
JONES            2975         35700                                                                 
MARTIN           1250         15000                                                                 
BLAKE            2850         34200                                                                 
CLARK            2450         29400                                                                 
SCOTT            3000         36000                                                                 
KING             5000         60000                                                                 
TURNER           1500         18000                                                                 
ADAMS            1100         13200                                                                 
JAMES             950         11400                                                                 
FORD             3000         36000                                                                 
MILLER           1300         15600                                                                 

14 rows selected.

SQL> SELECT ENAME,SAL*12 AS ANNUAL SALARY
  2  FROM EMP;
SELECT ENAME,SAL*12 AS ANNUAL SALARY
                              *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT ENAME,SAL*12 ANNUAL_OF_SALARY
  2  FROM EMP;

ENAME      ANNUAL_OF_SALARY                                                                         
---------- ----------------                                                                         
SMITH                  9600                                                                         
ALLEN                 19200                                                                         
WARD                  15000                                                                         
JONES                 35700                                                                         
MARTIN                15000                                                                         
BLAKE                 34200                                                                         
CLARK                 29400                                                                         
SCOTT                 36000                                                                         
KING                  60000                                                                         
TURNER                18000                                                                         
ADAMS                 13200                                                                         
JAMES                 11400                                                                         
FORD                  36000                                                                         
MILLER                15600                                                                         

14 rows selected.

SQL> SELECT ENAME,SAL*12 "ANNUAL SALARY"
  2  FROM EMP;

ENAME      ANNUAL SALARY                                                                            
---------- -------------                                                                            
SMITH               9600                                                                            
ALLEN              19200                                                                            
WARD               15000                                                                            
JONES              35700                                                                            
MARTIN             15000                                                                            
BLAKE              34200                                                                            
CLARK              29400                                                                            
SCOTT              36000                                                                            
KING               60000                                                                            
TURNER             18000                                                                            
ADAMS              13200                                                                            
JAMES              11400                                                                            
FORD               36000                                                                            
MILLER             15600                                                                            

14 rows selected.

SQL> SELECT ENAME,SAL*12 "ANNUAL_of_SALRY"
  2  FROM EMP;

ENAME      ANNUAL_of_SALRY                                                                          
---------- ---------------                                                                          
SMITH                 9600                                                                          
ALLEN                19200                                                                          
WARD                 15000                                                                          
JONES                35700                                                                          
MARTIN               15000                                                                          
BLAKE                34200                                                                          
CLARK                29400                                                                          
SCOTT                36000                                                                          
KING                 60000                                                                          
TURNER               18000                                                                          
ADAMS                13200                                                                          
JAMES                11400                                                                          
FORD                 36000                                                                          
MILLER               15600                                                                          

14 rows selected.

SQL> SELECT ENAME,SAL*12 AS "ANNUAL_of_SALARY"
  2  FROM EMP;

ENAME      ANNUAL_of_SALARY                                                                         
---------- ----------------                                                                         
SMITH                  9600                                                                         
ALLEN                 19200                                                                         
WARD                  15000                                                                         
JONES                 35700                                                                         
MARTIN                15000                                                                         
BLAKE                 34200                                                                         
CLARK                 29400                                                                         
SCOTT                 36000                                                                         
KING                  60000                                                                         
TURNER                18000                                                                         
ADAMS                 13200                                                                         
JAMES                 11400                                                                         
FORD                  36000                                                                         
MILLER                15600                                                                         

14 rows selected.

SQL> SELECT ENAME,SAL*12 ANNUAL_of_SALARY
  2  FROM EMP;

ENAME      ANNUAL_OF_SALARY                                                                         
---------- ----------------                                                                         
SMITH                  9600                                                                         
ALLEN                 19200                                                                         
WARD                  15000                                                                         
JONES                 35700                                                                         
MARTIN                15000                                                                         
BLAKE                 34200                                                                         
CLARK                 29400                                                                         
SCOTT                 36000                                                                         
KING                  60000                                                                         
TURNER                18000                                                                         
ADAMS                 13200                                                                         
JAMES                 11400                                                                         
FORD                  36000                                                                         
MILLER                15600                                                                         

14 rows selected.

SQL> --WAQTD ENAME AND JOB FOR ALL THE EMPLOYEE WITH THEIR HALF TERM SALARY.
SQL> SELECT ENAME,JOB,SAL/2 AS HALF_TERM_SALARY
  2  FROM EMP;

ENAME      JOB       HALF_TERM_SALARY                                                               
---------- --------- ----------------                                                               
SMITH      CLERK                  400                                                               
ALLEN      SALESMAN               800                                                               
WARD       SALESMAN               625                                                               
JONES      MANAGER             1487.5                                                               
MARTIN     SALESMAN               625                                                               
BLAKE      MANAGER               1425                                                               
CLARK      MANAGER               1225                                                               
SCOTT      ANALYST               1500                                                               
KING       PRESIDENT             2500                                                               
TURNER     SALESMAN               750                                                               
ADAMS      CLERK                  550                                                               
JAMES      CLERK                  475                                                               
FORD       ANALYST               1500                                                               
MILLER     CLERK                  650                                                               

14 rows selected.

SQL> --WAQTD ALL THE DETAILS OF THE EMPLOYEE ALONG WITH ANNUAL BONUS OF 2000.
SQL> SELECT EMP.*,SAL,SAL*12 AS ANNUAL_SALARY,(SAL*12)+2000 AS ANNUAL_BONOUS_OF_2000
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO        SAL    
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------    
ANNUAL_SALARY ANNUAL_BONOUS_OF_2000                                                                 
------------- ---------------------                                                                 
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        800    
         9600                 11600                                                                 
                                                                                                    
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       1600    
        19200                 21200                                                                 
                                                                                                    
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       1250    
        15000                 17000                                                                 
                                                                                                    
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       2975    
        35700                 37700                                                                 
                                                                                                    
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       1250    
        15000                 17000                                                                 
                                                                                                    
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       2850    
        34200                 36200                                                                 
                                                                                                    
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       2450    
        29400                 31400                                                                 
                                                                                                    
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       3000    
        36000                 38000                                                                 
                                                                                                    
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       5000    
        60000                 62000                                                                 
                                                                                                    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       1500    
        18000                 20000                                                                 
                                                                                                    
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       1100    
        13200                 15200                                                                 
                                                                                                    
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        950    
        11400                 13400                                                                 
                                                                                                    
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       3000    
        36000                 38000                                                                 
                                                                                                    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       1300    
        15600                 17600                                                                 
                                                                                                    

14 rows selected.

SQL> SET LINES 100 PAGES 100
SQL> SELECT EMP.*,SAL,SAL*12 AS ANNUAL_SALARY,(SAL*12)+2000 AS ANNUAL_BONOUS_OF_2000
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO        SAL    
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------    
ANNUAL_SALARY ANNUAL_BONOUS_OF_2000                                                                 
------------- ---------------------                                                                 
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20        800    
         9600                 11600                                                                 
                                                                                                    
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30       1600    
        19200                 21200                                                                 
                                                                                                    
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30       1250    
        15000                 17000                                                                 
                                                                                                    
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20       2975    
        35700                 37700                                                                 
                                                                                                    
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30       1250    
        15000                 17000                                                                 
                                                                                                    
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30       2850    
        34200                 36200                                                                 
                                                                                                    
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10       2450    
        29400                 31400                                                                 
                                                                                                    
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20       3000    
        36000                 38000                                                                 
                                                                                                    
      7839 KING       PRESIDENT            17-NOV-81       5000                    10       5000    
        60000                 62000                                                                 
                                                                                                    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30       1500    
        18000                 20000                                                                 
                                                                                                    
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20       1100    
        13200                 15200                                                                 
                                                                                                    
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30        950    
        11400                 13400                                                                 
                                                                                                    
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20       3000    
        36000                 38000                                                                 
                                                                                                    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10       1300    
        15600                 17600                                                                 
                                                                                                    

14 rows selected.

SQL> --WAQTD NAME AND SALARY WITH A HIKE OF 10%.
SQL> SELECT ENAME,SAL,SAL+SAL*10/100 AS HIKE_OF_10PER
  2  FROM EMP;

ENAME             SAL HIKE_OF_10PER                                                                 
---------- ---------- -------------                                                                 
SMITH             800           880                                                                 
ALLEN            1600          1760                                                                 
WARD             1250          1375                                                                 
JONES            2975        3272.5                                                                 
MARTIN           1250          1375                                                                 
BLAKE            2850          3135                                                                 
CLARK            2450          2695                                                                 
SCOTT            3000          3300                                                                 
KING             5000          5500                                                                 
TURNER           1500          1650                                                                 
ADAMS            1100          1210                                                                 
JAMES             950          1045                                                                 
FORD             3000          3300                                                                 
MILLER           1300          1430                                                                 

14 rows selected.

SQL> --WAQTD NAME AND SALARY WITH DEDUCTION OF 25%.
SQL> SELECT ENAME,SAL,SAL-(SAL*25/100)
  2  FROM EMP;

ENAME             SAL SAL-(SAL*25/100)                                                              
---------- ---------- ----------------                                                              
SMITH             800              600                                                              
ALLEN            1600             1200                                                              
WARD             1250            937.5                                                              
JONES            2975          2231.25                                                              
MARTIN           1250            937.5                                                              
BLAKE            2850           2137.5                                                              
CLARK            2450           1837.5                                                              
SCOTT            3000             2250                                                              
KING             5000             3750                                                              
TURNER           1500             1125                                                              
ADAMS            1100              825                                                              
JAMES             950            712.5                                                              
FORD             3000             2250                                                              
MILLER           1300              975                                                              

14 rows selected.

SQL> WAQTD NAME AND SALARY WITH MONTHLY HIKE OF 50.
SP2-0734: unknown command beginning "WAQTD NAME..." - rest of line ignored.
SQL> 
SQL> --WAQTD NAME AND SALARY WITH MONTLHY HIKE OF 50.
SQL> SELECT ENAME,SAL,SAL+50 AS MONTHELY_HIKE_OF_50
  2  FROM EMP;

ENAME             SAL MONTHELY_HIKE_OF_50                                                           
---------- ---------- -------------------                                                           
SMITH             800                 850                                                           
ALLEN            1600                1650                                                           
WARD             1250                1300                                                           
JONES            2975                3025                                                           
MARTIN           1250                1300                                                           
BLAKE            2850                2900                                                           
CLARK            2450                2500                                                           
SCOTT            3000                3050                                                           
KING             5000                5050                                                           
TURNER           1500                1550                                                           
ADAMS            1100                1150                                                           
JAMES             950                1000                                                           
FORD             3000                3050                                                           
MILLER           1300                1350                                                           

14 rows selected.

SQL> --WAQTD NAME AND ANNUAL SALARY WITH DEDUCTION OF 10%.
SQL> SELECT ENAME,(SAL*12)-SAL*10/100
  2  FROM EMP;

ENAME      (SAL*12)-SAL*10/100                                                                      
---------- -------------------                                                                      
SMITH                     9520                                                                      
ALLEN                    19040                                                                      
WARD                     14875                                                                      
JONES                  35402.5                                                                      
MARTIN                   14875                                                                      
BLAKE                    33915                                                                      
CLARK                    29155                                                                      
SCOTT                    35700                                                                      
KING                     59500                                                                      
TURNER                   17850                                                                      
ADAMS                    13090                                                                      
JAMES                    11305                                                                      
FORD                     35700                                                                      
MILLER                   15470                                                                      

14 rows selected.

SQL> --WAQTD TOTAL SALARY GIVEN TO EACH EMPLOYEE.(TOTAL SALARY MEANS=SAL+COMM)
SQL> SELECT SAL,COMM,SAL+COMM
  2  FROM EMP;

       SAL       COMM   SAL+COMM                                                                    
---------- ---------- ----------                                                                    
       800                                                                                          
      1600        300       1900                                                                    
      1250        500       1750                                                                    
      2975                                                                                          
      1250       1400       2650                                                                    
      2850                                                                                          
      2450                                                                                          
      3000                                                                                          
      5000                                                                                          
      1500          0       1500                                                                    
      1100                                                                                          
       950                                                                                          
      3000                                                                                          
      1300                                                                                          

14 rows selected.

SQL> --WAQTD DETALIS OF ALL THE EMPLOYEES ALONG WITH ANNUAL SALARY.
SQL> SET LINES 100 PAGES 100
SQL> SELECT EMP.*,SAL*12 AS ANNUAL_OF_SALARY
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
ANNUAL_OF_SALARY                                                                                    
----------------                                                                                    
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
            9600                                                                                    
                                                                                                    
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
           19200                                                                                    
                                                                                                    
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
           15000                                                                                    
                                                                                                    
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
           35700                                                                                    
                                                                                                    
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
           15000                                                                                    
                                                                                                    
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
           34200                                                                                    
                                                                                                    
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
           29400                                                                                    
                                                                                                    
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
           36000                                                                                    
                                                                                                    
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
           60000                                                                                    
                                                                                                    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
           18000                                                                                    
                                                                                                    
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
           13200                                                                                    
                                                                                                    
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
           11400                                                                                    
                                                                                                    
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
           36000                                                                                    
                                                                                                    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               
           15600                                                                                    
                                                                                                    

14 rows selected.

SQL> SELECT EMP.*,SAL*12
  2  FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO     SAL*12    
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------    
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20       9600    
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30      19200    
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30      15000    
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20      35700    
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30      15000    
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30      34200    
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10      29400    
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20      36000    
      7839 KING       PRESIDENT            17-NOV-81       5000                    10      60000    
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30      18000    
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20      13200    
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30      11400    
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20      36000    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600    

14 rows selected.

SQL> --WAQTD NAME AND DESIGNATION ALONG WITH 100 PENALTY IN SALARY.
SQL> SELECT ENAME,JOB,SAL-100  PENALTY
  2  FROM EMP;

ENAME      JOB          PENALTY                                                                     
---------- --------- ----------                                                                     
SMITH      CLERK            700                                                                     
ALLEN      SALESMAN        1500                                                                     
WARD       SALESMAN        1150                                                                     
JONES      MANAGER         2875                                                                     
MARTIN     SALESMAN        1150                                                                     
BLAKE      MANAGER         2750                                                                     
CLARK      MANAGER         2350                                                                     
SCOTT      ANALYST         2900                                                                     
KING       PRESIDENT       4900                                                                     
TURNER     SALESMAN        1400                                                                     
ADAMS      CLERK           1000                                                                     
JAMES      CLERK            850                                                                     
FORD       ANALYST         2900                                                                     
MILLER     CLERK           1200                                                                     

14 rows selected.

SQL> SPOOL OFF
