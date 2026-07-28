function plan = buildfile
import matlab.buildtool.tasks.*

plan = buildplan(localfunctions);

plan("clean") = CleanTask;
plan("check") = CodeIssuesTask;
plan("mex") = MexTask.forEachFile("cpp/mexfunctions/*.c", "toolbox/");
plan("test") = TestTask(Dependencies="mex");

plan.DefaultTasks = ["check" "test"];
end
