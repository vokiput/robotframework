*** Settings ***
Suite Setup       Run Tests    ${EMPTY}    standard_libraries/builtin/run_keyword_and_warn_on_failure.robot
Resource          atest_resource.robot

*** Test Cases ***
Run Keyword And Warn On Failure
    ${tc}=    Check Test Case    ${TESTNAME}
    Check Log Message    ${tc.kws[0].msgs[0]}    Expected Warn    WARN

Run Keyword And Warn On Failure For Keyword Teardown
    ${tc}=    Check Test Case    ${TESTNAME}
    Check Log Message    ${tc.kws[0].msgs[0]}    Keyword teardown failed:\nExpected Warn From User Keyword Teardown    WARN

Run User keyword And Warn On Failure
    ${tc}=    Check Test Case    ${TESTNAME}
    Check Log Message    ${tc.kws[0].msgs[0]}    Expected Warn In User Keyword    WARN

Run Keyword And Warn On Failure With Syntax Error
    Check Test Case    ${TESTNAME}

Run Keyword And Warn On Failure With Failure On Test Teardown
    ${tc}=    Check Test Case    ${TESTNAME}
    Check Log Message    ${tc.teardown.msgs[0]}    Expected Warn From Test Teardown    WARN

Run Keyword And Warn On Failure With Timeout
    Check Test Case    ${TESTNAME}

Run Keyword And Warn On Failure On Suite Teardown
    ${suite} =    Get Test Suite    Run Keyword And Warn On Failure
    Check Log Message    ${suite.teardown.msgs[0]}    Expected Warn From Suite Teardown    WARN
