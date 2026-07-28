classdef tAdd < matlab.unittest.TestCase

    methods(Test)
        function addsCorrectly(testCase)
            testCase.verifyEqual(add(2,3), 5);
        end

        function addsNegativesCorrectly(testCase)
            testCase.verifyEqual(add(2, -3), -1);
        end
    end
end