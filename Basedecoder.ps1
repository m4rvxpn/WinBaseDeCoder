param(
    [string]$inputFilePath,
    [string]$encryptionKey
)

# Check if the input file exists
if (-not (Test-Path -Path $inputFilePath -PathType Leaf)) {
    Write-Host "Input file not found."
    exit 1
}

# Read the base64-encoded data from the input file
try {
    $base64EncryptedData = Get-Content -Path $inputFilePath -Raw
}
catch {
    Write-Host "Error reading the input file: $_"
    exit 1
}

# Convert the base64-encoded data to bytes
$encryptedBytes = [System.Convert]::FromBase64String($base64EncryptedData)

# Create a new AES object
$aes = [System.Security.Cryptography.AesManaged]::new()
$aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
$aes.Key = [System.Text.Encoding]::UTF8.GetBytes($encryptionKey)

# Decrypt the data
$decryptor = $aes.CreateDecryptor()
$decryptedBytes = $decryptor.TransformFinalBlock($encryptedBytes, 0, $encryptedBytes.Length)

# Convert the decrypted bytes to a string
$decryptedText = [System.Text.Encoding]::UTF8.GetString($decryptedBytes)

# Output the decrypted text
Write-Host "Decrypted Text: $decryptedText"
