--- c:\src\jlittle\tmp\dm14\ata\client\ui\reports\ProblemClass.cpp ------------
      List<Page ^> ^pages = gcnew List<Page ^>();
00000000  push        ebp 
00000001  mov         ebp,esp 
00000003  push        edi 
00000004  push        esi 
00000005  push        ebx 
00000006  sub         esp,1Ch 
00000009  mov         esi,ecx 
0000000b  lea         edi,[ebp-24h] 
0000000e  mov         ecx,5 
00000013  xor         eax,eax 
00000015  rep stos    dword ptr es:[edi] 
00000017  mov         ecx,esi 
00000019  mov         dword ptr [ebp-28h],ecx 
0000001c  mov         ebx,edx 
0000001e  mov         ecx,0A14CF7Ch 
00000023  call        F249FE40 
00000028  mov         edi,eax 
0000002a  mov         ecx,edi 
0000002c  call        642A0C58 
      ContentModelInterface ^reportModel = BuildContent(pages, params);
00000031  mov         ecx,0A14D830h 
00000036  call        6526667F 
0000003b  mov         esi,eax 
0000003d  push        ebx 
0000003e  mov         ecx,dword ptr [ebp-28h] 
00000041  mov         edx,edi 
00000043  call        dword ptr ds:[0A14C404h] 
00000049  mov         edx,eax 
0000004b  movzx       eax,byte ptr [ebp+10h] 
0000004f  push        eax 
00000050  mov         ecx,esi 
00000052  call        dword ptr ds:[0A14D69Ch] 
00000058  mov         ecx,dword ptr [esi+000001CCh] 
0000005e  mov         edx,dword ptr [ecx+0Ch] 
00000061  push        edi 
00000062  call        642BD048 
00000067  cmp         dword ptr [ebp+0Ch],0 
0000006b  je          0000009E 
         Interop::WindowInteropHelper ^helper = gcnew Interop::WindowInteropHelper(viewer);
0000006d  mov         ecx,55BC966Ch 
00000072  call        F249FE40 
00000077  mov         edi,eax 
00000079  mov         ecx,edi 
0000007b  mov         edx,esi 
0000007d  call        47C42728 
         helper->Owner = parentHWND;
00000082  call        01726DE8 
00000087  mov         ecx,dword ptr [edi+4] 
0000008a  mov         edx,dword ptr [ebp+0Ch] 
0000008d  cmp         dword ptr [ecx],ecx 
0000008f  call        47C95040 
         viewer->WindowStartupLocation = startLoc;
00000094  mov         ecx,esi 
00000096  mov         edx,dword ptr [ebp+8] 
00000099  call        47CEEDE0 
      }

      viewer->ShowDialog();
0000009e  mov         ecx,esi 
000000a0  call        47C0A50C 
000000a5  mov         dword ptr [ebp-24h],eax 
000000a8  jmp         000000DF 
   catch (ReportLayoutException ^ex) {
000000aa  mov         ecx,eax 
      MessageBox::Show("Cannot show:\n" + ex->Message, "Error", MessageBoxButton::OK, MessageBoxImage::Error);
000000ac  mov         esi,dword ptr ds:[060CE39Ch] 
000000b2  mov         eax,dword ptr [ecx] 
000000b4  mov         eax,dword ptr [eax+28h] 
000000b7  call        dword ptr [eax+10h] 
000000ba  mov         edx,eax 
000000bc  mov         ecx,esi 
000000be  call        64279F58 
000000c3  mov         edx,eax 
000000c5  push        dword ptr ds:[060CE3A0h] 
000000cb  push        0 
000000cd  push        10h 
000000cf  push        0 
000000d1  push        0 
000000d3  xor         ecx,ecx 
000000d5  call        47B9ACA0 
   }
000000da  call        6525E1D1 
000000df  lea         esp,[ebp-0Ch] 
}
000000e2  pop         ebx 
000000e3  pop         esi 
000000e4  pop         edi 
000000e5  pop         ebp 
000000e6  ret         0Ch 