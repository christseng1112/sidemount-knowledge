const setupBilingualToggle = () => {
    const toggleLanguage = () => {
        const pathname = window.location.pathname; // e.g. /sidemount-knowledge/10_Concepts/Target-Demographics/
        const baseSegment = "/sidemount-knowledge";
        let relativePath = pathname;
        let hasBase = false;
        if (pathname.startsWith(baseSegment)) {
            relativePath = pathname.slice(baseSegment.length); // e.g. /10_Concepts/Target-Demographics/
            hasBase = true;
        }
        let newRelative = "";
        if (relativePath.startsWith("/en/")) {
            newRelative = relativePath.slice(3); // e.g. /10_Concepts/Target-Demographics/
        }
        else if (relativePath === "/en") {
            newRelative = "/";
        }
        else {
            newRelative = "/en" + relativePath; // e.g. /en/10_Concepts/Target-Demographics/
        }
        // Clean double slashes
        newRelative = newRelative.replace(/\/+/g, "/");
        if (newRelative === "")
            newRelative = "/";
        const finalPath = hasBase ? baseSegment + newRelative : newRelative;
        window.location.pathname = finalPath;
    };
    for (const button of document.getElementsByClassName("bilingual-toggle")) {
        button.addEventListener("click", toggleLanguage);
        window.addCleanup(() => button.removeEventListener("click", toggleLanguage));
    }
};
document.addEventListener("nav", setupBilingualToggle);
document.addEventListener("render", setupBilingualToggle);
export {};
