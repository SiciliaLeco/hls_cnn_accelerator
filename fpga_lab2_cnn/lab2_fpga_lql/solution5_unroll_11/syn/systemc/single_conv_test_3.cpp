#include "single_conv_test.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void single_conv_test::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"imgtotal_address0\" :  \"" << imgtotal_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"imgtotal_ce0\" :  \"" << imgtotal_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"imgtotal_q0\" :  \"" << imgtotal_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"weitotal_address0\" :  \"" << weitotal_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"weitotal_ce0\" :  \"" << weitotal_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"weitotal_q0\" :  \"" << weitotal_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outtotal_address0\" :  \"" << outtotal_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outtotal_ce0\" :  \"" << outtotal_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outtotal_we0\" :  \"" << outtotal_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outtotal_d0\" :  \"" << outtotal_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

