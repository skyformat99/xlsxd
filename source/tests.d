import libxlsxd;

unittest {
    /* Create a new workbook and add a worksheet. */
    auto workbook  = newWorkbook("demo.xlsx");
    auto worksheet = workbook.addWorksheet(null);

    /* Add a format. */
    auto format = workbook.addFormat();

    /* Set the bold property for the format */
    format.setBold();

    /* Change the column width for clarity. */
    worksheet.setColumn(0, 0, 20);

    /* Write some simple text. */
    worksheet.writeString(0, 0, "Hello");

    /* Text with formatting. */
    worksheet.writeString(1, 0, "World", format);

    /* Write some numbers. */
    worksheet.writeNumber(2, 0, 123);
    worksheet.writeNumber(3, 0, 123.456);

	// for the lazy
    worksheet.write(4, 0, 13.37);
	// for the lazy
    worksheet.write(4, 1, true);

    worksheet.write(4, 2, "Hello 1337");
	worksheet.setColumn(4, 2, 20.0);

	size_t len = worksheet.writeAndGetWidth(5, 5, "Hello");
	assert(len == 5);

	len = worksheet.writeAndGetWidth(5, 6, true);
	assert(len == 4);

	len = worksheet.writeAndGetWidth(5, 6, false);
	assert(len == 5);

	len = worksheet.writeAndGetWidth(5, 7, 133);
	assert(len == 3);

	len = worksheet.writeAndGetWidth(5, 8, 133.7);
	assert(len == 5);
}
