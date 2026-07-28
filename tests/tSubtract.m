classdef tSubtract < matlab.unittest.TestCase
    methods(Test)
        function subtractsCorrectly(testCase)
            testCase.verifyEqual(subtract(5, 3), 2);
        end

        function subtractsToNegative(testCase)
            testCase.verifyEqual(subtract(3, 5), -2);
        end

        function subtractsZero(testCase)
            testCase.verifyEqual(subtract(7, 0), 7);
        end
    end
end
