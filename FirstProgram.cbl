      ******************************************************************
      * Author: JESSE PROULX
      * Date: 05-13-2025
      * Purpose: FIRST COBOL PROGRAM
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FirstProgram.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
               SELECT STUDENT-FILE ASSIGN TO "../STUDENT"
                   ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD STUDENT-FILE.
       01 STUDENT-RECORD.
           05 STUDENT-NUMBER PIC 9(8).
           05 STUDENT-FIRST-LAST.
               10 FIRST-NAME PIC X(10).
               10 LAST-NAME PIC X(10).
           05 STUDENT-ADDRESS.
               10 ADDRESS-NUMBER PIC 9(5).
               10 ADDRESS-NAME PIC X(10).
               10 ADDRESS-POSTAL-CODE PIC X(6).
           05 STUDENT-CITY PIC X(20).
           05 STUDENT-COUNTRY PIC X(20).
           05 STUDENT-PHONE-NUMBER PIC X(10).
           05 STUDENT-EMAIL PIC X(20).
       WORKING-STORAGE SECTION.
       01 STUDENT-ID.
           05 STUDENT-NUM PIC 9(8).
       01 STUDENT-INFO.
           05 STUDENT-NAME PIC X(20).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "What is your student number? ".
            ACCEPT STUDENT-NUMBER.
            DISPLAY "What is your name? ".
            ACCEPT STUDENT-NAME.
            DISPLAY "Your student number is ", STUDENT-NUMBER
                   , " Your name is ", STUDENT-NAME.
            STOP RUN.
       END PROGRAM FirstProgram.
