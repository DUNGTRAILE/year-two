import {log} from './logg/index.js';
import * as constall from './constan.js';

console.log(constall)
// loggerr('text')



//enhanced object literals
// định nghĩa key
//định nghĩa method cho object 
// định nghĩa key cho object dưới dạng biến

let name = 'nameu'
let live = 'live'




let people = {
    [name] : 'dung',
    [live] : 'trai le',
    getname(){ 
        return name
    }
}

console.log(people)