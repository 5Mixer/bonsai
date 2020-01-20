// Generated by Haxe 4.0.5
#include <hxcpp.h>

#ifndef INCLUDED_c5728fd05c542abe
#define INCLUDED_c5728fd05c542abe
#include "cpp_float32array.h"
#endif
#ifndef INCLUDED_95f339a1d026d52c
#define INCLUDED_95f339a1d026d52c
#include "hxMath.h"
#endif
#ifndef INCLUDED_Std
#include <hxinc/Std.h>
#endif
#ifndef INCLUDED_kha_arrays_Float32ArrayPrivate
#include <hxinc/kha/arrays/Float32ArrayPrivate.h>
#endif
#ifndef INCLUDED_kha_audio1_AudioChannel
#include <hxinc/kha/audio1/AudioChannel.h>
#endif
#ifndef INCLUDED_kha_audio2_Audio
#include <hxinc/kha/audio2/Audio.h>
#endif
#ifndef INCLUDED_kha_audio2_Audio1
#include <hxinc/kha/audio2/Audio1.h>
#endif
#ifndef INCLUDED_kha_audio2_AudioChannel
#include <hxinc/kha/audio2/AudioChannel.h>
#endif
#ifndef INCLUDED_kha_audio2_ResamplingAudioChannel
#include <hxinc/kha/audio2/ResamplingAudioChannel.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_029a539c73b0f8d6_8_new,"kha.audio2.ResamplingAudioChannel","new",0x91f5dea1,"kha.audio2.ResamplingAudioChannel.new","kha/audio2/ResamplingAudioChannel.hx",8,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_13_nextSamples,"kha.audio2.ResamplingAudioChannel","nextSamples",0x20bef397,"kha.audio2.ResamplingAudioChannel.nextSamples","kha/audio2/ResamplingAudioChannel.hx",13,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_41_sample,"kha.audio2.ResamplingAudioChannel","sample",0x28dbf089,"kha.audio2.ResamplingAudioChannel.sample","kha/audio2/ResamplingAudioChannel.hx",41,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_80_lerp,"kha.audio2.ResamplingAudioChannel","lerp",0x23da7d16,"kha.audio2.ResamplingAudioChannel.lerp","kha/audio2/ResamplingAudioChannel.hx",80,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_83_sampleLength,"kha.audio2.ResamplingAudioChannel","sampleLength",0xf308864f,"kha.audio2.ResamplingAudioChannel.sampleLength","kha/audio2/ResamplingAudioChannel.hx",83,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_88_play,"kha.audio2.ResamplingAudioChannel","play",0x26849893,"kha.audio2.ResamplingAudioChannel.play","kha/audio2/ResamplingAudioChannel.hx",88,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_95_pause,"kha.audio2.ResamplingAudioChannel","pause",0x864ab777,"kha.audio2.ResamplingAudioChannel.pause","kha/audio2/ResamplingAudioChannel.hx",95,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_98_stop,"kha.audio2.ResamplingAudioChannel","stop",0x28865aa1,"kha.audio2.ResamplingAudioChannel.stop","kha/audio2/ResamplingAudioChannel.hx",98,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_104_get_length,"kha.audio2.ResamplingAudioChannel","get_length",0x9e39b08e,"kha.audio2.ResamplingAudioChannel.get_length","kha/audio2/ResamplingAudioChannel.hx",104,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_108_get_position,"kha.audio2.ResamplingAudioChannel","get_position",0x8fa8f651,"kha.audio2.ResamplingAudioChannel.get_position","kha/audio2/ResamplingAudioChannel.hx",108,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_111_set_position,"kha.audio2.ResamplingAudioChannel","set_position",0xa4a219c5,"kha.audio2.ResamplingAudioChannel.set_position","kha/audio2/ResamplingAudioChannel.hx",111,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_118_get_volume,"kha.audio2.ResamplingAudioChannel","get_volume",0x5e854582,"kha.audio2.ResamplingAudioChannel.get_volume","kha/audio2/ResamplingAudioChannel.hx",118,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_122_set_volume,"kha.audio2.ResamplingAudioChannel","set_volume",0x6202e3f6,"kha.audio2.ResamplingAudioChannel.set_volume","kha/audio2/ResamplingAudioChannel.hx",122,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_126_get_finished,"kha.audio2.ResamplingAudioChannel","get_finished",0x59bce91a,"kha.audio2.ResamplingAudioChannel.get_finished","kha/audio2/ResamplingAudioChannel.hx",126,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_130_max,"kha.audio2.ResamplingAudioChannel","max",0x91f518e5,"kha.audio2.ResamplingAudioChannel.max","kha/audio2/ResamplingAudioChannel.hx",130,0x948499cf)
HX_LOCAL_STACK_FRAME(_hx_pos_029a539c73b0f8d6_134_min,"kha.audio2.ResamplingAudioChannel","min",0x91f51fd3,"kha.audio2.ResamplingAudioChannel.min","kha/audio2/ResamplingAudioChannel.hx",134,0x948499cf)
namespace kha{
namespace audio2{

void ResamplingAudioChannel_obj::__construct(bool looping,int sampleRate){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_8_new)
HXLINE(   9)		super::__construct(looping);
HXLINE(  10)		this->sampleRate = sampleRate;
            	}

Dynamic ResamplingAudioChannel_obj::__CreateEmpty() { return new ResamplingAudioChannel_obj; }

void *ResamplingAudioChannel_obj::_hx_vtable = 0;

Dynamic ResamplingAudioChannel_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< ResamplingAudioChannel_obj > _hx_result = new ResamplingAudioChannel_obj();
	_hx_result->__construct(inArgs[0],inArgs[1]);
	return _hx_result;
}

