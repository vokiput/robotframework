*** Settings ***
Suite Setup       Run Tests    sources=standard_libraries/builtin/should_xxx_with.robot
Resource          builtin_resource.robot

*** Test Cases ***
Should Start With
    Check test case    ${TESTNAME}

Should Start With case-insensitive
    Check test case    ${TESTNAME}

Should Start With without values
    Check test case    ${TESTNAME}

Should Start With without leading spaces
    Check test case    ${TESTNAME}

Should Start With without trailing spaces
    Check test case    ${TESTNAME}

Should Start With without leading and trailing spaces
    Check test case    ${TESTNAME}

Should Not Start With
    Check test case    ${TESTNAME}

Should Not Start With case-insensitive
    Check test case    ${TESTNAME}

Should Not Start With without leading spaces
    Check test case    ${TESTNAME}

Should Not Start With without trailing spaces
    Check test case    ${TESTNAME}

Should Not Start With without leading and trailing spaces

Should End With
    Check test case    ${TESTNAME}

Should End With case-insensitive
    Check test case    ${TESTNAME}

Should End With without leading spaces
    Check test case    ${TESTNAME}

Should End With without trailing spaces
    Check test case    ${TESTNAME}

Should End With without leading and trailing spaces
    Check test case    ${TESTNAME}

Should End With without values
    Check test case    ${TESTNAME}

Should Not End With
    Check test case    ${TESTNAME}

Should Not End With case-insensitive
    Check test case    ${TESTNAME}
