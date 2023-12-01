var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.jsonp({ title: 'Express', message: 'Hello World! From Main Routes' });
});

module.exports = router;
