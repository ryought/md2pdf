# Example
2017.06

## Usage
- Write markdown
    - github flavored markdown style: section(#), item list, numbering, immidiate newline
    - with direct LaTeX syntax
        - math between dollers $e^{\pi i} = -1$
        - footnote \footnote{脚注}
    - some additions
        - Image(wrapfig - pdf,png,...)
        - Chemical Symbols(mhchem) \ce{Na2S2O3}
        - Url(url)
- Compile
    - to convert md into pdf: `$ make`
    - md -> tex -> pdf

## Dependence
- pandoc
- MacTex (or lualatex + packages needed)


\begin{figure}
\centering
\includegraphics[width=0.5\textwidth]{github-mark.png}
\caption{github mark}
\end{figure}

## Tips