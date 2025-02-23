# README.md

# Resume Project

This project is designed to generate a resume in multiple formats (PDF, HTML, and DOC) from a LaTeX source file. The LaTeX code for the resume is located in the `src/resume.tex` file.

## Project Structure

- `src/resume.tex`: Contains the LaTeX code for the resume, including sections for work experience and education.
- `dist/`: Directory where the output files (PDF, HTML, and DOC formats) will be stored.
- `scripts/convert.sh`: Shell script that contains the commands to convert the LaTeX file into the desired formats.
- `package.json`: Configuration file for npm, listing dependencies and scripts for the project.

## Prerequisites

Before running the conversion script, ensure you have the following installed:

- LaTeX distribution (e.g., TeX Live, MiKTeX)
- Pandoc (for HTML and DOC conversion)
- Bash shell (for running the script)

## How to Run the Conversion Script

1. Open a terminal and navigate to the project directory.
2. Run the following command to execute the conversion script:

   ```bash
   ./scripts/convert.sh
   ```

3. The output files will be generated and saved in the `dist/` directory.

## License

This project is licensed under the MIT License.