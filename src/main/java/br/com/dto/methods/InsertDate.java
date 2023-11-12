package br.com.dto.methods;

/**
 * year 2023 title Cupcake Store
 *
 * @author - Rodrigo Braga
 */
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class InsertDate {

	public String getDate() throws ParseException {

		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

		String x = sdf.format(date);

		return x;

	}

}
