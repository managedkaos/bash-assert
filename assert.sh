# initialize the counters
test_count=0
pass_count=0
fail_count=0

# define the assert function
function assert() {

    # increment the test count for each test
    let test_count+=1

    # run the check ...
    if [ $2 ]
    then
        # if the check passes, print OK and increment the pass count
        echo "[ OK ] $1"
        let pass_count+=1
    else
        # if the check fails, print FAIL in red and increment the fail count
        echo -e "[\e[31mFAIL\e[0m] $1:  \"$2\""
        let fail_count+=1
    fi

    # if all is well, return 0
    return 0
}

# defind the finish function
function finish() {
    # print a summary of the test, pass, and fail counts
    echo "Tests: $test_count, Passed: $pass_count, Failed: $fail_count"
    
    # exit with the total number of fails; no fails means exit code == 0
    exit $fail_count
}

# set the trap for the finish function
trap finish EXIT