bool ResamplingAudioChannel_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x0cffaaed) {
		return inClassId==(int)0x00000001 || inClassId==(int)0x0cffaaed;
	} else {
		return inClassId==(int)0x374d24a7;
	}
}

void ResamplingAudioChannel_obj::nextSamples( ::kha::arrays::Float32ArrayPrivate requestedSamples,int requestedLength,int sampleRate){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_13_nextSamples)
HXLINE(  14)		bool _hx_tmp;
HXDLIN(  14)		if (!(this->paused)) {
HXLINE(  14)			_hx_tmp = this->stopped;
            		}
            		else {
HXLINE(  14)			_hx_tmp = true;
            		}
HXDLIN(  14)		if (_hx_tmp) {
HXLINE(  15)			{
HXLINE(  15)				int _g = 0;
HXDLIN(  15)				int _g1 = requestedLength;
HXDLIN(  15)				while((_g < _g1)){
HXLINE(  15)					_g = (_g + 1);
HXDLIN(  15)					int i = (_g - 1);
HXLINE(  16)					requestedSamples->self.set(i,( (float)(0) ));
            				}
            			}
HXLINE(  18)			return;
            		}
HXLINE(  21)		int requestedSamplesIndex = 0;
HXLINE(  22)		while((requestedSamplesIndex < requestedLength)){
HXLINE(  23)			{
HXLINE(  23)				int _g2 = 0;
HXDLIN(  23)				int value = this->data->self.length();
HXDLIN(  23)				int value1 = ::Math_obj::ceil((( (Float)(value) ) * (( (Float)(sampleRate) ) / ( (Float)(this->sampleRate) ))));
HXDLIN(  23)				int a;
HXDLIN(  23)				if ((hx::Mod(value1,2) == 0)) {
HXLINE(  23)					a = value1;
            				}
            				else {
HXLINE(  23)					a = (value1 + 1);
            				}
HXDLIN(  23)				int a1 = (a - this->myPosition);
HXDLIN(  23)				int b = (requestedLength - requestedSamplesIndex);
HXDLIN(  23)				int _g11;
HXDLIN(  23)				if ((a1 < b)) {
HXLINE(  23)					_g11 = a1;
            				}
            				else {
HXLINE(  23)					_g11 = b;
            				}
HXDLIN(  23)				while((_g2 < _g11)){
HXLINE(  23)					_g2 = (_g2 + 1);
HXDLIN(  23)					int i1 = (_g2 - 1);
HXLINE(  24)					{
HXLINE(  24)						requestedSamplesIndex = (requestedSamplesIndex + 1);
HXDLIN(  24)						int position = this->myPosition++;
HXDLIN(  24)						bool even = (hx::Mod(position,2) == 0);
HXDLIN(  24)						Float factor = (( (Float)(this->sampleRate) ) / ( (Float)(sampleRate) ));
HXDLIN(  24)						float value2;
HXDLIN(  24)						if (even) {
HXLINE(  24)							position = ::Std_obj::_hx_int((( (Float)(position) ) / ( (Float)(2) )));
HXDLIN(  24)							Float pos = (factor * ( (Float)(position) ));
HXDLIN(  24)							int pos1 = ::Math_obj::floor(pos);
HXDLIN(  24)							int pos2 = ::Math_obj::floor((pos + 1));
HXDLIN(  24)							pos1 = (pos1 * 2);
HXDLIN(  24)							pos2 = (pos2 * 2);
HXDLIN(  24)							int minimum = 0;
HXDLIN(  24)							int maximum = (this->data->self.length() - 1);
HXDLIN(  24)							if ((hx::Mod(maximum,2) == 0)) {
HXLINE(  24)								maximum = maximum;
            							}
            							else {
HXLINE(  24)								maximum = (maximum - 1);
            							}
HXDLIN(  24)							float a2;
HXDLIN(  24)							bool a3;
HXDLIN(  24)							if ((pos1 >= minimum)) {
HXLINE(  24)								a3 = (pos1 > maximum);
            							}
            							else {
HXLINE(  24)								a3 = true;
            							}
HXDLIN(  24)							if (a3) {
HXLINE(  24)								a2 = ( (float)(0) );
            							}
            							else {
HXLINE(  24)								a2 = this->data->self.get(pos1);
            							}
HXDLIN(  24)							float b1;
HXDLIN(  24)							bool b2;
HXDLIN(  24)							if ((pos2 >= minimum)) {
HXLINE(  24)								b2 = (pos2 > maximum);
            							}
            							else {
HXLINE(  24)								b2 = true;
            							}
HXDLIN(  24)							if (b2) {
HXLINE(  24)								b1 = ( (float)(0) );
            							}
            							else {
HXLINE(  24)								b1 = this->data->self.get(pos2);
            							}
HXDLIN(  24)							Float t = (pos - ( (Float)(::Math_obj::floor(pos)) ));
HXDLIN(  24)							value2 = ( (float)((((( (Float)(1) ) - t) * ( (Float)(a2) )) + (t * ( (Float)(b1) )))) );
            						}
            						else {
HXLINE(  24)							position = ::Std_obj::_hx_int((( (Float)(position) ) / ( (Float)(2) )));
HXDLIN(  24)							Float pos3 = (factor * ( (Float)(position) ));
HXDLIN(  24)							int pos11 = ::Math_obj::floor(pos3);
HXDLIN(  24)							int pos21 = ::Math_obj::floor((pos3 + 1));
HXDLIN(  24)							pos11 = ((pos11 * 2) + 1);
HXDLIN(  24)							pos21 = ((pos21 * 2) + 1);
HXDLIN(  24)							int minimum1 = 1;
HXDLIN(  24)							int maximum1 = (this->data->self.length() - 1);
HXDLIN(  24)							if ((hx::Mod(maximum1,2) != 0)) {
HXLINE(  24)								maximum1 = maximum1;
            							}
            							else {
HXLINE(  24)								maximum1 = (maximum1 - 1);
            							}
HXDLIN(  24)							float a4;
HXDLIN(  24)							bool a5;
HXDLIN(  24)							if ((pos11 >= minimum1)) {
HXLINE(  24)								a5 = (pos11 > maximum1);
            							}
            							else {
HXLINE(  24)								a5 = true;
            							}
HXDLIN(  24)							if (a5) {
HXLINE(  24)								a4 = ( (float)(0) );
            							}
            							else {
HXLINE(  24)								a4 = this->data->self.get(pos11);
            							}
HXDLIN(  24)							float b3;
HXDLIN(  24)							bool b4;
HXDLIN(  24)							if ((pos21 >= minimum1)) {
HXLINE(  24)								b4 = (pos21 > maximum1);
            							}
            							else {
HXLINE(  24)								b4 = true;
            							}
HXDLIN(  24)							if (b4) {
HXLINE(  24)								b3 = ( (float)(0) );
            							}
            							else {
HXLINE(  24)								b3 = this->data->self.get(pos21);
            							}
HXDLIN(  24)							Float t1 = (pos3 - ( (Float)(::Math_obj::floor(pos3)) ));
HXDLIN(  24)							value2 = ( (float)((((( (Float)(1) ) - t1) * ( (Float)(a4) )) + (t1 * ( (Float)(b3) )))) );
            						}
HXDLIN(  24)						requestedSamples->self.set((requestedSamplesIndex - 1),value2);
            					}
            				}
            			}
HXLINE(  27)			int _hx_tmp1 = this->myPosition;
HXDLIN(  27)			int value3 = this->data->self.length();
HXDLIN(  27)			int value4 = ::Math_obj::ceil((( (Float)(value3) ) * (( (Float)(sampleRate) ) / ( (Float)(this->sampleRate) ))));
HXDLIN(  27)			int _hx_tmp2;
HXDLIN(  27)			if ((hx::Mod(value4,2) == 0)) {
HXLINE(  27)				_hx_tmp2 = value4;
            			}
            			else {
HXLINE(  27)				_hx_tmp2 = (value4 + 1);
            			}
HXDLIN(  27)			if ((_hx_tmp1 >= _hx_tmp2)) {
HXLINE(  28)				this->myPosition = 0;
HXLINE(  29)				if (!(this->looping)) {
HXLINE(  30)					this->stopped = true;
HXLINE(  31)					goto _hx_goto_2;
            				}
            			}
            		}
            		_hx_goto_2:;
