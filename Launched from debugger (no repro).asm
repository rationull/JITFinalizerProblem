--- c:\src\jlittle\tmp\dm14\ata\client\ui\reports\ProblemClass.cpp ------------
      List<Page ^> ^pages = gcnew List<Page ^>();
00000000  push        ebp 
00000001  mov         ebp,esp 
00000003  push        edi 
00000004  push        esi 
00000005  sub         esp,64h 
00000008  mov         esi,ecx 
0000000a  lea         edi,[ebp-6Ch] 
0000000d  mov         ecx,18h 
00000012  xor         eax,eax 
00000014  rep stos    dword ptr es:[edi] 
00000016  mov         ecx,esi 
00000018  mov         dword ptr [ebp-38h],ecx 
0000001b  mov         dword ptr [ebp-3Ch],edx 
0000001e  cmp         dword ptr ds:[003A4268h],0 
00000025  je          0000002C 
00000027  call        5B70124D 
0000002c  xor         edx,edx 
0000002e  mov         dword ptr [ebp-40h],edx 
00000031  xor         edx,edx 
00000033  mov         dword ptr [ebp-44h],edx 
00000036  xor         edx,edx 
00000038  mov         dword ptr [ebp-48h],edx 
0000003b  mov         ecx,127E458Ch 
00000040  call        E861CA1C 
00000045  mov         dword ptr [ebp-4Ch],eax 
00000048  mov         ecx,dword ptr [ebp-4Ch] 
0000004b  call        5A41D808 
00000050  mov         eax,dword ptr [ebp-4Ch] 
00000053  mov         dword ptr [ebp-44h],eax 
      ContentModelInterface ^reportModel = BuildContent(pages, params);
00000056  push        dword ptr [ebp-3Ch] 
00000059  mov         ecx,dword ptr [ebp-38h] 
0000005c  mov         edx,dword ptr [ebp-44h] 
0000005f  call        dword ptr ds:[127E3940h] 
00000065  mov         dword ptr [ebp-50h],eax 
      ViewerWindow ^viewer = gcnew ViewerWindow(reportModel, boolParameter);
00000068  mov         ecx,127E4E40h 
0000006d  call        5B3E322F 
00000072  mov         dword ptr [ebp-54h],eax 
00000075  movzx       eax,byte ptr [ebp+10h] 
00000079  push        eax 
0000007a  mov         ecx,dword ptr [ebp-54h] 
0000007d  mov         edx,dword ptr [ebp-50h] 
00000080  call        dword ptr ds:[127E4CACh] 
00000086  mov         eax,dword ptr [ebp-54h] 
00000089  mov         dword ptr [ebp-40h],eax 
      viewer->Pages->AddRange(pages);
0000008c  mov         ecx,dword ptr [ebp-40h] 
0000008f  call        dword ptr ds:[127E4CC8h] 
00000095  mov         dword ptr [ebp-58h],eax 
00000098  mov         ecx,dword ptr [ebp-58h] 
0000009b  mov         edx,dword ptr [ebp-44h] 
0000009e  call        5A4284B8 

      if (parentHWND != IntPtr::Zero) {
000000a3  mov         ecx,dword ptr [ebp+0Ch] 
000000a6  xor         edx,edx 
000000a8  call        5A402578 
000000ad  mov         dword ptr [ebp-2Ch],eax 
000000b0  cmp         dword ptr [ebp-2Ch],0 
000000b4  je          000000E4 
         Interop::WindowInteropHelper ^helper = gcnew Interop::WindowInteropHelper(viewer);
000000b6  mov         ecx,55BC966Ch 
000000bb  call        E861CA1C 
000000c0  mov         dword ptr [ebp-5Ch],eax 
000000c3  mov         ecx,dword ptr [ebp-5Ch] 
000000c6  mov         edx,dword ptr [ebp-40h] 
000000c9  call        3DDBF2D8 
         helper->Owner = parentHWND;
000000ce  mov         ecx,dword ptr [ebp-5Ch] 
000000d1  mov         edx,dword ptr [ebp+0Ch] 
000000d4  call        3E52F4A8 
         viewer->WindowStartupLocation = startLoc;
000000d9  mov         ecx,dword ptr [ebp-40h] 
000000dc  mov         edx,dword ptr [ebp+8] 
000000df  call        3DE6B990 
      }

      viewer->ShowDialog();
000000e4  mov         ecx,dword ptr [ebp-40h] 
000000e7  call        3DD870BC 
000000ec  mov         dword ptr [ebp-30h],eax 
000000ef  lea         eax,[ebp-30h] 
000000f2  movsx       eax,word ptr [eax] 
000000f5  lea         edx,[ebp-20h] 
000000f8  mov         word ptr [edx],ax 
   }
000000fb  nop 
000000fc  jmp         00000149 
   catch (ReportLayoutException ^ex) {
000000fe  mov         dword ptr [ebp-60h],eax 
00000101  mov         eax,dword ptr [ebp-60h] 
00000104  mov         dword ptr [ebp-48h],eax 
      MessageBox::Show("Cannot show:\n" + ex->Message, "Error", MessageBoxButton::OK, MessageBoxImage::Error);
00000107  mov         eax,dword ptr ds:[060CE2CCh] 
0000010d  mov         dword ptr [ebp-64h],eax 
00000110  mov         ecx,dword ptr [ebp-48h] 
00000113  mov         eax,dword ptr [ecx] 
00000115  mov         eax,dword ptr [eax+28h] 
00000118  call        dword ptr [eax+10h] 
0000011b  mov         dword ptr [ebp-68h],eax 
0000011e  mov         ecx,dword ptr [ebp-64h] 
00000121  mov         edx,dword ptr [ebp-68h] 
00000124  call        5A3F6B08 
00000129  mov         dword ptr [ebp-6Ch],eax 
0000012c  push        0 
0000012e  push        10h 
00000130  mov         edx,dword ptr ds:[060CE2D0h] 
00000136  mov         ecx,dword ptr [ebp-6Ch] 
00000139  call        3E532338 
0000013e  mov         dword ptr [ebp-34h],eax 
00000141  nop 
   }
00000142  call        5B3DAD81 
00000147  jmp         00000149 
}
00000149  nop 
0000014a  lea         esp,[ebp-8] 
0000014d  pop         esi 
0000014e  pop         edi 
0000014f  pop         ebp 
00000150  ret         0Ch 