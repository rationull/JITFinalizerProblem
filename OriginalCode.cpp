void ProblemClass::ProblemFunction(objParameter ^params, bool boolParameter,
 IntPtr parentHWND, WindowStartupLocation startLoc)
{
   try {
      List<Page ^> ^pages = gcnew List<Page ^>();
      ContentModelInterface ^reportModel = BuildContent(pages, params);
      ViewerWindow ^viewer = gcnew ViewerWindow(reportModel, boolParameter);
      viewer->Pages->AddRange(pages);

      if (parentHWND != IntPtr::Zero) {
         Interop::WindowInteropHelper ^helper = gcnew Interop::WindowInteropHelper(viewer);
         helper->Owner = parentHWND;
         viewer->WindowStartupLocation = startLoc;
      }

      viewer->ShowDialog();
   }
   catch (ReportLayoutException ^ex) {
      MessageBox::Show("Cannot show:\n" + ex->Message, "Error", MessageBoxButton::OK, MessageBoxImage::Error);
   }
}