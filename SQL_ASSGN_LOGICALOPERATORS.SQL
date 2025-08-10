SQL> --WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK AND EARNING LESS THAN 1500.
SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB='CLERK' AND SAL<1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

SQL> --WAQTD NAME AND HIREDATE OF THE EMPLOYEES WORKING AS MANAGER IN DEPTNO 30.
SQL> SELECT ENAME,HIREDATE
  2  FROM EMP
  3  WHERE JOB='MANAGER' AND DEPTNO=30;

ENAME      HIREDATE                                                                                 
---------- ---------                                                                                
BLAKE      01-MAY-81                                                                                

SQL> --WAQTD DETAILS OF THE EMPLOYEE ALONG WITH THE ANNUAL SALARY IF THEY ARE WORKING IN DEPT 30 AS SALESMAN AND THEIR ANNUAL SALARY AS TO BE GREATER THAN 14000.
SQL> SELECT EMP.*,SAL*12 AS ANNUAL_SALARY
  2  FROM EMP
  3  WHERE DEPTNO=30 AND JOB='SALESMAN' AND SAL*12>14000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_SALARY 
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ------------- 
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30         19200 
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30         15000 
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30         15000 
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30         18000 

SQL> --WAQTD ALL THE DETAILS OF THE EMPLOYEE WORKING IN DEPT 30 OR AS ANALYST.
SQL> SELECT*
  2  FROM EMP
  3  WHERE DEPTNO=30 JOB='ANALYST';
WHERE DEPTNO=30 JOB='ANALYST'
                *
ERROR at line 3:
ORA-00933: SQL command not properly ended 


SQL>  SELECT*
  2   FROM EMP
  3   WHERE DEPTNO=30 AND JOB='ANALYST';

no rows selected

SQL> --WAQTD NAME OF THE EMPLOYEES WHOS SALARY IS LESS THAN 1100 AND THEIR DESIGNATION IS CLERK.
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE SAL<1100 AND JOB='CLERK';

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               
JAMES                                                                                               

SQL> --WAQTD NAME AND SALARY AND ANNUAL SAL AND DEPTNO IF THE DEPTNO IS 20 EARNING MORE THAN 1100 AN--AND ANNUAL SALARY EXCEEDS 12000.
SQL> DELECT ENAME,SAL,SAL*12 AS ANNUAL_SAL,DEPTNO
SP2-0734: unknown command beginning "DELECT ENA..." - rest of line ignored.
SQL> SELECT  ENAME,SAL,SAL*12 AS ANNUAL_SAL,DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO=20 AND SAL>1100 AND SAL*12>12000;

ENAME             SAL ANNUAL_SAL     DEPTNO                                                         
---------- ---------- ---------- ----------                                                         
JONES            2975      35700         20                                                         
SCOTT            3000      36000         20                                                         
FORD             3000      36000         20                                                         

SQL> --WAQTD EMPNO AND NAMES OF THE EMPLOYEES WORKING AS MANAGER IN DEPTNO 20.
SQL> SELECT EMPNO,ENAME
  2  FROM EMP
  3  WHERE JOB='MANAGER' AND DEPTNO=20;

     EMPNO ENAME                                                                                    
---------- ----------                                                                               
      7566 JONES                                                                                    

SQL> --WAQTD DETAILS OF THE EMPLOYEES WORKING IN DEPT 20 OR 30.
SQL> SELECT*
  2  FROM EMP
  3  WHERE DEPTNO=20 OR DEPTNO=30;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               

11 rows selected.

SQL> --WAQTD DETAILS OF THE EMPLOYEES WORKING AS ANALYST IN DEPTNO 10.
SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB='ANALYST' AND DEPTNO=10;

no rows selected

SQL> --WAQTD DETAILS OF THE EMPLOYEES WORKING AS PRESIDENT WITH SALARY OF RUPEES 4000.
SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB='PRESIDENT' AND SAL>4000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               

SQL> --WAQTD NAMES AND DEPTNO AND JOB OF EMPLOYEE WORKING AS CLERK IN DEPT 10 OR 20.
SQL> SELECT ENAME,DEPTNO,JOB
  2  FROM EMP
  3  WHERE JOB='CLERK'AND (DEPTNO=10 OR DEPTNO=20);

