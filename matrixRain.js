(function(global, factory) {
    factory(global);
})(this, function(window) {
    var canvas,
        canvasCtx,
        canvasCol,
        canvasRow,
        actualText,
        arrayContent = [];
    function setCanvas(selector, color) {
        canvas = document.querySelector(selector);
        canvasCtx = canvas.getContext('2d');
        canvas.style.backgroundColor = color;
    }
    function setColor(color) {
        canvasCtx.fillStyle = color;
    }
    function setFont(fontSize) {
        canvasCtx.font = fontSize + 'px monospace';
        canvasCtx.textBaseline = 'bottom';
    }
    function hexToRGB(hex) {
        var base = hex.substring(1,7);
        return [
            parseInt(base.substring(0,2),16),
            parseInt(base.substring(2,4),16),
            parseInt(base.substring(4,6),16)
        ];
    }
    var matrixRain = function(options) {
        return new matrixRain.init(options);
    };
    var init = matrixRain.init = function(options) {
        for (var option in options) {
            if (!this.options.hasOwnProperty(option)) {
                continue;
            }
            this.options[option] = options[option];
        }
    };
    matrixRain.prototype.options = {
        canvas: 'canvas',
        background: '#000000',
        content: [1,2,3,4,5,6,7,8,9,0],
        speed: 30,
        fontSize: 10,
        color: '#0F0',
        finalColor: []
    };
    matrixRain.prototype.run = function() {
        setCanvas(this.options.canvas, this.options.background);
        setFont(this.options.fontSize);
        canvasCol = (canvas.width / this.options.fontSize) * 2;
        canvasRow = this.options.fontSize;
        this.options.content = this.options.content.map(function(v) {
            return String(v).substr(0, 1);
        }).filter(function(v) {
            return v.length > 0;
        });
        this.__generateContent();
        this.options.finalColor = hexToRGB(this.options.background);
        this.draw();
    };
    matrixRain.prototype.draw = function() {
        var that = this;
        var incrementX = canvasCtx.measureText(this.options.content[0]).width;
        setColor(this.options.color);
        for (i = 0; i < canvasCol; i++) {
            actualText = this.options.content[Math.floor(Math.random() * this.options.content.length)];
            canvasCtx.fillText(actualText, i * incrementX, arrayContent[i]);
        }
        this.__increaseContent();
        setColor('rgba(' + this.options.finalColor.join() + ',' + ((this.options.fontSize / 15) * 0.1).toFixed(2) + ')');
        canvasCtx.fillRect(0, 0, canvas.width, canvas.height);
        var method = function() {
            that.draw();
        };
        setTimeout(method, this.options.speed);
    };
    matrixRain.prototype.__generateContent = function() {
        for (var i = 0; i < canvasCol; i++) {
            arrayContent.push(Math.floor(Math.random() * canvas.height));
        }
    };
    matrixRain.prototype.__increaseContent = function() {
        for (var i = 0; i < canvasCol; i++) {
            if (arrayContent[i] > canvas.height) {
                arrayContent[i] = Math.floor(Math.random() * this.options.fontSize);
            } else {
                arrayContent[i] += this.options.fontSize - .5;
            }
        }
    };
    init.prototype = matrixRain.prototype;
    window.matrixRain = matrixRain;
});