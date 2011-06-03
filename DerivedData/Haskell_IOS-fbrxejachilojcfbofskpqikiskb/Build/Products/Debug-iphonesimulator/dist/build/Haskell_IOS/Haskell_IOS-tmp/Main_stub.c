#define IN_STG_CODE 0
#include "Rts.h"
#include "Stg.h"
#ifdef __cplusplus
extern "C" {
#endif
 
extern StgClosure Main_zdffibonaccizuaRj_closure;
HsInt fibonacci(HsInt a1)
{
Capability *cap;
HaskellObj ret;
HsInt cret;
cap = rts_lock();
cap=rts_evalIO(cap,rts_apply(cap,(HaskellObj)runNonIO_closure,rts_apply(cap,&Main_zdffibonaccizuaRj_closure,rts_mkInt(cap,a1))) ,&ret);
rts_checkSchedStatus("fibonacci",cap);
cret=rts_getInt(ret);
rts_unlock(cap);
return cret;
}
 
extern StgClosure Main_zdffaczuaRi_closure;
HsInt fac(HsInt a1)
{
Capability *cap;
HaskellObj ret;
HsInt cret;
cap = rts_lock();
cap=rts_evalIO(cap,rts_apply(cap,(HaskellObj)runNonIO_closure,rts_apply(cap,&Main_zdffaczuaRi_closure,rts_mkInt(cap,a1))) ,&ret);
rts_checkSchedStatus("fac",cap);
cret=rts_getInt(ret);
rts_unlock(cap);
return cret;
}
static void stginit_export_Main_zdffibonaccizuaRj() __attribute__((constructor));
static void stginit_export_Main_zdffibonaccizuaRj()
{getStablePtr((StgPtr) &Main_zdffibonaccizuaRj_closure);}
static void stginit_export_Main_zdffaczuaRi() __attribute__((constructor));
static void stginit_export_Main_zdffaczuaRi()
{getStablePtr((StgPtr) &Main_zdffaczuaRi_closure);}
#ifdef __cplusplus
}
#endif

