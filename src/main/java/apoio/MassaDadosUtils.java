package apoio;

import java.util.Random;

import org.apache.commons.lang3.RandomStringUtils;

public class MassaDadosUtils {

	public String switValue(String value) {
		switch (value) {
		case "Em_BRANCO":
			return "  ";
			
		default:
			break;	

		}
		return value;
	}
	public static String gerarNomeAleatorio(int tamanho) {
		return RandomStringUtils.randomAlphabetic(tamanho);
	}
	
	public static String gerarNumeroAleatorio(int tamanho) {
		return RandomStringUtils.randomNumeric(tamanho);
	}
	
	public static String gerarCNPJ() {
		Random random = new Random();
		int[] digits = generateArray(random, 14, 12);
		digits[12] = 0;
		digits[13] = 0;
		// First digit
		int[] weight = new int[] { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
		int total = 0;
		for (int i = 0; i < 12; i++)
			total += digits[i] * weight[i + 1];
		int rest = total % 11;
		if (rest < 2)
			digits[12] = 0;
		else
			digits[12] = 11 - rest;
		// Second digit
		total = 0;
		for (int i = 0; i < 13; i++)
			total += digits[i] * weight[i];
		rest = total % 11;
		if (rest < 2)
			digits[13] = 0;
		else
			digits[13] = 11 - rest;
		
		return String.valueOf(arrayToLong(digits));
	}
	
	private static int[] generateArray(Random random, int length, int quantityOfZeros) {
		if (quantityOfZeros > length)
			throw new IllegalArgumentException("quantityOfZeros must be less or equal than length.");
		if (length <= 0)
			throw new IllegalArgumentException("length must be bigger than zero.");
		int[] digits = new int[length];
		int i;
		for (i = 0; i < quantityOfZeros; i++)
			digits[i] = random.nextInt(10);
		if (i < length)
			digits[i++] = 1 + random.nextInt(9); // != 0
		for (; i < length; i++)
			digits[i] = random.nextInt(10);
		return digits;
	}
	
	private static long arrayToLong(final int[] digits) {
		long result = 0;
		long pot = 1;
		for (int i = digits.length - 1; i >= 0; i--) {
			long partial = digits[i] * pot;
			if (Long.MAX_VALUE - result - partial > 0) {
				result += partial;
			} else
				return Long.MAX_VALUE;
			pot *= 10;
		}
		return result;
	}

}
