(()=>{"use strict";var f={519:function(f,e,a){var d=this&&this.__importDefault||function(f){return f&&f.__esModule?f:{default:f}};Object.defineProperty(e,"__esModule",{value:!0});const r=d(a(147)),t=a(928);(()=>{const{argv:f}=process;f[2]||(console.log("need a config file"),process.exit(1));const e=JSON.parse(r.default.readFileSync(f[2],"utf8")),{information:a,highlights:d}=e,{dark:n,light:o}=e.palletes,i=(0,t.buildStrings)(d,n),s=(0,t.buildStrings)(d,o),c=(0,t.fileText)(a,i,s);console.log(c)})()},409:function(f,e,a){var d=this&&this.__importDefault||function(f){return f&&f.__esModule?f:{default:f}};Object.defineProperty(e,"__esModule",{value:!0}),e.x256Color=e.rgbToHexCode=e.hexToRgb=e.parseRgb=void 0;const r=d(a(137));function t(f){let e,a,d;return Array.isArray(f)?(e=f[0],a=f[1],d=f[2]):"string"==typeof f?(/^rgb\([0-9]{3},[0-9]{3},[0-9]{3}\)/.test(f)||(console.error("Incorrect string format, must be rgb(0-255,0-255,0-255)"),process.exit(1)),e=parseInt(f.substr(4,3)),a=parseInt(f.substr(8,3)),d=parseInt(f.substr(12,3))):(e=f.r,a=f.g,d=f.b),void 0!==e&&void 0!==a&&void 0!==d||(console.error("missing color"),process.exit(1)),(e>255||e<0||a>255||a<0||d>255||d<0)&&(console.error("incorrect color value"),process.exit(1)),{string:`rgb(${e},${a},${d})`,array:[e,a,d],obj:{r:e,g:a,b:d}}}function n(f){f=f.replace(/^#?([a-f\d])([a-f\d])([a-f\d])$/i,(function(f,e,a,d){return e+e+a+a+d+d}));const e=/^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(f);return e?t([parseInt(e[1],16),parseInt(e[2],16),parseInt(e[3],16)]):null}function o(f,e,a){return`#${((1<<24)+(f<<16)+(e<<8)+a).toString(16).slice(1)}`}function i({r:f,g:e,b:a}){const d=r.default.map(((d,r)=>{const t=n(d);return{color:d,index:r,difference:Math.abs(f-t.obj.r)+Math.abs(e-t.obj.g)+Math.abs(a-t.obj.b)}})),t=Math.min(...d.map((f=>f.difference)));return d.filter((f=>f.difference===t))[0].index}e.parseRgb=t,e.hexToRgb=n,e.rgbToHexCode=o,e.x256Color=i,e.default=function(f){let e={rgb:null,hex:null,x256:null};if("number"==typeof f&&(e.hex=`#${r.default[f]}`,e.x256=f,e.rgb=n(e.hex)),"string"==typeof f&&"r"===f[0]){e.rgb=t(f);const{r:a,g:d,b:r}=e.rgb.obj;e.hex=o(a,d,r),e.x256=i({r:a,g:d,b:r})}return"string"==typeof f&&"#"===f[0]&&(e.rgb=n(f),e.hex=f,e.x256=i(e.rgb.obj)),e}},928:function(f,e,a){var d=this&&this.__importDefault||function(f){return f&&f.__esModule?f:{default:f}};Object.defineProperty(e,"__esModule",{value:!0}),e.fileText=e.buildStrings=void 0;const r=d(a(409));e.buildStrings=(f,e)=>{const a=[];return Object.entries(f).forEach((([f,{fg:d,bg:t,mod:n,link:o}])=>{let i=` ${f}`;if(d)if("-"===d)i+=" guifg=NONE ctermfg=NONE";else{const f=(0,r.default)(e[d]);i+=` guifg=${f.hex} ctermfg=${f.x256}`}if(t)if("-"===t)i+=" guibg=NONE ctermbg=NONE";else{const f=(0,r.default)(e[t]);i+=` guibg=${f.hex} ctermbg=${f.x256}`}if(n){let f="";n.forEach((e=>{0!=f.length&&(f+=","),f+=e})),i+=` gui=${f} cterm=${f}`}o&&(i=`! link ${f} ${o}`),a.push(`hi${i}`)})),a},e.fileText=(f,e,a)=>`set t_Co=256\nhi clear\nif exists('syntax_on')\n  syntax reset\nendif\nlet g:colors_name = '${f.name}'\n\nif &background == 'dark'\n\n${e.join(" \n")}\n\nelse\n\n${a.join(" \n")}\n\nendif\n`},137:(f,e)=>{Object.defineProperty(e,"__esModule",{value:!0}),e.default=["000000","800000","008000","808000","000080","800080","008080","c0c0c0","808080","ff0000","00ff00","ffff00","0000ff","ff00ff","00ffff","ffffff","000000","00005f","000087","0000af","0000d7","0000ff","005f00","005f5f","005f87","005faf","005fd7","005fff","008700","00875f","008787","0087af","0087d7","0087ff","00af00","00af5f","00af87","00afaf","00afd7","00afff","00d700","00d75f","00d787","00d7af","00d7d7","00d7ff","00ff00","00ff5f","00ff87","00ffaf","00ffd7","00ffff","5f0000","5f005f","5f0087","5f00af","5f00d7","5f00ff","5f5f00","5f5f5f","5f5f87","5f5faf","5f5fd7","5f5fff","5f8700","5f875f","5f8787","5f87af","5f87d7","5f87ff","5faf00","5faf5f","5faf87","5fafaf","5fafd7","5fafff","5fd700","5fd75f","5fd787","5fd7af","5fd7d7","5fd7ff","5fff00","5fff5f","5fff87","5fffaf","5fffd7","5fffff","870000","87005f","870087","8700af","8700d7","8700ff","875f00","875f5f","875f87","875faf","875fd7","875fff","878700","87875f","878787","8787af","8787d7","8787ff","87af00","87af5f","87af87","87afaf","87afd7","87afff","87d700","87d75f","87d787","87d7af","87d7d7","87d7ff","87ff00","87ff5f","87ff87","87ffaf","87ffd7","87ffff","af0000","af005f","af0087","af00af","af00d7","af00ff","af5f00","af5f5f","af5f87","af5faf","af5fd7","af5fff","af8700","af875f","af8787","af87af","af87d7","af87ff","afaf00","afaf5f","afaf87","afafaf","afafd7","afafff","afd700","afd75f","afd787","afd7af","afd7d7","afd7ff","afff00","afff5f","afff87","afffaf","afffd7","afffff","d70000","d7005f","d70087","d700af","d700d7","d700ff","d75f00","d75f5f","d75f87","d75faf","d75fd7","d75fff","d78700","d7875f","d78787","d787af","d787d7","d787ff","d7af00","d7af5f","d7af87","d7afaf","d7afd7","d7afff","d7d700","d7d75f","d7d787","d7d7af","d7d7d7","d7d7ff","d7ff00","d7ff5f","d7ff87","d7ffaf","d7ffd7","d7ffff","ff0000","ff005f","ff0087","ff00af","ff00d7","ff00ff","ff5f00","ff5f5f","ff5f87","ff5faf","ff5fd7","ff5fff","ff8700","ff875f","ff8787","ff87af","ff87d7","ff87ff","ffaf00","ffaf5f","ffaf87","ffafaf","ffafd7","ffafff","ffd700","ffd75f","ffd787","ffd7af","ffd7d7","ffd7ff","ffff00","ffff5f","ffff87","ffffaf","ffffd7","ffffff","080808","121212","1c1c1c","262626","303030","3a3a3a","444444","4e4e4e","585858","626262","6c6c6c","767676","808080","8a8a8a","949494","9e9e9e","a8a8a8","b2b2b2","bcbcbc","c6c6c6","d0d0d0","dadada","e4e4e4","eeeeee"]},147:f=>{f.exports=require("fs")}},e={};!function a(d){var r=e[d];if(void 0!==r)return r.exports;var t=e[d]={exports:{}};return f[d].call(t.exports,t,t.exports,a),t.exports}(519)})();