HXLINE(  36)		while((requestedSamplesIndex < requestedLength)){
HXLINE(  37)			requestedSamplesIndex = (requestedSamplesIndex + 1);
HXDLIN(  37)			requestedSamples->self.set((requestedSamplesIndex - 1),( (float)(0) ));
            		}
            	}


Float ResamplingAudioChannel_obj::sample(int position,int sampleRate){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_41_sample)
HXLINE(  42)		bool even = (hx::Mod(position,2) == 0);
HXLINE(  43)		Float factor = (( (Float)(this->sampleRate) ) / ( (Float)(sampleRate) ));
HXLINE(  45)		if (even) {
HXLINE(  46)			position = ::Std_obj::_hx_int((( (Float)(position) ) / ( (Float)(2) )));
HXLINE(  47)			Float pos = (factor * ( (Float)(position) ));
HXLINE(  48)			int pos1 = ::Math_obj::floor(pos);
HXLINE(  49)			int pos2 = ::Math_obj::floor((pos + 1));
HXLINE(  50)			pos1 = (pos1 * 2);
HXLINE(  51)			pos2 = (pos2 * 2);
HXLINE(  53)			int minimum = 0;
HXLINE(  54)			int maximum = (this->data->self.length() - 1);
HXLINE(  55)			if ((hx::Mod(maximum,2) == 0)) {
HXLINE(  55)				maximum = maximum;
            			}
            			else {
HXLINE(  55)				maximum = (maximum - 1);
            			}
HXLINE(  57)			float a;
HXDLIN(  57)			bool a1;
HXDLIN(  57)			if ((pos1 >= minimum)) {
HXLINE(  57)				a1 = (pos1 > maximum);
            			}
            			else {
HXLINE(  57)				a1 = true;
            			}
HXDLIN(  57)			if (a1) {
HXLINE(  57)				a = ( (float)(0) );
            			}
            			else {
HXLINE(  57)				a = this->data->self.get(pos1);
            			}
HXLINE(  58)			float b;
HXDLIN(  58)			bool b1;
HXDLIN(  58)			if ((pos2 >= minimum)) {
HXLINE(  58)				b1 = (pos2 > maximum);
            			}
            			else {
HXLINE(  58)				b1 = true;
            			}
HXDLIN(  58)			if (b1) {
HXLINE(  58)				b = ( (float)(0) );
            			}
            			else {
HXLINE(  58)				b = this->data->self.get(pos2);
            			}
HXLINE(  59)			Float t = (pos - ( (Float)(::Math_obj::floor(pos)) ));
HXDLIN(  59)			return (((( (Float)(1) ) - t) * ( (Float)(a) )) + (t * ( (Float)(b) )));
            		}
            		else {
HXLINE(  62)			position = ::Std_obj::_hx_int((( (Float)(position) ) / ( (Float)(2) )));
HXLINE(  63)			Float pos3 = (factor * ( (Float)(position) ));
HXLINE(  64)			int pos11 = ::Math_obj::floor(pos3);
HXLINE(  65)			int pos21 = ::Math_obj::floor((pos3 + 1));
HXLINE(  66)			pos11 = ((pos11 * 2) + 1);
HXLINE(  67)			pos21 = ((pos21 * 2) + 1);
HXLINE(  69)			int minimum1 = 1;
HXLINE(  70)			int maximum1 = (this->data->self.length() - 1);
HXLINE(  71)			if ((hx::Mod(maximum1,2) != 0)) {
HXLINE(  71)				maximum1 = maximum1;
            			}
            			else {
HXLINE(  71)				maximum1 = (maximum1 - 1);
            			}
HXLINE(  73)			float a2;
HXDLIN(  73)			bool a3;
HXDLIN(  73)			if ((pos11 >= minimum1)) {
HXLINE(  73)				a3 = (pos11 > maximum1);
            			}
            			else {
HXLINE(  73)				a3 = true;
            			}
HXDLIN(  73)			if (a3) {
HXLINE(  73)				a2 = ( (float)(0) );
            			}
            			else {
HXLINE(  73)				a2 = this->data->self.get(pos11);
            			}
HXLINE(  74)			float b2;
HXDLIN(  74)			bool b3;
HXDLIN(  74)			if ((pos21 >= minimum1)) {
HXLINE(  74)				b3 = (pos21 > maximum1);
            			}
            			else {
HXLINE(  74)				b3 = true;
            			}
HXDLIN(  74)			if (b3) {
HXLINE(  74)				b2 = ( (float)(0) );
            			}
            			else {
HXLINE(  74)				b2 = this->data->self.get(pos21);
            			}
HXLINE(  75)			Float t1 = (pos3 - ( (Float)(::Math_obj::floor(pos3)) ));
HXDLIN(  75)			return (((( (Float)(1) ) - t1) * ( (Float)(a2) )) + (t1 * ( (Float)(b2) )));
            		}
