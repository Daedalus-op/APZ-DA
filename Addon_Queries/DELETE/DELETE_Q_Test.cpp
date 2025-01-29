#include "DELETE_Q.hpp"
#include <hls_stream.h>
#include <iostream>

int main() {
    const int Test_Size = 20;
    hls::stream<ap_uint<32>> i_hash_strm;
    hls::stream<ap_uint<32>> i_col1_strm;
    hls::stream<ap_uint<32>> i_col2_strm;
    hls::stream<ap_uint<32>> i_col3_strm;
    hls::stream<ap_uint<128>> i_payload_strm;
    hls::stream<bool> i_e_strm;
    hls::stream<ap_uint<32>> i_d_key1_strm;
    hls::stream<ap_uint<32>> o_hash_strm;
    hls::stream<ap_uint<32>> o_col1_strm;
    hls::stream<ap_uint<32>> o_col2_strm;
    hls::stream<ap_uint<32>> o_col3_strm;
    hls::stream<ap_uint<128>> o_payload_strm;
    hls::stream<bool> o_e_strm;

    ap_uint<32> hash[Test_Size] = {10,20,30,40,50,60,70,80,90,100,10,20,30,40,50,60,70,80,90,100};
    ap_uint<32> col1[Test_Size] = {116,58,465,391,226,198,116,268,262,235,141,420,461,116,297,116,33,98,116,367};
    ap_uint<32> col2[Test_Size] = {246,58,465,391,226,198,246,268,262,235,141,420,461,246,297,243,33,98,246,367};
    ap_uint<32> col3[Test_Size] = {346,58,465,391,226,198,346,268,262,235,141,420,461,346,297,346,33,98,116,367};
    ap_uint<128> payload[Test_Size] = {145,370,227,374,409,375,285,18,99,304,198,238,161,264,416,141,50,68,387,237};
    ap_uint<32> delete_key = 116; 

    std::cout << "Writing test data into streams..." << std::endl;
    for (int i = 0; i < Test_Size; i++) {
        i_hash_strm.write(hash[i]);
        i_col1_strm.write(col1[i]);
        i_col2_strm.write(col2[i]);
        i_col3_strm.write(col3[i]);
        i_payload_strm.write(payload[i]);
        i_d_key1_strm.write(delete_key);
        i_e_strm.write(false);
    }
    i_e_strm.write(true); 

    std::cout << "Running delete_q_top..." << std::endl;
    delete_top(i_hash_strm, i_col1_strm, i_col2_strm, i_col3_strm,
                 i_payload_strm, i_e_strm, i_d_key1_strm,
                 o_hash_strm, o_col1_strm, o_col2_strm, o_col3_strm,
                 o_payload_strm, o_e_strm);

    std::cout << "\nVerifying outputs..." << std::endl;
    std::cout << "Records after deletion (excluding records where col1 = " << delete_key << "):" << std::endl;
    std::cout << "Hash\tCol1\tCol2\tCol3\tPayload" << std::endl;
    std::cout << "----------------------------------------" << std::endl;

    bool end_flag = false;
    int output_count = 0;

    while (!end_flag) {
        if (!o_hash_strm.empty() && !o_col1_strm.empty() && 
            !o_col2_strm.empty() && !o_col3_strm.empty() && 
            !o_payload_strm.empty() && !o_e_strm.empty()) {
            
            ap_uint<32> out_hash = o_hash_strm.read();
            ap_uint<32> out_col1 = o_col1_strm.read();
            ap_uint<32> out_col2 = o_col2_strm.read();
            ap_uint<32> out_col3 = o_col3_strm.read();
            ap_uint<128> out_payload = o_payload_strm.read();
            end_flag = o_e_strm.read();

            if (out_col1 == delete_key) {
                std::cout << "Error: Matching Key Not Deleted!" << std::endl;
                return 1;
            }

            std::cout << out_hash << "\t\t" << out_col1 << "\t\t" 
                     << out_col2 << "\t\t" << out_col3 << "\t\t" 
                     << out_payload << std::endl;
            
            output_count++;
        } else {
            std::cout << "Warning: One or more output streams are empty." << std::endl;
            break;
        }
    }

    std::cout << "\nTest Summary:" << std::endl;
    std::cout << "Total input records: " << Test_Size << std::endl;
    std::cout << "Records after deletion: " << output_count << std::endl;
    
    int expected_deleted = 0;
    for (int i = 0; i < Test_Size; i++) {
        if (col1[i] == delete_key) {
            expected_deleted++;
        }
    }
    
    std::cout << "Records deleted: " << expected_deleted << std::endl;
    
    if (output_count == (Test_Size - expected_deleted)) {
        std::cout << "\nTest PASSED!" << std::endl;
        return 0;
    } else {
        std::cout << "\nTest FAILED: Incorrect number of output records" << std::endl;
        std::cout << "Expected: " << (Test_Size - expected_deleted) << ", Got: " << output_count << std::endl;
        return 1;
    }
}
