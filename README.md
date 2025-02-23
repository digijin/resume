# README.md

# Personal Resume

This project is designed to generate a resume in multiple formats (PDF, DOCX, and Markdown) from a LaTeX source file. The LaTeX code for the resume is located in the `src/resume.tex` file.

## Project Structure

- `src/resume.tex`: Contains the LaTeX code for the resume, including sections for work experience and education.
- `dist/`: Directory where the output files (PDF, DOCX, and Markdown formats) will be stored.
- `convert.sh`: Shell script that contains the commands to convert the LaTeX file into the desired formats.

## Prerequisites

Before running the conversion script, ensure you have the following installed:

- LaTeX distribution (e.g., TeX Live, MiKTeX)
- Pandoc (for DOCX and Markdown conversion)
- Bash shell (for running the script)

## How to Run the Conversion Script

1. Open a terminal and navigate to the project directory.
2. Run the following command to execute the conversion script:

   ```bash
   ./convert.sh
   ```

3. The output files will be generated and saved in the `dist/` directory.

## License

This project is licensed under the MIT License.