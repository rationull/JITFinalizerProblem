# JITFinalizerProblem

 * **OriginalCode.cpp:** Original C++/CLI code.
 * **MSILDisassembled.msil:** MSIL output from Release build (from IL Disassembler).
 * **Launched from debugger (no repro).asm:** Disassembly from the VS debugger, in the case where the application is launched in the debugger and the extra finalizer call does not occur.
 * **Debugger attached later (with repro).asm:** Disassembly from the VS debugger, in the case where the application is started outside the debugger, and the debugger is only attached after the exception is thrown (which should preempt the ViewerWindow instance creation). The extra finalizer does occur in this case.
