# Resume

Ali Tabesh (Backend Software Engineer) resume in LaTeX using AltaCV template.

More about me at [https://alitabesh.dev](https://alitabesh.dev)

## Download

📄 **[Download Latest Resume (PDF)](https://github.com/alty-ir/Resume/releases/download/latest/main.pdf)**

## About

This is a professional resume/CV created using the **AltaCV** document class (v1.1.4), which provides an elegant two-column layout with a sidebar for skills, education, and references.

## Prerequisites

To compile this LaTeX document, you need:

- **LaTeX Distribution**: TeX Live, MiKTeX, or MacTeX
- **pdflatex** compiler (included in most LaTeX distributions)
- **Required LaTeX Packages**:
  - altacv (document class)
  - fontawesome (icons)
  - geometry (page layout)
  - xcolor (colors)
  - tikz (graphics)
  - biblatex (bibliography management)
  - lato (font family)

## Project Structure

```
.
├── main.tex           # Main resume document
├── page1sidebar.tex   # Sidebar content (skills, education, languages, references)
├── page2sidebar.tex   # Second page sidebar (currently commented out)
├── altacv.cls         # AltaCV document class
├── alitabesh.jpg      # Profile photo
└── README.md          # This file
```

## How to Compile

### Using pdflatex (Recommended)

The simplest way to compile the resume:

```bash
pdflatex main.tex
```

This will generate `main.pdf` in the same directory.

### Using latexmk (Advanced)

For automatic recompilation and better dependency handling:

```bash
latexmk -pdf main.tex
```

To clean auxiliary files:

```bash
latexmk -c
```

To clean all generated files including the PDF:

```bash
latexmk -C
```

### Multiple Compilations

If you're using bibliography references, you may need to run pdflatex multiple times:

```bash
pdflatex main.tex
biber main        # or bibtex main
pdflatex main.tex
pdflatex main.tex
```

## Customization

### Personal Information

Edit `main.tex` to update:
- Name and title
- Contact information (email, phone, location)
- Social media links (LinkedIn, GitHub, etc.)
- Profile photo

### Sidebar Content

Edit `page1sidebar.tex` to modify:
- **Expertise**: Technical skills and main competencies
- **Familiar With**: Additional technologies and tools
- **Education**: Academic background
- **Languages**: Language proficiencies
- **Referees**: Professional references

### Colors

Customize colors in `main.tex`:

```latex
\definecolor{VividPurple}{HTML}{008080}  % Main accent color
\definecolor{SlateGrey}{HTML}{2E2E2E}    % Text color
```

### Layout

Adjust page geometry in `main.tex`:

```latex
\geometry{left=1cm,right=9cm,marginparwidth=6.8cm,marginparsep=1.2cm,top=1cm,bottom=1cm}
```

## Generated Files

After compilation, the following files are created:

- `main.pdf` - Final PDF output
- `main.aux` - Auxiliary file for cross-references
- `main.log` - Compilation log
- `main.bbl` - Bibliography data
- `main.bcf` - Biblatex control file
- `main.blg` - Bibliography log
- `main.fdb_latexmk` - Latexmk database
- `main.fls` - File list
- `main.run.xml` - Bibliography run information

These auxiliary files can be safely deleted (except the PDF).

## Troubleshooting

### Missing Packages

If you get errors about missing packages, install them using your LaTeX distribution's package manager:

**TeX Live:**
```bash
tlmgr install package-name
```

**MiKTeX:**
```bash
mpm --install=package-name
```

### Font Issues

If you encounter font-related errors, ensure the Lato font package is installed, or switch to a different font in `main.tex`.

### Compilation Errors

Check `main.log` for detailed error messages. Common issues:
- Missing packages
- Syntax errors in LaTeX code
- Missing image files

## License

This template is based on AltaCV (v1.1.4) by LianTze Lim, which is distributed under the LaTeX Project Public License v1.3 or later.

## Credits

- **AltaCV Template**: LianTze Lim
- **Based on**: Resume design by BusinessInsider for Marissa Mayer

