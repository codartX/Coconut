import sys
import getopt
from Crypto.PublicKey import RSA

def main(argv):
    try:
        opts, args = getopt.getopt(argv,"hs:",["hex_string="])
    except getopt.GetoptError:
        print 'encrypt_pwd.py -s <hex_string> '
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'encrypt_pwd.py -s <hex_string> '
            sys.exit()
        elif opt in ("-s", "--hex_string"):
            input_str = arg
    f = open('pubkey.pem', 'r')
    r = RSA.importKey(f.read())
    f1 = open('data.txt', 'w+')
    f1.write(input_str.decode('hex'))
    f1.close()
    f1 = open('en_data.txt', 'w+')
    print input_str.decode('hex')
    f1.write(r.encrypt(input_str.decode('hex'), 32)[0])
    f.close()
    f1.close()

if __name__ == "__main__":
    main(sys.argv[1:])
