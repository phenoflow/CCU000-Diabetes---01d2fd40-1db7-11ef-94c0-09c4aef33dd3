# Angela Wood, Rachel Denholm, Sam Hollings, Jennifer Cooper, Samantha Ip, Venexia Walker, Spiros Denaxas, Ashley Akbari, Amitava Banerjee, William Whiteley, Alvina Lai, Jonathan Sterne, Cathie Sudlow, CVD-COVID-UK consortium, 2024.

import sys, csv, re

codes = [{"code":"185757002","system":"icd10"},{"code":"1066921000000106","system":"icd10"},{"code":"8801005","system":"icd10"},{"code":"771571000000102","system":"icd10"},{"code":"368601000119102","system":"icd10"},{"code":"237601000","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu000-diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu000-diabetes-second---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu000-diabetes-second---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu000-diabetes-second---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
