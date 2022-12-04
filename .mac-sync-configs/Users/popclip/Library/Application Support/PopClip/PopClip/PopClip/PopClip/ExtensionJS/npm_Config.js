;(()=>{
'use strict';
define(function () {
  const extension = {
    action(selection) {
      fetch(`https://www.npmjs.com/package/${selection.text}`).then(() => {
        popclip.openUrl(`https://www.npmjs.com/package/${selection.text}`);
      }).catch(() => {
        popclip.openUrl(`https://www.npmjs.com/search?q=${selection.text}`);
      });
    }
  };

  return extension;
});;
})();