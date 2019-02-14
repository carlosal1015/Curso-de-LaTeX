\begingroup
\makeatletter
\immediate\openout\js@verbatim@out=\js@Path animelayers.fdf
\begin{jsexpverbatimwrite}
\firstFDFline
1 0 obj
<< /FDF << /JavaScript << /Doc 2 0 R >> >> >>
endobj
2 0 obj
[ \csname\@gobble animelayersOBJ\endcsname]
endobj
3 0 obj
<<>>
stream
var _animeLayers = true;
var aebAnimeTimeOutF = new Object();
var aebAnimeTimeOutB = new Object();
var aebAnimeTimeOutC = new Object();
function aebAnimeLayersForward(animSpeed,nFrames,baseName)
{
    var timeinterval = animSpeed;
    aebAnimeTimeOutF = app.setInterval("aebAnimeTimeOutF.count++;"
        + "if (aebAnimeTimeOutF.count > " + nFrames +" ) app.clearInterval(aebAnimeTimeOutF);\r"
        + "else { if (aebAnimeTimeOutF.count == 1 ) getxBld('"+baseName+"\#1').state=true;\t"
        + "else { getxBld('"+baseName+"\#'+(aebAnimeTimeOutF.count-1)).state=false;\t"
        + "getxBld('"+baseName+"\#'+aebAnimeTimeOutF.count).state=true;}}", timeinterval);
    aebAnimeTimeOutF.start = 1;
    aebAnimeTimeOutF.count=0;
}
function aebAnimeLayersBackward(animSpeed,nFrames,baseName)
{
    var timeinterval = animSpeed;
    aebAnimeTimeOutB = app.setInterval("aebAnimeTimeOutB.count++;\r"
        + "if (aebAnimeTimeOutB.count > "+nFrames+") app.clearInterval(aebAnimeTimeOutB);\r"
        + "else { if (aebAnimeTimeOutB.count == "+nFrames+") getxBld('"+baseName+"\#1').state=false;\r"
        + "else { getxBld('"+baseName+"\#'+(aebAnimeTimeOutB.start-aebAnimeTimeOutB.count+1)).state=false;\r"
        + "getxBld('"+baseName+"\#'+(aebAnimeTimeOutB.start-aebAnimeTimeOutB.count)).state=true;}}", timeinterval);
    aebAnimeTimeOutB.start = nFrames;
    aebAnimeTimeOutB.count=0;
}
function aebAnimeLayersClear(animSpeed,nFrames,baseName)
{
    var timeinterval = animSpeed;
    aebAnimeTimeOutC = app.setInterval("aebAnimeTimeOutC.count++;\r"
        + "if (aebAnimeTimeOutC.count > "+nFrames+") app.clearInterval(aebAnimeTimeOutC);\r"
        + "else { getxBld('"+baseName+"\#'+(aebAnimeTimeOutC.start-aebAnimeTimeOutC.count+1)).state=false;}", timeinterval);
    aebAnimeTimeOutC.start = nFrames;
    aebAnimeTimeOutC.count=0;
}
endstream
endobj
trailer
<< /Root 1 0 R >>
\lastFDFline
*end{jsexpverbatimwrite}
\endgroup
