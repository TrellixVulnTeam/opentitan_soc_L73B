#include <iostream>
#include <iomanip>
#include <fstream>
#include <algorithm>
#include <math.h>

using namespace std;

extern "C" int rfile(){
    cout << "Reading File!" << endl;
    
    ifstream file;
    string ins;
    
    file.open("/afs/eecs.umich.edu/vlsida/projects/restricted/google/khtaur/gf12_opentitan/opentitan_soc/tests/asm/output/program.hex");
    int totalLines = count(istreambuf_iterator<char>(file), istreambuf_iterator<char>(), '\n');
    
    file.clear();
    file.seekg(0, file.beg);
    if (!file){
        cerr << "Unable to open file";
    }
}