const CryptoJS = require("crypto-js");

const middleware = {

    decrypt: function (data) {

        var iv  = CryptoJS.enc.Base64.parse("G7qeaR2Yb4DAgk92ZQHdjQ==");
        var key=CryptoJS.SHA256("ImAwesomeAndHappy");
        var decrypt
      
          var decrypted = CryptoJS.AES.decrypt(data, key,{
                    iv: iv,
                    mode: CryptoJS.mode.CBC,
                    padding: CryptoJS.pad.Pkcs7
                });

        
        decrypt = JSON.parse(decrypted.toString(CryptoJS.enc.Utf8)) 

        return decrypt

    }

}


module.exports = middleware;