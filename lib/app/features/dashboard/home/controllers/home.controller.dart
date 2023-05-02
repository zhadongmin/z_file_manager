part of home;

class HomeController extends GetxController {
  final user = const _User(name: 'zhadongmin');

  final usage = const _FileUsage(
      totalFree: 1024 * 1024 * 1024 * 32, totalUsed: 1024 * 1024 * 1024 * 256);

  final List<FileDetail> recent = [
    FileDetail(
      name: "powerpoint.pptx",
      size: 5000000,
      type: FileType.msPowerPoint,
    ),
    FileDetail(
      name: "word.docx",
      size: 10000000,
      type: FileType.msWord,
    ),
    FileDetail(
      name: "access.accdb",
      size: 2000000,
      type: FileType.msAccess,
    ),
    FileDetail(
      name: "excel.xlsx ",
      size: 3000000,
      type: FileType.msExcel,
    ),
    FileDetail(
      name: "outlook.pst",
      size: 400000,
      type: FileType.msOutlook,
    ),
    FileDetail(
      name: "videos.mp4",
      size: 4090000,
      type: FileType.other,
    ),
  ];
}
