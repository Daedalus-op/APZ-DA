#include"DELETE_Q.hpp"

namespace xf {
namespace database {
namespace details {
namespace delete_1{

template <int HASHW, int COLW, int PW, int KeyW>
void delete_1(hls::stream<ap_uint<HASHW>>& i_hash_strm, 
              hls::stream<ap_uint<COLW>>& i_col1_strm,
              hls::stream<ap_uint<COLW>>& i_col2_strm,
              hls::stream<ap_uint<COLW>>& i_col3_strm,
              hls::stream<ap_uint<PW>>& i_payload_strm,
              hls::stream<bool>& i_e_strm,
              hls::stream<ap_uint<KeyW>>& i_d_key1_strm,
              hls::stream<ap_uint<HASHW>>& o_hash_strm,
              hls::stream<ap_uint<COLW>>& o_col1_strm,
              hls::stream<ap_uint<COLW>>& o_col2_strm,
              hls::stream<ap_uint<COLW>>& o_col3_strm,
              hls::stream<ap_uint<PW>>& o_payload_strm,
              hls::stream<bool>& o_e_strm) {
    
    bool e = i_e_strm.read();
    while (!e) {
        ap_uint<32> hash = i_hash_strm.read();
        ap_uint<32> col1 = i_col1_strm.read();
        ap_uint<32> col2 = i_col2_strm.read();
        ap_uint<32> col3 = i_col3_strm.read();
        ap_uint<128> payload = i_payload_strm.read();
        ap_uint<32> d_key1 = i_d_key1_strm.read();

        if (col1 != d_key1) {
            o_hash_strm.write(hash);
            o_col1_strm.write(col1);
            o_col2_strm.write(col2);
            o_col3_strm.write(col3);
            o_payload_strm.write(payload);
            o_e_strm.write(false);
        }
        
        if (!i_e_strm.empty()) {
            e = i_e_strm.read();
        }
    }
    o_e_strm.write(true);
}
}
}
}
}
namespace xf {
namespace database {
namespace details {
namespace delete_2{
//
template <int HASHW, int COLW, int PW, int KeyW>
void delete_2(hls::stream<ap_uint<HASHW> >& i_hash_strm,
            hls::stream<ap_uint<COLW> >& i_col1_strm,
	    hls::stream<ap_uint<COLW> >& i_col2_strm,
	    hls::stream<ap_uint<COLW> >& i_col3_strm,
	    hls::stream<ap_uint<PW> >   & i_payload_strm,   
            hls::stream<bool>& i_e_strm,
	    
            hls::stream<ap_uint<KeyW>> & i_d_key1_strm,
            hls::stream<ap_uint<KeyW>> & i_d_key2_strm,
	    
	    hls::stream<ap_uint<HASHW> >& o_hash_strm,
            hls::stream<ap_uint<COLW> >& o_col1_strm,
	    hls::stream<ap_uint<COLW> >& o_col2_strm,
	    hls::stream<ap_uint<COLW> >& o_col3_strm,
	    hls::stream<ap_uint<PW> >   & o_payload_strm,   
            hls::stream<bool>& o_e_strm	   
	    )
{
	bool e = i_e_strm.read();
	while(!e){
		if((i_col1_strm != i_d_key1_strm)&&(i_col2_strm != i_d_key2_strm)){
			o_hash_strm.write(i_hash_strm);
			o_col1_strm.write(i_col1_strm);
			o_col2_strm.write(i_col2_strm);
			o_col3_strm.write(i_col3_strm);
			o_payload_strm.write(i_payload_strm);
		}
	}
	o_e_strm.write(true);
}
}//
}//details
 //This Delete module compares Key1 and Col1 , Key2 and Col2 streams and if there is a match it deletes
}//database
}//xf


