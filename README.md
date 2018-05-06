# md2pdf example
2018.05

## Install
- Install dependencies
- Copy `md2pdf` to where your PATH recognizes (e.g. /usr/local/bin/)
    make sure `$ md2pdf` on shell successes

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
- Watch
    - run `$ md2pdf -w hoge.md`
    - watch updates of `hoge.md`, and automatically compiles is into `hoge.md.pdf`
- or Single Compile
    - run `$ md2pdf hoge.md`
    - md -> tex -> pdf, generates `hoge.md.pdf`

## Dependence
- pandoc
- MacTex (or lualatex + packages needed)
- facebook/watchman

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
