import { jsx as _jsx, jsxs as _jsxs } from "preact/jsx-runtime";
const classNames = (...classes) => classes.filter(Boolean).join(" ");
const bilingualScript = `
const setupBilingualToggle = () => {
  const toggleLanguage = () => {
    const pathname = window.location.pathname;
    const baseSegment = "/sidemount-knowledge";
    
    let relativePath = pathname;
    let hasBase = false;
    if (pathname.startsWith(baseSegment)) {
      relativePath = pathname.slice(baseSegment.length);
      hasBase = true;
    }
    
    let newRelative = "";
    if (relativePath.startsWith("/en/")) {
      newRelative = relativePath.slice(3);
    } else if (relativePath === "/en") {
      newRelative = "/";
    } else {
      newRelative = "/en" + relativePath;
    }
    
    newRelative = newRelative.replace(/\\/+/g, "/");
    if (newRelative === "") newRelative = "/";
    
    const finalPath = hasBase ? baseSegment + newRelative : newRelative;
    window.location.pathname = finalPath;
  };

  for (const button of document.getElementsByClassName("bilingual-toggle")) {
    button.addEventListener("click", toggleLanguage);
    if (window.addCleanup) {
      window.addCleanup(() => button.removeEventListener("click", toggleLanguage));
    }
  }
};

document.addEventListener("nav", setupBilingualToggle);
document.addEventListener("render", setupBilingualToggle);
`;
const styles = `
.bilingual-toggle {
  cursor: pointer;
  padding: 0;
  position: relative;
  background: none;
  border: none;
  width: 20px;
  height: 32px;
  margin: 0;
  text-align: inherit;
  flex-shrink: 0;
  display: flex;
  align-items: center;
  justify-content: center;
}
.bilingual-toggle svg {
  width: 20px;
  height: 20px;
  stroke: var(--darkgray);
  transition: transform 0.2s ease, stroke 0.2s ease;
}
.bilingual-toggle:hover svg {
  transform: scale(1.1);
  stroke: var(--secondary);
}
`;
const BilingualToggle = ({ displayClass }) => {
    const title = "🌐 Toggle Language / 中英切換";
    return (_jsx("button", { class: classNames(displayClass, "bilingual-toggle"), "aria-label": title, title: title, children: _jsxs("svg", { xmlns: "http://www.w3.org/2000/svg", width: "24", height: "24", viewBox: "0 0 24 24", fill: "none", stroke: "currentColor", "stroke-width": "2", "stroke-linecap": "round", "stroke-linejoin": "round", children: [_jsx("circle", { cx: "12", cy: "12", r: "10" }), _jsx("line", { x1: "2", y1: "12", x2: "22", y2: "12" }), _jsx("path", { d: "M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z" })] }) }));
};
BilingualToggle.beforeDOMLoaded = bilingualScript;
BilingualToggle.css = styles;
export default () => BilingualToggle;