HXLINE(  45)		return ((Float)0.);
            	}


HX_DEFINE_DYNAMIC_FUNC2(ResamplingAudioChannel_obj,sample,return )

Float ResamplingAudioChannel_obj::lerp(Float v0,Float v1,Float t){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_80_lerp)
HXDLIN(  80)		return (((( (Float)(1) ) - t) * v0) + (t * v1));
            	}


HX_DEFINE_DYNAMIC_FUNC3(ResamplingAudioChannel_obj,lerp,return )

int ResamplingAudioChannel_obj::sampleLength(int sampleRate){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_83_sampleLength)
HXLINE(  84)		int value = this->data->self.length();
HXDLIN(  84)		int value1 = ::Math_obj::ceil((( (Float)(value) ) * (( (Float)(sampleRate) ) / ( (Float)(this->sampleRate) ))));
HXLINE(  85)		if ((hx::Mod(value1,2) == 0)) {
HXLINE(  85)			return value1;
            		}
            		else {
HXLINE(  85)			return (value1 + 1);
            		}
HXDLIN(  85)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC1(ResamplingAudioChannel_obj,sampleLength,return )

void ResamplingAudioChannel_obj::play(){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_88_play)
HXLINE(  89)		this->paused = false;
HXLINE(  90)		this->stopped = false;
HXLINE(  91)		::kha::audio2::Audio1_obj::_playAgain(hx::ObjectPtr<OBJ_>(this));
            	}