namespace xf {
namespace database {
namespace details {
namespace delete_3{
//
template <int HASHW, int COLW, int PW, int KeyW>
void delete_3(hls::stream<ap_uint<HASHW> >& i_hash_strm,
            hls::stream<ap_uint<COLW> >& i_col1_strm,
	    hls::stream<ap_uint<COLW> >& i_col2_strm,
	    hls::stream<ap_uint<COLW> >& i_col3_strm,
	    hls::stream<ap_uint<PW> >   & i_payload_strm,   
            hls::stream<bool>& i_e_strm,
	    
            hls::stream<ap_uint<KeyW>> & i_d_key1_strm,
            hls::stream<ap_uint<KeyW>> & i_d_key2_strm,
            hls::stream<ap_uint<KeyW>> & i_d_key3_strm,
	    
	    hls::stream<ap_uint<HASHW> >& o_hash_strm,
            hls::stream<ap_uint<COLW> >& o_col1_strm,
	    hls::stream<ap_uint<COLW> >& o_col2_strm,
	    hls::stream<ap_uint<COLW> >& o_col3_strm,
	    hls::stream<ap_uint<PW> >   & o_payload_strm,   
            hls::stream<bool>& o_e_strm	   
	    )
{
	bool e = i_e_strm.read();
	while(!e){
		if((i_col1_strm != i_d_key1_strm)&&(i_col2_strm != i_d_key2_strm)&&(i_col3_strm != i_d_key3_strm)){
			o_hash_strm.write(i_hash_strm);
			o_col1_strm.write(i_col1_strm);
			o_col2_strm.write(i_col2_strm);
			o_col3_strm.write(i_col3_strm);
			o_payload_strm.write(i_payload_strm);
		}
	}
	o_e_strm.write(true);
}
}//
}//details
 //This Delete module compares Key1 and Col1 , Key2 and Col2, Key3 and Col3 ,streams and if there is a match it deletes
}//database
}//xf

extern "C" {
void delete_top(hls::stream<ap_uint<32>>& i_hash_strm,
                  hls::stream<ap_uint<32>>& i_col1_strm,
                  hls::stream<ap_uint<32>>& i_col2_strm,
                  hls::stream<ap_uint<32>>& i_col3_strm,
                  hls::stream<ap_uint<128>>& i_payload_strm,
                  hls::stream<bool>& i_e_strm,
                  hls::stream<ap_uint<32>>& i_d_key1_strm,
                  hls::stream<ap_uint<32>>& o_hash_strm,
                  hls::stream<ap_uint<32>>& o_col1_strm,
                  hls::stream<ap_uint<32>>& o_col2_strm,
                  hls::stream<ap_uint<32>>& o_col3_strm,
                  hls::stream<ap_uint<128>>& o_payload_strm,
                  hls::stream<bool>& o_e_strm) {
    #pragma HLS INTERFACE axis port=i_hash_strm
    #pragma HLS INTERFACE axis port=i_col1_strm
    #pragma HLS INTERFACE axis port=i_col2_strm
    #pragma HLS INTERFACE axis port=i_col3_strm
    #pragma HLS INTERFACE axis port=i_payload_strm
    #pragma HLS INTERFACE axis port=i_e_strm
    #pragma HLS INTERFACE axis port=i_d_key1_strm
    #pragma HLS INTERFACE axis port=o_hash_strm
    #pragma HLS INTERFACE axis port=o_col1_strm
    #pragma HLS INTERFACE axis port=o_col2_strm
    #pragma HLS INTERFACE axis port=o_col3_strm
    #pragma HLS INTERFACE axis port=o_payload_strm
    #pragma HLS INTERFACE axis port=o_e_strm
    #pragma HLS INTERFACE ap_ctrl_none port=return

   xf::database::details::delete_1::delete_1<32, 32, 128, 32>(
    i_hash_strm, 
    i_col1_strm, 
    i_col2_strm, 
    i_col3_strm, 
    i_payload_strm, 
    i_e_strm, 
    i_d_key1_strm, 
    o_hash_strm, 
    o_col1_strm, 
    o_col2_strm, 
    o_col3_strm, 
    o_payload_strm, 
    o_e_strm
);


}
}
