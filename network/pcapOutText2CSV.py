'''
Parser to parse multiple lines of tshark data field text output into csv
Tshark command to extract from pcap:
tshark.exe -r "<input pcap file>" -T fields -e data > "<output file path>"
'''

data = ""
db = []
with open('C:\\Users\\aaa\\Desktop\\output_pcap.txt','r') as input:
	with open('C:\\Users\\aaa\Desktop\\pcap_parsed.csv', 'w') as output:
		for line in input:
			data = line + "\n"
			output.writelines("00,01,02,03,04,05,06,07,08,09,0A,0B,0C,0D,0E,0F\n") # print the top rows

			for index in range(len(data)):
                                if index%2 == 0:
                                        db.append((data[index:index+2].upper()))
                        rows = len(db) // 16
                        if len(db)%16 != 0 :
                                rows += 1
                        for row in range(rows):
                                output.writelines(",".join(db[16*row:16*(row+1)]) + "\n") # can change the "," to other delimiters
                        db = [] # clears the array for next line
			
			output.write(y+" ")
	print("done")
