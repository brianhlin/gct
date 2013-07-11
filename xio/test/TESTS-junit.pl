#! /usr/bin/perl

# 
# Copyright 1999-2006 University of Chicago
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# 


use strict;
require 5.005;
use vars qw(@tests);

my $harness;
BEGIN {
    my $xmlfile = 'globus-xio-test.xml';

    eval "use TAP::Harness::JUnit";
    if ($@)
    {
        eval "use TAP::Harness;";

        if ($@)
        {
            die "Unable to find JUnit TAP formatter";
        }
        else
        {
            $harness = TAP::Harness->new( {
                formatter_class => 'TAP::Formatter::JUnit',
                merge => 1
            } );
        }
        open(STDOUT, ">$xmlfile");
    }
    else
    {
        $harness = TAP::Harness::JUnit->new({
                                xmlfile => $xmlfile,
                                merge => 1});
    }
    #$Test::Harness::verbose = 1;
    $ENV{PATH} = ".:" . $ENV{PATH};

}

@tests = qw(
            basic-test.pl
            close-barrier-test.pl
            close-cancel-test.pl
            failure-test.pl
            read-barrier-test.pl
            timeout-test.pl
            cancel-test.pl
            random-test.pl
            server-test.pl
            verify-test.pl
            attr-test.pl
            space-test.pl
            server2-test.pl
            block-barrier-test.pl
            stack-test.pl
            unload-test.pl
            http-header-test.pl
            http-post-test.pl
            http-put-test.pl
            http-get-test.pl
            );

my $runserver;
my $server_pid;

$ENV{'XIO_TEST_OUPUT_DIR'}="test_output/$$";

my $test_dir=$ENV{'XIO_TEST_OUPUT_DIR'};

system("rm -rf $test_dir");

$harness->runtests(@tests);
