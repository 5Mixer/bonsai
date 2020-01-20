// Generated by Haxe 4.0.5
#ifndef INCLUDED_kha_Window
#define INCLUDED_kha_Window

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS1(kha,FramebufferOptions)
HX_DECLARE_CLASS1(kha,Window)
HX_DECLARE_CLASS1(kha,WindowOptions)


#include <Kore/pch.h>
#include <Kore/Window.h>

namespace kha{


class HXCPP_CLASS_ATTRIBUTES Window_obj : public hx::Object
{
	public:
		typedef hx::Object super;
		typedef Window_obj OBJ_;
		Window_obj();

	public:
		enum { _hx_ClassId = 0x7fe2ed10 };

		void __construct(int num, ::kha::WindowOptions win);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="kha.Window")
			{ return hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return hx::Object::operator new(inSize+extra,true,"kha.Window"); }
		static hx::ObjectPtr< Window_obj > __new(int num, ::kha::WindowOptions win);
		static hx::ObjectPtr< Window_obj > __alloc(hx::Ctx *_hx_ctx,int num, ::kha::WindowOptions win);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		//~Window_obj();

		HX_DO_RTTI_ALL;
		hx::Val __Field(const ::String &inString, hx::PropertyAccess inCallProp);
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, hx::PropertyAccess inCallProp);
		hx::Val __SetField(const ::String &inString,const hx::Val &inValue, hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("Window",10,08,21,87); }

		static void __boot();
		static ::Array< ::Dynamic> windows;
		static ::Array< ::Dynamic> resizeCallbacks;
		static ::Array< ::Dynamic> ppiCallbacks;
		static void unused();
		static ::Dynamic unused_dyn();

		static void _init( ::kha::WindowOptions win, ::kha::FramebufferOptions frame);
		static ::Dynamic _init_dyn();

		static  ::kha::Window create( ::kha::WindowOptions win, ::kha::FramebufferOptions frame);
		static ::Dynamic create_dyn();

		static void koreCreate( ::kha::WindowOptions win, ::kha::FramebufferOptions frame);
		static ::Dynamic koreCreate_dyn();

		static void destroy( ::kha::Window window);
		static ::Dynamic destroy_dyn();

		static void koreDestroy(int num);
		static ::Dynamic koreDestroy_dyn();

		static  ::kha::Window get(int index);
		static ::Dynamic get_dyn();

		static ::Array< ::Dynamic> get_all();
		static ::Dynamic get_all_dyn();

		static void callResizeCallbacks(int num,int width,int height);
		static ::Dynamic callResizeCallbacks_dyn();

		static void callPpiCallbacks(int num,int ppi);
		static ::Dynamic callPpiCallbacks_dyn();

		int num;
		bool visibility;
		::String windowTitle;
		inline ::String _hx_set_windowTitle(hx::StackContext *_hx_ctx,::String _hx_v) { HX_OBJ_WB(this,_hx_v.raw_ref()) return windowTitle=_hx_v; }
		void resize(int width,int height);
		::Dynamic resize_dyn();

		void move(int x,int y);
		::Dynamic move_dyn();

		void changeWindowFeatures(int features);
		::Dynamic changeWindowFeatures_dyn();

		void changeFramebuffer( ::kha::FramebufferOptions frame);
		::Dynamic changeFramebuffer_dyn();

		int get_x();
		::Dynamic get_x_dyn();

		int set_x(int value);
		::Dynamic set_x_dyn();

		int get_y();
		::Dynamic get_y_dyn();

		int set_y(int value);
		::Dynamic set_y_dyn();

		int get_width();
		::Dynamic get_width_dyn();

		int set_width(int value);
		::Dynamic set_width_dyn();

		int get_height();
		::Dynamic get_height_dyn();

		int set_height(int value);
		::Dynamic set_height_dyn();

		int get_mode();
		::Dynamic get_mode_dyn();

		int getKoreMode();
		::Dynamic getKoreMode_dyn();

		int set_mode(int mode);
		::Dynamic set_mode_dyn();

		bool get_visible();
		::Dynamic get_visible_dyn();

		bool set_visible(bool value);
		::Dynamic set_visible_dyn();

		::String get_title();
		::Dynamic get_title_dyn();

		::String set_title(::String value);
		::Dynamic set_title_dyn();

		void notifyOnResize( ::Dynamic callback);
		::Dynamic notifyOnResize_dyn();

		void notifyOnPpiChange( ::Dynamic callback);
		::Dynamic notifyOnPpiChange_dyn();

		bool get_vSynced();
		::Dynamic get_vSynced_dyn();

};

} // end namespace kha

#endif /* INCLUDED_kha_Window */ 