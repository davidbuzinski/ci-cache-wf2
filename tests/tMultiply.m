classdef tMultiply < matlab.unittest.TestCase
    methods(Test)
        function multipliesCorrectly(testCase)
            testCase.verifyEqual(multiply(2, 3), 6);
        end

        function multipliesByZero(testCase)
            testCase.verifyEqual(multiply(5, 0), 0);
        end

        function multipliesNegatives(testCase)
            testCase.verifyEqual(multiply(-3, -4), 12);
        end
    end
end