void ResamplingAudioChannel_obj::pause(){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_95_pause)
HXDLIN(  95)		this->paused = true;
            	}


void ResamplingAudioChannel_obj::stop(){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_98_stop)
HXLINE(  99)		this->myPosition = 0;
HXLINE( 100)		this->stopped = true;
            	}


Float ResamplingAudioChannel_obj::get_length(){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_104_get_length)
HXDLIN( 104)		int _hx_tmp = this->data->self.length();
HXDLIN( 104)		return ((( (Float)(_hx_tmp) ) / ( (Float)(this->sampleRate) )) / ( (Float)(2) ));
            	}


Float ResamplingAudioChannel_obj::get_position(){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_108_get_position)
HXDLIN( 108)		return ((( (Float)(this->myPosition) ) / ( (Float)(this->sampleRate) )) / ( (Float)(2) ));
            	}


Float ResamplingAudioChannel_obj::set_position(Float value){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_111_set_position)
HXLINE( 112)		this->myPosition = ::Math_obj::round(((value * ( (Float)(this->sampleRate) )) * ( (Float)(2) )));
HXLINE( 113)		int a = this->myPosition;
HXDLIN( 113)		int sampleRate = ::kha::audio2::Audio_obj::samplesPerSecond;
HXDLIN( 113)		int value1 = this->data->self.length();
HXDLIN( 113)		int value2 = ::Math_obj::ceil((( (Float)(value1) ) * (( (Float)(sampleRate) ) / ( (Float)(this->sampleRate) ))));
HXDLIN( 113)		int b;
HXDLIN( 113)		if ((hx::Mod(value2,2) == 0)) {
HXLINE( 113)			b = value2;
            		}
            		else {
HXLINE( 113)			b = (value2 + 1);
            		}
