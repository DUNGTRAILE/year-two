export default function TabButton({children,onSelect}){
    return (
        <li onClick={onSelect}><button>{children}</button></li>
    )
}

// export default function TabButton({batky}){
//     return (
//         <li><button>{batky}</button></li>
//     )
// }