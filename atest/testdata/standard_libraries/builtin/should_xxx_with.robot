*** Variables ***
${LONG}           This is a bit longer sentence and it even has a friend here.
...               This is the friend of the previous sentence and it is also
...               quite long, actually even longer than its friend.

*** Test Cases ***
Should Start With
    [Documentation]    FAIL My message: '${LONG}' does not start with 'Does not start'
    [Template]    Should Start With
    Hello, world!    Hello
    Hello, world!    Hello, world!
    ${LONG}    Does not start    My message    values=true

Should Start With case-insensitive
    [Template]    Should Start With
    Hello!           hELLo            ignore_case=True
    HYVÄÄ YÖTÄ       hyvää            ignore_case=yeah
    Hello, world!    hello, WORLD!    ignore_case=True

Should Start With without values
    [Documentation]    FAIL My message
    Should Start With    ${LONG}    Nope    My message    values=No values

Should Start With strip leading spaces
    [Documentation]    FAIL 'YÖTÄ' does not start with 'PÄIVÄÄ'
    [Template]    Should Start With
    San Diego!                San Diego           strip_spaces=leading
    ${SPACE}test\tvalue       test\tvalue         strip_spaces=LEADING
    test value                \ttest              strip_spaces=leading
    \ HYVÄÄ YÖTÄ              \tHYVÄÄ             repr=yes    strip_spaces=leading
    ${SPACE}                  ${EMPTY}            strip_spaces=leading
    test\tvalue               test                strip_spaces=yes
    ${SPACE}\tYÖTÄ            \t${SPACE}PÄIVÄÄ    strip_spaces=leading

Should Not Start With
    [Documentation]    FAIL 'Hello, world!' starts with 'Hello'
    [Template]    Should Not Start With
    Hello, world!    Hi
    Hello, world!    HELLO
    Hello, world!    Hello

Should Not Start With case-insensitive
    [Documentation]     FAIL  'hello, world?' starts with 'hello, world'
    [Template]    Should Not Start With
    !Hello!          hELLo           ignore_case=True
    HYVÄÄ YÖTÄ       pahaa           ignore_case=yeah
    Hello, world?    hello, WORLD    ignore_case=True

Should End With without values
    [Documentation]    FAIL My message
    Should End With    ${LONG}    Nope    My message    values=No values

Should End With
    [Documentation]    FAIL 'Hello, world!' does not end with '?'
    [Template]    Should End With
    Hello, world!    !
    Hello, world!    Hello, world!
    Hello, world!    ?

Should End With case-insensitive
    [Template]      Should End With
    This is it       Is IT            ignore_case=True
    Hello, world!    hello, WORLD!    ignore_case=True
    HYVÄÄ YÖTÄ       ä yötä           ignore_case=True

Should Not End With
    [Documentation]    FAIL Message only
    [Template]    Should Not End With
    Hello!    Hello
    Hillo!    !    Message only    No Values

Should Not End With case-insensitive
    [Documentation]     FAIL  'hello, world!' ends with 'hello, world!'
    [Template]    Should Not End With
    Hello!           hELLo            ignore_case=True
    HYVÄÄ YÖTÄ       hyvää            ignore_case=yeah
    Hello, world!    hello, WORLD!    ignore_case=True