HXDLIN( 113)		int a1;
HXDLIN( 113)		if ((a < b)) {
HXLINE( 113)			a1 = a;
            		}
            		else {
HXLINE( 113)			a1 = b;
            		}
HXDLIN( 113)		int _hx_tmp;
HXDLIN( 113)		if ((a1 > 0)) {
HXLINE( 113)			_hx_tmp = a1;
            		}
            		else {
HXLINE( 113)			_hx_tmp = 0;
            		}
HXDLIN( 113)		this->myPosition = _hx_tmp;
HXLINE( 114)		return value;
            	}


Float ResamplingAudioChannel_obj::get_volume(){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_118_get_volume)
HXDLIN( 118)		return this->myVolume;
            	}


Float ResamplingAudioChannel_obj::set_volume(Float value){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_122_set_volume)
HXDLIN( 122)		return (this->myVolume = value);
            	}


bool ResamplingAudioChannel_obj::get_finished(){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_126_get_finished)
HXDLIN( 126)		return this->stopped;
            	}


int ResamplingAudioChannel_obj::max(int a,int b){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_130_max)
HXDLIN( 130)		if ((a > b)) {
HXDLIN( 130)			return a;
            		}
            		else {
HXDLIN( 130)			return b;
            		}
HXDLIN( 130)		return 0;
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(ResamplingAudioChannel_obj,max,return )

