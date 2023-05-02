part of cloud;

class CloudController extends GetxController {
  List<_FolderData> folderData = [
    _FolderData(
      label: 'private document',
      totalItem: 150,
      fileType: [
        FileType.msAccess,
        FileType.msOutlook,
        FileType.other,
        FileType.msPowerPoint,
      ],
    ),
    _FolderData(
      label: 'work document',
      totalItem: 150,
      fileType: [
        FileType.msWord,
        FileType.msExcel,
      ],
    ),
    _FolderData(
      label: 'content video',
      totalItem: 150,
      fileType: [
        FileType.msOutlook,
        FileType.msExcel,
      ],
    ),
    _FolderData(
      label: 'homework',
      totalItem: 150,
      fileType: [
        FileType.msAccess,
        FileType.msExcel,
        FileType.other,
        FileType.msPowerPoint,
      ],
    ),
  ];
}
