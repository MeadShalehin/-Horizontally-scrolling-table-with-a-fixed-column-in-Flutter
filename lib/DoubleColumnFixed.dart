import 'package:flutter/material.dart';

class Double_Column extends StatelessWidget {
  const Double_Column();

  @override
  Widget build(BuildContext context) {
    final double rowHeight = 28.0; // Define the row height based on font size

    return Scaffold(
      appBar: AppBar(
        title: Text("Double Column"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              children: [
                // Fixed first column
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 240, // Width of the first column
                    child: DataTable(
                      columnSpacing: 2,
                      horizontalMargin: 5,
                      dataRowHeight: rowHeight,
                      columns: [
                        DataColumn(
                          label: Text('Column A'),
                        ),
                        DataColumn(
                          label: Text('Column B'),
                        ), // Added DataColumn for Column B
                      ],
                      rows: List<DataRow>.generate(
                        200,
                        (index) => DataRow(
                          cells: [
                            DataCell(
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: rowHeight,
                                  child: Text('A' * (10 - index % 10)),
                                ),
                              ),
                            ),
                            DataCell(
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: rowHeight,
                                  child: Text('B' * (10 - index % 10)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                // Scrollable columns
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 2,
                      horizontalMargin: 5,
                      dataRowHeight: rowHeight,
                      columns: [
                        DataColumn(
                          label: Text('Column C'),
                        ),
                        DataColumn(
                          label: Text('Column D'),
                        ),
                        DataColumn(
                          label: Text('Column NUMBERS'),
                          numeric: true,
                        ),
                      ],
                      rows: List<DataRow>.generate(
                        200,
                        (index) => DataRow(
                          cells: [
                            DataCell(
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: rowHeight,
                                  child: Text('C' * (10 - (index + 5) % 10)),
                                ),
                              ),
                            ),
                            DataCell(
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: rowHeight,
                                  child: Text('D' * (15 - (index + 10) % 10)),
                                ),
                              ),
                            ),
                            DataCell(
                              Align(
                                alignment: Alignment
                                    .centerRight, // Aligning to top right side
                                child: Container(
                                  height: rowHeight,
                                  child: Text(((index + 0.1) * 25.4)
                                      .toStringAsFixed(
                                          2)), // Formatting to two decimal places
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
