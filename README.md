# PowerShell Base64 Decryption Script

This PowerShell script is designed to decrypt base64-encoded data using the AES encryption algorithm with a specified key. It can be used to decrypt sensitive data securely.

## Table of Contents

- [Usage](#usage)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Contributing](#contributing)
- [License](#license)

## Usage

To use this script to decrypt base64-encoded data, follow these steps:

1. Clone or download this repository to your local machine.
2. Open a PowerShell terminal.
3. Navigate to the directory containing the script.

   ```powershell
   cd path/to/script-directory```
Run the script with the -inputFilePath and -encryptionKey parameters. Replace the placeholders with your specific input file and encryption key.

powershell
Copy code
.\decrypt.ps1 -inputFilePath "input.txt" -encryptionKey "YourEncryptionKeyHere"
The script will read the input file, decrypt the data, and display the decrypted text in the terminal.

Prerequisites
Before using this script, ensure you have the following prerequisites:

PowerShell installed on your system.
Getting Started
Clone this repository to your local machine or download the script file decrypt.ps1.

bash
Copy code
git clone https://github.com/yourusername/your-repo.git
Open a PowerShell terminal.

Navigate to the directory containing the script.

powershell
Copy code
cd path/to/script-directory
Follow the usage instructions provided above to decrypt your base64-encoded data.
