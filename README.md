# md2pdf example
2017.06

## Usage
- Place `Makefile`
    - list md filenames you want to compile
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

## Supported Syntax
### Items
- A
    - C
- B

1. aaaa
    1. hogehoge
2. bbbb

### Code Blocks
```python
for i in range(10):
    print(i)
```

Inline code `a = hoge()` here.

### Math
Inline $\pi$
Separated math below:
$$\sum_n f(n)$$

### Quote
> this is quote

### Definition List
Term 1
:   Hogehoge
