option(CMAKE_VERBOSE "output verbose log during cmake generation" OFF)

function(msg level)
    if ("${level}" STREQUAL "FATAL_ERROR"
        OR "${level}" STREQUAL "FATAL"
        OR "${level}" STREQUAL "ERROR"
    )
        message(${level} ${ARGN})
    elseif (CMAKE_VERBOSE)
        message(${level} ${ARGN})
    endif()
endfunction(msg)

function(info)
    msg(STATUS ${ARGN})
endfunction(info)

function(warn)
    msg(WARNING ${ARGN})
endfunction(warn)

function(error)
    msg(ERROR ${ARGN}) 
endfunction(error)

function(fail)
    msg(FATAL_ERROR ${ARGN}) 
endfunction(fail)
