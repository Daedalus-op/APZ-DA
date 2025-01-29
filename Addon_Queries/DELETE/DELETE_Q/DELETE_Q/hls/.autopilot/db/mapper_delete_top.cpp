#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_i_hash_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_i_hash_strm_V_size_Reader("../tv/stream_size/stream_size_in_i_hash_strm.dat");
unsigned int ap_apatb_i_col1_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_i_col1_strm_V_size_Reader("../tv/stream_size/stream_size_in_i_col1_strm.dat");
unsigned int ap_apatb_i_col2_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_i_col2_strm_V_size_Reader("../tv/stream_size/stream_size_in_i_col2_strm.dat");
unsigned int ap_apatb_i_col3_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_i_col3_strm_V_size_Reader("../tv/stream_size/stream_size_in_i_col3_strm.dat");
unsigned int ap_apatb_i_payload_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_i_payload_strm_V_size_Reader("../tv/stream_size/stream_size_in_i_payload_strm.dat");
unsigned int ap_apatb_i_e_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_i_e_strm_V_size_Reader("../tv/stream_size/stream_size_in_i_e_strm.dat");
unsigned int ap_apatb_i_d_key1_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_i_d_key1_strm_V_size_Reader("../tv/stream_size/stream_size_in_i_d_key1_strm.dat");
unsigned int ap_apatb_o_hash_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_o_hash_strm_V_size_Reader("../tv/stream_size/stream_size_out_o_hash_strm.dat");
unsigned int ap_apatb_o_col1_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_o_col1_strm_V_size_Reader("../tv/stream_size/stream_size_out_o_col1_strm.dat");
unsigned int ap_apatb_o_col2_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_o_col2_strm_V_size_Reader("../tv/stream_size/stream_size_out_o_col2_strm.dat");
unsigned int ap_apatb_o_col3_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_o_col3_strm_V_size_Reader("../tv/stream_size/stream_size_out_o_col3_strm.dat");
unsigned int ap_apatb_o_payload_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_o_payload_strm_V_size_Reader("../tv/stream_size/stream_size_out_o_payload_strm.dat");
unsigned int ap_apatb_o_e_strm_cap_bc;
static AESL_RUNTIME_BC __xlx_o_e_strm_V_size_Reader("../tv/stream_size/stream_size_out_o_e_strm.dat");
using hls::sim::Byte;
struct __cosim_s16__ { char data[16]; };
extern "C" void delete_top(int*, int*, int*, int*, __cosim_s16__*, char*, int*, int*, int*, int*, int*, __cosim_s16__*, char*);
extern "C" void apatb_delete_top_hw(volatile void * __xlx_apatb_param_i_hash_strm, volatile void * __xlx_apatb_param_i_col1_strm, volatile void * __xlx_apatb_param_i_col2_strm, volatile void * __xlx_apatb_param_i_col3_strm, volatile void * __xlx_apatb_param_i_payload_strm, volatile void * __xlx_apatb_param_i_e_strm, volatile void * __xlx_apatb_param_i_d_key1_strm, volatile void * __xlx_apatb_param_o_hash_strm, volatile void * __xlx_apatb_param_o_col1_strm, volatile void * __xlx_apatb_param_o_col2_strm, volatile void * __xlx_apatb_param_o_col3_strm, volatile void * __xlx_apatb_param_o_payload_strm, volatile void * __xlx_apatb_param_o_e_strm) {
using hls::sim::createStream;
auto* si_hash_strm = createStream((hls::stream<int>*)__xlx_apatb_param_i_hash_strm);
auto* si_col1_strm = createStream((hls::stream<int>*)__xlx_apatb_param_i_col1_strm);
auto* si_col2_strm = createStream((hls::stream<int>*)__xlx_apatb_param_i_col2_strm);
auto* si_col3_strm = createStream((hls::stream<int>*)__xlx_apatb_param_i_col3_strm);
auto* si_payload_strm = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_i_payload_strm);
auto* si_e_strm = createStream((hls::stream<char>*)__xlx_apatb_param_i_e_strm);
auto* si_d_key1_strm = createStream((hls::stream<int>*)__xlx_apatb_param_i_d_key1_strm);
  //Create input buffer for o_hash_strm
  ap_apatb_o_hash_strm_cap_bc = __xlx_o_hash_strm_V_size_Reader.read_size();
  int* __xlx_o_hash_strm_input_buffer= new int[ap_apatb_o_hash_strm_cap_bc];
