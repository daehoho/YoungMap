module.exports = function(app, config)
{
     app.get('/naver',function(req,res){
        res.render('naver', {clientid: config.clientid})
     });
     app.get('/kakao',function(req,res){
        res.render('kakao.html');
    });
}