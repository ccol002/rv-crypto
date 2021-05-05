
To run the tests, you need fresh database. You can copy files in db/ folder to have fresh one, or you can do it yourself with:
https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/NSS_Sample_Code/Sample2_-_Initialize_NSS_Database

you need to build nss, and edit CMakeLists to your config. If any questions, contact me on peter.spacek@stuba.sk


you can build code in src (with clion) and run it with:

./testNSS -d "db/" -c a  -i "messages.txt" -o "messagesEnc.txt"