auto* so_hash_strm = createStream((hls::stream<int>*)__xlx_apatb_param_o_hash_strm);
  //Create input buffer for o_col1_strm
  ap_apatb_o_col1_strm_cap_bc = __xlx_o_col1_strm_V_size_Reader.read_size();
  int* __xlx_o_col1_strm_input_buffer= new int[ap_apatb_o_col1_strm_cap_bc];
auto* so_col1_strm = createStream((hls::stream<int>*)__xlx_apatb_param_o_col1_strm);
  //Create input buffer for o_col2_strm
  ap_apatb_o_col2_strm_cap_bc = __xlx_o_col2_strm_V_size_Reader.read_size();
  int* __xlx_o_col2_strm_input_buffer= new int[ap_apatb_o_col2_strm_cap_bc];
auto* so_col2_strm = createStream((hls::stream<int>*)__xlx_apatb_param_o_col2_strm);
  //Create input buffer for o_col3_strm
  ap_apatb_o_col3_strm_cap_bc = __xlx_o_col3_strm_V_size_Reader.read_size();
  int* __xlx_o_col3_strm_input_buffer= new int[ap_apatb_o_col3_strm_cap_bc];
auto* so_col3_strm = createStream((hls::stream<int>*)__xlx_apatb_param_o_col3_strm);
  //Create input buffer for o_payload_strm
  ap_apatb_o_payload_strm_cap_bc = __xlx_o_payload_strm_V_size_Reader.read_size();
  __cosim_s16__* __xlx_o_payload_strm_input_buffer= new __cosim_s16__[ap_apatb_o_payload_strm_cap_bc];
auto* so_payload_strm = createStream((hls::stream<__cosim_s16__>*)__xlx_apatb_param_o_payload_strm);
  //Create input buffer for o_e_strm
  ap_apatb_o_e_strm_cap_bc = __xlx_o_e_strm_V_size_Reader.read_size();
  char* __xlx_o_e_strm_input_buffer= new char[ap_apatb_o_e_strm_cap_bc];
auto* so_e_strm = createStream((hls::stream<char>*)__xlx_apatb_param_o_e_strm);
  // DUT call
  delete_top(si_hash_strm->data<int>(), si_col1_strm->data<int>(), si_col2_strm->data<int>(), si_col3_strm->data<int>(), si_payload_strm->data<__cosim_s16__>(), si_e_strm->data<char>(), si_d_key1_strm->data<int>(), so_hash_strm->data<int>(), so_col1_strm->data<int>(), so_col2_strm->data<int>(), so_col3_strm->data<int>(), so_payload_strm->data<__cosim_s16__>(), so_e_strm->data<char>());
si_hash_strm->transfer((hls::stream<int>*)__xlx_apatb_param_i_hash_strm);
si_col1_strm->transfer((hls::stream<int>*)__xlx_apatb_param_i_col1_strm);
si_col2_strm->transfer((hls::stream<int>*)__xlx_apatb_param_i_col2_strm);
si_col3_strm->transfer((hls::stream<int>*)__xlx_apatb_param_i_col3_strm);
si_payload_strm->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_i_payload_strm);
si_e_strm->transfer((hls::stream<char>*)__xlx_apatb_param_i_e_strm);
si_d_key1_strm->transfer((hls::stream<int>*)__xlx_apatb_param_i_d_key1_strm);
so_hash_strm->transfer((hls::stream<int>*)__xlx_apatb_param_o_hash_strm);
so_col1_strm->transfer((hls::stream<int>*)__xlx_apatb_param_o_col1_strm);
so_col2_strm->transfer((hls::stream<int>*)__xlx_apatb_param_o_col2_strm);
so_col3_strm->transfer((hls::stream<int>*)__xlx_apatb_param_o_col3_strm);
so_payload_strm->transfer((hls::stream<__cosim_s16__>*)__xlx_apatb_param_o_payload_strm);
so_e_strm->transfer((hls::stream<char>*)__xlx_apatb_param_o_e_strm);
}
