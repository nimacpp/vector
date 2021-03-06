require 'chilkat'
require_relative 'colorama.rb'
class Enc
@ivHex = "000102030405060708090A0B0C0D0E0F"
@keyHex = "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

def dec(inFile)
    if inFile[-1] == 'n'
decrypt = Chilkat::CkCrypt2.new()

decrypt.put_CryptAlgorithm("aes")
decrypt.put_CipherMode("cbc")
decrypt.put_KeyLength(256)
decrypt.put_PaddingScheme(0)
decrypt.SetEncodedIV(@ivHex,"hex")
decrypt.SetEncodedKey(@keyHex,"hex")
# -----------------------------------
outFile = inFile[0..-2]
success = decrypt.CkDecryptFile(inFile,outFile)
File.delete(inFile) if File.exist?(inFile)
if (success == false)
    print decrypt.lastErrorText() + "\n".red;
else
    puts "[+] success ... complete #{inFile}".green
end
else
    puts "[-] Error encrypt ... #{inFile}".red
end
end
end
