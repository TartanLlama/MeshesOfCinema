/*	
 *	jQuery dotdotdot 1.4.2
 *	
 *	Copyright (c) 2012 Fred Heusschen
 *	www.frebsite.nl
 *
 *	Plugin website:
 *	dotdotdot.frebsite.nl
 *
 *	Dual licensed under the MIT and GPL licenses.
 *	http://en.wikipedia.org/wiki/MIT_License
 *	http://en.wikipedia.org/wiki/GNU_General_Public_License
 */

eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('(5($){2($.x.r){4}$.x.r=5(o){2(8.s==0){15(y,\'1C 1D 1E J "\'+8.1F+\'".\');4 8}2(8.s>1){4 8.1G(5(){$(8).r(o)})}6 b=8,$16=8[0];2(b.K(\'r\')){b.F(\'1l.u\')}b.1m=5(){b.L(\'G.u\',5(e,c){e.S();e.T();p.17=(9 p.A==\'1H\')?p.A:1n(b);p.17+=p.1o;2(9 c!=\'B\'){2(9 c==\'18\'||c 1p 1I){c=$(\'<19 />\').C(c).U()}2(c 1p $){d=c}}$v.V();$v.C(d.1q(y));6 a=7,M=7;2(w.W){a=w.W.1q(y);w.W.H()}2(N($v,p)){2(p.1a==\'O\'){M=O($v,p,a)}t{M=D($v,$v,p,a)}}w.q=M;4 M});b.L(\'q.u\',5(e,a){e.S();e.T();2(9 a==\'5\'){a.I($16,w.q)}4 w.q});b.L(\'1J.u\',5(e,a){e.S();e.T();2(9 a==\'5\'){a.I($16,d)}4 d});b.L(\'1l.u\',5(e){e.S();e.T();b.1b();b.1r();b.V();b.C(d);b.K(\'r\',7)})};b.1r=5(){b.1K(\'.u\')};b.P=5(){b.1b();2(p.P==\'Q\'){$(Q).L(\'1L.u\',5(){2(E){1s(E)}E=1M(5(){b.F(\'G.u\')},10)})}t{R=X(b);E=1N(5(){6 a=X(b);2(R.Y!=a.Y||R.A!=a.A){b.F(\'G.u\');R=X(b)}},1O)}};b.1b=5(){2(E){1s(E)}};6 d=b.U(),p=$.1P(y,{},$.x.r.1t,o),w={},R={},E=1c,$v=b.1Q(\'<\'+p.1u+\' 1R="r" />\').O();w.W=1v(p.1d,$v);w.q=7;$v.1w({\'A\':\'1x\',\'Y\':\'1x\'});b.K(\'r\',y);b.1m();b.F(\'G.u\');2(p.P){b.P()}4 b};$.x.r.1t={\'1u\':\'19\',\'D\':\'... \',\'1a\':\'1S\',\'1o\':0,\'1d\':1c,\'A\':1c,\'P\':7,\'15\':7};5 O(b,o,c){6 d=b.O(),q=7;b.V();J(6 a=0,l=d.s;a<l;a++){6 e=d.1y(a);b.C(e);2(c){b.C(c)}2(N(b,o)){e.H();q=y;1e}t{2(c){c.H()}}}4 q}5 D(b,c,o,d){6 f=b.U(),q=7;b.V();6 g=\'1T, 1U, 1V, 1W, 1X, 1Y, 1Z, 1z, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 2a\';J(6 a=0,l=f.s;a<l;a++){2(q){1e}6 e=f[a],$e=$(e);2(9 e==\'B\'){2b}b.C($e);2(d){6 h=(b.2c(g))?\'1d\':\'C\';b[h](d)}2(e.2d==3){2(N(c,o)){q=1f($e,c,o,d)}}t{q=D($e,c,o,d)}2(!q){2(d){d.H()}}}4 q}5 1f(b,c,o,d){6 f=7,e=b[0];2(9 e==\'B\'){4 7}6 g=(o.1a==\'2e\')?\'\':\' \',Z=11(e).2f(g);1g(e,Z.2g(g)+o.D);J(6 a=Z.s-1;a>=0;a--){2(N(c,o)){6 h=11(e).s-(Z[a].s+g.s+o.D.s),1A=(h>0)?11(e).2h(0,h):\'\';1g(e,1A+o.D)}t{f=y;1e}}2(!f){6 i=b.2i();b.H();$n=i.U().1y(-1);f=1f($n,c,o,d)}4 f}5 N(a,o){4 a.1h()>o.17}5 X(a){4{\'Y\':a.2j(),\'A\':a.1h()}}5 1g(e,a){2(e.12){e.12=a}t 2(e.13){e.13=a}t 2(e.14){e.14=a}}5 11(e){2(e.12){4 e.12}t 2(e.13){4 e.13}t 2(e.14){4 e.14}t{4""}}5 1v(e,a){2(9 e==\'B\'){4 7}2(!e){4 7}2(9 e==\'18\'){e=$(e,a);4(e.s)?e:7}2(9 e==\'1z\'){4(9 e.2k==\'B\')?7:e}4 7}5 1n(b){6 h=b.1h(),a=[\'2l\',\'2m\'];J(z=0,l=a.s;z<l;z++){6 m=2n(b.1w(a[z]));2(2o(m)){m=0}h-=m}4 h}5 15(d,m){2(!d){4 7}2(9 m==\'18\'){m=\'r: \'+m}t{m=[\'r:\',m]}2(Q.1i&&Q.1i.1B){Q.1i.1B(m)}4 7}6 j=$.x.1j;$.x.1j=5(a){2(9 a!=\'B\'){2(8.K(\'r\')){2(9 a!=\'5\'){4 8.F(\'G\',[a])}}4 j.I(8,a)}4 j.I(8)};6 k=$.x.1k;$.x.1k=5(a){2(9 a!=\'B\'){2(8.K(\'r\')){6 b=$(\'<19 />\');b.1k(a);a=b.1j();b.H();4 8.F(\'G\',[a])}4 k.I(8,a)}4 k.I(8)}})(2p);',62,150,'||if||return|function|var|false|this|typeof||||||||||||||||opts|isTruncated|dotdotdot|length|else|dot|inr|conf|fn|true||height|undefined|append|ellipsis|watchInt|trigger|update|remove|call|for|data|bind|trunc|test|children|watch|window|watchOrg|preventDefault|stopPropagation|contents|empty|afterElement|getSizes|width|textArr||getTextContent|innerText|nodeValue|textContent|debug|tt0|maxHeight|string|div|wrap|unwatch|null|after|break|ellipsisElement|setTextContent|innerHeight|console|html|text|destroy|bind_events|getTrueInnerHeight|tolerance|instanceof|clone|unbind_events|clearInterval|defaults|wrapper|getElement|css|auto|eq|object|txt|log|No|element|found|selector|each|number|HTMLElement|originalContent|unbind|resize|setTimeout|setInterval|100|extend|wrapInner|class|word|table|thead|tbody|tfoot|tr|col|colgroup|embed|param|ol|ul|dl|select|optgroup|option|textarea|script|style|continue|is|nodeType|letter|split|join|substring|parent|innerWidth|jquery|paddingTop|paddingBottom|parseInt|isNaN|jQuery'.split('|'),0,{}))