SQL> --WAQTD THE ANNUAL SALARY OF THE EMPLOYEE WHOS NAME IS SMITH.
SQL> SET LINES 100 PAGES 100
SQL> SELECT* FROM EMP;

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

SQL> SELECT SAL*12
  2  FROM EMP
  3  WHERE ENAME='SMITH';

    SAL*12                                                                                          
----------                                                                                          
      9600                                                                                          

SQL> --WAQTD NAME OF THE EMPLOYEES WORKING AS CLERK.
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE JOB='CLERK';

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               
ADAMS                                                                                               
JAMES                                                                                               
MILLER                                                                                              

SQL> --WAQTD SALARY OF THE EMPLOYEES WHO ARE WORKING AS SALESMAN.
SQL> SELECT SAL
  2  FROM EMP
  3  WHERE JOB='SALESMAN';

       SAL                                                                                          
----------                                                                                          
      1600                                                                                          
      1250                                                                                          
      1250                                                                                          
      1500                                                                                          

SQL> --WAQTD DETAILS OF THE EMPLOYEES WHO EARNS MORE THAN 2000.
SQL> SELECT*
  2  FROM EMP
  3  WHERE SAL>2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

6 rows selected.

SQL> --WAQTD DETAILS OF THE EMPLOYEES WHO NAME IS JONES.
SQL> SELECT*
  2  FROM EMP
  3  WHERE ENAME='JONES';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               

SQL> --WAQTD DETAILS OF THE EMPLOYEE WHO WAS HIRED AFTER 01-JAN-81.
SQL> SELECT*
  2  FROM EMP
  3  WHERE HIREDATE >'01-JAN-1981';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
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

13 rows selected.

SQL> --WAQTD NAME AND SALARY ALONG WITH IS ANNUAL SALARY IF THE ANNUAL SALARY IS MORE THAN 1200.
SQL> SELECT ENAME,SAL,SAL*12 ANNUAL_SALARY
  2  FROM EMP
  3  WHERE SAL*12>1200;

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

SQL> --WAQTD EMPNO OF THE EMPLOYEES WHO ARE WORKING IN DEPTNO 30.
SQL> SELECT EMPNO
  2  FROM EMP
  3  WHERE DEPTNO=30;

     EMPNO                                                                                          
----------                                                                                          
      7499                                                                                          
      7521                                                                                          
      7654                                                                                          
      7698                                                                                          
      7844                                                                                          
      7900                                                                                          

6 rows selected.

SQL> --WAQTD ENAME AND HIREDATE IF THEY ARE HIRED BEFORE 1981.
SQL> SELECT ENAME,HIREDATE
  2  FROM EMP
  3  WHERE HIREDATE<'01-JAN-1981';

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
SMITH      17-DEC-80                                                                                

SQL> --WAQTD DETAILS OF THE EMPLOYEES WORKING AS MANAGER.
SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB='MANAGER';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               

SQL> --WAQTD NAME AND SALARY GIVEN TO AN EMPLOYEE IF EMPLOYEE EARNS A COMMISSION OF RUPEES 1400.
SQL> SELECT ENAME,SAL
  2  FROM EMP
  3  WHERE COMM=1400;

ENAME             SAL                                                                               
---------- ----------                                                                               
MARTIN           1250                                                                               

SQL> --WAQTD DETAILS OF THE EMPLOYEES HAVING COMMISSION MORE THAN SALARY.
SQL> SELECT*
  2  FROM EMP
  3  WHERE COMM>SAL;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               

SQL> --WAQTD EMPNO OF THE EMPLOYESS HIRED BEFORE THE YEAR 87.
SQL> SELECT EMPNO
  2  FROM EMP
  3  WHERE HIREDATE<'01-JAN-87';

     EMPNO                                                                                          
----------                                                                                          
      7369                                                                                          
      7499                                                                                          
      7521                                                                                          
      7566                                                                                          
      7654                                                                                          
      7698                                                                                          
      7782                                                                                          
      7839                                                                                          
      7844                                                                                          
      7900                                                                                          
      7902                                                                                          
      7934                                                                                          

12 rows selected.

SQL> --WAQTD DETAILS OF THE EMPLOYEE WORKING AS AN ANALYST.
SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB='ANALYST';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

SQL> --WAQTD DETAILS OF THE EMPLOYEE EARNING MORE THAN 2000 RUPEES PER MONTH.
SQL> SELECT *
  2  FROM EMP
  3  WHERE SAL>2000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

6 rows selected.

SQL> SPOOL OFF
