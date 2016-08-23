

defineClass("ViewController", {
            changeColor: function() {
            var temColor = require('UIColor').greenColor();
            var color = UIColor.greenColor();
            self.myView().setBackgroundColor(color);
            }
            })