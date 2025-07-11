const dm = require('../dist');
const windows = dm.findWindow("WeChatMainWndForPC", "")
const size = dm.moveWindow(windows,0,0);
dm.bindWindow(windows, "gdi", "windows", "windows");
dm.leftClick();
dm.keyPress(9);
dm.unBindWindow();
console.log(size)

