Play framework have some out-of box integration with Twitter Bootstrap but it is not good enough, also grunt is much better for doing simple tasks that sbt at least for front end stuff. 

<h2> What tools are included:</h2>
<ol>
    <li><a href="https://github.com/twbs/bootstrap">Boostrap</a></li>
    <li>jQuery 2.1.1</li>
    <li>bower to manage Dependency</li>
    <li>grunt to auto-compile LESS</li>
    <li>grunt to auto sync browser</li>
    <li><a href="http://modernizr.com/docs/">modernizr</a> to work with browsers</li>
    <li><a href="https://github.com/scottjehl/Respond">respond</a> for IE8 media queries</li>
    <li><a href="http://code.google.com/p/html5shiv/"> html5shiv</a> to support HTML5 in IE</li>
</ol>

<h2>Requirements: </h2>
<ol>
    <li><a href="http://nodejs.org/">node.js</a></li>
    <li><a href="https://www.npmjs.org/doc/README.html">npm</a></li>
    <li><a href="http://gruntjs.com/getting-started">grunt</a></li>
    <li><a href="https://github.com/bower/bower">bower</a></li>
</ol>

<h2>1. Instalation</h2>
<ol>
    <li>Clone this repository</li>
    <li>Configure your Gruntfile.js only if you use diffrent config that "localhost:9000" for play</li>
    <li>use sudo update.sh script or cd to PlayBootstrapProject/app/asssets and run this commands:
        <ul>
        <li>npm install grunt-browser-sync --save-dev</li>
        <li>npm install    → This will install grunt dependencies</li>
        </ul>
    </li>
     <li>Copy and paste everything from PlayBootstrapProject and drop it to you Play project merging stuff</li>
     <li>cd yourPlayAppliocation/app and:
        <ul>
            <li>grunt          → start grunt task in terminal</li>
            <li>change less entry point to stop play auto-compilaition of less files add this line to build.sbt
                <ul>
                    <li>lessEntryPoints <pre><<=</pre> baseDirectory(_ / "app" / "assets" / "stylesheets" / "less" ** "custom.less")</li>
                </ul>
            </li>
        </ul>
    </li>
</ol>





<h2>Updating Dependencies</h2>
<p>If you use linux , you can run: </p>
<ol>
    <li>chmod 755 ./update.sh</li>
    <li>sudo update.sh</li>
</ol>


<p>On any other OS us bower</p>
<ol>
    <li>go to Sources and run bower update</li>
    <li>Then manualy copy/paste stuff to correct folders  </li>
</ol>


<pre>
This project anatomy:

app                      → Application sources
 └ assets                → Compiled asset sources
    └ stylesheets        → Typically LESS CSS sources
        └ less           → Bootstrap LESS sources
    └ javascripts        → modernizr.js 
  Gruntfile.js           → Grunt configuartion
  └ views                → Updated index.scala.html and main.scala.html

public                   → Public assets
 └ stylesheets           → Bootstrap compiled CSS files
 └ javascripts           → Custom Javascript files and compilled javascrpit for Bootstrap, also HTML5shiv, Respond
 └ images                → Images files 
 └ fonts                 → Bootstrap fonts and any other
 └ jquery                → jQuery 
index.html               → Working basic template.
</pre>
