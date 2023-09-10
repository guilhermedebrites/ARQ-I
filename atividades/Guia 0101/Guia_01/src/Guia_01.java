/*
     Arquitetura de Computadores I - Guia_01.java
     808721 - Guilherme Gomes de Brites
 */
public class Guia_01
{
    private static int errors = 0;
    public static void test_equals ( Object x, Object y )
    {
        if ( (""+x).compareTo(""+y) != 0 )
            errors = errors + 1;
    } // end test_equals ( )
    public static String test_report ( )
    {
        return ( ""+errors );
    } // end test_report ( )
    public static String dec2bin ( int value )
    {
        String binario = Integer.toBinaryString(value);
        return binario;
    } // end dec2bin ( )
    public static int bin2dec ( String value )
    {
        return Integer.parseInt(value, 2);
    } // end bin2dec ( )
    public static String dec2base ( int value, int base )
    {
        if (base == 4) {
            StringBuilder base4 = new StringBuilder();

            while (value > 0) {
                int digit = value % 4;
                base4.insert(0, digit);
                value /= 4;
            }

            return base4.toString();
        } else if (base == 16) {
            StringBuilder hexadecimal = new StringBuilder();

            while (value > 0) {
                int digit = value % 16;
                if (digit < 10) {
                    hexadecimal.insert(0, digit);
                } else {
                    char hexDigit = (char) ('A' + (digit - 10));
                    hexadecimal.insert(0, hexDigit);
                }
                value /= 16;
            }

            return hexadecimal.toString();
        } else if (base == 8) {
            StringBuilder octal = new StringBuilder();

            while (value > 0) {
                int digit = value % 8;
                octal.insert(0, digit);
                value /= 8;
            }

            return octal.toString();
        }

        return "Base não encontrada!";
    } // end dec2base ( )
    public static String bin2base ( String value, int base )
    {
        int length = value.length();
        if(base == 4){
            int base4Length = (length + 1) / 2;
            StringBuilder base4 = new StringBuilder();

            if (length % 2 != 0) {
                value = "0" + value;
            }

            for (int i = 0; i < length; i += 2) {
                String twoDigits = value.substring(i, i + 2);
                int decimal = Integer.parseInt(twoDigits, 2);
                base4.append(decimal);
            }
            return base4.toString();
        }
        else if(base == 16){
            int hexLength = (length + 3) / 4;
            StringBuilder hexadecimal = new StringBuilder();

            while (value.length() % 4 != 0) {
                value = "0" + value;
            }

            for (int i = 0; i < length; i += 4) {
                String fourDigits = value.substring(i, i + 4);
                int decimal = Integer.parseInt(fourDigits, 2);
                String hexDigit = Integer.toHexString(decimal);
                hexadecimal.append(hexDigit.toUpperCase());
            }

            return hexadecimal.toString();
        }
        else if(base == 8){
            int octalLength = (length + 2) / 3;
            StringBuilder octal = new StringBuilder();

            while (value.length() % 3 != 0) {
                value = "0" + value;
            }

            for (int i = 0; i < length; i += 3) {
                String threeDigits = value.substring(i, i + 3);
                int decimal = Integer.parseInt(threeDigits, 2);
                octal.append(decimal);
            }

            return octal.toString();
        }
        return "base não encontrada!";
    } // end bin2base ( )

    public static String ASCII2hex(String value) {
        StringBuilder hex = new StringBuilder();

        for (char c : value.toCharArray()) {
            String hexString = Integer.toHexString(c);
            hex.append(hexString);
        }

        return hex.toString().toUpperCase();
    }

    public static String hex2ASCII ( String value )
    {
        StringBuilder asciiStringBuilder = new StringBuilder();

        for (int i = 0; i < value.length(); i += 2) {
            String hexPair = value.substring(i, Math.min(i + 2, value.length()));

            int decimalValue = Integer.parseInt(hexPair, 16);

            char asciiChar = (char) decimalValue;

            asciiStringBuilder.append(asciiChar);
        }

        return asciiStringBuilder.toString();
    }

    public static String octalToASCII(String octalNumber) {
        StringBuilder result = new StringBuilder();

        for (int i = 0; i < octalNumber.length(); i += 3) {
            String octalGroup = octalNumber.substring(i, Math.min(i + 3, octalNumber.length()));

            int decimalValue = Integer.parseInt(octalGroup, 8);

            char asciiChar = (char) decimalValue;

            result.append(asciiChar);
        }

        return result.toString();
    }

    public static String asciiToBinary(String text) {
        StringBuilder binaryString = new StringBuilder();

        for (char character : text.toCharArray()) {
            int asciiValue = (int) character;

            for (int i = 7; i >= 0; i--) {
                int bitValue = (asciiValue >> i) & 1;
                binaryString.append(bitValue);
            }
        }

        return binaryString.toString();
    }


    public static void main ( String [ ] args )
    {
        System.out.println ( "Guia_01 - Java Tests " );
        System.out.println ( "808721 - Guilherme Gomes de Brites " );
        System.out.println ( );
        test_equals ( dec2bin ( 26 ), "11010" );
        test_equals ( dec2bin ( 53 ), "110101" );
        test_equals ( dec2bin ( 723 ), "1011010011" );
        test_equals ( dec2bin ( 312 ), "100111000" );
        test_equals ( dec2bin ( 365 ), "101101101" );
        System.out.println ( "1. errorTotalReport = "+test_report ( ) );
        test_equals ( bin2dec ( "10110" ), 22 );
        test_equals ( bin2dec ( "11011" ), 27 );
        test_equals ( bin2dec ( "100100" ), 36 );
        test_equals ( bin2dec ( "101001" ), 41 );
        test_equals ( bin2dec ( "110111" ), 55 );
        System.out.println ( "2. errorTotalReport = "+test_report ( ) );
        test_equals ( dec2base ( 61, 4 ), "331" );
        test_equals ( dec2base ( 54, 8 ), "66" );
        test_equals ( dec2base ( 77, 16 ), "4D" );
        test_equals ( dec2base ( 151, 16 ), "97" );
        test_equals ( dec2base ( 738, 16 ), "2E2" );
        System.out.println ( "3. errorTotalReport = "+test_report ( ) );
        test_equals ( bin2base ( "10101", 4 ), "111" );
        test_equals ( bin2base ( "11010", 8 ), "32" );
        test_equals ( bin2base ( "100111", 16 ), "27" );
        test_equals ( bin2base ( "101001", 8 ), "51" );
        test_equals ( bin2base ( "101101", 4 ), "231" );
        System.out.println ( "4. errorTotalReport = "+test_report ( ) );
        test_equals ( ASCII2hex ( "PUC-Minas" ), "5055432D4D696E6173" );
        test_equals ( ASCII2hex ( "2023-02" ), "323032332D3032" );
        test_equals ( asciiToBinary ( "Belo Horizonte" ), "0100001001100101011011000110111100100000010010000110111101110010011010010111101001101111011011100111010001100101" );
        test_equals ( octalToASCII ( "116157151164145" ), "Noite" ); // OBS.: 116 e' o primeiro octal (0116)!
        test_equals ( hex2ASCII ( "4D2E20472E" ), "M. G." ); // OBS.: 4D e' o primeiro hexadecimal (0x4D)!
        System.out.println ( "5. errorTotalReport = "+test_report( ) );

        System.out.print ( "\n\nApertar ENTER para terminar." );
        System.console ( ).readLine ( );
    } // end main
} // end class