int ResamplingAudioChannel_obj::min(int a,int b){
            	HX_STACKFRAME(&_hx_pos_029a539c73b0f8d6_134_min)
HXDLIN( 134)		if ((a < b)) {
HXDLIN( 134)			return a;
            		}
            		else {
HXDLIN( 134)			return b;
            		}
HXDLIN( 134)		return 0;
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(ResamplingAudioChannel_obj,min,return )


hx::ObjectPtr< ResamplingAudioChannel_obj > ResamplingAudioChannel_obj::__new(bool looping,int sampleRate) {
	hx::ObjectPtr< ResamplingAudioChannel_obj > __this = new ResamplingAudioChannel_obj();
	__this->__construct(looping,sampleRate);
	return __this;
}

hx::ObjectPtr< ResamplingAudioChannel_obj > ResamplingAudioChannel_obj::__alloc(hx::Ctx *_hx_ctx,bool looping,int sampleRate) {
	ResamplingAudioChannel_obj *__this = (ResamplingAudioChannel_obj*)(hx::Ctx::alloc(_hx_ctx, sizeof(ResamplingAudioChannel_obj), true, "kha.audio2.ResamplingAudioChannel"));
	*(void **)__this = ResamplingAudioChannel_obj::_hx_vtable;
	__this->__construct(looping,sampleRate);
	return __this;
}

ResamplingAudioChannel_obj::ResamplingAudioChannel_obj()
{
}

hx::Val ResamplingAudioChannel_obj::__Field(const ::String &inName,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"lerp") ) { return hx::Val( lerp_dyn() ); }
		if (HX_FIELD_EQ(inName,"play") ) { return hx::Val( play_dyn() ); }
		if (HX_FIELD_EQ(inName,"stop") ) { return hx::Val( stop_dyn() ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"pause") ) { return hx::Val( pause_dyn() ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"sample") ) { return hx::Val( sample_dyn() ); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"sampleRate") ) { return hx::Val( sampleRate ); }
		if (HX_FIELD_EQ(inName,"get_length") ) { return hx::Val( get_length_dyn() ); }
		if (HX_FIELD_EQ(inName,"get_volume") ) { return hx::Val( get_volume_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_volume") ) { return hx::Val( set_volume_dyn() ); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"nextSamples") ) { return hx::Val( nextSamples_dyn() ); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"sampleLength") ) { return hx::Val( sampleLength_dyn() ); }
		if (HX_FIELD_EQ(inName,"get_position") ) { return hx::Val( get_position_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_position") ) { return hx::Val( set_position_dyn() ); }
		if (HX_FIELD_EQ(inName,"get_finished") ) { return hx::Val( get_finished_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

bool ResamplingAudioChannel_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"max") ) { outValue = max_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"min") ) { outValue = min_dyn(); return true; }
	}
	return false;
}

hx::Val ResamplingAudioChannel_obj::__SetField(const ::String &inName,const hx::Val &inValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 10:
		if (HX_FIELD_EQ(inName,"sampleRate") ) { sampleRate=inValue.Cast< int >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void ResamplingAudioChannel_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("sampleRate",2a,3c,4c,67));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static hx::StorageInfo ResamplingAudioChannel_obj_sMemberStorageInfo[] = {
	{hx::fsInt,(int)offsetof(ResamplingAudioChannel_obj,sampleRate),HX_("sampleRate",2a,3c,4c,67)},
	{ hx::fsUnknown, 0, null()}
};
static hx::StaticInfo *ResamplingAudioChannel_obj_sStaticStorageInfo = 0;
#endif

static ::String ResamplingAudioChannel_obj_sMemberFields[] = {
	HX_("sampleRate",2a,3c,4c,67),
	HX_("nextSamples",56,3c,13,5a),
	HX_("sample",2a,60,4a,1d),
	HX_("lerp",77,12,b0,47),
	HX_("sampleLength",b0,e4,73,e3),
	HX_("play",f4,2d,5a,4a),
	HX_("pause",f6,d6,57,bd),
	HX_("stop",02,f0,5b,4c),
	HX_("get_length",af,04,8f,8f),
	HX_("get_position",b2,54,14,80),
	HX_("set_position",26,78,0d,95),
	HX_("get_volume",a3,99,da,4f),
	HX_("set_volume",17,38,58,53),
	HX_("get_finished",7b,47,28,4a),
	::String(null()) };

hx::Class ResamplingAudioChannel_obj::__mClass;

static ::String ResamplingAudioChannel_obj_sStaticFields[] = {
	HX_("max",a4,0a,53,00),
	HX_("min",92,11,53,00),
	::String(null())
};

void ResamplingAudioChannel_obj::__register()
{
	ResamplingAudioChannel_obj _hx_dummy;
	ResamplingAudioChannel_obj::_hx_vtable = *(void **)&_hx_dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_("kha.audio2.ResamplingAudioChannel",2f,fa,df,da);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &ResamplingAudioChannel_obj::__GetStatic;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = hx::Class_obj::dupFunctions(ResamplingAudioChannel_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(ResamplingAudioChannel_obj_sMemberFields);
	__mClass->mCanCast = hx::TCanCast< ResamplingAudioChannel_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = ResamplingAudioChannel_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = ResamplingAudioChannel_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace kha
} // end namespace audio2