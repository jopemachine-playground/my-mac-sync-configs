define(function () {
  const extension = {
    action(selection) {
      // latestVersion(selection.text).then(() => {
      //   popclip.openUrl(`https://www.npmjs.com/package/${selection.text}`);
      // }).catch(() => {
      //   popclip.openUrl(`https://www.npmjs.com/search?q=${selection.text}`);
      // });
      popclip.openUrl(`https://www.npmjs.com/search?q=${selection.text}`);
    }
  };

  return extension;
});