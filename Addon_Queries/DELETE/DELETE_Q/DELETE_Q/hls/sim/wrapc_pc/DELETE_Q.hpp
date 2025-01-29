#ifndef XF_DATABASE_DELETE_H
#define XF_DATABASE_DELETE_H

#ifndef __cplusplus
#error "Database Library only works with C++."
#endif

#include "ap_int.h"
#include "hls_stream.h"
#include "iostream"

namespace xf {
namespace database {
namespace details {
namespace delete_1 {


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
              hls::stream<bool>& o_e_strm); 

} // namespace delete_1

namespace delete_2 {

template <int HASHW, int COLW, int PW, int KeyW>
void delete_2(hls::stream<ap_uint<HASHW> >& i_hash_strm,
              hls::stream<ap_uint<COLW> >& i_col1_strm,
              hls::stream<ap_uint<COLW> >& i_col2_strm,
              hls::stream<ap_uint<COLW> >& i_col3_strm,
              hls::stream<ap_uint<PW> > & i_payload_strm,
              hls::stream<bool>& i_e_strm,
              hls::stream<ap_uint<KeyW>> & i_d_key1_strm,
              hls::stream<ap_uint<KeyW>> & i_d_key2_strm,
              hls::stream<ap_uint<HASHW> >& o_hash_strm,
              hls::stream<ap_uint<COLW> >& o_col1_strm,
              hls::stream<ap_uint<COLW> >& o_col2_strm,
              hls::stream<ap_uint<COLW> >& o_col3_strm,
              hls::stream<ap_uint<PW> > & o_payload_strm,
              hls::stream<bool>& o_e_strm);

} // namespace delete_2

namespace delete_3 {

template <int HASHW, int COLW, int PW, int KeyW>
void delete_3(hls::stream<ap_uint<HASHW> >& i_hash_strm,
              hls::stream<ap_uint<COLW> >& i_col1_strm,
              hls::stream<ap_uint<COLW> >& i_col2_strm,
              hls::stream<ap_uint<COLW> >& i_col3_strm,
              hls::stream<ap_uint<PW> > & i_payload_strm,
              hls::stream<bool>& i_e_strm,
              hls::stream<ap_uint<KeyW>> & i_d_key1_strm,
              hls::stream<ap_uint<KeyW>> & i_d_key2_strm,
              hls::stream<ap_uint<KeyW>> & i_d_key3_strm,
              hls::stream<ap_uint<HASHW> >& o_hash_strm,
              hls::stream<ap_uint<COLW> >& o_col1_strm,
              hls::stream<ap_uint<COLW> >& o_col2_strm,
              hls::stream<ap_uint<COLW> >& o_col3_strm,
              hls::stream<ap_uint<PW> > & o_payload_strm,
              hls::stream<bool>& o_e_strm);

} // namespace delete_3
} // namespace details
} // namespace database
} // namespace xf
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
                  hls::stream<bool>& o_e_strm);
}
#endif