ENAME          DEPTNO JOB                                                                           
---------- ---------- ---------                                                                     
SMITH              20 CLERK                                                                         
ADAMS              20 CLERK                                                                         
MILLER             10 CLERK                                                                         

SQL> --WAQTD DETAILS OF THE EMPLOYEES WORKING AS CLERK OR MANAGER IN DEPT 10.
SQL> SELECT*
  2  FROM EMP
  3  WHERE JOB='CLERK' OR JOB='MANAGER' AND DEPTNO=10;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

SQL>  SELECT*
  2   FROM EMP
  3   WHERE JOB='CLERK' OR JOB='MANAGER' AND (DEPTNO=10);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

SQL> SELECT*
  2  FROM EMP
  3  WHERE DEPTNO=10 AND (JOB=
  4  'CLERK' OR JOB='MANAGER');

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

SQL> --WAQTD NAME OF THE EMPLOYEES WORKING IN DEPT 10,20,30,40.
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE DEPTNO=10 OR DEPTNO=20 OR DEPTNO=30 AND DEPTNO=40;

ENAME                                                                                               
----------                                                                                          
SMITH                                                                                               
JONES                                                                                               
CLARK                                                                                               
SCOTT                                                                                               
KING                                                                                                
ADAMS                                                                                               
FORD                                                                                                
MILLER                                                                                              

8 rows selected.

SQL> --WAQTD DETAILS OF THE EMPLOYEES WITH EMPNO 7902,7839.
SQL> SELECT*
  2  FROM EMP
  3  WHERE EMPNO=7902 AND EMPNO=7839;

no rows selected

SQL> --WAQTD DETAILS OF THE EMPLOYEES WORKING AS MANAGER OR SALESMAN OR CLERK.
SQL> SELECT*
  2  FROM EMP
  3  WHERE  JOB='SALESMAN' OR JOB='MANAGER' OR JOB='CLERK';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

11 rows selected.

SQL> --WAQTD DETAILS OF THE EMPLOYEES HIRED AAFTER 81 AND BEFORE 87.
SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE>'01-DEC-81' AND HIREDATE<'01-JAN-87';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

SQL> SELECT *
  2  FROM EMP
  3  WHERE HIREDATE>'01-JAN-81' AND HIREDATE<'01-JAN-87';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7839 KING       PRESIDENT            17-NOV-81       5000                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30               
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

11 rows selected.

SQL> --WAQTD DETAILS OF THE EMPLOYEES EARNING MORE THAN 1250 BUT LESS THAN 3000.
SQL> SELECT*
  2  FROM EMP
  3  WHERE SAL>1250 AND SAL<3000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO               
---------- ---------- --------- ---------- --------- ---------- ---------- ----------               
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30               
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20               
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30               
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10               
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30               
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10               

6 rows selected.

SQL> --WAQTD NAMES OF THE EMPLOYEES HIRED AFTER 81 INTO DEPT 10 OR 20.
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE HIREDATE>'31-DEC-81' AND (DEPTNO=10 OR DEPTNO=20);
 
ENAME                                                                                               
----------                                                                                          
SCOTT                                                                                               
ADAMS                                                                                               
MILLER                                                                                              

SQL> --WAQTD NAMES OF THE EMPLOYEES ALONG WITH ANNUAL SALARY FOR THE EMPLOYEES WORKING AS MANAGER OR--CLERK INTO DEPT 10 OR 30.
SQL> SELECT ENAME,SAL*12 AS ANNUAL_SAL
  2  FROM EMP
  3  WHERE JOB='MANAGER' AND JOB='CLERK' AND (DEPTNO=10 OR DEPTNO=20);

no rows selected

SQL> --WAQTD ALL THE DETAILS ALONG WITH ANNUAL SALARY IF THE SAL IS BETWEEN 1000 AND 4000 AND ANNUAL--SALARY IS MORE THAN 15000.
SQL> SELECT EMP.*,SAL*12 AS ANNUAL_SAL
  2  FROM EMP
  3  WHERE SAL>1000 AND SAL<1500 AND SAL*12>15000;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO ANNUAL_SAL    
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ----------    
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10      15600    

SQL> SPOOL OFF
