CKEDITOR.editorConfig = function(config) {
  config.language = 'ja';
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";
  config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";
  config.filebrowserImageUploadUrl = "/ckeditor/pictures";
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";
  config.filebrowserUploadMethod = 'form';
  config.toolbar_Pure = [
    '/', {
      name: 'basicstyles',
      items: ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat']
    }, {
      name: 'paragraph',
      items: ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl']
    }, {
      name: 'links',
      items: ['Link', 'Unlink']
    }, '/', {
      name: 'styles',
      items: ['Styles', 'Format', 'Font', 'FontSize']
    }, {
      name: 'colors',
      items: ['TextColor', 'BGColor']
    }, {
      name: 'insert',
      items: ['Image', 'Table', 'HorizontalRule', 'PageBreak']
    }
  ];
  config.height = '700px';
  config.toolbar = 'Pure';

  return true;
};

CKEDITOR.on('dialogDefinition', function (ev) {
    var dialogName = ev.data.name;
    var dialogDefinition = ev.data.definition;

    if (dialogName === 'image') {
        var uploadTab = dialogDefinition.getContents('Upload');
        if (uploadTab) {
            var upload = uploadTab.get('upload');
            if (upload) upload.label = '画像を選択してください';

            var uploadButton = uploadTab.get('uploadButton');
            if (uploadButton) uploadButton.label = 'アップロード';
        }

        var infoTab = dialogDefinition.getContents('info');
        if (infoTab) {
            infoTab.remove('txtAlt');
            infoTab.get('txtUrl')['hidden'] = true;
            infoTab.remove('txtHSpace');
            infoTab.remove('txtVSpace');
            infoTab.remove('txtBorder');
            infoTab.remove('cmbAlign');

            var browse = infoTab.get('browse');
            if (browse) browse.label = 'アップロード済みの画像を選択';
        }

        // remove unnecessary tabs
        if (dialogDefinition.getContents('Link')) dialogDefinition.removeContents('Link');
        if (dialogDefinition.getContents('advanced')) dialogDefinition.removeContents('advanced');
    }
});

CKEDITOR.config.image_previewText='ここにプレビューを表示します';
