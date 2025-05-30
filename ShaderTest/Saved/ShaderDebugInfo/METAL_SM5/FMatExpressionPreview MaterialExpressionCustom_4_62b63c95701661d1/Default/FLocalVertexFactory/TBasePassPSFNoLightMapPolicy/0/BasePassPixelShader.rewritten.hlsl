// DebugHash_fc23ba90b32a61d18fedabfd4e4a7e85bd7bf9082f5a16fcf1e7c910d206b34e
#line 1 "__UE_FILENAME_SENTINEL"
void ShaderYield()
{
}
precise float MakePrecise(in precise float v) { precise float pv = v; return pv; }
precise float2 MakePrecise(in precise float2 v) { precise float2 pv = v; return pv; }
precise float3 MakePrecise(in precise float3 v) { precise float3 pv = v; return pv; }
precise float4 MakePrecise(in precise float4 v) { precise float4 pv = v; return pv; }
	void WriteDispatchIndirectArgs(RWBuffer<uint> RWIndirectDispatchArgsBuffer, in uint InIndex, in uint InIndirectArgX, in uint InIndirectArgY, in uint InIndirectArgZ)
	{
		RWIndirectDispatchArgsBuffer[3 * InIndex + 0] = InIndirectArgX;
		RWIndirectDispatchArgsBuffer[3 * InIndex + 1] = InIndirectArgY;
		RWIndirectDispatchArgsBuffer[3 * InIndex + 2] = InIndirectArgZ;
	}
void WriteDispatchIndirectArgs(RWBuffer<uint> RWIndirectDispatchArgsBuffer, in uint InIndex, in uint3 InIndirectArg)
{
	WriteDispatchIndirectArgs(RWIndirectDispatchArgsBuffer, InIndex, InIndirectArg.x, InIndirectArg.y, InIndirectArg.z);
}
float min3(float a, float b, float c)
{
	return min(a, min(b, c));
}
int min3(int a, int b, int c)
{
	return min(a, min(b, c));
}
uint min3(uint a, uint b, uint c)
{
	return min(a, min(b, c));
}
  float2 min3 ( float2 a, float2 b, float2 c) { return float2( min3 (a.x , b.x , c.x ), min3 (a.y , b.y , c.y )); } float3 min3 ( float3 a, float3 b, float3 c) { return float3( min3 (a.xy, b.xy, c.xy), min3 (a.z , b.z , c.z )); } float4 min3 ( float4 a, float4 b, float4 c) { return float4( min3 (a.xy, b.xy, c.xy), min3 (a.zw, b.zw, c.zw)); }
  int2 min3 ( int2 a, int2 b, int2 c) { return int2( min3 (a.x , b.x , c.x ), min3 (a.y , b.y , c.y )); } int3 min3 ( int3 a, int3 b, int3 c) { return int3( min3 (a.xy, b.xy, c.xy), min3 (a.z , b.z , c.z )); } int4 min3 ( int4 a, int4 b, int4 c) { return int4( min3 (a.xy, b.xy, c.xy), min3 (a.zw, b.zw, c.zw)); }
  uint2 min3 ( uint2 a, uint2 b, uint2 c) { return uint2( min3 (a.x , b.x , c.x ), min3 (a.y , b.y , c.y )); } uint3 min3 ( uint3 a, uint3 b, uint3 c) { return uint3( min3 (a.xy, b.xy, c.xy), min3 (a.z , b.z , c.z )); } uint4 min3 ( uint4 a, uint4 b, uint4 c) { return uint4( min3 (a.xy, b.xy, c.xy), min3 (a.zw, b.zw, c.zw)); }
float max3(float a, float b, float c)
{
	return max(a, max(b, c));
}
int max3(int a, int b, int c)
{
	return max(a, max(b, c));
}
uint max3(uint a, uint b, uint c)
{
	return max(a, max(b, c));
}
  float2 max3 ( float2 a, float2 b, float2 c) { return float2( max3 (a.x , b.x , c.x ), max3 (a.y , b.y , c.y )); } float3 max3 ( float3 a, float3 b, float3 c) { return float3( max3 (a.xy, b.xy, c.xy), max3 (a.z , b.z , c.z )); } float4 max3 ( float4 a, float4 b, float4 c) { return float4( max3 (a.xy, b.xy, c.xy), max3 (a.zw, b.zw, c.zw)); }
  int2 max3 ( int2 a, int2 b, int2 c) { return int2( max3 (a.x , b.x , c.x ), max3 (a.y , b.y , c.y )); } int3 max3 ( int3 a, int3 b, int3 c) { return int3( max3 (a.xy, b.xy, c.xy), max3 (a.z , b.z , c.z )); } int4 max3 ( int4 a, int4 b, int4 c) { return int4( max3 (a.xy, b.xy, c.xy), max3 (a.zw, b.zw, c.zw)); }
  uint2 max3 ( uint2 a, uint2 b, uint2 c) { return uint2( max3 (a.x , b.x , c.x ), max3 (a.y , b.y , c.y )); } uint3 max3 ( uint3 a, uint3 b, uint3 c) { return uint3( max3 (a.xy, b.xy, c.xy), max3 (a.z , b.z , c.z )); } uint4 max3 ( uint4 a, uint4 b, uint4 c) { return uint4( max3 (a.xy, b.xy, c.xy), max3 (a.zw, b.zw, c.zw)); }
  bool select_internal(bool    c, bool a, bool b) { return bool (c   ? a.x : b.x); } bool2 select_internal(bool    c, bool a, bool2 b) { return bool2(c   ? a   : b.x, c   ? a   : b.y); } bool2 select_internal(bool    c, bool2 a, bool b) { return bool2(c   ? a.x : b  , c   ? a.y : b  ); } bool2 select_internal(bool    c, bool2 a, bool2 b) { return bool2(c   ? a.x : b.x, c   ? a.y : b.y); } bool2 select_internal(bool2   c, bool a, bool b) { return bool2(c.x ? a   : b  , c.y ? a   : b  ); } bool2 select_internal(bool2   c, bool a, bool2 b) { return bool2(c.x ? a   : b.x, c.y ? a   : b.y); } bool2 select_internal(bool2   c, bool2 a, bool b) { return bool2(c.x ? a.x : b  , c.y ? a.y : b  ); } bool2 select_internal(bool2   c, bool2 a, bool2 b) { return bool2(c.x ? a.x : b.x, c.y ? a.y : b.y); } bool3 select_internal(bool    c, bool a, bool3 b) { return bool3(c   ? a   : b.x, c   ? a   : b.y, c   ? a   : b.z); } bool3 select_internal(bool    c, bool3 a, bool b) { return bool3(c   ? a.x : b  , c   ? a.y : b  , c   ? a.z : b  ); } bool3 select_internal(bool    c, bool3 a, bool3 b) { return bool3(c   ? a.x : b.x, c   ? a.y : b.y, c   ? a.z : b.z); } bool3 select_internal(bool3   c, bool a, bool b) { return bool3(c.x ? a   : b  , c.y ? a   : b  , c.z ? a   : b  ); } bool3 select_internal(bool3   c, bool a, bool3 b) { return bool3(c.x ? a   : b.x, c.y ? a   : b.y, c.z ? a   : b.z); } bool3 select_internal(bool3   c, bool3 a, bool b) { return bool3(c.x ? a.x : b  , c.y ? a.y : b  , c.z ? a.z : b  ); } bool3 select_internal(bool3   c, bool3 a, bool3 b) { return bool3(c.x ? a.x : b.x, c.y ? a.y : b.y, c.z ? a.z : b.z); } bool4 select_internal(bool    c, bool a, bool4 b) { return bool4(c   ? a   : b.x, c   ? a   : b.y, c   ? a   : b.z, c   ? a   : b.w); } bool4 select_internal(bool    c, bool4 a, bool b) { return bool4(c   ? a.x : b  , c   ? a.y : b  , c   ? a.z : b  , c   ? a.w : b  ); } bool4 select_internal(bool    c, bool4 a, bool4 b) { return bool4(c   ? a.x : b.x, c   ? a.y : b.y, c   ? a.z : b.z, c   ? a.w : b.w); } bool4 select_internal(bool4   c, bool a, bool b) { return bool4(c.x ? a   : b  , c.y ? a   : b  , c.z ? a   : b  , c.w ? a   : b  ); } bool4 select_internal(bool4   c, bool a, bool4 b) { return bool4(c.x ? a   : b.x, c.y ? a   : b.y, c.z ? a   : b.z, c.w ? a   : b.w); } bool4 select_internal(bool4   c, bool4 a, bool b) { return bool4(c.x ? a.x : b  , c.y ? a.y : b  , c.z ? a.z : b  , c.w ? a.w : b  ); } bool4 select_internal(bool4   c, bool4 a, bool4 b) { return bool4(c.x ? a.x : b.x, c.y ? a.y : b.y, c.z ? a.z : b.z, c.w ? a.w : b.w); } 
  int select_internal(bool    c, int a, int b) { return int (c   ? a.x : b.x); } int2 select_internal(bool    c, int a, int2 b) { return int2(c   ? a   : b.x, c   ? a   : b.y); } int2 select_internal(bool    c, int2 a, int b) { return int2(c   ? a.x : b  , c   ? a.y : b  ); } int2 select_internal(bool    c, int2 a, int2 b) { return int2(c   ? a.x : b.x, c   ? a.y : b.y); } int2 select_internal(bool2   c, int a, int b) { return int2(c.x ? a   : b  , c.y ? a   : b  ); } int2 select_internal(bool2   c, int a, int2 b) { return int2(c.x ? a   : b.x, c.y ? a   : b.y); } int2 select_internal(bool2   c, int2 a, int b) { return int2(c.x ? a.x : b  , c.y ? a.y : b  ); } int2 select_internal(bool2   c, int2 a, int2 b) { return int2(c.x ? a.x : b.x, c.y ? a.y : b.y); } int3 select_internal(bool    c, int a, int3 b) { return int3(c   ? a   : b.x, c   ? a   : b.y, c   ? a   : b.z); } int3 select_internal(bool    c, int3 a, int b) { return int3(c   ? a.x : b  , c   ? a.y : b  , c   ? a.z : b  ); } int3 select_internal(bool    c, int3 a, int3 b) { return int3(c   ? a.x : b.x, c   ? a.y : b.y, c   ? a.z : b.z); } int3 select_internal(bool3   c, int a, int b) { return int3(c.x ? a   : b  , c.y ? a   : b  , c.z ? a   : b  ); } int3 select_internal(bool3   c, int a, int3 b) { return int3(c.x ? a   : b.x, c.y ? a   : b.y, c.z ? a   : b.z); } int3 select_internal(bool3   c, int3 a, int b) { return int3(c.x ? a.x : b  , c.y ? a.y : b  , c.z ? a.z : b  ); } int3 select_internal(bool3   c, int3 a, int3 b) { return int3(c.x ? a.x : b.x, c.y ? a.y : b.y, c.z ? a.z : b.z); } int4 select_internal(bool    c, int a, int4 b) { return int4(c   ? a   : b.x, c   ? a   : b.y, c   ? a   : b.z, c   ? a   : b.w); } int4 select_internal(bool    c, int4 a, int b) { return int4(c   ? a.x : b  , c   ? a.y : b  , c   ? a.z : b  , c   ? a.w : b  ); } int4 select_internal(bool    c, int4 a, int4 b) { return int4(c   ? a.x : b.x, c   ? a.y : b.y, c   ? a.z : b.z, c   ? a.w : b.w); } int4 select_internal(bool4   c, int a, int b) { return int4(c.x ? a   : b  , c.y ? a   : b  , c.z ? a   : b  , c.w ? a   : b  ); } int4 select_internal(bool4   c, int a, int4 b) { return int4(c.x ? a   : b.x, c.y ? a   : b.y, c.z ? a   : b.z, c.w ? a   : b.w); } int4 select_internal(bool4   c, int4 a, int b) { return int4(c.x ? a.x : b  , c.y ? a.y : b  , c.z ? a.z : b  , c.w ? a.w : b  ); } int4 select_internal(bool4   c, int4 a, int4 b) { return int4(c.x ? a.x : b.x, c.y ? a.y : b.y, c.z ? a.z : b.z, c.w ? a.w : b.w); } 
  float select_internal(bool    c, float a, float b) { return float (c   ? a.x : b.x); } float2 select_internal(bool    c, float a, float2 b) { return float2(c   ? a   : b.x, c   ? a   : b.y); } float2 select_internal(bool    c, float2 a, float b) { return float2(c   ? a.x : b  , c   ? a.y : b  ); } float2 select_internal(bool    c, float2 a, float2 b) { return float2(c   ? a.x : b.x, c   ? a.y : b.y); } float2 select_internal(bool2   c, float a, float b) { return float2(c.x ? a   : b  , c.y ? a   : b  ); } float2 select_internal(bool2   c, float a, float2 b) { return float2(c.x ? a   : b.x, c.y ? a   : b.y); } float2 select_internal(bool2   c, float2 a, float b) { return float2(c.x ? a.x : b  , c.y ? a.y : b  ); } float2 select_internal(bool2   c, float2 a, float2 b) { return float2(c.x ? a.x : b.x, c.y ? a.y : b.y); } float3 select_internal(bool    c, float a, float3 b) { return float3(c   ? a   : b.x, c   ? a   : b.y, c   ? a   : b.z); } float3 select_internal(bool    c, float3 a, float b) { return float3(c   ? a.x : b  , c   ? a.y : b  , c   ? a.z : b  ); } float3 select_internal(bool    c, float3 a, float3 b) { return float3(c   ? a.x : b.x, c   ? a.y : b.y, c   ? a.z : b.z); } float3 select_internal(bool3   c, float a, float b) { return float3(c.x ? a   : b  , c.y ? a   : b  , c.z ? a   : b  ); } float3 select_internal(bool3   c, float a, float3 b) { return float3(c.x ? a   : b.x, c.y ? a   : b.y, c.z ? a   : b.z); } float3 select_internal(bool3   c, float3 a, float b) { return float3(c.x ? a.x : b  , c.y ? a.y : b  , c.z ? a.z : b  ); } float3 select_internal(bool3   c, float3 a, float3 b) { return float3(c.x ? a.x : b.x, c.y ? a.y : b.y, c.z ? a.z : b.z); } float4 select_internal(bool    c, float a, float4 b) { return float4(c   ? a   : b.x, c   ? a   : b.y, c   ? a   : b.z, c   ? a   : b.w); } float4 select_internal(bool    c, float4 a, float b) { return float4(c   ? a.x : b  , c   ? a.y : b  , c   ? a.z : b  , c   ? a.w : b  ); } float4 select_internal(bool    c, float4 a, float4 b) { return float4(c   ? a.x : b.x, c   ? a.y : b.y, c   ? a.z : b.z, c   ? a.w : b.w); } float4 select_internal(bool4   c, float a, float b) { return float4(c.x ? a   : b  , c.y ? a   : b  , c.z ? a   : b  , c.w ? a   : b  ); } float4 select_internal(bool4   c, float a, float4 b) { return float4(c.x ? a   : b.x, c.y ? a   : b.y, c.z ? a   : b.z, c.w ? a   : b.w); } float4 select_internal(bool4   c, float4 a, float b) { return float4(c.x ? a.x : b  , c.y ? a.y : b  , c.z ? a.z : b  , c.w ? a.w : b  ); } float4 select_internal(bool4   c, float4 a, float4 b) { return float4(c.x ? a.x : b.x, c.y ? a.y : b.y, c.z ? a.z : b.z, c.w ? a.w : b.w); } 
bool  and_internal(bool  a, bool  b) { return bool(a && b); }
bool2 and_internal(bool2 a, bool2 b) { return bool2(a.x && b.x, a.y && b.y); }
bool3 and_internal(bool3 a, bool3 b) { return bool3(a.x && b.x, a.y && b.y, a.z && b.z); }
bool4 and_internal(bool4 a, bool4 b) { return bool4(a.x && b.x, a.y && b.y, a.z && b.z, a.w && b.w); }
bool  or_internal(bool  a, bool  b) { return bool(a || b); }
bool2 or_internal(bool2 a, bool2 b) { return bool2(a.x || b.x, a.y || b.y); }
bool3 or_internal(bool3 a, bool3 b) { return bool3(a.x || b.x, a.y || b.y, a.z || b.z); }
bool4 or_internal(bool4 a, bool4 b) { return bool4(a.x || b.x, a.y || b.y, a.z || b.z, a.w || b.w); }
float  CondMask(bool Cond, float  Src0, float  Src1) { return Cond ? Src0 : Src1; }
float2 CondMask(bool Cond, float2 Src0, float2 Src1) { return Cond ? Src0 : Src1; }
float3 CondMask(bool Cond, float3 Src0, float3 Src1) { return Cond ? Src0 : Src1; }
float4 CondMask(bool Cond, float4 Src0, float4 Src1) { return Cond ? Src0 : Src1; }
int  CondMask(bool Cond, int  Src0, int  Src1) { return Cond ? Src0 : Src1; }
int2 CondMask(bool Cond, int2 Src0, int2 Src1) { return Cond ? Src0 : Src1; }
int3 CondMask(bool Cond, int3 Src0, int3 Src1) { return Cond ? Src0 : Src1; }
int4 CondMask(bool Cond, int4 Src0, int4 Src1) { return Cond ? Src0 : Src1; }
uint  CondMask(bool Cond, uint  Src0, uint  Src1) { return Cond ? Src0 : Src1; }
uint2 CondMask(bool Cond, uint2 Src0, uint2 Src1) { return Cond ? Src0 : Src1; }
uint3 CondMask(bool Cond, uint3 Src0, uint3 Src1) { return Cond ? Src0 : Src1; }
uint4 CondMask(bool Cond, uint4 Src0, uint4 Src1) { return Cond ? Src0 : Src1; }
float UnpackByte0(uint v) { return float(v & 0xff); }
float UnpackByte1(uint v) { return float((v >> 8) & 0xff); }
float UnpackByte2(uint v) { return float((v >> 16) & 0xff); }
float UnpackByte3(uint v) { return float(v >> 24); }
uint BitFieldInsertU32(uint Mask, uint Preserve, uint Enable)
{
	return (Preserve & Mask) | (Enable & ~Mask);
}
uint BitFieldExtractU32(uint Data, uint Size, uint Offset)
{
	Size &= 31;
	Offset &= 31;
	return (Data >> Offset) & ((1u << Size) - 1u);
}
int BitFieldExtractI32(int Data, uint Size, uint Offset)
{
	Size &= 31u;
	Offset &= 31u;
	const uint Shift = (32u - Size) & 31u;
	const int Value = (Data >> Offset) & int((1u << Size) - 1u);
	return (Value << Shift) >> Shift;
}
uint BitFieldMaskU32(uint MaskWidth, uint MaskLocation)
{
	MaskWidth &= 31u;
	MaskLocation &= 31u;
	return ((1u << MaskWidth) - 1u) << MaskLocation;
}
int MulI24(int I1, int I2)
{
	return (I1 * I2);
}
uint MulU24(uint U1, uint U2)
{
	return U1 * U2;
}
int MadI24(int I1, int I2, int I3)
{
	return I1 * I2 + I3;
}
uint MadU24(uint U1, uint U2, uint U3)
{
	return U1 * U2 + U3;
}
uint Padding(uint Value, uint Pow2)
{
	return (Value + Pow2 - 1u) & ~(Pow2 - 1u);
}
uint CeilLog2(uint Value)
{
	return Value < 2u ? 0u : firstbithigh(Value - 1u) + 1u;
}
float BitFieldExtractFloat(uint Bits, uint Count, uint Offset)
{
	return BitFieldExtractU32(Bits, Count, Offset) / (float)BitFieldMaskU32(Count, 0u);
}
uint BitAlignU32(uint High, uint Low, uint Shift)
{
	Shift &= 31u;
	uint Result = Low >> Shift;
	Result |= Shift > 0u ? (High << (32u - Shift)) : 0u;
	return Result;
}
uint ByteAlignU32(uint High, uint Low, uint Shift)
{
	return BitAlignU32(High, Low, Shift * 8);
}
uint2 PackUlongType(uint2 Value)
{
	return Value;
}
uint2 UnpackUlongType(uint2 Value)
{
	return Value;
}
uint MaskedBitCount( uint2 Bits, uint Index )
{
	bool bLow = Index < 32;
	uint Mask = 1u << ( Index - ( bLow ? 0 : 32 ) );
	Mask -= 1;
	uint Offset;
	Offset  = countbits( Bits.x & ( bLow ? Mask : ~0u ) );
	Offset += countbits( Bits.y & ( bLow ? 0 : Mask ) );
	return Offset;
}
uint PackUnorm2x16(float2 v)
{
	uint2 sv = uint2(round(clamp(v, 0.0, 1.0) * 65535.0));
	return (sv.x | (sv.y << 16u));
}
float2 UnpackUnorm2x16(uint p)
{
	float2 Ret;
	Ret.x = (p & 0xffff) * rcp(65535.0f);
	Ret.y = (p >> 16u) * rcp(65535.0f);
	return Ret;
}
uint PackSnorm2x16(float2 v)
{
	uint2 sv = uint2(round(clamp(v, -1.0, 1.0) * 32767.0) + 32767.0);
	return (sv.x | (sv.y << 16u));
}
float2 UnpackSnorm2x16(uint p)
{
	float2 Ret;
	Ret.x = clamp((float(p & 0xffff) - 32767.0f) * rcp(32767.0f), -1.0, 1.0);
	Ret.y = clamp((float(p >> 16u) - 32767.0f) * rcp(32767.0f), -1.0, 1.0);
	return Ret;
}
uint PackUInt2ToUInt(uint X, uint Y)
{
	return X | (Y << 16u);
}
uint PackUInt2ToUInt(uint2 XY)
{
	return PackUInt2ToUInt(XY.x, XY.y);
}
uint2 UnpackUInt2FromUInt(uint Packed)
{
	return uint2(Packed & 0xffff, Packed >> 16);
}
uint PackFloat2ToUInt(float X, float Y)
{
	return PackUInt2ToUInt(f32tof16(X), f32tof16(Y));
}
uint PackFloat2ToUInt(float2 XY)
{
	return PackFloat2ToUInt(XY.x, XY.y);
}
float2 UnpackFloat2FromUInt(uint In)
{
	return float2(f16tof32(In), f16tof32(In >> 16));
}
uint PackR8(float Value)
{
	return uint(saturate(Value) * 255.0f);
}
float UnpackR8(uint In)
{
	return float(In & 0xFF) * (1.0f / 255.0f);
}
uint PackR6(float Value)
{
	return uint(saturate(Value) * 63.0f);
}
float UnpackR6(uint In)
{
	return float(In & 0x3F) * (1.0f / 63.0f);
}
uint PackRGBA8(float4 In)
{
	uint r = (uint(saturate(In.r) * 255.0f) << 0);
	uint g = (uint(saturate(In.g) * 255.0f) << 8);
	uint b = (uint(saturate(In.b) * 255.0f) << 16);
	uint a = (uint(saturate(In.a) * 255.0f) << 24);
	return r | g | b | a;
}
float4 UnpackRGBA8(uint In)
{
	float4 Out;
	Out.r = float((In >> 0) & 0xFF) * (1.0f / 255.0f);
	Out.g = float((In >> 8) & 0xFF) * (1.0f / 255.0f);
	Out.b = float((In >> 16) & 0xFF) * (1.0f / 255.0f);
	Out.a = float((In >> 24) & 0xFF) * (1.0f / 255.0f);
	return Out;
}
uint PackUint4ToUint(uint4 In)
{
	uint r = (In.r & 0xFFu);
	uint g = (In.g & 0xFFu) << 8u;
	uint b = (In.b & 0xFFu) << 16u;
	uint a = (In.a & 0xFFu) << 24u;
	return r | g | b | a;
}
uint4 UnpackUintToUint4(uint In)
{
	uint4 Out;
	Out.r = (In >> 0u)  & 0xFFu;
	Out.g = (In >> 8u)  & 0xFFu;
	Out.b = (In >> 16u) & 0xFFu;
	Out.a = (In >> 24u) & 0xFFu;
	return Out;
}
uint PackUnorm10(float Value)
{
	return uint(saturate(Value) * 1023.0f);
}
float UnpackUnorm10(uint In)
{
	return float(In & 0x3FF) * (1.0f / 1023.0f);
}
uint Pack10F(float Value)
{
	return (f32tof16(Value) >> 5) & 0x000003FF;
}
float Unpack10F(uint Value)
{
	return f16tof32((Value << 5) & 0x7FE0);
}
uint PackR11G11B10F(float3 rgb)
{
	uint r = (f32tof16(rgb.r) << 17) & 0xFFE00000;
	uint g = (f32tof16(rgb.g) << 6) & 0x001FFC00;
	uint b = (f32tof16(rgb.b) >> 5) & 0x000003FF;
	return r | g | b;
}
float3 UnpackR11G11B10F(uint rgb)
{
	float r = f16tof32((rgb >> 17) & 0x7FF0);
	float g = f16tof32((rgb >> 6) & 0x7FF0);
	float b = f16tof32((rgb << 5) & 0x7FE0);
	return float3(r, g, b);
}
uint PackR10G10B10F(float3 rgb)
{
	uint r = (f32tof16(rgb.r) << 15) & 0x3FF00000;	
	uint g = (f32tof16(rgb.g) << 5) & 0x000FFC00;	
	uint b = (f32tof16(rgb.b) >> 5) & 0x000003FF;	
	return r | g | b;
}
float3 UnpackR10G10B10F(uint rgb)
{
	float r = f16tof32((rgb >> 15) & 0x7FE0);
	float g = f16tof32((rgb >> 5) & 0x7FE0);
	float b = f16tof32((rgb << 5) & 0x7FE0);
	return float3(r, g, b);
}
uint PackRGB998E6(float3 rgb)
{
	const float MAX_C = float((1 << 8) - 1) * asfloat((63 - 32 + 127) << 23);
	uint3 cbits = asuint(min(rgb, MAX_C));
	int3  exp = int3(cbits >> 23) - 127;
	uint3 man = (cbits & ((1 << 23) - 1)) | (1 << 23);
	int max_exp = max3(exp.x, exp.y, exp.z);
	max_exp++;
	max_exp = max(max_exp, -32);
	int3 shift = min(max_exp - exp - int3(9, 9, 8) + 23, 31);
	man += 1u << (shift - 1);
	man >>= shift;
	if ((man.x >= (1 << 9)) ||
		(man.y >= (1 << 9)) ||
		(man.z >= (1 << 8)))
	{
		max_exp++;
		man >>= 1;
	}
	return
		(uint(max_exp + 32) << (9 + 9 + 8)) |
		(uint(man.x   	  ) << (9 + 8    )) |
		(uint(man.y   	  ) << (8        )) |
		(uint(man.z       ));
}
float3 UnpackRGB998E6(uint bits)
{
	int e = ((bits >> (9 + 9 + 8)) & ((1 << 6) - 1)) - 32;
	int r = ((bits >> (9 + 8    )) & ((1 << 9) - 1));
	int g = ((bits >> (8        )) & ((1 << 9) - 1));
	int b = ((bits               ) & ((1 << 8) - 1));
	float3 f = {
		asfloat(uint(e + 127 - 9) << 23),
		asfloat(uint(e + 127 - 9) << 23),
		asfloat(uint(e + 127 - 8) << 23)
	};
	float3 result = { float(r), float(g), float(b) };
	return result * f;
}
uint2 PackR16G16B16A16F(float4 In)
{
	return uint2(PackFloat2ToUInt(In.xy), PackFloat2ToUInt(In.zw));
}
float4 UnpackR16G16B16A16F(uint2 In)
{
	return float4(UnpackFloat2FromUInt(In.x), UnpackFloat2FromUInt(In.y));
}
uint PackR24F(float In)
{
	return asuint(In) >> 8;
}
float UnpackR24F(uint In)
{
	return asfloat(In<<8);
}
uint  PackTileCoord8bits(uint2 In)  { return  (( In .x & 0xFF ) | (( In .y & 0xFF ) << 8u )); }
uint2 UnpackTileCoord8bits(uint In) { return  uint2(BitFieldExtractU32( In , 8u , 0), BitFieldExtractU32( In , 8u , 8u )); }
uint  PackTileCoord10bits(uint2 In) { return  (( In .x & 0x3FF ) | (( In .y & 0x3FF ) << 10u )); }
uint2 UnpackTileCoord10bits(uint In){ return  uint2(BitFieldExtractU32( In , 10u , 0), BitFieldExtractU32( In , 10u , 10u )); }
uint  PackTileCoord12bits(uint2 In) { return  (( In .x & 0xFFF ) | (( In .y & 0xFFF ) << 12u )); }
uint2 UnpackTileCoord12bits(uint In){ return  uint2(BitFieldExtractU32( In , 12u , 0), BitFieldExtractU32( In , 12u , 12u )); }
uint  PackTileCoord14bits(uint2 In) { return  (( In .x & 0x3FFF ) | (( In .y & 0x3FFF ) << 14u )); }
uint2 UnpackTileCoord14bits(uint In){ return  uint2(BitFieldExtractU32( In , 14u , 0), BitFieldExtractU32( In , 14u , 14u )); }
uint  PackTileCoord16bits(uint2 In) { return  (( In .x & 0xFFFF ) | (( In .y & 0xFFFF ) << 16u )); }
uint2 UnpackTileCoord16bits(uint In){ return  uint2(BitFieldExtractU32( In , 16u , 0), BitFieldExtractU32( In , 16u , 16u )); }
struct FloatDeriv
{
	float Value;
	float Ddx;
	float Ddy;
};
struct FloatDeriv2
{
	float2 Value;
	float2 Ddx;
	float2 Ddy;
};
struct FloatDeriv3
{
	float3 Value;
	float3 Ddx;
	float3 Ddy;
};
struct FloatDeriv4
{
	float4 Value;
	float4 Ddx;
	float4 Ddy;
};
FloatDeriv ConstructFloatDeriv(float InValue, float InDdx, float InDdy)
{
	FloatDeriv Ret;
	Ret.Value = InValue;
	Ret.Ddx = InDdx;
	Ret.Ddy = InDdy;
	return Ret;
}
FloatDeriv2 ConstructFloatDeriv2(float2 InValue, float2 InDdx, float2 InDdy)
{
	FloatDeriv2 Ret;
	Ret.Value = InValue;
	Ret.Ddx = InDdx;
	Ret.Ddy = InDdy;
	return Ret;
}
FloatDeriv3 ConstructFloatDeriv3(float3 InValue, float3 InDdx, float3 InDdy)
{
	FloatDeriv3 Ret;
	Ret.Value = InValue;
	Ret.Ddx = InDdx;
	Ret.Ddy = InDdy;
	return Ret;
}
FloatDeriv4 ConstructFloatDeriv4(float4 InValue, float4 InDdx, float4 InDdy)
{
	FloatDeriv4 Ret;
	Ret.Value = InValue;
	Ret.Ddx = InDdx;
	Ret.Ddy = InDdy;
	return Ret;
}
float NearestDeviceDepth(float DepthA, 
                         float DepthB,
                         float DepthC = (1 ? 0.0f : 1.0f)
)
{
	return max3(DepthA, DepthB, DepthC);
}
float FarthestDeviceDepth(float DepthA, 
                          float DepthB,
                          float DepthC = (1 ? 1.0f : 0.0f)
)
{
	return min3(DepthA, DepthB, DepthC);
}
const static float PI = 3.1415926535897932f;
const static float MaxHalfFloat = 65504.0f;
const static float Max11BitsFloat = 65024.0f;
const static float Max10BitsFloat = 64512.0f;
const static float3 Max111110BitsFloat3 = float3(Max11BitsFloat, Max11BitsFloat, Max10BitsFloat);
struct FPackedNaniteView
{
	float4x4	SVPositionToTranslatedWorld;
	float4x4	ViewToTranslatedWorld;
	float4x4	TranslatedWorldToView;
	float4x4	TranslatedWorldToClip;
	float4x4	ViewToClip;
	float4x4	ClipToRelativeWorld;
	float4x4	PrevTranslatedWorldToView;
	float4x4	PrevTranslatedWorldToClip;
	float4x4	PrevViewToClip;
	float4x4	PrevClipToRelativeWorld;
	int4		ViewRect;
	float4		ViewSizeAndInvSize;
	float4		ClipSpaceScaleOffset;
	float3		PreViewTranslationHigh;
	float		ViewOriginHighX;
	float3		PrevPreViewTranslationHigh;
	float		ViewOriginHighY;
	float3		PrevPreViewTranslationLow;
	float		CullingViewMinRadiusTestFactorSq;
	float3		ViewOriginLow;
	float		ViewOriginHighZ;
	float3		CullingViewOriginTranslatedWorld;
	float		RangeBasedCullingDistance;
	float3		ViewForward;
	float 		NearPlane;
	float4		TranslatedGlobalClipPlane; 
	float3		PreViewTranslationLow;
	float		CullingViewScreenMultiple;
	float2		LODScales;
	uint		InstanceOcclusionQueryMask;
	uint		StreamingPriorityCategory_AndFlags;
	int4		TargetLayerIdX_AndMipLevelY_AndNumMipLevelsZ;
	int4		HZBTestViewRect;
	uint4		FirstPersonTransformRowsExceptRow2Z; 
	uint		FirstPersonTransformRow2Z;
	uint		LightingChannelMask;
	uint		Padding0;
	uint		Padding1;
};
struct FPackedHairSample
{
	float Depth;
	uint  ControlPointID_MacroGroupID;
	uint  Tangent_Coverage8bit;
	uint  BaseColor_Roughness;
	uint  Data;
};
struct FPackedHairVis
{
	uint Depth_Coverage8bit;
	uint ControlPointID_MaterialID;
};
struct FPackedHairVisPPLL
{
	uint Depth_Coverage8bit;
	uint ControlPointID_MaterialID;
	uint NextNodeIndex;
};
struct FPackedVirtualVoxelNodeDesc  
{
	float3	TranslatedWorldMinAABB;
	uint	PackedPageIndexResolution; 
	float3	TranslatedWorldMaxAABB;
	uint	PageIndexOffset_VoxelWorldSize;
};
struct FDeepShadowViewInfo
{
	float4x4 TranslatedWorldToClipScaledBiased; 
	float4x4 TranslatedWorldToClip;
	float4 AtlasScaleBias; 
	float3   ViewForward;
	float    MinRadiusAtDepth1;
};
uint3 Rand3DPCG16(int3 p)
{
	uint3 v = uint3(p);
	v = v * 1664525u + 1013904223u;
	v.x += v.y*v.z;
	v.y += v.z*v.x;
	v.z += v.x*v.y;
	v.x += v.y*v.z;
	v.y += v.z*v.x;
	v.z += v.x*v.y;
	return v >> 16u;
}
uint3 Rand3DPCG32(int3 p)
{
	uint3 v = uint3(p);
	v = v * 1664525u + 1013904223u;
	v.x += v.y*v.z;
	v.y += v.z*v.x;
	v.z += v.x*v.y;
	v ^= v >> 16u;
	v.x += v.y*v.z;
	v.y += v.z*v.x;
	v.z += v.x*v.y;
	return v;
}
uint4 Rand4DPCG32(int4 p)
{
	uint4 v = uint4(p);
	v = v * 1664525u + 1013904223u;
	v.x += v.y*v.w;
	v.y += v.z*v.x;
	v.z += v.x*v.y;
	v.w += v.y*v.z;
	v ^= (v >> 16u);
	v.x += v.y*v.w;
	v.y += v.z*v.x;
	v.z += v.x*v.y;
	v.w += v.y*v.z;
	return v;
}
struct FDFScalar
{
	float High;
	float Low;
};
FDFScalar MakeDFScalar(float High, float Low)
{
	FDFScalar Result;
	Result.High = High;
	Result.Low = Low;
	return Result;
}
FDFScalar DFPromote(FDFScalar Value) { return Value; }
FDFScalar DFPromote(float Value) { return MakeDFScalar(Value, (float)0); }
float DFDemote(FDFScalar Value) { return Value.High + Value.Low; }
float DFDemote(float Value) { return Value; }
FDFScalar DFNegate(FDFScalar Value)
{
	return MakeDFScalar(-Value.High, -Value.Low);
}
float DFSign(FDFScalar Value)
{
	return (float)sign(Value.High);
}
FDFScalar DFAbs(FDFScalar Value)
{
	const float Sign = DFSign(Value);
	return MakeDFScalar(Sign * Value.High, Sign * Value.Low);
}
FDFScalar DFTwoSum(float Lhs, float Rhs)
{
	const float S =   MakePrecise( ( Lhs ) + ( Rhs ) );
	const float V =   MakePrecise( ( S ) - ( Lhs ) );
	const float Q =   MakePrecise( ( S ) - ( V ) );
	const float R =   MakePrecise( ( Lhs ) - ( Q ) );
	const float T =   MakePrecise( ( Rhs ) - ( V ) );
	const float Y =   MakePrecise( ( R ) + ( T ) );
	return MakeDFScalar(S, Y);
}
FDFScalar DFFastTwoSum(float Lhs, float Rhs)
{
	const float S =   MakePrecise( ( Lhs ) + ( Rhs ) );
	const float T =   MakePrecise( ( S ) - ( Lhs ) );
	const float E =   MakePrecise( ( Rhs ) - ( T ) );
	return MakeDFScalar(S, E);
}
FDFScalar DFAdd(float Lhs, float Rhs) { return DFTwoSum(Lhs, Rhs); }
FDFScalar DFFastAdd(float Lhs, float Rhs) { return DFTwoSum(Lhs, Rhs); }
FDFScalar DFAdd(FDFScalar Lhs, FDFScalar Rhs)
{
	FDFScalar S = DFTwoSum(Lhs.High, Rhs.High);
	const FDFScalar T = DFTwoSum(Lhs.Low, Rhs.Low);
	S.Low += T.High;
	S = DFFastTwoSum(S.High, S.Low);
	S.Low += T.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFScalar DFAdd(FDFScalar Lhs, float Rhs)
{
	const FDFScalar S = DFTwoSum(Lhs.High, Rhs);
	const float T = Lhs.Low + S.Low;
	return DFFastTwoSum(S.High, T);
}
FDFScalar DFAdd(float Lhs, FDFScalar Rhs) { return DFAdd(Rhs, Lhs); }
float DFAddDemote(FDFScalar Lhs, FDFScalar Rhs)
{
	FDFScalar S = DFTwoSum(Lhs.High, Rhs.High);
	const FDFScalar T = DFTwoSum(Lhs.Low, Rhs.Low);
	S.Low += T.High;
	S = DFFastTwoSum(S.High, S.Low);
	S.Low += T.Low;
	return S.High + S.Low;
}
float DFAddDemote(FDFScalar Lhs, float Rhs)
{
	const FDFScalar S = DFTwoSum(Lhs.High, Rhs);
	const float T = Lhs.Low + S.Low;
	return S.High + T;
}
float DFAddDemote(float Lhs, FDFScalar Rhs) { return DFAddDemote(Rhs, Lhs); }
float DFAddDemote(float Lhs, float Rhs) { return Lhs + Rhs; }
FDFScalar DFFastAdd(FDFScalar Lhs, FDFScalar Rhs)
{
	FDFScalar S = DFTwoSum(Lhs.High, Rhs.High);
	S.Low += Lhs.Low + Rhs.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFScalar DFFastAdd(FDFScalar Lhs, float Rhs)
{
	FDFScalar S = DFTwoSum(Lhs.High, Rhs);
	S.Low += Lhs.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFScalar DFFastAdd(float Lhs, FDFScalar Rhs) { return DFFastAdd(Rhs, Lhs); }
float DFFastAddDemote(FDFScalar Lhs, FDFScalar Rhs)
{
	FDFScalar S = DFTwoSum(Lhs.High, Rhs.High);
	S.Low += Lhs.Low + Rhs.Low;
	return S.High + S.Low;
}
float DFFastAddDemote(FDFScalar Lhs, float Rhs) { return DFAddDemote(Lhs, Rhs); }
float DFFastAddDemote(float Lhs, FDFScalar Rhs) { return DFFastAddDemote(Rhs, Lhs); }
float DFFastAddDemote(float Lhs, float Rhs) { return Rhs + Lhs; }
FDFScalar DFSubtract(float Lhs, float Rhs) { return DFAdd(Lhs, -Rhs); }
FDFScalar DFSubtract(FDFScalar Lhs, FDFScalar Rhs) { return DFAdd(Lhs, DFNegate(Rhs)); }
FDFScalar DFSubtract(FDFScalar Lhs, float Rhs) { return DFAdd(Lhs, -Rhs); }
FDFScalar DFSubtract(float Lhs, FDFScalar Rhs) { return DFAdd(Lhs, DFNegate(Rhs)); }
float DFSubtractDemote(float Lhs, float Rhs) { return Lhs - Rhs; }
float DFSubtractDemote(FDFScalar Lhs, FDFScalar Rhs) { return DFAddDemote(Lhs, DFNegate(Rhs)); }
float DFSubtractDemote(FDFScalar Lhs, float Rhs) { return DFAddDemote(Lhs, -Rhs); }
float DFSubtractDemote(float Lhs, FDFScalar Rhs) { return DFAddDemote(Lhs, DFNegate(Rhs)); }
FDFScalar DFFastSubtract(float Lhs, float Rhs) { return DFFastAdd(Lhs, -Rhs); }
FDFScalar DFFastSubtract(FDFScalar Lhs, FDFScalar Rhs) { return DFFastAdd(Lhs, DFNegate(Rhs)); }
FDFScalar DFFastSubtract(FDFScalar Lhs, float Rhs) { return DFFastAdd(Lhs, -Rhs); }
FDFScalar DFFastSubtract(float Lhs, FDFScalar Rhs) { return DFFastAdd(Lhs, DFNegate(Rhs)); }
float DFFastSubtractDemote(float Lhs, float Rhs) { return Lhs - Rhs; }
float DFFastSubtractDemote(FDFScalar Lhs, FDFScalar Rhs) { return DFFastAddDemote(Lhs, DFNegate(Rhs)); }
float DFFastSubtractDemote(FDFScalar Lhs, float Rhs) { return DFFastAddDemote(Lhs, -Rhs); }
float DFFastSubtractDemote(float Lhs, FDFScalar Rhs) { return DFFastAddDemote(Lhs, DFNegate(Rhs)); }
float DFFastLocalSubtractDemote(FDFScalar Lhs, FDFScalar Rhs)
{
	const float High =   MakePrecise( ( Lhs.High ) - ( Rhs.High ) );
	const float Low =   MakePrecise( ( Lhs.Low ) - ( Rhs.Low ) );
	const float Sum =   MakePrecise( ( High ) + ( Low ) );
	return Sum;
}
float DFFastLocalSubtractDemote(FDFScalar Lhs, float Rhs)
{
	const float High =   MakePrecise( ( Lhs.High ) - ( Rhs ) );
	const float Sum =   MakePrecise( ( High ) + ( Lhs.Low ) );
	return Sum;
}
float DFFastLocalSubtractDemote(float Lhs, FDFScalar Rhs)
{
	return DFFastLocalSubtractDemote(DFPromote(Lhs), Rhs);
}
FDFScalar DFTwoProductNoFMA(float Lhs, float Rhs)
{
	const float Constant = 4097; 
	const float Px =   MakePrecise( ( Lhs ) * ( Constant ) );
	const float Hx =   MakePrecise( (   MakePrecise( ( Lhs ) - ( Px ) ) ) + ( Px ) );
	const float Tx =   MakePrecise( ( Lhs ) - ( Hx ) );
	const float Py =   MakePrecise( ( Rhs ) * ( Constant ) );
	const float Hy =   MakePrecise( (   MakePrecise( ( Rhs ) - ( Py ) ) ) + ( Py ) );
	const float Ty =   MakePrecise( ( Rhs ) - ( Hy ) );
	const float P =   MakePrecise( ( Hx ) * ( Hy ) );
	const float Q =   MakePrecise( (   MakePrecise( ( Hx ) * ( Ty ) ) ) + (   MakePrecise( ( Tx ) * ( Hy ) ) ) );
	const float Z =   MakePrecise( ( P ) + ( Q ) );
	const float E =   MakePrecise( (   MakePrecise( (   MakePrecise( ( P ) - ( Z ) ) ) + ( Q ) ) ) + (   MakePrecise( ( Tx ) * ( Ty ) ) ) );
	return DFFastTwoSum(Z, E);
}
FDFScalar DFTwoProduct(float Lhs, float Rhs)
{
	const float P = Lhs * Rhs;
	const float E =   MakePrecise(  mad( ( Lhs ) , ( Rhs ) , ( -P ) ) );
	return MakeDFScalar(P, E);
}
FDFScalar DFMultiply(float Lhs, float Rhs) { return DFTwoProduct(Lhs, Rhs); }
FDFScalar DFMultiply(FDFScalar Lhs, FDFScalar Rhs)
{
	const FDFScalar P = DFTwoProduct(Lhs.High, Rhs.High);
	float T =   MakePrecise( ( Lhs.High ) * ( Rhs.Low ) );
	T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs.High ) , ( T ) ) );
	T =   MakePrecise( ( T ) + ( P.Low ) );
	return DFFastTwoSum(P.High, T);
}
FDFScalar DFMultiply(FDFScalar Lhs, float Rhs)
{
	FDFScalar P = DFTwoProduct(Lhs.High, Rhs);
	float T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs ) , ( P.Low ) ) );
	return DFFastTwoSum(P.High, T);
}
FDFScalar DFMultiply(float Lhs, FDFScalar Rhs) { return DFMultiply(Rhs, Lhs); }
float DFMultiplyDemote(FDFScalar Lhs, FDFScalar Rhs)
{
	const FDFScalar P = DFTwoProduct(Lhs.High, Rhs.High);
	float T =   MakePrecise( ( Lhs.High ) * ( Rhs.Low ) );
	T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs.High ) , ( T ) ) );
	T =   MakePrecise( ( T ) + ( P.Low ) );
	const float S =   MakePrecise( ( P.High ) + ( T ) );
	return S;
}
float DFMultiplyDemote(FDFScalar Lhs, float Rhs)
{
	FDFScalar P = DFTwoProduct(Lhs.High, Rhs);
	P.Low =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs ) , ( P.Low ) ) );
	const float S =   MakePrecise( ( P.High ) + ( P.Low ) );
	return S;
}
float DFMultiplyDemote(float Lhs, FDFScalar Rhs) { return DFMultiplyDemote(Rhs, Lhs); }
float DFMultiplyDemote(float Lhs, float Rhs) { return Lhs * Rhs; }
FDFScalar DFMultiplyByPow2(FDFScalar Lhs, float Rhs)
{
	return MakeDFScalar(Lhs.High * Rhs, Lhs.Low * Rhs);
}
FDFScalar DFSqr(FDFScalar V) { return DFMultiply(V, V); }
FDFScalar DFSqr(float V) { return DFTwoProduct(V, V); }
FDFScalar DFFastDivide(FDFScalar Lhs, FDFScalar Rhs);
FDFScalar DFDivide(FDFScalar Lhs, FDFScalar Rhs)
{
	const float Th =   MakePrecise( ( 1.0 ) / ( Rhs.High ) );
	const float Rh =   MakePrecise(  mad( ( -Rhs.High ) , ( Th ) , ( (float)1 ) ) );
	const float Rl =   MakePrecise( ( -Rhs.Low ) * ( Th ) );
	const FDFScalar E = DFFastTwoSum(Rh, Rl);
	const FDFScalar D = DFMultiply(E, Th);
	const FDFScalar M = DFAdd(D, Th);
	return DFMultiply(Lhs, M);
}
FDFScalar DFDivide(FDFScalar Lhs, float Rhs)
{
	const float Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFScalar P = DFTwoProduct(Th, Rhs);
	const float Dh =   MakePrecise( ( Lhs.High ) - ( P.High ) );
	const float Dt =   MakePrecise( ( Dh ) - ( P.Low ) );
	const float D =   MakePrecise( ( Dt ) + ( Lhs.Low ) );
	const float Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return DFFastTwoSum(Th, Tl);
}
FDFScalar DFDivide(float Lhs, float Rhs)
{
	return DFDivide(DFPromote(Lhs), Rhs);
}
FDFScalar DFDivide(float Lhs, FDFScalar Rhs)
{
	return DFDivide(DFPromote(Lhs), Rhs);
}
FDFScalar DFFastDivide(FDFScalar Lhs, FDFScalar Rhs)
{
	const float Th =   MakePrecise( ( Lhs.High ) / ( Rhs.High ) );
	const FDFScalar R = DFMultiply(Rhs, Th);
	const float Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float Tl =   MakePrecise( ( D ) / ( Rhs.High ) );
	return DFFastTwoSum(Th, Tl);
}
FDFScalar DFFastDivide(FDFScalar Lhs, float Rhs)
{
	const float Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFScalar R = DFTwoProduct(Rhs, Th);
	const float Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return DFFastTwoSum(Th, Tl);
}
FDFScalar DFFastDivide(float Lhs, FDFScalar Rhs) { return DFFastDivide(DFPromote(Lhs), Rhs); }
FDFScalar DFFastDivide(float Lhs, float Rhs) { return DFFastDivide(DFPromote(Lhs), Rhs); }
float DFFastDivideDemote(FDFScalar Lhs, FDFScalar Rhs)
{
	const float Th =   MakePrecise( ( Lhs.High ) / ( Rhs.High ) );
	const FDFScalar R = DFMultiply(Rhs, Th);
	const float Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float Tl =   MakePrecise( ( D ) / ( Rhs.High ) );
	return Th + Tl;
}
float DFFastDivideDemote(FDFScalar Lhs, float Rhs)
{
	const float Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFScalar R = DFTwoProduct(Rhs, Th);
	const float Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return Th + Tl;
}
float DFFastDivideDemote(float Lhs, FDFScalar Rhs) { return DFFastDivideDemote(DFPromote(Lhs), Rhs); }
float DFFastDivideDemote(float Lhs, float Rhs) { return Lhs / Rhs; }
FDFScalar DFDivideByPow2(FDFScalar Lhs, float Rhs)
{
	return MakeDFScalar(Lhs.High / Rhs, Lhs.Low / Rhs);
}
FDFScalar DFRcp(FDFScalar V) { return DFFastDivide((float)1.0, V); }
float DFRcpDemote(FDFScalar V) { return rcp(V.High); }
bool DFEqualsApprox(FDFScalar Lhs, FDFScalar Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool DFEqualsApprox(FDFScalar Lhs, float Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool DFEqualsApprox(float Lhs, FDFScalar Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool DFEquals(FDFScalar Lhs, FDFScalar Rhs)
{
	return Lhs.High == Rhs.High && Lhs.Low == Rhs.Low;
}
bool DFEquals(FDFScalar Lhs, float Rhs)
{
	return DFEquals(Lhs, DFPromote(Rhs));
}
bool DFEquals(float Lhs, FDFScalar Rhs)
{
	return DFEquals(DFPromote(Lhs), Rhs);
}
FDFScalar DFSelect(bool S, FDFScalar Lhs, FDFScalar Rhs) { return MakeDFScalar( select_internal( S , Lhs.High , Rhs.High ),  select_internal( S , Lhs.Low , Rhs.Low )); }
FDFScalar DFSelect(bool S, FDFScalar Lhs, float Rhs) { return MakeDFScalar( select_internal( S , Lhs.High , Rhs ),  select_internal( S , Lhs.Low , (float)0 )); }
FDFScalar DFSelect(bool S, float Lhs, FDFScalar Rhs) { return MakeDFScalar( select_internal( S , Lhs , Rhs.High ),  select_internal( S , (float)0 , Rhs.Low )); }
bool DFGreater(FDFScalar Lhs, FDFScalar Rhs)
{
		return Lhs.High > Rhs.High || (Lhs.High == Rhs.High && Lhs.Low > Rhs.Low);
}
bool DFLess(FDFScalar Lhs, FDFScalar Rhs)
{
	return Lhs.High < Rhs.High || (Lhs.High == Rhs.High && Lhs.Low < Rhs.Low);
}
bool DFGreater(FDFScalar Lhs, float Rhs)
{
	return Lhs.High > Rhs || (Lhs.High == Rhs && Lhs.Low > 0.0);
}
bool DFLess(FDFScalar Lhs, float Rhs)
{
	return Lhs.High < Rhs || (Lhs.High == Rhs && Lhs.Low < 0.0);
}
bool DFGreater(float Lhs, FDFScalar Rhs) { return DFLess(Rhs, Lhs); }
bool DFLess(float Lhs, FDFScalar Rhs) { return DFGreater(Rhs, Lhs); }
bool DFGreaterEqual(FDFScalar Lhs, FDFScalar Rhs) { return !DFLess(Lhs, Rhs); }
bool DFGreaterEqual(FDFScalar Lhs, float Rhs) { return !DFLess(Lhs, Rhs); }
bool DFGreaterEqual(float Lhs, FDFScalar Rhs) { return !DFLess(Lhs, Rhs); }
bool DFLessEqual(FDFScalar Lhs, float Rhs) { return !DFGreater(Lhs, Rhs); }
bool DFLessEqual(FDFScalar Lhs, FDFScalar Rhs) { return !DFGreater(Lhs, Rhs); }
bool DFLessEqual(float Lhs, FDFScalar Rhs) { return !DFGreater(Lhs, Rhs); }
FDFScalar DFMin(FDFScalar Lhs, FDFScalar Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Lhs, Rhs);
}
FDFScalar DFMin(FDFScalar Lhs, float Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Lhs, DFPromote(Rhs));
}
FDFScalar DFMin(float Lhs, FDFScalar Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), DFPromote(Lhs), Rhs);
}
FDFScalar DFMax(FDFScalar Lhs, FDFScalar Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Rhs, Lhs);
}
FDFScalar DFMax(FDFScalar Lhs, float Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), DFPromote(Rhs), Lhs);
}
FDFScalar DFMax(float Lhs, FDFScalar Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Rhs, DFPromote(Lhs));
}
struct FDFScalarDeriv
{
	FDFScalar Value;
	float Ddx;
	float Ddy;
};
FDFScalar DFSqrt(FDFScalar V)
{
	const float Sh = sqrt(V.High);
	const float P1 =   MakePrecise(  mad( ( -Sh ) , ( Sh ) , ( V.High ) ) ); 
	const float P2 =   MakePrecise( ( V.Low ) + ( P1 ) );
	const float Sl =   MakePrecise( ( P2 ) / ( (2.0 * Sh) ) );
	return DFFastTwoSum(Sh, Sl);
}
float DFSqrtDemote(FDFScalar V)
{
	const float Sh = sqrt(V.High);
	const float P1 =   MakePrecise(  mad( ( -Sh ) , ( Sh ) , ( V.High ) ) ); 
	const float P2 =   MakePrecise( ( V.Low ) + ( P1 ) );
	const float Sl =   MakePrecise( ( P2 ) / ( (2.0 * Sh) ) );
	return Sh + Sl;
}
FDFScalar DFRsqrt(FDFScalar V)
{
	return DFDivide((float)1.0, DFSqrt(V));
}
float DFRsqrtDemote(FDFScalar V) { return rsqrt(V.High); }
float DFSin(FDFScalar V)
{
	float Sh, Ch;
	sincos(V.High, Sh, Ch);
	float Sl, Cl;
	sincos(V.Low, Sl, Cl);
	return Sh*Cl + Ch*Sl; 
}
float DFCos(FDFScalar V)
{
	float Sh, Ch;
	sincos(V.High, Sh, Ch);
	float Sl, Cl;
	sincos(V.Low, Sl, Cl);
	return Ch*Cl - Sh*Sl; 
}
void DFSinCos(FDFScalar V, out float Sin, out float Cos)
{
	float Sh, Ch;
	sincos(V.High, Sh, Ch);
	float Sl, Cl;
	sincos(V.Low, Sl, Cl);
	Sin =  mad( Sh , Cl , Ch*Sl ); 
	Cos =  mad( Ch , Cl , -Sh*Sl ); 
}
float DFTan(FDFScalar V)
{
	float Th = tan(V.High);
	float Tl = tan(V.Low);
	return (Th + Tl) / (1.0 - Th * Tl); 
}
float DFAsin(FDFScalar V)
{
	return asin(DFDemote(V));
}
float DFAcos(FDFScalar V)
{
	return acos(DFDemote(V));
}
float DFAtan(FDFScalar V)
{
	return atan(DFDemote(V));
}
float DFModf(FDFScalar V, out FDFScalar Integer)
{
	float IntHigh;
	float FracHigh = modf(V.High, IntHigh);
	float IntLow;
	float FracLow = modf(V.Low, IntLow);
	float IntSum;
	float FracSum = modf(FracHigh + FracLow, IntSum);
	Integer = DFTwoSum(IntHigh, IntLow + IntSum);
	return FracSum;
}
float DFModfDemote(FDFScalar V, out float Integer)
{
	float IntHigh;
	float FracHigh = modf(V.High, IntHigh);
	float IntLow;
	float FracLow = modf(V.Low, IntLow);
	float IntSum;
	float FracSum = modf(FracHigh + FracLow, IntSum);
	Integer = IntHigh + IntLow + IntSum;
	return FracSum;
}
FDFScalar DFCeil(FDFScalar V)
{
	float IntHigh;
	float FracHigh = modf(V.High, IntHigh);
	float IntLow;
	float FracLow = modf(V.Low, IntLow);
	IntLow += ceil(FracHigh + FracLow);
	return DFTwoSum(IntHigh, IntLow);
}
FDFScalar DFFloor(FDFScalar V)
{
	float IntHigh;
	float FracHigh = modf(V.High, IntHigh);
	float IntLow;
	float FracLow = modf(V.Low, IntLow);
	IntLow += floor(FracHigh + FracLow);
	return DFTwoSum(IntHigh, IntLow);
}
FDFScalar DFRound(FDFScalar V)
{
	float Sign = DFSign(V);
	FDFScalar VAbs = MakeDFScalar(Sign*V.High, Sign*V.Low);
	float IntHigh;
	float FracHigh = modf(VAbs.High, IntHigh);
	float IntLow;
	float FracLow = modf(VAbs.Low, IntLow);
	IntLow += floor(FracHigh + FracLow + 0.5);
	return DFTwoSum(Sign * IntHigh, Sign * IntLow);
}
FDFScalar DFTrunc(FDFScalar V)
{
	float Sign = DFSign(V);
	FDFScalar VAbs = MakeDFScalar(Sign*V.High, Sign*V.Low);
	float IntHigh;
	float FracHigh = modf(VAbs.High, IntHigh);
	float IntLow;
	float FracLow = modf(VAbs.Low, IntLow);
	IntLow += floor(FracHigh + FracLow);
	return DFTwoSum(Sign * IntHigh, Sign * IntLow);
}
FDFScalar DFFrac(FDFScalar V)
{
	return DFSubtract(V, DFFloor(V));
}
float DFFracDemote(FDFScalar V)
{
	return frac(frac(V.High) + frac(V.Low));
}
FDFScalar DFFmod(FDFScalar Lhs, float Rhs)
{
	return DFSubtract(Lhs, DFMultiply(DFTrunc(DFDivide(Lhs, Rhs)), Rhs));
}
float DFFmodDemote(FDFScalar Lhs, float Rhs)
{
	return DFSubtractDemote(Lhs, DFMultiply(DFTrunc(DFDivide(Lhs, Rhs)), Rhs)); 
}
float DFFmodByPow2Demote(FDFScalar Lhs, float Rhs)
{
	return DFFracDemote(DFDivideByPow2(Lhs, Rhs)) * Rhs;
}
FDFScalar DFLerp(FDFScalar Lhs, FDFScalar Rhs, float S)
{
	return DFTwoSum(lerp(Lhs.High, Rhs.High, S), lerp(Lhs.Low, Rhs.Low, S)); 
}
FDFScalar DFSaturate(FDFScalar V)
{
	V = DFSelect(DFLess(V, 1.0), V, 1.0);
	V = DFSelect(DFLess(V, 0.0), 0.0, V);
	return V;
}
float DFSaturateDemote(FDFScalar V) { return saturate(DFDemote(V)); }
FDFScalar DFSmoothStep(FDFScalar Lhs, FDFScalar Rhs, FDFScalar S)
{
	FDFScalar T = DFSaturate(DFDivide(DFSubtract(S, Lhs), DFSubtract(Rhs, Lhs)));
	return DFMultiply(DFSqr(T), DFSubtract(3.0f, DFMultiplyByPow2(T, 2.0f)));
}
float DFSmoothStepDemote(FDFScalar Lhs, FDFScalar Rhs, FDFScalar S)
{
	float T = DFSaturateDemote(DFDivide(DFSubtract(S, Lhs), DFSubtract(Rhs, Lhs)));
	return T*T*(3.0f - (2.0f*T));
}
float DFStep(FDFScalar Lhs, FDFScalar Rhs)    { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float)1.0f , (float)0.0f ); }
float DFStep(FDFScalar Lhs, float Rhs) { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float)1.0f , (float)0.0f ); }
float DFStep(float Lhs, FDFScalar Rhs) { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float)1.0f , (float)0.0f ); }
FDFScalar DFDdx(FDFScalar V)
{
	return DFTwoSum(ddx(V.High), ddx(V.Low));
}
FDFScalar DFDdy(FDFScalar V)
{
	return DFTwoSum(ddy(V.High), ddy(V.Low));
}
float DFDdxDemote(FDFScalar V)
{
	return ddx(V.High) + ddx(V.Low);
}
float DFDdyDemote(FDFScalar V)
{
	return ddy(V.High) + ddy(V.Low);
}
FDFScalar MakeDFVector(FDFScalar X) { return X; }
FDFScalar DFGetComponent(float V, int C) { return MakeDFScalar(V, 0); }
FDFScalar DFGetComponent(FDFScalar V, int C) { return V; }
float DFLength(float V) { return abs(V); }
float DFNormalize(float V) { return (float)sign(V); }
FDFScalar DFLength(FDFScalar V) { return DFAbs(V); }
FDFScalar DFNormalize(FDFScalar V) { return DFPromote(V); }
float DFNormalizeDemote(FDFScalar V) { return DFSign(V); }
struct FDFVector2
{
	float2 High;
	float2 Low;
};
FDFScalar DFGetComponent(FDFVector2 V, int C) { return MakeDFScalar(V.High[C], V.Low[C]); }
FDFVector2 MakeDFVector2(float2 High, float2 Low)
{
	FDFVector2 Result;
	Result.High = High;
	Result.Low = Low;
	return Result;
}
FDFVector2 DFPromote(FDFVector2 Value) { return Value; }
FDFVector2 DFPromote(float2 Value) { return MakeDFVector2(Value, (float2)0); }
float2 DFDemote(FDFVector2 Value) { return Value.High + Value.Low; }
float2 DFDemote(float2 Value) { return Value; }
FDFVector2 DFNegate(FDFVector2 Value)
{
	return MakeDFVector2(-Value.High, -Value.Low);
}
float2 DFSign(FDFVector2 Value)
{
	return (float2)sign(Value.High);
}
FDFVector2 DFAbs(FDFVector2 Value)
{
	const float2 Sign = DFSign(Value);
	return MakeDFVector2(Sign * Value.High, Sign * Value.Low);
}
FDFVector2 DFTwoSum(float2 Lhs, float2 Rhs)
{
	const float2 S =   MakePrecise( ( Lhs ) + ( Rhs ) );
	const float2 V =   MakePrecise( ( S ) - ( Lhs ) );
	const float2 Q =   MakePrecise( ( S ) - ( V ) );
	const float2 R =   MakePrecise( ( Lhs ) - ( Q ) );
	const float2 T =   MakePrecise( ( Rhs ) - ( V ) );
	const float2 Y =   MakePrecise( ( R ) + ( T ) );
	return MakeDFVector2(S, Y);
}
FDFVector2 DFFastTwoSum(float2 Lhs, float2 Rhs)
{
	const float2 S =   MakePrecise( ( Lhs ) + ( Rhs ) );
	const float2 T =   MakePrecise( ( S ) - ( Lhs ) );
	const float2 E =   MakePrecise( ( Rhs ) - ( T ) );
	return MakeDFVector2(S, E);
}
FDFVector2 DFAdd(float2 Lhs, float2 Rhs) { return DFTwoSum(Lhs, Rhs); }
FDFVector2 DFFastAdd(float2 Lhs, float2 Rhs) { return DFTwoSum(Lhs, Rhs); }
FDFVector2 DFAdd(FDFVector2 Lhs, FDFVector2 Rhs)
{
	FDFVector2 S = DFTwoSum(Lhs.High, Rhs.High);
	const FDFVector2 T = DFTwoSum(Lhs.Low, Rhs.Low);
	S.Low += T.High;
	S = DFFastTwoSum(S.High, S.Low);
	S.Low += T.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector2 DFAdd(FDFVector2 Lhs, float2 Rhs)
{
	const FDFVector2 S = DFTwoSum(Lhs.High, Rhs);
	const float2 T = Lhs.Low + S.Low;
	return DFFastTwoSum(S.High, T);
}
FDFVector2 DFAdd(float2 Lhs, FDFVector2 Rhs) { return DFAdd(Rhs, Lhs); }
float2 DFAddDemote(FDFVector2 Lhs, FDFVector2 Rhs)
{
	FDFVector2 S = DFTwoSum(Lhs.High, Rhs.High);
	const FDFVector2 T = DFTwoSum(Lhs.Low, Rhs.Low);
	S.Low += T.High;
	S = DFFastTwoSum(S.High, S.Low);
	S.Low += T.Low;
	return S.High + S.Low;
}
float2 DFAddDemote(FDFVector2 Lhs, float2 Rhs)
{
	const FDFVector2 S = DFTwoSum(Lhs.High, Rhs);
	const float2 T = Lhs.Low + S.Low;
	return S.High + T;
}
float2 DFAddDemote(float2 Lhs, FDFVector2 Rhs) { return DFAddDemote(Rhs, Lhs); }
float2 DFAddDemote(float2 Lhs, float2 Rhs) { return Lhs + Rhs; }
FDFVector2 DFFastAdd(FDFVector2 Lhs, FDFVector2 Rhs)
{
	FDFVector2 S = DFTwoSum(Lhs.High, Rhs.High);
	S.Low += Lhs.Low + Rhs.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector2 DFFastAdd(FDFVector2 Lhs, float2 Rhs)
{
	FDFVector2 S = DFTwoSum(Lhs.High, Rhs);
	S.Low += Lhs.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector2 DFFastAdd(float2 Lhs, FDFVector2 Rhs) { return DFFastAdd(Rhs, Lhs); }
float2 DFFastAddDemote(FDFVector2 Lhs, FDFVector2 Rhs)
{
	FDFVector2 S = DFTwoSum(Lhs.High, Rhs.High);
	S.Low += Lhs.Low + Rhs.Low;
	return S.High + S.Low;
}
float2 DFFastAddDemote(FDFVector2 Lhs, float2 Rhs) { return DFAddDemote(Lhs, Rhs); }
float2 DFFastAddDemote(float2 Lhs, FDFVector2 Rhs) { return DFFastAddDemote(Rhs, Lhs); }
float2 DFFastAddDemote(float2 Lhs, float2 Rhs) { return Rhs + Lhs; }
FDFVector2 DFSubtract(float2 Lhs, float2 Rhs) { return DFAdd(Lhs, -Rhs); }
FDFVector2 DFSubtract(FDFVector2 Lhs, FDFVector2 Rhs) { return DFAdd(Lhs, DFNegate(Rhs)); }
FDFVector2 DFSubtract(FDFVector2 Lhs, float2 Rhs) { return DFAdd(Lhs, -Rhs); }
FDFVector2 DFSubtract(float2 Lhs, FDFVector2 Rhs) { return DFAdd(Lhs, DFNegate(Rhs)); }
float2 DFSubtractDemote(float2 Lhs, float2 Rhs) { return Lhs - Rhs; }
float2 DFSubtractDemote(FDFVector2 Lhs, FDFVector2 Rhs) { return DFAddDemote(Lhs, DFNegate(Rhs)); }
float2 DFSubtractDemote(FDFVector2 Lhs, float2 Rhs) { return DFAddDemote(Lhs, -Rhs); }
float2 DFSubtractDemote(float2 Lhs, FDFVector2 Rhs) { return DFAddDemote(Lhs, DFNegate(Rhs)); }
FDFVector2 DFFastSubtract(float2 Lhs, float2 Rhs) { return DFFastAdd(Lhs, -Rhs); }
FDFVector2 DFFastSubtract(FDFVector2 Lhs, FDFVector2 Rhs) { return DFFastAdd(Lhs, DFNegate(Rhs)); }
FDFVector2 DFFastSubtract(FDFVector2 Lhs, float2 Rhs) { return DFFastAdd(Lhs, -Rhs); }
FDFVector2 DFFastSubtract(float2 Lhs, FDFVector2 Rhs) { return DFFastAdd(Lhs, DFNegate(Rhs)); }
float2 DFFastSubtractDemote(float2 Lhs, float2 Rhs) { return Lhs - Rhs; }
float2 DFFastSubtractDemote(FDFVector2 Lhs, FDFVector2 Rhs) { return DFFastAddDemote(Lhs, DFNegate(Rhs)); }
float2 DFFastSubtractDemote(FDFVector2 Lhs, float2 Rhs) { return DFFastAddDemote(Lhs, -Rhs); }
float2 DFFastSubtractDemote(float2 Lhs, FDFVector2 Rhs) { return DFFastAddDemote(Lhs, DFNegate(Rhs)); }
float2 DFFastLocalSubtractDemote(FDFVector2 Lhs, FDFVector2 Rhs)
{
	const float2 High =   MakePrecise( ( Lhs.High ) - ( Rhs.High ) );
	const float2 Low =   MakePrecise( ( Lhs.Low ) - ( Rhs.Low ) );
	const float2 Sum =   MakePrecise( ( High ) + ( Low ) );
	return Sum;
}
float2 DFFastLocalSubtractDemote(FDFVector2 Lhs, float2 Rhs)
{
	const float2 High =   MakePrecise( ( Lhs.High ) - ( Rhs ) );
	const float2 Sum =   MakePrecise( ( High ) + ( Lhs.Low ) );
	return Sum;
}
float2 DFFastLocalSubtractDemote(float2 Lhs, FDFVector2 Rhs)
{
	return DFFastLocalSubtractDemote(DFPromote(Lhs), Rhs);
}
FDFVector2 DFTwoProductNoFMA(float2 Lhs, float2 Rhs)
{
	const float2 Constant = 4097; 
	const float2 Px =   MakePrecise( ( Lhs ) * ( Constant ) );
	const float2 Hx =   MakePrecise( (   MakePrecise( ( Lhs ) - ( Px ) ) ) + ( Px ) );
	const float2 Tx =   MakePrecise( ( Lhs ) - ( Hx ) );
	const float2 Py =   MakePrecise( ( Rhs ) * ( Constant ) );
	const float2 Hy =   MakePrecise( (   MakePrecise( ( Rhs ) - ( Py ) ) ) + ( Py ) );
	const float2 Ty =   MakePrecise( ( Rhs ) - ( Hy ) );
	const float2 P =   MakePrecise( ( Hx ) * ( Hy ) );
	const float2 Q =   MakePrecise( (   MakePrecise( ( Hx ) * ( Ty ) ) ) + (   MakePrecise( ( Tx ) * ( Hy ) ) ) );
	const float2 Z =   MakePrecise( ( P ) + ( Q ) );
	const float2 E =   MakePrecise( (   MakePrecise( (   MakePrecise( ( P ) - ( Z ) ) ) + ( Q ) ) ) + (   MakePrecise( ( Tx ) * ( Ty ) ) ) );
	return DFFastTwoSum(Z, E);
}
FDFVector2 DFTwoProduct(float2 Lhs, float2 Rhs)
{
	const float2 P = Lhs * Rhs;
	const float2 E =   MakePrecise(  mad( ( Lhs ) , ( Rhs ) , ( -P ) ) );
	return MakeDFVector2(P, E);
}
FDFVector2 DFMultiply(float2 Lhs, float2 Rhs) { return DFTwoProduct(Lhs, Rhs); }
FDFVector2 DFMultiply(FDFVector2 Lhs, FDFVector2 Rhs)
{
	const FDFVector2 P = DFTwoProduct(Lhs.High, Rhs.High);
	float2 T =   MakePrecise( ( Lhs.High ) * ( Rhs.Low ) );
	T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs.High ) , ( T ) ) );
	T =   MakePrecise( ( T ) + ( P.Low ) );
	return DFFastTwoSum(P.High, T);
}
FDFVector2 DFMultiply(FDFVector2 Lhs, float2 Rhs)
{
	FDFVector2 P = DFTwoProduct(Lhs.High, Rhs);
	float2 T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs ) , ( P.Low ) ) );
	return DFFastTwoSum(P.High, T);
}
FDFVector2 DFMultiply(float2 Lhs, FDFVector2 Rhs) { return DFMultiply(Rhs, Lhs); }
float2 DFMultiplyDemote(FDFVector2 Lhs, FDFVector2 Rhs)
{
	const FDFVector2 P = DFTwoProduct(Lhs.High, Rhs.High);
	float2 T =   MakePrecise( ( Lhs.High ) * ( Rhs.Low ) );
	T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs.High ) , ( T ) ) );
	T =   MakePrecise( ( T ) + ( P.Low ) );
	const float2 S =   MakePrecise( ( P.High ) + ( T ) );
	return S;
}
float2 DFMultiplyDemote(FDFVector2 Lhs, float2 Rhs)
{
	FDFVector2 P = DFTwoProduct(Lhs.High, Rhs);
	P.Low =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs ) , ( P.Low ) ) );
	const float2 S =   MakePrecise( ( P.High ) + ( P.Low ) );
	return S;
}
float2 DFMultiplyDemote(float2 Lhs, FDFVector2 Rhs) { return DFMultiplyDemote(Rhs, Lhs); }
float2 DFMultiplyDemote(float2 Lhs, float2 Rhs) { return Lhs * Rhs; }
FDFVector2 DFMultiplyByPow2(FDFVector2 Lhs, float2 Rhs)
{
	return MakeDFVector2(Lhs.High * Rhs, Lhs.Low * Rhs);
}
FDFVector2 DFSqr(FDFVector2 V) { return DFMultiply(V, V); }
FDFVector2 DFSqr(float2 V) { return DFTwoProduct(V, V); }
FDFVector2 DFFastDivide(FDFVector2 Lhs, FDFVector2 Rhs);
FDFVector2 DFDivide(FDFVector2 Lhs, FDFVector2 Rhs)
{
	const float2 Th =   MakePrecise( ( 1.0 ) / ( Rhs.High ) );
	const float2 Rh =   MakePrecise(  mad( ( -Rhs.High ) , ( Th ) , ( (float2)1 ) ) );
	const float2 Rl =   MakePrecise( ( -Rhs.Low ) * ( Th ) );
	const FDFVector2 E = DFFastTwoSum(Rh, Rl);
	const FDFVector2 D = DFMultiply(E, Th);
	const FDFVector2 M = DFAdd(D, Th);
	return DFMultiply(Lhs, M);
}
FDFVector2 DFDivide(FDFVector2 Lhs, float2 Rhs)
{
	const float2 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector2 P = DFTwoProduct(Th, Rhs);
	const float2 Dh =   MakePrecise( ( Lhs.High ) - ( P.High ) );
	const float2 Dt =   MakePrecise( ( Dh ) - ( P.Low ) );
	const float2 D =   MakePrecise( ( Dt ) + ( Lhs.Low ) );
	const float2 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector2 DFDivide(float2 Lhs, float2 Rhs)
{
	return DFDivide(DFPromote(Lhs), Rhs);
}
FDFVector2 DFDivide(float2 Lhs, FDFVector2 Rhs)
{
	return DFDivide(DFPromote(Lhs), Rhs);
}
FDFVector2 DFFastDivide(FDFVector2 Lhs, FDFVector2 Rhs)
{
	const float2 Th =   MakePrecise( ( Lhs.High ) / ( Rhs.High ) );
	const FDFVector2 R = DFMultiply(Rhs, Th);
	const float2 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float2 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float2 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float2 Tl =   MakePrecise( ( D ) / ( Rhs.High ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector2 DFFastDivide(FDFVector2 Lhs, float2 Rhs)
{
	const float2 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector2 R = DFTwoProduct(Rhs, Th);
	const float2 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float2 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float2 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float2 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector2 DFFastDivide(float2 Lhs, FDFVector2 Rhs) { return DFFastDivide(DFPromote(Lhs), Rhs); }
FDFVector2 DFFastDivide(float2 Lhs, float2 Rhs) { return DFFastDivide(DFPromote(Lhs), Rhs); }
float2 DFFastDivideDemote(FDFVector2 Lhs, FDFVector2 Rhs)
{
	const float2 Th =   MakePrecise( ( Lhs.High ) / ( Rhs.High ) );
	const FDFVector2 R = DFMultiply(Rhs, Th);
	const float2 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float2 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float2 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float2 Tl =   MakePrecise( ( D ) / ( Rhs.High ) );
	return Th + Tl;
}
float2 DFFastDivideDemote(FDFVector2 Lhs, float2 Rhs)
{
	const float2 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector2 R = DFTwoProduct(Rhs, Th);
	const float2 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float2 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float2 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float2 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return Th + Tl;
}
float2 DFFastDivideDemote(float2 Lhs, FDFVector2 Rhs) { return DFFastDivideDemote(DFPromote(Lhs), Rhs); }
float2 DFFastDivideDemote(float2 Lhs, float2 Rhs) { return Lhs / Rhs; }
FDFVector2 DFDivideByPow2(FDFVector2 Lhs, float2 Rhs)
{
	return MakeDFVector2(Lhs.High / Rhs, Lhs.Low / Rhs);
}
FDFVector2 DFRcp(FDFVector2 V) { return DFFastDivide((float2)1.0, V); }
float2 DFRcpDemote(FDFVector2 V) { return rcp(V.High); }
bool2 DFEqualsApprox(FDFVector2 Lhs, FDFVector2 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool2 DFEqualsApprox(FDFVector2 Lhs, float2 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool2 DFEqualsApprox(float2 Lhs, FDFVector2 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool2 DFEquals(FDFVector2 Lhs, FDFVector2 Rhs)
{
	return Lhs.High == Rhs.High && Lhs.Low == Rhs.Low;
}
bool2 DFEquals(FDFVector2 Lhs, float2 Rhs)
{
	return DFEquals(Lhs, DFPromote(Rhs));
}
bool2 DFEquals(float2 Lhs, FDFVector2 Rhs)
{
	return DFEquals(DFPromote(Lhs), Rhs);
}
FDFVector2 DFSelect(bool2 S, FDFVector2 Lhs, FDFVector2 Rhs) { return MakeDFVector2( select_internal( S , Lhs.High , Rhs.High ),  select_internal( S , Lhs.Low , Rhs.Low )); }
FDFVector2 DFSelect(bool2 S, FDFVector2 Lhs, float2 Rhs) { return MakeDFVector2( select_internal( S , Lhs.High , Rhs ),  select_internal( S , Lhs.Low , (float2)0 )); }
FDFVector2 DFSelect(bool2 S, float2 Lhs, FDFVector2 Rhs) { return MakeDFVector2( select_internal( S , Lhs , Rhs.High ),  select_internal( S , (float2)0 , Rhs.Low )); }
bool2 DFGreater(FDFVector2 Lhs, FDFVector2 Rhs)
{
		return Lhs.High > Rhs.High || (Lhs.High == Rhs.High && Lhs.Low > Rhs.Low);
}
bool2 DFLess(FDFVector2 Lhs, FDFVector2 Rhs)
{
	return Lhs.High < Rhs.High || (Lhs.High == Rhs.High && Lhs.Low < Rhs.Low);
}
bool2 DFGreater(FDFVector2 Lhs, float2 Rhs)
{
	return Lhs.High > Rhs || (Lhs.High == Rhs && Lhs.Low > 0.0);
}
bool2 DFLess(FDFVector2 Lhs, float2 Rhs)
{
	return Lhs.High < Rhs || (Lhs.High == Rhs && Lhs.Low < 0.0);
}
bool2 DFGreater(float2 Lhs, FDFVector2 Rhs) { return DFLess(Rhs, Lhs); }
bool2 DFLess(float2 Lhs, FDFVector2 Rhs) { return DFGreater(Rhs, Lhs); }
bool2 DFGreaterEqual(FDFVector2 Lhs, FDFVector2 Rhs) { return !DFLess(Lhs, Rhs); }
bool2 DFGreaterEqual(FDFVector2 Lhs, float2 Rhs) { return !DFLess(Lhs, Rhs); }
bool2 DFGreaterEqual(float2 Lhs, FDFVector2 Rhs) { return !DFLess(Lhs, Rhs); }
bool2 DFLessEqual(FDFVector2 Lhs, float2 Rhs) { return !DFGreater(Lhs, Rhs); }
bool2 DFLessEqual(FDFVector2 Lhs, FDFVector2 Rhs) { return !DFGreater(Lhs, Rhs); }
bool2 DFLessEqual(float2 Lhs, FDFVector2 Rhs) { return !DFGreater(Lhs, Rhs); }
FDFVector2 DFMin(FDFVector2 Lhs, FDFVector2 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Lhs, Rhs);
}
FDFVector2 DFMin(FDFVector2 Lhs, float2 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Lhs, DFPromote(Rhs));
}
FDFVector2 DFMin(float2 Lhs, FDFVector2 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), DFPromote(Lhs), Rhs);
}
FDFVector2 DFMax(FDFVector2 Lhs, FDFVector2 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Rhs, Lhs);
}
FDFVector2 DFMax(FDFVector2 Lhs, float2 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), DFPromote(Rhs), Lhs);
}
FDFVector2 DFMax(float2 Lhs, FDFVector2 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Rhs, DFPromote(Lhs));
}
struct FDFVector2Deriv
{
	FDFVector2 Value;
	float2 Ddx;
	float2 Ddy;
};
FDFVector2 DFSqrt(FDFVector2 V)
{
	const float2 Sh = sqrt(V.High);
	const float2 P1 =   MakePrecise(  mad( ( -Sh ) , ( Sh ) , ( V.High ) ) ); 
	const float2 P2 =   MakePrecise( ( V.Low ) + ( P1 ) );
	const float2 Sl =   MakePrecise( ( P2 ) / ( (2.0 * Sh) ) );
	return DFFastTwoSum(Sh, Sl);
}
float2 DFSqrtDemote(FDFVector2 V)
{
	const float2 Sh = sqrt(V.High);
	const float2 P1 =   MakePrecise(  mad( ( -Sh ) , ( Sh ) , ( V.High ) ) ); 
	const float2 P2 =   MakePrecise( ( V.Low ) + ( P1 ) );
	const float2 Sl =   MakePrecise( ( P2 ) / ( (2.0 * Sh) ) );
	return Sh + Sl;
}
FDFVector2 DFRsqrt(FDFVector2 V)
{
	return DFDivide((float2)1.0, DFSqrt(V));
}
float2 DFRsqrtDemote(FDFVector2 V) { return rsqrt(V.High); }
float2 DFSin(FDFVector2 V)
{
	float2 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float2 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	return Sh*Cl + Ch*Sl; 
}
float2 DFCos(FDFVector2 V)
{
	float2 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float2 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	return Ch*Cl - Sh*Sl; 
}
void DFSinCos(FDFVector2 V, out float2 Sin, out float2 Cos)
{
	float2 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float2 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	Sin =  mad( Sh , Cl , Ch*Sl ); 
	Cos =  mad( Ch , Cl , -Sh*Sl ); 
}
float2 DFTan(FDFVector2 V)
{
	float2 Th = tan(V.High);
	float2 Tl = tan(V.Low);
	return (Th + Tl) / (1.0 - Th * Tl); 
}
float2 DFAsin(FDFVector2 V)
{
	return asin(DFDemote(V));
}
float2 DFAcos(FDFVector2 V)
{
	return acos(DFDemote(V));
}
float2 DFAtan(FDFVector2 V)
{
	return atan(DFDemote(V));
}
float2 DFModf(FDFVector2 V, out FDFVector2 Integer)
{
	float2 IntHigh;
	float2 FracHigh = modf(V.High, IntHigh);
	float2 IntLow;
	float2 FracLow = modf(V.Low, IntLow);
	float2 IntSum;
	float2 FracSum = modf(FracHigh + FracLow, IntSum);
	Integer = DFTwoSum(IntHigh, IntLow + IntSum);
	return FracSum;
}
float2 DFModfDemote(FDFVector2 V, out float2 Integer)
{
	float2 IntHigh;
	float2 FracHigh = modf(V.High, IntHigh);
	float2 IntLow;
	float2 FracLow = modf(V.Low, IntLow);
	float2 IntSum;
	float2 FracSum = modf(FracHigh + FracLow, IntSum);
	Integer = IntHigh + IntLow + IntSum;
	return FracSum;
}
FDFVector2 DFCeil(FDFVector2 V)
{
	float2 IntHigh;
	float2 FracHigh = modf(V.High, IntHigh);
	float2 IntLow;
	float2 FracLow = modf(V.Low, IntLow);
	IntLow += ceil(FracHigh + FracLow);
	return DFTwoSum(IntHigh, IntLow);
}
FDFVector2 DFFloor(FDFVector2 V)
{
	float2 IntHigh;
	float2 FracHigh = modf(V.High, IntHigh);
	float2 IntLow;
	float2 FracLow = modf(V.Low, IntLow);
	IntLow += floor(FracHigh + FracLow);
	return DFTwoSum(IntHigh, IntLow);
}
FDFVector2 DFRound(FDFVector2 V)
{
	float2 Sign = DFSign(V);
	FDFVector2 VAbs = MakeDFVector2(Sign*V.High, Sign*V.Low);
	float2 IntHigh;
	float2 FracHigh = modf(VAbs.High, IntHigh);
	float2 IntLow;
	float2 FracLow = modf(VAbs.Low, IntLow);
	IntLow += floor(FracHigh + FracLow + 0.5);
	return DFTwoSum(Sign * IntHigh, Sign * IntLow);
}
FDFVector2 DFTrunc(FDFVector2 V)
{
	float2 Sign = DFSign(V);
	FDFVector2 VAbs = MakeDFVector2(Sign*V.High, Sign*V.Low);
	float2 IntHigh;
	float2 FracHigh = modf(VAbs.High, IntHigh);
	float2 IntLow;
	float2 FracLow = modf(VAbs.Low, IntLow);
	IntLow += floor(FracHigh + FracLow);
	return DFTwoSum(Sign * IntHigh, Sign * IntLow);
}
FDFVector2 DFFrac(FDFVector2 V)
{
	return DFSubtract(V, DFFloor(V));
}
float2 DFFracDemote(FDFVector2 V)
{
	return frac(frac(V.High) + frac(V.Low));
}
FDFVector2 DFFmod(FDFVector2 Lhs, float2 Rhs)
{
	return DFSubtract(Lhs, DFMultiply(DFTrunc(DFDivide(Lhs, Rhs)), Rhs));
}
float2 DFFmodDemote(FDFVector2 Lhs, float2 Rhs)
{
	return DFSubtractDemote(Lhs, DFMultiply(DFTrunc(DFDivide(Lhs, Rhs)), Rhs)); 
}
float2 DFFmodByPow2Demote(FDFVector2 Lhs, float2 Rhs)
{
	return DFFracDemote(DFDivideByPow2(Lhs, Rhs)) * Rhs;
}
FDFVector2 DFLerp(FDFVector2 Lhs, FDFVector2 Rhs, float2 S)
{
	return DFTwoSum(lerp(Lhs.High, Rhs.High, S), lerp(Lhs.Low, Rhs.Low, S)); 
}
FDFVector2 DFSaturate(FDFVector2 V)
{
	V = DFSelect(DFLess(V, 1.0), V, 1.0);
	V = DFSelect(DFLess(V, 0.0), 0.0, V);
	return V;
}
float2 DFSaturateDemote(FDFVector2 V) { return saturate(DFDemote(V)); }
FDFVector2 DFSmoothStep(FDFVector2 Lhs, FDFVector2 Rhs, FDFVector2 S)
{
	FDFVector2 T = DFSaturate(DFDivide(DFSubtract(S, Lhs), DFSubtract(Rhs, Lhs)));
	return DFMultiply(DFSqr(T), DFSubtract(3.0f, DFMultiplyByPow2(T, 2.0f)));
}
float2 DFSmoothStepDemote(FDFVector2 Lhs, FDFVector2 Rhs, FDFVector2 S)
{
	float2 T = DFSaturateDemote(DFDivide(DFSubtract(S, Lhs), DFSubtract(Rhs, Lhs)));
	return T*T*(3.0f - (2.0f*T));
}
float2 DFStep(FDFVector2 Lhs, FDFVector2 Rhs)    { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float2)1.0f , (float2)0.0f ); }
float2 DFStep(FDFVector2 Lhs, float2 Rhs) { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float2)1.0f , (float2)0.0f ); }
float2 DFStep(float2 Lhs, FDFVector2 Rhs) { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float2)1.0f , (float2)0.0f ); }
FDFVector2 DFDdx(FDFVector2 V)
{
	return DFTwoSum(ddx(V.High), ddx(V.Low));
}
FDFVector2 DFDdy(FDFVector2 V)
{
	return DFTwoSum(ddy(V.High), ddy(V.Low));
}
float2 DFDdxDemote(FDFVector2 V)
{
	return ddx(V.High) + ddx(V.Low);
}
float2 DFDdyDemote(FDFVector2 V)
{
	return ddy(V.High) + ddy(V.Low);
}
FDFVector2 DFBroadcast2(FDFScalar V)
{
	const float2 High = V.High;
	const float2 Low = V.Low;
	return MakeDFVector2(High, Low);
}
float2 DFBroadcast2(float V)
{
	const float2 Single = V;
	return Single;
}
  FDFVector2  DFAdd (FDFScalar Lhs, FDFVector2 Rhs) { return DFAdd (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFAdd (float Lhs, FDFVector2 Rhs) { return DFAdd (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFAdd (FDFScalar Lhs, float2 Rhs) { return DFAdd (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFAdd (float Lhs, float2 Rhs) { return DFAdd (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFAdd (FDFVector2 Lhs, FDFScalar Rhs) { return DFAdd (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFAdd (FDFVector2 Lhs, float Rhs)     { return DFAdd (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFAdd (float2 Lhs, FDFScalar Rhs) { return DFAdd (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFAdd (float2 Lhs, float Rhs) { return DFAdd (Lhs, DFBroadcast2(Rhs)); }
  float2  DFAddDemote (FDFScalar Lhs, FDFVector2 Rhs) { return DFAddDemote (DFBroadcast2(Lhs), Rhs); } float2  DFAddDemote (float Lhs, FDFVector2 Rhs) { return DFAddDemote (DFBroadcast2(Lhs), Rhs); } float2  DFAddDemote (FDFScalar Lhs, float2 Rhs) { return DFAddDemote (DFBroadcast2(Lhs), Rhs); } float2  DFAddDemote (float Lhs, float2 Rhs) { return DFAddDemote (DFBroadcast2(Lhs), Rhs); } float2  DFAddDemote (FDFVector2 Lhs, FDFScalar Rhs) { return DFAddDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFAddDemote (FDFVector2 Lhs, float Rhs)     { return DFAddDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFAddDemote (float2 Lhs, FDFScalar Rhs) { return DFAddDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFAddDemote (float2 Lhs, float Rhs) { return DFAddDemote (Lhs, DFBroadcast2(Rhs)); }
  FDFVector2  DFFastAdd (FDFScalar Lhs, FDFVector2 Rhs) { return DFFastAdd (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastAdd (float Lhs, FDFVector2 Rhs) { return DFFastAdd (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastAdd (FDFScalar Lhs, float2 Rhs) { return DFFastAdd (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastAdd (float Lhs, float2 Rhs) { return DFFastAdd (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastAdd (FDFVector2 Lhs, FDFScalar Rhs) { return DFFastAdd (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastAdd (FDFVector2 Lhs, float Rhs)     { return DFFastAdd (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastAdd (float2 Lhs, FDFScalar Rhs) { return DFFastAdd (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastAdd (float2 Lhs, float Rhs) { return DFFastAdd (Lhs, DFBroadcast2(Rhs)); }
  float2  DFFastAddDemote (FDFScalar Lhs, FDFVector2 Rhs) { return DFFastAddDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastAddDemote (float Lhs, FDFVector2 Rhs) { return DFFastAddDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastAddDemote (FDFScalar Lhs, float2 Rhs) { return DFFastAddDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastAddDemote (float Lhs, float2 Rhs) { return DFFastAddDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastAddDemote (FDFVector2 Lhs, FDFScalar Rhs) { return DFFastAddDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastAddDemote (FDFVector2 Lhs, float Rhs)     { return DFFastAddDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastAddDemote (float2 Lhs, FDFScalar Rhs) { return DFFastAddDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastAddDemote (float2 Lhs, float Rhs) { return DFFastAddDemote (Lhs, DFBroadcast2(Rhs)); }
  FDFVector2  DFSubtract (FDFScalar Lhs, FDFVector2 Rhs) { return DFSubtract (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFSubtract (float Lhs, FDFVector2 Rhs) { return DFSubtract (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFSubtract (FDFScalar Lhs, float2 Rhs) { return DFSubtract (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFSubtract (float Lhs, float2 Rhs) { return DFSubtract (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFSubtract (FDFVector2 Lhs, FDFScalar Rhs) { return DFSubtract (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFSubtract (FDFVector2 Lhs, float Rhs)     { return DFSubtract (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFSubtract (float2 Lhs, FDFScalar Rhs) { return DFSubtract (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFSubtract (float2 Lhs, float Rhs) { return DFSubtract (Lhs, DFBroadcast2(Rhs)); }
  float2  DFSubtractDemote (FDFScalar Lhs, FDFVector2 Rhs) { return DFSubtractDemote (DFBroadcast2(Lhs), Rhs); } float2  DFSubtractDemote (float Lhs, FDFVector2 Rhs) { return DFSubtractDemote (DFBroadcast2(Lhs), Rhs); } float2  DFSubtractDemote (FDFScalar Lhs, float2 Rhs) { return DFSubtractDemote (DFBroadcast2(Lhs), Rhs); } float2  DFSubtractDemote (float Lhs, float2 Rhs) { return DFSubtractDemote (DFBroadcast2(Lhs), Rhs); } float2  DFSubtractDemote (FDFVector2 Lhs, FDFScalar Rhs) { return DFSubtractDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFSubtractDemote (FDFVector2 Lhs, float Rhs)     { return DFSubtractDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFSubtractDemote (float2 Lhs, FDFScalar Rhs) { return DFSubtractDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFSubtractDemote (float2 Lhs, float Rhs) { return DFSubtractDemote (Lhs, DFBroadcast2(Rhs)); }
  FDFVector2  DFFastSubtract (FDFScalar Lhs, FDFVector2 Rhs) { return DFFastSubtract (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastSubtract (float Lhs, FDFVector2 Rhs) { return DFFastSubtract (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastSubtract (FDFScalar Lhs, float2 Rhs) { return DFFastSubtract (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastSubtract (float Lhs, float2 Rhs) { return DFFastSubtract (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastSubtract (FDFVector2 Lhs, FDFScalar Rhs) { return DFFastSubtract (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastSubtract (FDFVector2 Lhs, float Rhs)     { return DFFastSubtract (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastSubtract (float2 Lhs, FDFScalar Rhs) { return DFFastSubtract (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastSubtract (float2 Lhs, float Rhs) { return DFFastSubtract (Lhs, DFBroadcast2(Rhs)); }
  float2  DFFastSubtractDemote (FDFScalar Lhs, FDFVector2 Rhs) { return DFFastSubtractDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastSubtractDemote (float Lhs, FDFVector2 Rhs) { return DFFastSubtractDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastSubtractDemote (FDFScalar Lhs, float2 Rhs) { return DFFastSubtractDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastSubtractDemote (float Lhs, float2 Rhs) { return DFFastSubtractDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastSubtractDemote (FDFVector2 Lhs, FDFScalar Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastSubtractDemote (FDFVector2 Lhs, float Rhs)     { return DFFastSubtractDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastSubtractDemote (float2 Lhs, FDFScalar Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastSubtractDemote (float2 Lhs, float Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast2(Rhs)); }
  FDFVector2  DFMultiply (FDFScalar Lhs, FDFVector2 Rhs) { return DFMultiply (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFMultiply (float Lhs, FDFVector2 Rhs) { return DFMultiply (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFMultiply (FDFScalar Lhs, float2 Rhs) { return DFMultiply (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFMultiply (float Lhs, float2 Rhs) { return DFMultiply (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFMultiply (FDFVector2 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFMultiply (FDFVector2 Lhs, float Rhs)     { return DFMultiply (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFMultiply (float2 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFMultiply (float2 Lhs, float Rhs) { return DFMultiply (Lhs, DFBroadcast2(Rhs)); }
  float2  DFMultiplyDemote (FDFScalar Lhs, FDFVector2 Rhs) { return DFMultiplyDemote (DFBroadcast2(Lhs), Rhs); } float2  DFMultiplyDemote (float Lhs, FDFVector2 Rhs) { return DFMultiplyDemote (DFBroadcast2(Lhs), Rhs); } float2  DFMultiplyDemote (FDFScalar Lhs, float2 Rhs) { return DFMultiplyDemote (DFBroadcast2(Lhs), Rhs); } float2  DFMultiplyDemote (float Lhs, float2 Rhs) { return DFMultiplyDemote (DFBroadcast2(Lhs), Rhs); } float2  DFMultiplyDemote (FDFVector2 Lhs, FDFScalar Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFMultiplyDemote (FDFVector2 Lhs, float Rhs)     { return DFMultiplyDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFMultiplyDemote (float2 Lhs, FDFScalar Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFMultiplyDemote (float2 Lhs, float Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast2(Rhs)); }
  FDFVector2  DFDivide (FDFScalar Lhs, FDFVector2 Rhs) { return DFDivide (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFDivide (float Lhs, FDFVector2 Rhs) { return DFDivide (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFDivide (FDFScalar Lhs, float2 Rhs) { return DFDivide (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFDivide (float Lhs, float2 Rhs) { return DFDivide (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFDivide (FDFVector2 Lhs, FDFScalar Rhs) { return DFDivide (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFDivide (FDFVector2 Lhs, float Rhs)     { return DFDivide (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFDivide (float2 Lhs, FDFScalar Rhs) { return DFDivide (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFDivide (float2 Lhs, float Rhs) { return DFDivide (Lhs, DFBroadcast2(Rhs)); }
  FDFVector2  DFFastDivide (FDFScalar Lhs, FDFVector2 Rhs) { return DFFastDivide (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastDivide (float Lhs, FDFVector2 Rhs) { return DFFastDivide (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastDivide (FDFScalar Lhs, float2 Rhs) { return DFFastDivide (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastDivide (float Lhs, float2 Rhs) { return DFFastDivide (DFBroadcast2(Lhs), Rhs); } FDFVector2  DFFastDivide (FDFVector2 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastDivide (FDFVector2 Lhs, float Rhs)     { return DFFastDivide (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastDivide (float2 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast2(Rhs)); } FDFVector2  DFFastDivide (float2 Lhs, float Rhs) { return DFFastDivide (Lhs, DFBroadcast2(Rhs)); }
  float2  DFFastDivideDemote (FDFScalar Lhs, FDFVector2 Rhs) { return DFFastDivideDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastDivideDemote (float Lhs, FDFVector2 Rhs) { return DFFastDivideDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastDivideDemote (FDFScalar Lhs, float2 Rhs) { return DFFastDivideDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastDivideDemote (float Lhs, float2 Rhs) { return DFFastDivideDemote (DFBroadcast2(Lhs), Rhs); } float2  DFFastDivideDemote (FDFVector2 Lhs, FDFScalar Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastDivideDemote (FDFVector2 Lhs, float Rhs)     { return DFFastDivideDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastDivideDemote (float2 Lhs, FDFScalar Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast2(Rhs)); } float2  DFFastDivideDemote (float2 Lhs, float Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast2(Rhs)); }
FDFVector2 DFDivideByPow2(FDFVector2 Lhs, float Rhs)
{
	float2 RhsVect = Rhs;
	return DFDivideByPow2(Lhs, RhsVect);
}
FDFScalar DFVectorSum(FDFVector2 V)
{
	FDFScalar Result = DFAdd(DFGetComponent(V, 0), DFGetComponent(V, 1));
	[unroll]
	for (int i = 2; i < 2; ++i)
	{
		Result = DFAdd(Result, DFGetComponent(V, i));
	}
	return Result;
}
FDFScalar DFFastVectorSum(FDFVector2 V)
{
	FDFScalar Result = DFFastAdd(DFGetComponent(V, 0), DFGetComponent(V, 1));
	[unroll]
	for (int i = 2; i < 2; ++i)
	{
		Result = DFFastAdd(Result, DFGetComponent(V, i));
	}
	return Result;
}
FDFScalar DFDot(FDFVector2 Lhs, float2 Rhs)
{
	return DFFastVectorSum(DFMultiply(Lhs, Rhs));
}
FDFScalar DFDot(float2 Lhs, FDFVector2 Rhs) { return DFDot(Rhs, Lhs); }
FDFScalar DFDot(FDFVector2 Lhs, FDFVector2 Rhs)
{
	return DFFastVectorSum(DFMultiply(Lhs, Rhs));
}
float2 DFDotDemote(FDFVector2 Lhs, float2 Rhs)
{
	return DFDemote(DFFastVectorSum(DFMultiply(Lhs, Rhs)));
}
float2 DFDotDemote(float2 Lhs, FDFVector2 Rhs) { return DFDotDemote(Rhs, Lhs); }
float2 DFDotDemote(FDFVector2 Lhs, FDFVector2 Rhs)
{
	return DFDemote(DFFastVectorSum(DFMultiply(Lhs, Rhs)));
}
FDFScalar DFLengthSqr(float2 V)
{
	return DFFastVectorSum(DFSqr(V));
}
FDFScalar DFLength(float2 V)
{
	return DFSqrt(DFLengthSqr(V));
}
FDFScalar DFLengthSqr(FDFVector2 V)
{
	return DFFastVectorSum(DFSqr(V));
}
FDFScalar DFLength(FDFVector2 V)
{
	return DFSqrt(DFLengthSqr(V));
}
float DFLengthDemote(FDFVector2 V)
{
	return DFSqrtDemote(DFLengthSqr(V));
}
float DFRcpLengthDemote(FDFVector2 V)
{
	return DFRsqrtDemote(DFLengthSqr(V));
}
FDFVector2 DFNormalize(float2 V)
{
	return DFDivide(V, DFBroadcast2(DFLength(V)));
}
FDFVector2 DFNormalize(FDFVector2 V)
{
	return DFFastDivide(V, DFLength(V));
}
float2 DFNormalizeDemote(FDFVector2 V)
{
	return V.High / length(V.High);
}
FDFVector2 MakeDFVector(FDFScalar X, FDFScalar Y) { return MakeDFVector2(float2(X.High, Y.High), float2(X.Low, Y.Low)); }
struct FDFVector3
{
	float3 High;
	float3 Low;
};
FDFScalar DFGetComponent(FDFVector3 V, int C) { return MakeDFScalar(V.High[C], V.Low[C]); }
FDFVector3 MakeDFVector3(float3 High, float3 Low)
{
	FDFVector3 Result;
	Result.High = High;
	Result.Low = Low;
	return Result;
}
FDFVector3 DFPromote(FDFVector3 Value) { return Value; }
FDFVector3 DFPromote(float3 Value) { return MakeDFVector3(Value, (float3)0); }
float3 DFDemote(FDFVector3 Value) { return Value.High + Value.Low; }
float3 DFDemote(float3 Value) { return Value; }
FDFVector3 DFNegate(FDFVector3 Value)
{
	return MakeDFVector3(-Value.High, -Value.Low);
}
float3 DFSign(FDFVector3 Value)
{
	return (float3)sign(Value.High);
}
FDFVector3 DFAbs(FDFVector3 Value)
{
	const float3 Sign = DFSign(Value);
	return MakeDFVector3(Sign * Value.High, Sign * Value.Low);
}
FDFVector3 DFTwoSum(float3 Lhs, float3 Rhs)
{
	const float3 S =   MakePrecise( ( Lhs ) + ( Rhs ) );
	const float3 V =   MakePrecise( ( S ) - ( Lhs ) );
	const float3 Q =   MakePrecise( ( S ) - ( V ) );
	const float3 R =   MakePrecise( ( Lhs ) - ( Q ) );
	const float3 T =   MakePrecise( ( Rhs ) - ( V ) );
	const float3 Y =   MakePrecise( ( R ) + ( T ) );
	return MakeDFVector3(S, Y);
}
FDFVector3 DFFastTwoSum(float3 Lhs, float3 Rhs)
{
	const float3 S =   MakePrecise( ( Lhs ) + ( Rhs ) );
	const float3 T =   MakePrecise( ( S ) - ( Lhs ) );
	const float3 E =   MakePrecise( ( Rhs ) - ( T ) );
	return MakeDFVector3(S, E);
}
FDFVector3 DFAdd(float3 Lhs, float3 Rhs) { return DFTwoSum(Lhs, Rhs); }
FDFVector3 DFFastAdd(float3 Lhs, float3 Rhs) { return DFTwoSum(Lhs, Rhs); }
FDFVector3 DFAdd(FDFVector3 Lhs, FDFVector3 Rhs)
{
	FDFVector3 S = DFTwoSum(Lhs.High, Rhs.High);
	const FDFVector3 T = DFTwoSum(Lhs.Low, Rhs.Low);
	S.Low += T.High;
	S = DFFastTwoSum(S.High, S.Low);
	S.Low += T.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector3 DFAdd(FDFVector3 Lhs, float3 Rhs)
{
	const FDFVector3 S = DFTwoSum(Lhs.High, Rhs);
	const float3 T = Lhs.Low + S.Low;
	return DFFastTwoSum(S.High, T);
}
FDFVector3 DFAdd(float3 Lhs, FDFVector3 Rhs) { return DFAdd(Rhs, Lhs); }
float3 DFAddDemote(FDFVector3 Lhs, FDFVector3 Rhs)
{
	FDFVector3 S = DFTwoSum(Lhs.High, Rhs.High);
	const FDFVector3 T = DFTwoSum(Lhs.Low, Rhs.Low);
	S.Low += T.High;
	S = DFFastTwoSum(S.High, S.Low);
	S.Low += T.Low;
	return S.High + S.Low;
}
float3 DFAddDemote(FDFVector3 Lhs, float3 Rhs)
{
	const FDFVector3 S = DFTwoSum(Lhs.High, Rhs);
	const float3 T = Lhs.Low + S.Low;
	return S.High + T;
}
float3 DFAddDemote(float3 Lhs, FDFVector3 Rhs) { return DFAddDemote(Rhs, Lhs); }
float3 DFAddDemote(float3 Lhs, float3 Rhs) { return Lhs + Rhs; }
FDFVector3 DFFastAdd(FDFVector3 Lhs, FDFVector3 Rhs)
{
	FDFVector3 S = DFTwoSum(Lhs.High, Rhs.High);
	S.Low += Lhs.Low + Rhs.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector3 DFFastAdd(FDFVector3 Lhs, float3 Rhs)
{
	FDFVector3 S = DFTwoSum(Lhs.High, Rhs);
	S.Low += Lhs.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector3 DFFastAdd(float3 Lhs, FDFVector3 Rhs) { return DFFastAdd(Rhs, Lhs); }
float3 DFFastAddDemote(FDFVector3 Lhs, FDFVector3 Rhs)
{
	FDFVector3 S = DFTwoSum(Lhs.High, Rhs.High);
	S.Low += Lhs.Low + Rhs.Low;
	return S.High + S.Low;
}
float3 DFFastAddDemote(FDFVector3 Lhs, float3 Rhs) { return DFAddDemote(Lhs, Rhs); }
float3 DFFastAddDemote(float3 Lhs, FDFVector3 Rhs) { return DFFastAddDemote(Rhs, Lhs); }
float3 DFFastAddDemote(float3 Lhs, float3 Rhs) { return Rhs + Lhs; }
FDFVector3 DFSubtract(float3 Lhs, float3 Rhs) { return DFAdd(Lhs, -Rhs); }
FDFVector3 DFSubtract(FDFVector3 Lhs, FDFVector3 Rhs) { return DFAdd(Lhs, DFNegate(Rhs)); }
FDFVector3 DFSubtract(FDFVector3 Lhs, float3 Rhs) { return DFAdd(Lhs, -Rhs); }
FDFVector3 DFSubtract(float3 Lhs, FDFVector3 Rhs) { return DFAdd(Lhs, DFNegate(Rhs)); }
float3 DFSubtractDemote(float3 Lhs, float3 Rhs) { return Lhs - Rhs; }
float3 DFSubtractDemote(FDFVector3 Lhs, FDFVector3 Rhs) { return DFAddDemote(Lhs, DFNegate(Rhs)); }
float3 DFSubtractDemote(FDFVector3 Lhs, float3 Rhs) { return DFAddDemote(Lhs, -Rhs); }
float3 DFSubtractDemote(float3 Lhs, FDFVector3 Rhs) { return DFAddDemote(Lhs, DFNegate(Rhs)); }
FDFVector3 DFFastSubtract(float3 Lhs, float3 Rhs) { return DFFastAdd(Lhs, -Rhs); }
FDFVector3 DFFastSubtract(FDFVector3 Lhs, FDFVector3 Rhs) { return DFFastAdd(Lhs, DFNegate(Rhs)); }
FDFVector3 DFFastSubtract(FDFVector3 Lhs, float3 Rhs) { return DFFastAdd(Lhs, -Rhs); }
FDFVector3 DFFastSubtract(float3 Lhs, FDFVector3 Rhs) { return DFFastAdd(Lhs, DFNegate(Rhs)); }
float3 DFFastSubtractDemote(float3 Lhs, float3 Rhs) { return Lhs - Rhs; }
float3 DFFastSubtractDemote(FDFVector3 Lhs, FDFVector3 Rhs) { return DFFastAddDemote(Lhs, DFNegate(Rhs)); }
float3 DFFastSubtractDemote(FDFVector3 Lhs, float3 Rhs) { return DFFastAddDemote(Lhs, -Rhs); }
float3 DFFastSubtractDemote(float3 Lhs, FDFVector3 Rhs) { return DFFastAddDemote(Lhs, DFNegate(Rhs)); }
float3 DFFastLocalSubtractDemote(FDFVector3 Lhs, FDFVector3 Rhs)
{
	const float3 High =   MakePrecise( ( Lhs.High ) - ( Rhs.High ) );
	const float3 Low =   MakePrecise( ( Lhs.Low ) - ( Rhs.Low ) );
	const float3 Sum =   MakePrecise( ( High ) + ( Low ) );
	return Sum;
}
float3 DFFastLocalSubtractDemote(FDFVector3 Lhs, float3 Rhs)
{
	const float3 High =   MakePrecise( ( Lhs.High ) - ( Rhs ) );
	const float3 Sum =   MakePrecise( ( High ) + ( Lhs.Low ) );
	return Sum;
}
float3 DFFastLocalSubtractDemote(float3 Lhs, FDFVector3 Rhs)
{
	return DFFastLocalSubtractDemote(DFPromote(Lhs), Rhs);
}
FDFVector3 DFTwoProductNoFMA(float3 Lhs, float3 Rhs)
{
	const float3 Constant = 4097; 
	const float3 Px =   MakePrecise( ( Lhs ) * ( Constant ) );
	const float3 Hx =   MakePrecise( (   MakePrecise( ( Lhs ) - ( Px ) ) ) + ( Px ) );
	const float3 Tx =   MakePrecise( ( Lhs ) - ( Hx ) );
	const float3 Py =   MakePrecise( ( Rhs ) * ( Constant ) );
	const float3 Hy =   MakePrecise( (   MakePrecise( ( Rhs ) - ( Py ) ) ) + ( Py ) );
	const float3 Ty =   MakePrecise( ( Rhs ) - ( Hy ) );
	const float3 P =   MakePrecise( ( Hx ) * ( Hy ) );
	const float3 Q =   MakePrecise( (   MakePrecise( ( Hx ) * ( Ty ) ) ) + (   MakePrecise( ( Tx ) * ( Hy ) ) ) );
	const float3 Z =   MakePrecise( ( P ) + ( Q ) );
	const float3 E =   MakePrecise( (   MakePrecise( (   MakePrecise( ( P ) - ( Z ) ) ) + ( Q ) ) ) + (   MakePrecise( ( Tx ) * ( Ty ) ) ) );
	return DFFastTwoSum(Z, E);
}
FDFVector3 DFTwoProduct(float3 Lhs, float3 Rhs)
{
	const float3 P = Lhs * Rhs;
	const float3 E =   MakePrecise(  mad( ( Lhs ) , ( Rhs ) , ( -P ) ) );
	return MakeDFVector3(P, E);
}
FDFVector3 DFMultiply(float3 Lhs, float3 Rhs) { return DFTwoProduct(Lhs, Rhs); }
FDFVector3 DFMultiply(FDFVector3 Lhs, FDFVector3 Rhs)
{
	const FDFVector3 P = DFTwoProduct(Lhs.High, Rhs.High);
	float3 T =   MakePrecise( ( Lhs.High ) * ( Rhs.Low ) );
	T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs.High ) , ( T ) ) );
	T =   MakePrecise( ( T ) + ( P.Low ) );
	return DFFastTwoSum(P.High, T);
}
FDFVector3 DFMultiply(FDFVector3 Lhs, float3 Rhs)
{
	FDFVector3 P = DFTwoProduct(Lhs.High, Rhs);
	float3 T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs ) , ( P.Low ) ) );
	return DFFastTwoSum(P.High, T);
}
FDFVector3 DFMultiply(float3 Lhs, FDFVector3 Rhs) { return DFMultiply(Rhs, Lhs); }
float3 DFMultiplyDemote(FDFVector3 Lhs, FDFVector3 Rhs)
{
	const FDFVector3 P = DFTwoProduct(Lhs.High, Rhs.High);
	float3 T =   MakePrecise( ( Lhs.High ) * ( Rhs.Low ) );
	T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs.High ) , ( T ) ) );
	T =   MakePrecise( ( T ) + ( P.Low ) );
	const float3 S =   MakePrecise( ( P.High ) + ( T ) );
	return S;
}
float3 DFMultiplyDemote(FDFVector3 Lhs, float3 Rhs)
{
	FDFVector3 P = DFTwoProduct(Lhs.High, Rhs);
	P.Low =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs ) , ( P.Low ) ) );
	const float3 S =   MakePrecise( ( P.High ) + ( P.Low ) );
	return S;
}
float3 DFMultiplyDemote(float3 Lhs, FDFVector3 Rhs) { return DFMultiplyDemote(Rhs, Lhs); }
float3 DFMultiplyDemote(float3 Lhs, float3 Rhs) { return Lhs * Rhs; }
FDFVector3 DFMultiplyByPow2(FDFVector3 Lhs, float3 Rhs)
{
	return MakeDFVector3(Lhs.High * Rhs, Lhs.Low * Rhs);
}
FDFVector3 DFSqr(FDFVector3 V) { return DFMultiply(V, V); }
FDFVector3 DFSqr(float3 V) { return DFTwoProduct(V, V); }
FDFVector3 DFFastDivide(FDFVector3 Lhs, FDFVector3 Rhs);
FDFVector3 DFDivide(FDFVector3 Lhs, FDFVector3 Rhs)
{
	const float3 Th =   MakePrecise( ( 1.0 ) / ( Rhs.High ) );
	const float3 Rh =   MakePrecise(  mad( ( -Rhs.High ) , ( Th ) , ( (float3)1 ) ) );
	const float3 Rl =   MakePrecise( ( -Rhs.Low ) * ( Th ) );
	const FDFVector3 E = DFFastTwoSum(Rh, Rl);
	const FDFVector3 D = DFMultiply(E, Th);
	const FDFVector3 M = DFAdd(D, Th);
	return DFMultiply(Lhs, M);
}
FDFVector3 DFDivide(FDFVector3 Lhs, float3 Rhs)
{
	const float3 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector3 P = DFTwoProduct(Th, Rhs);
	const float3 Dh =   MakePrecise( ( Lhs.High ) - ( P.High ) );
	const float3 Dt =   MakePrecise( ( Dh ) - ( P.Low ) );
	const float3 D =   MakePrecise( ( Dt ) + ( Lhs.Low ) );
	const float3 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector3 DFDivide(float3 Lhs, float3 Rhs)
{
	return DFDivide(DFPromote(Lhs), Rhs);
}
FDFVector3 DFDivide(float3 Lhs, FDFVector3 Rhs)
{
	return DFDivide(DFPromote(Lhs), Rhs);
}
FDFVector3 DFFastDivide(FDFVector3 Lhs, FDFVector3 Rhs)
{
	const float3 Th =   MakePrecise( ( Lhs.High ) / ( Rhs.High ) );
	const FDFVector3 R = DFMultiply(Rhs, Th);
	const float3 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float3 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float3 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float3 Tl =   MakePrecise( ( D ) / ( Rhs.High ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector3 DFFastDivide(FDFVector3 Lhs, float3 Rhs)
{
	const float3 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector3 R = DFTwoProduct(Rhs, Th);
	const float3 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float3 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float3 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float3 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector3 DFFastDivide(float3 Lhs, FDFVector3 Rhs) { return DFFastDivide(DFPromote(Lhs), Rhs); }
FDFVector3 DFFastDivide(float3 Lhs, float3 Rhs) { return DFFastDivide(DFPromote(Lhs), Rhs); }
float3 DFFastDivideDemote(FDFVector3 Lhs, FDFVector3 Rhs)
{
	const float3 Th =   MakePrecise( ( Lhs.High ) / ( Rhs.High ) );
	const FDFVector3 R = DFMultiply(Rhs, Th);
	const float3 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float3 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float3 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float3 Tl =   MakePrecise( ( D ) / ( Rhs.High ) );
	return Th + Tl;
}
float3 DFFastDivideDemote(FDFVector3 Lhs, float3 Rhs)
{
	const float3 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector3 R = DFTwoProduct(Rhs, Th);
	const float3 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float3 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float3 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float3 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return Th + Tl;
}
float3 DFFastDivideDemote(float3 Lhs, FDFVector3 Rhs) { return DFFastDivideDemote(DFPromote(Lhs), Rhs); }
float3 DFFastDivideDemote(float3 Lhs, float3 Rhs) { return Lhs / Rhs; }
FDFVector3 DFDivideByPow2(FDFVector3 Lhs, float3 Rhs)
{
	return MakeDFVector3(Lhs.High / Rhs, Lhs.Low / Rhs);
}
FDFVector3 DFRcp(FDFVector3 V) { return DFFastDivide((float3)1.0, V); }
float3 DFRcpDemote(FDFVector3 V) { return rcp(V.High); }
bool3 DFEqualsApprox(FDFVector3 Lhs, FDFVector3 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool3 DFEqualsApprox(FDFVector3 Lhs, float3 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool3 DFEqualsApprox(float3 Lhs, FDFVector3 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool3 DFEquals(FDFVector3 Lhs, FDFVector3 Rhs)
{
	return Lhs.High == Rhs.High && Lhs.Low == Rhs.Low;
}
bool3 DFEquals(FDFVector3 Lhs, float3 Rhs)
{
	return DFEquals(Lhs, DFPromote(Rhs));
}
bool3 DFEquals(float3 Lhs, FDFVector3 Rhs)
{
	return DFEquals(DFPromote(Lhs), Rhs);
}
FDFVector3 DFSelect(bool3 S, FDFVector3 Lhs, FDFVector3 Rhs) { return MakeDFVector3( select_internal( S , Lhs.High , Rhs.High ),  select_internal( S , Lhs.Low , Rhs.Low )); }
FDFVector3 DFSelect(bool3 S, FDFVector3 Lhs, float3 Rhs) { return MakeDFVector3( select_internal( S , Lhs.High , Rhs ),  select_internal( S , Lhs.Low , (float3)0 )); }
FDFVector3 DFSelect(bool3 S, float3 Lhs, FDFVector3 Rhs) { return MakeDFVector3( select_internal( S , Lhs , Rhs.High ),  select_internal( S , (float3)0 , Rhs.Low )); }
bool3 DFGreater(FDFVector3 Lhs, FDFVector3 Rhs)
{
		return Lhs.High > Rhs.High || (Lhs.High == Rhs.High && Lhs.Low > Rhs.Low);
}
bool3 DFLess(FDFVector3 Lhs, FDFVector3 Rhs)
{
	return Lhs.High < Rhs.High || (Lhs.High == Rhs.High && Lhs.Low < Rhs.Low);
}
bool3 DFGreater(FDFVector3 Lhs, float3 Rhs)
{
	return Lhs.High > Rhs || (Lhs.High == Rhs && Lhs.Low > 0.0);
}
bool3 DFLess(FDFVector3 Lhs, float3 Rhs)
{
	return Lhs.High < Rhs || (Lhs.High == Rhs && Lhs.Low < 0.0);
}
bool3 DFGreater(float3 Lhs, FDFVector3 Rhs) { return DFLess(Rhs, Lhs); }
bool3 DFLess(float3 Lhs, FDFVector3 Rhs) { return DFGreater(Rhs, Lhs); }
bool3 DFGreaterEqual(FDFVector3 Lhs, FDFVector3 Rhs) { return !DFLess(Lhs, Rhs); }
bool3 DFGreaterEqual(FDFVector3 Lhs, float3 Rhs) { return !DFLess(Lhs, Rhs); }
bool3 DFGreaterEqual(float3 Lhs, FDFVector3 Rhs) { return !DFLess(Lhs, Rhs); }
bool3 DFLessEqual(FDFVector3 Lhs, float3 Rhs) { return !DFGreater(Lhs, Rhs); }
bool3 DFLessEqual(FDFVector3 Lhs, FDFVector3 Rhs) { return !DFGreater(Lhs, Rhs); }
bool3 DFLessEqual(float3 Lhs, FDFVector3 Rhs) { return !DFGreater(Lhs, Rhs); }
FDFVector3 DFMin(FDFVector3 Lhs, FDFVector3 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Lhs, Rhs);
}
FDFVector3 DFMin(FDFVector3 Lhs, float3 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Lhs, DFPromote(Rhs));
}
FDFVector3 DFMin(float3 Lhs, FDFVector3 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), DFPromote(Lhs), Rhs);
}
FDFVector3 DFMax(FDFVector3 Lhs, FDFVector3 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Rhs, Lhs);
}
FDFVector3 DFMax(FDFVector3 Lhs, float3 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), DFPromote(Rhs), Lhs);
}
FDFVector3 DFMax(float3 Lhs, FDFVector3 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Rhs, DFPromote(Lhs));
}
struct FDFVector3Deriv
{
	FDFVector3 Value;
	float3 Ddx;
	float3 Ddy;
};
FDFVector3 DFSqrt(FDFVector3 V)
{
	const float3 Sh = sqrt(V.High);
	const float3 P1 =   MakePrecise(  mad( ( -Sh ) , ( Sh ) , ( V.High ) ) ); 
	const float3 P2 =   MakePrecise( ( V.Low ) + ( P1 ) );
	const float3 Sl =   MakePrecise( ( P2 ) / ( (2.0 * Sh) ) );
	return DFFastTwoSum(Sh, Sl);
}
float3 DFSqrtDemote(FDFVector3 V)
{
	const float3 Sh = sqrt(V.High);
	const float3 P1 =   MakePrecise(  mad( ( -Sh ) , ( Sh ) , ( V.High ) ) ); 
	const float3 P2 =   MakePrecise( ( V.Low ) + ( P1 ) );
	const float3 Sl =   MakePrecise( ( P2 ) / ( (2.0 * Sh) ) );
	return Sh + Sl;
}
FDFVector3 DFRsqrt(FDFVector3 V)
{
	return DFDivide((float3)1.0, DFSqrt(V));
}
float3 DFRsqrtDemote(FDFVector3 V) { return rsqrt(V.High); }
float3 DFSin(FDFVector3 V)
{
	float3 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float3 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	return Sh*Cl + Ch*Sl; 
}
float3 DFCos(FDFVector3 V)
{
	float3 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float3 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	return Ch*Cl - Sh*Sl; 
}
void DFSinCos(FDFVector3 V, out float3 Sin, out float3 Cos)
{
	float3 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float3 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	Sin =  mad( Sh , Cl , Ch*Sl ); 
	Cos =  mad( Ch , Cl , -Sh*Sl ); 
}
float3 DFTan(FDFVector3 V)
{
	float3 Th = tan(V.High);
	float3 Tl = tan(V.Low);
	return (Th + Tl) / (1.0 - Th * Tl); 
}
float3 DFAsin(FDFVector3 V)
{
	return asin(DFDemote(V));
}
float3 DFAcos(FDFVector3 V)
{
	return acos(DFDemote(V));
}
float3 DFAtan(FDFVector3 V)
{
	return atan(DFDemote(V));
}
float3 DFModf(FDFVector3 V, out FDFVector3 Integer)
{
	float3 IntHigh;
	float3 FracHigh = modf(V.High, IntHigh);
	float3 IntLow;
	float3 FracLow = modf(V.Low, IntLow);
	float3 IntSum;
	float3 FracSum = modf(FracHigh + FracLow, IntSum);
	Integer = DFTwoSum(IntHigh, IntLow + IntSum);
	return FracSum;
}
float3 DFModfDemote(FDFVector3 V, out float3 Integer)
{
	float3 IntHigh;
	float3 FracHigh = modf(V.High, IntHigh);
	float3 IntLow;
	float3 FracLow = modf(V.Low, IntLow);
	float3 IntSum;
	float3 FracSum = modf(FracHigh + FracLow, IntSum);
	Integer = IntHigh + IntLow + IntSum;
	return FracSum;
}
FDFVector3 DFCeil(FDFVector3 V)
{
	float3 IntHigh;
	float3 FracHigh = modf(V.High, IntHigh);
	float3 IntLow;
	float3 FracLow = modf(V.Low, IntLow);
	IntLow += ceil(FracHigh + FracLow);
	return DFTwoSum(IntHigh, IntLow);
}
FDFVector3 DFFloor(FDFVector3 V)
{
	float3 IntHigh;
	float3 FracHigh = modf(V.High, IntHigh);
	float3 IntLow;
	float3 FracLow = modf(V.Low, IntLow);
	IntLow += floor(FracHigh + FracLow);
	return DFTwoSum(IntHigh, IntLow);
}
FDFVector3 DFRound(FDFVector3 V)
{
	float3 Sign = DFSign(V);
	FDFVector3 VAbs = MakeDFVector3(Sign*V.High, Sign*V.Low);
	float3 IntHigh;
	float3 FracHigh = modf(VAbs.High, IntHigh);
	float3 IntLow;
	float3 FracLow = modf(VAbs.Low, IntLow);
	IntLow += floor(FracHigh + FracLow + 0.5);
	return DFTwoSum(Sign * IntHigh, Sign * IntLow);
}
FDFVector3 DFTrunc(FDFVector3 V)
{
	float3 Sign = DFSign(V);
	FDFVector3 VAbs = MakeDFVector3(Sign*V.High, Sign*V.Low);
	float3 IntHigh;
	float3 FracHigh = modf(VAbs.High, IntHigh);
	float3 IntLow;
	float3 FracLow = modf(VAbs.Low, IntLow);
	IntLow += floor(FracHigh + FracLow);
	return DFTwoSum(Sign * IntHigh, Sign * IntLow);
}
FDFVector3 DFFrac(FDFVector3 V)
{
	return DFSubtract(V, DFFloor(V));
}
float3 DFFracDemote(FDFVector3 V)
{
	return frac(frac(V.High) + frac(V.Low));
}
FDFVector3 DFFmod(FDFVector3 Lhs, float3 Rhs)
{
	return DFSubtract(Lhs, DFMultiply(DFTrunc(DFDivide(Lhs, Rhs)), Rhs));
}
float3 DFFmodDemote(FDFVector3 Lhs, float3 Rhs)
{
	return DFSubtractDemote(Lhs, DFMultiply(DFTrunc(DFDivide(Lhs, Rhs)), Rhs)); 
}
float3 DFFmodByPow2Demote(FDFVector3 Lhs, float3 Rhs)
{
	return DFFracDemote(DFDivideByPow2(Lhs, Rhs)) * Rhs;
}
FDFVector3 DFLerp(FDFVector3 Lhs, FDFVector3 Rhs, float3 S)
{
	return DFTwoSum(lerp(Lhs.High, Rhs.High, S), lerp(Lhs.Low, Rhs.Low, S)); 
}
FDFVector3 DFSaturate(FDFVector3 V)
{
	V = DFSelect(DFLess(V, 1.0), V, 1.0);
	V = DFSelect(DFLess(V, 0.0), 0.0, V);
	return V;
}
float3 DFSaturateDemote(FDFVector3 V) { return saturate(DFDemote(V)); }
FDFVector3 DFSmoothStep(FDFVector3 Lhs, FDFVector3 Rhs, FDFVector3 S)
{
	FDFVector3 T = DFSaturate(DFDivide(DFSubtract(S, Lhs), DFSubtract(Rhs, Lhs)));
	return DFMultiply(DFSqr(T), DFSubtract(3.0f, DFMultiplyByPow2(T, 2.0f)));
}
float3 DFSmoothStepDemote(FDFVector3 Lhs, FDFVector3 Rhs, FDFVector3 S)
{
	float3 T = DFSaturateDemote(DFDivide(DFSubtract(S, Lhs), DFSubtract(Rhs, Lhs)));
	return T*T*(3.0f - (2.0f*T));
}
float3 DFStep(FDFVector3 Lhs, FDFVector3 Rhs)    { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float3)1.0f , (float3)0.0f ); }
float3 DFStep(FDFVector3 Lhs, float3 Rhs) { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float3)1.0f , (float3)0.0f ); }
float3 DFStep(float3 Lhs, FDFVector3 Rhs) { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float3)1.0f , (float3)0.0f ); }
FDFVector3 DFDdx(FDFVector3 V)
{
	return DFTwoSum(ddx(V.High), ddx(V.Low));
}
FDFVector3 DFDdy(FDFVector3 V)
{
	return DFTwoSum(ddy(V.High), ddy(V.Low));
}
float3 DFDdxDemote(FDFVector3 V)
{
	return ddx(V.High) + ddx(V.Low);
}
float3 DFDdyDemote(FDFVector3 V)
{
	return ddy(V.High) + ddy(V.Low);
}
FDFVector3 DFBroadcast3(FDFScalar V)
{
	const float3 High = V.High;
	const float3 Low = V.Low;
	return MakeDFVector3(High, Low);
}
float3 DFBroadcast3(float V)
{
	const float3 Single = V;
	return Single;
}
  FDFVector3  DFAdd (FDFScalar Lhs, FDFVector3 Rhs) { return DFAdd (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFAdd (float Lhs, FDFVector3 Rhs) { return DFAdd (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFAdd (FDFScalar Lhs, float3 Rhs) { return DFAdd (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFAdd (float Lhs, float3 Rhs) { return DFAdd (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFAdd (FDFVector3 Lhs, FDFScalar Rhs) { return DFAdd (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFAdd (FDFVector3 Lhs, float Rhs)     { return DFAdd (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFAdd (float3 Lhs, FDFScalar Rhs) { return DFAdd (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFAdd (float3 Lhs, float Rhs) { return DFAdd (Lhs, DFBroadcast3(Rhs)); }
  float3  DFAddDemote (FDFScalar Lhs, FDFVector3 Rhs) { return DFAddDemote (DFBroadcast3(Lhs), Rhs); } float3  DFAddDemote (float Lhs, FDFVector3 Rhs) { return DFAddDemote (DFBroadcast3(Lhs), Rhs); } float3  DFAddDemote (FDFScalar Lhs, float3 Rhs) { return DFAddDemote (DFBroadcast3(Lhs), Rhs); } float3  DFAddDemote (float Lhs, float3 Rhs) { return DFAddDemote (DFBroadcast3(Lhs), Rhs); } float3  DFAddDemote (FDFVector3 Lhs, FDFScalar Rhs) { return DFAddDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFAddDemote (FDFVector3 Lhs, float Rhs)     { return DFAddDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFAddDemote (float3 Lhs, FDFScalar Rhs) { return DFAddDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFAddDemote (float3 Lhs, float Rhs) { return DFAddDemote (Lhs, DFBroadcast3(Rhs)); }
  FDFVector3  DFFastAdd (FDFScalar Lhs, FDFVector3 Rhs) { return DFFastAdd (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastAdd (float Lhs, FDFVector3 Rhs) { return DFFastAdd (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastAdd (FDFScalar Lhs, float3 Rhs) { return DFFastAdd (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastAdd (float Lhs, float3 Rhs) { return DFFastAdd (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastAdd (FDFVector3 Lhs, FDFScalar Rhs) { return DFFastAdd (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastAdd (FDFVector3 Lhs, float Rhs)     { return DFFastAdd (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastAdd (float3 Lhs, FDFScalar Rhs) { return DFFastAdd (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastAdd (float3 Lhs, float Rhs) { return DFFastAdd (Lhs, DFBroadcast3(Rhs)); }
  float3  DFFastAddDemote (FDFScalar Lhs, FDFVector3 Rhs) { return DFFastAddDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastAddDemote (float Lhs, FDFVector3 Rhs) { return DFFastAddDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastAddDemote (FDFScalar Lhs, float3 Rhs) { return DFFastAddDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastAddDemote (float Lhs, float3 Rhs) { return DFFastAddDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastAddDemote (FDFVector3 Lhs, FDFScalar Rhs) { return DFFastAddDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastAddDemote (FDFVector3 Lhs, float Rhs)     { return DFFastAddDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastAddDemote (float3 Lhs, FDFScalar Rhs) { return DFFastAddDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastAddDemote (float3 Lhs, float Rhs) { return DFFastAddDemote (Lhs, DFBroadcast3(Rhs)); }
  FDFVector3  DFSubtract (FDFScalar Lhs, FDFVector3 Rhs) { return DFSubtract (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFSubtract (float Lhs, FDFVector3 Rhs) { return DFSubtract (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFSubtract (FDFScalar Lhs, float3 Rhs) { return DFSubtract (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFSubtract (float Lhs, float3 Rhs) { return DFSubtract (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFSubtract (FDFVector3 Lhs, FDFScalar Rhs) { return DFSubtract (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFSubtract (FDFVector3 Lhs, float Rhs)     { return DFSubtract (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFSubtract (float3 Lhs, FDFScalar Rhs) { return DFSubtract (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFSubtract (float3 Lhs, float Rhs) { return DFSubtract (Lhs, DFBroadcast3(Rhs)); }
  float3  DFSubtractDemote (FDFScalar Lhs, FDFVector3 Rhs) { return DFSubtractDemote (DFBroadcast3(Lhs), Rhs); } float3  DFSubtractDemote (float Lhs, FDFVector3 Rhs) { return DFSubtractDemote (DFBroadcast3(Lhs), Rhs); } float3  DFSubtractDemote (FDFScalar Lhs, float3 Rhs) { return DFSubtractDemote (DFBroadcast3(Lhs), Rhs); } float3  DFSubtractDemote (float Lhs, float3 Rhs) { return DFSubtractDemote (DFBroadcast3(Lhs), Rhs); } float3  DFSubtractDemote (FDFVector3 Lhs, FDFScalar Rhs) { return DFSubtractDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFSubtractDemote (FDFVector3 Lhs, float Rhs)     { return DFSubtractDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFSubtractDemote (float3 Lhs, FDFScalar Rhs) { return DFSubtractDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFSubtractDemote (float3 Lhs, float Rhs) { return DFSubtractDemote (Lhs, DFBroadcast3(Rhs)); }
  FDFVector3  DFFastSubtract (FDFScalar Lhs, FDFVector3 Rhs) { return DFFastSubtract (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastSubtract (float Lhs, FDFVector3 Rhs) { return DFFastSubtract (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastSubtract (FDFScalar Lhs, float3 Rhs) { return DFFastSubtract (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastSubtract (float Lhs, float3 Rhs) { return DFFastSubtract (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastSubtract (FDFVector3 Lhs, FDFScalar Rhs) { return DFFastSubtract (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastSubtract (FDFVector3 Lhs, float Rhs)     { return DFFastSubtract (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastSubtract (float3 Lhs, FDFScalar Rhs) { return DFFastSubtract (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastSubtract (float3 Lhs, float Rhs) { return DFFastSubtract (Lhs, DFBroadcast3(Rhs)); }
  float3  DFFastSubtractDemote (FDFScalar Lhs, FDFVector3 Rhs) { return DFFastSubtractDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastSubtractDemote (float Lhs, FDFVector3 Rhs) { return DFFastSubtractDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastSubtractDemote (FDFScalar Lhs, float3 Rhs) { return DFFastSubtractDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastSubtractDemote (float Lhs, float3 Rhs) { return DFFastSubtractDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastSubtractDemote (FDFVector3 Lhs, FDFScalar Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastSubtractDemote (FDFVector3 Lhs, float Rhs)     { return DFFastSubtractDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastSubtractDemote (float3 Lhs, FDFScalar Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastSubtractDemote (float3 Lhs, float Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast3(Rhs)); }
  FDFVector3  DFMultiply (FDFScalar Lhs, FDFVector3 Rhs) { return DFMultiply (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFMultiply (float Lhs, FDFVector3 Rhs) { return DFMultiply (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFMultiply (FDFScalar Lhs, float3 Rhs) { return DFMultiply (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFMultiply (float Lhs, float3 Rhs) { return DFMultiply (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFMultiply (FDFVector3 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFMultiply (FDFVector3 Lhs, float Rhs)     { return DFMultiply (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFMultiply (float3 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFMultiply (float3 Lhs, float Rhs) { return DFMultiply (Lhs, DFBroadcast3(Rhs)); }
  float3  DFMultiplyDemote (FDFScalar Lhs, FDFVector3 Rhs) { return DFMultiplyDemote (DFBroadcast3(Lhs), Rhs); } float3  DFMultiplyDemote (float Lhs, FDFVector3 Rhs) { return DFMultiplyDemote (DFBroadcast3(Lhs), Rhs); } float3  DFMultiplyDemote (FDFScalar Lhs, float3 Rhs) { return DFMultiplyDemote (DFBroadcast3(Lhs), Rhs); } float3  DFMultiplyDemote (float Lhs, float3 Rhs) { return DFMultiplyDemote (DFBroadcast3(Lhs), Rhs); } float3  DFMultiplyDemote (FDFVector3 Lhs, FDFScalar Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFMultiplyDemote (FDFVector3 Lhs, float Rhs)     { return DFMultiplyDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFMultiplyDemote (float3 Lhs, FDFScalar Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFMultiplyDemote (float3 Lhs, float Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast3(Rhs)); }
  FDFVector3  DFDivide (FDFScalar Lhs, FDFVector3 Rhs) { return DFDivide (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFDivide (float Lhs, FDFVector3 Rhs) { return DFDivide (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFDivide (FDFScalar Lhs, float3 Rhs) { return DFDivide (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFDivide (float Lhs, float3 Rhs) { return DFDivide (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFDivide (FDFVector3 Lhs, FDFScalar Rhs) { return DFDivide (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFDivide (FDFVector3 Lhs, float Rhs)     { return DFDivide (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFDivide (float3 Lhs, FDFScalar Rhs) { return DFDivide (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFDivide (float3 Lhs, float Rhs) { return DFDivide (Lhs, DFBroadcast3(Rhs)); }
  FDFVector3  DFFastDivide (FDFScalar Lhs, FDFVector3 Rhs) { return DFFastDivide (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastDivide (float Lhs, FDFVector3 Rhs) { return DFFastDivide (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastDivide (FDFScalar Lhs, float3 Rhs) { return DFFastDivide (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastDivide (float Lhs, float3 Rhs) { return DFFastDivide (DFBroadcast3(Lhs), Rhs); } FDFVector3  DFFastDivide (FDFVector3 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastDivide (FDFVector3 Lhs, float Rhs)     { return DFFastDivide (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastDivide (float3 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast3(Rhs)); } FDFVector3  DFFastDivide (float3 Lhs, float Rhs) { return DFFastDivide (Lhs, DFBroadcast3(Rhs)); }
  float3  DFFastDivideDemote (FDFScalar Lhs, FDFVector3 Rhs) { return DFFastDivideDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastDivideDemote (float Lhs, FDFVector3 Rhs) { return DFFastDivideDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastDivideDemote (FDFScalar Lhs, float3 Rhs) { return DFFastDivideDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastDivideDemote (float Lhs, float3 Rhs) { return DFFastDivideDemote (DFBroadcast3(Lhs), Rhs); } float3  DFFastDivideDemote (FDFVector3 Lhs, FDFScalar Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastDivideDemote (FDFVector3 Lhs, float Rhs)     { return DFFastDivideDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastDivideDemote (float3 Lhs, FDFScalar Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast3(Rhs)); } float3  DFFastDivideDemote (float3 Lhs, float Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast3(Rhs)); }
FDFVector3 DFDivideByPow2(FDFVector3 Lhs, float Rhs)
{
	float3 RhsVect = Rhs;
	return DFDivideByPow2(Lhs, RhsVect);
}
FDFScalar DFVectorSum(FDFVector3 V)
{
	FDFScalar Result = DFAdd(DFGetComponent(V, 0), DFGetComponent(V, 1));
	[unroll]
	for (int i = 2; i < 3; ++i)
	{
		Result = DFAdd(Result, DFGetComponent(V, i));
	}
	return Result;
}
FDFScalar DFFastVectorSum(FDFVector3 V)
{
	FDFScalar Result = DFFastAdd(DFGetComponent(V, 0), DFGetComponent(V, 1));
	[unroll]
	for (int i = 2; i < 3; ++i)
	{
		Result = DFFastAdd(Result, DFGetComponent(V, i));
	}
	return Result;
}
FDFScalar DFDot(FDFVector3 Lhs, float3 Rhs)
{
	return DFFastVectorSum(DFMultiply(Lhs, Rhs));
}
FDFScalar DFDot(float3 Lhs, FDFVector3 Rhs) { return DFDot(Rhs, Lhs); }
FDFScalar DFDot(FDFVector3 Lhs, FDFVector3 Rhs)
{
	return DFFastVectorSum(DFMultiply(Lhs, Rhs));
}
float3 DFDotDemote(FDFVector3 Lhs, float3 Rhs)
{
	return DFDemote(DFFastVectorSum(DFMultiply(Lhs, Rhs)));
}
float3 DFDotDemote(float3 Lhs, FDFVector3 Rhs) { return DFDotDemote(Rhs, Lhs); }
float3 DFDotDemote(FDFVector3 Lhs, FDFVector3 Rhs)
{
	return DFDemote(DFFastVectorSum(DFMultiply(Lhs, Rhs)));
}
FDFScalar DFLengthSqr(float3 V)
{
	return DFFastVectorSum(DFSqr(V));
}
FDFScalar DFLength(float3 V)
{
	return DFSqrt(DFLengthSqr(V));
}
FDFScalar DFLengthSqr(FDFVector3 V)
{
	return DFFastVectorSum(DFSqr(V));
}
FDFScalar DFLength(FDFVector3 V)
{
	return DFSqrt(DFLengthSqr(V));
}
float DFLengthDemote(FDFVector3 V)
{
	return DFSqrtDemote(DFLengthSqr(V));
}
float DFRcpLengthDemote(FDFVector3 V)
{
	return DFRsqrtDemote(DFLengthSqr(V));
}
FDFVector3 DFNormalize(float3 V)
{
	return DFDivide(V, DFBroadcast3(DFLength(V)));
}
FDFVector3 DFNormalize(FDFVector3 V)
{
	return DFFastDivide(V, DFLength(V));
}
float3 DFNormalizeDemote(FDFVector3 V)
{
	return V.High / length(V.High);
}
FDFVector3 MakeDFVector(FDFScalar   X, FDFScalar   Y, FDFScalar Z) { return MakeDFVector3(float3( X.High,  Y.High, Z.High), float3( X.Low,  Y.Low, Z.Low)); }
FDFVector3 MakeDFVector(FDFScalar   X, FDFVector2 YZ)              { return MakeDFVector3(float3( X.High, YZ.High),         float3( X.Low, YZ.Low)); }
FDFVector3 MakeDFVector(FDFVector2 XY, FDFScalar   Z)              { return MakeDFVector3(float3(XY.High,  Z.High),         float3(XY.Low,  Z.Low)); }
struct FDFVector4
{
	float4 High;
	float4 Low;
};
FDFScalar DFGetComponent(FDFVector4 V, int C) { return MakeDFScalar(V.High[C], V.Low[C]); }
FDFVector4 MakeDFVector4(float4 High, float4 Low)
{
	FDFVector4 Result;
	Result.High = High;
	Result.Low = Low;
	return Result;
}
FDFVector4 DFPromote(FDFVector4 Value) { return Value; }
FDFVector4 DFPromote(float4 Value) { return MakeDFVector4(Value, (float4)0); }
float4 DFDemote(FDFVector4 Value) { return Value.High + Value.Low; }
float4 DFDemote(float4 Value) { return Value; }
FDFVector4 DFNegate(FDFVector4 Value)
{
	return MakeDFVector4(-Value.High, -Value.Low);
}
float4 DFSign(FDFVector4 Value)
{
	return (float4)sign(Value.High);
}
FDFVector4 DFAbs(FDFVector4 Value)
{
	const float4 Sign = DFSign(Value);
	return MakeDFVector4(Sign * Value.High, Sign * Value.Low);
}
FDFVector4 DFTwoSum(float4 Lhs, float4 Rhs)
{
	const float4 S =   MakePrecise( ( Lhs ) + ( Rhs ) );
	const float4 V =   MakePrecise( ( S ) - ( Lhs ) );
	const float4 Q =   MakePrecise( ( S ) - ( V ) );
	const float4 R =   MakePrecise( ( Lhs ) - ( Q ) );
	const float4 T =   MakePrecise( ( Rhs ) - ( V ) );
	const float4 Y =   MakePrecise( ( R ) + ( T ) );
	return MakeDFVector4(S, Y);
}
FDFVector4 DFFastTwoSum(float4 Lhs, float4 Rhs)
{
	const float4 S =   MakePrecise( ( Lhs ) + ( Rhs ) );
	const float4 T =   MakePrecise( ( S ) - ( Lhs ) );
	const float4 E =   MakePrecise( ( Rhs ) - ( T ) );
	return MakeDFVector4(S, E);
}
FDFVector4 DFAdd(float4 Lhs, float4 Rhs) { return DFTwoSum(Lhs, Rhs); }
FDFVector4 DFFastAdd(float4 Lhs, float4 Rhs) { return DFTwoSum(Lhs, Rhs); }
FDFVector4 DFAdd(FDFVector4 Lhs, FDFVector4 Rhs)
{
	FDFVector4 S = DFTwoSum(Lhs.High, Rhs.High);
	const FDFVector4 T = DFTwoSum(Lhs.Low, Rhs.Low);
	S.Low += T.High;
	S = DFFastTwoSum(S.High, S.Low);
	S.Low += T.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector4 DFAdd(FDFVector4 Lhs, float4 Rhs)
{
	const FDFVector4 S = DFTwoSum(Lhs.High, Rhs);
	const float4 T = Lhs.Low + S.Low;
	return DFFastTwoSum(S.High, T);
}
FDFVector4 DFAdd(float4 Lhs, FDFVector4 Rhs) { return DFAdd(Rhs, Lhs); }
float4 DFAddDemote(FDFVector4 Lhs, FDFVector4 Rhs)
{
	FDFVector4 S = DFTwoSum(Lhs.High, Rhs.High);
	const FDFVector4 T = DFTwoSum(Lhs.Low, Rhs.Low);
	S.Low += T.High;
	S = DFFastTwoSum(S.High, S.Low);
	S.Low += T.Low;
	return S.High + S.Low;
}
float4 DFAddDemote(FDFVector4 Lhs, float4 Rhs)
{
	const FDFVector4 S = DFTwoSum(Lhs.High, Rhs);
	const float4 T = Lhs.Low + S.Low;
	return S.High + T;
}
float4 DFAddDemote(float4 Lhs, FDFVector4 Rhs) { return DFAddDemote(Rhs, Lhs); }
float4 DFAddDemote(float4 Lhs, float4 Rhs) { return Lhs + Rhs; }
FDFVector4 DFFastAdd(FDFVector4 Lhs, FDFVector4 Rhs)
{
	FDFVector4 S = DFTwoSum(Lhs.High, Rhs.High);
	S.Low += Lhs.Low + Rhs.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector4 DFFastAdd(FDFVector4 Lhs, float4 Rhs)
{
	FDFVector4 S = DFTwoSum(Lhs.High, Rhs);
	S.Low += Lhs.Low;
	S = DFFastTwoSum(S.High, S.Low);
	return S;
}
FDFVector4 DFFastAdd(float4 Lhs, FDFVector4 Rhs) { return DFFastAdd(Rhs, Lhs); }
float4 DFFastAddDemote(FDFVector4 Lhs, FDFVector4 Rhs)
{
	FDFVector4 S = DFTwoSum(Lhs.High, Rhs.High);
	S.Low += Lhs.Low + Rhs.Low;
	return S.High + S.Low;
}
float4 DFFastAddDemote(FDFVector4 Lhs, float4 Rhs) { return DFAddDemote(Lhs, Rhs); }
float4 DFFastAddDemote(float4 Lhs, FDFVector4 Rhs) { return DFFastAddDemote(Rhs, Lhs); }
float4 DFFastAddDemote(float4 Lhs, float4 Rhs) { return Rhs + Lhs; }
FDFVector4 DFSubtract(float4 Lhs, float4 Rhs) { return DFAdd(Lhs, -Rhs); }
FDFVector4 DFSubtract(FDFVector4 Lhs, FDFVector4 Rhs) { return DFAdd(Lhs, DFNegate(Rhs)); }
FDFVector4 DFSubtract(FDFVector4 Lhs, float4 Rhs) { return DFAdd(Lhs, -Rhs); }
FDFVector4 DFSubtract(float4 Lhs, FDFVector4 Rhs) { return DFAdd(Lhs, DFNegate(Rhs)); }
float4 DFSubtractDemote(float4 Lhs, float4 Rhs) { return Lhs - Rhs; }
float4 DFSubtractDemote(FDFVector4 Lhs, FDFVector4 Rhs) { return DFAddDemote(Lhs, DFNegate(Rhs)); }
float4 DFSubtractDemote(FDFVector4 Lhs, float4 Rhs) { return DFAddDemote(Lhs, -Rhs); }
float4 DFSubtractDemote(float4 Lhs, FDFVector4 Rhs) { return DFAddDemote(Lhs, DFNegate(Rhs)); }
FDFVector4 DFFastSubtract(float4 Lhs, float4 Rhs) { return DFFastAdd(Lhs, -Rhs); }
FDFVector4 DFFastSubtract(FDFVector4 Lhs, FDFVector4 Rhs) { return DFFastAdd(Lhs, DFNegate(Rhs)); }
FDFVector4 DFFastSubtract(FDFVector4 Lhs, float4 Rhs) { return DFFastAdd(Lhs, -Rhs); }
FDFVector4 DFFastSubtract(float4 Lhs, FDFVector4 Rhs) { return DFFastAdd(Lhs, DFNegate(Rhs)); }
float4 DFFastSubtractDemote(float4 Lhs, float4 Rhs) { return Lhs - Rhs; }
float4 DFFastSubtractDemote(FDFVector4 Lhs, FDFVector4 Rhs) { return DFFastAddDemote(Lhs, DFNegate(Rhs)); }
float4 DFFastSubtractDemote(FDFVector4 Lhs, float4 Rhs) { return DFFastAddDemote(Lhs, -Rhs); }
float4 DFFastSubtractDemote(float4 Lhs, FDFVector4 Rhs) { return DFFastAddDemote(Lhs, DFNegate(Rhs)); }
float4 DFFastLocalSubtractDemote(FDFVector4 Lhs, FDFVector4 Rhs)
{
	const float4 High =   MakePrecise( ( Lhs.High ) - ( Rhs.High ) );
	const float4 Low =   MakePrecise( ( Lhs.Low ) - ( Rhs.Low ) );
	const float4 Sum =   MakePrecise( ( High ) + ( Low ) );
	return Sum;
}
float4 DFFastLocalSubtractDemote(FDFVector4 Lhs, float4 Rhs)
{
	const float4 High =   MakePrecise( ( Lhs.High ) - ( Rhs ) );
	const float4 Sum =   MakePrecise( ( High ) + ( Lhs.Low ) );
	return Sum;
}
float4 DFFastLocalSubtractDemote(float4 Lhs, FDFVector4 Rhs)
{
	return DFFastLocalSubtractDemote(DFPromote(Lhs), Rhs);
}
FDFVector4 DFTwoProductNoFMA(float4 Lhs, float4 Rhs)
{
	const float4 Constant = 4097; 
	const float4 Px =   MakePrecise( ( Lhs ) * ( Constant ) );
	const float4 Hx =   MakePrecise( (   MakePrecise( ( Lhs ) - ( Px ) ) ) + ( Px ) );
	const float4 Tx =   MakePrecise( ( Lhs ) - ( Hx ) );
	const float4 Py =   MakePrecise( ( Rhs ) * ( Constant ) );
	const float4 Hy =   MakePrecise( (   MakePrecise( ( Rhs ) - ( Py ) ) ) + ( Py ) );
	const float4 Ty =   MakePrecise( ( Rhs ) - ( Hy ) );
	const float4 P =   MakePrecise( ( Hx ) * ( Hy ) );
	const float4 Q =   MakePrecise( (   MakePrecise( ( Hx ) * ( Ty ) ) ) + (   MakePrecise( ( Tx ) * ( Hy ) ) ) );
	const float4 Z =   MakePrecise( ( P ) + ( Q ) );
	const float4 E =   MakePrecise( (   MakePrecise( (   MakePrecise( ( P ) - ( Z ) ) ) + ( Q ) ) ) + (   MakePrecise( ( Tx ) * ( Ty ) ) ) );
	return DFFastTwoSum(Z, E);
}
FDFVector4 DFTwoProduct(float4 Lhs, float4 Rhs)
{
	const float4 P = Lhs * Rhs;
	const float4 E =   MakePrecise(  mad( ( Lhs ) , ( Rhs ) , ( -P ) ) );
	return MakeDFVector4(P, E);
}
FDFVector4 DFMultiply(float4 Lhs, float4 Rhs) { return DFTwoProduct(Lhs, Rhs); }
FDFVector4 DFMultiply(FDFVector4 Lhs, FDFVector4 Rhs)
{
	const FDFVector4 P = DFTwoProduct(Lhs.High, Rhs.High);
	float4 T =   MakePrecise( ( Lhs.High ) * ( Rhs.Low ) );
	T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs.High ) , ( T ) ) );
	T =   MakePrecise( ( T ) + ( P.Low ) );
	return DFFastTwoSum(P.High, T);
}
FDFVector4 DFMultiply(FDFVector4 Lhs, float4 Rhs)
{
	FDFVector4 P = DFTwoProduct(Lhs.High, Rhs);
	float4 T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs ) , ( P.Low ) ) );
	return DFFastTwoSum(P.High, T);
}
FDFVector4 DFMultiply(float4 Lhs, FDFVector4 Rhs) { return DFMultiply(Rhs, Lhs); }
float4 DFMultiplyDemote(FDFVector4 Lhs, FDFVector4 Rhs)
{
	const FDFVector4 P = DFTwoProduct(Lhs.High, Rhs.High);
	float4 T =   MakePrecise( ( Lhs.High ) * ( Rhs.Low ) );
	T =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs.High ) , ( T ) ) );
	T =   MakePrecise( ( T ) + ( P.Low ) );
	const float4 S =   MakePrecise( ( P.High ) + ( T ) );
	return S;
}
float4 DFMultiplyDemote(FDFVector4 Lhs, float4 Rhs)
{
	FDFVector4 P = DFTwoProduct(Lhs.High, Rhs);
	P.Low =   MakePrecise(  mad( ( Lhs.Low ) , ( Rhs ) , ( P.Low ) ) );
	const float4 S =   MakePrecise( ( P.High ) + ( P.Low ) );
	return S;
}
float4 DFMultiplyDemote(float4 Lhs, FDFVector4 Rhs) { return DFMultiplyDemote(Rhs, Lhs); }
float4 DFMultiplyDemote(float4 Lhs, float4 Rhs) { return Lhs * Rhs; }
FDFVector4 DFMultiplyByPow2(FDFVector4 Lhs, float4 Rhs)
{
	return MakeDFVector4(Lhs.High * Rhs, Lhs.Low * Rhs);
}
FDFVector4 DFSqr(FDFVector4 V) { return DFMultiply(V, V); }
FDFVector4 DFSqr(float4 V) { return DFTwoProduct(V, V); }
FDFVector4 DFFastDivide(FDFVector4 Lhs, FDFVector4 Rhs);
FDFVector4 DFDivide(FDFVector4 Lhs, FDFVector4 Rhs)
{
	const float4 Th =   MakePrecise( ( 1.0 ) / ( Rhs.High ) );
	const float4 Rh =   MakePrecise(  mad( ( -Rhs.High ) , ( Th ) , ( (float4)1 ) ) );
	const float4 Rl =   MakePrecise( ( -Rhs.Low ) * ( Th ) );
	const FDFVector4 E = DFFastTwoSum(Rh, Rl);
	const FDFVector4 D = DFMultiply(E, Th);
	const FDFVector4 M = DFAdd(D, Th);
	return DFMultiply(Lhs, M);
}
FDFVector4 DFDivide(FDFVector4 Lhs, float4 Rhs)
{
	const float4 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector4 P = DFTwoProduct(Th, Rhs);
	const float4 Dh =   MakePrecise( ( Lhs.High ) - ( P.High ) );
	const float4 Dt =   MakePrecise( ( Dh ) - ( P.Low ) );
	const float4 D =   MakePrecise( ( Dt ) + ( Lhs.Low ) );
	const float4 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector4 DFDivide(float4 Lhs, float4 Rhs)
{
	return DFDivide(DFPromote(Lhs), Rhs);
}
FDFVector4 DFDivide(float4 Lhs, FDFVector4 Rhs)
{
	return DFDivide(DFPromote(Lhs), Rhs);
}
FDFVector4 DFFastDivide(FDFVector4 Lhs, FDFVector4 Rhs)
{
	const float4 Th =   MakePrecise( ( Lhs.High ) / ( Rhs.High ) );
	const FDFVector4 R = DFMultiply(Rhs, Th);
	const float4 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float4 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float4 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float4 Tl =   MakePrecise( ( D ) / ( Rhs.High ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector4 DFFastDivide(FDFVector4 Lhs, float4 Rhs)
{
	const float4 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector4 R = DFTwoProduct(Rhs, Th);
	const float4 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float4 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float4 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float4 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return DFFastTwoSum(Th, Tl);
}
FDFVector4 DFFastDivide(float4 Lhs, FDFVector4 Rhs) { return DFFastDivide(DFPromote(Lhs), Rhs); }
FDFVector4 DFFastDivide(float4 Lhs, float4 Rhs) { return DFFastDivide(DFPromote(Lhs), Rhs); }
float4 DFFastDivideDemote(FDFVector4 Lhs, FDFVector4 Rhs)
{
	const float4 Th =   MakePrecise( ( Lhs.High ) / ( Rhs.High ) );
	const FDFVector4 R = DFMultiply(Rhs, Th);
	const float4 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float4 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float4 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float4 Tl =   MakePrecise( ( D ) / ( Rhs.High ) );
	return Th + Tl;
}
float4 DFFastDivideDemote(FDFVector4 Lhs, float4 Rhs)
{
	const float4 Th =   MakePrecise( ( Lhs.High ) / ( Rhs ) );
	const FDFVector4 R = DFTwoProduct(Rhs, Th);
	const float4 Ph =   MakePrecise( ( Lhs.High ) - ( R.High ) );
	const float4 Dl =   MakePrecise( ( Lhs.Low ) - ( R.Low ) );
	const float4 D =   MakePrecise( ( Ph ) + ( Dl ) );
	const float4 Tl =   MakePrecise( ( D ) / ( Rhs ) );
	return Th + Tl;
}
float4 DFFastDivideDemote(float4 Lhs, FDFVector4 Rhs) { return DFFastDivideDemote(DFPromote(Lhs), Rhs); }
float4 DFFastDivideDemote(float4 Lhs, float4 Rhs) { return Lhs / Rhs; }
FDFVector4 DFDivideByPow2(FDFVector4 Lhs, float4 Rhs)
{
	return MakeDFVector4(Lhs.High / Rhs, Lhs.Low / Rhs);
}
FDFVector4 DFRcp(FDFVector4 V) { return DFFastDivide((float4)1.0, V); }
float4 DFRcpDemote(FDFVector4 V) { return rcp(V.High); }
bool4 DFEqualsApprox(FDFVector4 Lhs, FDFVector4 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool4 DFEqualsApprox(FDFVector4 Lhs, float4 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool4 DFEqualsApprox(float4 Lhs, FDFVector4 Rhs, float Threshold)
{
	return DFSubtractDemote(Lhs, Rhs) < Threshold;
}
bool4 DFEquals(FDFVector4 Lhs, FDFVector4 Rhs)
{
	return Lhs.High == Rhs.High && Lhs.Low == Rhs.Low;
}
bool4 DFEquals(FDFVector4 Lhs, float4 Rhs)
{
	return DFEquals(Lhs, DFPromote(Rhs));
}
bool4 DFEquals(float4 Lhs, FDFVector4 Rhs)
{
	return DFEquals(DFPromote(Lhs), Rhs);
}
FDFVector4 DFSelect(bool4 S, FDFVector4 Lhs, FDFVector4 Rhs) { return MakeDFVector4( select_internal( S , Lhs.High , Rhs.High ),  select_internal( S , Lhs.Low , Rhs.Low )); }
FDFVector4 DFSelect(bool4 S, FDFVector4 Lhs, float4 Rhs) { return MakeDFVector4( select_internal( S , Lhs.High , Rhs ),  select_internal( S , Lhs.Low , (float4)0 )); }
FDFVector4 DFSelect(bool4 S, float4 Lhs, FDFVector4 Rhs) { return MakeDFVector4( select_internal( S , Lhs , Rhs.High ),  select_internal( S , (float4)0 , Rhs.Low )); }
bool4 DFGreater(FDFVector4 Lhs, FDFVector4 Rhs)
{
		return Lhs.High > Rhs.High || (Lhs.High == Rhs.High && Lhs.Low > Rhs.Low);
}
bool4 DFLess(FDFVector4 Lhs, FDFVector4 Rhs)
{
	return Lhs.High < Rhs.High || (Lhs.High == Rhs.High && Lhs.Low < Rhs.Low);
}
bool4 DFGreater(FDFVector4 Lhs, float4 Rhs)
{
	return Lhs.High > Rhs || (Lhs.High == Rhs && Lhs.Low > 0.0);
}
bool4 DFLess(FDFVector4 Lhs, float4 Rhs)
{
	return Lhs.High < Rhs || (Lhs.High == Rhs && Lhs.Low < 0.0);
}
bool4 DFGreater(float4 Lhs, FDFVector4 Rhs) { return DFLess(Rhs, Lhs); }
bool4 DFLess(float4 Lhs, FDFVector4 Rhs) { return DFGreater(Rhs, Lhs); }
bool4 DFGreaterEqual(FDFVector4 Lhs, FDFVector4 Rhs) { return !DFLess(Lhs, Rhs); }
bool4 DFGreaterEqual(FDFVector4 Lhs, float4 Rhs) { return !DFLess(Lhs, Rhs); }
bool4 DFGreaterEqual(float4 Lhs, FDFVector4 Rhs) { return !DFLess(Lhs, Rhs); }
bool4 DFLessEqual(FDFVector4 Lhs, float4 Rhs) { return !DFGreater(Lhs, Rhs); }
bool4 DFLessEqual(FDFVector4 Lhs, FDFVector4 Rhs) { return !DFGreater(Lhs, Rhs); }
bool4 DFLessEqual(float4 Lhs, FDFVector4 Rhs) { return !DFGreater(Lhs, Rhs); }
FDFVector4 DFMin(FDFVector4 Lhs, FDFVector4 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Lhs, Rhs);
}
FDFVector4 DFMin(FDFVector4 Lhs, float4 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Lhs, DFPromote(Rhs));
}
FDFVector4 DFMin(float4 Lhs, FDFVector4 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), DFPromote(Lhs), Rhs);
}
FDFVector4 DFMax(FDFVector4 Lhs, FDFVector4 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Rhs, Lhs);
}
FDFVector4 DFMax(FDFVector4 Lhs, float4 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), DFPromote(Rhs), Lhs);
}
FDFVector4 DFMax(float4 Lhs, FDFVector4 Rhs)
{
	return DFSelect(DFLess(Lhs, Rhs), Rhs, DFPromote(Lhs));
}
struct FDFVector4Deriv
{
	FDFVector4 Value;
	float4 Ddx;
	float4 Ddy;
};
FDFVector4 DFSqrt(FDFVector4 V)
{
	const float4 Sh = sqrt(V.High);
	const float4 P1 =   MakePrecise(  mad( ( -Sh ) , ( Sh ) , ( V.High ) ) ); 
	const float4 P2 =   MakePrecise( ( V.Low ) + ( P1 ) );
	const float4 Sl =   MakePrecise( ( P2 ) / ( (2.0 * Sh) ) );
	return DFFastTwoSum(Sh, Sl);
}
float4 DFSqrtDemote(FDFVector4 V)
{
	const float4 Sh = sqrt(V.High);
	const float4 P1 =   MakePrecise(  mad( ( -Sh ) , ( Sh ) , ( V.High ) ) ); 
	const float4 P2 =   MakePrecise( ( V.Low ) + ( P1 ) );
	const float4 Sl =   MakePrecise( ( P2 ) / ( (2.0 * Sh) ) );
	return Sh + Sl;
}
FDFVector4 DFRsqrt(FDFVector4 V)
{
	return DFDivide((float4)1.0, DFSqrt(V));
}
float4 DFRsqrtDemote(FDFVector4 V) { return rsqrt(V.High); }
float4 DFSin(FDFVector4 V)
{
	float4 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float4 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	return Sh*Cl + Ch*Sl; 
}
float4 DFCos(FDFVector4 V)
{
	float4 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float4 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	return Ch*Cl - Sh*Sl; 
}
void DFSinCos(FDFVector4 V, out float4 Sin, out float4 Cos)
{
	float4 Sh, Ch;
	sincos(V.High, Sh, Ch);
	float4 Sl, Cl;
	sincos(V.Low, Sl, Cl);
	Sin =  mad( Sh , Cl , Ch*Sl ); 
	Cos =  mad( Ch , Cl , -Sh*Sl ); 
}
float4 DFTan(FDFVector4 V)
{
	float4 Th = tan(V.High);
	float4 Tl = tan(V.Low);
	return (Th + Tl) / (1.0 - Th * Tl); 
}
float4 DFAsin(FDFVector4 V)
{
	return asin(DFDemote(V));
}
float4 DFAcos(FDFVector4 V)
{
	return acos(DFDemote(V));
}
float4 DFAtan(FDFVector4 V)
{
	return atan(DFDemote(V));
}
float4 DFModf(FDFVector4 V, out FDFVector4 Integer)
{
	float4 IntHigh;
	float4 FracHigh = modf(V.High, IntHigh);
	float4 IntLow;
	float4 FracLow = modf(V.Low, IntLow);
	float4 IntSum;
	float4 FracSum = modf(FracHigh + FracLow, IntSum);
	Integer = DFTwoSum(IntHigh, IntLow + IntSum);
	return FracSum;
}
float4 DFModfDemote(FDFVector4 V, out float4 Integer)
{
	float4 IntHigh;
	float4 FracHigh = modf(V.High, IntHigh);
	float4 IntLow;
	float4 FracLow = modf(V.Low, IntLow);
	float4 IntSum;
	float4 FracSum = modf(FracHigh + FracLow, IntSum);
	Integer = IntHigh + IntLow + IntSum;
	return FracSum;
}
FDFVector4 DFCeil(FDFVector4 V)
{
	float4 IntHigh;
	float4 FracHigh = modf(V.High, IntHigh);
	float4 IntLow;
	float4 FracLow = modf(V.Low, IntLow);
	IntLow += ceil(FracHigh + FracLow);
	return DFTwoSum(IntHigh, IntLow);
}
FDFVector4 DFFloor(FDFVector4 V)
{
	float4 IntHigh;
	float4 FracHigh = modf(V.High, IntHigh);
	float4 IntLow;
	float4 FracLow = modf(V.Low, IntLow);
	IntLow += floor(FracHigh + FracLow);
	return DFTwoSum(IntHigh, IntLow);
}
FDFVector4 DFRound(FDFVector4 V)
{
	float4 Sign = DFSign(V);
	FDFVector4 VAbs = MakeDFVector4(Sign*V.High, Sign*V.Low);
	float4 IntHigh;
	float4 FracHigh = modf(VAbs.High, IntHigh);
	float4 IntLow;
	float4 FracLow = modf(VAbs.Low, IntLow);
	IntLow += floor(FracHigh + FracLow + 0.5);
	return DFTwoSum(Sign * IntHigh, Sign * IntLow);
}
FDFVector4 DFTrunc(FDFVector4 V)
{
	float4 Sign = DFSign(V);
	FDFVector4 VAbs = MakeDFVector4(Sign*V.High, Sign*V.Low);
	float4 IntHigh;
	float4 FracHigh = modf(VAbs.High, IntHigh);
	float4 IntLow;
	float4 FracLow = modf(VAbs.Low, IntLow);
	IntLow += floor(FracHigh + FracLow);
	return DFTwoSum(Sign * IntHigh, Sign * IntLow);
}
FDFVector4 DFFrac(FDFVector4 V)
{
	return DFSubtract(V, DFFloor(V));
}
float4 DFFracDemote(FDFVector4 V)
{
	return frac(frac(V.High) + frac(V.Low));
}
FDFVector4 DFFmod(FDFVector4 Lhs, float4 Rhs)
{
	return DFSubtract(Lhs, DFMultiply(DFTrunc(DFDivide(Lhs, Rhs)), Rhs));
}
float4 DFFmodDemote(FDFVector4 Lhs, float4 Rhs)
{
	return DFSubtractDemote(Lhs, DFMultiply(DFTrunc(DFDivide(Lhs, Rhs)), Rhs)); 
}
float4 DFFmodByPow2Demote(FDFVector4 Lhs, float4 Rhs)
{
	return DFFracDemote(DFDivideByPow2(Lhs, Rhs)) * Rhs;
}
FDFVector4 DFLerp(FDFVector4 Lhs, FDFVector4 Rhs, float4 S)
{
	return DFTwoSum(lerp(Lhs.High, Rhs.High, S), lerp(Lhs.Low, Rhs.Low, S)); 
}
FDFVector4 DFSaturate(FDFVector4 V)
{
	V = DFSelect(DFLess(V, 1.0), V, 1.0);
	V = DFSelect(DFLess(V, 0.0), 0.0, V);
	return V;
}
float4 DFSaturateDemote(FDFVector4 V) { return saturate(DFDemote(V)); }
FDFVector4 DFSmoothStep(FDFVector4 Lhs, FDFVector4 Rhs, FDFVector4 S)
{
	FDFVector4 T = DFSaturate(DFDivide(DFSubtract(S, Lhs), DFSubtract(Rhs, Lhs)));
	return DFMultiply(DFSqr(T), DFSubtract(3.0f, DFMultiplyByPow2(T, 2.0f)));
}
float4 DFSmoothStepDemote(FDFVector4 Lhs, FDFVector4 Rhs, FDFVector4 S)
{
	float4 T = DFSaturateDemote(DFDivide(DFSubtract(S, Lhs), DFSubtract(Rhs, Lhs)));
	return T*T*(3.0f - (2.0f*T));
}
float4 DFStep(FDFVector4 Lhs, FDFVector4 Rhs)    { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float4)1.0f , (float4)0.0f ); }
float4 DFStep(FDFVector4 Lhs, float4 Rhs) { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float4)1.0f , (float4)0.0f ); }
float4 DFStep(float4 Lhs, FDFVector4 Rhs) { return  select_internal( DFGreaterEqual(Rhs, Lhs) , (float4)1.0f , (float4)0.0f ); }
FDFVector4 DFDdx(FDFVector4 V)
{
	return DFTwoSum(ddx(V.High), ddx(V.Low));
}
FDFVector4 DFDdy(FDFVector4 V)
{
	return DFTwoSum(ddy(V.High), ddy(V.Low));
}
float4 DFDdxDemote(FDFVector4 V)
{
	return ddx(V.High) + ddx(V.Low);
}
float4 DFDdyDemote(FDFVector4 V)
{
	return ddy(V.High) + ddy(V.Low);
}
FDFVector4 DFBroadcast4(FDFScalar V)
{
	const float4 High = V.High;
	const float4 Low = V.Low;
	return MakeDFVector4(High, Low);
}
float4 DFBroadcast4(float V)
{
	const float4 Single = V;
	return Single;
}
  FDFVector4  DFAdd (FDFScalar Lhs, FDFVector4 Rhs) { return DFAdd (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFAdd (float Lhs, FDFVector4 Rhs) { return DFAdd (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFAdd (FDFScalar Lhs, float4 Rhs) { return DFAdd (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFAdd (float Lhs, float4 Rhs) { return DFAdd (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFAdd (FDFVector4 Lhs, FDFScalar Rhs) { return DFAdd (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFAdd (FDFVector4 Lhs, float Rhs)     { return DFAdd (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFAdd (float4 Lhs, FDFScalar Rhs) { return DFAdd (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFAdd (float4 Lhs, float Rhs) { return DFAdd (Lhs, DFBroadcast4(Rhs)); }
  float4  DFAddDemote (FDFScalar Lhs, FDFVector4 Rhs) { return DFAddDemote (DFBroadcast4(Lhs), Rhs); } float4  DFAddDemote (float Lhs, FDFVector4 Rhs) { return DFAddDemote (DFBroadcast4(Lhs), Rhs); } float4  DFAddDemote (FDFScalar Lhs, float4 Rhs) { return DFAddDemote (DFBroadcast4(Lhs), Rhs); } float4  DFAddDemote (float Lhs, float4 Rhs) { return DFAddDemote (DFBroadcast4(Lhs), Rhs); } float4  DFAddDemote (FDFVector4 Lhs, FDFScalar Rhs) { return DFAddDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFAddDemote (FDFVector4 Lhs, float Rhs)     { return DFAddDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFAddDemote (float4 Lhs, FDFScalar Rhs) { return DFAddDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFAddDemote (float4 Lhs, float Rhs) { return DFAddDemote (Lhs, DFBroadcast4(Rhs)); }
  FDFVector4  DFFastAdd (FDFScalar Lhs, FDFVector4 Rhs) { return DFFastAdd (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastAdd (float Lhs, FDFVector4 Rhs) { return DFFastAdd (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastAdd (FDFScalar Lhs, float4 Rhs) { return DFFastAdd (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastAdd (float Lhs, float4 Rhs) { return DFFastAdd (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastAdd (FDFVector4 Lhs, FDFScalar Rhs) { return DFFastAdd (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastAdd (FDFVector4 Lhs, float Rhs)     { return DFFastAdd (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastAdd (float4 Lhs, FDFScalar Rhs) { return DFFastAdd (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastAdd (float4 Lhs, float Rhs) { return DFFastAdd (Lhs, DFBroadcast4(Rhs)); }
  float4  DFFastAddDemote (FDFScalar Lhs, FDFVector4 Rhs) { return DFFastAddDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastAddDemote (float Lhs, FDFVector4 Rhs) { return DFFastAddDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastAddDemote (FDFScalar Lhs, float4 Rhs) { return DFFastAddDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastAddDemote (float Lhs, float4 Rhs) { return DFFastAddDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastAddDemote (FDFVector4 Lhs, FDFScalar Rhs) { return DFFastAddDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastAddDemote (FDFVector4 Lhs, float Rhs)     { return DFFastAddDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastAddDemote (float4 Lhs, FDFScalar Rhs) { return DFFastAddDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastAddDemote (float4 Lhs, float Rhs) { return DFFastAddDemote (Lhs, DFBroadcast4(Rhs)); }
  FDFVector4  DFSubtract (FDFScalar Lhs, FDFVector4 Rhs) { return DFSubtract (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFSubtract (float Lhs, FDFVector4 Rhs) { return DFSubtract (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFSubtract (FDFScalar Lhs, float4 Rhs) { return DFSubtract (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFSubtract (float Lhs, float4 Rhs) { return DFSubtract (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFSubtract (FDFVector4 Lhs, FDFScalar Rhs) { return DFSubtract (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFSubtract (FDFVector4 Lhs, float Rhs)     { return DFSubtract (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFSubtract (float4 Lhs, FDFScalar Rhs) { return DFSubtract (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFSubtract (float4 Lhs, float Rhs) { return DFSubtract (Lhs, DFBroadcast4(Rhs)); }
  float4  DFSubtractDemote (FDFScalar Lhs, FDFVector4 Rhs) { return DFSubtractDemote (DFBroadcast4(Lhs), Rhs); } float4  DFSubtractDemote (float Lhs, FDFVector4 Rhs) { return DFSubtractDemote (DFBroadcast4(Lhs), Rhs); } float4  DFSubtractDemote (FDFScalar Lhs, float4 Rhs) { return DFSubtractDemote (DFBroadcast4(Lhs), Rhs); } float4  DFSubtractDemote (float Lhs, float4 Rhs) { return DFSubtractDemote (DFBroadcast4(Lhs), Rhs); } float4  DFSubtractDemote (FDFVector4 Lhs, FDFScalar Rhs) { return DFSubtractDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFSubtractDemote (FDFVector4 Lhs, float Rhs)     { return DFSubtractDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFSubtractDemote (float4 Lhs, FDFScalar Rhs) { return DFSubtractDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFSubtractDemote (float4 Lhs, float Rhs) { return DFSubtractDemote (Lhs, DFBroadcast4(Rhs)); }
  FDFVector4  DFFastSubtract (FDFScalar Lhs, FDFVector4 Rhs) { return DFFastSubtract (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastSubtract (float Lhs, FDFVector4 Rhs) { return DFFastSubtract (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastSubtract (FDFScalar Lhs, float4 Rhs) { return DFFastSubtract (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastSubtract (float Lhs, float4 Rhs) { return DFFastSubtract (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastSubtract (FDFVector4 Lhs, FDFScalar Rhs) { return DFFastSubtract (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastSubtract (FDFVector4 Lhs, float Rhs)     { return DFFastSubtract (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastSubtract (float4 Lhs, FDFScalar Rhs) { return DFFastSubtract (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastSubtract (float4 Lhs, float Rhs) { return DFFastSubtract (Lhs, DFBroadcast4(Rhs)); }
  float4  DFFastSubtractDemote (FDFScalar Lhs, FDFVector4 Rhs) { return DFFastSubtractDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastSubtractDemote (float Lhs, FDFVector4 Rhs) { return DFFastSubtractDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastSubtractDemote (FDFScalar Lhs, float4 Rhs) { return DFFastSubtractDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastSubtractDemote (float Lhs, float4 Rhs) { return DFFastSubtractDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastSubtractDemote (FDFVector4 Lhs, FDFScalar Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastSubtractDemote (FDFVector4 Lhs, float Rhs)     { return DFFastSubtractDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastSubtractDemote (float4 Lhs, FDFScalar Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastSubtractDemote (float4 Lhs, float Rhs) { return DFFastSubtractDemote (Lhs, DFBroadcast4(Rhs)); }
  FDFVector4  DFMultiply (FDFScalar Lhs, FDFVector4 Rhs) { return DFMultiply (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFMultiply (float Lhs, FDFVector4 Rhs) { return DFMultiply (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFMultiply (FDFScalar Lhs, float4 Rhs) { return DFMultiply (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFMultiply (float Lhs, float4 Rhs) { return DFMultiply (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFMultiply (FDFVector4 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFMultiply (FDFVector4 Lhs, float Rhs)     { return DFMultiply (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFMultiply (float4 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFMultiply (float4 Lhs, float Rhs) { return DFMultiply (Lhs, DFBroadcast4(Rhs)); }
  float4  DFMultiplyDemote (FDFScalar Lhs, FDFVector4 Rhs) { return DFMultiplyDemote (DFBroadcast4(Lhs), Rhs); } float4  DFMultiplyDemote (float Lhs, FDFVector4 Rhs) { return DFMultiplyDemote (DFBroadcast4(Lhs), Rhs); } float4  DFMultiplyDemote (FDFScalar Lhs, float4 Rhs) { return DFMultiplyDemote (DFBroadcast4(Lhs), Rhs); } float4  DFMultiplyDemote (float Lhs, float4 Rhs) { return DFMultiplyDemote (DFBroadcast4(Lhs), Rhs); } float4  DFMultiplyDemote (FDFVector4 Lhs, FDFScalar Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFMultiplyDemote (FDFVector4 Lhs, float Rhs)     { return DFMultiplyDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFMultiplyDemote (float4 Lhs, FDFScalar Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFMultiplyDemote (float4 Lhs, float Rhs) { return DFMultiplyDemote (Lhs, DFBroadcast4(Rhs)); }
  FDFVector4  DFDivide (FDFScalar Lhs, FDFVector4 Rhs) { return DFDivide (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFDivide (float Lhs, FDFVector4 Rhs) { return DFDivide (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFDivide (FDFScalar Lhs, float4 Rhs) { return DFDivide (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFDivide (float Lhs, float4 Rhs) { return DFDivide (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFDivide (FDFVector4 Lhs, FDFScalar Rhs) { return DFDivide (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFDivide (FDFVector4 Lhs, float Rhs)     { return DFDivide (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFDivide (float4 Lhs, FDFScalar Rhs) { return DFDivide (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFDivide (float4 Lhs, float Rhs) { return DFDivide (Lhs, DFBroadcast4(Rhs)); }
  FDFVector4  DFFastDivide (FDFScalar Lhs, FDFVector4 Rhs) { return DFFastDivide (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastDivide (float Lhs, FDFVector4 Rhs) { return DFFastDivide (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastDivide (FDFScalar Lhs, float4 Rhs) { return DFFastDivide (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastDivide (float Lhs, float4 Rhs) { return DFFastDivide (DFBroadcast4(Lhs), Rhs); } FDFVector4  DFFastDivide (FDFVector4 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastDivide (FDFVector4 Lhs, float Rhs)     { return DFFastDivide (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastDivide (float4 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast4(Rhs)); } FDFVector4  DFFastDivide (float4 Lhs, float Rhs) { return DFFastDivide (Lhs, DFBroadcast4(Rhs)); }
  float4  DFFastDivideDemote (FDFScalar Lhs, FDFVector4 Rhs) { return DFFastDivideDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastDivideDemote (float Lhs, FDFVector4 Rhs) { return DFFastDivideDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastDivideDemote (FDFScalar Lhs, float4 Rhs) { return DFFastDivideDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastDivideDemote (float Lhs, float4 Rhs) { return DFFastDivideDemote (DFBroadcast4(Lhs), Rhs); } float4  DFFastDivideDemote (FDFVector4 Lhs, FDFScalar Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastDivideDemote (FDFVector4 Lhs, float Rhs)     { return DFFastDivideDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastDivideDemote (float4 Lhs, FDFScalar Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast4(Rhs)); } float4  DFFastDivideDemote (float4 Lhs, float Rhs) { return DFFastDivideDemote (Lhs, DFBroadcast4(Rhs)); }
FDFVector4 DFDivideByPow2(FDFVector4 Lhs, float Rhs)
{
	float4 RhsVect = Rhs;
	return DFDivideByPow2(Lhs, RhsVect);
}
FDFScalar DFVectorSum(FDFVector4 V)
{
	FDFScalar Result = DFAdd(DFGetComponent(V, 0), DFGetComponent(V, 1));
	[unroll]
	for (int i = 2; i < 4; ++i)
	{
		Result = DFAdd(Result, DFGetComponent(V, i));
	}
	return Result;
}
FDFScalar DFFastVectorSum(FDFVector4 V)
{
	FDFScalar Result = DFFastAdd(DFGetComponent(V, 0), DFGetComponent(V, 1));
	[unroll]
	for (int i = 2; i < 4; ++i)
	{
		Result = DFFastAdd(Result, DFGetComponent(V, i));
	}
	return Result;
}
FDFScalar DFDot(FDFVector4 Lhs, float4 Rhs)
{
	return DFFastVectorSum(DFMultiply(Lhs, Rhs));
}
FDFScalar DFDot(float4 Lhs, FDFVector4 Rhs) { return DFDot(Rhs, Lhs); }
FDFScalar DFDot(FDFVector4 Lhs, FDFVector4 Rhs)
{
	return DFFastVectorSum(DFMultiply(Lhs, Rhs));
}
float4 DFDotDemote(FDFVector4 Lhs, float4 Rhs)
{
	return DFDemote(DFFastVectorSum(DFMultiply(Lhs, Rhs)));
}
float4 DFDotDemote(float4 Lhs, FDFVector4 Rhs) { return DFDotDemote(Rhs, Lhs); }
float4 DFDotDemote(FDFVector4 Lhs, FDFVector4 Rhs)
{
	return DFDemote(DFFastVectorSum(DFMultiply(Lhs, Rhs)));
}
FDFScalar DFLengthSqr(float4 V)
{
	return DFFastVectorSum(DFSqr(V));
}
FDFScalar DFLength(float4 V)
{
	return DFSqrt(DFLengthSqr(V));
}
FDFScalar DFLengthSqr(FDFVector4 V)
{
	return DFFastVectorSum(DFSqr(V));
}
FDFScalar DFLength(FDFVector4 V)
{
	return DFSqrt(DFLengthSqr(V));
}
float DFLengthDemote(FDFVector4 V)
{
	return DFSqrtDemote(DFLengthSqr(V));
}
float DFRcpLengthDemote(FDFVector4 V)
{
	return DFRsqrtDemote(DFLengthSqr(V));
}
FDFVector4 DFNormalize(float4 V)
{
	return DFDivide(V, DFBroadcast4(DFLength(V)));
}
FDFVector4 DFNormalize(FDFVector4 V)
{
	return DFFastDivide(V, DFLength(V));
}
float4 DFNormalizeDemote(FDFVector4 V)
{
	return V.High / length(V.High);
}
FDFVector4 MakeDFVector(FDFScalar    X, FDFScalar    Y, FDFScalar   Z, FDFScalar W) { return MakeDFVector4(float4(  X.High,   Y.High,  Z.High, W.High), float4(  X.Low,   Y.Low,  Z.Low, W.Low)); }
FDFVector4 MakeDFVector(FDFScalar    X, FDFScalar    Y, FDFVector2 ZW)              { return MakeDFVector4(float4(  X.High,   Y.High, ZW.High),         float4(  X.Low,   Y.Low, ZW.Low)); }
FDFVector4 MakeDFVector(FDFScalar    X, FDFVector2  YZ, FDFScalar   W)              { return MakeDFVector4(float4(  X.High,  YZ.High,  W.High),         float4(  X.Low,  YZ.Low,  W.Low)); }
FDFVector4 MakeDFVector(FDFVector2  XY, FDFScalar    Z, FDFScalar   W)              { return MakeDFVector4(float4( XY.High,   Z.High,  W.High),         float4( XY.Low,   Z.Low,  W.Low)); }
FDFVector4 MakeDFVector(FDFVector2  XY, FDFVector2  ZW)                             { return MakeDFVector4(float4( XY.High,  ZW.High),                  float4( XY.Low,  ZW.Low)); }
FDFVector4 MakeDFVector(FDFScalar    X, FDFVector3 YZW)                             { return MakeDFVector4(float4(  X.High, YZW.High),                  float4(  X.Low, YZW.Low)); }
FDFVector4 MakeDFVector(FDFVector3 XYZ, FDFScalar    W)                             { return MakeDFVector4(float4(XYZ.High,   W.High),                  float4(XYZ.Low,   W.Low)); }
FDFVector4 MakeDFVector(FDFVector3 In, float W) { return MakeDFVector4(float4(In.High, W), float4(In.Low, 0)); }
FDFVector3 DFGetXYZ(FDFVector4 V)
{
	return MakeDFVector3(V.High.xyz, V.Low.xyz);
}
FDFScalar DFSwizzle(FDFScalar V, int C0)  { return V; }
FDFScalar DFSwizzle(FDFVector2 V, int C0) { return DFGetComponent(V, C0); }
FDFScalar DFSwizzle(FDFVector3 V, int C0) { return DFGetComponent(V, C0); }
FDFScalar DFSwizzle(FDFVector4 V, int C0) { return DFGetComponent(V, C0); }
FDFVector2 DFSwizzle(FDFScalar V, int C0, int C1)  { return MakeDFVector(V, V); }
FDFVector2 DFSwizzle(FDFVector2 V, int C0, int C1) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1)); }
FDFVector2 DFSwizzle(FDFVector3 V, int C0, int C1) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1)); }
FDFVector2 DFSwizzle(FDFVector4 V, int C0, int C1) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1)); }
FDFVector3 DFSwizzle(FDFScalar V, int C0, int C1, int C2)  { return MakeDFVector(V, V, V); }
FDFVector3 DFSwizzle(FDFVector2 V, int C0, int C1, int C2) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1), DFGetComponent(V, C2)); }
FDFVector3 DFSwizzle(FDFVector3 V, int C0, int C1, int C2) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1), DFGetComponent(V, C2)); }
FDFVector3 DFSwizzle(FDFVector4 V, int C0, int C1, int C2) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1), DFGetComponent(V, C2)); }
FDFVector4 DFSwizzle(FDFScalar V, int C0, int C1, int C2, int C3)  { return MakeDFVector(V, V, V, V); }
FDFVector4 DFSwizzle(FDFVector2 V, int C0, int C1, int C2, int C3) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1), DFGetComponent(V, C2), DFGetComponent(V, C3)); }
FDFVector4 DFSwizzle(FDFVector3 V, int C0, int C1, int C2, int C3) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1), DFGetComponent(V, C2), DFGetComponent(V, C3)); }
FDFVector4 DFSwizzle(FDFVector4 V, int C0, int C1, int C2, int C3) { return MakeDFVector(DFGetComponent(V, C0), DFGetComponent(V, C1), DFGetComponent(V, C2), DFGetComponent(V, C3)); }
struct FDFMatrix
{
	float4x4 M;
	float3 PostTranslation; 
};
float4x4 Make4x3Matrix(float4x4 M)
{
	float4x4 Result;
	Result[0] = float4(M[0].xyz, 0.0f);
	Result[1] = float4(M[1].xyz, 0.0f);
	Result[2] = float4(M[2].xyz, 0.0f);
	Result[3] = float4(M[3].xyz, 1.0f);
	return Result;
}
float4x4 MakeTranslationMatrix(float3 Offset)
{
	float4x4 Result;
	Result[0] = float4(1.0f, 0.0f, 0.0f, 0.0f);
	Result[1] = float4(0.0f, 1.0f, 0.0f, 0.0f);
	Result[2] = float4(0.0f, 0.0f, 1.0f, 0.0f);
	Result[3] = float4(Offset, 1.0f);
	return Result;
}
FDFMatrix MakeDFMatrix4x3(float3 PostTranslation, float4x4 InMatrix)
{
	FDFMatrix Result;
	Result.PostTranslation = PostTranslation;
	Result.M = Make4x3Matrix(InMatrix);
	return Result;
}
FDFMatrix MakeDFMatrix(float3 PostTranslation, float4x4 InMatrix)
{
	FDFMatrix Result;
	Result.PostTranslation = PostTranslation;
	Result.M = InMatrix;
	return Result;
}
FDFVector3 DFGetOrigin(FDFMatrix InMatrix)
{
	return DFFastTwoSum(InMatrix.PostTranslation, InMatrix.M[3].xyz);
}
struct FDFInverseMatrix
{
	float4x4 M;
	float3 PreTranslation; 
	int Dummy; 
};
FDFInverseMatrix MakeDFInverseMatrix(float3 PreTranslation, float4x4 InMatrix)
{
	FDFInverseMatrix Result;
	Result.PreTranslation = PreTranslation;
	Result.M = InMatrix;
	Result.Dummy = 0;
	return Result;
}
FDFInverseMatrix MakeDFInverseMatrix4x3(float3 PreTranslation, float4x4 InMatrix)
{
	FDFInverseMatrix Result;
	Result.PreTranslation = PreTranslation;
	Result.M = Make4x3Matrix(InMatrix);
	Result.Dummy = 0;
	return Result;
}
FDFVector3 DFMultiply(float3 Vector, FDFMatrix InMatrix)
{
	float4 Result = mul(float4(Vector, 1), InMatrix.M);
	FDFVector3 V = DFTwoSum(InMatrix.PostTranslation, Result.xyz);
	return V;
}
FDFVector4 DFMultiply(float4 Vector, FDFMatrix InMatrix)
{
	float4 Result = mul(Vector, InMatrix.M);
	FDFVector4 V = DFTwoSum(float4(InMatrix.PostTranslation, 0), Result);
	return V;
}
float3 DFMultiplyDemote(FDFVector3 Vector, FDFInverseMatrix InMatrix)
{
	float3 V = DFFastSubtractDemote(Vector, InMatrix.PreTranslation);
	float4 Result = mul(float4(V, 1), InMatrix.M);
	return Result.xyz;
}
float3 DFFastMultiplyDemote(FDFVector3 Vector, FDFInverseMatrix InMatrix)
{
	float3 V = DFFastLocalSubtractDemote(Vector, InMatrix.PreTranslation);
	float4 Result = mul(float4(V, 1), InMatrix.M);
	return Result.xyz;
}
float4 DFMultiplyDemote(FDFVector4 Vector, FDFInverseMatrix InMatrix)
{
	float4 V = DFFastSubtractDemote(Vector, float4(InMatrix.PreTranslation, 0));
	return mul(V, InMatrix.M);
}
float4 DFFastMultiplyDemote(FDFVector4 Vector, FDFInverseMatrix InMatrix)
{
	float4 V = DFFastLocalSubtractDemote(Vector, float4(InMatrix.PreTranslation, 0));
	return mul(V, InMatrix.M);
}
FDFInverseMatrix DFMultiply(FDFInverseMatrix Lhs, float4x4 Rhs)
{
	float4x4 M = mul(Lhs.M, Rhs);
	float3 PreTranslation = Lhs.PreTranslation;
	return MakeDFInverseMatrix(PreTranslation, M);
}
FDFMatrix DFMultiply(float4x4 Lhs, FDFMatrix Rhs)
{
	float4x4 M = mul(Lhs, Rhs.M);
	float3 PostTranslation = Rhs.PostTranslation;
	return MakeDFMatrix(PostTranslation, M);
}
float4x4 MultiplyTranslation(float4x4 M, float3 Translation)
{
	float4x4 Result = M;
	Result[3].xyz += Translation;
	return Result;
}
float4x4 MultiplyTranslation(float3 Translation, float4x4 M)
{
	return mul(MakeTranslationMatrix(Translation), M);
}
float4x4 DFMultiplyTranslationDemote(FDFMatrix Lhs, FDFVector3 Rhs)
{
	float3 Translation = DFFastAddDemote(Lhs.PostTranslation, Rhs);
	float4x4 Result = MultiplyTranslation(Lhs.M, Translation);
	return Result;
}
float4x4 DFFastMultiplyTranslationDemote(FDFMatrix Lhs, FDFVector3 Rhs)
{
	float3 Translation = DFFastLocalSubtractDemote(Lhs.PostTranslation, DFNegate(Rhs));
	float4x4 Result = MultiplyTranslation(Lhs.M, Translation);
	return Result;
}
float4x4 DFMultiplyTranslationDemote(FDFMatrix Lhs, float3 Rhs)
{
	float3 Translation = Lhs.PostTranslation + Rhs; 
	float4x4 Result = MultiplyTranslation(Lhs.M, Translation);
	return Result;
}
FDFMatrix DFMultiplyTranslation(FDFMatrix Lhs, float3 Rhs)
{
	FDFVector3 Translation = DFTwoSum(Lhs.PostTranslation, Rhs);
	float3 PostTranslation = Translation.High;
	float4x4 M = MultiplyTranslation(Lhs.M, Translation.Low);
	return MakeDFMatrix(PostTranslation, M);
}
FDFMatrix DFMultiplyTranslation(float4x4 Lhs, FDFVector3 Rhs)
{
	FDFVector3 Translation = Rhs;
	float3 PostTranslation = Translation.High;
	float4x4 M = MultiplyTranslation(Lhs, Translation.Low);
	return MakeDFMatrix(PostTranslation, M);
}
FDFInverseMatrix DFMultiplyTranslation(FDFVector3 Lhs, FDFInverseMatrix Rhs)
{
	FDFVector3 Translation = DFFastAdd(Lhs, -Rhs.PreTranslation); 
	float3 PreTranslation = -Translation.High;
	float4x4 M = MultiplyTranslation(Translation.Low, Rhs.M);
	return MakeDFInverseMatrix(PreTranslation, M);
}
float4x4 DFMultiplyTranslationDemote(FDFVector3 Lhs, FDFInverseMatrix Rhs)
{
	float3 Translation = DFFastAddDemote(Lhs, -Rhs.PreTranslation);
	float4x4 Result = MultiplyTranslation(Translation, Rhs.M);
	return Result;
}
float4x4 DFFastMultiplyTranslationDemote(FDFVector3 Lhs, FDFInverseMatrix Rhs)
{
	float3 Translation = DFFastLocalSubtractDemote(Lhs, Rhs.PreTranslation);
	float4x4 Result = MultiplyTranslation(Translation, Rhs.M);
	return Result;
}
FDFInverseMatrix DFMultiplyTranslation(float3 Lhs, FDFInverseMatrix Rhs)
{
	FDFVector3 Translation = DFTwoSum(Lhs, -Rhs.PreTranslation);
	float3 PreTranslation = -Translation.High;
	float4x4 M = MultiplyTranslation(Translation.Low, Rhs.M);
	return MakeDFInverseMatrix(PreTranslation, M);
}
FDFInverseMatrix DFMultiplyTranslation(FDFVector3 Lhs, float4x4 Rhs)
{
	float3 PreTranslation = -Lhs.High;
	float4x4 M = MultiplyTranslation(Lhs.Low, Rhs);
	return MakeDFInverseMatrix(PreTranslation, M);
}
float3x3 DFToFloat3x3(FDFMatrix Value)
{
	return (float3x3)Value.M;
}
float3x3 DFToFloat3x3(FDFInverseMatrix Value)
{
	return (float3x3)Value.M;
}
float3 DFMultiplyVector(float3 Vector, FDFMatrix InMatrix)
{
	return mul(Vector, (float3x3)InMatrix.M);
}
float3 DFMultiplyVector(float3 Vector, FDFInverseMatrix InMatrix)
{
	return mul(Vector, (float3x3)InMatrix.M);
}
FDFMatrix DFPromote(FDFMatrix Value) { return Value; }
FDFInverseMatrix DFPromoteInverse(FDFInverseMatrix Value) { return Value; }
FDFMatrix  DFPromote(float4x4 Value) { return MakeDFMatrix((float3)0, Value); }
FDFInverseMatrix DFPromoteInverse(float4x4 Value) { return MakeDFInverseMatrix((float3)0, Value); }
float4x4 DFDemote(FDFMatrix V)
{
	return MultiplyTranslation(V.M, V.PostTranslation);
}
float4x4 DFDemote(float4x4 V)
{
	return V;
}
float4x4 DFDemote(FDFInverseMatrix V)
{
	return MultiplyTranslation(-V.PreTranslation, V.M);
}
float4 DFTransformLocalToTranslatedWorld(float3 LocalPosition, FDFMatrix LocalToWorld, FDFVector3 PreViewTranslation)
{
	float3 RotatedScaledPosition =  mad( LocalPosition.xxx , LocalToWorld.M[0].xyz ,  mad( LocalPosition.yyy , LocalToWorld.M[1].xyz , LocalPosition.zzz * LocalToWorld.M[2].xyz ) );
	float3 TranslatedWorldPositionOrigin = DFFastLocalSubtractDemote(LocalToWorld.PostTranslation, DFNegate(PreViewTranslation)) + LocalToWorld.M[3].xyz;
	return float4(RotatedScaledPosition + TranslatedWorldPositionOrigin, 1.0f);
}
float3 DFFastToTranslatedWorld(FDFVector3 WorldPosition, FDFVector3 PreViewTranslation)
{
	return DFFastLocalSubtractDemote(WorldPosition, DFNegate(PreViewTranslation));
}
float3 DFFastToTranslatedWorld(float3 WorldPosition, FDFVector3 PreViewTranslation)
{
	return DFFastLocalSubtractDemote(WorldPosition, DFNegate(PreViewTranslation));
}
float4x4 DFFastToTranslatedWorld(FDFInverseMatrix WorldToLocal, FDFVector3 PreViewTranslation)
{
	return DFFastMultiplyTranslationDemote(DFNegate(PreViewTranslation), WorldToLocal);
}
float4x4 DFFastToTranslatedWorld(FDFMatrix LocalToWorld, FDFVector3 PreViewTranslation)
{
	return DFFastMultiplyTranslationDemote(LocalToWorld, PreViewTranslation);
}
FDFVector3 DFMultiplyLHSAndFastTwoSum(float3 Lhs, float Factor, float3 Rhs)
{
	const float3 S =   MakePrecise(  mad( ( Lhs ) , ( Factor ) , ( Rhs ) ) );
	const float3 E =   MakePrecise( ( Rhs ) - (   MakePrecise(  mad( ( -Lhs ) , ( Factor ) , ( S ) ) ) ) );
	return MakeDFVector3(S, E);
}
uint4 DFHashPCG(FDFVector2 In)
{
	int4 V1 = asint(float4(In.High.x, In.High.y, In.Low.x, In.Low.y));
	return Rand4DPCG32(V1);
}
uint DFHash_LCG(FDFVector2 In)
{
	const uint M = 1664525u;
	const uint A = 1013904223u;
	uint V1 = asuint(In.High.x) + asuint(In.High.y)
			+ asuint(In.Low.x)  + asuint(In.Low.y);
	uint V2 = V1 * M + A;
	uint V3 = V2 * M + A;
	return V3;
}
uint3 DFHashPCG(FDFVector3 In)
{
	int3 V1 = asint(In.High);
	int3 V2 = asint(In.Low);
	uint3 H1 = Rand3DPCG32(V1);
	uint3 H2 = Rand3DPCG32(H1 + V2);
	return H2;
}
uint DFHash_LCG(FDFVector3 In)
{
	const uint M = 1664525u;
	const uint A = 1013904223u;
	uint V1 = asuint(In.High.x) + asuint(In.High.y) + asuint(In.High.z) 
			+ asuint(In.Low.x)  + asuint(In.Low.y)  + asuint(In.Low.z);
	uint V2 = V1 * M + A;
	uint V3 = V2 * M + A;
	return V3;
}
uint4 DFHash_PCG(FDFVector4 In)
{
	int4 V1 = asint(In.High);
	int4 V2 = asint(In.Low);
	uint4 H1 = Rand4DPCG32(V1);
	uint4 H2 = Rand4DPCG32(H1 + V2);
	return H2;
}
uint DFHash_LCG(FDFVector4 In)
{
	const uint M = 1664525u;
	const uint A = 1013904223u;
	uint V1 = asuint(In.High.x) + asuint(In.High.y) + asuint(In.High.z) + asuint(In.High.w)
			+ asuint(In.Low.x)  + asuint(In.Low.y)  + asuint(In.Low.z)  + asuint(In.Low.w);
	uint V2 = V1 * M + A;
	uint V3 = V2 * M + A;
	return V3;
}
struct FLWCScalar
{
	float Tile;
	float Offset;
	int Dummy; 
};
struct FLWCVector2
{
	float2 Tile;
	float2 Offset;
	int Dummy; 
};
struct FLWCVector3
{
	float3 Tile;
	float3 Offset;
	int Dummy; 
};
struct FLWCVector4
{
	float4 Tile;
	float4 Offset;
	int Dummy; 
};
struct FLWCScalarDeriv
{
	FLWCScalar Value;
	float Ddx;
	float Ddy;
};
struct FLWCVector2Deriv
{
	FLWCVector2 Value;
	float2 Ddx;
	float2 Ddy;
};
struct FLWCVector3Deriv
{
	FLWCVector3 Value;
	float3 Ddx;
	float3 Ddy;
};
struct FLWCVector4Deriv
{
	FLWCVector4 Value;
	float4 Ddx;
	float4 Ddy;
};
struct FLWCMatrix
{
	float4x4 M;
	float3 Tile; 
	int2 Dummy; 
};
struct FLWCInverseMatrix
{
	float4x4 M;
	float3 Tile; 
	int3 Dummy; 
};
float LWCGetTileOffset(FLWCScalar V) { return  (( V ).Tile) * 2097152.00f; }
float2 LWCGetTileOffset(FLWCVector2 V) { return  (( V ).Tile) * 2097152.00f; }
float3 LWCGetTileOffset(FLWCVector3 V) { return  (( V ).Tile) * 2097152.00f; }
float4 LWCGetTileOffset(FLWCVector4 V) { return  (( V ).Tile) * 2097152.00f; }
float3 LWCGetTileOffset(FLWCMatrix V) { return  (( V ).Tile) * 2097152.00f; }
float3 LWCGetTileOffset(FLWCInverseMatrix V) { return  (( V ).Tile) * 2097152.00f; }
FLWCScalar MakeLWCScalar(float Tile, float Offset)
{
	FLWCScalar Result;
	 ( Result ).Tile = ( Tile );
	Result.Offset = Offset;
	Result.Dummy = 0;
	return Result;
}
FLWCVector2 MakeLWCVector2(float2 Tile, float2 Offset)
{
	FLWCVector2 Result;
	 ( Result ).Tile = ( Tile );
	Result.Offset = Offset;
	Result.Dummy = 0;
	return Result;
}
FLWCVector3 MakeLWCVector3(float3 Tile, float3 Offset)
{
	FLWCVector3 Result;
	 ( Result ).Tile = ( Tile );
	Result.Offset = Offset;
	Result.Dummy = 0;
	return Result;
}
FLWCVector4 MakeLWCVector4(float4 Tile, float4 Offset)
{
	FLWCVector4 Result;
	 ( Result ).Tile = ( Tile );
	Result.Offset = Offset;
	Result.Dummy = 0;
	return Result;
}
FLWCVector4 MakeLWCVector4(float3 Tile, float4 Offset)
{
	return MakeLWCVector4(float4(Tile, 0), Offset);
}
FLWCVector4 MakeLWCVector4(FLWCVector3 XYZ, float W)
{
	return MakeLWCVector4( (( XYZ ).Tile), float4(XYZ.Offset, W));
}
FLWCScalar MakeLWCVector(FLWCScalar X) { return X; }
FLWCVector2 MakeLWCVector(FLWCScalar X, FLWCScalar Y) { return MakeLWCVector2(float2( (( X ).Tile),  (( Y ).Tile)), float2(X.Offset, Y.Offset)); }
FLWCVector3 MakeLWCVector(FLWCScalar X, FLWCScalar Y, FLWCScalar Z) { return MakeLWCVector3(float3( (( X ).Tile),  (( Y ).Tile),  (( Z ).Tile)), float3(X.Offset, Y.Offset, Z.Offset)); }
FLWCVector3 MakeLWCVector(FLWCScalar X, FLWCVector2 YZ) { return MakeLWCVector3(float3( (( X ).Tile),  (( YZ ).Tile)), float3(X.Offset, YZ.Offset)); }
FLWCVector3 MakeLWCVector(FLWCVector2 XY, FLWCScalar Z) { return MakeLWCVector3(float3( (( XY ).Tile),  (( Z ).Tile)), float3(XY.Offset, Z.Offset)); }
FLWCVector4 MakeLWCVector(FLWCScalar X, FLWCScalar Y, FLWCScalar Z, FLWCScalar W) { return MakeLWCVector4(float4( (( X ).Tile),  (( Y ).Tile),  (( Z ).Tile),  (( W ).Tile)), float4(X.Offset, Y.Offset, Z.Offset, W.Offset)); }
FLWCVector4 MakeLWCVector(FLWCScalar X, FLWCScalar Y, FLWCVector2 ZW) { return MakeLWCVector4(float4( (( X ).Tile),  (( Y ).Tile),  (( ZW ).Tile)), float4(X.Offset, Y.Offset, ZW.Offset)); }
FLWCVector4 MakeLWCVector(FLWCScalar X, FLWCVector2 YZ, FLWCScalar W) { return MakeLWCVector4(float4( (( X ).Tile),  (( YZ ).Tile),  (( W ).Tile)), float4(X.Offset, YZ.Offset, W.Offset)); }
FLWCVector4 MakeLWCVector(FLWCVector2 XY, FLWCScalar Z, FLWCScalar W) { return MakeLWCVector4(float4( (( XY ).Tile),  (( Z ).Tile),  (( W ).Tile)), float4(XY.Offset, Z.Offset, W.Offset)); }
FLWCVector4 MakeLWCVector(FLWCVector2 XY, FLWCVector2 ZW) { return MakeLWCVector4(float4( (( XY ).Tile),  (( ZW ).Tile)), float4(XY.Offset, ZW.Offset)); }
FLWCVector4 MakeLWCVector(FLWCScalar X, FLWCVector3 YZW) { return MakeLWCVector4(float4( (( X ).Tile),  (( YZW ).Tile)), float4(X.Offset, YZW.Offset)); }
FLWCVector4 MakeLWCVector(FLWCVector3 XYZ, FLWCScalar W) { return MakeLWCVector4(float4( (( XYZ ).Tile),  (( W ).Tile)), float4(XYZ.Offset, W.Offset)); }
FLWCMatrix MakeLWCMatrix(float3 Tile, float4x4 InMatrix)
{
	FLWCMatrix Result;
	 ( Result ).Tile = ( Tile );
	Result.M = InMatrix;
	Result.Dummy = 0;
	return Result;
}
FLWCMatrix MakeLWCMatrix4x3(float3 Tile, float4x4 InMatrix)
{
	FLWCMatrix Result;
	 ( Result ).Tile = ( Tile );
	Result.M = Make4x3Matrix(InMatrix);
	Result.Dummy = 0;
	return Result;
}
FLWCInverseMatrix MakeLWCInverseMatrix(float3 Tile, float4x4 InMatrix)
{
	FLWCInverseMatrix Result;
	 ( Result ).Tile = ( -Tile );
	Result.M = InMatrix;
	Result.Dummy = 0;
	return Result;
}
FLWCInverseMatrix MakeLWCInverseMatrix4x3(float3 Tile, float4x4 InMatrix)
{
	FLWCInverseMatrix Result;
	 ( Result ).Tile = ( -Tile );
	Result.M = Make4x3Matrix(InMatrix);
	Result.Dummy = 0;
	return Result;
}
FLWCScalar LWCGetComponent(FLWCScalar V, int C) { return V; }
FLWCScalar LWCGetComponent(FLWCVector2 V, int C) { return MakeLWCScalar( (( V ).Tile)[C], V.Offset[C]); }
FLWCScalar LWCGetComponent(FLWCVector3 V, int C) { return MakeLWCScalar( (( V ).Tile)[C], V.Offset[C]); }
FLWCScalar LWCGetComponent(FLWCVector4 V, int C) { return MakeLWCScalar( (( V ).Tile)[C], V.Offset[C]); }
FLWCScalar LWCSwizzle(FLWCScalar V, int C0) { return V; }
FLWCScalar LWCSwizzle(FLWCVector2 V, int C0) { return LWCGetComponent(V, C0); }
FLWCScalar LWCSwizzle(FLWCVector3 V, int C0) { return LWCGetComponent(V, C0); }
FLWCScalar LWCSwizzle(FLWCVector4 V, int C0) { return LWCGetComponent(V, C0); }
FLWCVector2 LWCSwizzle(FLWCScalar V, int C0, int C1) { return MakeLWCVector(V, V); }
FLWCVector2 LWCSwizzle(FLWCVector2 V, int C0, int C1) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1)); }
FLWCVector2 LWCSwizzle(FLWCVector3 V, int C0, int C1) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1)); }
FLWCVector2 LWCSwizzle(FLWCVector4 V, int C0, int C1) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1)); }
FLWCVector3 LWCSwizzle(FLWCScalar V, int C0, int C1, int C2) { return MakeLWCVector(V, V, V); }
FLWCVector3 LWCSwizzle(FLWCVector2 V, int C0, int C1, int C2) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1), LWCGetComponent(V, C2)); }
FLWCVector3 LWCSwizzle(FLWCVector3 V, int C0, int C1, int C2) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1), LWCGetComponent(V, C2)); }
FLWCVector3 LWCSwizzle(FLWCVector4 V, int C0, int C1, int C2) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1), LWCGetComponent(V, C2)); }
FLWCVector4 LWCSwizzle(FLWCScalar V, int C0, int C1, int C2, int C3) { return MakeLWCVector(V, V, V, V); }
FLWCVector4 LWCSwizzle(FLWCVector2 V, int C0, int C1, int C2, int C3) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1), LWCGetComponent(V, C2), LWCGetComponent(V, C3)); }
FLWCVector4 LWCSwizzle(FLWCVector3 V, int C0, int C1, int C2, int C3) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1), LWCGetComponent(V, C2), LWCGetComponent(V, C3)); }
FLWCVector4 LWCSwizzle(FLWCVector4 V, int C0, int C1, int C2, int C3) { return MakeLWCVector(LWCGetComponent(V, C0), LWCGetComponent(V, C1), LWCGetComponent(V, C2), LWCGetComponent(V, C3)); }
float LWCToFloat(FLWCScalar Value)   { return LWCGetTileOffset(Value) + Value.Offset; }
float2 LWCToFloat(FLWCVector2 Value) { return LWCGetTileOffset(Value) + Value.Offset; }
float3 LWCToFloat(FLWCVector3 Value) { return LWCGetTileOffset(Value) + Value.Offset; }
float4 LWCToFloat(FLWCVector4 Value) { return LWCGetTileOffset(Value) + Value.Offset; }
float4x4 LWCToFloat(FLWCMatrix Value)
{
	float4x4 Result = Value.M;
	Result[3].xyz = LWCGetTileOffset(Value) + Result[3].xyz;
	return Result;
}
float4x4 LWCToFloat(FLWCInverseMatrix Value)
{
	float4x4 TileOffset = MakeTranslationMatrix(LWCGetTileOffset(Value));
	return mul(TileOffset, Value.M);
}
float3x3 LWCToFloat3x3(FLWCMatrix Value)
{
	return (float3x3)Value.M;
}
float3x3 LWCToFloat3x3(FLWCInverseMatrix Value)
{
	return (float3x3)Value.M;
}
float LWCToFloat(float Value) { return Value; }
float2 LWCToFloat(float2 Value) { return Value; }
float3 LWCToFloat(float3 Value) { return Value; }
float4 LWCToFloat(float4 Value) { return Value; }
float4x4 LWCToFloat(float4x4 Value) { return Value; }
FLWCScalar LWCPromote(FLWCScalar Value) { return Value; }
FLWCVector2 LWCPromote(FLWCVector2 Value) { return Value; }
FLWCVector3 LWCPromote(FLWCVector3 Value) { return Value; }
FLWCVector4 LWCPromote(FLWCVector4 Value) { return Value; }
FLWCMatrix LWCPromote(FLWCMatrix Value) { return Value; }
FLWCInverseMatrix LWCPromote(FLWCInverseMatrix Value) { return Value; }
FLWCScalar LWCPromote(float Value) { return MakeLWCScalar(0, Value); }
FLWCVector2 LWCPromote(float2 Value) { return MakeLWCVector2((float2)0, Value); }
FLWCVector3 LWCPromote(float3 Value) { return MakeLWCVector3((float3)0, Value); }
FLWCVector4 LWCPromote(float4 Value) { return MakeLWCVector4((float4)0, Value); }
FLWCMatrix LWCPromote(float4x4 Value) { return MakeLWCMatrix((float3)0, Value); }
FLWCInverseMatrix LWCPromoteInverse(float4x4 Value) { return MakeLWCInverseMatrix((float3)0, Value); }
FLWCVector3 LWCMultiply(float3 Position, FLWCMatrix InMatrix)
{
	float3 Offset = (Position.xxx * InMatrix.M[0].xyz + Position.yyy * InMatrix.M[1].xyz + Position.zzz * InMatrix.M[2].xyz) + InMatrix.M[3].xyz;
	return MakeLWCVector3( (( InMatrix ).Tile), Offset);
}
FLWCVector4 LWCMultiply(float4 Position, FLWCMatrix InMatrix)
{
	float4 Offset = mul(Position, InMatrix.M);
	return MakeLWCVector4( (( InMatrix ).Tile), Offset);
}
float3 LWCMultiply(FLWCVector3 Position, FLWCInverseMatrix InMatrix)
{
	float3 LocalPosition = LWCToFloat(MakeLWCVector3( (( Position ).Tile) +  (( InMatrix ).Tile), Position.Offset));
	return (LocalPosition.xxx * InMatrix.M[0].xyz + LocalPosition.yyy * InMatrix.M[1].xyz + LocalPosition.zzz * InMatrix.M[2].xyz) + InMatrix.M[3].xyz;
}
float4 LWCMultiply(FLWCVector4 Position, FLWCInverseMatrix InMatrix)
{
	float4 LocalPosition = LWCToFloat(MakeLWCVector4( (( Position ).Tile) + float4( (( InMatrix ).Tile), 0), Position.Offset));
	return mul(LocalPosition, InMatrix.M);
}
float3 LWCMultiplyVector(float3 Vector, FLWCMatrix InMatrix)
{
	return mul(Vector, (float3x3)InMatrix.M);
}
float3 LWCMultiplyVector(float3 Vector, FLWCInverseMatrix InMatrix)
{
	return mul(Vector, (float3x3)InMatrix.M);
}
FLWCMatrix LWCMultiply(float4x4 Lhs, FLWCMatrix Rhs)
{
	float4x4 ResultMatrix = mul(Lhs, Rhs.M);
	return MakeLWCMatrix( (( Rhs ).Tile), ResultMatrix);
}
FLWCInverseMatrix LWCMultiply(FLWCInverseMatrix Lhs, float4x4 Rhs)
{
	float4x4 ResultMatrix = mul(Lhs.M, Rhs);
	return MakeLWCInverseMatrix(- (( Lhs ).Tile), ResultMatrix);
}
float4x4 LWCMultiply(FLWCMatrix Lhs, FLWCInverseMatrix Rhs)
{
	float4x4 Result = Lhs.M;
	Result = mul(Result, MakeTranslationMatrix(( (( Lhs ).Tile) +  (( Rhs ).Tile)) * 2097152.00f));
	Result = mul(Result, Rhs.M);
	return Result;
}
float4x4 LWCMultiplyTranslation(FLWCMatrix Lhs, FLWCVector3 Rhs)
{
	float4x4 Result = Lhs.M;
	Result[3].xyz += ( (( Lhs ).Tile) +  (( Rhs ).Tile)) * 2097152.00f;
	Result[3].xyz += Rhs.Offset;
	return Result;
}
FLWCMatrix LWCMultiplyTranslation(float4x4 Lhs, FLWCVector3 Rhs)
{
	FLWCMatrix Result = MakeLWCMatrix( (( Rhs ).Tile), Lhs);
	Result.M[3].xyz += Rhs.Offset;
	return Result;
}
float4x4 LWCMultiplyTranslation(FLWCVector3 Lhs, FLWCInverseMatrix Rhs)
{
	float3 Offset = ( (( Lhs ).Tile) +  (( Rhs ).Tile)) * 2097152.00f + Lhs.Offset;
	return mul(MakeTranslationMatrix(Offset), Rhs.M);
}
FLWCInverseMatrix LWCMultiplyTranslation(FLWCVector3 Lhs, float4x4 Rhs)
{
	FLWCInverseMatrix Result = MakeLWCInverseMatrix(- (( Lhs ).Tile), Rhs);
	Result.M = mul(MakeTranslationMatrix(Lhs.Offset), Result.M);
	return Result;
}
FLWCVector3 LWCGetOrigin(FLWCMatrix InMatrix)
{
	return MakeLWCVector3( (( InMatrix ).Tile), InMatrix.M[3].xyz);
}
void LWCSetOrigin(inout FLWCMatrix InOutMatrix, FLWCVector3 Origin)
{
	 ( InOutMatrix ).Tile = (  (( Origin ).Tile) );
	InOutMatrix.M[3].xyz = Origin.Offset;
}
FLWCScalar LWCNormalizeTile(FLWCScalar V)
{
	float IntTile = floor(V.Tile + (V.Offset * 4.76837158e-07f + 0.5f));
	return MakeLWCScalar(IntTile, (V.Tile - IntTile) * 2097152.00f + V.Offset);
}
FLWCScalar LWCMakeIntTile(FLWCScalar V)
{
	float IntTile = floor(V.Tile);
	return MakeLWCScalar(IntTile, (V.Tile - IntTile) * 2097152.00f + V.Offset);
}
float LWCSqrtUnscaled(FLWCScalar V) { return sqrt(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float LWCRsqrtUnscaled(FLWCScalar V) { return rsqrt(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float LWCRcpUnscaled(FLWCScalar V) { return rcp(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float LWCSqrtScaled(FLWCScalar V, float Scale) { return LWCSqrtUnscaled(V) * Scale; }
float LWCRsqrtScaled(FLWCScalar V, float Scale) { return LWCRsqrtUnscaled(V) * Scale; }
float LWCRcpScaled(FLWCScalar V, float Scale) { return LWCRcpUnscaled(V) * Scale; }
float LWCSqrt(FLWCScalar V) { return LWCSqrtScaled(V, 1448.15466f); }
float LWCRsqrt(FLWCScalar V) { return LWCRsqrtScaled(V, 0.000690533954f); }
float LWCRcp(FLWCScalar V) { return LWCRcpScaled(V, 4.76837158e-07f); }
  bool  LWCGreater ( FLWCScalar Lhs, FLWCScalar Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f > Rhs.Offset - Lhs.Offset; } bool  LWCGreater ( float Lhs, FLWCScalar Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f > Rhs.Offset - Lhs; } bool  LWCGreater ( FLWCScalar Lhs, float Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f > Rhs - Lhs.Offset; }
  bool  LWCGreaterEqual ( FLWCScalar Lhs, FLWCScalar Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f >= Rhs.Offset - Lhs.Offset; } bool  LWCGreaterEqual ( float Lhs, FLWCScalar Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f >= Rhs.Offset - Lhs; } bool  LWCGreaterEqual ( FLWCScalar Lhs, float Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f >= Rhs - Lhs.Offset; }
  bool  LWCLess ( FLWCScalar Lhs, FLWCScalar Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f < Rhs.Offset - Lhs.Offset; } bool  LWCLess ( float Lhs, FLWCScalar Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f < Rhs.Offset - Lhs; } bool  LWCLess ( FLWCScalar Lhs, float Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f < Rhs - Lhs.Offset; }
  bool  LWCLessEqual ( FLWCScalar Lhs, FLWCScalar Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f <= Rhs.Offset - Lhs.Offset; } bool  LWCLessEqual ( float Lhs, FLWCScalar Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f <= Rhs.Offset - Lhs; } bool  LWCLessEqual ( FLWCScalar Lhs, float Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f <= Rhs - Lhs.Offset; }
float LWCDdx(FLWCScalar V) { return ddx( (( V ).Tile)) * 2097152.00f + ddx(V.Offset); }
float LWCDdy(FLWCScalar V) { return ddy( (( V ).Tile)) * 2097152.00f + ddy(V.Offset); }
FLWCScalar LWCAdd(FLWCScalar Lhs, FLWCScalar Rhs) { return MakeLWCScalar( (( Lhs ).Tile) +  (( Rhs ).Tile), Lhs.Offset + Rhs.Offset); }
FLWCScalar LWCAdd(float Lhs, FLWCScalar Rhs) { return MakeLWCScalar( (( Rhs ).Tile), Lhs + Rhs.Offset); }
FLWCScalar LWCAdd(FLWCScalar Lhs, float Rhs) { return MakeLWCScalar( (( Lhs ).Tile), Lhs.Offset + Rhs); }
FLWCScalar LWCSubtract(FLWCScalar Lhs, FLWCScalar Rhs) { return MakeLWCScalar( (( Lhs ).Tile) -  (( Rhs ).Tile), Lhs.Offset - Rhs.Offset); }
FLWCScalar LWCSubtract(float Lhs, FLWCScalar Rhs) { return MakeLWCScalar(- (( Rhs ).Tile), Lhs - Rhs.Offset); }
FLWCScalar LWCSubtract(FLWCScalar Lhs, float Rhs) { return MakeLWCScalar( (( Lhs ).Tile), Lhs.Offset - Rhs); }
bool LWCEquals(FLWCScalar Lhs, FLWCScalar Rhs)
{
	return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f == Rhs.Offset - Lhs.Offset;
}
bool LWCEquals(float Lhs, FLWCScalar Rhs)
{
	return - (( Rhs ).Tile) * 2097152.00f == Rhs.Offset - Lhs;
} 
bool LWCEquals(FLWCScalar Lhs, float Rhs)
{
	return  (( Lhs ).Tile) * 2097152.00f == Rhs - Lhs.Offset;
}
bool LWCEqualsApprox(FLWCScalar Lhs, FLWCScalar Rhs, float Threshold)
{
	return abs(( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f + (Lhs.Offset - Rhs.Offset)) < (float)Threshold;
}
bool LWCEqualsApprox(float Lhs, FLWCScalar Rhs, float Threshold)
{
	return abs(- (( Rhs ).Tile) * 2097152.00f + (Lhs - Rhs.Offset)) < (float)Threshold;
}
bool LWCEqualsApprox(FLWCScalar Lhs, float Rhs, float Threshold)
{
	return abs( (( Lhs ).Tile) * 2097152.00f + (Lhs.Offset - Rhs)) < (float)Threshold;
}
FLWCScalar LWCSelect(bool S, FLWCScalar Lhs, FLWCScalar Rhs) { return MakeLWCScalar( select_internal( S ,  (( Lhs ).Tile) ,  (( Rhs ).Tile) ),  select_internal( S , Lhs.Offset , Rhs.Offset )); }
FLWCScalar LWCSelect(bool S, float Lhs, FLWCScalar Rhs) { return MakeLWCScalar( select_internal( S , (float)0 ,  (( Rhs ).Tile) ),  select_internal( S , Lhs , Rhs.Offset )); }
FLWCScalar LWCSelect(bool S, FLWCScalar Lhs, float Rhs) { return MakeLWCScalar( select_internal( S ,  (( Lhs ).Tile) , (float)0 ),  select_internal( S , Lhs.Offset , Rhs )); }
FLWCScalar LWCNegate(FLWCScalar V) { return MakeLWCScalar(- (( V ).Tile), -V.Offset); }
float LWCFrac(FLWCScalar V)
{
	float FracTile = frac( (( V ).Tile) * 2097152.00f);
	return frac(FracTile + V.Offset);
}
FLWCScalar LWCFloor(FLWCScalar V) { FLWCScalar VN = LWCMakeIntTile(V); return MakeLWCScalar( (( VN ).Tile), floor(VN.Offset)); }
FLWCScalar LWCCeil(FLWCScalar V) { FLWCScalar VN = LWCMakeIntTile(V); return MakeLWCScalar( (( VN ).Tile), ceil(VN.Offset)); }
FLWCScalar LWCRound(FLWCScalar V) { FLWCScalar VN = LWCMakeIntTile(V); return MakeLWCScalar( (( VN ).Tile), round(VN.Offset)); }
FLWCScalar LWCTrunc(FLWCScalar V) { FLWCScalar VN = LWCMakeIntTile(V); return MakeLWCScalar( (( VN ).Tile), trunc(VN.Offset)); }
float LWCSign(FLWCScalar V) { return float(sign(LWCToFloat(V))); }
float LWCSaturate(FLWCScalar V) { return saturate(LWCToFloat(V)); }
float LWCClampScalar(FLWCScalar V, float Low, float High) { return clamp(LWCToFloat(V), Low, High); }
FLWCScalar LWCMultiply(FLWCScalar Lhs, FLWCScalar Rhs)
{
	return MakeLWCScalar( (( Lhs ).Tile) * ( (( Rhs ).Tile) * 2097152.00f + Rhs.Offset) +  (( Rhs ).Tile) * Lhs.Offset, Lhs.Offset * Rhs.Offset);
}
FLWCScalar LWCMultiply(float Lhs, FLWCScalar Rhs) { return MakeLWCScalar( (( Rhs ).Tile) * Lhs, Lhs * Rhs.Offset); }
FLWCScalar LWCMultiply(FLWCScalar Lhs, float Rhs) { return MakeLWCScalar( (( Lhs ).Tile) * Rhs, Lhs.Offset * Rhs); }
FLWCScalar LWCDivide(FLWCScalar Lhs, FLWCScalar Rhs) { return LWCMultiply(Lhs, LWCRcp(Rhs)); }
FLWCScalar LWCDivide(FLWCScalar Lhs, float Rhs) { return LWCMultiply(Lhs, rcp(Rhs)); }
FLWCScalar LWCDivide(float Lhs, FLWCScalar Rhs) { return MakeLWCScalar((float)0, Lhs * LWCRcp(Rhs)); }
FLWCScalar LWCLerp(FLWCScalar Lhs, FLWCScalar Rhs, float S)
{
	return MakeLWCScalar(lerp( (( Lhs ).Tile),  (( Rhs ).Tile), S), lerp(Lhs.Offset, Rhs.Offset, S));
}
float LWCModulo(FLWCScalar Lhs, float Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCTrunc(LWCDivide(Lhs, Rhs)), Rhs)));
}
float LWCFmod(FLWCScalar Lhs, float Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCTrunc(LWCDivide(Lhs, Rhs)), Rhs)));
}
float LWCFmodFloor(FLWCScalar Lhs, float Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCFloor(LWCDivide(Lhs, Rhs)), Rhs)));
}
float LWCFmodFloorPI(FLWCScalar V)
{
	return LWCFmodFloor(V, PI);
}
float LWCFmodFloor2PI(FLWCScalar V)
{
	return LWCFmodFloor(V, 2.0f * PI);
}
float LWCSin(FLWCScalar V) { return sin(LWCFmodFloor2PI(V)); }
float LWCCos(FLWCScalar V) { return cos(LWCFmodFloor2PI(V)); }
float LWCTan(FLWCScalar V) { return tan(LWCFmodFloorPI(V)); }
float LWCASin(FLWCScalar V) { return asin(LWCClampScalar(V, -1.0f, 1.0f)); }
float LWCACos(FLWCScalar V) { return acos(LWCClampScalar(V, -1.0f, 1.0f)); }
float LWCATan(FLWCScalar V) { return atan(LWCClampScalar(V, -0.5f*PI, 0.5f*PI)); }
float LWCSmoothStep(FLWCScalar Lhs, FLWCScalar Rhs, FLWCScalar S)
{
	float t = LWCSaturate(LWCDivide(LWCSubtract(S, Lhs), LWCSubtract(Rhs, Lhs)));
	return t*t*(3.0f - (2.0f*t));
}
FLWCScalar LWCMin(FLWCScalar Lhs, FLWCScalar Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCScalar LWCMin(float Lhs, FLWCScalar Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCScalar LWCMin(FLWCScalar Lhs, float Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCScalar LWCMax(FLWCScalar Lhs, FLWCScalar Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCScalar LWCMax(float Lhs, FLWCScalar Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCScalar LWCMax(FLWCScalar Lhs, float Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCScalar LWCAbs(FLWCScalar V) { return LWCSelect(LWCLess(V, (float)0), LWCNegate(V), V); }
float LWCStep(FLWCScalar Lhs, FLWCScalar Rhs)   { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float)1.0f , (float)0.0f ); }
float LWCStep(FLWCScalar Lhs, float Rhs) { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float)1.0f , (float)0.0f ); }
float LWCStep(float Lhs, FLWCScalar Rhs) { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float)1.0f , (float)0.0f ); }
FLWCScalar LWCSquareScaled(FLWCScalar V)
{
	float OffsetScaled = V.Offset * 4.76837158e-07f;
	return MakeLWCScalar( (( V ).Tile) * ( (( V ).Tile) + OffsetScaled * 2.0f), V.Offset * OffsetScaled);
}
FLWCVector2 LWCNormalizeTile(FLWCVector2 V)
{
	float2 IntTile = floor(V.Tile + (V.Offset * 4.76837158e-07f + 0.5f));
	return MakeLWCVector2(IntTile, (V.Tile - IntTile) * 2097152.00f + V.Offset);
}
FLWCVector2 LWCMakeIntTile(FLWCVector2 V)
{
	float2 IntTile = floor(V.Tile);
	return MakeLWCVector2(IntTile, (V.Tile - IntTile) * 2097152.00f + V.Offset);
}
float2 LWCSqrtUnscaled(FLWCVector2 V) { return sqrt(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float2 LWCRsqrtUnscaled(FLWCVector2 V) { return rsqrt(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float2 LWCRcpUnscaled(FLWCVector2 V) { return rcp(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float2 LWCSqrtScaled(FLWCVector2 V, float Scale) { return LWCSqrtUnscaled(V) * Scale; }
float2 LWCRsqrtScaled(FLWCVector2 V, float Scale) { return LWCRsqrtUnscaled(V) * Scale; }
float2 LWCRcpScaled(FLWCVector2 V, float Scale) { return LWCRcpUnscaled(V) * Scale; }
float2 LWCSqrt(FLWCVector2 V) { return LWCSqrtScaled(V, 1448.15466f); }
float2 LWCRsqrt(FLWCVector2 V) { return LWCRsqrtScaled(V, 0.000690533954f); }
float2 LWCRcp(FLWCVector2 V) { return LWCRcpScaled(V, 4.76837158e-07f); }
  bool2  LWCGreater ( FLWCVector2 Lhs, FLWCVector2 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f > Rhs.Offset - Lhs.Offset; } bool2  LWCGreater ( float2 Lhs, FLWCVector2 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f > Rhs.Offset - Lhs; } bool2  LWCGreater ( FLWCVector2 Lhs, float2 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f > Rhs - Lhs.Offset; }
  bool2  LWCGreaterEqual ( FLWCVector2 Lhs, FLWCVector2 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f >= Rhs.Offset - Lhs.Offset; } bool2  LWCGreaterEqual ( float2 Lhs, FLWCVector2 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f >= Rhs.Offset - Lhs; } bool2  LWCGreaterEqual ( FLWCVector2 Lhs, float2 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f >= Rhs - Lhs.Offset; }
  bool2  LWCLess ( FLWCVector2 Lhs, FLWCVector2 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f < Rhs.Offset - Lhs.Offset; } bool2  LWCLess ( float2 Lhs, FLWCVector2 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f < Rhs.Offset - Lhs; } bool2  LWCLess ( FLWCVector2 Lhs, float2 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f < Rhs - Lhs.Offset; }
  bool2  LWCLessEqual ( FLWCVector2 Lhs, FLWCVector2 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f <= Rhs.Offset - Lhs.Offset; } bool2  LWCLessEqual ( float2 Lhs, FLWCVector2 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f <= Rhs.Offset - Lhs; } bool2  LWCLessEqual ( FLWCVector2 Lhs, float2 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f <= Rhs - Lhs.Offset; }
float2 LWCDdx(FLWCVector2 V) { return ddx( (( V ).Tile)) * 2097152.00f + ddx(V.Offset); }
float2 LWCDdy(FLWCVector2 V) { return ddy( (( V ).Tile)) * 2097152.00f + ddy(V.Offset); }
FLWCVector2 LWCAdd(FLWCVector2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2( (( Lhs ).Tile) +  (( Rhs ).Tile), Lhs.Offset + Rhs.Offset); }
FLWCVector2 LWCAdd(float2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2( (( Rhs ).Tile), Lhs + Rhs.Offset); }
FLWCVector2 LWCAdd(FLWCVector2 Lhs, float2 Rhs) { return MakeLWCVector2( (( Lhs ).Tile), Lhs.Offset + Rhs); }
FLWCVector2 LWCSubtract(FLWCVector2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2( (( Lhs ).Tile) -  (( Rhs ).Tile), Lhs.Offset - Rhs.Offset); }
FLWCVector2 LWCSubtract(float2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2(- (( Rhs ).Tile), Lhs - Rhs.Offset); }
FLWCVector2 LWCSubtract(FLWCVector2 Lhs, float2 Rhs) { return MakeLWCVector2( (( Lhs ).Tile), Lhs.Offset - Rhs); }
bool2 LWCEquals(FLWCVector2 Lhs, FLWCVector2 Rhs)
{
	return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f == Rhs.Offset - Lhs.Offset;
}
bool2 LWCEquals(float2 Lhs, FLWCVector2 Rhs)
{
	return - (( Rhs ).Tile) * 2097152.00f == Rhs.Offset - Lhs;
} 
bool2 LWCEquals(FLWCVector2 Lhs, float2 Rhs)
{
	return  (( Lhs ).Tile) * 2097152.00f == Rhs - Lhs.Offset;
}
bool2 LWCEqualsApprox(FLWCVector2 Lhs, FLWCVector2 Rhs, float Threshold)
{
	return abs(( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f + (Lhs.Offset - Rhs.Offset)) < (float2)Threshold;
}
bool2 LWCEqualsApprox(float2 Lhs, FLWCVector2 Rhs, float Threshold)
{
	return abs(- (( Rhs ).Tile) * 2097152.00f + (Lhs - Rhs.Offset)) < (float2)Threshold;
}
bool2 LWCEqualsApprox(FLWCVector2 Lhs, float2 Rhs, float Threshold)
{
	return abs( (( Lhs ).Tile) * 2097152.00f + (Lhs.Offset - Rhs)) < (float2)Threshold;
}
FLWCVector2 LWCSelect(bool2 S, FLWCVector2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2( select_internal( S ,  (( Lhs ).Tile) ,  (( Rhs ).Tile) ),  select_internal( S , Lhs.Offset , Rhs.Offset )); }
FLWCVector2 LWCSelect(bool2 S, float2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2( select_internal( S , (float2)0 ,  (( Rhs ).Tile) ),  select_internal( S , Lhs , Rhs.Offset )); }
FLWCVector2 LWCSelect(bool2 S, FLWCVector2 Lhs, float2 Rhs) { return MakeLWCVector2( select_internal( S ,  (( Lhs ).Tile) , (float2)0 ),  select_internal( S , Lhs.Offset , Rhs )); }
FLWCVector2 LWCNegate(FLWCVector2 V) { return MakeLWCVector2(- (( V ).Tile), -V.Offset); }
float2 LWCFrac(FLWCVector2 V)
{
	float2 FracTile = frac( (( V ).Tile) * 2097152.00f);
	return frac(FracTile + V.Offset);
}
FLWCVector2 LWCFloor(FLWCVector2 V) { FLWCVector2 VN = LWCMakeIntTile(V); return MakeLWCVector2( (( VN ).Tile), floor(VN.Offset)); }
FLWCVector2 LWCCeil(FLWCVector2 V) { FLWCVector2 VN = LWCMakeIntTile(V); return MakeLWCVector2( (( VN ).Tile), ceil(VN.Offset)); }
FLWCVector2 LWCRound(FLWCVector2 V) { FLWCVector2 VN = LWCMakeIntTile(V); return MakeLWCVector2( (( VN ).Tile), round(VN.Offset)); }
FLWCVector2 LWCTrunc(FLWCVector2 V) { FLWCVector2 VN = LWCMakeIntTile(V); return MakeLWCVector2( (( VN ).Tile), trunc(VN.Offset)); }
float2 LWCSign(FLWCVector2 V) { return float2(sign(LWCToFloat(V))); }
float2 LWCSaturate(FLWCVector2 V) { return saturate(LWCToFloat(V)); }
float2 LWCClampScalar(FLWCVector2 V, float Low, float High) { return clamp(LWCToFloat(V), Low, High); }
FLWCVector2 LWCMultiply(FLWCVector2 Lhs, FLWCVector2 Rhs)
{
	return MakeLWCVector2( (( Lhs ).Tile) * ( (( Rhs ).Tile) * 2097152.00f + Rhs.Offset) +  (( Rhs ).Tile) * Lhs.Offset, Lhs.Offset * Rhs.Offset);
}
FLWCVector2 LWCMultiply(float2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2( (( Rhs ).Tile) * Lhs, Lhs * Rhs.Offset); }
FLWCVector2 LWCMultiply(FLWCVector2 Lhs, float2 Rhs) { return MakeLWCVector2( (( Lhs ).Tile) * Rhs, Lhs.Offset * Rhs); }
FLWCVector2 LWCDivide(FLWCVector2 Lhs, FLWCVector2 Rhs) { return LWCMultiply(Lhs, LWCRcp(Rhs)); }
FLWCVector2 LWCDivide(FLWCVector2 Lhs, float2 Rhs) { return LWCMultiply(Lhs, rcp(Rhs)); }
FLWCVector2 LWCDivide(float2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2((float2)0, Lhs * LWCRcp(Rhs)); }
FLWCVector2 LWCLerp(FLWCVector2 Lhs, FLWCVector2 Rhs, float2 S)
{
	return MakeLWCVector2(lerp( (( Lhs ).Tile),  (( Rhs ).Tile), S), lerp(Lhs.Offset, Rhs.Offset, S));
}
float2 LWCModulo(FLWCVector2 Lhs, float2 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCTrunc(LWCDivide(Lhs, Rhs)), Rhs)));
}
float2 LWCFmod(FLWCVector2 Lhs, float2 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCTrunc(LWCDivide(Lhs, Rhs)), Rhs)));
}
float2 LWCFmodFloor(FLWCVector2 Lhs, float2 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCFloor(LWCDivide(Lhs, Rhs)), Rhs)));
}
float2 LWCFmodFloorPI(FLWCVector2 V)
{
	return LWCFmodFloor(V, PI);
}
float2 LWCFmodFloor2PI(FLWCVector2 V)
{
	return LWCFmodFloor(V, 2.0f * PI);
}
float2 LWCSin(FLWCVector2 V) { return sin(LWCFmodFloor2PI(V)); }
float2 LWCCos(FLWCVector2 V) { return cos(LWCFmodFloor2PI(V)); }
float2 LWCTan(FLWCVector2 V) { return tan(LWCFmodFloorPI(V)); }
float2 LWCASin(FLWCVector2 V) { return asin(LWCClampScalar(V, -1.0f, 1.0f)); }
float2 LWCACos(FLWCVector2 V) { return acos(LWCClampScalar(V, -1.0f, 1.0f)); }
float2 LWCATan(FLWCVector2 V) { return atan(LWCClampScalar(V, -0.5f*PI, 0.5f*PI)); }
float2 LWCSmoothStep(FLWCVector2 Lhs, FLWCVector2 Rhs, FLWCVector2 S)
{
	float2 t = LWCSaturate(LWCDivide(LWCSubtract(S, Lhs), LWCSubtract(Rhs, Lhs)));
	return t*t*(3.0f - (2.0f*t));
}
FLWCVector2 LWCMin(FLWCVector2 Lhs, FLWCVector2 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector2 LWCMin(float2 Lhs, FLWCVector2 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector2 LWCMin(FLWCVector2 Lhs, float2 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector2 LWCMax(FLWCVector2 Lhs, FLWCVector2 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector2 LWCMax(float2 Lhs, FLWCVector2 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector2 LWCMax(FLWCVector2 Lhs, float2 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector2 LWCAbs(FLWCVector2 V) { return LWCSelect(LWCLess(V, (float2)0), LWCNegate(V), V); }
float2 LWCStep(FLWCVector2 Lhs, FLWCVector2 Rhs)   { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float2)1.0f , (float2)0.0f ); }
float2 LWCStep(FLWCVector2 Lhs, float2 Rhs) { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float2)1.0f , (float2)0.0f ); }
float2 LWCStep(float2 Lhs, FLWCVector2 Rhs) { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float2)1.0f , (float2)0.0f ); }
FLWCVector2 LWCSquareScaled(FLWCVector2 V)
{
	float2 OffsetScaled = V.Offset * 4.76837158e-07f;
	return MakeLWCVector2( (( V ).Tile) * ( (( V ).Tile) + OffsetScaled * 2.0f), V.Offset * OffsetScaled);
}
FLWCVector3 LWCNormalizeTile(FLWCVector3 V)
{
	float3 IntTile = floor(V.Tile + (V.Offset * 4.76837158e-07f + 0.5f));
	return MakeLWCVector3(IntTile, (V.Tile - IntTile) * 2097152.00f + V.Offset);
}
FLWCVector3 LWCMakeIntTile(FLWCVector3 V)
{
	float3 IntTile = floor(V.Tile);
	return MakeLWCVector3(IntTile, (V.Tile - IntTile) * 2097152.00f + V.Offset);
}
float3 LWCSqrtUnscaled(FLWCVector3 V) { return sqrt(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float3 LWCRsqrtUnscaled(FLWCVector3 V) { return rsqrt(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float3 LWCRcpUnscaled(FLWCVector3 V) { return rcp(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float3 LWCSqrtScaled(FLWCVector3 V, float Scale) { return LWCSqrtUnscaled(V) * Scale; }
float3 LWCRsqrtScaled(FLWCVector3 V, float Scale) { return LWCRsqrtUnscaled(V) * Scale; }
float3 LWCRcpScaled(FLWCVector3 V, float Scale) { return LWCRcpUnscaled(V) * Scale; }
float3 LWCSqrt(FLWCVector3 V) { return LWCSqrtScaled(V, 1448.15466f); }
float3 LWCRsqrt(FLWCVector3 V) { return LWCRsqrtScaled(V, 0.000690533954f); }
float3 LWCRcp(FLWCVector3 V) { return LWCRcpScaled(V, 4.76837158e-07f); }
  bool3  LWCGreater ( FLWCVector3 Lhs, FLWCVector3 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f > Rhs.Offset - Lhs.Offset; } bool3  LWCGreater ( float3 Lhs, FLWCVector3 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f > Rhs.Offset - Lhs; } bool3  LWCGreater ( FLWCVector3 Lhs, float3 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f > Rhs - Lhs.Offset; }
  bool3  LWCGreaterEqual ( FLWCVector3 Lhs, FLWCVector3 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f >= Rhs.Offset - Lhs.Offset; } bool3  LWCGreaterEqual ( float3 Lhs, FLWCVector3 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f >= Rhs.Offset - Lhs; } bool3  LWCGreaterEqual ( FLWCVector3 Lhs, float3 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f >= Rhs - Lhs.Offset; }
  bool3  LWCLess ( FLWCVector3 Lhs, FLWCVector3 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f < Rhs.Offset - Lhs.Offset; } bool3  LWCLess ( float3 Lhs, FLWCVector3 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f < Rhs.Offset - Lhs; } bool3  LWCLess ( FLWCVector3 Lhs, float3 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f < Rhs - Lhs.Offset; }
  bool3  LWCLessEqual ( FLWCVector3 Lhs, FLWCVector3 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f <= Rhs.Offset - Lhs.Offset; } bool3  LWCLessEqual ( float3 Lhs, FLWCVector3 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f <= Rhs.Offset - Lhs; } bool3  LWCLessEqual ( FLWCVector3 Lhs, float3 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f <= Rhs - Lhs.Offset; }
float3 LWCDdx(FLWCVector3 V) { return ddx( (( V ).Tile)) * 2097152.00f + ddx(V.Offset); }
float3 LWCDdy(FLWCVector3 V) { return ddy( (( V ).Tile)) * 2097152.00f + ddy(V.Offset); }
FLWCVector3 LWCAdd(FLWCVector3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3( (( Lhs ).Tile) +  (( Rhs ).Tile), Lhs.Offset + Rhs.Offset); }
FLWCVector3 LWCAdd(float3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3( (( Rhs ).Tile), Lhs + Rhs.Offset); }
FLWCVector3 LWCAdd(FLWCVector3 Lhs, float3 Rhs) { return MakeLWCVector3( (( Lhs ).Tile), Lhs.Offset + Rhs); }
FLWCVector3 LWCSubtract(FLWCVector3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3( (( Lhs ).Tile) -  (( Rhs ).Tile), Lhs.Offset - Rhs.Offset); }
FLWCVector3 LWCSubtract(float3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3(- (( Rhs ).Tile), Lhs - Rhs.Offset); }
FLWCVector3 LWCSubtract(FLWCVector3 Lhs, float3 Rhs) { return MakeLWCVector3( (( Lhs ).Tile), Lhs.Offset - Rhs); }
bool3 LWCEquals(FLWCVector3 Lhs, FLWCVector3 Rhs)
{
	return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f == Rhs.Offset - Lhs.Offset;
}
bool3 LWCEquals(float3 Lhs, FLWCVector3 Rhs)
{
	return - (( Rhs ).Tile) * 2097152.00f == Rhs.Offset - Lhs;
} 
bool3 LWCEquals(FLWCVector3 Lhs, float3 Rhs)
{
	return  (( Lhs ).Tile) * 2097152.00f == Rhs - Lhs.Offset;
}
bool3 LWCEqualsApprox(FLWCVector3 Lhs, FLWCVector3 Rhs, float Threshold)
{
	return abs(( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f + (Lhs.Offset - Rhs.Offset)) < (float3)Threshold;
}
bool3 LWCEqualsApprox(float3 Lhs, FLWCVector3 Rhs, float Threshold)
{
	return abs(- (( Rhs ).Tile) * 2097152.00f + (Lhs - Rhs.Offset)) < (float3)Threshold;
}
bool3 LWCEqualsApprox(FLWCVector3 Lhs, float3 Rhs, float Threshold)
{
	return abs( (( Lhs ).Tile) * 2097152.00f + (Lhs.Offset - Rhs)) < (float3)Threshold;
}
FLWCVector3 LWCSelect(bool3 S, FLWCVector3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3( select_internal( S ,  (( Lhs ).Tile) ,  (( Rhs ).Tile) ),  select_internal( S , Lhs.Offset , Rhs.Offset )); }
FLWCVector3 LWCSelect(bool3 S, float3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3( select_internal( S , (float3)0 ,  (( Rhs ).Tile) ),  select_internal( S , Lhs , Rhs.Offset )); }
FLWCVector3 LWCSelect(bool3 S, FLWCVector3 Lhs, float3 Rhs) { return MakeLWCVector3( select_internal( S ,  (( Lhs ).Tile) , (float3)0 ),  select_internal( S , Lhs.Offset , Rhs )); }
FLWCVector3 LWCNegate(FLWCVector3 V) { return MakeLWCVector3(- (( V ).Tile), -V.Offset); }
float3 LWCFrac(FLWCVector3 V)
{
	float3 FracTile = frac( (( V ).Tile) * 2097152.00f);
	return frac(FracTile + V.Offset);
}
FLWCVector3 LWCFloor(FLWCVector3 V) { FLWCVector3 VN = LWCMakeIntTile(V); return MakeLWCVector3( (( VN ).Tile), floor(VN.Offset)); }
FLWCVector3 LWCCeil(FLWCVector3 V) { FLWCVector3 VN = LWCMakeIntTile(V); return MakeLWCVector3( (( VN ).Tile), ceil(VN.Offset)); }
FLWCVector3 LWCRound(FLWCVector3 V) { FLWCVector3 VN = LWCMakeIntTile(V); return MakeLWCVector3( (( VN ).Tile), round(VN.Offset)); }
FLWCVector3 LWCTrunc(FLWCVector3 V) { FLWCVector3 VN = LWCMakeIntTile(V); return MakeLWCVector3( (( VN ).Tile), trunc(VN.Offset)); }
float3 LWCSign(FLWCVector3 V) { return float3(sign(LWCToFloat(V))); }
float3 LWCSaturate(FLWCVector3 V) { return saturate(LWCToFloat(V)); }
float3 LWCClampScalar(FLWCVector3 V, float Low, float High) { return clamp(LWCToFloat(V), Low, High); }
FLWCVector3 LWCMultiply(FLWCVector3 Lhs, FLWCVector3 Rhs)
{
	return MakeLWCVector3( (( Lhs ).Tile) * ( (( Rhs ).Tile) * 2097152.00f + Rhs.Offset) +  (( Rhs ).Tile) * Lhs.Offset, Lhs.Offset * Rhs.Offset);
}
FLWCVector3 LWCMultiply(float3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3( (( Rhs ).Tile) * Lhs, Lhs * Rhs.Offset); }
FLWCVector3 LWCMultiply(FLWCVector3 Lhs, float3 Rhs) { return MakeLWCVector3( (( Lhs ).Tile) * Rhs, Lhs.Offset * Rhs); }
FLWCVector3 LWCDivide(FLWCVector3 Lhs, FLWCVector3 Rhs) { return LWCMultiply(Lhs, LWCRcp(Rhs)); }
FLWCVector3 LWCDivide(FLWCVector3 Lhs, float3 Rhs) { return LWCMultiply(Lhs, rcp(Rhs)); }
FLWCVector3 LWCDivide(float3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3((float3)0, Lhs * LWCRcp(Rhs)); }
FLWCVector3 LWCLerp(FLWCVector3 Lhs, FLWCVector3 Rhs, float3 S)
{
	return MakeLWCVector3(lerp( (( Lhs ).Tile),  (( Rhs ).Tile), S), lerp(Lhs.Offset, Rhs.Offset, S));
}
float3 LWCModulo(FLWCVector3 Lhs, float3 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCTrunc(LWCDivide(Lhs, Rhs)), Rhs)));
}
float3 LWCFmod(FLWCVector3 Lhs, float3 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCTrunc(LWCDivide(Lhs, Rhs)), Rhs)));
}
float3 LWCFmodFloor(FLWCVector3 Lhs, float3 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCFloor(LWCDivide(Lhs, Rhs)), Rhs)));
}
float3 LWCFmodFloorPI(FLWCVector3 V)
{
	return LWCFmodFloor(V, PI);
}
float3 LWCFmodFloor2PI(FLWCVector3 V)
{
	return LWCFmodFloor(V, 2.0f * PI);
}
float3 LWCSin(FLWCVector3 V) { return sin(LWCFmodFloor2PI(V)); }
float3 LWCCos(FLWCVector3 V) { return cos(LWCFmodFloor2PI(V)); }
float3 LWCTan(FLWCVector3 V) { return tan(LWCFmodFloorPI(V)); }
float3 LWCASin(FLWCVector3 V) { return asin(LWCClampScalar(V, -1.0f, 1.0f)); }
float3 LWCACos(FLWCVector3 V) { return acos(LWCClampScalar(V, -1.0f, 1.0f)); }
float3 LWCATan(FLWCVector3 V) { return atan(LWCClampScalar(V, -0.5f*PI, 0.5f*PI)); }
float3 LWCSmoothStep(FLWCVector3 Lhs, FLWCVector3 Rhs, FLWCVector3 S)
{
	float3 t = LWCSaturate(LWCDivide(LWCSubtract(S, Lhs), LWCSubtract(Rhs, Lhs)));
	return t*t*(3.0f - (2.0f*t));
}
FLWCVector3 LWCMin(FLWCVector3 Lhs, FLWCVector3 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector3 LWCMin(float3 Lhs, FLWCVector3 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector3 LWCMin(FLWCVector3 Lhs, float3 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector3 LWCMax(FLWCVector3 Lhs, FLWCVector3 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector3 LWCMax(float3 Lhs, FLWCVector3 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector3 LWCMax(FLWCVector3 Lhs, float3 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector3 LWCAbs(FLWCVector3 V) { return LWCSelect(LWCLess(V, (float3)0), LWCNegate(V), V); }
float3 LWCStep(FLWCVector3 Lhs, FLWCVector3 Rhs)   { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float3)1.0f , (float3)0.0f ); }
float3 LWCStep(FLWCVector3 Lhs, float3 Rhs) { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float3)1.0f , (float3)0.0f ); }
float3 LWCStep(float3 Lhs, FLWCVector3 Rhs) { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float3)1.0f , (float3)0.0f ); }
FLWCVector3 LWCSquareScaled(FLWCVector3 V)
{
	float3 OffsetScaled = V.Offset * 4.76837158e-07f;
	return MakeLWCVector3( (( V ).Tile) * ( (( V ).Tile) + OffsetScaled * 2.0f), V.Offset * OffsetScaled);
}
FLWCVector4 LWCNormalizeTile(FLWCVector4 V)
{
	float4 IntTile = floor(V.Tile + (V.Offset * 4.76837158e-07f + 0.5f));
	return MakeLWCVector4(IntTile, (V.Tile - IntTile) * 2097152.00f + V.Offset);
}
FLWCVector4 LWCMakeIntTile(FLWCVector4 V)
{
	float4 IntTile = floor(V.Tile);
	return MakeLWCVector4(IntTile, (V.Tile - IntTile) * 2097152.00f + V.Offset);
}
float4 LWCSqrtUnscaled(FLWCVector4 V) { return sqrt(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float4 LWCRsqrtUnscaled(FLWCVector4 V) { return rsqrt(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float4 LWCRcpUnscaled(FLWCVector4 V) { return rcp(V.Offset * 4.76837158e-07f +  (( V ).Tile)); }
float4 LWCSqrtScaled(FLWCVector4 V, float Scale) { return LWCSqrtUnscaled(V) * Scale; }
float4 LWCRsqrtScaled(FLWCVector4 V, float Scale) { return LWCRsqrtUnscaled(V) * Scale; }
float4 LWCRcpScaled(FLWCVector4 V, float Scale) { return LWCRcpUnscaled(V) * Scale; }
float4 LWCSqrt(FLWCVector4 V) { return LWCSqrtScaled(V, 1448.15466f); }
float4 LWCRsqrt(FLWCVector4 V) { return LWCRsqrtScaled(V, 0.000690533954f); }
float4 LWCRcp(FLWCVector4 V) { return LWCRcpScaled(V, 4.76837158e-07f); }
  bool4  LWCGreater ( FLWCVector4 Lhs, FLWCVector4 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f > Rhs.Offset - Lhs.Offset; } bool4  LWCGreater ( float4 Lhs, FLWCVector4 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f > Rhs.Offset - Lhs; } bool4  LWCGreater ( FLWCVector4 Lhs, float4 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f > Rhs - Lhs.Offset; }
  bool4  LWCGreaterEqual ( FLWCVector4 Lhs, FLWCVector4 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f >= Rhs.Offset - Lhs.Offset; } bool4  LWCGreaterEqual ( float4 Lhs, FLWCVector4 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f >= Rhs.Offset - Lhs; } bool4  LWCGreaterEqual ( FLWCVector4 Lhs, float4 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f >= Rhs - Lhs.Offset; }
  bool4  LWCLess ( FLWCVector4 Lhs, FLWCVector4 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f < Rhs.Offset - Lhs.Offset; } bool4  LWCLess ( float4 Lhs, FLWCVector4 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f < Rhs.Offset - Lhs; } bool4  LWCLess ( FLWCVector4 Lhs, float4 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f < Rhs - Lhs.Offset; }
  bool4  LWCLessEqual ( FLWCVector4 Lhs, FLWCVector4 Rhs) { 		return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f <= Rhs.Offset - Lhs.Offset; } bool4  LWCLessEqual ( float4 Lhs, FLWCVector4 Rhs) { 		return - (( Rhs ).Tile) * 2097152.00f <= Rhs.Offset - Lhs; } bool4  LWCLessEqual ( FLWCVector4 Lhs, float4 Rhs) { 		return  (( Lhs ).Tile) * 2097152.00f <= Rhs - Lhs.Offset; }
float4 LWCDdx(FLWCVector4 V) { return ddx( (( V ).Tile)) * 2097152.00f + ddx(V.Offset); }
float4 LWCDdy(FLWCVector4 V) { return ddy( (( V ).Tile)) * 2097152.00f + ddy(V.Offset); }
FLWCVector4 LWCAdd(FLWCVector4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4( (( Lhs ).Tile) +  (( Rhs ).Tile), Lhs.Offset + Rhs.Offset); }
FLWCVector4 LWCAdd(float4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4( (( Rhs ).Tile), Lhs + Rhs.Offset); }
FLWCVector4 LWCAdd(FLWCVector4 Lhs, float4 Rhs) { return MakeLWCVector4( (( Lhs ).Tile), Lhs.Offset + Rhs); }
FLWCVector4 LWCSubtract(FLWCVector4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4( (( Lhs ).Tile) -  (( Rhs ).Tile), Lhs.Offset - Rhs.Offset); }
FLWCVector4 LWCSubtract(float4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4(- (( Rhs ).Tile), Lhs - Rhs.Offset); }
FLWCVector4 LWCSubtract(FLWCVector4 Lhs, float4 Rhs) { return MakeLWCVector4( (( Lhs ).Tile), Lhs.Offset - Rhs); }
bool4 LWCEquals(FLWCVector4 Lhs, FLWCVector4 Rhs)
{
	return ( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f == Rhs.Offset - Lhs.Offset;
}
bool4 LWCEquals(float4 Lhs, FLWCVector4 Rhs)
{
	return - (( Rhs ).Tile) * 2097152.00f == Rhs.Offset - Lhs;
} 
bool4 LWCEquals(FLWCVector4 Lhs, float4 Rhs)
{
	return  (( Lhs ).Tile) * 2097152.00f == Rhs - Lhs.Offset;
}
bool4 LWCEqualsApprox(FLWCVector4 Lhs, FLWCVector4 Rhs, float Threshold)
{
	return abs(( (( Lhs ).Tile) -  (( Rhs ).Tile)) * 2097152.00f + (Lhs.Offset - Rhs.Offset)) < (float4)Threshold;
}
bool4 LWCEqualsApprox(float4 Lhs, FLWCVector4 Rhs, float Threshold)
{
	return abs(- (( Rhs ).Tile) * 2097152.00f + (Lhs - Rhs.Offset)) < (float4)Threshold;
}
bool4 LWCEqualsApprox(FLWCVector4 Lhs, float4 Rhs, float Threshold)
{
	return abs( (( Lhs ).Tile) * 2097152.00f + (Lhs.Offset - Rhs)) < (float4)Threshold;
}
FLWCVector4 LWCSelect(bool4 S, FLWCVector4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4( select_internal( S ,  (( Lhs ).Tile) ,  (( Rhs ).Tile) ),  select_internal( S , Lhs.Offset , Rhs.Offset )); }
FLWCVector4 LWCSelect(bool4 S, float4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4( select_internal( S , (float4)0 ,  (( Rhs ).Tile) ),  select_internal( S , Lhs , Rhs.Offset )); }
FLWCVector4 LWCSelect(bool4 S, FLWCVector4 Lhs, float4 Rhs) { return MakeLWCVector4( select_internal( S ,  (( Lhs ).Tile) , (float4)0 ),  select_internal( S , Lhs.Offset , Rhs )); }
FLWCVector4 LWCNegate(FLWCVector4 V) { return MakeLWCVector4(- (( V ).Tile), -V.Offset); }
float4 LWCFrac(FLWCVector4 V)
{
	float4 FracTile = frac( (( V ).Tile) * 2097152.00f);
	return frac(FracTile + V.Offset);
}
FLWCVector4 LWCFloor(FLWCVector4 V) { FLWCVector4 VN = LWCMakeIntTile(V); return MakeLWCVector4( (( VN ).Tile), floor(VN.Offset)); }
FLWCVector4 LWCCeil(FLWCVector4 V) { FLWCVector4 VN = LWCMakeIntTile(V); return MakeLWCVector4( (( VN ).Tile), ceil(VN.Offset)); }
FLWCVector4 LWCRound(FLWCVector4 V) { FLWCVector4 VN = LWCMakeIntTile(V); return MakeLWCVector4( (( VN ).Tile), round(VN.Offset)); }
FLWCVector4 LWCTrunc(FLWCVector4 V) { FLWCVector4 VN = LWCMakeIntTile(V); return MakeLWCVector4( (( VN ).Tile), trunc(VN.Offset)); }
float4 LWCSign(FLWCVector4 V) { return float4(sign(LWCToFloat(V))); }
float4 LWCSaturate(FLWCVector4 V) { return saturate(LWCToFloat(V)); }
float4 LWCClampScalar(FLWCVector4 V, float Low, float High) { return clamp(LWCToFloat(V), Low, High); }
FLWCVector4 LWCMultiply(FLWCVector4 Lhs, FLWCVector4 Rhs)
{
	return MakeLWCVector4( (( Lhs ).Tile) * ( (( Rhs ).Tile) * 2097152.00f + Rhs.Offset) +  (( Rhs ).Tile) * Lhs.Offset, Lhs.Offset * Rhs.Offset);
}
FLWCVector4 LWCMultiply(float4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4( (( Rhs ).Tile) * Lhs, Lhs * Rhs.Offset); }
FLWCVector4 LWCMultiply(FLWCVector4 Lhs, float4 Rhs) { return MakeLWCVector4( (( Lhs ).Tile) * Rhs, Lhs.Offset * Rhs); }
FLWCVector4 LWCDivide(FLWCVector4 Lhs, FLWCVector4 Rhs) { return LWCMultiply(Lhs, LWCRcp(Rhs)); }
FLWCVector4 LWCDivide(FLWCVector4 Lhs, float4 Rhs) { return LWCMultiply(Lhs, rcp(Rhs)); }
FLWCVector4 LWCDivide(float4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4((float4)0, Lhs * LWCRcp(Rhs)); }
FLWCVector4 LWCLerp(FLWCVector4 Lhs, FLWCVector4 Rhs, float4 S)
{
	return MakeLWCVector4(lerp( (( Lhs ).Tile),  (( Rhs ).Tile), S), lerp(Lhs.Offset, Rhs.Offset, S));
}
float4 LWCModulo(FLWCVector4 Lhs, float4 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCTrunc(LWCDivide(Lhs, Rhs)), Rhs)));
}
float4 LWCFmod(FLWCVector4 Lhs, float4 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCTrunc(LWCDivide(Lhs, Rhs)), Rhs)));
}
float4 LWCFmodFloor(FLWCVector4 Lhs, float4 Rhs)
{
	return LWCToFloat(LWCSubtract(Lhs, LWCMultiply(LWCFloor(LWCDivide(Lhs, Rhs)), Rhs)));
}
float4 LWCFmodFloorPI(FLWCVector4 V)
{
	return LWCFmodFloor(V, PI);
}
float4 LWCFmodFloor2PI(FLWCVector4 V)
{
	return LWCFmodFloor(V, 2.0f * PI);
}
float4 LWCSin(FLWCVector4 V) { return sin(LWCFmodFloor2PI(V)); }
float4 LWCCos(FLWCVector4 V) { return cos(LWCFmodFloor2PI(V)); }
float4 LWCTan(FLWCVector4 V) { return tan(LWCFmodFloorPI(V)); }
float4 LWCASin(FLWCVector4 V) { return asin(LWCClampScalar(V, -1.0f, 1.0f)); }
float4 LWCACos(FLWCVector4 V) { return acos(LWCClampScalar(V, -1.0f, 1.0f)); }
float4 LWCATan(FLWCVector4 V) { return atan(LWCClampScalar(V, -0.5f*PI, 0.5f*PI)); }
float4 LWCSmoothStep(FLWCVector4 Lhs, FLWCVector4 Rhs, FLWCVector4 S)
{
	float4 t = LWCSaturate(LWCDivide(LWCSubtract(S, Lhs), LWCSubtract(Rhs, Lhs)));
	return t*t*(3.0f - (2.0f*t));
}
FLWCVector4 LWCMin(FLWCVector4 Lhs, FLWCVector4 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector4 LWCMin(float4 Lhs, FLWCVector4 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector4 LWCMin(FLWCVector4 Lhs, float4 Rhs) { return LWCSelect(LWCLess(Lhs, Rhs), Lhs, Rhs); }
FLWCVector4 LWCMax(FLWCVector4 Lhs, FLWCVector4 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector4 LWCMax(float4 Lhs, FLWCVector4 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector4 LWCMax(FLWCVector4 Lhs, float4 Rhs) { return LWCSelect(LWCGreater(Lhs, Rhs), Lhs, Rhs); }
FLWCVector4 LWCAbs(FLWCVector4 V) { return LWCSelect(LWCLess(V, (float4)0), LWCNegate(V), V); }
float4 LWCStep(FLWCVector4 Lhs, FLWCVector4 Rhs)   { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float4)1.0f , (float4)0.0f ); }
float4 LWCStep(FLWCVector4 Lhs, float4 Rhs) { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float4)1.0f , (float4)0.0f ); }
float4 LWCStep(float4 Lhs, FLWCVector4 Rhs) { return  select_internal( LWCGreaterEqual(Rhs, Lhs) , (float4)1.0f , (float4)0.0f ); }
FLWCVector4 LWCSquareScaled(FLWCVector4 V)
{
	float4 OffsetScaled = V.Offset * 4.76837158e-07f;
	return MakeLWCVector4( (( V ).Tile) * ( (( V ).Tile) + OffsetScaled * 2.0f), V.Offset * OffsetScaled);
}
FLWCScalar LWCMakeRelativeToTile(FLWCScalar V, float NewTile) { return MakeLWCScalar(NewTile, LWCToFloat(LWCSubtract(V, MakeLWCScalar(NewTile, (float)0.0f)))); }
FLWCVector2 LWCMakeRelativeToTile(FLWCVector2 V, float2 NewTile) { return MakeLWCVector2(NewTile, LWCToFloat(LWCSubtract(V, MakeLWCVector2(NewTile, (float2)0.0f)))); }
FLWCVector3 LWCMakeRelativeToTile(FLWCVector3 V, float3 NewTile) { return MakeLWCVector3(NewTile, LWCToFloat(LWCSubtract(V, MakeLWCVector3(NewTile, (float3)0.0f)))); }
FLWCVector4 LWCMakeRelativeToTile(FLWCVector4 V, float4 NewTile) { return MakeLWCVector4(NewTile, LWCToFloat(LWCSubtract(V, MakeLWCVector4(NewTile, (float4)0.0f)))); }
FLWCMatrix LWCMakeRelativeToTile(FLWCMatrix M, float3 NewTile)
{
	LWCSetOrigin(M, LWCMakeRelativeToTile(LWCGetOrigin(M), NewTile));
	return M;
}
FLWCScalar LWCVectorSum(FLWCScalar V) { return V; }
FLWCScalar LWCVectorSum(FLWCVector2 V) { return LWCAdd( LWCGetComponent( V , 0),  LWCGetComponent( V , 1)); }
FLWCScalar LWCVectorSum(FLWCVector3 V) { return LWCAdd(LWCAdd( LWCGetComponent( V , 0),  LWCGetComponent( V , 1)),  LWCGetComponent( V , 2)); }
FLWCScalar LWCVectorSum(FLWCVector4 V) { return LWCAdd(LWCAdd(LWCAdd( LWCGetComponent( V , 0),  LWCGetComponent( V , 1)),  LWCGetComponent( V , 2)),  LWCGetComponent( V , 3)); }
FLWCScalar LWCDot(FLWCScalar Lhs, FLWCScalar Rhs) { return LWCMultiply(Lhs, Rhs); }
FLWCScalar LWCDot(FLWCScalar Lhs, float Rhs) { return LWCMultiply(Lhs, Rhs); }
FLWCScalar LWCDot(FLWCVector2 Lhs, FLWCVector2 Rhs) { return LWCVectorSum(LWCMultiply(Lhs, Rhs)); }
FLWCScalar LWCDot(FLWCVector2 Lhs, float2 Rhs) { return LWCVectorSum(LWCMultiply(Lhs, Rhs)); }
FLWCScalar LWCDot(FLWCVector3 Lhs, FLWCVector3 Rhs) { return LWCVectorSum(LWCMultiply(Lhs, Rhs)); }
FLWCScalar LWCDot(FLWCVector3 Lhs, float3 Rhs) { return LWCVectorSum(LWCMultiply(Lhs, Rhs)); }
FLWCScalar LWCDot(FLWCVector4 Lhs, FLWCVector4 Rhs) { return LWCVectorSum(LWCMultiply(Lhs, Rhs)); }
FLWCScalar LWCDot(FLWCVector4 Lhs, float4 Rhs) { return LWCVectorSum(LWCMultiply(Lhs, Rhs)); }
FLWCScalar LWCLength2Scaled(FLWCScalar V)
{
	return LWCSquareScaled(V);
}
FLWCScalar LWCLength2Scaled(FLWCVector2 V)
{
	FLWCScalar X2 = LWCSquareScaled( LWCGetComponent( V , 0));
	FLWCScalar Y2 = LWCSquareScaled( LWCGetComponent( V , 1));
	return LWCAdd(X2, Y2);
}
FLWCScalar LWCLength2Scaled(FLWCVector3 V)
{
	FLWCScalar X2 = LWCSquareScaled( LWCGetComponent( V , 0));
	FLWCScalar Y2 = LWCSquareScaled( LWCGetComponent( V , 1));
	FLWCScalar Z2 = LWCSquareScaled( LWCGetComponent( V , 2));
	return LWCAdd(LWCAdd(X2, Y2), Z2);
}
FLWCScalar LWCLength2Scaled(FLWCVector4 V)
{
	FLWCScalar X2 = LWCSquareScaled( LWCGetComponent( V , 0));
	FLWCScalar Y2 = LWCSquareScaled( LWCGetComponent( V , 1));
	FLWCScalar Z2 = LWCSquareScaled( LWCGetComponent( V , 2));
	FLWCScalar W2 = LWCSquareScaled( LWCGetComponent( V , 3));
	return LWCAdd(LWCAdd(LWCAdd(X2, Y2), Z2), W2);
}
FLWCScalar LWCLength(FLWCScalar V) { return MakeLWCScalar(LWCSqrtUnscaled(LWCLength2Scaled(V)), 0.0f); }
FLWCScalar LWCLength(FLWCVector2 V) { return MakeLWCScalar(LWCSqrtUnscaled(LWCLength2Scaled(V)), 0.0f); }
FLWCScalar LWCLength(FLWCVector3 V) { return MakeLWCScalar(LWCSqrtUnscaled(LWCLength2Scaled(V)), 0.0f); }
FLWCScalar LWCLength(FLWCVector4 V) { return MakeLWCScalar(LWCSqrtUnscaled(LWCLength2Scaled(V)), 0.0f); }
float LWCRcpLength(FLWCScalar V) { return LWCRsqrtScaled(LWCLength2Scaled(V), 4.76837158e-07f); }
float LWCRcpLength(FLWCVector2 V) { return LWCRsqrtScaled(LWCLength2Scaled(V), 4.76837158e-07f); }
float LWCRcpLength(FLWCVector3 V) { return LWCRsqrtScaled(LWCLength2Scaled(V), 4.76837158e-07f); }
float LWCRcpLength(FLWCVector4 V) { return LWCRsqrtScaled(LWCLength2Scaled(V), 4.76837158e-07f); }
float LWCNormalize(FLWCScalar V) { return 1.0f; } 
float2 LWCNormalize(FLWCVector2 V) { return LWCToFloat(LWCMultiply(V, LWCRcpLength(V))); }
float3 LWCNormalize(FLWCVector3 V) { return LWCToFloat(LWCMultiply(V, LWCRcpLength(V))); }
float4 LWCNormalize(FLWCVector4 V) { return LWCToFloat(LWCMultiply(V, LWCRcpLength(V))); }
  FLWCScalar DFToTileOffset( FDFScalar In)																								{ float Tile = round(In.High / 2097152.00f); float Offset =   MakePrecise( (   MakePrecise(  mad( ( Tile ) , ( -2097152.00f ) , ( In.High ) ) ) ) + ( In.Low ) );																																								return MakeLWCScalar (Tile, Offset);																						}	
  FLWCVector2 DFToTileOffset( FDFVector2 In)																								{ float2 Tile = round(In.High / 2097152.00f); float2 Offset =   MakePrecise( (   MakePrecise(  mad( ( Tile ) , ( -2097152.00f ) , ( In.High ) ) ) ) + ( In.Low ) );																																								return MakeLWCVector2 (Tile, Offset);																						}	
  FLWCVector3 DFToTileOffset( FDFVector3 In)																								{ float3 Tile = round(In.High / 2097152.00f); float3 Offset =   MakePrecise( (   MakePrecise(  mad( ( Tile ) , ( -2097152.00f ) , ( In.High ) ) ) ) + ( In.Low ) );																																								return MakeLWCVector3 (Tile, Offset);																						}	
  FLWCVector4 DFToTileOffset( FDFVector4 In)																								{ float4 Tile = round(In.High / 2097152.00f); float4 Offset =   MakePrecise( (   MakePrecise(  mad( ( Tile ) , ( -2097152.00f ) , ( In.High ) ) ) ) + ( In.Low ) );																																								return MakeLWCVector4 (Tile, Offset);																						}	
  FLWCScalar DFFastToTileOffset( FDFScalar In)																							{ float Tile = In.High * (1 / 2097152.00f); float Offset = In.Low; 																																																									return MakeLWCScalar (Tile, Offset);																						}
  FLWCVector2 DFFastToTileOffset( FDFVector2 In)																							{ float2 Tile = In.High * (1 / 2097152.00f); float2 Offset = In.Low; 																																																									return MakeLWCVector2 (Tile, Offset);																						}
  FLWCVector3 DFFastToTileOffset( FDFVector3 In)																							{ float3 Tile = In.High * (1 / 2097152.00f); float3 Offset = In.Low; 																																																									return MakeLWCVector3 (Tile, Offset);																						}
  FLWCVector4 DFFastToTileOffset( FDFVector4 In)																							{ float4 Tile = In.High * (1 / 2097152.00f); float4 Offset = In.Low; 																																																									return MakeLWCVector4 (Tile, Offset);																						}
FLWCMatrix DFToTileOffset(FDFMatrix In)
{
	FLWCVector3 PosHigh = DFToTileOffset(MakeDFVector3(In.PostTranslation, 0));
	float4x4 M = MultiplyTranslation(In.M, PosHigh.Offset);
	float3 Tile = PosHigh.Tile;
	return MakeLWCMatrix(Tile, M);
}
FLWCMatrix DFFastToTileOffset(FDFMatrix In)
{
	float4x4 M = In.M;
	float3 Tile = In.PostTranslation / 2097152.00f;
	return MakeLWCMatrix(Tile, M);
}
FLWCInverseMatrix DFToTileOffset(FDFInverseMatrix In)
{
	FLWCVector3 PosHigh = DFToTileOffset(MakeDFVector3(In.PreTranslation, 0));
	float4x4 M = MultiplyTranslation(-PosHigh.Offset, In.M);
	float3 Tile = PosHigh.Tile;
	return MakeLWCInverseMatrix(Tile, M);
}
FLWCInverseMatrix DFFastToTileOffset(FDFInverseMatrix In)
{
	float4x4 M = In.M;
	float3 Tile = In.PreTranslation / 2097152.00f;
	return MakeLWCInverseMatrix(Tile, M);
}
FDFScalar DFFromTileOffset(FLWCScalar In)
{
	float TileOffset = In.Tile * 2097152.00f;
	return DFFastTwoSum(TileOffset, In.Offset);
}
FDFVector2 DFFromTileOffset(FLWCVector2 In)
{
	float2 TileOffset = In.Tile * 2097152.00f;
	return DFFastTwoSum(TileOffset, In.Offset);
}
FDFVector3 DFFromTileOffset(FLWCVector3 In)
{
	float3 TileOffset = In.Tile * 2097152.00f;
	return DFFastTwoSum(TileOffset, In.Offset);
}
FDFVector4 DFFromTileOffset(FLWCVector4 In)
{
	float4 TileOffset = In.Tile * 2097152.00f;
	return DFFastTwoSum(TileOffset, In.Offset);
}
FDFMatrix DFFromTileOffset(FLWCMatrix In)
{
	float4x4 M = In.M;
	float3 PostTranslation = In.Tile * 2097152.00f;
	return MakeDFMatrix(PostTranslation, M);
}
FDFInverseMatrix DFFromTileOffset(FLWCInverseMatrix In)
{
	float4x4 M = In.M;
	float3 PreTranslation = -In.Tile * 2097152.00f;
	return MakeDFInverseMatrix(PreTranslation, M);
}
float LWCToFloat(FDFScalar Value)   { return DFDemote(Value); }
float2 LWCToFloat(FDFVector2 Value) { return DFDemote(Value); }
float3 LWCToFloat(FDFVector3 Value) { return DFDemote(Value); }
float4 LWCToFloat(FDFVector4 Value) { return DFDemote(Value); }
float4x4 LWCToFloat(FDFMatrix Value) { return DFDemote(Value); }
float4x4 LWCToFloat(FDFInverseMatrix Value) { return DFDemote(Value); }
struct FLightSceneData
{
	FDFVector3 WorldPosition;
	float InvRadius;
	float FalloffExponent;
	float4 Color;
	float3 Direction;
	float SpecularScale;
	float DiffuseScale;
	float3 Tangent;
	float SourceRadius;
	float2 SpotAngles;
	float SoftSourceRadius;
	float SourceLength;
	float RectLightBarnCosAngle;
	float RectLightBarnLength;
	float2 RectLightAtlasUVOffset;
	float2 RectLightAtlasUVScale;
	float RectLightAtlasMaxLevel;
	float InverseExposureBlend;
	float IESAtlasIndex;
	uint LightTypeAndShadowMapChannelMaskPacked;
	float2 Padding;
};
struct FRTLightingData
{
	uint   Type;
	float  IESAtlasIndex;
	float  RectLightAtlasMaxLevel;
	uint   LightMissShaderIndex;
	float3 TranslatedLightPosition;
	float  InvRadius;
	float3 Direction;
	float  FalloffExponent;
	float3 LightColor;
	uint   DiffuseSpecularScale;
	float3 Tangent;
	float  SourceRadius;
	float2 SpotAngles;
	float  SourceLength;
	float  SoftSourceRadius;
	uint   DistanceFadeMAD;
	float  IndirectLightScale;
	float  RectLightBarnCosAngle;
	float  RectLightBarnLength;
	float2 RectLightAtlasUVOffset;
	float2 RectLightAtlasUVScale;
};
 _Static_assert( sizeof(FRTLightingData) == 128 , "Ray tracing light structure should be kept as small as possible" );
struct FPathTracingLight
{
	float3  TranslatedWorldPosition;
	float3  Normal;
	float3  Tangent;
	float3  Color;
	float2  Dimensions; 
	float2  Shaping;    
	uint    DiffuseSpecularScale;
	float   Attenuation;
	float   FalloffExponent; 
	float   VolumetricScatteringIntensity;  
	float   IESAtlasIndex;
	uint    Flags; 
	uint    MissShaderIndex;  
	float2  RectLightAtlasUVScale;  
	float2  RectLightAtlasUVOffset; 
};
 _Static_assert( sizeof(FPathTracingLight) == 108 , "Path tracing light structure should be kept as small as possible" );
struct FPathTracingPackedPathState
{
	uint      RandSeqSampleIndex;
	uint      RandSeqSampleSeed;
	float3    Radiance;
	float     Alpha;
	uint3     PackedAlbedoNormal;
	float3    RayOrigin;
	float3    RayDirection;
	float3    PathThroughput;
	uint2     PackedRoughnessSigma;
};
 _Static_assert( sizeof(FPathTracingPackedPathState) == 80 , "Packed Path State size should be minimized" );
struct FRayTracingDecal
{
	float3 TranslatedBoundMin;
	uint   Pad0; 
	float3 TranslatedBoundMax;
	uint   CallableSlotIndex;
};
 _Static_assert( sizeof(FRayTracingDecal) == 32 , "Ray tracing decal structure should be aligned to 32 bytes for optimal access on the GPU" );
 cbuffer DrawRectangleParameters {
	 float4    DrawRectangleParameters_PosScaleBias ;
	 float4    DrawRectangleParameters_UVScaleBias ;
	 float4    DrawRectangleParameters_InvTargetSizeAndTextureSize ;
 }
 cbuffer Substrate {
	 uint    Substrate_MaxBytesPerPixel ;
	 uint    Substrate_MaxClosurePerPixel ;
	 uint    Substrate_bRoughDiffuse ;
	 uint    Substrate_PeelLayersAboveDepth ;
	 uint    Substrate_bRoughnessTracking ;
	 float    Substrate_Padding20 ;
	 float    Substrate_Padding24 ;
	 float    Substrate_Padding28 ;
	 int    Substrate_SliceStoringDebugSubstrateTreeData ;
	 int    Substrate_FirstSliceStoringSubstrateSSSData ;
	 uint    Substrate_TileSize ;
	 uint    Substrate_TileSizeLog2 ;
	 int2    Substrate_TileCount ;
	 uint    BindlessSRV_Substrate_MaterialTextureArray ;
	 uint    Substrate_Padding60 ;
	 uint    BindlessSRV_Substrate_TopLayerTexture ;
	 uint    Substrate_Padding68 ;
	 uint    BindlessSRV_Substrate_OpaqueRoughRefractionTexture ;
	 uint    Substrate_Padding76 ;
	 uint    BindlessSRV_Substrate_ClosureOffsetTexture ;
	 uint    Substrate_Padding84 ;
	 uint    BindlessSRV_Substrate_ClosureTileBuffer ;
	 uint    Substrate_Padding92 ;
	 uint    BindlessSRV_Substrate_ClosureTileCountBuffer ;
 }
  Texture2DArray<uint>  Substrate_MaterialTextureArray ;
  Texture2D<uint>  Substrate_TopLayerTexture ;
  Texture2D<float3>  Substrate_OpaqueRoughRefractionTexture ;
  Texture2D<uint>  Substrate_ClosureOffsetTexture ;
  Buffer<uint>  Substrate_ClosureTileBuffer ;
  Buffer<uint>  Substrate_ClosureTileCountBuffer ;
 cbuffer View {
	 float4x4    View_TranslatedWorldToClip ;
	 float4x4    View_RelativeWorldToClip ;
	 float4x4    View_ClipToRelativeWorld ;
	 float4x4    View_TranslatedWorldToView ;
	 float4x4    View_ViewToTranslatedWorld ;
	 float4x4    View_TranslatedWorldToCameraView ;
	 float4x4    View_CameraViewToTranslatedWorld ;
	 float4x4    View_ViewToClip ;
	 float4x4    View_ViewToClipNoAA ;
	 float4x4    View_ClipToView ;
	 float4x4    View_ClipToTranslatedWorld ;
	 float4x4    View_SVPositionToTranslatedWorld ;
	 float4x4    View_ScreenToRelativeWorld ;
	 float4x4    View_ScreenToTranslatedWorld ;
	 float4x4    View_MobileMultiviewShadowTransform ;
	 float4x4    View_MobileMultiviewDecalTransform ;
	 float4x4    View_FirstPersonTransform ;
	 float4x4    View_PrevFirstPersonTransform ;
	 float3    View_ViewOriginHigh ;
	 float    View_Padding1164 ;
	 float3    View_ViewForward ;
	 float    View_Padding1180 ;
	 float3    View_ViewUp ;
	 float    View_Padding1196 ;
	 float3    View_ViewRight ;
	 float    View_Padding1212 ;
	 float3    View_HMDViewNoRollUp ;
	 float    View_Padding1228 ;
	 float3    View_HMDViewNoRollRight ;
	 float    View_Padding1244 ;
	 float4    View_InvDeviceZToWorldZTransform ;
	 float4    View_ScreenPositionScaleBias ;
	 float3    View_ViewOriginLow ;
	 float    View_Padding1292 ;
	 float3    View_TranslatedWorldCameraOrigin ;
	 float    View_Padding1308 ;
	 float3    View_WorldViewOriginHigh ;
	 float    View_Padding1324 ;
	 float3    View_WorldViewOriginLow ;
	 float    View_Padding1340 ;
	 float3    View_PreViewTranslationHigh ;
	 float    View_Padding1356 ;
	 float3    View_PreViewTranslationLow ;
	 float    View_Padding1372 ;
	 float4x4    View_PrevViewToClip ;
	 float4x4    View_PrevClipToView ;
	 float4x4    View_PrevTranslatedWorldToClip ;
	 float4x4    View_PrevTranslatedWorldToView ;
	 float4x4    View_PrevViewToTranslatedWorld ;
	 float4x4    View_PrevTranslatedWorldToCameraView ;
	 float4x4    View_PrevCameraViewToTranslatedWorld ;
	 float3    View_PrevTranslatedWorldCameraOrigin ;
	 float    View_Padding1836 ;
	 float3    View_PrevWorldCameraOriginHigh ;
	 float    View_Padding1852 ;
	 float3    View_PrevWorldCameraOriginLow ;
	 float    View_Padding1868 ;
	 float3    View_PrevWorldViewOriginHigh ;
	 float    View_Padding1884 ;
	 float3    View_PrevWorldViewOriginLow ;
	 float    View_Padding1900 ;
	 float3    View_PrevPreViewTranslationHigh ;
	 float    View_Padding1916 ;
	 float3    View_PrevPreViewTranslationLow ;
	 float    View_Padding1932 ;
	 float3    View_ViewTilePosition ;
	 float    View_Padding1948 ;
	 float3    View_RelativeWorldCameraOriginTO ;
	 float    View_Padding1964 ;
	 float3    View_RelativeWorldViewOriginTO ;
	 float    View_Padding1980 ;
	 float3    View_RelativePreViewTranslationTO ;
	 float    View_Padding1996 ;
	 float3    View_PrevRelativeWorldCameraOriginTO ;
	 float    View_Padding2012 ;
	 float3    View_PrevRelativeWorldViewOriginTO ;
	 float    View_Padding2028 ;
	 float3    View_RelativePrevPreViewTranslationTO ;
	 float    View_Padding2044 ;
	 float4x4    View_PrevClipToRelativeWorld ;
	 float4x4    View_PrevScreenToTranslatedWorld ;
	 float4x4    View_ClipToPrevClip ;
	 float4x4    View_ClipToPrevClipWithAA ;
	 float4    View_TemporalAAJitter ;
	 float4    View_GlobalClippingPlane ;
	 float2    View_FieldOfViewWideAngles ;
	 float2    View_PrevFieldOfViewWideAngles ;
	 float4    View_ViewRectMin ;
	 float4    View_ViewSizeAndInvSize ;
	 uint4    View_ViewRectMinAndSize ;
	 float4    View_LightProbeSizeRatioAndInvSizeRatio ;
	 float4    View_BufferSizeAndInvSize ;
	 float4    View_BufferBilinearUVMinMax ;
	 float4    View_ScreenToViewSpace ;
	 float2    View_BufferToSceneTextureScale ;
	 float2    View_ResolutionFractionAndInv ;
	 int    View_NumSceneColorMSAASamples ;
	 float    View_ProjectionDepthThicknessScale ;
	 float    View_PreExposure ;
	 float    View_OneOverPreExposure ;
	 float4    View_DiffuseOverrideParameter ;
	 float4    View_SpecularOverrideParameter ;
	 float4    View_NormalOverrideParameter ;
	 float2    View_RoughnessOverrideParameter ;
	 float    View_PrevFrameGameTime ;
	 float    View_PrevFrameRealTime ;
	 float    View_OutOfBoundsMask ;
	 float    View_Padding2564 ;
	 float    View_Padding2568 ;
	 float    View_Padding2572 ;
	 float3    View_WorldCameraMovementSinceLastFrame ;
	 float    View_CullingSign ;
	 float    View_NearPlane ;
	 float    View_OrthoFarPlane ;
	 float    View_GameTime ;
	 float    View_RealTime ;
	 float    View_DeltaTime ;
	 float    View_MaterialTextureMipBias ;
	 float    View_MaterialTextureDerivativeMultiply ;
	 uint    View_Random ;
	 uint    View_FrameNumber ;
	 uint    View_FrameCounter ;
	 uint    View_StateFrameIndexMod8 ;
	 uint    View_StateFrameIndex ;
	 uint    View_StateOutputFrameIndex ;
	 uint    View_DebugViewModeMask ;
	 uint    View_WorldIsPaused ;
	 float    View_CameraCut ;
	 float    View_UnlitViewmodeMask ;
	 float    View_Padding2660 ;
	 float    View_Padding2664 ;
	 float    View_Padding2668 ;
	 float4    View_DirectionalLightColor ;
	 float3    View_DirectionalLightDirection ;
	 float    View_Padding2700 ;
	 float4    View_TranslucencyLightingVolumeMin[2] ;
	 float4    View_TranslucencyLightingVolumeInvSize[2] ;
	 float4    View_TemporalAAParams ;
	 float4    View_CircleDOFParams ;
	 float    View_DepthOfFieldSensorWidth ;
	 float    View_DepthOfFieldFocalDistance ;
	 float    View_DepthOfFieldScale ;
	 float    View_DepthOfFieldFocalLength ;
	 float    View_DepthOfFieldFocalRegion ;
	 float    View_DepthOfFieldNearTransitionRegion ;
	 float    View_DepthOfFieldFarTransitionRegion ;
	 float    View_MotionBlurNormalizedToPixel ;
	 float    View_GeneralPurposeTweak ;
	 float    View_GeneralPurposeTweak2 ;
	 float    View_DemosaicVposOffset ;
	 float    View_DecalDepthBias ;
	 float3    View_IndirectLightingColorScale ;
	 float    View_Padding2860 ;
	 float3    View_PrecomputedIndirectLightingColorScale ;
	 float    View_Padding2876 ;
	 float3    View_PrecomputedIndirectSpecularColorScale ;
	 float    View_Padding2892 ;
	 float4    View_AtmosphereLightDirection[2] ;
	 float4    View_AtmosphereLightIlluminanceOnGroundPostTransmittance[2] ;
	 float4    View_AtmosphereLightIlluminanceOuterSpace[2] ;
	 float4    View_AtmosphereLightDiscLuminance[2] ;
	 float4    View_AtmosphereLightDiscCosHalfApexAngle_PPTrans[2] ;
	 float4    View_SkyViewLutSizeAndInvSize ;
	 float3    View_SkyCameraTranslatedWorldOrigin ;
	 float    View_Padding3084 ;
	 float4    View_SkyPlanetTranslatedWorldCenterAndViewHeight ;
	 float4x4    View_SkyViewLutReferential ;
	 float4    View_SkyAtmosphereSkyLuminanceFactor ;
	 float    View_SkyAtmospherePresentInScene ;
	 float    View_SkyAtmosphereHeightFogContribution ;
	 float    View_SkyAtmosphereBottomRadiusKm ;
	 float    View_SkyAtmosphereTopRadiusKm ;
	 float4    View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize ;
	 float    View_SkyAtmosphereAerialPerspectiveStartDepthKm ;
	 float    View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution ;
	 float    View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv ;
	 float    View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm ;
	 float    View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv ;
	 float    View_SkyAtmosphereApplyCameraAerialPerspectiveVolume ;
	 float    View_Padding3240 ;
	 float    View_Padding3244 ;
	 float3    View_NormalCurvatureToRoughnessScaleBias ;
	 float    View_RenderingReflectionCaptureMask ;
	 float    View_RealTimeReflectionCapture ;
	 float    View_RealTimeReflectionCapturePreExposure ;
	 float    View_Padding3272 ;
	 float    View_Padding3276 ;
	 float4    View_AmbientCubemapTint ;
	 float    View_AmbientCubemapIntensity ;
	 float    View_SkyLightApplyPrecomputedBentNormalShadowingFlag ;
	 float    View_SkyLightAffectReflectionFlag ;
	 float    View_SkyLightAffectGlobalIlluminationFlag ;
	 float4    View_SkyLightColor ;
	 float    View_SkyLightVolumetricScatteringIntensity ;
	 float    View_Padding3332 ;
	 float    View_Padding3336 ;
	 float    View_Padding3340 ;
	 float4    View_MobileSkyIrradianceEnvironmentMap[8] ;
	 float    View_MobilePreviewMode ;
	 float    View_HMDEyePaddingOffset ;
	 float    View_ReflectionCubemapMaxMip ;
	 float    View_ShowDecalsMask ;
	 uint    View_DistanceFieldAOSpecularOcclusionMode ;
	 float    View_IndirectCapsuleSelfShadowingIntensity ;
	 float    View_Padding3496 ;
	 float    View_Padding3500 ;
	 float3    View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight ;
	 int    View_StereoPassIndex ;
	 float4    View_GlobalVolumeTranslatedCenterAndExtent[6] ;
	 float4    View_GlobalVolumeTranslatedWorldToUVAddAndMul[6] ;
	 float4    View_GlobalDistanceFieldMipTranslatedWorldToUVScale[6] ;
	 float4    View_GlobalDistanceFieldMipTranslatedWorldToUVBias[6] ;
	 float    View_GlobalDistanceFieldMipFactor ;
	 float    View_GlobalDistanceFieldMipTransition ;
	 int    View_GlobalDistanceFieldClipmapSizeInPages ;
	 int    View_Padding3916 ;
	 float3    View_GlobalDistanceFieldInvPageAtlasSize ;
	 float    View_Padding3932 ;
	 float3    View_GlobalDistanceFieldInvCoverageAtlasSize ;
	 float    View_GlobalVolumeDimension ;
	 float    View_GlobalVolumeTexelSize ;
	 float    View_MaxGlobalDFAOConeDistance ;
	 uint    View_NumGlobalSDFClipmaps ;
	 float    View_CoveredExpandSurfaceScale ;
	 float    View_NotCoveredExpandSurfaceScale ;
	 float    View_NotCoveredMinStepScale ;
	 float    View_DitheredTransparencyStepThreshold ;
	 float    View_DitheredTransparencyTraceThreshold ;
	 float    View_ViewportScaleUI ;
	 float    View_Padding3988 ;
	 int2    View_CursorPosition ;
	 float    View_bCheckerboardSubsurfaceProfileRendering ;
	 float    View_Padding4004 ;
	 float    View_Padding4008 ;
	 float    View_Padding4012 ;
	 float3    View_VolumetricFogInvGridSize ;
	 float    View_Padding4028 ;
	 float3    View_VolumetricFogGridZParams ;
	 float    View_Padding4044 ;
	 float2    View_VolumetricFogSVPosToVolumeUV ;
	 float2    View_VolumetricFogViewGridUVToPrevViewRectUV ;
	 float2    View_VolumetricFogPrevViewGridRectUVToResourceUV ;
	 float2    View_VolumetricFogPrevUVMax ;
	 float2    View_VolumetricFogPrevUVMaxForTemporalBlend ;
	 float    View_Padding4088 ;
	 float    View_Padding4092 ;
	 float3    View_VolumetricFogPrevResourceGridSize ;
	 float    View_Padding4108 ;
	 float2    View_VolumetricFogScreenToResourceUV ;
	 float2    View_VolumetricFogUVMax ;
	 float    View_VolumetricFogMaxDistance ;
	 float    View_Padding4132 ;
	 float    View_Padding4136 ;
	 float    View_Padding4140 ;
	 float3    View_VolumetricLightmapWorldToUVScale ;
	 float    View_Padding4156 ;
	 float3    View_VolumetricLightmapWorldToUVAdd ;
	 float    View_Padding4172 ;
	 float3    View_VolumetricLightmapIndirectionTextureSize ;
	 float    View_VolumetricLightmapBrickSize ;
	 float3    View_VolumetricLightmapBrickTexelSize ;
	 float    View_IndirectLightingCacheShowFlag ;
	 float    View_EyeToPixelSpreadAngle ;
	 float    View_Padding4212 ;
	 float    View_Padding4216 ;
	 float    View_Padding4220 ;
	 float4    View_XRPassthroughCameraUVs[2] ;
	 float    View_GlobalVirtualTextureMipBias ;
	 uint    View_VirtualTextureFeedbackShift ;
	 uint    View_VirtualTextureFeedbackMask ;
	 uint    View_VirtualTextureFeedbackStride ;
	 uint    View_VirtualTextureFeedbackJitterOffset ;
	 uint    View_VirtualTextureFeedbackSampleOffset ;
	 uint    View_Padding4280 ;
	 uint    View_Padding4284 ;
	 float4    View_RuntimeVirtualTextureMipLevel ;
	 float2    View_RuntimeVirtualTexturePackHeight ;
	 float    View_Padding4312 ;
	 float    View_Padding4316 ;
	 float4    View_RuntimeVirtualTextureDebugParams ;
	 int    View_FarShadowStaticMeshLODBias ;
	 float    View_MinRoughness ;
	 float    View_Padding4344 ;
	 float    View_Padding4348 ;
	 float4    View_HairRenderInfo ;
	 uint    View_EnableSkyLight ;
	 uint    View_HairRenderInfoBits ;
	 uint    View_HairComponents ;
	 float    View_bSubsurfacePostprocessEnabled ;
	 float4    View_SSProfilesTextureSizeAndInvSize ;
	 float4    View_SSProfilesPreIntegratedTextureSizeAndInvSize ;
	 float4    View_SpecularProfileTextureSizeAndInvSize ;
	 float3    View_PhysicsFieldClipmapCenter ;
	 float    View_PhysicsFieldClipmapDistance ;
	 int    View_PhysicsFieldClipmapResolution ;
	 int    View_PhysicsFieldClipmapExponent ;
	 int    View_PhysicsFieldClipmapCount ;
	 int    View_PhysicsFieldTargetCount ;
	 int4    View_PhysicsFieldTargets[32] ;
	 uint    View_GPUSceneViewId ;
	 float    View_ViewResolutionFraction ;
	 float    View_SubSurfaceColorAsTransmittanceAtDistanceInMeters ;
	 float    View_Padding4988 ;
	 float4    View_TanAndInvTanHalfFOV ;
	 float4    View_PrevTanAndInvTanHalfFOV ;
	 float2    View_WorldDepthToPixelWorldRadius ;
	 float    View_Padding5032 ;
	 float    View_Padding5036 ;
	 float4    View_ScreenRayLengthMultiplier ;
	 float4    View_GlintLUTParameters0 ;
	 float4    View_GlintLUTParameters1 ;
	 float    View_MaterialMaxEmissiveValue ;
	 int    View_PostVolumeUserFlags ;
	 int    View_Padding5096 ;
	 int    View_Padding5100 ;
	 int4    View_EnvironmentComponentsFlags ;
	 uint    BindlessSampler_View_MaterialTextureBilinearWrapedSampler ;
	 uint    View_Padding5124 ;
	 uint    BindlessSampler_View_MaterialTextureBilinearClampedSampler ;
	 uint    View_Padding5132 ;
	 uint    BindlessSRV_View_VolumetricLightmapIndirectionTexture ;
	 uint    View_Padding5140 ;
	 uint    BindlessSRV_View_VolumetricLightmapBrickAmbientVector ;
	 uint    View_Padding5148 ;
	 uint    BindlessSRV_View_VolumetricLightmapBrickSHCoefficients0 ;
	 uint    View_Padding5156 ;
	 uint    BindlessSRV_View_VolumetricLightmapBrickSHCoefficients1 ;
	 uint    View_Padding5164 ;
	 uint    BindlessSRV_View_VolumetricLightmapBrickSHCoefficients2 ;
	 uint    View_Padding5172 ;
	 uint    BindlessSRV_View_VolumetricLightmapBrickSHCoefficients3 ;
	 uint    View_Padding5180 ;
	 uint    BindlessSRV_View_VolumetricLightmapBrickSHCoefficients4 ;
	 uint    View_Padding5188 ;
	 uint    BindlessSRV_View_VolumetricLightmapBrickSHCoefficients5 ;
	 uint    View_Padding5196 ;
	 uint    BindlessSRV_View_SkyBentNormalBrickTexture ;
	 uint    View_Padding5204 ;
	 uint    BindlessSRV_View_DirectionalLightShadowingBrickTexture ;
	 uint    View_Padding5212 ;
	 uint    BindlessSampler_View_VolumetricLightmapBrickAmbientVectorSampler ;
	 uint    View_Padding5220 ;
	 uint    BindlessSampler_View_VolumetricLightmapTextureSampler0 ;
	 uint    View_Padding5228 ;
	 uint    BindlessSampler_View_VolumetricLightmapTextureSampler1 ;
	 uint    View_Padding5236 ;
	 uint    BindlessSampler_View_VolumetricLightmapTextureSampler2 ;
	 uint    View_Padding5244 ;
	 uint    BindlessSampler_View_VolumetricLightmapTextureSampler3 ;
	 uint    View_Padding5252 ;
	 uint    BindlessSampler_View_VolumetricLightmapTextureSampler4 ;
	 uint    View_Padding5260 ;
	 uint    BindlessSampler_View_VolumetricLightmapTextureSampler5 ;
	 uint    View_Padding5268 ;
	 uint    BindlessSampler_View_SkyBentNormalTextureSampler ;
	 uint    View_Padding5276 ;
	 uint    BindlessSampler_View_DirectionalLightShadowingTextureSampler ;
	 uint    View_Padding5284 ;
	 uint    BindlessSRV_View_GlobalDistanceFieldPageAtlasTexture ;
	 uint    View_Padding5292 ;
	 uint    BindlessSRV_View_GlobalDistanceFieldCoverageAtlasTexture ;
	 uint    View_Padding5300 ;
	 uint    BindlessSRV_View_GlobalDistanceFieldPageTableTexture ;
	 uint    View_Padding5308 ;
	 uint    BindlessSRV_View_GlobalDistanceFieldMipTexture ;
	 uint    View_Padding5316 ;
	 uint    BindlessSampler_View_GlobalDistanceFieldPageAtlasTextureSampler ;
	 uint    View_Padding5324 ;
	 uint    BindlessSampler_View_GlobalDistanceFieldCoverageAtlasTextureSampler ;
	 uint    View_Padding5332 ;
	 uint    BindlessSampler_View_GlobalDistanceFieldMipTextureSampler ;
	 uint    View_Padding5340 ;
	 uint    BindlessSRV_View_AtmosphereTransmittanceTexture ;
	 uint    View_Padding5348 ;
	 uint    BindlessSampler_View_AtmosphereTransmittanceTextureSampler ;
	 uint    View_Padding5356 ;
	 uint    BindlessSRV_View_AtmosphereIrradianceTexture ;
	 uint    View_Padding5364 ;
	 uint    BindlessSampler_View_AtmosphereIrradianceTextureSampler ;
	 uint    View_Padding5372 ;
	 uint    BindlessSRV_View_AtmosphereInscatterTexture ;
	 uint    View_Padding5380 ;
	 uint    BindlessSampler_View_AtmosphereInscatterTextureSampler ;
	 uint    View_Padding5388 ;
	 uint    BindlessSRV_View_PerlinNoiseGradientTexture ;
	 uint    View_Padding5396 ;
	 uint    BindlessSampler_View_PerlinNoiseGradientTextureSampler ;
	 uint    View_Padding5404 ;
	 uint    BindlessSRV_View_PerlinNoise3DTexture ;
	 uint    View_Padding5412 ;
	 uint    BindlessSampler_View_PerlinNoise3DTextureSampler ;
	 uint    View_Padding5420 ;
	 uint    BindlessSRV_View_SobolSamplingTexture ;
	 uint    View_Padding5428 ;
	 uint    BindlessSampler_View_SharedPointWrappedSampler ;
	 uint    View_Padding5436 ;
	 uint    BindlessSampler_View_SharedPointClampedSampler ;
	 uint    View_Padding5444 ;
	 uint    BindlessSampler_View_SharedBilinearWrappedSampler ;
	 uint    View_Padding5452 ;
	 uint    BindlessSampler_View_SharedBilinearClampedSampler ;
	 uint    View_Padding5460 ;
	 uint    BindlessSampler_View_SharedBilinearAnisoClampedSampler ;
	 uint    View_Padding5468 ;
	 uint    BindlessSampler_View_SharedTrilinearWrappedSampler ;
	 uint    View_Padding5476 ;
	 uint    BindlessSampler_View_SharedTrilinearClampedSampler ;
	 uint    View_Padding5484 ;
	 uint    BindlessSRV_View_PreIntegratedBRDF ;
	 uint    View_Padding5492 ;
	 uint    BindlessSampler_View_PreIntegratedBRDFSampler ;
	 uint    View_Padding5500 ;
	 uint    BindlessSRV_View_SkyIrradianceEnvironmentMap ;
	 uint    View_Padding5508 ;
	 uint    BindlessSRV_View_TransmittanceLutTexture ;
	 uint    View_Padding5516 ;
	 uint    BindlessSampler_View_TransmittanceLutTextureSampler ;
	 uint    View_Padding5524 ;
	 uint    BindlessSRV_View_SkyViewLutTexture ;
	 uint    View_Padding5532 ;
	 uint    BindlessSampler_View_SkyViewLutTextureSampler ;
	 uint    View_Padding5540 ;
	 uint    BindlessSRV_View_CameraAerialPerspectiveVolume ;
	 uint    View_Padding5548 ;
	 uint    BindlessSampler_View_CameraAerialPerspectiveVolumeSampler ;
	 uint    View_Padding5556 ;
	 uint    BindlessSRV_View_CameraAerialPerspectiveVolumeMieOnly ;
	 uint    View_Padding5564 ;
	 uint    BindlessSampler_View_CameraAerialPerspectiveVolumeMieOnlySampler ;
	 uint    View_Padding5572 ;
	 uint    BindlessSRV_View_CameraAerialPerspectiveVolumeRayOnly ;
	 uint    View_Padding5580 ;
	 uint    BindlessSampler_View_CameraAerialPerspectiveVolumeRayOnlySampler ;
	 uint    View_Padding5588 ;
	 uint    BindlessSRV_View_DistantSkyLightLutBufferSRV ;
	 uint    View_Padding5596 ;
	 uint    BindlessSRV_View_MobileDistantSkyLightLutBufferSRV ;
	 uint    View_Padding5604 ;
	 uint    BindlessSRV_View_HairScatteringLUTTexture ;
	 uint    View_Padding5612 ;
	 uint    BindlessSampler_View_HairScatteringLUTSampler ;
	 uint    View_Padding5620 ;
	 uint    BindlessSRV_View_GGXLTCMatTexture ;
	 uint    View_Padding5628 ;
	 uint    BindlessSampler_View_GGXLTCMatSampler ;
	 uint    View_Padding5636 ;
	 uint    BindlessSRV_View_GGXLTCAmpTexture ;
	 uint    View_Padding5644 ;
	 uint    BindlessSampler_View_GGXLTCAmpSampler ;
	 uint    View_Padding5652 ;
	 uint    BindlessSRV_View_SheenLTCTexture ;
	 uint    View_Padding5660 ;
	 uint    BindlessSampler_View_SheenLTCSampler ;
	 uint    View_Padding5668 ;
	 uint    View_bShadingEnergyConservation ;
	 uint    View_bShadingEnergyPreservation ;
	 uint    BindlessSRV_View_ShadingEnergyGGXSpecTexture ;
	 uint    View_Padding5684 ;
	 uint    BindlessSRV_View_ShadingEnergyGGXGlassTexture ;
	 uint    View_Padding5692 ;
	 uint    BindlessSRV_View_ShadingEnergyClothSpecTexture ;
	 uint    View_Padding5700 ;
	 uint    BindlessSRV_View_ShadingEnergyDiffuseTexture ;
	 uint    View_Padding5708 ;
	 uint    BindlessSampler_View_ShadingEnergySampler ;
	 uint    View_Padding5716 ;
	 uint    BindlessSRV_View_GlintTexture ;
	 uint    View_Padding5724 ;
	 uint    BindlessSampler_View_GlintSampler ;
	 uint    View_Padding5732 ;
	 uint    BindlessSRV_View_SimpleVolumeTexture ;
	 uint    View_Padding5740 ;
	 uint    BindlessSampler_View_SimpleVolumeTextureSampler ;
	 uint    View_Padding5748 ;
	 uint    BindlessSRV_View_SimpleVolumeEnvTexture ;
	 uint    View_Padding5756 ;
	 uint    BindlessSampler_View_SimpleVolumeEnvTextureSampler ;
	 uint    View_Padding5764 ;
	 uint    BindlessSRV_View_SSProfilesTexture ;
	 uint    View_Padding5772 ;
	 uint    BindlessSampler_View_SSProfilesSampler ;
	 uint    View_Padding5780 ;
	 uint    BindlessSampler_View_SSProfilesTransmissionSampler ;
	 uint    View_Padding5788 ;
	 uint    BindlessSRV_View_SSProfilesPreIntegratedTexture ;
	 uint    View_Padding5796 ;
	 uint    BindlessSampler_View_SSProfilesPreIntegratedSampler ;
	 uint    View_Padding5804 ;
	 uint    BindlessSRV_View_SpecularProfileTexture ;
	 uint    View_Padding5812 ;
	 uint    BindlessSampler_View_SpecularProfileSampler ;
	 uint    View_Padding5820 ;
	 uint    BindlessSRV_View_WaterIndirection ;
	 uint    View_Padding5828 ;
	 uint    BindlessSRV_View_WaterData ;
	 uint    View_Padding5836 ;
	 int    View_WaterInfoTextureViewIndex ;
	 int    View_Padding5844 ;
	 int    View_Padding5848 ;
	 int    View_Padding5852 ;
	 float4    View_RectLightAtlasSizeAndInvSize ;
	 float    View_RectLightAtlasMaxMipLevel ;
	 float    View_Padding5876 ;
	 uint    BindlessSRV_View_RectLightAtlasTexture ;
	 uint    View_Padding5884 ;
	 uint    BindlessSampler_View_RectLightAtlasSampler ;
	 uint    View_Padding5892 ;
	 uint    View_Padding5896 ;
	 uint    View_Padding5900 ;
	 float4    View_IESAtlasSizeAndInvSize ;
	 uint    BindlessSRV_View_IESAtlasTexture ;
	 uint    View_Padding5924 ;
	 uint    BindlessSampler_View_IESAtlasSampler ;
	 uint    View_Padding5932 ;
	 uint    BindlessSampler_View_LandscapeWeightmapSampler ;
	 uint    View_Padding5940 ;
	 uint    BindlessSRV_View_LandscapeIndirection ;
	 uint    View_Padding5948 ;
	 uint    BindlessSRV_View_LandscapePerComponentData ;
	 uint    View_Padding5956 ;
	 uint    BindlessUAV_View_VTFeedbackBuffer ;
	 uint    View_Padding5964 ;
	 uint    BindlessSRV_View_PhysicsFieldClipmapBuffer ;
	 uint    View_Padding5972 ;
	 uint    View_Padding5976 ;
	 uint    View_Padding5980 ;
	 float3    View_TLASPreViewTranslationHigh ;
	 float    View_Padding5996 ;
	 float3    View_TLASPreViewTranslationLow ;
 }
  SamplerState  View_MaterialTextureBilinearWrapedSampler ;
  SamplerState  View_MaterialTextureBilinearClampedSampler ;
  Texture3D<uint4>  View_VolumetricLightmapIndirectionTexture ;
  Texture3D  View_VolumetricLightmapBrickAmbientVector ;
  Texture3D  View_VolumetricLightmapBrickSHCoefficients0 ;
  Texture3D  View_VolumetricLightmapBrickSHCoefficients1 ;
  Texture3D  View_VolumetricLightmapBrickSHCoefficients2 ;
  Texture3D  View_VolumetricLightmapBrickSHCoefficients3 ;
  Texture3D  View_VolumetricLightmapBrickSHCoefficients4 ;
  Texture3D  View_VolumetricLightmapBrickSHCoefficients5 ;
  Texture3D  View_SkyBentNormalBrickTexture ;
  Texture3D  View_DirectionalLightShadowingBrickTexture ;
  SamplerState  View_VolumetricLightmapBrickAmbientVectorSampler ;
  SamplerState  View_VolumetricLightmapTextureSampler0 ;
  SamplerState  View_VolumetricLightmapTextureSampler1 ;
  SamplerState  View_VolumetricLightmapTextureSampler2 ;
  SamplerState  View_VolumetricLightmapTextureSampler3 ;
  SamplerState  View_VolumetricLightmapTextureSampler4 ;
  SamplerState  View_VolumetricLightmapTextureSampler5 ;
  SamplerState  View_SkyBentNormalTextureSampler ;
  SamplerState  View_DirectionalLightShadowingTextureSampler ;
  Texture3D  View_GlobalDistanceFieldPageAtlasTexture ;
  Texture3D  View_GlobalDistanceFieldCoverageAtlasTexture ;
  Texture3D<uint>  View_GlobalDistanceFieldPageTableTexture ;
  Texture3D  View_GlobalDistanceFieldMipTexture ;
  SamplerState  View_GlobalDistanceFieldPageAtlasTextureSampler ;
  SamplerState  View_GlobalDistanceFieldCoverageAtlasTextureSampler ;
  SamplerState  View_GlobalDistanceFieldMipTextureSampler ;
  Texture2D  View_AtmosphereTransmittanceTexture ;
  SamplerState  View_AtmosphereTransmittanceTextureSampler ;
  Texture2D  View_AtmosphereIrradianceTexture ;
  SamplerState  View_AtmosphereIrradianceTextureSampler ;
  Texture3D  View_AtmosphereInscatterTexture ;
  SamplerState  View_AtmosphereInscatterTextureSampler ;
  Texture2D  View_PerlinNoiseGradientTexture ;
  SamplerState  View_PerlinNoiseGradientTextureSampler ;
  Texture3D  View_PerlinNoise3DTexture ;
  SamplerState  View_PerlinNoise3DTextureSampler ;
  Texture2D<uint>  View_SobolSamplingTexture ;
  SamplerState  View_SharedPointWrappedSampler ;
  SamplerState  View_SharedPointClampedSampler ;
  SamplerState  View_SharedBilinearWrappedSampler ;
  SamplerState  View_SharedBilinearClampedSampler ;
  SamplerState  View_SharedBilinearAnisoClampedSampler ;
  SamplerState  View_SharedTrilinearWrappedSampler ;
  SamplerState  View_SharedTrilinearClampedSampler ;
  Texture2D  View_PreIntegratedBRDF ;
  SamplerState  View_PreIntegratedBRDFSampler ;
  StructuredBuffer<float4>  View_SkyIrradianceEnvironmentMap ;
  Texture2D  View_TransmittanceLutTexture ;
  SamplerState  View_TransmittanceLutTextureSampler ;
  Texture2D  View_SkyViewLutTexture ;
  SamplerState  View_SkyViewLutTextureSampler ;
  Texture3D  View_CameraAerialPerspectiveVolume ;
  SamplerState  View_CameraAerialPerspectiveVolumeSampler ;
  Texture3D  View_CameraAerialPerspectiveVolumeMieOnly ;
  SamplerState  View_CameraAerialPerspectiveVolumeMieOnlySampler ;
  Texture3D  View_CameraAerialPerspectiveVolumeRayOnly ;
  SamplerState  View_CameraAerialPerspectiveVolumeRayOnlySampler ;
  StructuredBuffer<float4>  View_DistantSkyLightLutBufferSRV ;
  Buffer<float4>  View_MobileDistantSkyLightLutBufferSRV ;
  Texture3D  View_HairScatteringLUTTexture ;
  SamplerState  View_HairScatteringLUTSampler ;
  Texture2D  View_GGXLTCMatTexture ;
  SamplerState  View_GGXLTCMatSampler ;
  Texture2D  View_GGXLTCAmpTexture ;
  SamplerState  View_GGXLTCAmpSampler ;
  Texture2D  View_SheenLTCTexture ;
  SamplerState  View_SheenLTCSampler ;
  Texture2D<float2>  View_ShadingEnergyGGXSpecTexture ;
  Texture3D<float2>  View_ShadingEnergyGGXGlassTexture ;
  Texture2D<float2>  View_ShadingEnergyClothSpecTexture ;
  Texture2D<float>  View_ShadingEnergyDiffuseTexture ;
  SamplerState  View_ShadingEnergySampler ;
  Texture2DArray<float4>  View_GlintTexture ;
  SamplerState  View_GlintSampler ;
  Texture3D<float>  View_SimpleVolumeTexture ;
  SamplerState  View_SimpleVolumeTextureSampler ;
  Texture3D<float>  View_SimpleVolumeEnvTexture ;
  SamplerState  View_SimpleVolumeEnvTextureSampler ;
  Texture2D  View_SSProfilesTexture ;
  SamplerState  View_SSProfilesSampler ;
  SamplerState  View_SSProfilesTransmissionSampler ;
  Texture2DArray  View_SSProfilesPreIntegratedTexture ;
  SamplerState  View_SSProfilesPreIntegratedSampler ;
  Texture2DArray  View_SpecularProfileTexture ;
  SamplerState  View_SpecularProfileSampler ;
  Buffer<float4>  View_WaterIndirection ;
  Buffer<float4>  View_WaterData ;
  Texture2D<float4>  View_RectLightAtlasTexture ;
  SamplerState  View_RectLightAtlasSampler ;
  Texture2DArray<float>  View_IESAtlasTexture ;
  SamplerState  View_IESAtlasSampler ;
  SamplerState  View_LandscapeWeightmapSampler ;
  Buffer<uint>  View_LandscapeIndirection ;
  Buffer<float>  View_LandscapePerComponentData ;
  RWStructuredBuffer<uint>  View_VTFeedbackBuffer ;
  Buffer<float>  View_PhysicsFieldClipmapBuffer ;
 cbuffer InstancedView {
	 float4x4    InstancedView_TranslatedWorldToClip[2] ;
	 float4x4    InstancedView_RelativeWorldToClip[2] ;
	 float4x4    InstancedView_ClipToRelativeWorld[2] ;
	 float4x4    InstancedView_TranslatedWorldToView[2] ;
	 float4x4    InstancedView_ViewToTranslatedWorld[2] ;
	 float4x4    InstancedView_TranslatedWorldToCameraView[2] ;
	 float4x4    InstancedView_CameraViewToTranslatedWorld[2] ;
	 float4x4    InstancedView_ViewToClip[2] ;
	 float4x4    InstancedView_ViewToClipNoAA[2] ;
	 float4x4    InstancedView_ClipToView[2] ;
	 float4x4    InstancedView_ClipToTranslatedWorld[2] ;
	 float4x4    InstancedView_SVPositionToTranslatedWorld[2] ;
	 float4x4    InstancedView_ScreenToRelativeWorld[2] ;
	 float4x4    InstancedView_ScreenToTranslatedWorld[2] ;
	 float4x4    InstancedView_MobileMultiviewShadowTransform[2] ;
	 float4x4    InstancedView_MobileMultiviewDecalTransform[2] ;
	 float4x4    InstancedView_FirstPersonTransform[2] ;
	 float4x4    InstancedView_PrevFirstPersonTransform[2] ;
	 float3    InstancedView_ViewOriginHigh ;
	 float    InstancedView_Padding2316 ;
	 float3    InstancedView_ViewForward ;
	 float    InstancedView_Padding2332 ;
	 float3    InstancedView_ViewUp ;
	 float    InstancedView_Padding2348 ;
	 float3    InstancedView_ViewRight ;
	 float    InstancedView_Padding2364 ;
	 float4    InstancedView_HMDViewNoRollUp[2] ;
	 float4    InstancedView_HMDViewNoRollRight[2] ;
	 float4    InstancedView_InvDeviceZToWorldZTransform[2] ;
	 float4    InstancedView_ScreenPositionScaleBias[2] ;
	 float4    InstancedView_ViewOriginLow[2] ;
	 float4    InstancedView_TranslatedWorldCameraOrigin[2] ;
	 float4    InstancedView_WorldViewOriginHigh[2] ;
	 float4    InstancedView_WorldViewOriginLow[2] ;
	 float4    InstancedView_PreViewTranslationHigh[2] ;
	 float4    InstancedView_PreViewTranslationLow[2] ;
	 float4x4    InstancedView_PrevViewToClip[2] ;
	 float4x4    InstancedView_PrevClipToView[2] ;
	 float4x4    InstancedView_PrevTranslatedWorldToClip[2] ;
	 float4x4    InstancedView_PrevTranslatedWorldToView[2] ;
	 float4x4    InstancedView_PrevViewToTranslatedWorld[2] ;
	 float4x4    InstancedView_PrevTranslatedWorldToCameraView[2] ;
	 float4x4    InstancedView_PrevCameraViewToTranslatedWorld[2] ;
	 float4    InstancedView_PrevTranslatedWorldCameraOrigin[2] ;
	 float4    InstancedView_PrevWorldCameraOriginHigh[2] ;
	 float4    InstancedView_PrevWorldCameraOriginLow[2] ;
	 float4    InstancedView_PrevWorldViewOriginHigh[2] ;
	 float4    InstancedView_PrevWorldViewOriginLow[2] ;
	 float4    InstancedView_PrevPreViewTranslationHigh[2] ;
	 float4    InstancedView_PrevPreViewTranslationLow[2] ;
	 float4    InstancedView_ViewTilePosition[2] ;
	 float4    InstancedView_RelativeWorldCameraOriginTO[2] ;
	 float4    InstancedView_RelativeWorldViewOriginTO[2] ;
	 float4    InstancedView_RelativePreViewTranslationTO[2] ;
	 float4    InstancedView_PrevRelativeWorldCameraOriginTO[2] ;
	 float4    InstancedView_PrevRelativeWorldViewOriginTO[2] ;
	 float4    InstancedView_RelativePrevPreViewTranslationTO[2] ;
	 float4x4    InstancedView_PrevClipToRelativeWorld[2] ;
	 float4x4    InstancedView_PrevScreenToTranslatedWorld[2] ;
	 float4x4    InstancedView_ClipToPrevClip[2] ;
	 float4x4    InstancedView_ClipToPrevClipWithAA[2] ;
	 float4    InstancedView_TemporalAAJitter[2] ;
	 float4    InstancedView_GlobalClippingPlane[2] ;
	 float4    InstancedView_FieldOfViewWideAngles[2] ;
	 float4    InstancedView_PrevFieldOfViewWideAngles[2] ;
	 float4    InstancedView_ViewRectMin[2] ;
	 float4    InstancedView_ViewSizeAndInvSize ;
	 uint4    InstancedView_ViewRectMinAndSize ;
	 float4    InstancedView_LightProbeSizeRatioAndInvSizeRatio ;
	 float4    InstancedView_BufferSizeAndInvSize ;
	 float4    InstancedView_BufferBilinearUVMinMax[2] ;
	 float4    InstancedView_ScreenToViewSpace[2] ;
	 float4    InstancedView_BufferToSceneTextureScale[2] ;
	 float2    InstancedView_ResolutionFractionAndInv ;
	 int    InstancedView_NumSceneColorMSAASamples ;
	 int    InstancedView_Padding4876 ;
	 float4    InstancedView_ProjectionDepthThicknessScale[2] ;
	 float    InstancedView_PreExposure ;
	 float    InstancedView_OneOverPreExposure ;
	 float    InstancedView_Padding4920 ;
	 float    InstancedView_Padding4924 ;
	 float4    InstancedView_DiffuseOverrideParameter ;
	 float4    InstancedView_SpecularOverrideParameter ;
	 float4    InstancedView_NormalOverrideParameter ;
	 float2    InstancedView_RoughnessOverrideParameter ;
	 float    InstancedView_PrevFrameGameTime ;
	 float    InstancedView_PrevFrameRealTime ;
	 float    InstancedView_OutOfBoundsMask ;
	 float    InstancedView_Padding4996 ;
	 float    InstancedView_Padding5000 ;
	 float    InstancedView_Padding5004 ;
	 float4    InstancedView_WorldCameraMovementSinceLastFrame[2] ;
	 float    InstancedView_CullingSign ;
	 float    InstancedView_Padding5044 ;
	 float    InstancedView_Padding5048 ;
	 float    InstancedView_Padding5052 ;
	 float4    InstancedView_NearPlane[2] ;
	 float4    InstancedView_OrthoFarPlane[2] ;
	 float    InstancedView_GameTime ;
	 float    InstancedView_RealTime ;
	 float    InstancedView_DeltaTime ;
	 float    InstancedView_MaterialTextureMipBias ;
	 float    InstancedView_MaterialTextureDerivativeMultiply ;
	 uint    InstancedView_Random ;
	 uint    InstancedView_FrameNumber ;
	 uint    InstancedView_FrameCounter ;
	 uint    InstancedView_StateFrameIndexMod8 ;
	 uint    InstancedView_StateFrameIndex ;
	 uint    InstancedView_StateOutputFrameIndex ;
	 uint    InstancedView_DebugViewModeMask ;
	 uint    InstancedView_WorldIsPaused ;
	 float    InstancedView_CameraCut ;
	 float    InstancedView_UnlitViewmodeMask ;
	 float    InstancedView_Padding5180 ;
	 float4    InstancedView_DirectionalLightColor ;
	 float3    InstancedView_DirectionalLightDirection ;
	 float    InstancedView_Padding5212 ;
	 float4    InstancedView_TranslucencyLightingVolumeMin[2] ;
	 float4    InstancedView_TranslucencyLightingVolumeInvSize[2] ;
	 float4    InstancedView_TemporalAAParams ;
	 float4    InstancedView_CircleDOFParams ;
	 float    InstancedView_DepthOfFieldSensorWidth ;
	 float    InstancedView_DepthOfFieldFocalDistance ;
	 float    InstancedView_DepthOfFieldScale ;
	 float    InstancedView_DepthOfFieldFocalLength ;
	 float    InstancedView_DepthOfFieldFocalRegion ;
	 float    InstancedView_DepthOfFieldNearTransitionRegion ;
	 float    InstancedView_DepthOfFieldFarTransitionRegion ;
	 float    InstancedView_MotionBlurNormalizedToPixel ;
	 float    InstancedView_GeneralPurposeTweak ;
	 float    InstancedView_GeneralPurposeTweak2 ;
	 float    InstancedView_DemosaicVposOffset ;
	 float    InstancedView_DecalDepthBias ;
	 float3    InstancedView_IndirectLightingColorScale ;
	 float    InstancedView_Padding5372 ;
	 float3    InstancedView_PrecomputedIndirectLightingColorScale ;
	 float    InstancedView_Padding5388 ;
	 float3    InstancedView_PrecomputedIndirectSpecularColorScale ;
	 float    InstancedView_Padding5404 ;
	 float4    InstancedView_AtmosphereLightDirection[2] ;
	 float4    InstancedView_AtmosphereLightIlluminanceOnGroundPostTransmittance[2] ;
	 float4    InstancedView_AtmosphereLightIlluminanceOuterSpace[2] ;
	 float4    InstancedView_AtmosphereLightDiscLuminance[2] ;
	 float4    InstancedView_AtmosphereLightDiscCosHalfApexAngle_PPTrans[2] ;
	 float4    InstancedView_SkyViewLutSizeAndInvSize ;
	 float3    InstancedView_SkyCameraTranslatedWorldOrigin ;
	 float    InstancedView_Padding5596 ;
	 float4    InstancedView_SkyPlanetTranslatedWorldCenterAndViewHeight ;
	 float4x4    InstancedView_SkyViewLutReferential ;
	 float4    InstancedView_SkyAtmosphereSkyLuminanceFactor ;
	 float    InstancedView_SkyAtmospherePresentInScene ;
	 float    InstancedView_SkyAtmosphereHeightFogContribution ;
	 float    InstancedView_SkyAtmosphereBottomRadiusKm ;
	 float    InstancedView_SkyAtmosphereTopRadiusKm ;
	 float4    InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize ;
	 float    InstancedView_SkyAtmosphereAerialPerspectiveStartDepthKm ;
	 float    InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution ;
	 float    InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv ;
	 float    InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm ;
	 float    InstancedView_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv ;
	 float    InstancedView_SkyAtmosphereApplyCameraAerialPerspectiveVolume ;
	 float    InstancedView_Padding5752 ;
	 float    InstancedView_Padding5756 ;
	 float3    InstancedView_NormalCurvatureToRoughnessScaleBias ;
	 float    InstancedView_RenderingReflectionCaptureMask ;
	 float    InstancedView_RealTimeReflectionCapture ;
	 float    InstancedView_RealTimeReflectionCapturePreExposure ;
	 float    InstancedView_Padding5784 ;
	 float    InstancedView_Padding5788 ;
	 float4    InstancedView_AmbientCubemapTint ;
	 float    InstancedView_AmbientCubemapIntensity ;
	 float    InstancedView_SkyLightApplyPrecomputedBentNormalShadowingFlag ;
	 float    InstancedView_SkyLightAffectReflectionFlag ;
	 float    InstancedView_SkyLightAffectGlobalIlluminationFlag ;
	 float4    InstancedView_SkyLightColor ;
	 float    InstancedView_SkyLightVolumetricScatteringIntensity ;
	 float    InstancedView_Padding5844 ;
	 float    InstancedView_Padding5848 ;
	 float    InstancedView_Padding5852 ;
	 float4    InstancedView_MobileSkyIrradianceEnvironmentMap[8] ;
	 float    InstancedView_MobilePreviewMode ;
	 float    InstancedView_Padding5988 ;
	 float    InstancedView_Padding5992 ;
	 float    InstancedView_Padding5996 ;
	 float4    InstancedView_HMDEyePaddingOffset[2] ;
	 float    InstancedView_ReflectionCubemapMaxMip ;
	 float    InstancedView_ShowDecalsMask ;
	 uint    InstancedView_DistanceFieldAOSpecularOcclusionMode ;
	 float    InstancedView_IndirectCapsuleSelfShadowingIntensity ;
	 float3    InstancedView_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight ;
	 float    InstancedView_Padding6060 ;
	 int4    InstancedView_StereoPassIndex[2] ;
	 float4    InstancedView_GlobalVolumeTranslatedCenterAndExtent[6] ;
	 float4    InstancedView_GlobalVolumeTranslatedWorldToUVAddAndMul[6] ;
	 float4    InstancedView_GlobalDistanceFieldMipTranslatedWorldToUVScale[6] ;
	 float4    InstancedView_GlobalDistanceFieldMipTranslatedWorldToUVBias[6] ;
	 float    InstancedView_GlobalDistanceFieldMipFactor ;
	 float    InstancedView_GlobalDistanceFieldMipTransition ;
	 int    InstancedView_GlobalDistanceFieldClipmapSizeInPages ;
	 int    InstancedView_Padding6492 ;
	 float3    InstancedView_GlobalDistanceFieldInvPageAtlasSize ;
	 float    InstancedView_Padding6508 ;
	 float3    InstancedView_GlobalDistanceFieldInvCoverageAtlasSize ;
	 float    InstancedView_GlobalVolumeDimension ;
	 float    InstancedView_GlobalVolumeTexelSize ;
	 float    InstancedView_MaxGlobalDFAOConeDistance ;
	 uint    InstancedView_NumGlobalSDFClipmaps ;
	 float    InstancedView_CoveredExpandSurfaceScale ;
	 float    InstancedView_NotCoveredExpandSurfaceScale ;
	 float    InstancedView_NotCoveredMinStepScale ;
	 float    InstancedView_DitheredTransparencyStepThreshold ;
	 float    InstancedView_DitheredTransparencyTraceThreshold ;
	 float    InstancedView_ViewportScaleUI ;
	 float    InstancedView_Padding6564 ;
	 int2    InstancedView_CursorPosition ;
	 float    InstancedView_bCheckerboardSubsurfaceProfileRendering ;
	 float    InstancedView_Padding6580 ;
	 float    InstancedView_Padding6584 ;
	 float    InstancedView_Padding6588 ;
	 float3    InstancedView_VolumetricFogInvGridSize ;
	 float    InstancedView_Padding6604 ;
	 float3    InstancedView_VolumetricFogGridZParams ;
	 float    InstancedView_Padding6620 ;
	 float2    InstancedView_VolumetricFogSVPosToVolumeUV ;
	 float2    InstancedView_VolumetricFogViewGridUVToPrevViewRectUV ;
	 float2    InstancedView_VolumetricFogPrevViewGridRectUVToResourceUV ;
	 float2    InstancedView_VolumetricFogPrevUVMax ;
	 float2    InstancedView_VolumetricFogPrevUVMaxForTemporalBlend ;
	 float    InstancedView_Padding6664 ;
	 float    InstancedView_Padding6668 ;
	 float3    InstancedView_VolumetricFogPrevResourceGridSize ;
	 float    InstancedView_Padding6684 ;
	 float2    InstancedView_VolumetricFogScreenToResourceUV ;
	 float2    InstancedView_VolumetricFogUVMax ;
	 float    InstancedView_VolumetricFogMaxDistance ;
	 float    InstancedView_Padding6708 ;
	 float    InstancedView_Padding6712 ;
	 float    InstancedView_Padding6716 ;
	 float3    InstancedView_VolumetricLightmapWorldToUVScale ;
	 float    InstancedView_Padding6732 ;
	 float3    InstancedView_VolumetricLightmapWorldToUVAdd ;
	 float    InstancedView_Padding6748 ;
	 float3    InstancedView_VolumetricLightmapIndirectionTextureSize ;
	 float    InstancedView_VolumetricLightmapBrickSize ;
	 float3    InstancedView_VolumetricLightmapBrickTexelSize ;
	 float    InstancedView_IndirectLightingCacheShowFlag ;
	 float    InstancedView_EyeToPixelSpreadAngle ;
	 float    InstancedView_Padding6788 ;
	 float    InstancedView_Padding6792 ;
	 float    InstancedView_Padding6796 ;
	 float4    InstancedView_XRPassthroughCameraUVs[2] ;
	 float    InstancedView_GlobalVirtualTextureMipBias ;
	 uint    InstancedView_VirtualTextureFeedbackShift ;
	 uint    InstancedView_VirtualTextureFeedbackMask ;
	 uint    InstancedView_VirtualTextureFeedbackStride ;
	 uint    InstancedView_VirtualTextureFeedbackJitterOffset ;
	 uint    InstancedView_VirtualTextureFeedbackSampleOffset ;
	 uint    InstancedView_Padding6856 ;
	 uint    InstancedView_Padding6860 ;
	 float4    InstancedView_RuntimeVirtualTextureMipLevel ;
	 float2    InstancedView_RuntimeVirtualTexturePackHeight ;
	 float    InstancedView_Padding6888 ;
	 float    InstancedView_Padding6892 ;
	 float4    InstancedView_RuntimeVirtualTextureDebugParams ;
	 int    InstancedView_FarShadowStaticMeshLODBias ;
	 float    InstancedView_MinRoughness ;
	 float    InstancedView_Padding6920 ;
	 float    InstancedView_Padding6924 ;
	 float4    InstancedView_HairRenderInfo ;
	 uint    InstancedView_EnableSkyLight ;
	 uint    InstancedView_HairRenderInfoBits ;
	 uint    InstancedView_HairComponents ;
	 float    InstancedView_bSubsurfacePostprocessEnabled ;
	 float4    InstancedView_SSProfilesTextureSizeAndInvSize ;
	 float4    InstancedView_SSProfilesPreIntegratedTextureSizeAndInvSize ;
	 float4    InstancedView_SpecularProfileTextureSizeAndInvSize ;
	 float3    InstancedView_PhysicsFieldClipmapCenter ;
	 float    InstancedView_PhysicsFieldClipmapDistance ;
	 int    InstancedView_PhysicsFieldClipmapResolution ;
	 int    InstancedView_PhysicsFieldClipmapExponent ;
	 int    InstancedView_PhysicsFieldClipmapCount ;
	 int    InstancedView_PhysicsFieldTargetCount ;
	 int4    InstancedView_PhysicsFieldTargets[32] ;
	 uint4    InstancedView_GPUSceneViewId[2] ;
	 float    InstancedView_ViewResolutionFraction ;
	 float    InstancedView_SubSurfaceColorAsTransmittanceAtDistanceInMeters ;
	 float    InstancedView_Padding7592 ;
	 float    InstancedView_Padding7596 ;
	 float4    InstancedView_TanAndInvTanHalfFOV[2] ;
	 float4    InstancedView_PrevTanAndInvTanHalfFOV[2] ;
	 float4    InstancedView_WorldDepthToPixelWorldRadius[2] ;
	 float4    InstancedView_ScreenRayLengthMultiplier[2] ;
	 float4    InstancedView_GlintLUTParameters0[2] ;
	 float4    InstancedView_GlintLUTParameters1[2] ;
	 float    InstancedView_MaterialMaxEmissiveValue ;
	 int    InstancedView_PostVolumeUserFlags ;
	 int    InstancedView_Padding7800 ;
	 int    InstancedView_Padding7804 ;
	 int4    InstancedView_EnvironmentComponentsFlags ;
 }
 cbuffer AVSM {
	 float4x4    AVSM_TranslatedWorldToShadow[6] ;
	 float3    AVSM_TranslatedWorldOrigin ;
	 float    AVSM_Padding396 ;
	 float4    AVSM_TranslatedWorldPlane ;
	 int2    AVSM_Resolution ;
	 int    AVSM_NumShadowMatrices ;
	 int    AVSM_MaxSampleCount ;
	 int    AVSM_bIsEmpty ;
	 int    AVSM_bIsDirectionalLight ;
	 uint    BindlessSRV_AVSM_LinkedListBuffer ;
	 uint    AVSM_Padding444 ;
	 uint    BindlessSRV_AVSM_IndirectionBuffer ;
	 uint    AVSM_Padding452 ;
	 uint    BindlessSRV_AVSM_SampleBuffer ;
 }
  StructuredBuffer<uint2>  AVSM_LinkedListBuffer ;
  StructuredBuffer<uint4>  AVSM_IndirectionBuffer ;
  StructuredBuffer<uint>  AVSM_SampleBuffer ;
 cbuffer DeferredDecal {
	 uint    BindlessSRV_DeferredDecal_PreviousFrameNormal ;
	 uint    DeferredDecal_Padding4 ;
	 int    DeferredDecal_NormalReprojectionEnabled ;
	 float    DeferredDecal_NormalReprojectionThresholdLow ;
	 float    DeferredDecal_NormalReprojectionThresholdHigh ;
	 float    DeferredDecal_NormalReprojectionThresholdScaleHelper ;
	 float2    DeferredDecal_NormalReprojectionJitter ;
 }
  Texture2D  DeferredDecal_PreviousFrameNormal ;
 cbuffer InstanceVF {
	 uint    BindlessSRV_InstanceVF_VertexFetch_InstanceOriginBuffer ;
	 uint    InstanceVF_Padding4 ;
	 uint    BindlessSRV_InstanceVF_VertexFetch_InstanceTransformBuffer ;
	 uint    InstanceVF_Padding12 ;
	 uint    BindlessSRV_InstanceVF_VertexFetch_InstanceLightmapBuffer ;
	 uint    InstanceVF_Padding20 ;
	 uint    BindlessSRV_InstanceVF_InstanceCustomDataBuffer ;
	 uint    InstanceVF_Padding28 ;
	 int    InstanceVF_NumCustomDataFloats ;
 }
  Buffer<float4>  InstanceVF_VertexFetch_InstanceOriginBuffer ;
  Buffer<float4>  InstanceVF_VertexFetch_InstanceTransformBuffer ;
  Buffer<float4>  InstanceVF_VertexFetch_InstanceLightmapBuffer ;
  Buffer<float>  InstanceVF_InstanceCustomDataBuffer ;
 cbuffer MobileReflectionCapture {
	 float4    MobileReflectionCapture_Params ;
	 uint    BindlessSRV_MobileReflectionCapture_Texture ;
	 uint    MobileReflectionCapture_Padding20 ;
	 uint    BindlessSampler_MobileReflectionCapture_TextureSampler ;
	 uint    MobileReflectionCapture_Padding28 ;
	 uint    BindlessSRV_MobileReflectionCapture_TextureBlend ;
	 uint    MobileReflectionCapture_Padding36 ;
	 uint    BindlessSampler_MobileReflectionCapture_TextureBlendSampler ;
 }
  TextureCube  MobileReflectionCapture_Texture ;
  SamplerState  MobileReflectionCapture_TextureSampler ;
  TextureCube  MobileReflectionCapture_TextureBlend ;
  SamplerState  MobileReflectionCapture_TextureBlendSampler ;
 cbuffer PrimitiveDither {
	 float    PrimitiveDither_LODFactor ;
 }
 cbuffer PrimitiveFade {
	 float2    PrimitiveFade_FadeTimeScaleBias ;
 }
 cbuffer SceneTexturesStruct {
	 uint    BindlessSRV_SceneTexturesStruct_SceneColorTexture ;
	 uint    SceneTexturesStruct_Padding4 ;
	 uint    BindlessSRV_SceneTexturesStruct_SceneDepthTexture ;
	 uint    SceneTexturesStruct_Padding12 ;
	 uint    BindlessSRV_SceneTexturesStruct_ScenePartialDepthTexture ;
	 uint    SceneTexturesStruct_Padding20 ;
	 uint    BindlessSRV_SceneTexturesStruct_GBufferATexture ;
	 uint    SceneTexturesStruct_Padding28 ;
	 uint    BindlessSRV_SceneTexturesStruct_GBufferBTexture ;
	 uint    SceneTexturesStruct_Padding36 ;
	 uint    BindlessSRV_SceneTexturesStruct_GBufferCTexture ;
	 uint    SceneTexturesStruct_Padding44 ;
	 uint    BindlessSRV_SceneTexturesStruct_GBufferDTexture ;
	 uint    SceneTexturesStruct_Padding52 ;
	 uint    BindlessSRV_SceneTexturesStruct_GBufferETexture ;
	 uint    SceneTexturesStruct_Padding60 ;
	 uint    BindlessSRV_SceneTexturesStruct_GBufferFTexture ;
	 uint    SceneTexturesStruct_Padding68 ;
	 uint    BindlessSRV_SceneTexturesStruct_GBufferVelocityTexture ;
	 uint    SceneTexturesStruct_Padding76 ;
	 uint    BindlessSRV_SceneTexturesStruct_ScreenSpaceAOTexture ;
	 uint    SceneTexturesStruct_Padding84 ;
	 uint    BindlessSRV_SceneTexturesStruct_CustomDepthTexture ;
	 uint    SceneTexturesStruct_Padding92 ;
	 uint    BindlessSRV_SceneTexturesStruct_CustomStencilTexture ;
	 uint    SceneTexturesStruct_Padding100 ;
	 uint    BindlessSampler_SceneTexturesStruct_PointClampSampler ;
 }
  Texture2D  SceneTexturesStruct_SceneColorTexture ;
  Texture2D  SceneTexturesStruct_SceneDepthTexture ;
  Texture2D  SceneTexturesStruct_ScenePartialDepthTexture ;
  Texture2D  SceneTexturesStruct_GBufferATexture ;
  Texture2D  SceneTexturesStruct_GBufferBTexture ;
  Texture2D  SceneTexturesStruct_GBufferCTexture ;
  Texture2D  SceneTexturesStruct_GBufferDTexture ;
  Texture2D  SceneTexturesStruct_GBufferETexture ;
  Texture2D  SceneTexturesStruct_GBufferFTexture ;
  Texture2D  SceneTexturesStruct_GBufferVelocityTexture ;
  Texture2D  SceneTexturesStruct_ScreenSpaceAOTexture ;
  Texture2D  SceneTexturesStruct_CustomDepthTexture ;
  Texture2D<uint2>  SceneTexturesStruct_CustomStencilTexture ;
  SamplerState  SceneTexturesStruct_PointClampSampler ;
 cbuffer SingleLayerWater {
	 uint    BindlessSRV_SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture ;
	 uint    SingleLayerWater_Padding4 ;
	 uint    BindlessSampler_SingleLayerWater_SceneColorWithoutSingleLayerWaterSampler ;
	 uint    SingleLayerWater_Padding12 ;
	 uint    BindlessSRV_SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture ;
	 uint    SingleLayerWater_Padding20 ;
	 uint    BindlessSampler_SingleLayerWater_SceneDepthWithoutSingleLayerWaterSampler ;
	 uint    SingleLayerWater_Padding28 ;
	 uint    BindlessSRV_SingleLayerWater_CustomDepthTexture ;
	 uint    SingleLayerWater_Padding36 ;
	 uint    BindlessSRV_SingleLayerWater_CustomStencilTexture ;
	 uint    SingleLayerWater_Padding44 ;
	 uint    BindlessSampler_SingleLayerWater_CustomDepthSampler ;
	 uint    SingleLayerWater_Padding52 ;
	 uint    SingleLayerWater_Padding56 ;
	 uint    SingleLayerWater_Padding60 ;
	 float4    SingleLayerWater_SceneWithoutSingleLayerWaterMinMaxUV ;
	 float4    SingleLayerWater_DistortionParams ;
	 float2    SingleLayerWater_SceneWithoutSingleLayerWaterTextureSize ;
	 float2    SingleLayerWater_SceneWithoutSingleLayerWaterInvTextureSize ;
	 uint    SingleLayerWater_bMainDirectionalLightVSMFiltering ;
	 uint    SingleLayerWater_bSeparateMainDirLightLuminance ;
	 float    SingleLayerWater_Padding120 ;
	 float    SingleLayerWater_Padding124 ;
	 float4x4    SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapTranslatedWorldToLightClipMatrix ;
	 float    SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapFarDepthKm ;
	 float    SingleLayerWater_Padding196 ;
	 uint    BindlessSRV_SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapTexture ;
	 uint    SingleLayerWater_Padding204 ;
	 uint    BindlessSampler_SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapSampler ;
	 uint    SingleLayerWater_Padding212 ;
	 float    SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapStrength ;
	 float    SingleLayerWater_Padding220 ;
	 int3    SingleLayerWater_BlueNoise_Dimensions ;
	 int    SingleLayerWater_Padding236 ;
	 int3    SingleLayerWater_BlueNoise_ModuloMasks ;
	 int    SingleLayerWater_Padding252 ;
	 uint    BindlessSRV_SingleLayerWater_BlueNoise_ScalarTexture ;
	 uint    SingleLayerWater_Padding260 ;
	 uint    BindlessSRV_SingleLayerWater_BlueNoise_Vec2Texture ;
 }
  Texture2D<float3>  SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapTexture ;
  SamplerState  SingleLayerWater_ForwardDirLightCloudShadow_CloudShadowmapSampler ;
  Texture2D  SingleLayerWater_BlueNoise_ScalarTexture ;
  Texture2D  SingleLayerWater_BlueNoise_Vec2Texture ;
  Texture2D  SingleLayerWater_SceneColorWithoutSingleLayerWaterTexture ;
  SamplerState  SingleLayerWater_SceneColorWithoutSingleLayerWaterSampler ;
  Texture2D  SingleLayerWater_SceneDepthWithoutSingleLayerWaterTexture ;
  SamplerState  SingleLayerWater_SceneDepthWithoutSingleLayerWaterSampler ;
  Texture2D  SingleLayerWater_CustomDepthTexture ;
  Texture2D<uint2>  SingleLayerWater_CustomStencilTexture ;
  SamplerState  SingleLayerWater_CustomDepthSampler ;
 cbuffer SubstratePublic {
	 uint    SubstratePublic_MaxBytesPerPixel ;
	 uint    SubstratePublic_MaxClosurePerPixel ;
	 uint    SubstratePublic_bRoughDiffuse ;
	 uint    SubstratePublic_PeelLayersAboveDepth ;
	 uint    SubstratePublic_bRoughnessTracking ;
	 float    SubstratePublic_Padding20 ;
	 float    SubstratePublic_Padding24 ;
	 float    SubstratePublic_Padding28 ;
	 int    SubstratePublic_FirstSliceStoringSubstrateSSSData ;
	 int    SubstratePublic_Padding36 ;
	 uint    BindlessSRV_SubstratePublic_TopLayerTexture ;
	 uint    SubstratePublic_Padding44 ;
	 uint    BindlessSRV_SubstratePublic_MaterialTextureArray ;
 }
  Texture2D<uint>  SubstratePublic_TopLayerTexture ;
  Texture2DArray<uint>  SubstratePublic_MaterialTextureArray ;
 cbuffer MobileSceneTextures {
	 uint    BindlessSRV_MobileSceneTextures_SceneColorTexture ;
	 uint    MobileSceneTextures_Padding4 ;
	 uint    BindlessSampler_MobileSceneTextures_SceneColorTextureSampler ;
	 uint    MobileSceneTextures_Padding12 ;
	 uint    BindlessSRV_MobileSceneTextures_SceneDepthTexture ;
	 uint    MobileSceneTextures_Padding20 ;
	 uint    BindlessSRV_MobileSceneTextures_SceneDepthTextureArray ;
	 uint    MobileSceneTextures_Padding28 ;
	 uint    BindlessSampler_MobileSceneTextures_SceneDepthTextureSampler ;
	 uint    MobileSceneTextures_Padding36 ;
	 uint    BindlessSRV_MobileSceneTextures_ScenePartialDepthTexture ;
	 uint    MobileSceneTextures_Padding44 ;
	 uint    BindlessSampler_MobileSceneTextures_ScenePartialDepthTextureSampler ;
	 uint    MobileSceneTextures_Padding52 ;
	 uint    BindlessSRV_MobileSceneTextures_CustomDepthTexture ;
	 uint    MobileSceneTextures_Padding60 ;
	 uint    BindlessSRV_MobileSceneTextures_CustomDepthTextureArray ;
	 uint    MobileSceneTextures_Padding68 ;
	 uint    BindlessSampler_MobileSceneTextures_CustomDepthTextureSampler ;
	 uint    MobileSceneTextures_Padding76 ;
	 uint    BindlessSRV_MobileSceneTextures_CustomStencilTexture ;
	 uint    MobileSceneTextures_Padding84 ;
	 uint    BindlessSRV_MobileSceneTextures_CustomStencilTextureArray ;
	 uint    MobileSceneTextures_Padding92 ;
	 uint    BindlessSRV_MobileSceneTextures_SceneVelocityTexture ;
	 uint    MobileSceneTextures_Padding100 ;
	 uint    BindlessSampler_MobileSceneTextures_SceneVelocityTextureSampler ;
	 uint    MobileSceneTextures_Padding108 ;
	 uint    BindlessSRV_MobileSceneTextures_GBufferATexture ;
	 uint    MobileSceneTextures_Padding116 ;
	 uint    BindlessSRV_MobileSceneTextures_GBufferBTexture ;
	 uint    MobileSceneTextures_Padding124 ;
	 uint    BindlessSRV_MobileSceneTextures_GBufferCTexture ;
	 uint    MobileSceneTextures_Padding132 ;
	 uint    BindlessSRV_MobileSceneTextures_GBufferDTexture ;
	 uint    MobileSceneTextures_Padding140 ;
	 uint    BindlessSRV_MobileSceneTextures_SceneDepthAuxTexture ;
	 uint    MobileSceneTextures_Padding148 ;
	 uint    BindlessSRV_MobileSceneTextures_SceneDepthAuxTextureArray ;
	 uint    MobileSceneTextures_Padding156 ;
	 uint    BindlessSRV_MobileSceneTextures_LocalLightTextureA ;
	 uint    MobileSceneTextures_Padding164 ;
	 uint    BindlessSRV_MobileSceneTextures_LocalLightTextureB ;
	 uint    MobileSceneTextures_Padding172 ;
	 uint    BindlessSampler_MobileSceneTextures_GBufferATextureSampler ;
	 uint    MobileSceneTextures_Padding180 ;
	 uint    BindlessSampler_MobileSceneTextures_GBufferBTextureSampler ;
	 uint    MobileSceneTextures_Padding188 ;
	 uint    BindlessSampler_MobileSceneTextures_GBufferCTextureSampler ;
	 uint    MobileSceneTextures_Padding196 ;
	 uint    BindlessSampler_MobileSceneTextures_GBufferDTextureSampler ;
	 uint    MobileSceneTextures_Padding204 ;
	 uint    BindlessSampler_MobileSceneTextures_SceneDepthAuxTextureSampler ;
 }
  Texture2D  MobileSceneTextures_SceneColorTexture ;
  SamplerState  MobileSceneTextures_SceneColorTextureSampler ;
  Texture2D  MobileSceneTextures_SceneDepthTexture ;
  Texture2DArray  MobileSceneTextures_SceneDepthTextureArray ;
  SamplerState  MobileSceneTextures_SceneDepthTextureSampler ;
  Texture2D  MobileSceneTextures_ScenePartialDepthTexture ;
  SamplerState  MobileSceneTextures_ScenePartialDepthTextureSampler ;
  Texture2D  MobileSceneTextures_CustomDepthTexture ;
  Texture2DArray  MobileSceneTextures_CustomDepthTextureArray ;
  SamplerState  MobileSceneTextures_CustomDepthTextureSampler ;
  Texture2D<uint2>  MobileSceneTextures_CustomStencilTexture ;
  Texture2DArray<uint2>  MobileSceneTextures_CustomStencilTextureArray ;
  Texture2D  MobileSceneTextures_SceneVelocityTexture ;
  SamplerState  MobileSceneTextures_SceneVelocityTextureSampler ;
  Texture2D  MobileSceneTextures_GBufferATexture ;
  Texture2D  MobileSceneTextures_GBufferBTexture ;
  Texture2D  MobileSceneTextures_GBufferCTexture ;
  Texture2D  MobileSceneTextures_GBufferDTexture ;
  Texture2D  MobileSceneTextures_SceneDepthAuxTexture ;
  Texture2DArray  MobileSceneTextures_SceneDepthAuxTextureArray ;
  Texture2D  MobileSceneTextures_LocalLightTextureA ;
  Texture2D  MobileSceneTextures_LocalLightTextureB ;
  SamplerState  MobileSceneTextures_GBufferATextureSampler ;
  SamplerState  MobileSceneTextures_GBufferBTextureSampler ;
  SamplerState  MobileSceneTextures_GBufferCTextureSampler ;
  SamplerState  MobileSceneTextures_GBufferDTextureSampler ;
  SamplerState  MobileSceneTextures_SceneDepthAuxTextureSampler ;
 cbuffer InstanceCulling {
	 uint    BindlessSRV_InstanceCulling_InstanceIdsBuffer ;
	 uint    InstanceCulling_Padding4 ;
	 uint    BindlessSRV_InstanceCulling_PageInfoBuffer ;
	 uint    InstanceCulling_Padding12 ;
	 uint    InstanceCulling_BufferCapacity ;
 }
  StructuredBuffer<uint>  InstanceCulling_InstanceIdsBuffer ;
  StructuredBuffer<uint>  InstanceCulling_PageInfoBuffer ;
 cbuffer Primitive {
	 uint    Primitive_Flags ;
	 uint    Primitive_InstanceSceneDataOffset ;
	 uint    Primitive_NumInstanceSceneDataEntries ;
	 int    Primitive_SingleCaptureIndex ;
	 float3    Primitive_PositionHigh ;
	 uint    Primitive_PrimitiveComponentId ;
	 float4x4    Primitive_LocalToRelativeWorld ;
	 float4x4    Primitive_RelativeWorldToLocal ;
	 float4x4    Primitive_PreviousLocalToRelativeWorld ;
	 float4x4    Primitive_PreviousRelativeWorldToLocal ;
	 float4x4    Primitive_WorldToPreviousWorld ;
	 float3    Primitive_InvNonUniformScale ;
	 float    Primitive_ObjectBoundsX ;
	 float4    Primitive_ObjectWorldPositionHighAndRadius ;
	 float3    Primitive_ObjectWorldPositionLow ;
	 float    Primitive_MinMaterialDisplacement ;
	 float3    Primitive_ActorWorldPositionHigh ;
	 float    Primitive_MaxMaterialDisplacement ;
	 float3    Primitive_ActorWorldPositionLow ;
	 uint    Primitive_LightmapUVIndex ;
	 float3    Primitive_ObjectOrientation ;
	 uint    Primitive_LightmapDataIndex ;
	 float4    Primitive_NonUniformScale ;
	 float3    Primitive_PreSkinnedLocalBoundsMin ;
	 uint    Primitive_NaniteResourceID ;
	 float3    Primitive_PreSkinnedLocalBoundsMax ;
	 uint    Primitive_NaniteHierarchyOffset ;
	 float3    Primitive_LocalObjectBoundsMin ;
	 float    Primitive_ObjectBoundsY ;
	 float3    Primitive_LocalObjectBoundsMax ;
	 float    Primitive_ObjectBoundsZ ;
	 float3    Primitive_InstanceLocalBoundsCenter ;
	 uint    Primitive_InstancePayloadDataOffset ;
	 float3    Primitive_InstanceLocalBoundsExtent ;
	 uint    Primitive_InstancePayloadDataStride ;
	 uint    Primitive_InstancePayloadExtensionSize ;
	 uint    Primitive_Padding564 ;
	 float2    Primitive_WireframeAndPrimitiveColor ;
	 uint    Primitive_PackedNaniteFlags ;
	 int    Primitive_PersistentPrimitiveIndex ;
	 float2    Primitive_InstanceDrawDistanceMinMaxSquared ;
	 float    Primitive_InstanceWPODisableDistanceSquared ;
	 float    Primitive_PixelProgrammableDistanceSquared ;
	 float    Primitive_MaterialDisplacementFadeOutSize ;
	 float    Primitive_Padding604 ;
	 uint2    Primitive_MeshPaintTextureDescriptor ;
	 uint    Primitive_NaniteRayTracingDataOffset ;
	 float    Primitive_MaxWPOExtent ;
	 uint    Primitive_CustomStencilValueAndMask ;
	 uint    Primitive_VisibilityFlags ;
	 uint    Primitive_Padding632 ;
	 uint    Primitive_Padding636 ;
	 float4    Primitive_CustomPrimitiveData[9] ;
 }
 cbuffer Scene {
	 uint    BindlessSRV_Scene_GPUScene_GPUSceneInstanceSceneData ;
	 uint    Scene_Padding4 ;
	 uint    BindlessSRV_Scene_GPUScene_GPUSceneInstancePayloadData ;
	 uint    Scene_Padding12 ;
	 uint    BindlessSRV_Scene_GPUScene_GPUScenePrimitiveSceneData ;
	 uint    Scene_Padding20 ;
	 uint    BindlessSRV_Scene_GPUScene_GPUSceneLightmapData ;
	 uint    Scene_Padding28 ;
	 uint    BindlessSRV_Scene_GPUScene_GPUSceneLightData ;
	 uint    Scene_Padding36 ;
	 uint    Scene_GPUScene_InstanceDataSOAStride ;
	 uint    Scene_GPUScene_GPUSceneFrameNumber ;
	 int    Scene_GPUScene_NumInstances ;
	 int    Scene_GPUScene_NumScenePrimitives ;
	 float    Scene_Padding56 ;
	 float    Scene_Padding60 ;
	 uint    BindlessSRV_Scene_MeshPaint_PageTableTexture ;
	 uint    Scene_Padding68 ;
	 uint    BindlessSRV_Scene_MeshPaint_PhysicalTexture ;
	 uint    Scene_Padding76 ;
	 uint4    Scene_MeshPaint_PackedUniform ;
	 uint    Scene_NaniteMaterials_PrimitiveMaterialElementStride ;
	 uint    Scene_Padding100 ;
	 uint    BindlessSRV_Scene_NaniteMaterials_PrimitiveMaterialData ;
	 uint    Scene_Padding108 ;
	 uint    BindlessSRV_Scene_NaniteMaterials_MaterialData ;
	 float    Scene_Padding116 ;
	 float    Scene_Padding120 ;
	 float    Scene_Padding124 ;
	 uint    BindlessSRV_Scene_NaniteSkinning_SkinningHeaders ;
	 uint    Scene_Padding132 ;
	 uint    BindlessSRV_Scene_NaniteSkinning_BoneHierarchy ;
	 uint    Scene_Padding140 ;
	 uint    BindlessSRV_Scene_NaniteSkinning_BoneObjectSpace ;
	 uint    Scene_Padding148 ;
	 uint    BindlessSRV_Scene_NaniteSkinning_BoneTransforms ;
	 float    Scene_Padding156 ;
	 float2    Scene_SplineMesh_SplineTextureInvExtent ;
	 uint    BindlessSRV_Scene_SplineMesh_SplinePosTexture ;
	 uint    Scene_Padding172 ;
	 uint    BindlessSRV_Scene_SplineMesh_SplineRotTexture ;
	 uint    Scene_Padding180 ;
	 uint    BindlessSampler_Scene_SplineMesh_SplineSampler ;
 }
  StructuredBuffer<float4>  Scene_GPUScene_GPUSceneInstanceSceneData ;
  StructuredBuffer<float4>  Scene_GPUScene_GPUSceneInstancePayloadData ;
  StructuredBuffer<float4>  Scene_GPUScene_GPUScenePrimitiveSceneData ;
  StructuredBuffer<float4>  Scene_GPUScene_GPUSceneLightmapData ;
  StructuredBuffer<FLightSceneData>  Scene_GPUScene_GPUSceneLightData ;
  Texture2D<uint4>  Scene_MeshPaint_PageTableTexture ;
  Texture2D<float4>  Scene_MeshPaint_PhysicalTexture ;
  ByteAddressBuffer  Scene_NaniteMaterials_PrimitiveMaterialData ;
  ByteAddressBuffer  Scene_NaniteMaterials_MaterialData ;
  ByteAddressBuffer  Scene_NaniteSkinning_SkinningHeaders ;
  ByteAddressBuffer  Scene_NaniteSkinning_BoneHierarchy ;
  ByteAddressBuffer  Scene_NaniteSkinning_BoneObjectSpace ;
  ByteAddressBuffer  Scene_NaniteSkinning_BoneTransforms ;
  Texture2D<float4>  Scene_SplineMesh_SplinePosTexture ;
  Texture2D<float4>  Scene_SplineMesh_SplineRotTexture ;
  SamplerState  Scene_SplineMesh_SplineSampler ;
 cbuffer BatchedPrimitive {
  float4    BatchedPrimitive_Data [((16u*1024u)/16u)];
 }
 cbuffer HairCardsVF {
	 uint    HairCardsVF_Flags ;
	 uint    HairCardsVF_LayoutIndex ;
	 uint    HairCardsVF_TextureCount ;
	 uint    HairCardsVF_AttributeTextureIndex ;
	 uint    HairCardsVF_AttributeChannelIndex ;
	 uint    HairCardsVF_MaxVertexCount ;
	 float    HairCardsVF_CoverageBias ;
	 float    HairCardsVF_Padding28 ;
	 uint    BindlessSRV_HairCardsVF_PositionBuffer ;
	 uint    HairCardsVF_Padding36 ;
	 uint    BindlessSRV_HairCardsVF_PreviousPositionBuffer ;
	 uint    HairCardsVF_Padding44 ;
	 uint    BindlessSRV_HairCardsVF_NormalsBuffer ;
	 uint    HairCardsVF_Padding52 ;
	 uint    BindlessSRV_HairCardsVF_UVsBuffer ;
	 uint    HairCardsVF_Padding60 ;
	 uint    BindlessSRV_HairCardsVF_MaterialsBuffer ;
	 uint    HairCardsVF_Padding68 ;
	 uint    BindlessSRV_HairCardsVF_Texture0Texture ;
	 uint    HairCardsVF_Padding76 ;
	 uint    BindlessSampler_HairCardsVF_Texture0Sampler ;
	 uint    HairCardsVF_Padding84 ;
	 uint    BindlessSRV_HairCardsVF_Texture1Texture ;
	 uint    HairCardsVF_Padding92 ;
	 uint    BindlessSampler_HairCardsVF_Texture1Sampler ;
	 uint    HairCardsVF_Padding100 ;
	 uint    BindlessSRV_HairCardsVF_Texture2Texture ;
	 uint    HairCardsVF_Padding108 ;
	 uint    BindlessSampler_HairCardsVF_Texture2Sampler ;
	 uint    HairCardsVF_Padding116 ;
	 uint    BindlessSRV_HairCardsVF_Texture3Texture ;
	 uint    HairCardsVF_Padding124 ;
	 uint    BindlessSampler_HairCardsVF_Texture3Sampler ;
	 uint    HairCardsVF_Padding132 ;
	 uint    BindlessSRV_HairCardsVF_Texture4Texture ;
	 uint    HairCardsVF_Padding140 ;
	 uint    BindlessSampler_HairCardsVF_Texture4Sampler ;
	 uint    HairCardsVF_Padding148 ;
	 uint    BindlessSRV_HairCardsVF_Texture5Texture ;
	 uint    HairCardsVF_Padding156 ;
	 uint    BindlessSampler_HairCardsVF_Texture5Sampler ;
 }
  Buffer<float4>  HairCardsVF_PositionBuffer ;
  Buffer<float4>  HairCardsVF_PreviousPositionBuffer ;
  Buffer<float4>  HairCardsVF_NormalsBuffer ;
  Buffer<float4>  HairCardsVF_UVsBuffer ;
  Buffer<float4>  HairCardsVF_MaterialsBuffer ;
  Texture2D<float4>  HairCardsVF_Texture0Texture ;
  SamplerState  HairCardsVF_Texture0Sampler ;
  Texture2D<float4>  HairCardsVF_Texture1Texture ;
  SamplerState  HairCardsVF_Texture1Sampler ;
  Texture2D<float4>  HairCardsVF_Texture2Texture ;
  SamplerState  HairCardsVF_Texture2Sampler ;
  Texture2D<float4>  HairCardsVF_Texture3Texture ;
  SamplerState  HairCardsVF_Texture3Sampler ;
  Texture2D<float4>  HairCardsVF_Texture4Texture ;
  SamplerState  HairCardsVF_Texture4Sampler ;
  Texture2D<float4>  HairCardsVF_Texture5Texture ;
  SamplerState  HairCardsVF_Texture5Sampler ;
 cbuffer HairStrandsVF {
	 float    HairStrandsVF_Density ;
	 float    HairStrandsVF_Radius ;
	 float    HairStrandsVF_RootScale ;
	 float    HairStrandsVF_TipScale ;
	 float    HairStrandsVF_Length ;
	 float    HairStrandsVF_LengthScale ;
	 float    HairStrandsVF_RaytracingRadiusScale ;
	 uint    HairStrandsVF_RegisteredIndex ;
	 uint    HairStrandsVF_GroupIndex ;
	 uint    HairStrandsVF_GroupCount ;
	 uint    HairStrandsVF_PointCount ;
	 uint    HairStrandsVF_CurveCount ;
	 uint    HairStrandsVF_RaytracingProceduralSplits ;
	 uint    HairStrandsVF_Flags ;
	 uint    HairStrandsVF_bSimulation ;
	 uint    HairStrandsVF_bSingleGuide ;
	 float3    HairStrandsVF_PositionOffset ;
	 float    HairStrandsVF_Padding76 ;
	 float3    HairStrandsVF_PrevPositionOffset ;
	 float    HairStrandsVF_Padding92 ;
	 float4x4    HairStrandsVF_LocalToWorldPrimitiveTransform ;
	 float4x4    HairStrandsVF_LocalToTranslatedWorldPrimitiveTransform ;
	 uint    HairStrandsVF_CurveAttributeIndexToChunkDivAsShift ;
	 uint    HairStrandsVF_CurveAttributeChunkElementCount ;
	 uint    HairStrandsVF_CurveAttributeChunkStrideInBytes ;
	 uint    HairStrandsVF_PointAttributeIndexToChunkDivAsShift ;
	 uint    HairStrandsVF_PointAttributeChunkElementCount ;
	 uint    HairStrandsVF_PointAttributeChunkStrideInBytes ;
	 uint    HairStrandsVF_Padding248 ;
	 uint    HairStrandsVF_Padding252 ;
	 uint4    HairStrandsVF_CurveAttributeOffsets[2] ;
	 uint4    HairStrandsVF_PointAttributeOffsets[1] ;
	 uint    BindlessSRV_HairStrandsVF_PositionBuffer ;
	 uint    HairStrandsVF_Padding308 ;
	 uint    BindlessSRV_HairStrandsVF_PositionOffsetBuffer ;
	 uint    HairStrandsVF_Padding316 ;
	 uint    BindlessSRV_HairStrandsVF_CurveBuffer ;
	 uint    HairStrandsVF_Padding324 ;
	 uint    BindlessSRV_HairStrandsVF_PointToCurveBuffer ;
	 uint    HairStrandsVF_Padding332 ;
	 uint    BindlessSRV_HairStrandsVF_TangentBuffer ;
	 uint    HairStrandsVF_Padding340 ;
	 uint    BindlessSRV_HairStrandsVF_CurveAttributeBuffer ;
	 uint    HairStrandsVF_Padding348 ;
	 uint    BindlessSRV_HairStrandsVF_PointAttributeBuffer ;
	 float    HairStrandsVF_Padding356 ;
	 float    HairStrandsVF_Padding360 ;
	 float    HairStrandsVF_Padding364 ;
	 uint    BindlessSRV_HairStrandsVF_PreviousPositionBuffer ;
	 uint    HairStrandsVF_Padding372 ;
	 uint    BindlessSRV_HairStrandsVF_PreviousPositionOffsetBuffer ;
	 float    HairStrandsVF_Padding380 ;
	 uint    HairStrandsVF_bCullingEnable ;
	 uint    HairStrandsVF_Padding388 ;
	 uint    BindlessSRV_HairStrandsVF_CullingIndexBuffer ;
 }
  ByteAddressBuffer  HairStrandsVF_PositionBuffer ;
  StructuredBuffer<float4>  HairStrandsVF_PositionOffsetBuffer ;
  ByteAddressBuffer  HairStrandsVF_CurveBuffer ;
  ByteAddressBuffer  HairStrandsVF_PointToCurveBuffer ;
  Buffer<float4>  HairStrandsVF_TangentBuffer ;
  ByteAddressBuffer  HairStrandsVF_CurveAttributeBuffer ;
  ByteAddressBuffer  HairStrandsVF_PointAttributeBuffer ;
  ByteAddressBuffer  HairStrandsVF_PreviousPositionBuffer ;
  StructuredBuffer<float4>  HairStrandsVF_PreviousPositionOffsetBuffer ;
  Buffer<uint>  HairStrandsVF_CullingIndexBuffer ;
 cbuffer SpeedTreeData {
	 float4    SpeedTreeData_WindVector ;
	 float4    SpeedTreeData_WindGlobal ;
	 float4    SpeedTreeData_WindBranch ;
	 float4    SpeedTreeData_WindBranchTwitch ;
	 float4    SpeedTreeData_WindBranchWhip ;
	 float4    SpeedTreeData_WindBranchAnchor ;
	 float4    SpeedTreeData_WindBranchAdherences ;
	 float4    SpeedTreeData_WindTurbulences ;
	 float4    SpeedTreeData_WindLeaf1Ripple ;
	 float4    SpeedTreeData_WindLeaf1Tumble ;
	 float4    SpeedTreeData_WindLeaf1Twitch ;
	 float4    SpeedTreeData_WindLeaf2Ripple ;
	 float4    SpeedTreeData_WindLeaf2Tumble ;
	 float4    SpeedTreeData_WindLeaf2Twitch ;
	 float4    SpeedTreeData_WindFrondRipple ;
	 float4    SpeedTreeData_WindRollingBranch ;
	 float4    SpeedTreeData_WindRollingLeafAndDirection ;
	 float4    SpeedTreeData_WindRollingNoise ;
	 float4    SpeedTreeData_WindAnimation ;
	 float4    SpeedTreeData_PrevWindVector ;
	 float4    SpeedTreeData_PrevWindGlobal ;
	 float4    SpeedTreeData_PrevWindBranch ;
	 float4    SpeedTreeData_PrevWindBranchTwitch ;
	 float4    SpeedTreeData_PrevWindBranchWhip ;
	 float4    SpeedTreeData_PrevWindBranchAnchor ;
	 float4    SpeedTreeData_PrevWindBranchAdherences ;
	 float4    SpeedTreeData_PrevWindTurbulences ;
	 float4    SpeedTreeData_PrevWindLeaf1Ripple ;
	 float4    SpeedTreeData_PrevWindLeaf1Tumble ;
	 float4    SpeedTreeData_PrevWindLeaf1Twitch ;
	 float4    SpeedTreeData_PrevWindLeaf2Ripple ;
	 float4    SpeedTreeData_PrevWindLeaf2Tumble ;
	 float4    SpeedTreeData_PrevWindLeaf2Twitch ;
	 float4    SpeedTreeData_PrevWindFrondRipple ;
	 float4    SpeedTreeData_PrevWindRollingBranch ;
	 float4    SpeedTreeData_PrevWindRollingLeafAndDirection ;
	 float4    SpeedTreeData_PrevWindRollingNoise ;
	 float4    SpeedTreeData_PrevWindAnimation ;
 }
 cbuffer Atmosphere {
	 float    Atmosphere_MultiScatteringFactor ;
	 float    Atmosphere_BottomRadiusKm ;
	 float    Atmosphere_TopRadiusKm ;
	 float    Atmosphere_RayleighDensityExpScale ;
	 float4    Atmosphere_RayleighScattering ;
	 float4    Atmosphere_MieScattering ;
	 float    Atmosphere_MieDensityExpScale ;
	 float    Atmosphere_Padding52 ;
	 float    Atmosphere_Padding56 ;
	 float    Atmosphere_Padding60 ;
	 float4    Atmosphere_MieExtinction ;
	 float    Atmosphere_MiePhaseG ;
	 float    Atmosphere_Padding84 ;
	 float    Atmosphere_Padding88 ;
	 float    Atmosphere_Padding92 ;
	 float4    Atmosphere_MieAbsorption ;
	 float    Atmosphere_AbsorptionDensity0LayerWidth ;
	 float    Atmosphere_AbsorptionDensity0ConstantTerm ;
	 float    Atmosphere_AbsorptionDensity0LinearTerm ;
	 float    Atmosphere_AbsorptionDensity1ConstantTerm ;
	 float    Atmosphere_AbsorptionDensity1LinearTerm ;
	 float    Atmosphere_Padding132 ;
	 float    Atmosphere_Padding136 ;
	 float    Atmosphere_Padding140 ;
	 float4    Atmosphere_AbsorptionExtinction ;
	 float4    Atmosphere_GroundAlbedo ;
 }
 cbuffer BlueNoise {
	 int3    BlueNoise_Dimensions ;
	 int    BlueNoise_Padding12 ;
	 int3    BlueNoise_ModuloMasks ;
	 int    BlueNoise_Padding28 ;
	 uint    BindlessSRV_BlueNoise_ScalarTexture ;
	 uint    BlueNoise_Padding36 ;
	 uint    BindlessSRV_BlueNoise_Vec2Texture ;
 }
  Texture2D  BlueNoise_ScalarTexture ;
  Texture2D  BlueNoise_Vec2Texture ;
 cbuffer BasePass {
	 uint    BasePass_Forward_NumLocalLights ;
	 uint    BasePass_Forward_NumReflectionCaptures ;
	 uint    BasePass_Forward_HasDirectionalLight ;
	 uint    BasePass_Forward_NumGridCells ;
	 int3    BasePass_Forward_CulledGridSize ;
	 uint    BasePass_Forward_MaxCulledLightsPerCell ;
	 uint    BasePass_Forward_LightGridPixelSizeShift ;
	 uint    BasePass_Padding36 ;
	 uint    BasePass_Padding40 ;
	 uint    BasePass_Padding44 ;
	 float3    BasePass_Forward_LightGridZParams ;
	 float    BasePass_Padding60 ;
	 float3    BasePass_Forward_DirectionalLightDirection ;
	 float    BasePass_Forward_DirectionalLightSourceRadius ;
	 float    BasePass_Forward_DirectionalLightSoftSourceRadius ;
	 float    BasePass_Padding84 ;
	 float    BasePass_Padding88 ;
	 float    BasePass_Padding92 ;
	 float3    BasePass_Forward_DirectionalLightColor ;
	 float    BasePass_Forward_DirectionalLightVolumetricScatteringIntensity ;
	 float    BasePass_Forward_DirectionalLightSpecularScale ;
	 float    BasePass_Forward_DirectionalLightDiffuseScale ;
	 uint    BasePass_Forward_DirectionalLightShadowMapChannelMask ;
	 uint    BasePass_Padding124 ;
	 float2    BasePass_Forward_DirectionalLightDistanceFadeMAD ;
	 uint    BasePass_Forward_NumDirectionalLightCascades ;
	 int    BasePass_Forward_DirectionalLightVSM ;
	 float4    BasePass_Forward_CascadeEndDepths ;
	 float4x4    BasePass_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    BasePass_Forward_DirectionalLightShadowmapMinMax[4] ;
	 float4    BasePass_Forward_DirectionalLightShadowmapAtlasBufferSize ;
	 float    BasePass_Forward_DirectionalLightDepthBias ;
	 uint    BasePass_Forward_DirectionalLightUseStaticShadowing ;
	 uint    BasePass_Forward_SimpleLightsEndIndex ;
	 uint    BasePass_Forward_ClusteredDeferredSupportedEndIndex ;
	 uint    BasePass_Forward_MegaLightsSupportedStartIndex ;
	 uint    BasePass_Padding516 ;
	 uint    BasePass_Padding520 ;
	 uint    BasePass_Padding524 ;
	 float4    BasePass_Forward_DirectionalLightStaticShadowBufferSize ;
	 float4x4    BasePass_Forward_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    BasePass_Forward_DirectLightingShowFlag ;
	 uint    BasePass_Forward_LightFunctionAtlasLightIndex ;
	 uint    BasePass_Forward_bAffectsTranslucentLighting ;
	 uint    BasePass_Padding620 ;
	 uint    BindlessSRV_BasePass_Forward_DirectionalLightShadowmapAtlas ;
	 uint    BasePass_Padding628 ;
	 uint    BindlessSampler_BasePass_Forward_ShadowmapSampler ;
	 uint    BasePass_Padding636 ;
	 uint    BindlessSRV_BasePass_Forward_DirectionalLightStaticShadowmap ;
	 uint    BasePass_Padding644 ;
	 uint    BindlessSampler_BasePass_Forward_StaticShadowmapSampler ;
	 uint    BasePass_Padding652 ;
	 uint    BindlessSRV_BasePass_Forward_ForwardLocalLightBuffer ;
	 uint    BasePass_Padding660 ;
	 uint    BindlessSRV_BasePass_Forward_NumCulledLightsGrid ;
	 uint    BasePass_Padding668 ;
	 uint    BindlessSRV_BasePass_Forward_CulledLightDataGrid32Bit ;
	 uint    BasePass_Padding676 ;
	 uint    BindlessSRV_BasePass_Forward_CulledLightDataGrid16Bit ;
	 float    BasePass_Padding684 ;
	 uint    BasePass_ForwardISR_NumLocalLights ;
	 uint    BasePass_ForwardISR_NumReflectionCaptures ;
	 uint    BasePass_ForwardISR_HasDirectionalLight ;
	 uint    BasePass_ForwardISR_NumGridCells ;
	 int3    BasePass_ForwardISR_CulledGridSize ;
	 uint    BasePass_ForwardISR_MaxCulledLightsPerCell ;
	 uint    BasePass_ForwardISR_LightGridPixelSizeShift ;
	 uint    BasePass_Padding724 ;
	 uint    BasePass_Padding728 ;
	 uint    BasePass_Padding732 ;
	 float3    BasePass_ForwardISR_LightGridZParams ;
	 float    BasePass_Padding748 ;
	 float3    BasePass_ForwardISR_DirectionalLightDirection ;
	 float    BasePass_ForwardISR_DirectionalLightSourceRadius ;
	 float    BasePass_ForwardISR_DirectionalLightSoftSourceRadius ;
	 float    BasePass_Padding772 ;
	 float    BasePass_Padding776 ;
	 float    BasePass_Padding780 ;
	 float3    BasePass_ForwardISR_DirectionalLightColor ;
	 float    BasePass_ForwardISR_DirectionalLightVolumetricScatteringIntensity ;
	 float    BasePass_ForwardISR_DirectionalLightSpecularScale ;
	 float    BasePass_ForwardISR_DirectionalLightDiffuseScale ;
	 uint    BasePass_ForwardISR_DirectionalLightShadowMapChannelMask ;
	 uint    BasePass_Padding812 ;
	 float2    BasePass_ForwardISR_DirectionalLightDistanceFadeMAD ;
	 uint    BasePass_ForwardISR_NumDirectionalLightCascades ;
	 int    BasePass_ForwardISR_DirectionalLightVSM ;
	 float4    BasePass_ForwardISR_CascadeEndDepths ;
	 float4x4    BasePass_ForwardISR_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    BasePass_ForwardISR_DirectionalLightShadowmapMinMax[4] ;
	 float4    BasePass_ForwardISR_DirectionalLightShadowmapAtlasBufferSize ;
	 float    BasePass_ForwardISR_DirectionalLightDepthBias ;
	 uint    BasePass_ForwardISR_DirectionalLightUseStaticShadowing ;
	 uint    BasePass_ForwardISR_SimpleLightsEndIndex ;
	 uint    BasePass_ForwardISR_ClusteredDeferredSupportedEndIndex ;
	 uint    BasePass_ForwardISR_MegaLightsSupportedStartIndex ;
	 uint    BasePass_Padding1204 ;
	 uint    BasePass_Padding1208 ;
	 uint    BasePass_Padding1212 ;
	 float4    BasePass_ForwardISR_DirectionalLightStaticShadowBufferSize ;
	 float4x4    BasePass_ForwardISR_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    BasePass_ForwardISR_DirectLightingShowFlag ;
	 uint    BasePass_ForwardISR_LightFunctionAtlasLightIndex ;
	 uint    BasePass_ForwardISR_bAffectsTranslucentLighting ;
	 uint    BasePass_Padding1308 ;
	 uint    BindlessSRV_BasePass_ForwardISR_DirectionalLightShadowmapAtlas ;
	 uint    BasePass_Padding1316 ;
	 uint    BindlessSampler_BasePass_ForwardISR_ShadowmapSampler ;
	 uint    BasePass_Padding1324 ;
	 uint    BindlessSRV_BasePass_ForwardISR_DirectionalLightStaticShadowmap ;
	 uint    BasePass_Padding1332 ;
	 uint    BindlessSampler_BasePass_ForwardISR_StaticShadowmapSampler ;
	 uint    BasePass_Padding1340 ;
	 uint    BindlessSRV_BasePass_ForwardISR_ForwardLocalLightBuffer ;
	 uint    BasePass_Padding1348 ;
	 uint    BindlessSRV_BasePass_ForwardISR_NumCulledLightsGrid ;
	 uint    BasePass_Padding1356 ;
	 uint    BindlessSRV_BasePass_ForwardISR_CulledLightDataGrid32Bit ;
	 uint    BasePass_Padding1364 ;
	 uint    BindlessSRV_BasePass_ForwardISR_CulledLightDataGrid16Bit ;
	 float    BasePass_Padding1372 ;
	 float4    BasePass_Reflection_SkyLightParameters ;
	 uint    BindlessSRV_BasePass_Reflection_SkyLightCubemap ;
	 uint    BasePass_Padding1396 ;
	 uint    BindlessSampler_BasePass_Reflection_SkyLightCubemapSampler ;
	 uint    BasePass_Padding1404 ;
	 uint    BindlessSRV_BasePass_Reflection_SkyLightBlendDestinationCubemap ;
	 uint    BasePass_Padding1412 ;
	 uint    BindlessSampler_BasePass_Reflection_SkyLightBlendDestinationCubemapSampler ;
	 uint    BasePass_Padding1420 ;
	 uint    BindlessSRV_BasePass_Reflection_ReflectionCubemap ;
	 uint    BasePass_Padding1428 ;
	 uint    BindlessSampler_BasePass_Reflection_ReflectionCubemapSampler ;
	 uint    BasePass_Padding1436 ;
	 uint    BindlessSRV_BasePass_Reflection_PreIntegratedGF ;
	 uint    BasePass_Padding1444 ;
	 uint    BindlessSampler_BasePass_Reflection_PreIntegratedGFSampler ;
	 float    BasePass_Padding1452 ;
	 float4    BasePass_PlanarReflection_ReflectionPlane ;
	 float4    BasePass_PlanarReflection_PlanarReflectionOrigin ;
	 float4    BasePass_PlanarReflection_PlanarReflectionXAxis ;
	 float4    BasePass_PlanarReflection_PlanarReflectionYAxis ;
	 float3x4    BasePass_PlanarReflection_InverseTransposeMirrorMatrix ;
	 float3    BasePass_PlanarReflection_PlanarReflectionParameters ;
	 float    BasePass_Padding1580 ;
	 float2    BasePass_PlanarReflection_PlanarReflectionParameters2 ;
	 float    BasePass_Padding1592 ;
	 float    BasePass_Padding1596 ;
	 float4x4    BasePass_PlanarReflection_ProjectionWithExtraFOV[2] ;
	 float4    BasePass_PlanarReflection_PlanarReflectionScreenScaleBias[2] ;
	 float2    BasePass_PlanarReflection_PlanarReflectionScreenBound ;
	 uint    BasePass_PlanarReflection_bIsStereo ;
	 uint    BasePass_Padding1772 ;
	 uint    BindlessSRV_BasePass_PlanarReflection_PlanarReflectionTexture ;
	 uint    BasePass_Padding1780 ;
	 uint    BindlessSampler_BasePass_PlanarReflection_PlanarReflectionSampler ;
	 float    BasePass_Padding1788 ;
	 float4    BasePass_Fog_ExponentialFogParameters ;
	 float4    BasePass_Fog_ExponentialFogParameters2 ;
	 float4    BasePass_Fog_ExponentialFogColorParameter ;
	 float4    BasePass_Fog_ExponentialFogParameters3 ;
	 float4    BasePass_Fog_SkyAtmosphereAmbientContributionColorScale ;
	 float4    BasePass_Fog_InscatteringLightDirection ;
	 float4    BasePass_Fog_DirectionalInscatteringColor ;
	 float2    BasePass_Fog_SinCosInscatteringColorCubemapRotation ;
	 float    BasePass_Padding1912 ;
	 float    BasePass_Padding1916 ;
	 float3    BasePass_Fog_FogInscatteringTextureParameters ;
	 float    BasePass_Fog_EndDistance ;
	 float    BasePass_Fog_ApplyVolumetricFog ;
	 float    BasePass_Fog_VolumetricFogStartDistance ;
	 float    BasePass_Fog_VolumetricFogNearFadeInDistanceInv ;
	 float    BasePass_Padding1948 ;
	 float3    BasePass_Fog_VolumetricFogAlbedo ;
	 float    BasePass_Fog_VolumetricFogPhaseG ;
	 uint    BindlessSRV_BasePass_Fog_FogInscatteringColorCubemap ;
	 uint    BasePass_Padding1972 ;
	 uint    BindlessSampler_BasePass_Fog_FogInscatteringColorSampler ;
	 uint    BasePass_Padding1980 ;
	 uint    BindlessSRV_BasePass_Fog_IntegratedLightScattering ;
	 uint    BasePass_Padding1988 ;
	 uint    BindlessSampler_BasePass_Fog_IntegratedLightScatteringSampler ;
	 float    BasePass_Padding1996 ;
	 float4    BasePass_FogISR_ExponentialFogParameters ;
	 float4    BasePass_FogISR_ExponentialFogParameters2 ;
	 float4    BasePass_FogISR_ExponentialFogColorParameter ;
	 float4    BasePass_FogISR_ExponentialFogParameters3 ;
	 float4    BasePass_FogISR_SkyAtmosphereAmbientContributionColorScale ;
	 float4    BasePass_FogISR_InscatteringLightDirection ;
	 float4    BasePass_FogISR_DirectionalInscatteringColor ;
	 float2    BasePass_FogISR_SinCosInscatteringColorCubemapRotation ;
	 float    BasePass_Padding2120 ;
	 float    BasePass_Padding2124 ;
	 float3    BasePass_FogISR_FogInscatteringTextureParameters ;
	 float    BasePass_FogISR_EndDistance ;
	 float    BasePass_FogISR_ApplyVolumetricFog ;
	 float    BasePass_FogISR_VolumetricFogStartDistance ;
	 float    BasePass_FogISR_VolumetricFogNearFadeInDistanceInv ;
	 float    BasePass_Padding2156 ;
	 float3    BasePass_FogISR_VolumetricFogAlbedo ;
	 float    BasePass_FogISR_VolumetricFogPhaseG ;
	 uint    BindlessSRV_BasePass_FogISR_FogInscatteringColorCubemap ;
	 uint    BasePass_Padding2180 ;
	 uint    BindlessSampler_BasePass_FogISR_FogInscatteringColorSampler ;
	 uint    BasePass_Padding2188 ;
	 uint    BindlessSRV_BasePass_FogISR_IntegratedLightScattering ;
	 uint    BasePass_Padding2196 ;
	 uint    BindlessSampler_BasePass_FogISR_IntegratedLightScatteringSampler ;
	 float    BasePass_Padding2204 ;
	 uint    BindlessSRV_BasePass_LFV_LocalFogVolumeInstances ;
	 uint    BasePass_Padding2212 ;
	 uint2    BasePass_LFV_LocalFogVolumeTileDataTextureResolution ;
	 uint    BasePass_LFV_LocalFogVolumeInstanceCount ;
	 uint    BasePass_LFV_LocalFogVolumeTilePixelSize ;
	 float    BasePass_LFV_LocalFogVolumeMaxDensityIntoVolumetricFog ;
	 uint    BasePass_LFV_ShouldRenderLocalFogVolumeInVolumetricFog ;
	 float    BasePass_LFV_GlobalStartDistance ;
	 float    BasePass_Padding2244 ;
	 float    BasePass_Padding2248 ;
	 float    BasePass_Padding2252 ;
	 float4    BasePass_LFV_HalfResTextureSizeAndInvSize ;
	 float3    BasePass_LFV_DirectionalLightColor ;
	 float    BasePass_Padding2284 ;
	 float3    BasePass_LFV_DirectionalLightDirection ;
	 float    BasePass_Padding2300 ;
	 uint    BindlessSRV_BasePass_LFV_LocalFogVolumeTileDataTexture ;
	 float    BasePass_Padding2308 ;
	 float    BasePass_Padding2312 ;
	 float    BasePass_Padding2316 ;
	 uint    BindlessSRV_BasePass_LightFunctionAtlas_LightFunctionAtlasTexture ;
	 uint    BasePass_Padding2324 ;
	 uint    BindlessSRV_BasePass_LightFunctionAtlas_LightInfoDataBuffer ;
	 uint    BasePass_Padding2332 ;
	 uint    BindlessSampler_BasePass_LightFunctionAtlas_LightFunctionAtlasSampler ;
	 uint    BasePass_Padding2340 ;
	 float    BasePass_LightFunctionAtlas_Slot_UVSize ;
	 float    BasePass_Padding2348 ;
	 uint    BasePass_UseBasePassSkylight ;
 }
  Texture2D  BasePass_Forward_DirectionalLightShadowmapAtlas ;
  SamplerState  BasePass_Forward_ShadowmapSampler ;
  Texture2D  BasePass_Forward_DirectionalLightStaticShadowmap ;
  SamplerState  BasePass_Forward_StaticShadowmapSampler ;
  StructuredBuffer<float4>  BasePass_Forward_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  BasePass_Forward_NumCulledLightsGrid ;
  StructuredBuffer<uint>  BasePass_Forward_CulledLightDataGrid32Bit ;
  Buffer<uint>  BasePass_Forward_CulledLightDataGrid16Bit ;
  Texture2D  BasePass_ForwardISR_DirectionalLightShadowmapAtlas ;
  SamplerState  BasePass_ForwardISR_ShadowmapSampler ;
  Texture2D  BasePass_ForwardISR_DirectionalLightStaticShadowmap ;
  SamplerState  BasePass_ForwardISR_StaticShadowmapSampler ;
  StructuredBuffer<float4>  BasePass_ForwardISR_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  BasePass_ForwardISR_NumCulledLightsGrid ;
  StructuredBuffer<uint>  BasePass_ForwardISR_CulledLightDataGrid32Bit ;
  Buffer<uint>  BasePass_ForwardISR_CulledLightDataGrid16Bit ;
  TextureCube  BasePass_Reflection_SkyLightCubemap ;
  SamplerState  BasePass_Reflection_SkyLightCubemapSampler ;
  TextureCube  BasePass_Reflection_SkyLightBlendDestinationCubemap ;
  SamplerState  BasePass_Reflection_SkyLightBlendDestinationCubemapSampler ;
  TextureCubeArray  BasePass_Reflection_ReflectionCubemap ;
  SamplerState  BasePass_Reflection_ReflectionCubemapSampler ;
  Texture2D  BasePass_Reflection_PreIntegratedGF ;
  SamplerState  BasePass_Reflection_PreIntegratedGFSampler ;
  Texture2D  BasePass_PlanarReflection_PlanarReflectionTexture ;
  SamplerState  BasePass_PlanarReflection_PlanarReflectionSampler ;
  TextureCube  BasePass_Fog_FogInscatteringColorCubemap ;
  SamplerState  BasePass_Fog_FogInscatteringColorSampler ;
  Texture3D  BasePass_Fog_IntegratedLightScattering ;
  SamplerState  BasePass_Fog_IntegratedLightScatteringSampler ;
  TextureCube  BasePass_FogISR_FogInscatteringColorCubemap ;
  SamplerState  BasePass_FogISR_FogInscatteringColorSampler ;
  Texture3D  BasePass_FogISR_IntegratedLightScattering ;
  SamplerState  BasePass_FogISR_IntegratedLightScatteringSampler ;
  Buffer<float4>  BasePass_LFV_LocalFogVolumeInstances ;
  Texture2DArray<uint>  BasePass_LFV_LocalFogVolumeTileDataTexture ;
  Texture2D<float4>  BasePass_LightFunctionAtlas_LightFunctionAtlasTexture ;
  StructuredBuffer<float4>  BasePass_LightFunctionAtlas_LightInfoDataBuffer ;
  SamplerState  BasePass_LightFunctionAtlas_LightFunctionAtlasSampler ;
 cbuffer OpaqueBasePass {
	 uint    OpaqueBasePass_Shared_Forward_NumLocalLights ;
	 uint    OpaqueBasePass_Shared_Forward_NumReflectionCaptures ;
	 uint    OpaqueBasePass_Shared_Forward_HasDirectionalLight ;
	 uint    OpaqueBasePass_Shared_Forward_NumGridCells ;
	 int3    OpaqueBasePass_Shared_Forward_CulledGridSize ;
	 uint    OpaqueBasePass_Shared_Forward_MaxCulledLightsPerCell ;
	 uint    OpaqueBasePass_Shared_Forward_LightGridPixelSizeShift ;
	 uint    OpaqueBasePass_Padding36 ;
	 uint    OpaqueBasePass_Padding40 ;
	 uint    OpaqueBasePass_Padding44 ;
	 float3    OpaqueBasePass_Shared_Forward_LightGridZParams ;
	 float    OpaqueBasePass_Padding60 ;
	 float3    OpaqueBasePass_Shared_Forward_DirectionalLightDirection ;
	 float    OpaqueBasePass_Shared_Forward_DirectionalLightSourceRadius ;
	 float    OpaqueBasePass_Shared_Forward_DirectionalLightSoftSourceRadius ;
	 float    OpaqueBasePass_Padding84 ;
	 float    OpaqueBasePass_Padding88 ;
	 float    OpaqueBasePass_Padding92 ;
	 float3    OpaqueBasePass_Shared_Forward_DirectionalLightColor ;
	 float    OpaqueBasePass_Shared_Forward_DirectionalLightVolumetricScatteringIntensity ;
	 float    OpaqueBasePass_Shared_Forward_DirectionalLightSpecularScale ;
	 float    OpaqueBasePass_Shared_Forward_DirectionalLightDiffuseScale ;
	 uint    OpaqueBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask ;
	 uint    OpaqueBasePass_Padding124 ;
	 float2    OpaqueBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD ;
	 uint    OpaqueBasePass_Shared_Forward_NumDirectionalLightCascades ;
	 int    OpaqueBasePass_Shared_Forward_DirectionalLightVSM ;
	 float4    OpaqueBasePass_Shared_Forward_CascadeEndDepths ;
	 float4x4    OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[4] ;
	 float4    OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize ;
	 float    OpaqueBasePass_Shared_Forward_DirectionalLightDepthBias ;
	 uint    OpaqueBasePass_Shared_Forward_DirectionalLightUseStaticShadowing ;
	 uint    OpaqueBasePass_Shared_Forward_SimpleLightsEndIndex ;
	 uint    OpaqueBasePass_Shared_Forward_ClusteredDeferredSupportedEndIndex ;
	 uint    OpaqueBasePass_Shared_Forward_MegaLightsSupportedStartIndex ;
	 uint    OpaqueBasePass_Padding516 ;
	 uint    OpaqueBasePass_Padding520 ;
	 uint    OpaqueBasePass_Padding524 ;
	 float4    OpaqueBasePass_Shared_Forward_DirectionalLightStaticShadowBufferSize ;
	 float4x4    OpaqueBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    OpaqueBasePass_Shared_Forward_DirectLightingShowFlag ;
	 uint    OpaqueBasePass_Shared_Forward_LightFunctionAtlasLightIndex ;
	 uint    OpaqueBasePass_Shared_Forward_bAffectsTranslucentLighting ;
	 uint    OpaqueBasePass_Padding620 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas ;
	 uint    OpaqueBasePass_Padding628 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_Forward_ShadowmapSampler ;
	 uint    OpaqueBasePass_Padding636 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Forward_DirectionalLightStaticShadowmap ;
	 uint    OpaqueBasePass_Padding644 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_Forward_StaticShadowmapSampler ;
	 uint    OpaqueBasePass_Padding652 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer ;
	 uint    OpaqueBasePass_Padding660 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Forward_NumCulledLightsGrid ;
	 uint    OpaqueBasePass_Padding668 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Forward_CulledLightDataGrid32Bit ;
	 uint    OpaqueBasePass_Padding676 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit ;
	 float    OpaqueBasePass_Padding684 ;
	 uint    OpaqueBasePass_Shared_ForwardISR_NumLocalLights ;
	 uint    OpaqueBasePass_Shared_ForwardISR_NumReflectionCaptures ;
	 uint    OpaqueBasePass_Shared_ForwardISR_HasDirectionalLight ;
	 uint    OpaqueBasePass_Shared_ForwardISR_NumGridCells ;
	 int3    OpaqueBasePass_Shared_ForwardISR_CulledGridSize ;
	 uint    OpaqueBasePass_Shared_ForwardISR_MaxCulledLightsPerCell ;
	 uint    OpaqueBasePass_Shared_ForwardISR_LightGridPixelSizeShift ;
	 uint    OpaqueBasePass_Padding724 ;
	 uint    OpaqueBasePass_Padding728 ;
	 uint    OpaqueBasePass_Padding732 ;
	 float3    OpaqueBasePass_Shared_ForwardISR_LightGridZParams ;
	 float    OpaqueBasePass_Padding748 ;
	 float3    OpaqueBasePass_Shared_ForwardISR_DirectionalLightDirection ;
	 float    OpaqueBasePass_Shared_ForwardISR_DirectionalLightSourceRadius ;
	 float    OpaqueBasePass_Shared_ForwardISR_DirectionalLightSoftSourceRadius ;
	 float    OpaqueBasePass_Padding772 ;
	 float    OpaqueBasePass_Padding776 ;
	 float    OpaqueBasePass_Padding780 ;
	 float3    OpaqueBasePass_Shared_ForwardISR_DirectionalLightColor ;
	 float    OpaqueBasePass_Shared_ForwardISR_DirectionalLightVolumetricScatteringIntensity ;
	 float    OpaqueBasePass_Shared_ForwardISR_DirectionalLightSpecularScale ;
	 float    OpaqueBasePass_Shared_ForwardISR_DirectionalLightDiffuseScale ;
	 uint    OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask ;
	 uint    OpaqueBasePass_Padding812 ;
	 float2    OpaqueBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD ;
	 uint    OpaqueBasePass_Shared_ForwardISR_NumDirectionalLightCascades ;
	 int    OpaqueBasePass_Shared_ForwardISR_DirectionalLightVSM ;
	 float4    OpaqueBasePass_Shared_ForwardISR_CascadeEndDepths ;
	 float4x4    OpaqueBasePass_Shared_ForwardISR_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowmapMinMax[4] ;
	 float4    OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlasBufferSize ;
	 float    OpaqueBasePass_Shared_ForwardISR_DirectionalLightDepthBias ;
	 uint    OpaqueBasePass_Shared_ForwardISR_DirectionalLightUseStaticShadowing ;
	 uint    OpaqueBasePass_Shared_ForwardISR_SimpleLightsEndIndex ;
	 uint    OpaqueBasePass_Shared_ForwardISR_ClusteredDeferredSupportedEndIndex ;
	 uint    OpaqueBasePass_Shared_ForwardISR_MegaLightsSupportedStartIndex ;
	 uint    OpaqueBasePass_Padding1204 ;
	 uint    OpaqueBasePass_Padding1208 ;
	 uint    OpaqueBasePass_Padding1212 ;
	 float4    OpaqueBasePass_Shared_ForwardISR_DirectionalLightStaticShadowBufferSize ;
	 float4x4    OpaqueBasePass_Shared_ForwardISR_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    OpaqueBasePass_Shared_ForwardISR_DirectLightingShowFlag ;
	 uint    OpaqueBasePass_Shared_ForwardISR_LightFunctionAtlasLightIndex ;
	 uint    OpaqueBasePass_Shared_ForwardISR_bAffectsTranslucentLighting ;
	 uint    OpaqueBasePass_Padding1308 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlas ;
	 uint    OpaqueBasePass_Padding1316 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_ForwardISR_ShadowmapSampler ;
	 uint    OpaqueBasePass_Padding1324 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_ForwardISR_DirectionalLightStaticShadowmap ;
	 uint    OpaqueBasePass_Padding1332 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_ForwardISR_StaticShadowmapSampler ;
	 uint    OpaqueBasePass_Padding1340 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer ;
	 uint    OpaqueBasePass_Padding1348 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid ;
	 uint    OpaqueBasePass_Padding1356 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid32Bit ;
	 uint    OpaqueBasePass_Padding1364 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid16Bit ;
	 float    OpaqueBasePass_Padding1372 ;
	 float4    OpaqueBasePass_Shared_Reflection_SkyLightParameters ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Reflection_SkyLightCubemap ;
	 uint    OpaqueBasePass_Padding1396 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler ;
	 uint    OpaqueBasePass_Padding1404 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Reflection_SkyLightBlendDestinationCubemap ;
	 uint    OpaqueBasePass_Padding1412 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_Reflection_SkyLightBlendDestinationCubemapSampler ;
	 uint    OpaqueBasePass_Padding1420 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Reflection_ReflectionCubemap ;
	 uint    OpaqueBasePass_Padding1428 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler ;
	 uint    OpaqueBasePass_Padding1436 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Reflection_PreIntegratedGF ;
	 uint    OpaqueBasePass_Padding1444 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_Reflection_PreIntegratedGFSampler ;
	 float    OpaqueBasePass_Padding1452 ;
	 float4    OpaqueBasePass_Shared_PlanarReflection_ReflectionPlane ;
	 float4    OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionOrigin ;
	 float4    OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionXAxis ;
	 float4    OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionYAxis ;
	 float3x4    OpaqueBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix ;
	 float3    OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionParameters ;
	 float    OpaqueBasePass_Padding1580 ;
	 float2    OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionParameters2 ;
	 float    OpaqueBasePass_Padding1592 ;
	 float    OpaqueBasePass_Padding1596 ;
	 float4x4    OpaqueBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[2] ;
	 float4    OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[2] ;
	 float2    OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound ;
	 uint    OpaqueBasePass_Shared_PlanarReflection_bIsStereo ;
	 uint    OpaqueBasePass_Padding1772 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionTexture ;
	 uint    OpaqueBasePass_Padding1780 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionSampler ;
	 float    OpaqueBasePass_Padding1788 ;
	 float4    OpaqueBasePass_Shared_Fog_ExponentialFogParameters ;
	 float4    OpaqueBasePass_Shared_Fog_ExponentialFogParameters2 ;
	 float4    OpaqueBasePass_Shared_Fog_ExponentialFogColorParameter ;
	 float4    OpaqueBasePass_Shared_Fog_ExponentialFogParameters3 ;
	 float4    OpaqueBasePass_Shared_Fog_SkyAtmosphereAmbientContributionColorScale ;
	 float4    OpaqueBasePass_Shared_Fog_InscatteringLightDirection ;
	 float4    OpaqueBasePass_Shared_Fog_DirectionalInscatteringColor ;
	 float2    OpaqueBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation ;
	 float    OpaqueBasePass_Padding1912 ;
	 float    OpaqueBasePass_Padding1916 ;
	 float3    OpaqueBasePass_Shared_Fog_FogInscatteringTextureParameters ;
	 float    OpaqueBasePass_Shared_Fog_EndDistance ;
	 float    OpaqueBasePass_Shared_Fog_ApplyVolumetricFog ;
	 float    OpaqueBasePass_Shared_Fog_VolumetricFogStartDistance ;
	 float    OpaqueBasePass_Shared_Fog_VolumetricFogNearFadeInDistanceInv ;
	 float    OpaqueBasePass_Padding1948 ;
	 float3    OpaqueBasePass_Shared_Fog_VolumetricFogAlbedo ;
	 float    OpaqueBasePass_Shared_Fog_VolumetricFogPhaseG ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Fog_FogInscatteringColorCubemap ;
	 uint    OpaqueBasePass_Padding1972 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_Fog_FogInscatteringColorSampler ;
	 uint    OpaqueBasePass_Padding1980 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_Fog_IntegratedLightScattering ;
	 uint    OpaqueBasePass_Padding1988 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_Fog_IntegratedLightScatteringSampler ;
	 float    OpaqueBasePass_Padding1996 ;
	 float4    OpaqueBasePass_Shared_FogISR_ExponentialFogParameters ;
	 float4    OpaqueBasePass_Shared_FogISR_ExponentialFogParameters2 ;
	 float4    OpaqueBasePass_Shared_FogISR_ExponentialFogColorParameter ;
	 float4    OpaqueBasePass_Shared_FogISR_ExponentialFogParameters3 ;
	 float4    OpaqueBasePass_Shared_FogISR_SkyAtmosphereAmbientContributionColorScale ;
	 float4    OpaqueBasePass_Shared_FogISR_InscatteringLightDirection ;
	 float4    OpaqueBasePass_Shared_FogISR_DirectionalInscatteringColor ;
	 float2    OpaqueBasePass_Shared_FogISR_SinCosInscatteringColorCubemapRotation ;
	 float    OpaqueBasePass_Padding2120 ;
	 float    OpaqueBasePass_Padding2124 ;
	 float3    OpaqueBasePass_Shared_FogISR_FogInscatteringTextureParameters ;
	 float    OpaqueBasePass_Shared_FogISR_EndDistance ;
	 float    OpaqueBasePass_Shared_FogISR_ApplyVolumetricFog ;
	 float    OpaqueBasePass_Shared_FogISR_VolumetricFogStartDistance ;
	 float    OpaqueBasePass_Shared_FogISR_VolumetricFogNearFadeInDistanceInv ;
	 float    OpaqueBasePass_Padding2156 ;
	 float3    OpaqueBasePass_Shared_FogISR_VolumetricFogAlbedo ;
	 float    OpaqueBasePass_Shared_FogISR_VolumetricFogPhaseG ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_FogISR_FogInscatteringColorCubemap ;
	 uint    OpaqueBasePass_Padding2180 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_FogISR_FogInscatteringColorSampler ;
	 uint    OpaqueBasePass_Padding2188 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_FogISR_IntegratedLightScattering ;
	 uint    OpaqueBasePass_Padding2196 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_FogISR_IntegratedLightScatteringSampler ;
	 float    OpaqueBasePass_Padding2204 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances ;
	 uint    OpaqueBasePass_Padding2212 ;
	 uint2    OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution ;
	 uint    OpaqueBasePass_Shared_LFV_LocalFogVolumeInstanceCount ;
	 uint    OpaqueBasePass_Shared_LFV_LocalFogVolumeTilePixelSize ;
	 float    OpaqueBasePass_Shared_LFV_LocalFogVolumeMaxDensityIntoVolumetricFog ;
	 uint    OpaqueBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog ;
	 float    OpaqueBasePass_Shared_LFV_GlobalStartDistance ;
	 float    OpaqueBasePass_Padding2244 ;
	 float    OpaqueBasePass_Padding2248 ;
	 float    OpaqueBasePass_Padding2252 ;
	 float4    OpaqueBasePass_Shared_LFV_HalfResTextureSizeAndInvSize ;
	 float3    OpaqueBasePass_Shared_LFV_DirectionalLightColor ;
	 float    OpaqueBasePass_Padding2284 ;
	 float3    OpaqueBasePass_Shared_LFV_DirectionalLightDirection ;
	 float    OpaqueBasePass_Padding2300 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture ;
	 float    OpaqueBasePass_Padding2308 ;
	 float    OpaqueBasePass_Padding2312 ;
	 float    OpaqueBasePass_Padding2316 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_LightFunctionAtlas_LightFunctionAtlasTexture ;
	 uint    OpaqueBasePass_Padding2324 ;
	 uint    BindlessSRV_OpaqueBasePass_Shared_LightFunctionAtlas_LightInfoDataBuffer ;
	 uint    OpaqueBasePass_Padding2332 ;
	 uint    BindlessSampler_OpaqueBasePass_Shared_LightFunctionAtlas_LightFunctionAtlasSampler ;
	 uint    OpaqueBasePass_Padding2340 ;
	 float    OpaqueBasePass_Shared_LightFunctionAtlas_Slot_UVSize ;
	 float    OpaqueBasePass_Padding2348 ;
	 uint    OpaqueBasePass_Shared_UseBasePassSkylight ;
	 float    OpaqueBasePass_Padding2356 ;
	 float    OpaqueBasePass_Padding2360 ;
	 float    OpaqueBasePass_Padding2364 ;
	 uint    OpaqueBasePass_Substrate_MaxBytesPerPixel ;
	 uint    OpaqueBasePass_Substrate_MaxClosurePerPixel ;
	 uint    OpaqueBasePass_Substrate_bRoughDiffuse ;
	 uint    OpaqueBasePass_Substrate_PeelLayersAboveDepth ;
	 uint    OpaqueBasePass_Substrate_bRoughnessTracking ;
	 float    OpaqueBasePass_Padding2388 ;
	 float    OpaqueBasePass_Padding2392 ;
	 float    OpaqueBasePass_Padding2396 ;
	 int    OpaqueBasePass_Substrate_SliceStoringDebugSubstrateTreeDataWithoutMRT ;
	 int    OpaqueBasePass_Substrate_FirstSliceStoringSubstrateSSSDataWithoutMRT ;
	 uint    BindlessUAV_OpaqueBasePass_Substrate_MaterialTextureArrayUAVWithoutRTs ;
	 uint    OpaqueBasePass_Padding2412 ;
	 uint    BindlessUAV_OpaqueBasePass_Substrate_OpaqueRoughRefractionTextureUAV ;
	 float    OpaqueBasePass_Padding2420 ;
	 float    OpaqueBasePass_Padding2424 ;
	 float    OpaqueBasePass_Padding2428 ;
	 int    OpaqueBasePass_UseForwardScreenSpaceShadowMask ;
	 int    OpaqueBasePass_Padding2436 ;
	 uint    BindlessSRV_OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture ;
	 uint    OpaqueBasePass_Padding2444 ;
	 uint    BindlessSRV_OpaqueBasePass_IndirectOcclusionTexture ;
	 uint    OpaqueBasePass_Padding2452 ;
	 uint    BindlessSRV_OpaqueBasePass_ResolvedSceneDepthTexture ;
	 float    OpaqueBasePass_Padding2460 ;
	 uint    BindlessSRV_OpaqueBasePass_DBufferATexture ;
	 uint    OpaqueBasePass_Padding2468 ;
	 uint    BindlessSRV_OpaqueBasePass_DBufferBTexture ;
	 uint    OpaqueBasePass_Padding2476 ;
	 uint    BindlessSRV_OpaqueBasePass_DBufferCTexture ;
	 uint    OpaqueBasePass_Padding2484 ;
	 uint    BindlessSRV_OpaqueBasePass_DBufferATextureArray ;
	 uint    OpaqueBasePass_Padding2492 ;
	 uint    BindlessSRV_OpaqueBasePass_DBufferBTextureArray ;
	 uint    OpaqueBasePass_Padding2500 ;
	 uint    BindlessSRV_OpaqueBasePass_DBufferCTextureArray ;
	 uint    OpaqueBasePass_Padding2508 ;
	 uint    BindlessSRV_OpaqueBasePass_DBufferRenderMask ;
	 uint    OpaqueBasePass_Padding2516 ;
	 uint    BindlessSampler_OpaqueBasePass_DBufferATextureSampler ;
	 uint    OpaqueBasePass_Padding2524 ;
	 uint    BindlessSampler_OpaqueBasePass_DBufferBTextureSampler ;
	 uint    OpaqueBasePass_Padding2532 ;
	 uint    BindlessSampler_OpaqueBasePass_DBufferCTextureSampler ;
	 uint    OpaqueBasePass_Padding2540 ;
	 uint    BindlessSRV_OpaqueBasePass_PreIntegratedGFTexture ;
	 uint    OpaqueBasePass_Padding2548 ;
	 uint    BindlessSampler_OpaqueBasePass_PreIntegratedGFSampler ;
	 uint    OpaqueBasePass_Padding2556 ;
	 int    OpaqueBasePass_Is24BitUnormDepthStencil ;
	 int    OpaqueBasePass_Padding2564 ;
	 uint    BindlessSRV_OpaqueBasePass_EyeAdaptationBuffer ;
 }
  Texture2D  OpaqueBasePass_Shared_Forward_DirectionalLightShadowmapAtlas ;
  SamplerState  OpaqueBasePass_Shared_Forward_ShadowmapSampler ;
  Texture2D  OpaqueBasePass_Shared_Forward_DirectionalLightStaticShadowmap ;
  SamplerState  OpaqueBasePass_Shared_Forward_StaticShadowmapSampler ;
  StructuredBuffer<float4>  OpaqueBasePass_Shared_Forward_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  OpaqueBasePass_Shared_Forward_NumCulledLightsGrid ;
  StructuredBuffer<uint>  OpaqueBasePass_Shared_Forward_CulledLightDataGrid32Bit ;
  Buffer<uint>  OpaqueBasePass_Shared_Forward_CulledLightDataGrid16Bit ;
  Texture2D  OpaqueBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlas ;
  SamplerState  OpaqueBasePass_Shared_ForwardISR_ShadowmapSampler ;
  Texture2D  OpaqueBasePass_Shared_ForwardISR_DirectionalLightStaticShadowmap ;
  SamplerState  OpaqueBasePass_Shared_ForwardISR_StaticShadowmapSampler ;
  StructuredBuffer<float4>  OpaqueBasePass_Shared_ForwardISR_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  OpaqueBasePass_Shared_ForwardISR_NumCulledLightsGrid ;
  StructuredBuffer<uint>  OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid32Bit ;
  Buffer<uint>  OpaqueBasePass_Shared_ForwardISR_CulledLightDataGrid16Bit ;
  TextureCube  OpaqueBasePass_Shared_Reflection_SkyLightCubemap ;
  SamplerState  OpaqueBasePass_Shared_Reflection_SkyLightCubemapSampler ;
  TextureCube  OpaqueBasePass_Shared_Reflection_SkyLightBlendDestinationCubemap ;
  SamplerState  OpaqueBasePass_Shared_Reflection_SkyLightBlendDestinationCubemapSampler ;
  TextureCubeArray  OpaqueBasePass_Shared_Reflection_ReflectionCubemap ;
  SamplerState  OpaqueBasePass_Shared_Reflection_ReflectionCubemapSampler ;
  Texture2D  OpaqueBasePass_Shared_Reflection_PreIntegratedGF ;
  SamplerState  OpaqueBasePass_Shared_Reflection_PreIntegratedGFSampler ;
  Texture2D  OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionTexture ;
  SamplerState  OpaqueBasePass_Shared_PlanarReflection_PlanarReflectionSampler ;
  TextureCube  OpaqueBasePass_Shared_Fog_FogInscatteringColorCubemap ;
  SamplerState  OpaqueBasePass_Shared_Fog_FogInscatteringColorSampler ;
  Texture3D  OpaqueBasePass_Shared_Fog_IntegratedLightScattering ;
  SamplerState  OpaqueBasePass_Shared_Fog_IntegratedLightScatteringSampler ;
  TextureCube  OpaqueBasePass_Shared_FogISR_FogInscatteringColorCubemap ;
  SamplerState  OpaqueBasePass_Shared_FogISR_FogInscatteringColorSampler ;
  Texture3D  OpaqueBasePass_Shared_FogISR_IntegratedLightScattering ;
  SamplerState  OpaqueBasePass_Shared_FogISR_IntegratedLightScatteringSampler ;
  Buffer<float4>  OpaqueBasePass_Shared_LFV_LocalFogVolumeInstances ;
  Texture2DArray<uint>  OpaqueBasePass_Shared_LFV_LocalFogVolumeTileDataTexture ;
  Texture2D<float4>  OpaqueBasePass_Shared_LightFunctionAtlas_LightFunctionAtlasTexture ;
  StructuredBuffer<float4>  OpaqueBasePass_Shared_LightFunctionAtlas_LightInfoDataBuffer ;
  SamplerState  OpaqueBasePass_Shared_LightFunctionAtlas_LightFunctionAtlasSampler ;
  RWTexture2DArray<uint>  OpaqueBasePass_Substrate_MaterialTextureArrayUAVWithoutRTs ;
  RWTexture2D<float3>  OpaqueBasePass_Substrate_OpaqueRoughRefractionTextureUAV ;
  Texture2D  OpaqueBasePass_DBufferATexture ;
  Texture2D  OpaqueBasePass_DBufferBTexture ;
  Texture2D  OpaqueBasePass_DBufferCTexture ;
  Texture2DArray  OpaqueBasePass_DBufferATextureArray ;
  Texture2DArray  OpaqueBasePass_DBufferBTextureArray ;
  Texture2DArray  OpaqueBasePass_DBufferCTextureArray ;
  Texture2D<uint>  OpaqueBasePass_DBufferRenderMask ;
  SamplerState  OpaqueBasePass_DBufferATextureSampler ;
  SamplerState  OpaqueBasePass_DBufferBTextureSampler ;
  SamplerState  OpaqueBasePass_DBufferCTextureSampler ;
  Texture2D  OpaqueBasePass_ForwardScreenSpaceShadowMaskTexture ;
  Texture2D  OpaqueBasePass_IndirectOcclusionTexture ;
  Texture2D  OpaqueBasePass_ResolvedSceneDepthTexture ;
  Texture2D  OpaqueBasePass_PreIntegratedGFTexture ;
  SamplerState  OpaqueBasePass_PreIntegratedGFSampler ;
  StructuredBuffer<float4>  OpaqueBasePass_EyeAdaptationBuffer ;
 cbuffer TranslucentBasePass {
	 uint    TranslucentBasePass_Shared_Forward_NumLocalLights ;
	 uint    TranslucentBasePass_Shared_Forward_NumReflectionCaptures ;
	 uint    TranslucentBasePass_Shared_Forward_HasDirectionalLight ;
	 uint    TranslucentBasePass_Shared_Forward_NumGridCells ;
	 int3    TranslucentBasePass_Shared_Forward_CulledGridSize ;
	 uint    TranslucentBasePass_Shared_Forward_MaxCulledLightsPerCell ;
	 uint    TranslucentBasePass_Shared_Forward_LightGridPixelSizeShift ;
	 uint    TranslucentBasePass_Padding36 ;
	 uint    TranslucentBasePass_Padding40 ;
	 uint    TranslucentBasePass_Padding44 ;
	 float3    TranslucentBasePass_Shared_Forward_LightGridZParams ;
	 float    TranslucentBasePass_Padding60 ;
	 float3    TranslucentBasePass_Shared_Forward_DirectionalLightDirection ;
	 float    TranslucentBasePass_Shared_Forward_DirectionalLightSourceRadius ;
	 float    TranslucentBasePass_Shared_Forward_DirectionalLightSoftSourceRadius ;
	 float    TranslucentBasePass_Padding84 ;
	 float    TranslucentBasePass_Padding88 ;
	 float    TranslucentBasePass_Padding92 ;
	 float3    TranslucentBasePass_Shared_Forward_DirectionalLightColor ;
	 float    TranslucentBasePass_Shared_Forward_DirectionalLightVolumetricScatteringIntensity ;
	 float    TranslucentBasePass_Shared_Forward_DirectionalLightSpecularScale ;
	 float    TranslucentBasePass_Shared_Forward_DirectionalLightDiffuseScale ;
	 uint    TranslucentBasePass_Shared_Forward_DirectionalLightShadowMapChannelMask ;
	 uint    TranslucentBasePass_Padding124 ;
	 float2    TranslucentBasePass_Shared_Forward_DirectionalLightDistanceFadeMAD ;
	 uint    TranslucentBasePass_Shared_Forward_NumDirectionalLightCascades ;
	 int    TranslucentBasePass_Shared_Forward_DirectionalLightVSM ;
	 float4    TranslucentBasePass_Shared_Forward_CascadeEndDepths ;
	 float4x4    TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapMinMax[4] ;
	 float4    TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlasBufferSize ;
	 float    TranslucentBasePass_Shared_Forward_DirectionalLightDepthBias ;
	 uint    TranslucentBasePass_Shared_Forward_DirectionalLightUseStaticShadowing ;
	 uint    TranslucentBasePass_Shared_Forward_SimpleLightsEndIndex ;
	 uint    TranslucentBasePass_Shared_Forward_ClusteredDeferredSupportedEndIndex ;
	 uint    TranslucentBasePass_Shared_Forward_MegaLightsSupportedStartIndex ;
	 uint    TranslucentBasePass_Padding516 ;
	 uint    TranslucentBasePass_Padding520 ;
	 uint    TranslucentBasePass_Padding524 ;
	 float4    TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowBufferSize ;
	 float4x4    TranslucentBasePass_Shared_Forward_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    TranslucentBasePass_Shared_Forward_DirectLightingShowFlag ;
	 uint    TranslucentBasePass_Shared_Forward_LightFunctionAtlasLightIndex ;
	 uint    TranslucentBasePass_Shared_Forward_bAffectsTranslucentLighting ;
	 uint    TranslucentBasePass_Padding620 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas ;
	 uint    TranslucentBasePass_Padding628 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_Forward_ShadowmapSampler ;
	 uint    TranslucentBasePass_Padding636 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowmap ;
	 uint    TranslucentBasePass_Padding644 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_Forward_StaticShadowmapSampler ;
	 uint    TranslucentBasePass_Padding652 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer ;
	 uint    TranslucentBasePass_Padding660 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Forward_NumCulledLightsGrid ;
	 uint    TranslucentBasePass_Padding668 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Forward_CulledLightDataGrid32Bit ;
	 uint    TranslucentBasePass_Padding676 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit ;
	 float    TranslucentBasePass_Padding684 ;
	 uint    TranslucentBasePass_Shared_ForwardISR_NumLocalLights ;
	 uint    TranslucentBasePass_Shared_ForwardISR_NumReflectionCaptures ;
	 uint    TranslucentBasePass_Shared_ForwardISR_HasDirectionalLight ;
	 uint    TranslucentBasePass_Shared_ForwardISR_NumGridCells ;
	 int3    TranslucentBasePass_Shared_ForwardISR_CulledGridSize ;
	 uint    TranslucentBasePass_Shared_ForwardISR_MaxCulledLightsPerCell ;
	 uint    TranslucentBasePass_Shared_ForwardISR_LightGridPixelSizeShift ;
	 uint    TranslucentBasePass_Padding724 ;
	 uint    TranslucentBasePass_Padding728 ;
	 uint    TranslucentBasePass_Padding732 ;
	 float3    TranslucentBasePass_Shared_ForwardISR_LightGridZParams ;
	 float    TranslucentBasePass_Padding748 ;
	 float3    TranslucentBasePass_Shared_ForwardISR_DirectionalLightDirection ;
	 float    TranslucentBasePass_Shared_ForwardISR_DirectionalLightSourceRadius ;
	 float    TranslucentBasePass_Shared_ForwardISR_DirectionalLightSoftSourceRadius ;
	 float    TranslucentBasePass_Padding772 ;
	 float    TranslucentBasePass_Padding776 ;
	 float    TranslucentBasePass_Padding780 ;
	 float3    TranslucentBasePass_Shared_ForwardISR_DirectionalLightColor ;
	 float    TranslucentBasePass_Shared_ForwardISR_DirectionalLightVolumetricScatteringIntensity ;
	 float    TranslucentBasePass_Shared_ForwardISR_DirectionalLightSpecularScale ;
	 float    TranslucentBasePass_Shared_ForwardISR_DirectionalLightDiffuseScale ;
	 uint    TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowMapChannelMask ;
	 uint    TranslucentBasePass_Padding812 ;
	 float2    TranslucentBasePass_Shared_ForwardISR_DirectionalLightDistanceFadeMAD ;
	 uint    TranslucentBasePass_Shared_ForwardISR_NumDirectionalLightCascades ;
	 int    TranslucentBasePass_Shared_ForwardISR_DirectionalLightVSM ;
	 float4    TranslucentBasePass_Shared_ForwardISR_CascadeEndDepths ;
	 float4x4    TranslucentBasePass_Shared_ForwardISR_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowmapMinMax[4] ;
	 float4    TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlasBufferSize ;
	 float    TranslucentBasePass_Shared_ForwardISR_DirectionalLightDepthBias ;
	 uint    TranslucentBasePass_Shared_ForwardISR_DirectionalLightUseStaticShadowing ;
	 uint    TranslucentBasePass_Shared_ForwardISR_SimpleLightsEndIndex ;
	 uint    TranslucentBasePass_Shared_ForwardISR_ClusteredDeferredSupportedEndIndex ;
	 uint    TranslucentBasePass_Shared_ForwardISR_MegaLightsSupportedStartIndex ;
	 uint    TranslucentBasePass_Padding1204 ;
	 uint    TranslucentBasePass_Padding1208 ;
	 uint    TranslucentBasePass_Padding1212 ;
	 float4    TranslucentBasePass_Shared_ForwardISR_DirectionalLightStaticShadowBufferSize ;
	 float4x4    TranslucentBasePass_Shared_ForwardISR_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    TranslucentBasePass_Shared_ForwardISR_DirectLightingShowFlag ;
	 uint    TranslucentBasePass_Shared_ForwardISR_LightFunctionAtlasLightIndex ;
	 uint    TranslucentBasePass_Shared_ForwardISR_bAffectsTranslucentLighting ;
	 uint    TranslucentBasePass_Padding1308 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlas ;
	 uint    TranslucentBasePass_Padding1316 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_ForwardISR_ShadowmapSampler ;
	 uint    TranslucentBasePass_Padding1324 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_ForwardISR_DirectionalLightStaticShadowmap ;
	 uint    TranslucentBasePass_Padding1332 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_ForwardISR_StaticShadowmapSampler ;
	 uint    TranslucentBasePass_Padding1340 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer ;
	 uint    TranslucentBasePass_Padding1348 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid ;
	 uint    TranslucentBasePass_Padding1356 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid32Bit ;
	 uint    TranslucentBasePass_Padding1364 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid16Bit ;
	 float    TranslucentBasePass_Padding1372 ;
	 float4    TranslucentBasePass_Shared_Reflection_SkyLightParameters ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Reflection_SkyLightCubemap ;
	 uint    TranslucentBasePass_Padding1396 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler ;
	 uint    TranslucentBasePass_Padding1404 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Reflection_SkyLightBlendDestinationCubemap ;
	 uint    TranslucentBasePass_Padding1412 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_Reflection_SkyLightBlendDestinationCubemapSampler ;
	 uint    TranslucentBasePass_Padding1420 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Reflection_ReflectionCubemap ;
	 uint    TranslucentBasePass_Padding1428 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler ;
	 uint    TranslucentBasePass_Padding1436 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Reflection_PreIntegratedGF ;
	 uint    TranslucentBasePass_Padding1444 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_Reflection_PreIntegratedGFSampler ;
	 float    TranslucentBasePass_Padding1452 ;
	 float4    TranslucentBasePass_Shared_PlanarReflection_ReflectionPlane ;
	 float4    TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionOrigin ;
	 float4    TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionXAxis ;
	 float4    TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionYAxis ;
	 float3x4    TranslucentBasePass_Shared_PlanarReflection_InverseTransposeMirrorMatrix ;
	 float3    TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters ;
	 float    TranslucentBasePass_Padding1580 ;
	 float2    TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionParameters2 ;
	 float    TranslucentBasePass_Padding1592 ;
	 float    TranslucentBasePass_Padding1596 ;
	 float4x4    TranslucentBasePass_Shared_PlanarReflection_ProjectionWithExtraFOV[2] ;
	 float4    TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenScaleBias[2] ;
	 float2    TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionScreenBound ;
	 uint    TranslucentBasePass_Shared_PlanarReflection_bIsStereo ;
	 uint    TranslucentBasePass_Padding1772 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture ;
	 uint    TranslucentBasePass_Padding1780 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionSampler ;
	 float    TranslucentBasePass_Padding1788 ;
	 float4    TranslucentBasePass_Shared_Fog_ExponentialFogParameters ;
	 float4    TranslucentBasePass_Shared_Fog_ExponentialFogParameters2 ;
	 float4    TranslucentBasePass_Shared_Fog_ExponentialFogColorParameter ;
	 float4    TranslucentBasePass_Shared_Fog_ExponentialFogParameters3 ;
	 float4    TranslucentBasePass_Shared_Fog_SkyAtmosphereAmbientContributionColorScale ;
	 float4    TranslucentBasePass_Shared_Fog_InscatteringLightDirection ;
	 float4    TranslucentBasePass_Shared_Fog_DirectionalInscatteringColor ;
	 float2    TranslucentBasePass_Shared_Fog_SinCosInscatteringColorCubemapRotation ;
	 float    TranslucentBasePass_Padding1912 ;
	 float    TranslucentBasePass_Padding1916 ;
	 float3    TranslucentBasePass_Shared_Fog_FogInscatteringTextureParameters ;
	 float    TranslucentBasePass_Shared_Fog_EndDistance ;
	 float    TranslucentBasePass_Shared_Fog_ApplyVolumetricFog ;
	 float    TranslucentBasePass_Shared_Fog_VolumetricFogStartDistance ;
	 float    TranslucentBasePass_Shared_Fog_VolumetricFogNearFadeInDistanceInv ;
	 float    TranslucentBasePass_Padding1948 ;
	 float3    TranslucentBasePass_Shared_Fog_VolumetricFogAlbedo ;
	 float    TranslucentBasePass_Shared_Fog_VolumetricFogPhaseG ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap ;
	 uint    TranslucentBasePass_Padding1972 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler ;
	 uint    TranslucentBasePass_Padding1980 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_Fog_IntegratedLightScattering ;
	 uint    TranslucentBasePass_Padding1988 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_Fog_IntegratedLightScatteringSampler ;
	 float    TranslucentBasePass_Padding1996 ;
	 float4    TranslucentBasePass_Shared_FogISR_ExponentialFogParameters ;
	 float4    TranslucentBasePass_Shared_FogISR_ExponentialFogParameters2 ;
	 float4    TranslucentBasePass_Shared_FogISR_ExponentialFogColorParameter ;
	 float4    TranslucentBasePass_Shared_FogISR_ExponentialFogParameters3 ;
	 float4    TranslucentBasePass_Shared_FogISR_SkyAtmosphereAmbientContributionColorScale ;
	 float4    TranslucentBasePass_Shared_FogISR_InscatteringLightDirection ;
	 float4    TranslucentBasePass_Shared_FogISR_DirectionalInscatteringColor ;
	 float2    TranslucentBasePass_Shared_FogISR_SinCosInscatteringColorCubemapRotation ;
	 float    TranslucentBasePass_Padding2120 ;
	 float    TranslucentBasePass_Padding2124 ;
	 float3    TranslucentBasePass_Shared_FogISR_FogInscatteringTextureParameters ;
	 float    TranslucentBasePass_Shared_FogISR_EndDistance ;
	 float    TranslucentBasePass_Shared_FogISR_ApplyVolumetricFog ;
	 float    TranslucentBasePass_Shared_FogISR_VolumetricFogStartDistance ;
	 float    TranslucentBasePass_Shared_FogISR_VolumetricFogNearFadeInDistanceInv ;
	 float    TranslucentBasePass_Padding2156 ;
	 float3    TranslucentBasePass_Shared_FogISR_VolumetricFogAlbedo ;
	 float    TranslucentBasePass_Shared_FogISR_VolumetricFogPhaseG ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_FogISR_FogInscatteringColorCubemap ;
	 uint    TranslucentBasePass_Padding2180 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_FogISR_FogInscatteringColorSampler ;
	 uint    TranslucentBasePass_Padding2188 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_FogISR_IntegratedLightScattering ;
	 uint    TranslucentBasePass_Padding2196 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_FogISR_IntegratedLightScatteringSampler ;
	 float    TranslucentBasePass_Padding2204 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_LFV_LocalFogVolumeInstances ;
	 uint    TranslucentBasePass_Padding2212 ;
	 uint2    TranslucentBasePass_Shared_LFV_LocalFogVolumeTileDataTextureResolution ;
	 uint    TranslucentBasePass_Shared_LFV_LocalFogVolumeInstanceCount ;
	 uint    TranslucentBasePass_Shared_LFV_LocalFogVolumeTilePixelSize ;
	 float    TranslucentBasePass_Shared_LFV_LocalFogVolumeMaxDensityIntoVolumetricFog ;
	 uint    TranslucentBasePass_Shared_LFV_ShouldRenderLocalFogVolumeInVolumetricFog ;
	 float    TranslucentBasePass_Shared_LFV_GlobalStartDistance ;
	 float    TranslucentBasePass_Padding2244 ;
	 float    TranslucentBasePass_Padding2248 ;
	 float    TranslucentBasePass_Padding2252 ;
	 float4    TranslucentBasePass_Shared_LFV_HalfResTextureSizeAndInvSize ;
	 float3    TranslucentBasePass_Shared_LFV_DirectionalLightColor ;
	 float    TranslucentBasePass_Padding2284 ;
	 float3    TranslucentBasePass_Shared_LFV_DirectionalLightDirection ;
	 float    TranslucentBasePass_Padding2300 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_LFV_LocalFogVolumeTileDataTexture ;
	 float    TranslucentBasePass_Padding2308 ;
	 float    TranslucentBasePass_Padding2312 ;
	 float    TranslucentBasePass_Padding2316 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_LightFunctionAtlas_LightFunctionAtlasTexture ;
	 uint    TranslucentBasePass_Padding2324 ;
	 uint    BindlessSRV_TranslucentBasePass_Shared_LightFunctionAtlas_LightInfoDataBuffer ;
	 uint    TranslucentBasePass_Padding2332 ;
	 uint    BindlessSampler_TranslucentBasePass_Shared_LightFunctionAtlas_LightFunctionAtlasSampler ;
	 uint    TranslucentBasePass_Padding2340 ;
	 float    TranslucentBasePass_Shared_LightFunctionAtlas_Slot_UVSize ;
	 float    TranslucentBasePass_Padding2348 ;
	 uint    TranslucentBasePass_Shared_UseBasePassSkylight ;
	 float    TranslucentBasePass_Padding2356 ;
	 float    TranslucentBasePass_Padding2360 ;
	 float    TranslucentBasePass_Padding2364 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_SceneColorTexture ;
	 uint    TranslucentBasePass_Padding2372 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_SceneDepthTexture ;
	 uint    TranslucentBasePass_Padding2380 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_ScenePartialDepthTexture ;
	 uint    TranslucentBasePass_Padding2388 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_GBufferATexture ;
	 uint    TranslucentBasePass_Padding2396 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_GBufferBTexture ;
	 uint    TranslucentBasePass_Padding2404 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_GBufferCTexture ;
	 uint    TranslucentBasePass_Padding2412 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_GBufferDTexture ;
	 uint    TranslucentBasePass_Padding2420 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_GBufferETexture ;
	 uint    TranslucentBasePass_Padding2428 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_GBufferFTexture ;
	 uint    TranslucentBasePass_Padding2436 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_GBufferVelocityTexture ;
	 uint    TranslucentBasePass_Padding2444 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_ScreenSpaceAOTexture ;
	 uint    TranslucentBasePass_Padding2452 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_CustomDepthTexture ;
	 uint    TranslucentBasePass_Padding2460 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneTextures_CustomStencilTexture ;
	 uint    TranslucentBasePass_Padding2468 ;
	 uint    BindlessSampler_TranslucentBasePass_SceneTextures_PointClampSampler ;
	 float    TranslucentBasePass_Padding2476 ;
	 uint    TranslucentBasePass_Substrate_MaxBytesPerPixel ;
	 uint    TranslucentBasePass_Substrate_MaxClosurePerPixel ;
	 uint    TranslucentBasePass_Substrate_bRoughDiffuse ;
	 uint    TranslucentBasePass_Substrate_PeelLayersAboveDepth ;
	 uint    TranslucentBasePass_Substrate_bRoughnessTracking ;
	 float    TranslucentBasePass_Padding2500 ;
	 float    TranslucentBasePass_Padding2504 ;
	 float    TranslucentBasePass_Padding2508 ;
	 int    TranslucentBasePass_Substrate_FirstSliceStoringSubstrateSSSData ;
	 int    TranslucentBasePass_Padding2516 ;
	 uint    BindlessSRV_TranslucentBasePass_Substrate_MaterialTextureArray ;
	 uint    TranslucentBasePass_Padding2524 ;
	 uint    BindlessSRV_TranslucentBasePass_Substrate_TopLayerTexture ;
	 float    TranslucentBasePass_Padding2532 ;
	 float    TranslucentBasePass_Padding2536 ;
	 float    TranslucentBasePass_Padding2540 ;
	 float4x4    TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapTranslatedWorldToLightClipMatrix ;
	 float    TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapFarDepthKm ;
	 float    TranslucentBasePass_Padding2612 ;
	 uint    BindlessSRV_TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapTexture ;
	 uint    TranslucentBasePass_Padding2620 ;
	 uint    BindlessSampler_TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapSampler ;
	 uint    TranslucentBasePass_Padding2628 ;
	 float    TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapStrength ;
	 float    TranslucentBasePass_Padding2636 ;
	 uint    TranslucentBasePass_OIT_bOITEnable ;
	 uint    TranslucentBasePass_OIT_OITMethod ;
	 uint    TranslucentBasePass_OIT_MaxSideSamplePerPixel ;
	 uint    TranslucentBasePass_OIT_MaxSamplePerPixel ;
	 float    TranslucentBasePass_OIT_TransmittanceThreshold ;
	 float    TranslucentBasePass_Padding2660 ;
	 uint    BindlessUAV_TranslucentBasePass_OIT_OutOITSampleCount ;
	 uint    TranslucentBasePass_Padding2668 ;
	 uint    BindlessUAV_TranslucentBasePass_OIT_OutOITSampleData ;
	 float    TranslucentBasePass_Padding2676 ;
	 float    TranslucentBasePass_Padding2680 ;
	 float    TranslucentBasePass_Padding2684 ;
	 float4    TranslucentBasePass_HZBUvFactorAndInvFactor ;
	 float4    TranslucentBasePass_PrevScreenPositionScaleBias ;
	 float2    TranslucentBasePass_PrevSceneColorBilinearUVMin ;
	 float2    TranslucentBasePass_PrevSceneColorBilinearUVMax ;
	 float    TranslucentBasePass_PrevSceneColorPreExposureInv ;
	 int    TranslucentBasePass_SSRQuality ;
	 uint    BindlessSRV_TranslucentBasePass_HZBTexture ;
	 uint    TranslucentBasePass_Padding2748 ;
	 uint    BindlessSampler_TranslucentBasePass_HZBSampler ;
	 uint    TranslucentBasePass_Padding2756 ;
	 uint    BindlessSRV_TranslucentBasePass_PrevSceneColor ;
	 uint    TranslucentBasePass_Padding2764 ;
	 uint    BindlessSampler_TranslucentBasePass_PrevSceneColorSampler ;
	 uint    TranslucentBasePass_Padding2772 ;
	 uint    BindlessSRV_TranslucentBasePass_VolumetricCloudColor ;
	 uint    TranslucentBasePass_Padding2780 ;
	 uint    BindlessSampler_TranslucentBasePass_VolumetricCloudColorSampler ;
	 uint    TranslucentBasePass_Padding2788 ;
	 uint    BindlessSRV_TranslucentBasePass_VolumetricCloudDepth ;
	 uint    TranslucentBasePass_Padding2796 ;
	 uint    BindlessSampler_TranslucentBasePass_VolumetricCloudDepthSampler ;
	 uint    TranslucentBasePass_Padding2804 ;
	 float    TranslucentBasePass_ApplyVolumetricCloudOnTransparent ;
	 float    TranslucentBasePass_SoftBlendingDistanceKm ;
	 uint    BindlessSRV_TranslucentBasePass_TranslucencyLightingVolumeAmbientInner ;
	 uint    TranslucentBasePass_Padding2820 ;
	 uint    BindlessSRV_TranslucentBasePass_TranslucencyLightingVolumeAmbientOuter ;
	 uint    TranslucentBasePass_Padding2828 ;
	 uint    BindlessSRV_TranslucentBasePass_TranslucencyLightingVolumeDirectionalInner ;
	 uint    TranslucentBasePass_Padding2836 ;
	 uint    BindlessSRV_TranslucentBasePass_TranslucencyLightingVolumeDirectionalOuter ;
	 float    TranslucentBasePass_Padding2844 ;
	 float    TranslucentBasePass_ReprojectionRadiusScale ;
	 float    TranslucentBasePass_ClipmapWorldExtent ;
	 float    TranslucentBasePass_ClipmapDistributionBase ;
	 float    TranslucentBasePass_InvClipmapFadeSize ;
	 float    TranslucentBasePass_ProbeTMinScale ;
	 float    TranslucentBasePass_Padding2868 ;
	 int2    TranslucentBasePass_ProbeAtlasResolutionInProbes ;
	 uint    TranslucentBasePass_RadianceProbeClipmapResolution ;
	 uint    TranslucentBasePass_NumRadianceProbeClipmaps ;
	 uint    TranslucentBasePass_RadianceProbeResolution ;
	 uint    TranslucentBasePass_FinalProbeResolution ;
	 uint    TranslucentBasePass_FinalRadianceAtlasMaxMip ;
	 uint    TranslucentBasePass_CalculateIrradiance ;
	 uint    TranslucentBasePass_IrradianceProbeResolution ;
	 uint    TranslucentBasePass_OcclusionProbeResolution ;
	 uint    TranslucentBasePass_NumProbesToTraceBudget ;
	 uint    TranslucentBasePass_RadianceCacheStats ;
	 float    TranslucentBasePass_Padding2920 ;
	 float    TranslucentBasePass_Padding2924 ;
	 uint    BindlessSRV_TranslucentBasePass_RadianceProbeIndirectionTexture ;
	 uint    TranslucentBasePass_Padding2932 ;
	 uint    BindlessSRV_TranslucentBasePass_RadianceCacheFinalRadianceAtlas ;
	 uint    TranslucentBasePass_Padding2940 ;
	 uint    BindlessSRV_TranslucentBasePass_RadianceCacheFinalIrradianceAtlas ;
	 uint    TranslucentBasePass_Padding2948 ;
	 uint    BindlessSRV_TranslucentBasePass_RadianceCacheProbeOcclusionAtlas ;
	 uint    TranslucentBasePass_Padding2956 ;
	 uint    BindlessSRV_TranslucentBasePass_RadianceCacheDepthAtlas ;
	 uint    TranslucentBasePass_Padding2964 ;
	 uint    BindlessSRV_TranslucentBasePass_ProbeWorldOffset ;
	 uint    TranslucentBasePass_Padding2972 ;
	 float4    TranslucentBasePass_RadianceProbeSettings[6] ;
	 float4    TranslucentBasePass_ClipmapCornerTWSAndCellSize[6] ;
	 float2    TranslucentBasePass_InvProbeFinalRadianceAtlasResolution ;
	 float2    TranslucentBasePass_InvProbeFinalIrradianceAtlasResolution ;
	 float2    TranslucentBasePass_InvProbeDepthAtlasResolution ;
	 uint    TranslucentBasePass_OverrideCacheOcclusionLighting ;
	 uint    TranslucentBasePass_ShowBlackRadianceCacheLighting ;
	 uint    TranslucentBasePass_ProbeAtlasResolutionModuloMask ;
	 uint    TranslucentBasePass_ProbeAtlasResolutionDivideShift ;
	 float    TranslucentBasePass_Padding3208 ;
	 float    TranslucentBasePass_Padding3212 ;
	 uint    BindlessSRV_TranslucentBasePass_Radiance ;
	 uint    TranslucentBasePass_Padding3220 ;
	 uint    BindlessSRV_TranslucentBasePass_Normal ;
	 uint    TranslucentBasePass_Padding3228 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneDepth ;
	 uint    TranslucentBasePass_Padding3236 ;
	 uint    TranslucentBasePass_Enabled ;
	 float    TranslucentBasePass_RelativeDepthThreshold ;
	 float    TranslucentBasePass_SpecularScale ;
	 float    TranslucentBasePass_Contrast ;
	 float    TranslucentBasePass_Padding3256 ;
	 float    TranslucentBasePass_Padding3260 ;
	 uint    BindlessSRV_TranslucentBasePass_TranslucencyGIVolume0 ;
	 uint    TranslucentBasePass_Padding3268 ;
	 uint    BindlessSRV_TranslucentBasePass_TranslucencyGIVolume1 ;
	 uint    TranslucentBasePass_Padding3276 ;
	 uint    BindlessSRV_TranslucentBasePass_TranslucencyGIVolumeHistory0 ;
	 uint    TranslucentBasePass_Padding3284 ;
	 uint    BindlessSRV_TranslucentBasePass_TranslucencyGIVolumeHistory1 ;
	 uint    TranslucentBasePass_Padding3292 ;
	 uint    BindlessSampler_TranslucentBasePass_TranslucencyGIVolumeSampler ;
	 uint    TranslucentBasePass_Padding3300 ;
	 uint    TranslucentBasePass_Padding3304 ;
	 uint    TranslucentBasePass_Padding3308 ;
	 float3    TranslucentBasePass_TranslucencyGIGridZParams ;
	 uint    TranslucentBasePass_TranslucencyGIGridPixelSizeShift ;
	 int3    TranslucentBasePass_TranslucencyGIGridSize ;
	 float    TranslucentBasePass_Padding3340 ;
	 uint    BindlessSRV_TranslucentBasePass_PreIntegratedGFTexture ;
	 uint    TranslucentBasePass_Padding3348 ;
	 uint    BindlessSampler_TranslucentBasePass_PreIntegratedGFSampler ;
	 uint    TranslucentBasePass_Padding3356 ;
	 uint    BindlessSRV_TranslucentBasePass_EyeAdaptationBuffer ;
	 uint    TranslucentBasePass_Padding3364 ;
	 uint    BindlessSRV_TranslucentBasePass_SceneColorCopyTexture ;
	 uint    TranslucentBasePass_Padding3372 ;
	 uint    BindlessSampler_TranslucentBasePass_SceneColorCopySampler ;
	 float    TranslucentBasePass_Padding3380 ;
	 float    TranslucentBasePass_Padding3384 ;
	 float    TranslucentBasePass_Padding3388 ;
	 int3    TranslucentBasePass_BlueNoise_Dimensions ;
	 int    TranslucentBasePass_Padding3404 ;
	 int3    TranslucentBasePass_BlueNoise_ModuloMasks ;
	 int    TranslucentBasePass_Padding3420 ;
	 uint    BindlessSRV_TranslucentBasePass_BlueNoise_ScalarTexture ;
	 uint    TranslucentBasePass_Padding3428 ;
	 uint    BindlessSRV_TranslucentBasePass_BlueNoise_Vec2Texture ;
	 float    TranslucentBasePass_Padding3436 ;
	 float4x4    TranslucentBasePass_AVSM_TranslatedWorldToShadow[6] ;
	 float3    TranslucentBasePass_AVSM_TranslatedWorldOrigin ;
	 float    TranslucentBasePass_Padding3836 ;
	 float4    TranslucentBasePass_AVSM_TranslatedWorldPlane ;
	 int2    TranslucentBasePass_AVSM_Resolution ;
	 int    TranslucentBasePass_AVSM_NumShadowMatrices ;
	 int    TranslucentBasePass_AVSM_MaxSampleCount ;
	 int    TranslucentBasePass_AVSM_bIsEmpty ;
	 int    TranslucentBasePass_AVSM_bIsDirectionalLight ;
	 uint    BindlessSRV_TranslucentBasePass_AVSM_LinkedListBuffer ;
	 uint    TranslucentBasePass_Padding3884 ;
	 uint    BindlessSRV_TranslucentBasePass_AVSM_IndirectionBuffer ;
	 uint    TranslucentBasePass_Padding3892 ;
	 uint    BindlessSRV_TranslucentBasePass_AVSM_SampleBuffer ;
	 uint    TranslucentBasePass_Padding3900 ;
	 int    TranslucentBasePass_TranslucencyPass ;
 }
  Texture2D  TranslucentBasePass_Shared_Forward_DirectionalLightShadowmapAtlas ;
  SamplerState  TranslucentBasePass_Shared_Forward_ShadowmapSampler ;
  Texture2D  TranslucentBasePass_Shared_Forward_DirectionalLightStaticShadowmap ;
  SamplerState  TranslucentBasePass_Shared_Forward_StaticShadowmapSampler ;
  StructuredBuffer<float4>  TranslucentBasePass_Shared_Forward_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  TranslucentBasePass_Shared_Forward_NumCulledLightsGrid ;
  StructuredBuffer<uint>  TranslucentBasePass_Shared_Forward_CulledLightDataGrid32Bit ;
  Buffer<uint>  TranslucentBasePass_Shared_Forward_CulledLightDataGrid16Bit ;
  Texture2D  TranslucentBasePass_Shared_ForwardISR_DirectionalLightShadowmapAtlas ;
  SamplerState  TranslucentBasePass_Shared_ForwardISR_ShadowmapSampler ;
  Texture2D  TranslucentBasePass_Shared_ForwardISR_DirectionalLightStaticShadowmap ;
  SamplerState  TranslucentBasePass_Shared_ForwardISR_StaticShadowmapSampler ;
  StructuredBuffer<float4>  TranslucentBasePass_Shared_ForwardISR_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  TranslucentBasePass_Shared_ForwardISR_NumCulledLightsGrid ;
  StructuredBuffer<uint>  TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid32Bit ;
  Buffer<uint>  TranslucentBasePass_Shared_ForwardISR_CulledLightDataGrid16Bit ;
  TextureCube  TranslucentBasePass_Shared_Reflection_SkyLightCubemap ;
  SamplerState  TranslucentBasePass_Shared_Reflection_SkyLightCubemapSampler ;
  TextureCube  TranslucentBasePass_Shared_Reflection_SkyLightBlendDestinationCubemap ;
  SamplerState  TranslucentBasePass_Shared_Reflection_SkyLightBlendDestinationCubemapSampler ;
  TextureCubeArray  TranslucentBasePass_Shared_Reflection_ReflectionCubemap ;
  SamplerState  TranslucentBasePass_Shared_Reflection_ReflectionCubemapSampler ;
  Texture2D  TranslucentBasePass_Shared_Reflection_PreIntegratedGF ;
  SamplerState  TranslucentBasePass_Shared_Reflection_PreIntegratedGFSampler ;
  Texture2D  TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionTexture ;
  SamplerState  TranslucentBasePass_Shared_PlanarReflection_PlanarReflectionSampler ;
  TextureCube  TranslucentBasePass_Shared_Fog_FogInscatteringColorCubemap ;
  SamplerState  TranslucentBasePass_Shared_Fog_FogInscatteringColorSampler ;
  Texture3D  TranslucentBasePass_Shared_Fog_IntegratedLightScattering ;
  SamplerState  TranslucentBasePass_Shared_Fog_IntegratedLightScatteringSampler ;
  TextureCube  TranslucentBasePass_Shared_FogISR_FogInscatteringColorCubemap ;
  SamplerState  TranslucentBasePass_Shared_FogISR_FogInscatteringColorSampler ;
  Texture3D  TranslucentBasePass_Shared_FogISR_IntegratedLightScattering ;
  SamplerState  TranslucentBasePass_Shared_FogISR_IntegratedLightScatteringSampler ;
  Buffer<float4>  TranslucentBasePass_Shared_LFV_LocalFogVolumeInstances ;
  Texture2DArray<uint>  TranslucentBasePass_Shared_LFV_LocalFogVolumeTileDataTexture ;
  Texture2D<float4>  TranslucentBasePass_Shared_LightFunctionAtlas_LightFunctionAtlasTexture ;
  StructuredBuffer<float4>  TranslucentBasePass_Shared_LightFunctionAtlas_LightInfoDataBuffer ;
  SamplerState  TranslucentBasePass_Shared_LightFunctionAtlas_LightFunctionAtlasSampler ;
  Texture2D  TranslucentBasePass_SceneTextures_SceneColorTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_SceneDepthTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_ScenePartialDepthTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_GBufferATexture ;
  Texture2D  TranslucentBasePass_SceneTextures_GBufferBTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_GBufferCTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_GBufferDTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_GBufferETexture ;
  Texture2D  TranslucentBasePass_SceneTextures_GBufferFTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_GBufferVelocityTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_ScreenSpaceAOTexture ;
  Texture2D  TranslucentBasePass_SceneTextures_CustomDepthTexture ;
  Texture2D<uint2>  TranslucentBasePass_SceneTextures_CustomStencilTexture ;
  SamplerState  TranslucentBasePass_SceneTextures_PointClampSampler ;
  Texture2DArray<uint>  TranslucentBasePass_Substrate_MaterialTextureArray ;
  Texture2D<uint>  TranslucentBasePass_Substrate_TopLayerTexture ;
  Texture2D<float3>  TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapTexture ;
  SamplerState  TranslucentBasePass_ForwardDirLightCloudShadow_CloudShadowmapSampler ;
  RWTexture2D<uint>  TranslucentBasePass_OIT_OutOITSampleCount ;
  RWTexture2DArray<uint>  TranslucentBasePass_OIT_OutOITSampleData ;
  Texture3D  TranslucentBasePass_TranslucencyLightingVolumeAmbientInner ;
  Texture3D  TranslucentBasePass_TranslucencyLightingVolumeAmbientOuter ;
  Texture3D  TranslucentBasePass_TranslucencyLightingVolumeDirectionalInner ;
  Texture3D  TranslucentBasePass_TranslucencyLightingVolumeDirectionalOuter ;
  Texture3D<uint>  TranslucentBasePass_RadianceProbeIndirectionTexture ;
  Texture2D<float3>  TranslucentBasePass_RadianceCacheFinalRadianceAtlas ;
  Texture2D<float3>  TranslucentBasePass_RadianceCacheFinalIrradianceAtlas ;
  Texture2D<float2>  TranslucentBasePass_RadianceCacheProbeOcclusionAtlas ;
  Texture2D<float>  TranslucentBasePass_RadianceCacheDepthAtlas ;
  StructuredBuffer<float4>  TranslucentBasePass_ProbeWorldOffset ;
  Texture2DArray  TranslucentBasePass_Radiance ;
  Texture2D  TranslucentBasePass_Normal ;
  Texture2D  TranslucentBasePass_SceneDepth ;
  Texture3D  TranslucentBasePass_TranslucencyGIVolume0 ;
  Texture3D  TranslucentBasePass_TranslucencyGIVolume1 ;
  Texture3D  TranslucentBasePass_TranslucencyGIVolumeHistory0 ;
  Texture3D  TranslucentBasePass_TranslucencyGIVolumeHistory1 ;
  SamplerState  TranslucentBasePass_TranslucencyGIVolumeSampler ;
  Texture2D  TranslucentBasePass_BlueNoise_ScalarTexture ;
  Texture2D  TranslucentBasePass_BlueNoise_Vec2Texture ;
  StructuredBuffer<uint2>  TranslucentBasePass_AVSM_LinkedListBuffer ;
  StructuredBuffer<uint4>  TranslucentBasePass_AVSM_IndirectionBuffer ;
  StructuredBuffer<uint>  TranslucentBasePass_AVSM_SampleBuffer ;
  Texture2D  TranslucentBasePass_HZBTexture ;
  SamplerState  TranslucentBasePass_HZBSampler ;
  Texture2D  TranslucentBasePass_PrevSceneColor ;
  SamplerState  TranslucentBasePass_PrevSceneColorSampler ;
  Texture2D  TranslucentBasePass_VolumetricCloudColor ;
  SamplerState  TranslucentBasePass_VolumetricCloudColorSampler ;
  Texture2D  TranslucentBasePass_VolumetricCloudDepth ;
  SamplerState  TranslucentBasePass_VolumetricCloudDepthSampler ;
  Texture2D  TranslucentBasePass_PreIntegratedGFTexture ;
  SamplerState  TranslucentBasePass_PreIntegratedGFSampler ;
  StructuredBuffer<float4>  TranslucentBasePass_EyeAdaptationBuffer ;
  Texture2D  TranslucentBasePass_SceneColorCopyTexture ;
  SamplerState  TranslucentBasePass_SceneColorCopySampler ;
 cbuffer IndirectLightingCache {
	 float3    IndirectLightingCache_IndirectLightingCachePrimitiveAdd ;
	 float    IndirectLightingCache_Padding12 ;
	 float3    IndirectLightingCache_IndirectLightingCachePrimitiveScale ;
	 float    IndirectLightingCache_Padding28 ;
	 float3    IndirectLightingCache_IndirectLightingCacheMinUV ;
	 float    IndirectLightingCache_Padding44 ;
	 float3    IndirectLightingCache_IndirectLightingCacheMaxUV ;
	 float    IndirectLightingCache_Padding60 ;
	 float4    IndirectLightingCache_PointSkyBentNormal ;
	 float    IndirectLightingCache_DirectionalLightShadowing ;
	 float    IndirectLightingCache_Padding84 ;
	 float    IndirectLightingCache_Padding88 ;
	 float    IndirectLightingCache_Padding92 ;
	 float4    IndirectLightingCache_IndirectLightingSHCoefficients0[3] ;
	 float4    IndirectLightingCache_IndirectLightingSHCoefficients1[3] ;
	 float4    IndirectLightingCache_IndirectLightingSHCoefficients2 ;
	 float4    IndirectLightingCache_IndirectLightingSHSingleCoefficient ;
	 uint    BindlessSRV_IndirectLightingCache_IndirectLightingCacheTexture0 ;
	 uint    IndirectLightingCache_Padding228 ;
	 uint    BindlessSRV_IndirectLightingCache_IndirectLightingCacheTexture1 ;
	 uint    IndirectLightingCache_Padding236 ;
	 uint    BindlessSRV_IndirectLightingCache_IndirectLightingCacheTexture2 ;
	 uint    IndirectLightingCache_Padding244 ;
	 uint    BindlessSampler_IndirectLightingCache_IndirectLightingCacheTextureSampler0 ;
	 uint    IndirectLightingCache_Padding252 ;
	 uint    BindlessSampler_IndirectLightingCache_IndirectLightingCacheTextureSampler1 ;
	 uint    IndirectLightingCache_Padding260 ;
	 uint    BindlessSampler_IndirectLightingCache_IndirectLightingCacheTextureSampler2 ;
 }
  Texture3D  IndirectLightingCache_IndirectLightingCacheTexture0 ;
  Texture3D  IndirectLightingCache_IndirectLightingCacheTexture1 ;
  Texture3D  IndirectLightingCache_IndirectLightingCacheTexture2 ;
  SamplerState  IndirectLightingCache_IndirectLightingCacheTextureSampler0 ;
  SamplerState  IndirectLightingCache_IndirectLightingCacheTextureSampler1 ;
  SamplerState  IndirectLightingCache_IndirectLightingCacheTextureSampler2 ;
 cbuffer LightmapResourceCluster {
	 uint    BindlessSRV_LightmapResourceCluster_LightMapTexture ;
	 uint    LightmapResourceCluster_Padding4 ;
	 uint    BindlessSRV_LightmapResourceCluster_SkyOcclusionTexture ;
	 uint    LightmapResourceCluster_Padding12 ;
	 uint    BindlessSRV_LightmapResourceCluster_AOMaterialMaskTexture ;
	 uint    LightmapResourceCluster_Padding20 ;
	 uint    BindlessSRV_LightmapResourceCluster_StaticShadowTexture ;
	 uint    LightmapResourceCluster_Padding28 ;
	 uint    BindlessSRV_LightmapResourceCluster_VTLightMapTexture ;
	 uint    LightmapResourceCluster_Padding36 ;
	 uint    BindlessSRV_LightmapResourceCluster_VTLightMapTexture_1 ;
	 uint    LightmapResourceCluster_Padding44 ;
	 uint    BindlessSRV_LightmapResourceCluster_VTSkyOcclusionTexture ;
	 uint    LightmapResourceCluster_Padding52 ;
	 uint    BindlessSRV_LightmapResourceCluster_VTAOMaterialMaskTexture ;
	 uint    LightmapResourceCluster_Padding60 ;
	 uint    BindlessSRV_LightmapResourceCluster_VTStaticShadowTexture ;
	 uint    LightmapResourceCluster_Padding68 ;
	 uint    BindlessSampler_LightmapResourceCluster_LightMapSampler ;
	 uint    LightmapResourceCluster_Padding76 ;
	 uint    BindlessSampler_LightmapResourceCluster_LightMapSampler_1 ;
	 uint    LightmapResourceCluster_Padding84 ;
	 uint    BindlessSampler_LightmapResourceCluster_SkyOcclusionSampler ;
	 uint    LightmapResourceCluster_Padding92 ;
	 uint    BindlessSampler_LightmapResourceCluster_AOMaterialMaskSampler ;
	 uint    LightmapResourceCluster_Padding100 ;
	 uint    BindlessSampler_LightmapResourceCluster_StaticShadowTextureSampler ;
	 uint    LightmapResourceCluster_Padding108 ;
	 uint    BindlessSRV_LightmapResourceCluster_LightmapVirtualTexturePageTable0 ;
	 uint    LightmapResourceCluster_Padding116 ;
	 uint    BindlessSRV_LightmapResourceCluster_LightmapVirtualTexturePageTable1 ;
 }
  Texture2D  LightmapResourceCluster_LightMapTexture ;
  Texture2D  LightmapResourceCluster_SkyOcclusionTexture ;
  Texture2D  LightmapResourceCluster_AOMaterialMaskTexture ;
  Texture2D  LightmapResourceCluster_StaticShadowTexture ;
  Texture2D<float4>  LightmapResourceCluster_VTLightMapTexture ;
  Texture2D<float4>  LightmapResourceCluster_VTLightMapTexture_1 ;
  Texture2D<float4>  LightmapResourceCluster_VTSkyOcclusionTexture ;
  Texture2D<float4>  LightmapResourceCluster_VTAOMaterialMaskTexture ;
  Texture2D<float4>  LightmapResourceCluster_VTStaticShadowTexture ;
  SamplerState  LightmapResourceCluster_LightMapSampler ;
  SamplerState  LightmapResourceCluster_LightMapSampler_1 ;
  SamplerState  LightmapResourceCluster_SkyOcclusionSampler ;
  SamplerState  LightmapResourceCluster_AOMaterialMaskSampler ;
  SamplerState  LightmapResourceCluster_StaticShadowTextureSampler ;
  Texture2D<uint4>  LightmapResourceCluster_LightmapVirtualTexturePageTable0 ;
  Texture2D<uint4>  LightmapResourceCluster_LightmapVirtualTexturePageTable1 ;
 cbuffer PrecomputedLightingBuffer {
	 float4    PrecomputedLightingBuffer_StaticShadowMapMasks ;
	 float4    PrecomputedLightingBuffer_InvUniformPenumbraSizes ;
	 float4    PrecomputedLightingBuffer_LightMapCoordinateScaleBias ;
	 float4    PrecomputedLightingBuffer_ShadowMapCoordinateScaleBias ;
	 float4    PrecomputedLightingBuffer_LightMapScale[2] ;
	 float4    PrecomputedLightingBuffer_LightMapAdd[2] ;
	 uint4    PrecomputedLightingBuffer_LightmapVTPackedPageTableUniform[2] ;
	 uint4    PrecomputedLightingBuffer_LightmapVTPackedUniform[5] ;
 }
 cbuffer PlanarReflectionStruct {
	 float4    PlanarReflectionStruct_ReflectionPlane ;
	 float4    PlanarReflectionStruct_PlanarReflectionOrigin ;
	 float4    PlanarReflectionStruct_PlanarReflectionXAxis ;
	 float4    PlanarReflectionStruct_PlanarReflectionYAxis ;
	 float3x4    PlanarReflectionStruct_InverseTransposeMirrorMatrix ;
	 float3    PlanarReflectionStruct_PlanarReflectionParameters ;
	 float    PlanarReflectionStruct_Padding124 ;
	 float2    PlanarReflectionStruct_PlanarReflectionParameters2 ;
	 float    PlanarReflectionStruct_Padding136 ;
	 float    PlanarReflectionStruct_Padding140 ;
	 float4x4    PlanarReflectionStruct_ProjectionWithExtraFOV[2] ;
	 float4    PlanarReflectionStruct_PlanarReflectionScreenScaleBias[2] ;
	 float2    PlanarReflectionStruct_PlanarReflectionScreenBound ;
	 uint    PlanarReflectionStruct_bIsStereo ;
	 uint    PlanarReflectionStruct_Padding316 ;
	 uint    BindlessSRV_PlanarReflectionStruct_PlanarReflectionTexture ;
	 uint    PlanarReflectionStruct_Padding324 ;
	 uint    BindlessSampler_PlanarReflectionStruct_PlanarReflectionSampler ;
 }
  Texture2D  PlanarReflectionStruct_PlanarReflectionTexture ;
  SamplerState  PlanarReflectionStruct_PlanarReflectionSampler ;
 cbuffer ReflectionStruct {
	 float4    ReflectionStruct_SkyLightParameters ;
	 uint    BindlessSRV_ReflectionStruct_SkyLightCubemap ;
	 uint    ReflectionStruct_Padding20 ;
	 uint    BindlessSampler_ReflectionStruct_SkyLightCubemapSampler ;
	 uint    ReflectionStruct_Padding28 ;
	 uint    BindlessSRV_ReflectionStruct_SkyLightBlendDestinationCubemap ;
	 uint    ReflectionStruct_Padding36 ;
	 uint    BindlessSampler_ReflectionStruct_SkyLightBlendDestinationCubemapSampler ;
	 uint    ReflectionStruct_Padding44 ;
	 uint    BindlessSRV_ReflectionStruct_ReflectionCubemap ;
	 uint    ReflectionStruct_Padding52 ;
	 uint    BindlessSampler_ReflectionStruct_ReflectionCubemapSampler ;
	 uint    ReflectionStruct_Padding60 ;
	 uint    BindlessSRV_ReflectionStruct_PreIntegratedGF ;
	 uint    ReflectionStruct_Padding68 ;
	 uint    BindlessSampler_ReflectionStruct_PreIntegratedGFSampler ;
 }
  TextureCube  ReflectionStruct_SkyLightCubemap ;
  SamplerState  ReflectionStruct_SkyLightCubemapSampler ;
  TextureCube  ReflectionStruct_SkyLightBlendDestinationCubemap ;
  SamplerState  ReflectionStruct_SkyLightBlendDestinationCubemapSampler ;
  TextureCubeArray  ReflectionStruct_ReflectionCubemap ;
  SamplerState  ReflectionStruct_ReflectionCubemapSampler ;
  Texture2D  ReflectionStruct_PreIntegratedGF ;
  SamplerState  ReflectionStruct_PreIntegratedGFSampler ;
 cbuffer FogStruct {
	 float4    FogStruct_ExponentialFogParameters ;
	 float4    FogStruct_ExponentialFogParameters2 ;
	 float4    FogStruct_ExponentialFogColorParameter ;
	 float4    FogStruct_ExponentialFogParameters3 ;
	 float4    FogStruct_SkyAtmosphereAmbientContributionColorScale ;
	 float4    FogStruct_InscatteringLightDirection ;
	 float4    FogStruct_DirectionalInscatteringColor ;
	 float2    FogStruct_SinCosInscatteringColorCubemapRotation ;
	 float    FogStruct_Padding120 ;
	 float    FogStruct_Padding124 ;
	 float3    FogStruct_FogInscatteringTextureParameters ;
	 float    FogStruct_EndDistance ;
	 float    FogStruct_ApplyVolumetricFog ;
	 float    FogStruct_VolumetricFogStartDistance ;
	 float    FogStruct_VolumetricFogNearFadeInDistanceInv ;
	 float    FogStruct_Padding156 ;
	 float3    FogStruct_VolumetricFogAlbedo ;
	 float    FogStruct_VolumetricFogPhaseG ;
	 uint    BindlessSRV_FogStruct_FogInscatteringColorCubemap ;
	 uint    FogStruct_Padding180 ;
	 uint    BindlessSampler_FogStruct_FogInscatteringColorSampler ;
	 uint    FogStruct_Padding188 ;
	 uint    BindlessSRV_FogStruct_IntegratedLightScattering ;
	 uint    FogStruct_Padding196 ;
	 uint    BindlessSampler_FogStruct_IntegratedLightScatteringSampler ;
 }
  TextureCube  FogStruct_FogInscatteringColorCubemap ;
  SamplerState  FogStruct_FogInscatteringColorSampler ;
  Texture3D  FogStruct_IntegratedLightScattering ;
  SamplerState  FogStruct_IntegratedLightScatteringSampler ;
 cbuffer MobileBasePass {
	 float    MobileBasePass_AmbientOcclusionStaticFraction ;
	 float    MobileBasePass_Padding4 ;
	 float    MobileBasePass_Padding8 ;
	 float    MobileBasePass_Padding12 ;
	 float4    MobileBasePass_Fog_ExponentialFogParameters ;
	 float4    MobileBasePass_Fog_ExponentialFogParameters2 ;
	 float4    MobileBasePass_Fog_ExponentialFogColorParameter ;
	 float4    MobileBasePass_Fog_ExponentialFogParameters3 ;
	 float4    MobileBasePass_Fog_SkyAtmosphereAmbientContributionColorScale ;
	 float4    MobileBasePass_Fog_InscatteringLightDirection ;
	 float4    MobileBasePass_Fog_DirectionalInscatteringColor ;
	 float2    MobileBasePass_Fog_SinCosInscatteringColorCubemapRotation ;
	 float    MobileBasePass_Padding136 ;
	 float    MobileBasePass_Padding140 ;
	 float3    MobileBasePass_Fog_FogInscatteringTextureParameters ;
	 float    MobileBasePass_Fog_EndDistance ;
	 float    MobileBasePass_Fog_ApplyVolumetricFog ;
	 float    MobileBasePass_Fog_VolumetricFogStartDistance ;
	 float    MobileBasePass_Fog_VolumetricFogNearFadeInDistanceInv ;
	 float    MobileBasePass_Padding172 ;
	 float3    MobileBasePass_Fog_VolumetricFogAlbedo ;
	 float    MobileBasePass_Fog_VolumetricFogPhaseG ;
	 uint    BindlessSRV_MobileBasePass_Fog_FogInscatteringColorCubemap ;
	 uint    MobileBasePass_Padding196 ;
	 uint    BindlessSampler_MobileBasePass_Fog_FogInscatteringColorSampler ;
	 uint    MobileBasePass_Padding204 ;
	 uint    BindlessSRV_MobileBasePass_Fog_IntegratedLightScattering ;
	 uint    MobileBasePass_Padding212 ;
	 uint    BindlessSampler_MobileBasePass_Fog_IntegratedLightScatteringSampler ;
	 float    MobileBasePass_Padding220 ;
	 float4    MobileBasePass_FogMMV_ExponentialFogParameters ;
	 float4    MobileBasePass_FogMMV_ExponentialFogParameters2 ;
	 float4    MobileBasePass_FogMMV_ExponentialFogColorParameter ;
	 float4    MobileBasePass_FogMMV_ExponentialFogParameters3 ;
	 float4    MobileBasePass_FogMMV_SkyAtmosphereAmbientContributionColorScale ;
	 float4    MobileBasePass_FogMMV_InscatteringLightDirection ;
	 float4    MobileBasePass_FogMMV_DirectionalInscatteringColor ;
	 float2    MobileBasePass_FogMMV_SinCosInscatteringColorCubemapRotation ;
	 float    MobileBasePass_Padding344 ;
	 float    MobileBasePass_Padding348 ;
	 float3    MobileBasePass_FogMMV_FogInscatteringTextureParameters ;
	 float    MobileBasePass_FogMMV_EndDistance ;
	 float    MobileBasePass_FogMMV_ApplyVolumetricFog ;
	 float    MobileBasePass_FogMMV_VolumetricFogStartDistance ;
	 float    MobileBasePass_FogMMV_VolumetricFogNearFadeInDistanceInv ;
	 float    MobileBasePass_Padding380 ;
	 float3    MobileBasePass_FogMMV_VolumetricFogAlbedo ;
	 float    MobileBasePass_FogMMV_VolumetricFogPhaseG ;
	 uint    BindlessSRV_MobileBasePass_FogMMV_FogInscatteringColorCubemap ;
	 uint    MobileBasePass_Padding404 ;
	 uint    BindlessSampler_MobileBasePass_FogMMV_FogInscatteringColorSampler ;
	 uint    MobileBasePass_Padding412 ;
	 uint    BindlessSRV_MobileBasePass_FogMMV_IntegratedLightScattering ;
	 uint    MobileBasePass_Padding420 ;
	 uint    BindlessSampler_MobileBasePass_FogMMV_IntegratedLightScatteringSampler ;
	 float    MobileBasePass_Padding428 ;
	 uint    BindlessSRV_MobileBasePass_LFV_LocalFogVolumeInstances ;
	 uint    MobileBasePass_Padding436 ;
	 uint2    MobileBasePass_LFV_LocalFogVolumeTileDataTextureResolution ;
	 uint    MobileBasePass_LFV_LocalFogVolumeInstanceCount ;
	 uint    MobileBasePass_LFV_LocalFogVolumeTilePixelSize ;
	 float    MobileBasePass_LFV_LocalFogVolumeMaxDensityIntoVolumetricFog ;
	 uint    MobileBasePass_LFV_ShouldRenderLocalFogVolumeInVolumetricFog ;
	 float    MobileBasePass_LFV_GlobalStartDistance ;
	 float    MobileBasePass_Padding468 ;
	 float    MobileBasePass_Padding472 ;
	 float    MobileBasePass_Padding476 ;
	 float4    MobileBasePass_LFV_HalfResTextureSizeAndInvSize ;
	 float3    MobileBasePass_LFV_DirectionalLightColor ;
	 float    MobileBasePass_Padding508 ;
	 float3    MobileBasePass_LFV_DirectionalLightDirection ;
	 float    MobileBasePass_Padding524 ;
	 uint    BindlessSRV_MobileBasePass_LFV_LocalFogVolumeTileDataTexture ;
	 float    MobileBasePass_Padding532 ;
	 float    MobileBasePass_Padding536 ;
	 float    MobileBasePass_Padding540 ;
	 uint    MobileBasePass_Forward_NumLocalLights ;
	 uint    MobileBasePass_Forward_NumReflectionCaptures ;
	 uint    MobileBasePass_Forward_HasDirectionalLight ;
	 uint    MobileBasePass_Forward_NumGridCells ;
	 int3    MobileBasePass_Forward_CulledGridSize ;
	 uint    MobileBasePass_Forward_MaxCulledLightsPerCell ;
	 uint    MobileBasePass_Forward_LightGridPixelSizeShift ;
	 uint    MobileBasePass_Padding580 ;
	 uint    MobileBasePass_Padding584 ;
	 uint    MobileBasePass_Padding588 ;
	 float3    MobileBasePass_Forward_LightGridZParams ;
	 float    MobileBasePass_Padding604 ;
	 float3    MobileBasePass_Forward_DirectionalLightDirection ;
	 float    MobileBasePass_Forward_DirectionalLightSourceRadius ;
	 float    MobileBasePass_Forward_DirectionalLightSoftSourceRadius ;
	 float    MobileBasePass_Padding628 ;
	 float    MobileBasePass_Padding632 ;
	 float    MobileBasePass_Padding636 ;
	 float3    MobileBasePass_Forward_DirectionalLightColor ;
	 float    MobileBasePass_Forward_DirectionalLightVolumetricScatteringIntensity ;
	 float    MobileBasePass_Forward_DirectionalLightSpecularScale ;
	 float    MobileBasePass_Forward_DirectionalLightDiffuseScale ;
	 uint    MobileBasePass_Forward_DirectionalLightShadowMapChannelMask ;
	 uint    MobileBasePass_Padding668 ;
	 float2    MobileBasePass_Forward_DirectionalLightDistanceFadeMAD ;
	 uint    MobileBasePass_Forward_NumDirectionalLightCascades ;
	 int    MobileBasePass_Forward_DirectionalLightVSM ;
	 float4    MobileBasePass_Forward_CascadeEndDepths ;
	 float4x4    MobileBasePass_Forward_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    MobileBasePass_Forward_DirectionalLightShadowmapMinMax[4] ;
	 float4    MobileBasePass_Forward_DirectionalLightShadowmapAtlasBufferSize ;
	 float    MobileBasePass_Forward_DirectionalLightDepthBias ;
	 uint    MobileBasePass_Forward_DirectionalLightUseStaticShadowing ;
	 uint    MobileBasePass_Forward_SimpleLightsEndIndex ;
	 uint    MobileBasePass_Forward_ClusteredDeferredSupportedEndIndex ;
	 uint    MobileBasePass_Forward_MegaLightsSupportedStartIndex ;
	 uint    MobileBasePass_Padding1060 ;
	 uint    MobileBasePass_Padding1064 ;
	 uint    MobileBasePass_Padding1068 ;
	 float4    MobileBasePass_Forward_DirectionalLightStaticShadowBufferSize ;
	 float4x4    MobileBasePass_Forward_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    MobileBasePass_Forward_DirectLightingShowFlag ;
	 uint    MobileBasePass_Forward_LightFunctionAtlasLightIndex ;
	 uint    MobileBasePass_Forward_bAffectsTranslucentLighting ;
	 uint    MobileBasePass_Padding1164 ;
	 uint    BindlessSRV_MobileBasePass_Forward_DirectionalLightShadowmapAtlas ;
	 uint    MobileBasePass_Padding1172 ;
	 uint    BindlessSampler_MobileBasePass_Forward_ShadowmapSampler ;
	 uint    MobileBasePass_Padding1180 ;
	 uint    BindlessSRV_MobileBasePass_Forward_DirectionalLightStaticShadowmap ;
	 uint    MobileBasePass_Padding1188 ;
	 uint    BindlessSampler_MobileBasePass_Forward_StaticShadowmapSampler ;
	 uint    MobileBasePass_Padding1196 ;
	 uint    BindlessSRV_MobileBasePass_Forward_ForwardLocalLightBuffer ;
	 uint    MobileBasePass_Padding1204 ;
	 uint    BindlessSRV_MobileBasePass_Forward_NumCulledLightsGrid ;
	 uint    MobileBasePass_Padding1212 ;
	 uint    BindlessSRV_MobileBasePass_Forward_CulledLightDataGrid32Bit ;
	 uint    MobileBasePass_Padding1220 ;
	 uint    BindlessSRV_MobileBasePass_Forward_CulledLightDataGrid16Bit ;
	 float    MobileBasePass_Padding1228 ;
	 uint    MobileBasePass_ForwardMMV_NumLocalLights ;
	 uint    MobileBasePass_ForwardMMV_NumReflectionCaptures ;
	 uint    MobileBasePass_ForwardMMV_HasDirectionalLight ;
	 uint    MobileBasePass_ForwardMMV_NumGridCells ;
	 int3    MobileBasePass_ForwardMMV_CulledGridSize ;
	 uint    MobileBasePass_ForwardMMV_MaxCulledLightsPerCell ;
	 uint    MobileBasePass_ForwardMMV_LightGridPixelSizeShift ;
	 uint    MobileBasePass_Padding1268 ;
	 uint    MobileBasePass_Padding1272 ;
	 uint    MobileBasePass_Padding1276 ;
	 float3    MobileBasePass_ForwardMMV_LightGridZParams ;
	 float    MobileBasePass_Padding1292 ;
	 float3    MobileBasePass_ForwardMMV_DirectionalLightDirection ;
	 float    MobileBasePass_ForwardMMV_DirectionalLightSourceRadius ;
	 float    MobileBasePass_ForwardMMV_DirectionalLightSoftSourceRadius ;
	 float    MobileBasePass_Padding1316 ;
	 float    MobileBasePass_Padding1320 ;
	 float    MobileBasePass_Padding1324 ;
	 float3    MobileBasePass_ForwardMMV_DirectionalLightColor ;
	 float    MobileBasePass_ForwardMMV_DirectionalLightVolumetricScatteringIntensity ;
	 float    MobileBasePass_ForwardMMV_DirectionalLightSpecularScale ;
	 float    MobileBasePass_ForwardMMV_DirectionalLightDiffuseScale ;
	 uint    MobileBasePass_ForwardMMV_DirectionalLightShadowMapChannelMask ;
	 uint    MobileBasePass_Padding1356 ;
	 float2    MobileBasePass_ForwardMMV_DirectionalLightDistanceFadeMAD ;
	 uint    MobileBasePass_ForwardMMV_NumDirectionalLightCascades ;
	 int    MobileBasePass_ForwardMMV_DirectionalLightVSM ;
	 float4    MobileBasePass_ForwardMMV_CascadeEndDepths ;
	 float4x4    MobileBasePass_ForwardMMV_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    MobileBasePass_ForwardMMV_DirectionalLightShadowmapMinMax[4] ;
	 float4    MobileBasePass_ForwardMMV_DirectionalLightShadowmapAtlasBufferSize ;
	 float    MobileBasePass_ForwardMMV_DirectionalLightDepthBias ;
	 uint    MobileBasePass_ForwardMMV_DirectionalLightUseStaticShadowing ;
	 uint    MobileBasePass_ForwardMMV_SimpleLightsEndIndex ;
	 uint    MobileBasePass_ForwardMMV_ClusteredDeferredSupportedEndIndex ;
	 uint    MobileBasePass_ForwardMMV_MegaLightsSupportedStartIndex ;
	 uint    MobileBasePass_Padding1748 ;
	 uint    MobileBasePass_Padding1752 ;
	 uint    MobileBasePass_Padding1756 ;
	 float4    MobileBasePass_ForwardMMV_DirectionalLightStaticShadowBufferSize ;
	 float4x4    MobileBasePass_ForwardMMV_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    MobileBasePass_ForwardMMV_DirectLightingShowFlag ;
	 uint    MobileBasePass_ForwardMMV_LightFunctionAtlasLightIndex ;
	 uint    MobileBasePass_ForwardMMV_bAffectsTranslucentLighting ;
	 uint    MobileBasePass_Padding1852 ;
	 uint    BindlessSRV_MobileBasePass_ForwardMMV_DirectionalLightShadowmapAtlas ;
	 uint    MobileBasePass_Padding1860 ;
	 uint    BindlessSampler_MobileBasePass_ForwardMMV_ShadowmapSampler ;
	 uint    MobileBasePass_Padding1868 ;
	 uint    BindlessSRV_MobileBasePass_ForwardMMV_DirectionalLightStaticShadowmap ;
	 uint    MobileBasePass_Padding1876 ;
	 uint    BindlessSampler_MobileBasePass_ForwardMMV_StaticShadowmapSampler ;
	 uint    MobileBasePass_Padding1884 ;
	 uint    BindlessSRV_MobileBasePass_ForwardMMV_ForwardLocalLightBuffer ;
	 uint    MobileBasePass_Padding1892 ;
	 uint    BindlessSRV_MobileBasePass_ForwardMMV_NumCulledLightsGrid ;
	 uint    MobileBasePass_Padding1900 ;
	 uint    BindlessSRV_MobileBasePass_ForwardMMV_CulledLightDataGrid32Bit ;
	 uint    MobileBasePass_Padding1908 ;
	 uint    BindlessSRV_MobileBasePass_ForwardMMV_CulledLightDataGrid16Bit ;
	 float    MobileBasePass_Padding1916 ;
	 float4    MobileBasePass_PlanarReflection_ReflectionPlane ;
	 float4    MobileBasePass_PlanarReflection_PlanarReflectionOrigin ;
	 float4    MobileBasePass_PlanarReflection_PlanarReflectionXAxis ;
	 float4    MobileBasePass_PlanarReflection_PlanarReflectionYAxis ;
	 float3x4    MobileBasePass_PlanarReflection_InverseTransposeMirrorMatrix ;
	 float3    MobileBasePass_PlanarReflection_PlanarReflectionParameters ;
	 float    MobileBasePass_Padding2044 ;
	 float2    MobileBasePass_PlanarReflection_PlanarReflectionParameters2 ;
	 float    MobileBasePass_Padding2056 ;
	 float    MobileBasePass_Padding2060 ;
	 float4x4    MobileBasePass_PlanarReflection_ProjectionWithExtraFOV[2] ;
	 float4    MobileBasePass_PlanarReflection_PlanarReflectionScreenScaleBias[2] ;
	 float2    MobileBasePass_PlanarReflection_PlanarReflectionScreenBound ;
	 uint    MobileBasePass_PlanarReflection_bIsStereo ;
	 uint    MobileBasePass_Padding2236 ;
	 uint    BindlessSRV_MobileBasePass_PlanarReflection_PlanarReflectionTexture ;
	 uint    MobileBasePass_Padding2244 ;
	 uint    BindlessSampler_MobileBasePass_PlanarReflection_PlanarReflectionSampler ;
	 float    MobileBasePass_Padding2252 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_SceneColorTexture ;
	 uint    MobileBasePass_Padding2260 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_SceneColorTextureSampler ;
	 uint    MobileBasePass_Padding2268 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_SceneDepthTexture ;
	 uint    MobileBasePass_Padding2276 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_SceneDepthTextureArray ;
	 uint    MobileBasePass_Padding2284 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_SceneDepthTextureSampler ;
	 uint    MobileBasePass_Padding2292 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_ScenePartialDepthTexture ;
	 uint    MobileBasePass_Padding2300 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_ScenePartialDepthTextureSampler ;
	 uint    MobileBasePass_Padding2308 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_CustomDepthTexture ;
	 uint    MobileBasePass_Padding2316 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_CustomDepthTextureArray ;
	 uint    MobileBasePass_Padding2324 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_CustomDepthTextureSampler ;
	 uint    MobileBasePass_Padding2332 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_CustomStencilTexture ;
	 uint    MobileBasePass_Padding2340 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_CustomStencilTextureArray ;
	 uint    MobileBasePass_Padding2348 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_SceneVelocityTexture ;
	 uint    MobileBasePass_Padding2356 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_SceneVelocityTextureSampler ;
	 uint    MobileBasePass_Padding2364 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_GBufferATexture ;
	 uint    MobileBasePass_Padding2372 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_GBufferBTexture ;
	 uint    MobileBasePass_Padding2380 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_GBufferCTexture ;
	 uint    MobileBasePass_Padding2388 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_GBufferDTexture ;
	 uint    MobileBasePass_Padding2396 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_SceneDepthAuxTexture ;
	 uint    MobileBasePass_Padding2404 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_SceneDepthAuxTextureArray ;
	 uint    MobileBasePass_Padding2412 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_LocalLightTextureA ;
	 uint    MobileBasePass_Padding2420 ;
	 uint    BindlessSRV_MobileBasePass_SceneTextures_LocalLightTextureB ;
	 uint    MobileBasePass_Padding2428 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_GBufferATextureSampler ;
	 uint    MobileBasePass_Padding2436 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_GBufferBTextureSampler ;
	 uint    MobileBasePass_Padding2444 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_GBufferCTextureSampler ;
	 uint    MobileBasePass_Padding2452 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_GBufferDTextureSampler ;
	 uint    MobileBasePass_Padding2460 ;
	 uint    BindlessSampler_MobileBasePass_SceneTextures_SceneDepthAuxTextureSampler ;
	 float    MobileBasePass_Padding2468 ;
	 float    MobileBasePass_Padding2472 ;
	 float    MobileBasePass_Padding2476 ;
	 uint    MobileBasePass_Substrate_MaxBytesPerPixel ;
	 uint    MobileBasePass_Substrate_MaxClosurePerPixel ;
	 uint    MobileBasePass_Substrate_bRoughDiffuse ;
	 uint    MobileBasePass_Substrate_PeelLayersAboveDepth ;
	 uint    MobileBasePass_Substrate_bRoughnessTracking ;
	 float    MobileBasePass_Padding2500 ;
	 float    MobileBasePass_Padding2504 ;
	 float    MobileBasePass_Padding2508 ;
	 float4    MobileBasePass_DebugViewMode_AccuracyColors[5] ;
	 float4    MobileBasePass_DebugViewMode_LODColors[8] ;
	 uint    BindlessUAV_MobileBasePass_QuadOverdraw ;
	 float    MobileBasePass_Padding2724 ;
	 float    MobileBasePass_Padding2728 ;
	 float    MobileBasePass_Padding2732 ;
	 float4    MobileBasePass_ReflectionsParameters_SkyLightParameters ;
	 uint    BindlessSRV_MobileBasePass_ReflectionsParameters_SkyLightCubemap ;
	 uint    MobileBasePass_Padding2756 ;
	 uint    BindlessSampler_MobileBasePass_ReflectionsParameters_SkyLightCubemapSampler ;
	 uint    MobileBasePass_Padding2764 ;
	 uint    BindlessSRV_MobileBasePass_ReflectionsParameters_SkyLightBlendDestinationCubemap ;
	 uint    MobileBasePass_Padding2772 ;
	 uint    BindlessSampler_MobileBasePass_ReflectionsParameters_SkyLightBlendDestinationCubemapSampler ;
	 uint    MobileBasePass_Padding2780 ;
	 uint    BindlessSRV_MobileBasePass_ReflectionsParameters_ReflectionCubemap ;
	 uint    MobileBasePass_Padding2788 ;
	 uint    BindlessSampler_MobileBasePass_ReflectionsParameters_ReflectionCubemapSampler ;
	 uint    MobileBasePass_Padding2796 ;
	 uint    BindlessSRV_MobileBasePass_ReflectionsParameters_PreIntegratedGF ;
	 uint    MobileBasePass_Padding2804 ;
	 uint    BindlessSampler_MobileBasePass_ReflectionsParameters_PreIntegratedGFSampler ;
	 uint    MobileBasePass_Padding2812 ;
	 uint    BindlessSRV_MobileBasePass_PreIntegratedGFTexture ;
	 uint    MobileBasePass_Padding2820 ;
	 uint    BindlessSampler_MobileBasePass_PreIntegratedGFSampler ;
	 uint    MobileBasePass_Padding2828 ;
	 uint    BindlessSRV_MobileBasePass_EyeAdaptationBuffer ;
	 uint    MobileBasePass_Padding2836 ;
	 uint    BindlessUAV_MobileBasePass_RWOcclusionBufferUAV ;
	 uint    MobileBasePass_Padding2844 ;
	 uint    BindlessSRV_MobileBasePass_AmbientOcclusionTexture ;
	 uint    MobileBasePass_Padding2852 ;
	 uint    BindlessSampler_MobileBasePass_AmbientOcclusionSampler ;
	 uint    MobileBasePass_Padding2860 ;
	 uint    BindlessSRV_MobileBasePass_ScreenSpaceShadowMaskTexture ;
	 uint    MobileBasePass_Padding2868 ;
	 uint    BindlessSRV_MobileBasePass_ScreenSpaceShadowMaskTextureArray ;
	 uint    MobileBasePass_Padding2876 ;
	 uint    BindlessSampler_MobileBasePass_ScreenSpaceShadowMaskSampler ;
	 uint    MobileBasePass_Padding2884 ;
	 uint    MobileBasePass_bApplyHalfResLocalFogToSkyMeshes ;
	 uint    MobileBasePass_Padding2892 ;
	 uint    BindlessSRV_MobileBasePass_HalfResLocalFogVolumeViewTexture ;
	 uint    MobileBasePass_Padding2900 ;
	 uint    BindlessSampler_MobileBasePass_HalfResLocalFogVolumeViewSampler ;
	 float    MobileBasePass_Padding2908 ;
	 uint    BindlessSRV_MobileBasePass_DBufferATexture ;
	 uint    MobileBasePass_Padding2916 ;
	 uint    BindlessSRV_MobileBasePass_DBufferBTexture ;
	 uint    MobileBasePass_Padding2924 ;
	 uint    BindlessSRV_MobileBasePass_DBufferCTexture ;
	 uint    MobileBasePass_Padding2932 ;
	 uint    BindlessSRV_MobileBasePass_DBufferATextureArray ;
	 uint    MobileBasePass_Padding2940 ;
	 uint    BindlessSRV_MobileBasePass_DBufferBTextureArray ;
	 uint    MobileBasePass_Padding2948 ;
	 uint    BindlessSRV_MobileBasePass_DBufferCTextureArray ;
	 uint    MobileBasePass_Padding2956 ;
	 uint    BindlessSRV_MobileBasePass_DBufferRenderMask ;
	 uint    MobileBasePass_Padding2964 ;
	 uint    BindlessSampler_MobileBasePass_DBufferATextureSampler ;
	 uint    MobileBasePass_Padding2972 ;
	 uint    BindlessSampler_MobileBasePass_DBufferBTextureSampler ;
	 uint    MobileBasePass_Padding2980 ;
	 uint    BindlessSampler_MobileBasePass_DBufferCTextureSampler ;
	 float    MobileBasePass_Padding2988 ;
	 uint    BindlessSRV_MobileBasePass_SSRParams_SceneColor ;
	 uint    MobileBasePass_Padding2996 ;
	 uint    BindlessSampler_MobileBasePass_SSRParams_SceneColorSampler ;
	 uint    MobileBasePass_Padding3004 ;
	 uint    BindlessSRV_MobileBasePass_SSRParams_HZB ;
	 uint    MobileBasePass_Padding3012 ;
	 uint    BindlessSampler_MobileBasePass_SSRParams_HZBSampler ;
	 uint    MobileBasePass_Padding3020 ;
	 float4    MobileBasePass_SSRParams_HZBUvFactorAndInvFactor ;
	 float4    MobileBasePass_SSRParams_PrevScreenPositionScaleBias ;
	 float4    MobileBasePass_SSRParams_PrevSceneColorBilinearUVMinMax ;
	 float4    MobileBasePass_SSRParams_IntensityAndExposureCorrection ;
	 uint    MobileBasePass_SSRParams_NoiseIndex ;
 }
  TextureCube  MobileBasePass_Fog_FogInscatteringColorCubemap ;
  SamplerState  MobileBasePass_Fog_FogInscatteringColorSampler ;
  Texture3D  MobileBasePass_Fog_IntegratedLightScattering ;
  SamplerState  MobileBasePass_Fog_IntegratedLightScatteringSampler ;
  TextureCube  MobileBasePass_FogMMV_FogInscatteringColorCubemap ;
  SamplerState  MobileBasePass_FogMMV_FogInscatteringColorSampler ;
  Texture3D  MobileBasePass_FogMMV_IntegratedLightScattering ;
  SamplerState  MobileBasePass_FogMMV_IntegratedLightScatteringSampler ;
  Buffer<float4>  MobileBasePass_LFV_LocalFogVolumeInstances ;
  Texture2DArray<uint>  MobileBasePass_LFV_LocalFogVolumeTileDataTexture ;
  Texture2D  MobileBasePass_Forward_DirectionalLightShadowmapAtlas ;
  SamplerState  MobileBasePass_Forward_ShadowmapSampler ;
  Texture2D  MobileBasePass_Forward_DirectionalLightStaticShadowmap ;
  SamplerState  MobileBasePass_Forward_StaticShadowmapSampler ;
  StructuredBuffer<float4>  MobileBasePass_Forward_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  MobileBasePass_Forward_NumCulledLightsGrid ;
  StructuredBuffer<uint>  MobileBasePass_Forward_CulledLightDataGrid32Bit ;
  Buffer<uint>  MobileBasePass_Forward_CulledLightDataGrid16Bit ;
  Texture2D  MobileBasePass_ForwardMMV_DirectionalLightShadowmapAtlas ;
  SamplerState  MobileBasePass_ForwardMMV_ShadowmapSampler ;
  Texture2D  MobileBasePass_ForwardMMV_DirectionalLightStaticShadowmap ;
  SamplerState  MobileBasePass_ForwardMMV_StaticShadowmapSampler ;
  StructuredBuffer<float4>  MobileBasePass_ForwardMMV_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  MobileBasePass_ForwardMMV_NumCulledLightsGrid ;
  StructuredBuffer<uint>  MobileBasePass_ForwardMMV_CulledLightDataGrid32Bit ;
  Buffer<uint>  MobileBasePass_ForwardMMV_CulledLightDataGrid16Bit ;
  Texture2D  MobileBasePass_PlanarReflection_PlanarReflectionTexture ;
  SamplerState  MobileBasePass_PlanarReflection_PlanarReflectionSampler ;
  Texture2D  MobileBasePass_SceneTextures_SceneColorTexture ;
  SamplerState  MobileBasePass_SceneTextures_SceneColorTextureSampler ;
  Texture2D  MobileBasePass_SceneTextures_SceneDepthTexture ;
  Texture2DArray  MobileBasePass_SceneTextures_SceneDepthTextureArray ;
  SamplerState  MobileBasePass_SceneTextures_SceneDepthTextureSampler ;
  Texture2D  MobileBasePass_SceneTextures_ScenePartialDepthTexture ;
  SamplerState  MobileBasePass_SceneTextures_ScenePartialDepthTextureSampler ;
  Texture2D  MobileBasePass_SceneTextures_CustomDepthTexture ;
  Texture2DArray  MobileBasePass_SceneTextures_CustomDepthTextureArray ;
  SamplerState  MobileBasePass_SceneTextures_CustomDepthTextureSampler ;
  Texture2D<uint2>  MobileBasePass_SceneTextures_CustomStencilTexture ;
  Texture2DArray<uint2>  MobileBasePass_SceneTextures_CustomStencilTextureArray ;
  Texture2D  MobileBasePass_SceneTextures_SceneVelocityTexture ;
  SamplerState  MobileBasePass_SceneTextures_SceneVelocityTextureSampler ;
  Texture2D  MobileBasePass_SceneTextures_GBufferATexture ;
  Texture2D  MobileBasePass_SceneTextures_GBufferBTexture ;
  Texture2D  MobileBasePass_SceneTextures_GBufferCTexture ;
  Texture2D  MobileBasePass_SceneTextures_GBufferDTexture ;
  Texture2D  MobileBasePass_SceneTextures_SceneDepthAuxTexture ;
  Texture2DArray  MobileBasePass_SceneTextures_SceneDepthAuxTextureArray ;
  Texture2D  MobileBasePass_SceneTextures_LocalLightTextureA ;
  Texture2D  MobileBasePass_SceneTextures_LocalLightTextureB ;
  SamplerState  MobileBasePass_SceneTextures_GBufferATextureSampler ;
  SamplerState  MobileBasePass_SceneTextures_GBufferBTextureSampler ;
  SamplerState  MobileBasePass_SceneTextures_GBufferCTextureSampler ;
  SamplerState  MobileBasePass_SceneTextures_GBufferDTextureSampler ;
  SamplerState  MobileBasePass_SceneTextures_SceneDepthAuxTextureSampler ;
  TextureCube  MobileBasePass_ReflectionsParameters_SkyLightCubemap ;
  SamplerState  MobileBasePass_ReflectionsParameters_SkyLightCubemapSampler ;
  TextureCube  MobileBasePass_ReflectionsParameters_SkyLightBlendDestinationCubemap ;
  SamplerState  MobileBasePass_ReflectionsParameters_SkyLightBlendDestinationCubemapSampler ;
  TextureCubeArray  MobileBasePass_ReflectionsParameters_ReflectionCubemap ;
  SamplerState  MobileBasePass_ReflectionsParameters_ReflectionCubemapSampler ;
  Texture2D  MobileBasePass_ReflectionsParameters_PreIntegratedGF ;
  SamplerState  MobileBasePass_ReflectionsParameters_PreIntegratedGFSampler ;
  Texture2D  MobileBasePass_DBufferATexture ;
  Texture2D  MobileBasePass_DBufferBTexture ;
  Texture2D  MobileBasePass_DBufferCTexture ;
  Texture2DArray  MobileBasePass_DBufferATextureArray ;
  Texture2DArray  MobileBasePass_DBufferBTextureArray ;
  Texture2DArray  MobileBasePass_DBufferCTextureArray ;
  Texture2D<uint>  MobileBasePass_DBufferRenderMask ;
  SamplerState  MobileBasePass_DBufferATextureSampler ;
  SamplerState  MobileBasePass_DBufferBTextureSampler ;
  SamplerState  MobileBasePass_DBufferCTextureSampler ;
  Texture2D  MobileBasePass_SSRParams_SceneColor ;
  SamplerState  MobileBasePass_SSRParams_SceneColorSampler ;
  Texture2D  MobileBasePass_SSRParams_HZB ;
  SamplerState  MobileBasePass_SSRParams_HZBSampler ;
  RWTexture2D<uint>  MobileBasePass_QuadOverdraw ;
  Texture2D  MobileBasePass_PreIntegratedGFTexture ;
  SamplerState  MobileBasePass_PreIntegratedGFSampler ;
  StructuredBuffer<float4>  MobileBasePass_EyeAdaptationBuffer ;
  RWStructuredBuffer<uint>  MobileBasePass_RWOcclusionBufferUAV ;
  Texture2D  MobileBasePass_AmbientOcclusionTexture ;
  SamplerState  MobileBasePass_AmbientOcclusionSampler ;
  Texture2D  MobileBasePass_ScreenSpaceShadowMaskTexture ;
  Texture2DArray  MobileBasePass_ScreenSpaceShadowMaskTextureArray ;
  SamplerState  MobileBasePass_ScreenSpaceShadowMaskSampler ;
  Texture2D  MobileBasePass_HalfResLocalFogVolumeViewTexture ;
  SamplerState  MobileBasePass_HalfResLocalFogVolumeViewSampler ;
 cbuffer ReflectionCaptureES31 {
	 float4    ReflectionCaptureES31_PositionHighAndRadius[100] ;
	 float4    ReflectionCaptureES31_PositionLow[100] ;
	 float4    ReflectionCaptureES31_CaptureProperties[100] ;
	 float4    ReflectionCaptureES31_CaptureOffsetAndAverageBrightness[100] ;
	 float4x4    ReflectionCaptureES31_BoxTransform[100] ;
	 float4    ReflectionCaptureES31_BoxScales[100] ;
 }
 cbuffer ReflectionCaptureSM5 {
	 float4    ReflectionCaptureSM5_PositionHighAndRadius[341] ;
	 float4    ReflectionCaptureSM5_PositionLow[341] ;
	 float4    ReflectionCaptureSM5_CaptureProperties[341] ;
	 float4    ReflectionCaptureSM5_CaptureOffsetAndAverageBrightness[341] ;
	 float4x4    ReflectionCaptureSM5_BoxTransform[341] ;
	 float4    ReflectionCaptureSM5_BoxScales[341] ;
 }
 cbuffer LumenGIVolumeStruct {
	 float    LumenGIVolumeStruct_ReprojectionRadiusScale ;
	 float    LumenGIVolumeStruct_ClipmapWorldExtent ;
	 float    LumenGIVolumeStruct_ClipmapDistributionBase ;
	 float    LumenGIVolumeStruct_InvClipmapFadeSize ;
	 float    LumenGIVolumeStruct_ProbeTMinScale ;
	 float    LumenGIVolumeStruct_Padding20 ;
	 int2    LumenGIVolumeStruct_ProbeAtlasResolutionInProbes ;
	 uint    LumenGIVolumeStruct_RadianceProbeClipmapResolution ;
	 uint    LumenGIVolumeStruct_NumRadianceProbeClipmaps ;
	 uint    LumenGIVolumeStruct_RadianceProbeResolution ;
	 uint    LumenGIVolumeStruct_FinalProbeResolution ;
	 uint    LumenGIVolumeStruct_FinalRadianceAtlasMaxMip ;
	 uint    LumenGIVolumeStruct_CalculateIrradiance ;
	 uint    LumenGIVolumeStruct_IrradianceProbeResolution ;
	 uint    LumenGIVolumeStruct_OcclusionProbeResolution ;
	 uint    LumenGIVolumeStruct_NumProbesToTraceBudget ;
	 uint    LumenGIVolumeStruct_RadianceCacheStats ;
	 float    LumenGIVolumeStruct_Padding72 ;
	 float    LumenGIVolumeStruct_Padding76 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_RadianceProbeIndirectionTexture ;
	 uint    LumenGIVolumeStruct_Padding84 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_RadianceCacheFinalRadianceAtlas ;
	 uint    LumenGIVolumeStruct_Padding92 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_RadianceCacheFinalIrradianceAtlas ;
	 uint    LumenGIVolumeStruct_Padding100 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_RadianceCacheProbeOcclusionAtlas ;
	 uint    LumenGIVolumeStruct_Padding108 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_RadianceCacheDepthAtlas ;
	 uint    LumenGIVolumeStruct_Padding116 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_ProbeWorldOffset ;
	 uint    LumenGIVolumeStruct_Padding124 ;
	 float4    LumenGIVolumeStruct_RadianceProbeSettings[6] ;
	 float4    LumenGIVolumeStruct_ClipmapCornerTWSAndCellSize[6] ;
	 float2    LumenGIVolumeStruct_InvProbeFinalRadianceAtlasResolution ;
	 float2    LumenGIVolumeStruct_InvProbeFinalIrradianceAtlasResolution ;
	 float2    LumenGIVolumeStruct_InvProbeDepthAtlasResolution ;
	 uint    LumenGIVolumeStruct_OverrideCacheOcclusionLighting ;
	 uint    LumenGIVolumeStruct_ShowBlackRadianceCacheLighting ;
	 uint    LumenGIVolumeStruct_ProbeAtlasResolutionModuloMask ;
	 uint    LumenGIVolumeStruct_ProbeAtlasResolutionDivideShift ;
	 float    LumenGIVolumeStruct_Padding360 ;
	 float    LumenGIVolumeStruct_Padding364 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_Radiance ;
	 uint    LumenGIVolumeStruct_Padding372 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_Normal ;
	 uint    LumenGIVolumeStruct_Padding380 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_SceneDepth ;
	 uint    LumenGIVolumeStruct_Padding388 ;
	 uint    LumenGIVolumeStruct_Enabled ;
	 float    LumenGIVolumeStruct_RelativeDepthThreshold ;
	 float    LumenGIVolumeStruct_SpecularScale ;
	 float    LumenGIVolumeStruct_Contrast ;
	 float    LumenGIVolumeStruct_Padding408 ;
	 float    LumenGIVolumeStruct_Padding412 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_TranslucencyGIVolume0 ;
	 uint    LumenGIVolumeStruct_Padding420 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_TranslucencyGIVolume1 ;
	 uint    LumenGIVolumeStruct_Padding428 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_TranslucencyGIVolumeHistory0 ;
	 uint    LumenGIVolumeStruct_Padding436 ;
	 uint    BindlessSRV_LumenGIVolumeStruct_TranslucencyGIVolumeHistory1 ;
	 uint    LumenGIVolumeStruct_Padding444 ;
	 uint    BindlessSampler_LumenGIVolumeStruct_TranslucencyGIVolumeSampler ;
	 uint    LumenGIVolumeStruct_Padding452 ;
	 uint    LumenGIVolumeStruct_Padding456 ;
	 uint    LumenGIVolumeStruct_Padding460 ;
	 float3    LumenGIVolumeStruct_TranslucencyGIGridZParams ;
	 uint    LumenGIVolumeStruct_TranslucencyGIGridPixelSizeShift ;
	 int3    LumenGIVolumeStruct_TranslucencyGIGridSize ;
 }
  Texture3D<uint>  LumenGIVolumeStruct_RadianceProbeIndirectionTexture ;
  Texture2D<float3>  LumenGIVolumeStruct_RadianceCacheFinalRadianceAtlas ;
  Texture2D<float3>  LumenGIVolumeStruct_RadianceCacheFinalIrradianceAtlas ;
  Texture2D<float2>  LumenGIVolumeStruct_RadianceCacheProbeOcclusionAtlas ;
  Texture2D<float>  LumenGIVolumeStruct_RadianceCacheDepthAtlas ;
  StructuredBuffer<float4>  LumenGIVolumeStruct_ProbeWorldOffset ;
  Texture2DArray  LumenGIVolumeStruct_Radiance ;
  Texture2D  LumenGIVolumeStruct_Normal ;
  Texture2D  LumenGIVolumeStruct_SceneDepth ;
  Texture3D  LumenGIVolumeStruct_TranslucencyGIVolume0 ;
  Texture3D  LumenGIVolumeStruct_TranslucencyGIVolume1 ;
  Texture3D  LumenGIVolumeStruct_TranslucencyGIVolumeHistory0 ;
  Texture3D  LumenGIVolumeStruct_TranslucencyGIVolumeHistory1 ;
  SamplerState  LumenGIVolumeStruct_TranslucencyGIVolumeSampler ;
 cbuffer TranslucentSelfShadow {
	 float4x4    TranslucentSelfShadow_WorldToShadowMatrix ;
	 float4    TranslucentSelfShadow_ShadowUVMinMax ;
	 float4    TranslucentSelfShadow_DirectionalLightDirection ;
	 float4    TranslucentSelfShadow_DirectionalLightColor ;
	 uint    BindlessSRV_TranslucentSelfShadow_Transmission0 ;
	 uint    TranslucentSelfShadow_Padding116 ;
	 uint    BindlessSRV_TranslucentSelfShadow_Transmission1 ;
	 uint    TranslucentSelfShadow_Padding124 ;
	 uint    BindlessSampler_TranslucentSelfShadow_Transmission0Sampler ;
	 uint    TranslucentSelfShadow_Padding132 ;
	 uint    BindlessSampler_TranslucentSelfShadow_Transmission1Sampler ;
 }
  Texture2D  TranslucentSelfShadow_Transmission0 ;
  Texture2D  TranslucentSelfShadow_Transmission1 ;
  SamplerState  TranslucentSelfShadow_Transmission0Sampler ;
  SamplerState  TranslucentSelfShadow_Transmission1Sampler ;
 cbuffer ForwardLightData {
	 uint    ForwardLightData_NumLocalLights ;
	 uint    ForwardLightData_NumReflectionCaptures ;
	 uint    ForwardLightData_HasDirectionalLight ;
	 uint    ForwardLightData_NumGridCells ;
	 int3    ForwardLightData_CulledGridSize ;
	 uint    ForwardLightData_MaxCulledLightsPerCell ;
	 uint    ForwardLightData_LightGridPixelSizeShift ;
	 uint    ForwardLightData_Padding36 ;
	 uint    ForwardLightData_Padding40 ;
	 uint    ForwardLightData_Padding44 ;
	 float3    ForwardLightData_LightGridZParams ;
	 float    ForwardLightData_Padding60 ;
	 float3    ForwardLightData_DirectionalLightDirection ;
	 float    ForwardLightData_DirectionalLightSourceRadius ;
	 float    ForwardLightData_DirectionalLightSoftSourceRadius ;
	 float    ForwardLightData_Padding84 ;
	 float    ForwardLightData_Padding88 ;
	 float    ForwardLightData_Padding92 ;
	 float3    ForwardLightData_DirectionalLightColor ;
	 float    ForwardLightData_DirectionalLightVolumetricScatteringIntensity ;
	 float    ForwardLightData_DirectionalLightSpecularScale ;
	 float    ForwardLightData_DirectionalLightDiffuseScale ;
	 uint    ForwardLightData_DirectionalLightShadowMapChannelMask ;
	 uint    ForwardLightData_Padding124 ;
	 float2    ForwardLightData_DirectionalLightDistanceFadeMAD ;
	 uint    ForwardLightData_NumDirectionalLightCascades ;
	 int    ForwardLightData_DirectionalLightVSM ;
	 float4    ForwardLightData_CascadeEndDepths ;
	 float4x4    ForwardLightData_DirectionalLightTranslatedWorldToShadowMatrix[4] ;
	 float4    ForwardLightData_DirectionalLightShadowmapMinMax[4] ;
	 float4    ForwardLightData_DirectionalLightShadowmapAtlasBufferSize ;
	 float    ForwardLightData_DirectionalLightDepthBias ;
	 uint    ForwardLightData_DirectionalLightUseStaticShadowing ;
	 uint    ForwardLightData_SimpleLightsEndIndex ;
	 uint    ForwardLightData_ClusteredDeferredSupportedEndIndex ;
	 uint    ForwardLightData_MegaLightsSupportedStartIndex ;
	 uint    ForwardLightData_Padding516 ;
	 uint    ForwardLightData_Padding520 ;
	 uint    ForwardLightData_Padding524 ;
	 float4    ForwardLightData_DirectionalLightStaticShadowBufferSize ;
	 float4x4    ForwardLightData_DirectionalLightTranslatedWorldToStaticShadow ;
	 uint    ForwardLightData_DirectLightingShowFlag ;
	 uint    ForwardLightData_LightFunctionAtlasLightIndex ;
	 uint    ForwardLightData_bAffectsTranslucentLighting ;
	 uint    ForwardLightData_Padding620 ;
	 uint    BindlessSRV_ForwardLightData_DirectionalLightShadowmapAtlas ;
	 uint    ForwardLightData_Padding628 ;
	 uint    BindlessSampler_ForwardLightData_ShadowmapSampler ;
	 uint    ForwardLightData_Padding636 ;
	 uint    BindlessSRV_ForwardLightData_DirectionalLightStaticShadowmap ;
	 uint    ForwardLightData_Padding644 ;
	 uint    BindlessSampler_ForwardLightData_StaticShadowmapSampler ;
	 uint    ForwardLightData_Padding652 ;
	 uint    BindlessSRV_ForwardLightData_ForwardLocalLightBuffer ;
	 uint    ForwardLightData_Padding660 ;
	 uint    BindlessSRV_ForwardLightData_NumCulledLightsGrid ;
	 uint    ForwardLightData_Padding668 ;
	 uint    BindlessSRV_ForwardLightData_CulledLightDataGrid32Bit ;
	 uint    ForwardLightData_Padding676 ;
	 uint    BindlessSRV_ForwardLightData_CulledLightDataGrid16Bit ;
 }
  Texture2D  ForwardLightData_DirectionalLightShadowmapAtlas ;
  SamplerState  ForwardLightData_ShadowmapSampler ;
  Texture2D  ForwardLightData_DirectionalLightStaticShadowmap ;
  SamplerState  ForwardLightData_StaticShadowmapSampler ;
  StructuredBuffer<float4>  ForwardLightData_ForwardLocalLightBuffer ;
  StructuredBuffer<uint>  ForwardLightData_NumCulledLightsGrid ;
  StructuredBuffer<uint>  ForwardLightData_CulledLightDataGrid32Bit ;
  Buffer<uint>  ForwardLightData_CulledLightDataGrid16Bit ;
 cbuffer VirtualShadowMap {
	 uint    VirtualShadowMap_NumFullShadowMaps ;
	 uint    VirtualShadowMap_NumSinglePageShadowMaps ;
	 uint    VirtualShadowMap_MaxPhysicalPages ;
	 uint    VirtualShadowMap_NumShadowMapSlots ;
	 uint    VirtualShadowMap_StaticCachedArrayIndex ;
	 uint    VirtualShadowMap_StaticHZBArrayIndex ;
	 uint    VirtualShadowMap_PhysicalPageRowMask ;
	 uint    VirtualShadowMap_PhysicalPageRowShift ;
	 uint    VirtualShadowMap_PackedShadowMaskMaxLightCount ;
	 uint    VirtualShadowMap_Padding36 ;
	 uint    VirtualShadowMap_Padding40 ;
	 uint    VirtualShadowMap_Padding44 ;
	 float4    VirtualShadowMap_RecPhysicalPoolSize ;
	 int2    VirtualShadowMap_PhysicalPoolSize ;
	 int2    VirtualShadowMap_PhysicalPoolSizePages ;
	 uint    VirtualShadowMap_bExcludeNonNaniteFromCoarsePages ;
	 float    VirtualShadowMap_CoarsePagePixelThresholdDynamic ;
	 float    VirtualShadowMap_CoarsePagePixelThresholdStatic ;
	 float    VirtualShadowMap_CoarsePagePixelThresholdDynamicNanite ;
	 uint    VirtualShadowMap_SceneFrameNumber ;
	 uint    VirtualShadowMap_bClipmapGreedyLevelSelection ;
	 float    VirtualShadowMap_GlobalResolutionLodBias ;
	 float    VirtualShadowMap_ScreenRayLength ;
	 float    VirtualShadowMap_NormalBias ;
	 uint    VirtualShadowMap_SMRTAdaptiveRayCount ;
	 int    VirtualShadowMap_SMRTRayCountLocal ;
	 int    VirtualShadowMap_SMRTSamplesPerRayLocal ;
	 float    VirtualShadowMap_SMRTExtrapolateMaxSlopeLocal ;
	 float    VirtualShadowMap_SMRTTexelDitherScaleLocal ;
	 float    VirtualShadowMap_SMRTMaxSlopeBiasLocal ;
	 float    VirtualShadowMap_SMRTCotMaxRayAngleFromLight ;
	 int    VirtualShadowMap_SMRTRayCountDirectional ;
	 int    VirtualShadowMap_SMRTSamplesPerRayDirectional ;
	 float    VirtualShadowMap_SMRTExtrapolateMaxSlopeDirectional ;
	 float    VirtualShadowMap_SMRTTexelDitherScaleDirectional ;
	 float    VirtualShadowMap_SMRTRayLengthScale ;
	 uint    VirtualShadowMap_SMRTHairRayCount ;
	 uint    BindlessSRV_VirtualShadowMap_ProjectionData ;
	 uint    VirtualShadowMap_Padding172 ;
	 uint    BindlessSRV_VirtualShadowMap_PageTable ;
	 uint    VirtualShadowMap_Padding180 ;
	 uint    BindlessSRV_VirtualShadowMap_PageFlags ;
	 uint    VirtualShadowMap_Padding188 ;
	 uint    BindlessSRV_VirtualShadowMap_AllocatedPageRectBounds ;
	 uint    VirtualShadowMap_Padding196 ;
	 uint    BindlessSRV_VirtualShadowMap_UncachedPageRectBounds ;
	 uint    VirtualShadowMap_Padding204 ;
	 uint    BindlessSRV_VirtualShadowMap_PhysicalPagePool ;
	 uint    VirtualShadowMap_Padding212 ;
	 uint    BindlessSRV_VirtualShadowMap_CachePrimitiveAsDynamic ;
	 float    VirtualShadowMap_Padding220 ;
	 uint    BindlessSRV_VirtualShadowMap_LightGridData ;
	 uint    VirtualShadowMap_Padding228 ;
	 uint    BindlessSRV_VirtualShadowMap_NumCulledLightsGrid ;
	 uint    VirtualShadowMap_Padding236 ;
	 uint    VirtualShadowMap_MaxLightGridEntryIndex ;
 }
  StructuredBuffer<uint>  VirtualShadowMap_LightGridData ;
  StructuredBuffer<uint>  VirtualShadowMap_NumCulledLightsGrid ;
  ByteAddressBuffer  VirtualShadowMap_ProjectionData ;
  StructuredBuffer<uint>  VirtualShadowMap_PageTable ;
  StructuredBuffer<uint>  VirtualShadowMap_PageFlags ;
  StructuredBuffer<uint4>  VirtualShadowMap_AllocatedPageRectBounds ;
  StructuredBuffer<uint4>  VirtualShadowMap_UncachedPageRectBounds ;
  Texture2DArray<uint>  VirtualShadowMap_PhysicalPagePool ;
  StructuredBuffer<uint>  VirtualShadowMap_CachePrimitiveAsDynamic ;
 cbuffer DeferredLightUniforms {
	 float4    DeferredLightUniforms_ShadowMapChannelMask ;
	 float2    DeferredLightUniforms_DistanceFadeMAD ;
	 float    DeferredLightUniforms_ContactShadowLength ;
	 float    DeferredLightUniforms_ContactShadowCastingIntensity ;
	 float    DeferredLightUniforms_ContactShadowNonCastingIntensity ;
	 float    DeferredLightUniforms_VolumetricScatteringIntensity ;
	 uint    DeferredLightUniforms_ShadowedBits ;
	 uint    DeferredLightUniforms_LightingChannelMask ;
	 float3    DeferredLightUniforms_TranslatedWorldPosition ;
	 float    DeferredLightUniforms_InvRadius ;
	 float3    DeferredLightUniforms_Color ;
	 float    DeferredLightUniforms_FalloffExponent ;
	 float3    DeferredLightUniforms_Direction ;
	 float    DeferredLightUniforms_SpecularScale ;
	 float    DeferredLightUniforms_DiffuseScale ;
	 float    DeferredLightUniforms_Padding100 ;
	 float    DeferredLightUniforms_Padding104 ;
	 float    DeferredLightUniforms_Padding108 ;
	 float3    DeferredLightUniforms_Tangent ;
	 float    DeferredLightUniforms_SourceRadius ;
	 float2    DeferredLightUniforms_SpotAngles ;
	 float    DeferredLightUniforms_SoftSourceRadius ;
	 float    DeferredLightUniforms_SourceLength ;
	 float    DeferredLightUniforms_RectLightBarnCosAngle ;
	 float    DeferredLightUniforms_RectLightBarnLength ;
	 float2    DeferredLightUniforms_RectLightAtlasUVOffset ;
	 float2    DeferredLightUniforms_RectLightAtlasUVScale ;
	 float    DeferredLightUniforms_RectLightAtlasMaxLevel ;
	 float    DeferredLightUniforms_IESAtlasIndex ;
	 uint    DeferredLightUniforms_LightFunctionAtlasLightIndex ;
	 uint    DeferredLightUniforms_bAffectsTranslucentLighting ;
 }
 cbuffer LightFunctionAtlas {
	 uint    BindlessSRV_LightFunctionAtlas_LightFunctionAtlasTexture ;
	 uint    LightFunctionAtlas_Padding4 ;
	 uint    BindlessSRV_LightFunctionAtlas_LightInfoDataBuffer ;
	 uint    LightFunctionAtlas_Padding12 ;
	 uint    BindlessSampler_LightFunctionAtlas_LightFunctionAtlasSampler ;
	 uint    LightFunctionAtlas_Padding20 ;
	 float    LightFunctionAtlas_Slot_UVSize ;
 }
  Texture2D<float4>  LightFunctionAtlas_LightFunctionAtlasTexture ;
  StructuredBuffer<float4>  LightFunctionAtlas_LightInfoDataBuffer ;
  SamplerState  LightFunctionAtlas_LightFunctionAtlasSampler ;
 cbuffer Light0Shadow {
	 float3    Light0Shadow_TranslatedWorldPosition ;
	 float    Light0Shadow_InvRadius ;
	 float4x4    Light0Shadow_TranslatedWorldToShadowMatrix ;
	 float4    Light0Shadow_ShadowmapMinMax ;
	 float4    Light0Shadow_DepthBiasParameters ;
	 float4    Light0Shadow_ShadowInjectParams ;
	 float4    Light0Shadow_ClippingPlanes[2] ;
	 uint    BindlessSRV_Light0Shadow_ShadowDepthTexture ;
	 uint    Light0Shadow_Padding164 ;
	 uint    BindlessSampler_Light0Shadow_ShadowDepthTextureSampler ;
	 float    Light0Shadow_Padding172 ;
	 uint    BindlessSRV_Light0Shadow_ShadowDepthCubeTexture ;
	 uint    Light0Shadow_Padding180 ;
	 uint    BindlessSRV_Light0Shadow_ShadowDepthCubeTexture2 ;
	 uint    Light0Shadow_Padding188 ;
	 uint    BindlessSampler_Light0Shadow_ShadowDepthCubeTextureSampler ;
	 uint    Light0Shadow_Padding196 ;
	 uint    Light0Shadow_Padding200 ;
	 uint    Light0Shadow_Padding204 ;
	 float4x4    Light0Shadow_ShadowViewProjectionMatrices[6] ;
	 float    Light0Shadow_InvShadowmapResolution ;
	 uint    Light0Shadow_Padding596 ;
	 uint    Light0Shadow_Padding600 ;
	 uint    Light0Shadow_Padding604 ;
	 uint    Light0Shadow_bStaticallyShadowed ;
	 uint    Light0Shadow_Padding612 ;
	 uint    BindlessSRV_Light0Shadow_StaticShadowDepthTexture ;
	 uint    Light0Shadow_Padding620 ;
	 uint    BindlessSampler_Light0Shadow_StaticShadowDepthTextureSampler ;
	 uint    Light0Shadow_Padding628 ;
	 uint    Light0Shadow_Padding632 ;
	 uint    Light0Shadow_Padding636 ;
	 float4x4    Light0Shadow_TranslatedWorldToStaticShadowMatrix ;
	 float4    Light0Shadow_StaticShadowBufferSize ;
 }
  TextureCube  Light0Shadow_ShadowDepthCubeTexture ;
  TextureCube  Light0Shadow_ShadowDepthCubeTexture2 ;
  SamplerComparisonState  Light0Shadow_ShadowDepthCubeTextureSampler ;
  Texture2D  Light0Shadow_ShadowDepthTexture ;
  SamplerState  Light0Shadow_ShadowDepthTextureSampler ;
  Texture2D  Light0Shadow_StaticShadowDepthTexture ;
  SamplerState  Light0Shadow_StaticShadowDepthTextureSampler ;
 cbuffer Light1Shadow {
	 float3    Light1Shadow_TranslatedWorldPosition ;
	 float    Light1Shadow_InvRadius ;
	 float4x4    Light1Shadow_TranslatedWorldToShadowMatrix ;
	 float4    Light1Shadow_ShadowmapMinMax ;
	 float4    Light1Shadow_DepthBiasParameters ;
	 float4    Light1Shadow_ShadowInjectParams ;
	 float4    Light1Shadow_ClippingPlanes[2] ;
	 uint    BindlessSRV_Light1Shadow_ShadowDepthTexture ;
	 uint    Light1Shadow_Padding164 ;
	 uint    BindlessSampler_Light1Shadow_ShadowDepthTextureSampler ;
	 float    Light1Shadow_Padding172 ;
	 uint    BindlessSRV_Light1Shadow_ShadowDepthCubeTexture ;
	 uint    Light1Shadow_Padding180 ;
	 uint    BindlessSRV_Light1Shadow_ShadowDepthCubeTexture2 ;
	 uint    Light1Shadow_Padding188 ;
	 uint    BindlessSampler_Light1Shadow_ShadowDepthCubeTextureSampler ;
	 uint    Light1Shadow_Padding196 ;
	 uint    Light1Shadow_Padding200 ;
	 uint    Light1Shadow_Padding204 ;
	 float4x4    Light1Shadow_ShadowViewProjectionMatrices[6] ;
	 float    Light1Shadow_InvShadowmapResolution ;
	 uint    Light1Shadow_Padding596 ;
	 uint    Light1Shadow_Padding600 ;
	 uint    Light1Shadow_Padding604 ;
	 uint    Light1Shadow_bStaticallyShadowed ;
	 uint    Light1Shadow_Padding612 ;
	 uint    BindlessSRV_Light1Shadow_StaticShadowDepthTexture ;
	 uint    Light1Shadow_Padding620 ;
	 uint    BindlessSampler_Light1Shadow_StaticShadowDepthTextureSampler ;
	 uint    Light1Shadow_Padding628 ;
	 uint    Light1Shadow_Padding632 ;
	 uint    Light1Shadow_Padding636 ;
	 float4x4    Light1Shadow_TranslatedWorldToStaticShadowMatrix ;
	 float4    Light1Shadow_StaticShadowBufferSize ;
 }
  TextureCube  Light1Shadow_ShadowDepthCubeTexture ;
  TextureCube  Light1Shadow_ShadowDepthCubeTexture2 ;
  SamplerComparisonState  Light1Shadow_ShadowDepthCubeTextureSampler ;
  Texture2D  Light1Shadow_ShadowDepthTexture ;
  SamplerState  Light1Shadow_ShadowDepthTextureSampler ;
  Texture2D  Light1Shadow_StaticShadowDepthTexture ;
  SamplerState  Light1Shadow_StaticShadowDepthTextureSampler ;
 cbuffer ComputeShadingOutputs {
	 uint    BindlessUAV_ComputeShadingOutputs_OutTarget0 ;
	 uint    ComputeShadingOutputs_Padding4 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTarget1 ;
	 uint    ComputeShadingOutputs_Padding12 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTarget2 ;
	 uint    ComputeShadingOutputs_Padding20 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTarget3 ;
	 uint    ComputeShadingOutputs_Padding28 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTarget4 ;
	 uint    ComputeShadingOutputs_Padding36 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTarget5 ;
	 uint    ComputeShadingOutputs_Padding44 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTarget6 ;
	 uint    ComputeShadingOutputs_Padding52 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTarget7 ;
	 uint    ComputeShadingOutputs_Padding60 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTargets ;
	 uint    ComputeShadingOutputs_Padding68 ;
	 uint    BindlessUAV_ComputeShadingOutputs_OutTopLayerTarget ;
 }
  RWTexture2D<float4>  ComputeShadingOutputs_OutTarget0 ;
  RWTexture2D<float4>  ComputeShadingOutputs_OutTarget1 ;
  RWTexture2D<float4>  ComputeShadingOutputs_OutTarget2 ;
  RWTexture2D<float4>  ComputeShadingOutputs_OutTarget3 ;
  RWTexture2D<float4>  ComputeShadingOutputs_OutTarget4 ;
  RWTexture2D<float4>  ComputeShadingOutputs_OutTarget5 ;
  RWTexture2D<float4>  ComputeShadingOutputs_OutTarget6 ;
  RWTexture2D<float4>  ComputeShadingOutputs_OutTarget7 ;
  RWTexture2DArray<uint>  ComputeShadingOutputs_OutTargets ;
  RWTexture2D<uint>  ComputeShadingOutputs_OutTopLayerTarget ;
 cbuffer NaniteShading {
	 float    NaniteShading_RayTracingCutError ;
	 float    NaniteShading_Padding4 ;
	 uint    BindlessSRV_NaniteShading_ClusterPageData ;
	 uint    NaniteShading_Padding12 ;
	 uint    BindlessSRV_NaniteShading_VisibleClustersSWHW ;
	 uint    NaniteShading_Padding20 ;
	 uint    BindlessSRV_NaniteShading_HierarchyBuffer ;
	 uint    NaniteShading_Padding28 ;
	 uint    BindlessSRV_NaniteShading_ShadingMask ;
	 uint    NaniteShading_Padding36 ;
	 uint    BindlessSRV_NaniteShading_VisBuffer64 ;
	 uint    NaniteShading_Padding44 ;
	 uint    BindlessSRV_NaniteShading_DbgBuffer64 ;
	 uint    NaniteShading_Padding52 ;
	 uint    BindlessSRV_NaniteShading_DbgBuffer32 ;
	 uint    NaniteShading_Padding60 ;
	 uint    BindlessSRV_NaniteShading_RayTracingDataBuffer ;
	 uint    NaniteShading_Padding68 ;
	 uint    BindlessSRV_NaniteShading_ShadingBinData ;
	 uint    NaniteShading_Padding76 ;
	 uint    NaniteShading_MultiViewEnabled ;
	 uint    NaniteShading_Padding84 ;
	 uint    BindlessSRV_NaniteShading_MultiViewIndices ;
	 uint    NaniteShading_Padding92 ;
	 uint    BindlessSRV_NaniteShading_MultiViewRectScaleOffsets ;
	 uint    NaniteShading_Padding100 ;
	 uint    BindlessSRV_NaniteShading_InViews ;
 }
  ByteAddressBuffer  NaniteShading_ClusterPageData ;
  ByteAddressBuffer  NaniteShading_VisibleClustersSWHW ;
  ByteAddressBuffer  NaniteShading_HierarchyBuffer ;
  Texture2D<uint>  NaniteShading_ShadingMask ;
  Texture2D<uint2>  NaniteShading_VisBuffer64 ;
  Texture2D<uint2>  NaniteShading_DbgBuffer64 ;
  Texture2D<uint>  NaniteShading_DbgBuffer32 ;
  StructuredBuffer<uint>  NaniteShading_RayTracingDataBuffer ;
  ByteAddressBuffer  NaniteShading_ShadingBinData ;
  StructuredBuffer<uint>  NaniteShading_MultiViewIndices ;
  StructuredBuffer<float4>  NaniteShading_MultiViewRectScaleOffsets ;
  StructuredBuffer<FPackedNaniteView>  NaniteShading_InViews ;
 cbuffer NaniteRaster {
	 int4    NaniteRaster_PageConstants ;
	 uint    NaniteRaster_MaxNodes ;
	 uint    NaniteRaster_MaxVisibleClusters ;
	 uint    NaniteRaster_MaxCandidatePatches ;
	 uint    NaniteRaster_MaxPatchesPerGroup ;
	 uint    NaniteRaster_MeshPass ;
	 float    NaniteRaster_InvDiceRate ;
	 uint    NaniteRaster_RenderFlags ;
	 uint    NaniteRaster_DebugFlags ;
 }
 cbuffer NaniteRayTracing {
	 int4    NaniteRayTracing_PageConstants ;
	 uint    NaniteRayTracing_MaxNodes ;
	 uint    NaniteRayTracing_MaxVisibleClusters ;
	 uint    NaniteRayTracing_RenderFlags ;
	 float    NaniteRayTracing_RayTracingCutError ;
	 uint    BindlessSRV_NaniteRayTracing_ClusterPageData ;
	 uint    NaniteRayTracing_Padding36 ;
	 uint    BindlessSRV_NaniteRayTracing_HierarchyBuffer ;
	 uint    NaniteRayTracing_Padding44 ;
	 uint    BindlessSRV_NaniteRayTracing_RayTracingDataBuffer ;
 }
  ByteAddressBuffer  NaniteRayTracing_ClusterPageData ;
  ByteAddressBuffer  NaniteRayTracing_HierarchyBuffer ;
  StructuredBuffer<uint>  NaniteRayTracing_RayTracingDataBuffer ;
 cbuffer ShaderPrintData {
	 int2    ShaderPrintData_Resolution ;
	 int2    ShaderPrintData_CursorCoord ;
	 float3    ShaderPrintData_TranslatedWorldOffset ;
	 float    ShaderPrintData_Padding28 ;
	 float2    ShaderPrintData_FontSize ;
	 float2    ShaderPrintData_FontSpacing ;
	 uint    ShaderPrintData_MaxCharacterCount ;
	 uint    ShaderPrintData_MaxSymbolCount ;
	 uint    ShaderPrintData_MaxStateCount ;
	 uint    ShaderPrintData_MaxLineCount ;
	 uint    ShaderPrintData_MaxTriangleCount ;
	 uint    ShaderPrintData_IsDrawLocked ;
 }
 cbuffer InstancedVFLooseParameters {
	 float4    InstancedVFLooseParameters_InstancingViewZCompareZero ;
	 float4    InstancedVFLooseParameters_InstancingViewZCompareOne ;
	 float4    InstancedVFLooseParameters_InstancingViewZConstant ;
	 float4    InstancedVFLooseParameters_InstancingTranslatedWorldViewOriginZero ;
	 float4    InstancedVFLooseParameters_InstancingTranslatedWorldViewOriginOne ;
	 float4    InstancedVFLooseParameters_InstancingFadeOutParams ;
 }
 cbuffer LocalVF {
	 int4    LocalVF_VertexFetch_Parameters ;
	 int    LocalVF_PreSkinBaseVertexIndex ;
	 uint    LocalVF_LODLightmapDataIndex ;
	 uint    BindlessSRV_LocalVF_VertexFetch_TexCoordBuffer ;
	 uint    LocalVF_Padding28 ;
	 uint    BindlessSRV_LocalVF_VertexFetch_PositionBuffer ;
	 uint    LocalVF_Padding36 ;
	 uint    BindlessSRV_LocalVF_VertexFetch_PreSkinPositionBuffer ;
	 uint    LocalVF_Padding44 ;
	 uint    BindlessSRV_LocalVF_VertexFetch_PackedTangentsBuffer ;
	 uint    LocalVF_Padding52 ;
	 uint    BindlessSRV_LocalVF_VertexFetch_ColorComponentsBuffer ;
 }
  Buffer<float2>  LocalVF_VertexFetch_TexCoordBuffer ;
  Buffer<float>  LocalVF_VertexFetch_PositionBuffer ;
  Buffer<float>  LocalVF_VertexFetch_PreSkinPositionBuffer ;
  Buffer<float4>  LocalVF_VertexFetch_PackedTangentsBuffer ;
  Buffer<float4>  LocalVF_VertexFetch_ColorComponentsBuffer ;
 cbuffer LocalVFLooseParameters {
	 uint    LocalVFLooseParameters_FrameNumber ;
	 uint    LocalVFLooseParameters_Padding4 ;
	 uint    BindlessSRV_LocalVFLooseParameters_GPUSkinPassThroughPositionBuffer ;
	 uint    LocalVFLooseParameters_Padding12 ;
	 uint    BindlessSRV_LocalVFLooseParameters_GPUSkinPassThroughPreviousPositionBuffer ;
	 uint    LocalVFLooseParameters_Padding20 ;
	 uint    BindlessSRV_LocalVFLooseParameters_GPUSkinPassThroughPreSkinnedTangentBuffer ;
 }
  Buffer<float>  LocalVFLooseParameters_GPUSkinPassThroughPositionBuffer ;
  Buffer<float>  LocalVFLooseParameters_GPUSkinPassThroughPreviousPositionBuffer ;
  Buffer<float4>  LocalVFLooseParameters_GPUSkinPassThroughPreSkinnedTangentBuffer ;
 cbuffer Material {
	 float4    Material_PreshaderBuffer[1] ;
	 uint    BindlessSampler_Material_Wrap_WorldGroupSettings ;
	 uint    Material_Padding20 ;
	 uint    BindlessSampler_Material_Clamp_WorldGroupSettings ;
 }
  SamplerState  Material_Wrap_WorldGroupSettings ;
  SamplerState  Material_Clamp_WorldGroupSettings ;
float2 GetTanHalfFieldOfView()
{
	return View_TanAndInvTanHalfFOV.xy;
}
float2 GetPrevTanHalfFieldOfView()
{
	return View_PrevTanAndInvTanHalfFOV.xy;
}
float2 GetCotanHalfFieldOfView()
{
	return View_TanAndInvTanHalfFOV.zw;
}
float2 GetPrevCotanHalfFieldOfView()
{
	return View_PrevTanAndInvTanHalfFOV.zw;
}
uint GetPowerOfTwoModulatedFrameIndex(uint Pow2Modulus)
{
	return View_StateFrameIndex & uint(Pow2Modulus - 1);
}
float FmodFloor(float Lhs, float Rhs)
{
	return Lhs - floor(Lhs / Rhs) * Rhs;
}
float2 FmodFloor(float2 Lhs, float2 Rhs)
{
	return Lhs - floor(Lhs / Rhs) * Rhs;
}
float3 FmodFloor(float3 Lhs, float3 Rhs)
{
	return Lhs - floor(Lhs / Rhs) * Rhs;
}
float4 FmodFloor(float4 Lhs, float4 Rhs)
{
	return Lhs - floor(Lhs / Rhs) * Rhs;
}
float VectorSum(float V) { return V; }
float VectorSum(float2 V) { return V.x + V.y; }
float VectorSum(float3 V) { return V.x + V.y + V.z; }
float VectorSum(float4 V) { return V.x + V.y + V.z + V.w; }
struct ViewStateTileOffsetData
{
	FLWCVector3 WorldCameraOrigin;
	FLWCVector3 WorldViewOrigin;
	FLWCVector3 PrevWorldCameraOrigin;
	FLWCVector3 PrevWorldViewOrigin;
	FLWCVector3 PreViewTranslation;
	FLWCVector3 PrevPreViewTranslation;
};
struct ViewState
{
	float4x4 TranslatedWorldToClip;
	float4x4 RelativeWorldToClip;
	float4x4 ClipToRelativeWorld;
	float4x4 TranslatedWorldToView;
	float4x4 ViewToTranslatedWorld;
	float4x4 TranslatedWorldToCameraView;
	float4x4 CameraViewToTranslatedWorld;
	float4x4 ViewToClip;
	float4x4 ViewToClipNoAA;
	float4x4 ClipToView;
	float4x4 ClipToTranslatedWorld;
	float4x4 SVPositionToTranslatedWorld;
	float4x4 ScreenToRelativeWorld;
	float4x4 ScreenToTranslatedWorld;
	float4x4 MobileMultiviewShadowTransform;
	float4x4 MobileMultiviewDecalTransform;
	float4x4 FirstPersonTransform;
	float4x4 PrevFirstPersonTransform;
	float3 ViewOriginHigh;
	float3 ViewForward;
	float3 ViewUp;
	float3 ViewRight;
	float3 HMDViewNoRollUp;
	float3 HMDViewNoRollRight;
	float4 InvDeviceZToWorldZTransform;
	float4 ScreenPositionScaleBias;
	float3 ViewOriginLow;
	float3 TranslatedWorldCameraOrigin;
	float3 WorldViewOriginHigh;
	float3 WorldViewOriginLow;
	float3 PreViewTranslationHigh;
	float3 PreViewTranslationLow;
	float4x4 PrevViewToClip;
	float4x4 PrevClipToView;
	float4x4 PrevTranslatedWorldToClip;
	float4x4 PrevTranslatedWorldToView;
	float4x4 PrevViewToTranslatedWorld;
	float4x4 PrevTranslatedWorldToCameraView;
	float4x4 PrevCameraViewToTranslatedWorld;
	float3 PrevTranslatedWorldCameraOrigin;
	float3 PrevWorldCameraOriginHigh;
	float3 PrevWorldCameraOriginLow;
	float3 PrevWorldViewOriginHigh;
	float3 PrevWorldViewOriginLow;
	float3 PrevPreViewTranslationHigh;
	float3 PrevPreViewTranslationLow;
	float3 ViewTilePosition;
	float3 RelativeWorldCameraOriginTO;
	float3 RelativeWorldViewOriginTO;
	float3 RelativePreViewTranslationTO;
	float3 PrevRelativeWorldCameraOriginTO;
	float3 PrevRelativeWorldViewOriginTO;
	float3 RelativePrevPreViewTranslationTO;
	float4x4 PrevClipToRelativeWorld;
	float4x4 PrevScreenToTranslatedWorld;
	float4x4 ClipToPrevClip;
	float4x4 ClipToPrevClipWithAA;
	float4 TemporalAAJitter;
	float4 GlobalClippingPlane;
	float2 FieldOfViewWideAngles;
	float2 PrevFieldOfViewWideAngles;
	float4 ViewRectMin;
	float4 ViewSizeAndInvSize;
	uint4 ViewRectMinAndSize;
	float4 LightProbeSizeRatioAndInvSizeRatio;
	float4 BufferSizeAndInvSize;
	float4 BufferBilinearUVMinMax;
	float4 ScreenToViewSpace;
	float2 BufferToSceneTextureScale;
	float2 ResolutionFractionAndInv;
	int NumSceneColorMSAASamples;
	float ProjectionDepthThicknessScale;
	float PreExposure;
	float OneOverPreExposure;
	float4 DiffuseOverrideParameter;
	float4 SpecularOverrideParameter;
	float4 NormalOverrideParameter;
	float2 RoughnessOverrideParameter;
	float PrevFrameGameTime;
	float PrevFrameRealTime;
	float OutOfBoundsMask;
	float3 WorldCameraMovementSinceLastFrame;
	float CullingSign;
	float NearPlane;
	float OrthoFarPlane;
	float GameTime;
	float RealTime;
	float DeltaTime;
	float MaterialTextureMipBias;
	float MaterialTextureDerivativeMultiply;
	uint Random;
	uint FrameNumber;
	uint FrameCounter;
	uint StateFrameIndexMod8;
	uint StateFrameIndex;
	uint StateOutputFrameIndex;
	uint DebugViewModeMask;
	uint WorldIsPaused;
	float CameraCut;
	float UnlitViewmodeMask;
	float4 DirectionalLightColor;
	float3 DirectionalLightDirection;
	float4 TranslucencyLightingVolumeMin[2];
	float4 TranslucencyLightingVolumeInvSize[2];
	float4 TemporalAAParams;
	float4 CircleDOFParams;
	float DepthOfFieldSensorWidth;
	float DepthOfFieldFocalDistance;
	float DepthOfFieldScale;
	float DepthOfFieldFocalLength;
	float DepthOfFieldFocalRegion;
	float DepthOfFieldNearTransitionRegion;
	float DepthOfFieldFarTransitionRegion;
	float MotionBlurNormalizedToPixel;
	float GeneralPurposeTweak;
	float GeneralPurposeTweak2;
	float DemosaicVposOffset;
	float DecalDepthBias;
	float3 IndirectLightingColorScale;
	float3 PrecomputedIndirectLightingColorScale;
	float3 PrecomputedIndirectSpecularColorScale;
	float4 AtmosphereLightDirection[2];
	float4 AtmosphereLightIlluminanceOnGroundPostTransmittance[2];
	float4 AtmosphereLightIlluminanceOuterSpace[2];
	float4 AtmosphereLightDiscLuminance[2];
	float4 AtmosphereLightDiscCosHalfApexAngle_PPTrans[2];
	float4 SkyViewLutSizeAndInvSize;
	float3 SkyCameraTranslatedWorldOrigin;
	float4 SkyPlanetTranslatedWorldCenterAndViewHeight;
	float4x4 SkyViewLutReferential;
	float4 SkyAtmosphereSkyLuminanceFactor;
	float SkyAtmospherePresentInScene;
	float SkyAtmosphereHeightFogContribution;
	float SkyAtmosphereBottomRadiusKm;
	float SkyAtmosphereTopRadiusKm;
	float4 SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
	float SkyAtmosphereAerialPerspectiveStartDepthKm;
	float SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
	float SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
	float SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm;
	float SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
	float SkyAtmosphereApplyCameraAerialPerspectiveVolume;
	float3 NormalCurvatureToRoughnessScaleBias;
	float RenderingReflectionCaptureMask;
	float RealTimeReflectionCapture;
	float RealTimeReflectionCapturePreExposure;
	float4 AmbientCubemapTint;
	float AmbientCubemapIntensity;
	float SkyLightApplyPrecomputedBentNormalShadowingFlag;
	float SkyLightAffectReflectionFlag;
	float SkyLightAffectGlobalIlluminationFlag;
	float4 SkyLightColor;
	float SkyLightVolumetricScatteringIntensity;
	float4 MobileSkyIrradianceEnvironmentMap[8];
	float MobilePreviewMode;
	float HMDEyePaddingOffset;
	float ReflectionCubemapMaxMip;
	float ShowDecalsMask;
	uint DistanceFieldAOSpecularOcclusionMode;
	float IndirectCapsuleSelfShadowingIntensity;
	float3 ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight;
	int StereoPassIndex;
	float4 GlobalVolumeTranslatedCenterAndExtent[6];
	float4 GlobalVolumeTranslatedWorldToUVAddAndMul[6];
	float4 GlobalDistanceFieldMipTranslatedWorldToUVScale[6];
	float4 GlobalDistanceFieldMipTranslatedWorldToUVBias[6];
	float GlobalDistanceFieldMipFactor;
	float GlobalDistanceFieldMipTransition;
	int GlobalDistanceFieldClipmapSizeInPages;
	float3 GlobalDistanceFieldInvPageAtlasSize;
	float3 GlobalDistanceFieldInvCoverageAtlasSize;
	float GlobalVolumeDimension;
	float GlobalVolumeTexelSize;
	float MaxGlobalDFAOConeDistance;
	uint NumGlobalSDFClipmaps;
	float CoveredExpandSurfaceScale;
	float NotCoveredExpandSurfaceScale;
	float NotCoveredMinStepScale;
	float DitheredTransparencyStepThreshold;
	float DitheredTransparencyTraceThreshold;
	float ViewportScaleUI;
	int2 CursorPosition;
	float bCheckerboardSubsurfaceProfileRendering;
	float3 VolumetricFogInvGridSize;
	float3 VolumetricFogGridZParams;
	float2 VolumetricFogSVPosToVolumeUV;
	float2 VolumetricFogViewGridUVToPrevViewRectUV;
	float2 VolumetricFogPrevViewGridRectUVToResourceUV;
	float2 VolumetricFogPrevUVMax;
	float2 VolumetricFogPrevUVMaxForTemporalBlend;
	float3 VolumetricFogPrevResourceGridSize;
	float2 VolumetricFogScreenToResourceUV;
	float2 VolumetricFogUVMax;
	float VolumetricFogMaxDistance;
	float3 VolumetricLightmapWorldToUVScale;
	float3 VolumetricLightmapWorldToUVAdd;
	float3 VolumetricLightmapIndirectionTextureSize;
	float VolumetricLightmapBrickSize;
	float3 VolumetricLightmapBrickTexelSize;
	float IndirectLightingCacheShowFlag;
	float EyeToPixelSpreadAngle;
	float4 XRPassthroughCameraUVs[2];
	float GlobalVirtualTextureMipBias;
	uint VirtualTextureFeedbackShift;
	uint VirtualTextureFeedbackMask;
	uint VirtualTextureFeedbackStride;
	uint VirtualTextureFeedbackJitterOffset;
	uint VirtualTextureFeedbackSampleOffset;
	float4 RuntimeVirtualTextureMipLevel;
	float2 RuntimeVirtualTexturePackHeight;
	float4 RuntimeVirtualTextureDebugParams;
	int FarShadowStaticMeshLODBias;
	float MinRoughness;
	float4 HairRenderInfo;
	uint EnableSkyLight;
	uint HairRenderInfoBits;
	uint HairComponents;
	float bSubsurfacePostprocessEnabled;
	float4 SSProfilesTextureSizeAndInvSize;
	float4 SSProfilesPreIntegratedTextureSizeAndInvSize;
	float4 SpecularProfileTextureSizeAndInvSize;
	float3 PhysicsFieldClipmapCenter;
	float PhysicsFieldClipmapDistance;
	int PhysicsFieldClipmapResolution;
	int PhysicsFieldClipmapExponent;
	int PhysicsFieldClipmapCount;
	int PhysicsFieldTargetCount;
	int4 PhysicsFieldTargets[32];
	uint GPUSceneViewId;
	float ViewResolutionFraction;
	float SubSurfaceColorAsTransmittanceAtDistanceInMeters;
	float4 TanAndInvTanHalfFOV;
	float4 PrevTanAndInvTanHalfFOV;
	float2 WorldDepthToPixelWorldRadius;
	float4 ScreenRayLengthMultiplier;
	float4 GlintLUTParameters0;
	float4 GlintLUTParameters1;
	float MaterialMaxEmissiveValue;
	int PostVolumeUserFlags;
	int4 EnvironmentComponentsFlags;
	FDFInverseMatrix WorldToClip;
	FDFMatrix ClipToWorld;
	FDFMatrix ScreenToWorld;
	FDFMatrix PrevClipToWorld;
	FDFVector3 WorldCameraOrigin;
	FDFVector3 WorldViewOrigin;
	FDFVector3 PrevWorldCameraOrigin;
	FDFVector3 PrevWorldViewOrigin;
	FDFVector3 PreViewTranslation;
	FDFVector3 PrevPreViewTranslation;
	ViewStateTileOffsetData TileOffset;
};
	void FinalizeViewState(inout ViewState InOutView);
ViewState GetPrimaryView()
{
	ViewState Result;
	Result.TranslatedWorldToClip = View_TranslatedWorldToClip;
	Result.RelativeWorldToClip = View_RelativeWorldToClip;
	Result.ClipToRelativeWorld = View_ClipToRelativeWorld;
	Result.TranslatedWorldToView = View_TranslatedWorldToView;
	Result.ViewToTranslatedWorld = View_ViewToTranslatedWorld;
	Result.TranslatedWorldToCameraView = View_TranslatedWorldToCameraView;
	Result.CameraViewToTranslatedWorld = View_CameraViewToTranslatedWorld;
	Result.ViewToClip = View_ViewToClip;
	Result.ViewToClipNoAA = View_ViewToClipNoAA;
	Result.ClipToView = View_ClipToView;
	Result.ClipToTranslatedWorld = View_ClipToTranslatedWorld;
	Result.SVPositionToTranslatedWorld = View_SVPositionToTranslatedWorld;
	Result.ScreenToRelativeWorld = View_ScreenToRelativeWorld;
	Result.ScreenToTranslatedWorld = View_ScreenToTranslatedWorld;
	Result.MobileMultiviewShadowTransform = View_MobileMultiviewShadowTransform;
	Result.MobileMultiviewDecalTransform = View_MobileMultiviewDecalTransform;
	Result.FirstPersonTransform = View_FirstPersonTransform;
	Result.PrevFirstPersonTransform = View_PrevFirstPersonTransform;
	Result.ViewOriginHigh = View_ViewOriginHigh;
	Result.ViewForward = View_ViewForward;
	Result.ViewUp = View_ViewUp;
	Result.ViewRight = View_ViewRight;
	Result.HMDViewNoRollUp = View_HMDViewNoRollUp;
	Result.HMDViewNoRollRight = View_HMDViewNoRollRight;
	Result.InvDeviceZToWorldZTransform = View_InvDeviceZToWorldZTransform;
	Result.ScreenPositionScaleBias = View_ScreenPositionScaleBias;
	Result.ViewOriginLow = View_ViewOriginLow;
	Result.TranslatedWorldCameraOrigin = View_TranslatedWorldCameraOrigin;
	Result.WorldViewOriginHigh = View_WorldViewOriginHigh;
	Result.WorldViewOriginLow = View_WorldViewOriginLow;
	Result.PreViewTranslationHigh = View_PreViewTranslationHigh;
	Result.PreViewTranslationLow = View_PreViewTranslationLow;
	Result.PrevViewToClip = View_PrevViewToClip;
	Result.PrevClipToView = View_PrevClipToView;
	Result.PrevTranslatedWorldToClip = View_PrevTranslatedWorldToClip;
	Result.PrevTranslatedWorldToView = View_PrevTranslatedWorldToView;
	Result.PrevViewToTranslatedWorld = View_PrevViewToTranslatedWorld;
	Result.PrevTranslatedWorldToCameraView = View_PrevTranslatedWorldToCameraView;
	Result.PrevCameraViewToTranslatedWorld = View_PrevCameraViewToTranslatedWorld;
	Result.PrevTranslatedWorldCameraOrigin = View_PrevTranslatedWorldCameraOrigin;
	Result.PrevWorldCameraOriginHigh = View_PrevWorldCameraOriginHigh;
	Result.PrevWorldCameraOriginLow = View_PrevWorldCameraOriginLow;
	Result.PrevWorldViewOriginHigh = View_PrevWorldViewOriginHigh;
	Result.PrevWorldViewOriginLow = View_PrevWorldViewOriginLow;
	Result.PrevPreViewTranslationHigh = View_PrevPreViewTranslationHigh;
	Result.PrevPreViewTranslationLow = View_PrevPreViewTranslationLow;
	Result.ViewTilePosition = View_ViewTilePosition;
	Result.RelativeWorldCameraOriginTO = View_RelativeWorldCameraOriginTO;
	Result.RelativeWorldViewOriginTO = View_RelativeWorldViewOriginTO;
	Result.RelativePreViewTranslationTO = View_RelativePreViewTranslationTO;
	Result.PrevRelativeWorldCameraOriginTO = View_PrevRelativeWorldCameraOriginTO;
	Result.PrevRelativeWorldViewOriginTO = View_PrevRelativeWorldViewOriginTO;
	Result.RelativePrevPreViewTranslationTO = View_RelativePrevPreViewTranslationTO;
	Result.PrevClipToRelativeWorld = View_PrevClipToRelativeWorld;
	Result.PrevScreenToTranslatedWorld = View_PrevScreenToTranslatedWorld;
	Result.ClipToPrevClip = View_ClipToPrevClip;
	Result.ClipToPrevClipWithAA = View_ClipToPrevClipWithAA;
	Result.TemporalAAJitter = View_TemporalAAJitter;
	Result.GlobalClippingPlane = View_GlobalClippingPlane;
	Result.FieldOfViewWideAngles = View_FieldOfViewWideAngles;
	Result.PrevFieldOfViewWideAngles = View_PrevFieldOfViewWideAngles;
	Result.ViewRectMin = View_ViewRectMin;
	Result.ViewSizeAndInvSize = View_ViewSizeAndInvSize;
	Result.ViewRectMinAndSize = View_ViewRectMinAndSize;
	Result.LightProbeSizeRatioAndInvSizeRatio = View_LightProbeSizeRatioAndInvSizeRatio;
	Result.BufferSizeAndInvSize = View_BufferSizeAndInvSize;
	Result.BufferBilinearUVMinMax = View_BufferBilinearUVMinMax;
	Result.ScreenToViewSpace = View_ScreenToViewSpace;
	Result.BufferToSceneTextureScale = View_BufferToSceneTextureScale;
	Result.ResolutionFractionAndInv = View_ResolutionFractionAndInv;
	Result.NumSceneColorMSAASamples = View_NumSceneColorMSAASamples;
	Result.ProjectionDepthThicknessScale = View_ProjectionDepthThicknessScale;
	Result.PreExposure = View_PreExposure;
	Result.OneOverPreExposure = View_OneOverPreExposure;
	Result.DiffuseOverrideParameter = View_DiffuseOverrideParameter;
	Result.SpecularOverrideParameter = View_SpecularOverrideParameter;
	Result.NormalOverrideParameter = View_NormalOverrideParameter;
	Result.RoughnessOverrideParameter = View_RoughnessOverrideParameter;
	Result.PrevFrameGameTime = View_PrevFrameGameTime;
	Result.PrevFrameRealTime = View_PrevFrameRealTime;
	Result.OutOfBoundsMask = View_OutOfBoundsMask;
	Result.WorldCameraMovementSinceLastFrame = View_WorldCameraMovementSinceLastFrame;
	Result.CullingSign = View_CullingSign;
	Result.NearPlane = View_NearPlane;
	Result.OrthoFarPlane = View_OrthoFarPlane;
	Result.GameTime = View_GameTime;
	Result.RealTime = View_RealTime;
	Result.DeltaTime = View_DeltaTime;
	Result.MaterialTextureMipBias = View_MaterialTextureMipBias;
	Result.MaterialTextureDerivativeMultiply = View_MaterialTextureDerivativeMultiply;
	Result.Random = View_Random;
	Result.FrameNumber = View_FrameNumber;
	Result.FrameCounter = View_FrameCounter;
	Result.StateFrameIndexMod8 = View_StateFrameIndexMod8;
	Result.StateFrameIndex = View_StateFrameIndex;
	Result.StateOutputFrameIndex = View_StateOutputFrameIndex;
	Result.DebugViewModeMask = View_DebugViewModeMask;
	Result.WorldIsPaused = View_WorldIsPaused;
	Result.CameraCut = View_CameraCut;
	Result.UnlitViewmodeMask = View_UnlitViewmodeMask;
	Result.DirectionalLightColor = View_DirectionalLightColor;
	Result.DirectionalLightDirection = View_DirectionalLightDirection;
	Result.TranslucencyLightingVolumeMin = View_TranslucencyLightingVolumeMin;
	Result.TranslucencyLightingVolumeInvSize = View_TranslucencyLightingVolumeInvSize;
	Result.TemporalAAParams = View_TemporalAAParams;
	Result.CircleDOFParams = View_CircleDOFParams;
	Result.DepthOfFieldSensorWidth = View_DepthOfFieldSensorWidth;
	Result.DepthOfFieldFocalDistance = View_DepthOfFieldFocalDistance;
	Result.DepthOfFieldScale = View_DepthOfFieldScale;
	Result.DepthOfFieldFocalLength = View_DepthOfFieldFocalLength;
	Result.DepthOfFieldFocalRegion = View_DepthOfFieldFocalRegion;
	Result.DepthOfFieldNearTransitionRegion = View_DepthOfFieldNearTransitionRegion;
	Result.DepthOfFieldFarTransitionRegion = View_DepthOfFieldFarTransitionRegion;
	Result.MotionBlurNormalizedToPixel = View_MotionBlurNormalizedToPixel;
	Result.GeneralPurposeTweak = View_GeneralPurposeTweak;
	Result.GeneralPurposeTweak2 = View_GeneralPurposeTweak2;
	Result.DemosaicVposOffset = View_DemosaicVposOffset;
	Result.DecalDepthBias = View_DecalDepthBias;
	Result.IndirectLightingColorScale = View_IndirectLightingColorScale;
	Result.PrecomputedIndirectLightingColorScale = View_PrecomputedIndirectLightingColorScale;
	Result.PrecomputedIndirectSpecularColorScale = View_PrecomputedIndirectSpecularColorScale;
	Result.AtmosphereLightDirection = View_AtmosphereLightDirection;
	Result.AtmosphereLightIlluminanceOnGroundPostTransmittance = View_AtmosphereLightIlluminanceOnGroundPostTransmittance;
	Result.AtmosphereLightIlluminanceOuterSpace = View_AtmosphereLightIlluminanceOuterSpace;
	Result.AtmosphereLightDiscLuminance = View_AtmosphereLightDiscLuminance;
	Result.AtmosphereLightDiscCosHalfApexAngle_PPTrans = View_AtmosphereLightDiscCosHalfApexAngle_PPTrans;
	Result.SkyViewLutSizeAndInvSize = View_SkyViewLutSizeAndInvSize;
	Result.SkyCameraTranslatedWorldOrigin = View_SkyCameraTranslatedWorldOrigin;
	Result.SkyPlanetTranslatedWorldCenterAndViewHeight = View_SkyPlanetTranslatedWorldCenterAndViewHeight;
	Result.SkyViewLutReferential = View_SkyViewLutReferential;
	Result.SkyAtmosphereSkyLuminanceFactor = View_SkyAtmosphereSkyLuminanceFactor;
	Result.SkyAtmospherePresentInScene = View_SkyAtmospherePresentInScene;
	Result.SkyAtmosphereHeightFogContribution = View_SkyAtmosphereHeightFogContribution;
	Result.SkyAtmosphereBottomRadiusKm = View_SkyAtmosphereBottomRadiusKm;
	Result.SkyAtmosphereTopRadiusKm = View_SkyAtmosphereTopRadiusKm;
	Result.SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize = View_SkyAtmosphereCameraAerialPerspectiveVolumeSizeAndInvSize;
	Result.SkyAtmosphereAerialPerspectiveStartDepthKm = View_SkyAtmosphereAerialPerspectiveStartDepthKm;
	Result.SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution = View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolution;
	Result.SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv = View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthResolutionInv;
	Result.SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm = View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKm;
	Result.SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv = View_SkyAtmosphereCameraAerialPerspectiveVolumeDepthSliceLengthKmInv;
	Result.SkyAtmosphereApplyCameraAerialPerspectiveVolume = View_SkyAtmosphereApplyCameraAerialPerspectiveVolume;
	Result.NormalCurvatureToRoughnessScaleBias = View_NormalCurvatureToRoughnessScaleBias;
	Result.RenderingReflectionCaptureMask = View_RenderingReflectionCaptureMask;
	Result.RealTimeReflectionCapture = View_RealTimeReflectionCapture;
	Result.RealTimeReflectionCapturePreExposure = View_RealTimeReflectionCapturePreExposure;
	Result.AmbientCubemapTint = View_AmbientCubemapTint;
	Result.AmbientCubemapIntensity = View_AmbientCubemapIntensity;
	Result.SkyLightApplyPrecomputedBentNormalShadowingFlag = View_SkyLightApplyPrecomputedBentNormalShadowingFlag;
	Result.SkyLightAffectReflectionFlag = View_SkyLightAffectReflectionFlag;
	Result.SkyLightAffectGlobalIlluminationFlag = View_SkyLightAffectGlobalIlluminationFlag;
	Result.SkyLightColor = View_SkyLightColor;
	Result.SkyLightVolumetricScatteringIntensity = View_SkyLightVolumetricScatteringIntensity;
	Result.MobileSkyIrradianceEnvironmentMap = View_MobileSkyIrradianceEnvironmentMap;
	Result.MobilePreviewMode = View_MobilePreviewMode;
	Result.HMDEyePaddingOffset = View_HMDEyePaddingOffset;
	Result.ReflectionCubemapMaxMip = View_ReflectionCubemapMaxMip;
	Result.ShowDecalsMask = View_ShowDecalsMask;
	Result.DistanceFieldAOSpecularOcclusionMode = View_DistanceFieldAOSpecularOcclusionMode;
	Result.IndirectCapsuleSelfShadowingIntensity = View_IndirectCapsuleSelfShadowingIntensity;
	Result.ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight = View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight;
	Result.StereoPassIndex = View_StereoPassIndex;
	Result.GlobalVolumeTranslatedCenterAndExtent = View_GlobalVolumeTranslatedCenterAndExtent;
	Result.GlobalVolumeTranslatedWorldToUVAddAndMul = View_GlobalVolumeTranslatedWorldToUVAddAndMul;
	Result.GlobalDistanceFieldMipTranslatedWorldToUVScale = View_GlobalDistanceFieldMipTranslatedWorldToUVScale;
	Result.GlobalDistanceFieldMipTranslatedWorldToUVBias = View_GlobalDistanceFieldMipTranslatedWorldToUVBias;
	Result.GlobalDistanceFieldMipFactor = View_GlobalDistanceFieldMipFactor;
	Result.GlobalDistanceFieldMipTransition = View_GlobalDistanceFieldMipTransition;
	Result.GlobalDistanceFieldClipmapSizeInPages = View_GlobalDistanceFieldClipmapSizeInPages;
	Result.GlobalDistanceFieldInvPageAtlasSize = View_GlobalDistanceFieldInvPageAtlasSize;
	Result.GlobalDistanceFieldInvCoverageAtlasSize = View_GlobalDistanceFieldInvCoverageAtlasSize;
	Result.GlobalVolumeDimension = View_GlobalVolumeDimension;
	Result.GlobalVolumeTexelSize = View_GlobalVolumeTexelSize;
	Result.MaxGlobalDFAOConeDistance = View_MaxGlobalDFAOConeDistance;
	Result.NumGlobalSDFClipmaps = View_NumGlobalSDFClipmaps;
	Result.CoveredExpandSurfaceScale = View_CoveredExpandSurfaceScale;
	Result.NotCoveredExpandSurfaceScale = View_NotCoveredExpandSurfaceScale;
	Result.NotCoveredMinStepScale = View_NotCoveredMinStepScale;
	Result.DitheredTransparencyStepThreshold = View_DitheredTransparencyStepThreshold;
	Result.DitheredTransparencyTraceThreshold = View_DitheredTransparencyTraceThreshold;
	Result.ViewportScaleUI = View_ViewportScaleUI;
	Result.CursorPosition = View_CursorPosition;
	Result.bCheckerboardSubsurfaceProfileRendering = View_bCheckerboardSubsurfaceProfileRendering;
	Result.VolumetricFogInvGridSize = View_VolumetricFogInvGridSize;
	Result.VolumetricFogGridZParams = View_VolumetricFogGridZParams;
	Result.VolumetricFogSVPosToVolumeUV = View_VolumetricFogSVPosToVolumeUV;
	Result.VolumetricFogViewGridUVToPrevViewRectUV = View_VolumetricFogViewGridUVToPrevViewRectUV;
	Result.VolumetricFogPrevViewGridRectUVToResourceUV = View_VolumetricFogPrevViewGridRectUVToResourceUV;
	Result.VolumetricFogPrevUVMax = View_VolumetricFogPrevUVMax;
	Result.VolumetricFogPrevUVMaxForTemporalBlend = View_VolumetricFogPrevUVMaxForTemporalBlend;
	Result.VolumetricFogPrevResourceGridSize = View_VolumetricFogPrevResourceGridSize;
	Result.VolumetricFogScreenToResourceUV = View_VolumetricFogScreenToResourceUV;
	Result.VolumetricFogUVMax = View_VolumetricFogUVMax;
	Result.VolumetricFogMaxDistance = View_VolumetricFogMaxDistance;
	Result.VolumetricLightmapWorldToUVScale = View_VolumetricLightmapWorldToUVScale;
	Result.VolumetricLightmapWorldToUVAdd = View_VolumetricLightmapWorldToUVAdd;
	Result.VolumetricLightmapIndirectionTextureSize = View_VolumetricLightmapIndirectionTextureSize;
	Result.VolumetricLightmapBrickSize = View_VolumetricLightmapBrickSize;
	Result.VolumetricLightmapBrickTexelSize = View_VolumetricLightmapBrickTexelSize;
	Result.IndirectLightingCacheShowFlag = View_IndirectLightingCacheShowFlag;
	Result.EyeToPixelSpreadAngle = View_EyeToPixelSpreadAngle;
	Result.XRPassthroughCameraUVs = View_XRPassthroughCameraUVs;
	Result.GlobalVirtualTextureMipBias = View_GlobalVirtualTextureMipBias;
	Result.VirtualTextureFeedbackShift = View_VirtualTextureFeedbackShift;
	Result.VirtualTextureFeedbackMask = View_VirtualTextureFeedbackMask;
	Result.VirtualTextureFeedbackStride = View_VirtualTextureFeedbackStride;
	Result.VirtualTextureFeedbackJitterOffset = View_VirtualTextureFeedbackJitterOffset;
	Result.VirtualTextureFeedbackSampleOffset = View_VirtualTextureFeedbackSampleOffset;
	Result.RuntimeVirtualTextureMipLevel = View_RuntimeVirtualTextureMipLevel;
	Result.RuntimeVirtualTexturePackHeight = View_RuntimeVirtualTexturePackHeight;
	Result.RuntimeVirtualTextureDebugParams = View_RuntimeVirtualTextureDebugParams;
	Result.FarShadowStaticMeshLODBias = View_FarShadowStaticMeshLODBias;
	Result.MinRoughness = View_MinRoughness;
	Result.HairRenderInfo = View_HairRenderInfo;
	Result.EnableSkyLight = View_EnableSkyLight;
	Result.HairRenderInfoBits = View_HairRenderInfoBits;
	Result.HairComponents = View_HairComponents;
	Result.bSubsurfacePostprocessEnabled = View_bSubsurfacePostprocessEnabled;
	Result.SSProfilesTextureSizeAndInvSize = View_SSProfilesTextureSizeAndInvSize;
	Result.SSProfilesPreIntegratedTextureSizeAndInvSize = View_SSProfilesPreIntegratedTextureSizeAndInvSize;
	Result.SpecularProfileTextureSizeAndInvSize = View_SpecularProfileTextureSizeAndInvSize;
	Result.PhysicsFieldClipmapCenter = View_PhysicsFieldClipmapCenter;
	Result.PhysicsFieldClipmapDistance = View_PhysicsFieldClipmapDistance;
	Result.PhysicsFieldClipmapResolution = View_PhysicsFieldClipmapResolution;
	Result.PhysicsFieldClipmapExponent = View_PhysicsFieldClipmapExponent;
	Result.PhysicsFieldClipmapCount = View_PhysicsFieldClipmapCount;
	Result.PhysicsFieldTargetCount = View_PhysicsFieldTargetCount;
	Result.PhysicsFieldTargets = View_PhysicsFieldTargets;
	Result.GPUSceneViewId = View_GPUSceneViewId;
	Result.ViewResolutionFraction = View_ViewResolutionFraction;
	Result.SubSurfaceColorAsTransmittanceAtDistanceInMeters = View_SubSurfaceColorAsTransmittanceAtDistanceInMeters;
	Result.TanAndInvTanHalfFOV = View_TanAndInvTanHalfFOV;
	Result.PrevTanAndInvTanHalfFOV = View_PrevTanAndInvTanHalfFOV;
	Result.WorldDepthToPixelWorldRadius = View_WorldDepthToPixelWorldRadius;
	Result.ScreenRayLengthMultiplier = View_ScreenRayLengthMultiplier;
	Result.GlintLUTParameters0 = View_GlintLUTParameters0;
	Result.GlintLUTParameters1 = View_GlintLUTParameters1;
	Result.MaterialMaxEmissiveValue = View_MaterialMaxEmissiveValue;
	Result.PostVolumeUserFlags = View_PostVolumeUserFlags;
	Result.EnvironmentComponentsFlags = View_EnvironmentComponentsFlags;
	FinalizeViewState(Result);
	return Result;
}
void FinalizeViewState(inout ViewState InOutView)
{
	InOutView.WorldToClip = MakeDFInverseMatrix(InOutView.ViewOriginHigh, InOutView.RelativeWorldToClip);
	InOutView.ClipToWorld = MakeDFMatrix(InOutView.ViewOriginHigh, InOutView.ClipToRelativeWorld);
	InOutView.ScreenToWorld = MakeDFMatrix(InOutView.ViewOriginHigh, InOutView.ScreenToRelativeWorld);
	InOutView.PrevClipToWorld = MakeDFMatrix(InOutView.ViewOriginHigh, InOutView.PrevClipToRelativeWorld);
	InOutView.WorldCameraOrigin = MakeDFVector3(InOutView.ViewOriginHigh, InOutView.ViewOriginLow);
	InOutView.WorldViewOrigin = MakeDFVector3(InOutView.WorldViewOriginHigh, InOutView.WorldViewOriginLow);
	InOutView.PrevWorldCameraOrigin = MakeDFVector3(InOutView.PrevWorldCameraOriginHigh, InOutView.PrevWorldCameraOriginLow);
	InOutView.PrevWorldViewOrigin = MakeDFVector3(InOutView.PrevWorldViewOriginHigh, InOutView.PrevWorldViewOriginLow);
	InOutView.PreViewTranslation = MakeDFVector3(InOutView.PreViewTranslationHigh, InOutView.PreViewTranslationLow);
	InOutView.PrevPreViewTranslation = MakeDFVector3(InOutView.PrevPreViewTranslationHigh, InOutView.PrevPreViewTranslationLow);
	InOutView.TileOffset.WorldCameraOrigin = MakeLWCVector3(InOutView.ViewTilePosition, InOutView.RelativeWorldCameraOriginTO);
	InOutView.TileOffset.WorldViewOrigin = MakeLWCVector3(InOutView.ViewTilePosition, InOutView.RelativeWorldViewOriginTO);
	InOutView.TileOffset.PrevWorldCameraOrigin = MakeLWCVector3(InOutView.ViewTilePosition, InOutView.PrevRelativeWorldCameraOriginTO);
	InOutView.TileOffset.PrevWorldViewOrigin = MakeLWCVector3(InOutView.ViewTilePosition, InOutView.PrevRelativeWorldViewOriginTO);
	InOutView.TileOffset.PreViewTranslation = MakeLWCVector3(-InOutView.ViewTilePosition, InOutView.RelativePreViewTranslationTO);
	InOutView.TileOffset.PrevPreViewTranslation = MakeLWCVector3(-InOutView.ViewTilePosition, InOutView.RelativePrevPreViewTranslationTO);
}
static ViewState ResolvedView = (ViewState)0.0f;
ViewState ResolveView()
{
	return GetPrimaryView();
}
bool IsInstancedStereo()
{
	return false;
}
uint GetEyeIndex(uint InstanceId)
{
	return 0;
}
uint GetInstanceId(uint InstanceId)
{
	return InstanceId;
}
static float GlobalTextureMipBias = 0;
static float GlobalRayCone_TexArea = 0;
float ComputeRayConeLod(Texture2D Tex)
{
    return 0.0f;
}
float  ClampToHalfFloatRange(float  X) { return clamp(X, float(0), MaxHalfFloat); }
float2 ClampToHalfFloatRange(float2 X) { return clamp(X, float(0).xx, MaxHalfFloat.xx); }
float3 ClampToHalfFloatRange(float3 X) { return clamp(X, float(0).xxx, MaxHalfFloat.xxx); }
float4 ClampToHalfFloatRange(float4 X) { return clamp(X, float(0).xxxx, MaxHalfFloat.xxxx); }
float4 Texture1DSample(Texture1D Tex, SamplerState Sampler, float UV)
{
	return Tex.Sample(Sampler, UV);
}
float4 Texture2DSample(Texture2D Tex, SamplerState Sampler, float2 UV)
{
	return Tex.Sample(Sampler, UV);
}
float4 Texture2DSample(Texture2D Tex, SamplerState Sampler, FloatDeriv2 UV)
{
	return Tex.SampleGrad(Sampler, UV.Value, UV.Ddx, UV.Ddy);
}
float Texture2DSample_A8(Texture2D Tex, SamplerState Sampler, float2 UV)
{
	return Tex.Sample(Sampler, UV) .r;
}
float4 Texture3DSample(Texture3D Tex, SamplerState Sampler, float3 UV)
{
	return Tex.Sample(Sampler, UV);
}
float4 TextureCubeSample(TextureCube Tex, SamplerState Sampler, float3 UV)
{
	return Tex.Sample(Sampler, UV);
}
float4 Texture2DArraySample(Texture2DArray Tex, SamplerState Sampler, float3 UV)
{
	return Tex.Sample(Sampler, UV);
}
float4 Texture1DSampleLevel(Texture1D Tex, SamplerState Sampler, float UV, float Mip)
{
	return Tex.SampleLevel(Sampler, UV, Mip);
}
float4 Texture2DSampleLevel(Texture2D Tex, SamplerState Sampler, float2 UV, float Mip)
{
	return Tex.SampleLevel(Sampler, UV, Mip);
}
float4 Texture2DSampleBias(Texture2D Tex, SamplerState Sampler, float2 UV, float MipBias)
{
	return Tex.SampleBias(Sampler, UV, MipBias);
}
float4 Texture2DSampleGrad(Texture2D Tex, SamplerState Sampler, float2 UV, float2 DDX, float2 DDY)
{
	return Tex.SampleGrad(Sampler, UV, DDX, DDY);
}
float4 Texture3DSampleLevel(Texture3D Tex, SamplerState Sampler, float3 UV, float Mip)
{
	return Tex.SampleLevel(Sampler, UV, Mip);
}
float4 Texture3DSampleBias(Texture3D Tex, SamplerState Sampler, float3 UV, float MipBias)
{
	return Tex.SampleBias(Sampler, UV, MipBias);
}
float4 Texture3DSampleGrad(Texture3D Tex, SamplerState Sampler, float3 UV, float3 DDX, float3 DDY)
{
	return Tex.SampleGrad(Sampler, UV, DDX, DDY);
}
float4 Texture2DArraySampleLevel(Texture2DArray Tex, SamplerState Sampler, float3 UV, float Mip)
{
	return Tex.SampleLevel(Sampler, UV, Mip);
}
float4 TextureCubeSampleLevel(TextureCube Tex, SamplerState Sampler, float3 UV, float Mip)
{
	return Tex.SampleLevel(Sampler, UV, Mip);
}
float TextureCubeSampleDepthLevel(TextureCube TexDepth, SamplerState Sampler, float3 UV, float Mip)
{
	return TexDepth.SampleLevel(Sampler, UV, Mip).x;
}
float4 TextureCubeSampleBias(TextureCube Tex, SamplerState Sampler, float3 UV, float MipBias)
{
	return Tex.SampleBias(Sampler, UV, MipBias);
}
float4 TextureCubeSampleGrad(TextureCube Tex, SamplerState Sampler, float3 UV, float3 DDX, float3 DDY)
{
	return Tex.SampleGrad(Sampler, UV, DDX, DDY);
}
float4 TextureExternalSample(Texture2D Tex, SamplerState Sampler, float2 UV)
{
	return Tex.Sample(Sampler, UV);
}
float4 TextureExternalSampleGrad(Texture2D Tex, SamplerState Sampler, float2 UV, float2 DDX, float2 DDY)
{
	return Tex.SampleGrad(Sampler, UV, DDX, DDY);
}
float4 TextureExternalSampleLevel(Texture2D Tex, SamplerState Sampler, float2 UV, float Mip)
{
	return Tex.SampleLevel(Sampler, UV, Mip);
}
float4 Texture1DSample_Decal(Texture1D Tex, SamplerState Sampler, float UV)
{
	return Texture1DSample(Tex, Sampler, UV);
}
float4 Texture2DSample_Decal(Texture2D Tex, SamplerState Sampler, float2 UV)
{
	return Texture2DSample(Tex, Sampler, UV);
}
float4 Texture3DSample_Decal(Texture3D Tex, SamplerState Sampler, float3 UV)
{
	return Texture3DSample(Tex, Sampler, UV);
}
float4 Texture2DArraySample_Decal(Texture2DArray Tex, SamplerState Sampler, float3 UV)
{
	return Texture2DArraySample(Tex, Sampler, UV);
}
float4 TextureCubeSample_Decal(TextureCube Tex, SamplerState Sampler, float3 UV)
{
	return TextureCubeSample(Tex, Sampler, UV);
}
float4 TextureExternalSample_Decal(Texture2D Tex, SamplerState Sampler, float2 UV)
{
	return TextureExternalSample(Tex, Sampler, UV);
}
float4 Texture2DArraySampleBias(Texture2DArray Tex, SamplerState Sampler, float3 UV, float MipBias)
{
	return Tex.SampleBias(Sampler, UV, MipBias);
}
float4 Texture2DArraySampleGrad(Texture2DArray Tex, SamplerState Sampler, float3 UV, float2 DDX, float2 DDY)
{
	return Tex.SampleGrad(Sampler, UV, DDX, DDY);
}
float2 Tile1Dto2D(float xsize, float idx)
{
	float2 xyidx = 0;
	xyidx.y = floor(idx / xsize);
	xyidx.x = idx - xsize * xyidx.y;
	return xyidx;
}
float4 PseudoVolumeTexture(Texture2D Tex, SamplerState TexSampler, float3 inPos, float2 xysize, float numframes,
	uint mipmode = 0, float miplevel = 0, float2 InDDX = 0, float2 InDDY = 0)
{
	float z = inPos.z - 0.5f / numframes;	
	float zframe = floor(z * numframes);
	float zphase = frac(z * numframes);
	float2 uv = frac(inPos.xy) / xysize;
	float2 curframe = Tile1Dto2D(xysize.x, zframe) / xysize;
	float2 nextframe = Tile1Dto2D(xysize.x, zframe + 1) / xysize;
	float2 uvCurFrame = uv + curframe;
	float2 uvNextFrame = uv + nextframe;
	float4 sampleA = 0, sampleB = 0;
	switch (mipmode)
	{
	case 0: 
		sampleA = Tex.SampleLevel(TexSampler, uvCurFrame, miplevel);
		sampleB = Tex.SampleLevel(TexSampler, uvNextFrame, miplevel);
		break;
	case 1: 
		sampleA = Texture2DSample(Tex, TexSampler, uvCurFrame);
		sampleB = Texture2DSample(Tex, TexSampler, uvNextFrame);
		break;
	case 2: 
		sampleA = Tex.SampleGrad(TexSampler, uvCurFrame,  InDDX, InDDY);
		sampleB = Tex.SampleGrad(TexSampler, uvNextFrame, InDDX, InDDY);
		break;
	default:
		break;
	}
	return lerp(sampleA, sampleB, zphase);
}
float4 TextureCubeArraySample(TextureCubeArray Tex, SamplerState Sampler, float4 UV)
{
	return Tex.Sample(Sampler, UV);
}
float4 TextureCubeArraySampleLevel(TextureCubeArray Tex, SamplerState Sampler, float4 UV, float Mip)
{
	return Tex.SampleLevel(Sampler, UV, Mip);
}
float4 TextureCubeArraySampleBias(TextureCubeArray Tex, SamplerState Sampler, float4 UV, float MipBias)
{
	return Tex.SampleBias(Sampler, UV, MipBias);
}
float4 TextureCubeArraySampleGrad(TextureCubeArray Tex, SamplerState Sampler, float4 UV, float3 DDX, float3 DDY)
{
	return Tex.SampleGrad(Sampler, UV, DDX, DDY);
}
float4 TextureCubeArraySampleLevel(TextureCubeArray Tex, SamplerState Sampler, float3 UV, float ArrayIndex, float Mip)
{
	return TextureCubeArraySampleLevel(Tex, Sampler, float4(UV, ArrayIndex), Mip);
}
float3 LuminanceFactors()
{
		return float3(0.2126390059, 0.7151686788, 0.0721923154);
}
float Luminance( float3 LinearColor )
{
	return dot( LinearColor, float3(LuminanceFactors()));
}
float length2(float2 v)
{
	return dot(v, v);
}
float length2(float3 v)
{
	return dot(v, v);
}
float length2(float4 v)
{
	return dot(v, v);
}
uint Mod(uint a, uint b)
{
	return a % b;
}
uint2 Mod(uint2 a, uint2 b)
{
	return a % b;
}
uint3 Mod(uint3 a, uint3 b)
{
	return a % b;
}
float ClampedPow(float X,float Y)
{
	return pow(max(abs(X),0.000001f),Y);
}
float2 ClampedPow(float2 X,float2 Y)
{
	return pow(max(abs(X),float2(0.000001f,0.000001f)),Y);
}
float3 ClampedPow(float3 X,float3 Y)
{
	return pow(max(abs(X),float3(0.000001f,0.000001f,0.000001f)),Y);
}  
float4 ClampedPow(float4 X,float4 Y)
{
	return pow(max(abs(X),float4(0.000001f,0.000001f,0.000001f,0.000001f)),Y);
} 
float PositiveClampedPow(float Base, float Exponent)
{
	return (Base <= 2.980233e-8f) ? 0.0f : pow(Base, Exponent);
}
float2 PositiveClampedPow(float2 Base, float2 Exponent)
{
	return float2(PositiveClampedPow(Base.x, Exponent.x), PositiveClampedPow(Base.y, Exponent.y)); 
}
float3 PositiveClampedPow(float3 Base, float3 Exponent)
{
	return float3(PositiveClampedPow(Base.xy, Exponent.xy), PositiveClampedPow(Base.z, Exponent.z)); 
}  
float4 PositiveClampedPow(float4 Base, float4 Exponent)
{
	return float4(PositiveClampedPow(Base.xy, Exponent.xy), PositiveClampedPow(Base.zw, Exponent.zw)); 
} 
float DDX(float Input)
{
	return ddx(Input);
}
float2 DDX(float2 Input)
{
	return ddx(Input);
}
float3 DDX(float3 Input)
{
	return ddx(Input);
}
float4 DDX(float4 Input)
{
	return ddx(Input);
}
float DDY(float Input)
{
	return ddy(Input);
}
float2 DDY(float2 Input)
{
	return ddy(Input);
}
float3 DDY(float3 Input)
{
	return ddy(Input);
}
float4 DDY(float4 Input)
{
	return ddy(Input);
}
float rsqrtFast( float x )
{
	int i = asint(x);
	i = 0x5f3759df - (i >> 1);
	return asfloat(i);
}
float sqrtFast( float x )
{
	int i = asint(x);
	i = 0x1FBD1DF5 + (i >> 1);
	return asfloat(i);
}
float rcpFast( float x )
{
	int i = asint(x);
	i = 0x7EF311C2 - i;
	return asfloat(i);
}
float rcpFastNR1( float x )
{
	int i = asint(x);
	i = 0x7EF311C3 - i;
	float xRcp = asfloat(i);
	xRcp = xRcp * (-xRcp * x + 2.0f);
	return xRcp;
}
float lengthFast( float3 v )
{
	float LengthSqr = dot(v,v);
	return sqrtFast( LengthSqr );
}
float3 normalizeFast( float3 v )
{
	float LengthSqr = dot(v,v);
	return v * rsqrtFast( LengthSqr );
}
float acosFast(float inX) 
{
    float x = abs(inX);
    float res = -0.156583f * x + (0.5 * PI);
    res *= sqrt(1.0f - x);
    return (inX >= 0) ? res : PI - res;
}
float2 acosFast( float2 x )
{
	return float2( acosFast(x.x), acosFast(x.y) );
}
float3 acosFast( float3 x )
{
	return float3( acosFast(x.x), acosFast(x.y), acosFast(x.z) );
}
float4 acosFast( float4 x )
{
	return float4( acosFast(x.x), acosFast(x.y), acosFast(x.z), acosFast(x.w) );
}
float asinFast( float x )
{
    return (0.5 * PI) - acosFast(x);
}
float2 asinFast( float2 x)
{
	return float2( asinFast(x.x), asinFast(x.y) );
}
float3 asinFast( float3 x)
{
	return float3( asinFast(x.x), asinFast(x.y), asinFast(x.z) );
}
float4 asinFast( float4 x )
{
	return float4( asinFast(x.x), asinFast(x.y), asinFast(x.z), asinFast(x.w) );
}
float atanFastPos( float x ) 
{ 
    float t0 = (x < 1.0f) ? x : 1.0f / x;
    float t1 = t0 * t0;
    float poly = 0.0872929f;
    poly = -0.301895f + poly * t1;
    poly = 1.0f + poly * t1;
    poly = poly * t0;
    return (x < 1.0f) ? poly : (0.5 * PI) - poly;
}
float atanFast( float x )
{
    float t0 = atanFastPos( abs(x) );
    return (x < 0) ? -t0: t0;
}
float2 atanFast( float2 x )
{
	return float2( atanFast(x.x), atanFast(x.y) );
}
float3 atanFast( float3 x )
{
	return float3( atanFast(x.x), atanFast(x.y), atanFast(x.z) );
}
float4 atanFast( float4 x )
{
	return float4( atanFast(x.x), atanFast(x.y), atanFast(x.z), atanFast(x.w) );
}
float atan2Fast( float y, float x )
{
	float t0 = max( abs(x), abs(y) );
	float t1 = min( abs(x), abs(y) );
	float t3 = t1 / t0;
	float t4 = t3 * t3;
	t0 =         + 0.0872929;
	t0 = t0 * t4 - 0.301895;
	t0 = t0 * t4 + 1.0;
	t3 = t0 * t3;
	t3 = abs(y) > abs(x) ? (0.5 * PI) - t3 : t3;
	t3 = x < 0 ? PI - t3 : t3;
	t3 = y < 0 ? -t3 : t3;
	return t3;
}
float2 atan2Fast( float2 y, float2 x )
{
	return float2( atan2Fast(y.x, x.x), atan2Fast(y.y, x.y) );
}
float3 atan2Fast( float3 y, float3 x )
{
	return float3( atan2Fast(y.x, x.x), atan2Fast(y.y, x.y), atan2Fast(y.z, x.z) );
}
float4 atan2Fast( float4 y, float4 x )
{
	return float4( atan2Fast(y.x, x.x), atan2Fast(y.y, x.y), atan2Fast(y.z, x.z), atan2Fast(y.w, x.w) );
}
float acosFast4(float inX)
{
	float x1 = abs(inX);
	float x2 = x1 * x1;
	float x3 = x2 * x1;
	float s;
	s = -0.2121144f * x1 + 1.5707288f;
	s = 0.0742610f * x2 + s;
	s = -0.0187293f * x3 + s;
	s = sqrt(1.0f - x1) * s;
	return inX >= 0.0f ? s : PI - s;
}
float asinFast4( float x )
{
	return (0.5 * PI) - acosFast4(x);
}
float CosBetweenVectors(float3 A, float3 B)
{
	return dot(A, B) * rsqrt(length2(A) * length2(B));
}
float AngleBetweenVectors(float3 A, float3 B)
{
	return acos(CosBetweenVectors(A, B));
}
float AngleBetweenVectorsFast(float3 A, float3 B)
{
	return acosFast(CosBetweenVectors(A, B));
}
int SignFastInt(float v)
{
	return 1 - int((asuint(v) & 0x80000000) >> 30);
}
int2 SignFastInt(float2 v)
{
	return int2(SignFastInt(v.x), SignFastInt(v.y));
}
  float FastExp( float x) { return exp2(1.442695f * x); }
  float2 FastExp( float2 x) { return exp2(1.442695f * x); }
  float3 FastExp( float3 x) { return exp2(1.442695f * x); }
  float4 FastExp( float4 x) { return exp2(1.442695f * x); }
  float FastLog( float x) { return log2(0.693147f * x); }
  float2 FastLog( float2 x) { return log2(0.693147f * x); }
  float3 FastLog( float3 x) { return log2(0.693147f * x); }
  float4 FastLog( float4 x) { return log2(0.693147f * x); }
float InterleavedGradientNoise( float2 uv, float FrameId )
{
	uv += FrameId * (float2(47, 17) * 0.695f);
    const float3 magic = float3( 0.06711056f, 0.00583715f, 52.9829189f );
    return frac(magic.z * frac(dot(uv, magic.xy)));
}
float PseudoRandom(float2 xy)
{
	float2 pos = frac(xy / 128.0f) * 128.0f + float2(-64.340622f, -72.465622f);
	return frac(dot(pos.xyx * pos.xyy, float3(20.390625f, 60.703125f, 2.4281209f)));
}
float RandFast( uint2 PixelPos, float Magic = 3571.0 )
{
	float2 Random2 = ( 1.0 / 4320.0 ) * PixelPos + float2( 0.25, 0.0 );
	float Random = frac( dot( Random2 * Random2, Magic ) );
	Random = frac( Random * Random * (2 * Magic) );
	return Random;
}
float RandBBSfloat(float seed)
{
	float s = frac(seed / 4093);
	s = frac(s * s * 4093);
	s = frac(s * s * 4093);
	return s;
}
void FindBestAxisVectors(float3 In, out float3 Axis1, out float3 Axis2 )
{
	const float3 N = abs(In);
	if( N.z > N.x && N.z > N.y )
	{
		Axis1 = float3(1, 0, 0);
	}
	else
	{
		Axis1 = float3(0, 0, 1);
	}
	Axis1 = normalize(Axis1 - In * dot(Axis1, In));
	Axis2 = cross(Axis1, In);
}
uint2 ScrambleTEA(uint2 v, uint IterationCount = 3)
{
	uint k[4] ={ 0xA341316Cu , 0xC8013EA4u , 0xAD90777Du , 0x7E95761Eu };
	uint y = v[0];
	uint z = v[1];
	uint sum = 0;
	[unroll] for(uint i = 0; i < IterationCount; ++i)
	{
		sum += 0x9e3779b9;
		y += ((z << 4u) + k[0]) ^ (z + sum) ^ ((z >> 5u) + k[1]);
		z += ((y << 4u) + k[2]) ^ (y + sum) ^ ((y >> 5u) + k[3]);
	}
	return uint2(y, z);
}
float3 NoiseTileWrap(float3 v,  bool bTiling, float RepeatSize)
{
	return bTiling ? (frac(v / RepeatSize) * RepeatSize) : v;
}
float4 PerlinRamp(float4 t)
{
	return t * t * t * (t * (t * 6 - 15) + 10); 
}
float4 PerlinRampDerivative(float4 t)
{
	return t * t * (t * (t * 30 - 60) + 30);
}
float4 MGradient(int seed, float3 offset)
{
	uint rand = Rand3DPCG16(int3(seed,0,0)).x;
	float3 direction = float3(rand.xxx & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	return float4(direction, dot(direction, offset));
}
float3 NoiseSeeds(float3 v, bool bTiling, float RepeatSize,
	out float seed000, out float seed001, out float seed010, out float seed011,
	out float seed100, out float seed101, out float seed110, out float seed111)
{
	float3 fv = frac(v);
	float3 iv = floor(v);
	const float3 primes = float3(19, 47, 101);
	if (bTiling)
	{	
		seed000 = dot(primes, NoiseTileWrap(iv, true, RepeatSize));
		seed100 = dot(primes, NoiseTileWrap(iv + float3(1, 0, 0), true, RepeatSize));
		seed010 = dot(primes, NoiseTileWrap(iv + float3(0, 1, 0), true, RepeatSize));
		seed110 = dot(primes, NoiseTileWrap(iv + float3(1, 1, 0), true, RepeatSize));
		seed001 = dot(primes, NoiseTileWrap(iv + float3(0, 0, 1), true, RepeatSize));
		seed101 = dot(primes, NoiseTileWrap(iv + float3(1, 0, 1), true, RepeatSize));
		seed011 = dot(primes, NoiseTileWrap(iv + float3(0, 1, 1), true, RepeatSize));
		seed111 = dot(primes, NoiseTileWrap(iv + float3(1, 1, 1), true, RepeatSize));
	}
	else
	{	
		seed000 = dot(iv, primes);
		seed100 = seed000 + primes.x;
		seed010 = seed000 + primes.y;
		seed110 = seed100 + primes.y;
		seed001 = seed000 + primes.z;
		seed101 = seed100 + primes.z;
		seed011 = seed010 + primes.z;
		seed111 = seed110 + primes.z;
	}
	return fv;
}
float GradientNoise3D_ALU(float3 v, bool bTiling, float RepeatSize)
{
	float seed000, seed001, seed010, seed011, seed100, seed101, seed110, seed111;
	float3 fv = NoiseSeeds(v, bTiling, RepeatSize, seed000, seed001, seed010, seed011, seed100, seed101, seed110, seed111);
	float rand000 = MGradient(int(seed000), fv - float3(0, 0, 0)).w;
	float rand100 = MGradient(int(seed100), fv - float3(1, 0, 0)).w;
	float rand010 = MGradient(int(seed010), fv - float3(0, 1, 0)).w;
	float rand110 = MGradient(int(seed110), fv - float3(1, 1, 0)).w;
	float rand001 = MGradient(int(seed001), fv - float3(0, 0, 1)).w;
	float rand101 = MGradient(int(seed101), fv - float3(1, 0, 1)).w;
	float rand011 = MGradient(int(seed011), fv - float3(0, 1, 1)).w;
	float rand111 = MGradient(int(seed111), fv - float3(1, 1, 1)).w;
	float3 Weights = PerlinRamp(float4(fv, 0)).xyz;
	float i = lerp(lerp(rand000, rand100, Weights.x), lerp(rand010, rand110, Weights.x), Weights.y);
	float j = lerp(lerp(rand001, rand101, Weights.x), lerp(rand011, rand111, Weights.x), Weights.y);
	return lerp(i, j, Weights.z).x;
}
float4x3 SimplexCorners(float3 v)
{
	float3 tet = floor(v + v.x/3 + v.y/3 + v.z/3);
	float3 base = tet - tet.x/6 - tet.y/6 - tet.z/6;
	float3 f = v - base;
	float3 g = step(f.yzx, f.xyz), h = 1 - g.zxy;
	float3 a1 = min(g, h) - 1. / 6., a2 = max(g, h) - 1. / 3.;
	return float4x3(base, base + a1, base + a2, base + 0.5);
}
float4 SimplexSmooth(float4x3 f)
{
	const float scale = 1024. / 375.;	
	float4 d = float4(dot(f[0], f[0]), dot(f[1], f[1]), dot(f[2], f[2]), dot(f[3], f[3]));
	float4 s = saturate(2 * d);
	return (1 * scale + s*(-3 * scale + s*(3 * scale - s*scale)));
}
float3x4 SimplexDSmooth(float4x3 f)
{
	const float scale = 1024. / 375.;	
	float4 d = float4(dot(f[0], f[0]), dot(f[1], f[1]), dot(f[2], f[2]), dot(f[3], f[3]));
	float4 s = saturate(2 * d);
	s = -12 * scale + s*(24 * scale - s * 12 * scale);
	return float3x4(
		s * float4(f[0][0], f[1][0], f[2][0], f[3][0]),
		s * float4(f[0][1], f[1][1], f[2][1], f[3][1]),
		s * float4(f[0][2], f[1][2], f[2][2], f[3][2]));
}
float3x4 JacobianSimplex_ALU(float3 v, bool bTiling, float RepeatSize)
{
	float4x3 T = SimplexCorners(v);
	uint3 rand;
	float4x3 gvec[3], fv;
	float3x4 grad;
	fv[0] = v - T[0];
	rand = Rand3DPCG16(int3(floor(NoiseTileWrap(6 * T[0] + 0.5, bTiling, RepeatSize))));
	gvec[0][0] = float3(rand.xxx & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	gvec[1][0] = float3(rand.yyy & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	gvec[2][0] = float3(rand.zzz & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	grad[0][0] = dot(gvec[0][0], fv[0]);
	grad[1][0] = dot(gvec[1][0], fv[0]);
	grad[2][0] = dot(gvec[2][0], fv[0]);
	fv[1] = v - T[1];
	rand = Rand3DPCG16(int3(floor(NoiseTileWrap(6 * T[1] + 0.5, bTiling, RepeatSize))));
	gvec[0][1] = float3(rand.xxx & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	gvec[1][1] = float3(rand.yyy & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	gvec[2][1] = float3(rand.zzz & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	grad[0][1] = dot(gvec[0][1], fv[1]);
	grad[1][1] = dot(gvec[1][1], fv[1]);
	grad[2][1] = dot(gvec[2][1], fv[1]);
	fv[2] = v - T[2];
	rand = Rand3DPCG16(int3(floor(NoiseTileWrap(6 * T[2] + 0.5, bTiling, RepeatSize))));
	gvec[0][2] = float3(rand.xxx & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	gvec[1][2] = float3(rand.yyy & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	gvec[2][2] = float3(rand.zzz & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	grad[0][2] = dot(gvec[0][2], fv[2]);
	grad[1][2] = dot(gvec[1][2], fv[2]);
	grad[2][2] = dot(gvec[2][2], fv[2]);
	fv[3] = v - T[3];
	rand = Rand3DPCG16(int3(floor(NoiseTileWrap(6 * T[3] + 0.5, bTiling, RepeatSize))));
	gvec[0][3] = float3(rand.xxx & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	gvec[1][3] = float3(rand.yyy & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	gvec[2][3] = float3(rand.zzz & int3(0x8000, 0x4000, 0x2000)) * float3(1. / 0x4000, 1. / 0x2000, 1. / 0x1000) - 1;
	grad[0][3] = dot(gvec[0][3], fv[3]);
	grad[1][3] = dot(gvec[1][3], fv[3]);
	grad[2][3] = dot(gvec[2][3], fv[3]);
	float4 sv = SimplexSmooth(fv);
	float3x4 ds = SimplexDSmooth(fv);
	float3x4 jacobian;
	jacobian[0] = float4(mul(sv, gvec[0]) + mul(ds, grad[0]), dot(sv, grad[0]));
	jacobian[1] = float4(mul(sv, gvec[1]) + mul(ds, grad[1]), dot(sv, grad[1]));
	jacobian[2] = float4(mul(sv, gvec[2]) + mul(ds, grad[2]), dot(sv, grad[2]));
	return jacobian;
}
float ValueNoise3D_ALU(float3 v, bool bTiling, float RepeatSize)
{
	float seed000, seed001, seed010, seed011, seed100, seed101, seed110, seed111;
	float3 fv = NoiseSeeds(v, bTiling, RepeatSize, seed000, seed001, seed010, seed011, seed100, seed101, seed110, seed111);
	float rand000 = RandBBSfloat(seed000) * 2 - 1;
	float rand100 = RandBBSfloat(seed100) * 2 - 1;
	float rand010 = RandBBSfloat(seed010) * 2 - 1;
	float rand110 = RandBBSfloat(seed110) * 2 - 1;
	float rand001 = RandBBSfloat(seed001) * 2 - 1;
	float rand101 = RandBBSfloat(seed101) * 2 - 1;
	float rand011 = RandBBSfloat(seed011) * 2 - 1;
	float rand111 = RandBBSfloat(seed111) * 2 - 1;
	float3 Weights = PerlinRamp(float4(fv, 0)).xyz;
	float i = lerp(lerp(rand000, rand100, Weights.x), lerp(rand010, rand110, Weights.x), Weights.y);
	float j = lerp(lerp(rand001, rand101, Weights.x), lerp(rand011, rand111, Weights.x), Weights.y);
	return lerp(i, j, Weights.z).x;
}
float GradientNoise3D_TEX(float3 v, bool bTiling, float RepeatSize)
{
	bTiling = true;
	float3 fv = frac(v);
	float3 iv0 = NoiseTileWrap(floor(v), bTiling, RepeatSize);
	float3 iv1 = NoiseTileWrap(iv0 + 1, bTiling, RepeatSize);
	const int2 ZShear = int2(17, 89);
	float2 OffsetA = iv0.z * ZShear;
	float2 OffsetB = OffsetA + ZShear;	
	if (bTiling)						
	{
		OffsetB = iv1.z * ZShear;
	}
	float ts = 1 / 128.0f;
	float2 TexA0 = (iv0.xy + OffsetA + 0.5f) * ts;
	float2 TexB0 = (iv0.xy + OffsetB + 0.5f) * ts;
	float2 TexA1 = TexA0 + ts;	
	float2 TexB1 = TexB0 + ts;
	if (bTiling)				
	{
		TexA1 = (iv1.xy + OffsetA + 0.5f) * ts;
		TexB1 = (iv1.xy + OffsetB + 0.5f) * ts;
	}
	float3 A = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, float2(TexA0.x, TexA0.y), 0).xyz * 2 - 1;
	float3 B = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, float2(TexA1.x, TexA0.y), 0).xyz * 2 - 1;
	float3 C = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, float2(TexA0.x, TexA1.y), 0).xyz * 2 - 1;
	float3 D = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, float2(TexA1.x, TexA1.y), 0).xyz * 2 - 1;
	float3 E = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, float2(TexB0.x, TexB0.y), 0).xyz * 2 - 1;
	float3 F = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, float2(TexB1.x, TexB0.y), 0).xyz * 2 - 1;
	float3 G = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, float2(TexB0.x, TexB1.y), 0).xyz * 2 - 1;
	float3 H = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, float2(TexB1.x, TexB1.y), 0).xyz * 2 - 1;
	float a = dot(A, fv - float3(0, 0, 0));
	float b = dot(B, fv - float3(1, 0, 0));
	float c = dot(C, fv - float3(0, 1, 0));
	float d = dot(D, fv - float3(1, 1, 0));
	float e = dot(E, fv - float3(0, 0, 1));
	float f = dot(F, fv - float3(1, 0, 1));
	float g = dot(G, fv - float3(0, 1, 1));
	float h = dot(H, fv - float3(1, 1, 1));
	float3 Weights = PerlinRamp(frac(float4(fv, 0))).xyz;
	float i = lerp(lerp(a, b, Weights.x), lerp(c, d, Weights.x), Weights.y);
	float j = lerp(lerp(e, f, Weights.x), lerp(g, h, Weights.x), Weights.y);
	return lerp(i, j, Weights.z);
}
float FastGradientPerlinNoise3D_TEX(float3 xyz)
{
	float Extent = 16;
	xyz = frac(xyz / (Extent - 1)) * (Extent - 1);
	float3 uvw = frac(xyz);
	float3 p0 = xyz - uvw;
	float3 f = PerlinRamp(float4(uvw, 0)).xyz;	
	float3 p = p0 + f;
	float4 NoiseSample = Texture3DSampleLevel(View_PerlinNoise3DTexture, View_PerlinNoise3DTextureSampler, p / Extent + 0.5f / Extent, 0);		
	float3 n = NoiseSample.xyz * 255.0f / 127.0f - 1.0f;
	float d = NoiseSample.w * 255.f - 127;
	return dot(xyz, n) - d;
}
float3 VoronoiCornerSample(float3 pos, int Quality)
{
	float3 noise = float3(Rand3DPCG16(int3(pos))) / 0xffff - 0.5;
	if (Quality <= 2)
	{
		return normalize(noise) * 0.2588;
	}
	if (Quality == 3)
	{
		return normalize(noise) * 0.3090;
	}
	return noise;
}
float4 VoronoiCompare(float4 minval, float3 candidate, float3 offset, bool bDistanceOnly)
{
	if (bDistanceOnly)
	{
		return float4(0, 0, 0, min(minval.w, dot(offset, offset)));
	}
	else
	{
		float newdist = dot(offset, offset);
		return newdist > minval.w ? minval : float4(candidate, newdist);
	}
}
float4 VoronoiNoise3D_ALU(float3 v, int Quality, bool bTiling, float RepeatSize, bool bDistanceOnly)
{
	float3 fv = frac(v),  fv2 = frac(v + 0.5);
	float3 iv = floor(v), iv2 = floor(v + 0.5);
	float4 mindist = float4(0,0,0,100);
	float3 p, offset;
	if (Quality == 3)
	{
		 [unroll( 3 )] for (offset.x = -1; offset.x <= 1; ++offset.x)
		{
			 [unroll( 3 )] for (offset.y = -1; offset.y <= 1; ++offset.y)
			{
				 [unroll( 3 )] for (offset.z = -1; offset.z <= 1; ++offset.z)
				{
					p = offset + VoronoiCornerSample(NoiseTileWrap(iv2 + offset, bTiling, RepeatSize), Quality);
					mindist = VoronoiCompare(mindist, iv2 + p, fv2 - p, bDistanceOnly);
				}
			}
		}
	}
	else
	{
		 [unroll( 2 )] for (offset.x = 0; offset.x <= 1; ++offset.x)
		{
			 [unroll( 2 )] for (offset.y = 0; offset.y <= 1; ++offset.y)
			{
				 [unroll( 2 )] for (offset.z = 0; offset.z <= 1; ++offset.z)
				{
					p = offset + VoronoiCornerSample(NoiseTileWrap(iv + offset, bTiling, RepeatSize), Quality);
					mindist = VoronoiCompare(mindist, iv + p, fv - p, bDistanceOnly);
					if (Quality == 2)
					{
						p = offset + VoronoiCornerSample(NoiseTileWrap(iv2 + offset, bTiling, RepeatSize) + 467, Quality);
						mindist = VoronoiCompare(mindist, iv2 + p, fv2 - p, bDistanceOnly);
					}
				}
			}
		}
	}
	if (Quality >= 4)
	{
		 [unroll( 2 )] for (offset.x = -1; offset.x <= 2; offset.x += 3)
		{
			 [unroll( 2 )] for (offset.y = 0; offset.y <= 1; ++offset.y)
			{
				 [unroll( 2 )] for (offset.z = 0; offset.z <= 1; ++offset.z)
				{
					p = offset.xyz + VoronoiCornerSample(NoiseTileWrap(iv + offset.xyz, bTiling, RepeatSize), Quality);
					mindist = VoronoiCompare(mindist, iv + p, fv - p, bDistanceOnly);
					p = offset.yzx + VoronoiCornerSample(NoiseTileWrap(iv + offset.yzx, bTiling, RepeatSize), Quality);
					mindist = VoronoiCompare(mindist, iv + p, fv - p, bDistanceOnly);
					p = offset.zxy + VoronoiCornerSample(NoiseTileWrap(iv + offset.zxy, bTiling, RepeatSize), Quality);
					mindist = VoronoiCompare(mindist, iv + p, fv - p, bDistanceOnly);
				}
			}
		}
	}
	return float4(mindist.xyz, sqrt(mindist.w));
}
float3 ComputeSimplexWeights2D(float2 OrthogonalPos, out float2 PosA, out float2 PosB, out float2 PosC)
{
	float2 OrthogonalPosFloor = floor(OrthogonalPos); 
	PosA = OrthogonalPosFloor;
	PosB = PosA + float2(1, 1); 
	float2 LocalPos = OrthogonalPos - OrthogonalPosFloor;
	PosC = PosA + ((LocalPos.x > LocalPos.y) ? float2(1,0) : float2(0,1));
	float b = min(LocalPos.x, LocalPos.y);
	float c = abs(LocalPos.y - LocalPos.x);
	float a = 1.0f - b - c;
	return float3(a, b, c);
}
float4 ComputeSimplexWeights3D(float3 OrthogonalPos, out float3 PosA, out float3 PosB, out float3 PosC, out float3 PosD)
{
	float3 OrthogonalPosFloor = floor(OrthogonalPos);
	PosA = OrthogonalPosFloor;
	PosB = PosA + float3(1, 1, 1);
	OrthogonalPos -= OrthogonalPosFloor;
	float Largest = max(OrthogonalPos.x, max(OrthogonalPos.y, OrthogonalPos.z));
	float Smallest = min(OrthogonalPos.x, min(OrthogonalPos.y, OrthogonalPos.z));
	PosC = PosA + float3(Largest == OrthogonalPos.x, Largest == OrthogonalPos.y, Largest == OrthogonalPos.z);
	PosD = PosA + float3(Smallest != OrthogonalPos.x, Smallest != OrthogonalPos.y, Smallest != OrthogonalPos.z);
	float4 ret;
	float RG = OrthogonalPos.x - OrthogonalPos.y;
	float RB = OrthogonalPos.x - OrthogonalPos.z;
	float GB = OrthogonalPos.y - OrthogonalPos.z;
	ret.b = 
		  min(max(0, RG), max(0, RB))		
		+ min(max(0, -RG), max(0, GB))		
		+ min(max(0, -RB), max(0, -GB));	
	ret.a = 
		  min(max(0, -RG), max(0, -RB))		
		+ min(max(0, RG), max(0, -GB))		
		+ min(max(0, RB), max(0, GB));		
	ret.g = Smallest;
	ret.r = 1.0f - ret.g - ret.b - ret.a;
	return ret;
}
float2 GetPerlinNoiseGradientTextureAt(float2 v)
{
	float2 TexA = (v.xy + 0.5f) / 128.0f;
	float3 p = Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, TexA, 0).xyz * 2 - 1;
	return normalize(p.xy + p.z * 0.33f);
}
float3 GetPerlinNoiseGradientTextureAt(float3 v)
{
	const float2 ZShear = float2(17.0f, 89.0f);
	float2 OffsetA = v.z * ZShear;
	float2 TexA = (v.xy + OffsetA + 0.5f) / 128.0f;
	return Texture2DSampleLevel(View_PerlinNoiseGradientTexture, View_PerlinNoiseGradientTextureSampler, TexA , 0).xyz * 2 - 1;
}
float2 SkewSimplex(float2 In)
{
	return In + dot(In, (sqrt(3.0f) - 1.0f) * 0.5f );
}
float2 UnSkewSimplex(float2 In)
{
	return In - dot(In, (3.0f - sqrt(3.0f)) / 6.0f );
}
float3 SkewSimplex(float3 In)
{
	return In + dot(In, 1.0 / 3.0f );
}
float3 UnSkewSimplex(float3 In)
{
	return In - dot(In, 1.0 / 6.0f );
}
float GradientSimplexNoise2D_TEX(float2 EvalPos)
{
	float2 OrthogonalPos = SkewSimplex(EvalPos);
	float2 PosA, PosB, PosC, PosD;
	float3 Weights = ComputeSimplexWeights2D(OrthogonalPos, PosA, PosB, PosC);
	float2 A = GetPerlinNoiseGradientTextureAt(PosA);
	float2 B = GetPerlinNoiseGradientTextureAt(PosB);
	float2 C = GetPerlinNoiseGradientTextureAt(PosC);
	PosA = UnSkewSimplex(PosA);
	PosB = UnSkewSimplex(PosB);
	PosC = UnSkewSimplex(PosC);
	float DistanceWeight;
	DistanceWeight = saturate(0.5f - length2(EvalPos - PosA));	DistanceWeight *= DistanceWeight; DistanceWeight *= DistanceWeight;
	float a = dot(A, EvalPos - PosA) * DistanceWeight;
	DistanceWeight = saturate(0.5f - length2(EvalPos - PosB));	DistanceWeight *= DistanceWeight; DistanceWeight *= DistanceWeight;
	float b = dot(B, EvalPos - PosB) * DistanceWeight;
	DistanceWeight = saturate(0.5f - length2(EvalPos - PosC));	DistanceWeight *= DistanceWeight; DistanceWeight *= DistanceWeight;
	float c = dot(C, EvalPos - PosC) * DistanceWeight;
	return 70 * (a + b + c);
}
float SimplexNoise3D_TEX(float3 EvalPos)
{
	float3 OrthogonalPos = SkewSimplex(EvalPos);
	float3 PosA, PosB, PosC, PosD;
	float4 Weights = ComputeSimplexWeights3D(OrthogonalPos, PosA, PosB, PosC, PosD);
	float3 A = GetPerlinNoiseGradientTextureAt(PosA);
	float3 B = GetPerlinNoiseGradientTextureAt(PosB);
	float3 C = GetPerlinNoiseGradientTextureAt(PosC);
	float3 D = GetPerlinNoiseGradientTextureAt(PosD);
	PosA = UnSkewSimplex(PosA);
	PosB = UnSkewSimplex(PosB);
	PosC = UnSkewSimplex(PosC);
	PosD = UnSkewSimplex(PosD);
	float DistanceWeight;
	DistanceWeight = saturate(0.6f - length2(EvalPos - PosA));	DistanceWeight *= DistanceWeight; DistanceWeight *= DistanceWeight;
	float a = dot(A, EvalPos - PosA) * DistanceWeight;
	DistanceWeight = saturate(0.6f - length2(EvalPos - PosB));	DistanceWeight *= DistanceWeight; DistanceWeight *= DistanceWeight;
	float b = dot(B, EvalPos - PosB) * DistanceWeight;
	DistanceWeight = saturate(0.6f - length2(EvalPos - PosC));	DistanceWeight *= DistanceWeight; DistanceWeight *= DistanceWeight;
	float c = dot(C, EvalPos - PosC) * DistanceWeight;
	DistanceWeight = saturate(0.6f - length2(EvalPos - PosD));	DistanceWeight *= DistanceWeight; DistanceWeight *= DistanceWeight;
	float d = dot(D, EvalPos - PosD) * DistanceWeight;
	return 32 * (a + b + c + d);
}
float VolumeRaymarch(float3 posPixelWS, float3 posCameraWS)
{
	float ret = 0;
	int cnt = 60;
	[loop] for(int i=0; i < cnt; ++i)
	{
		ret += saturate(FastGradientPerlinNoise3D_TEX(lerp(posPixelWS, posCameraWS, i/(float)cnt) * 0.01) - 0.2f);
	}
	return ret / cnt * (length(posPixelWS - posCameraWS) * 0.001f );
}
float PhongShadingPow(float X, float Y)
{
	return ClampedPow(X, Y);
}
Texture2D		LightAttenuationTexture;
SamplerState	LightAttenuationTextureSampler;
float ConvertTangentUnormToSnorm8(float Input)
{
	int IntVal = int(round(Input * 255.0f));
	IntVal =  select_internal( IntVal > 127 , IntVal | 0xFFFFFF80 , IntVal );
	return clamp(IntVal / 127.0f, -1, 1);
}
float2 ConvertTangentUnormToSnorm8(float2 Input)
{
	int2 IntVal = int2(round(Input * 255.0f));
	IntVal =  select_internal( IntVal > 127 , IntVal | 0xFFFFFF80 , IntVal );
	return clamp(IntVal / 127.0f, -1, 1);
}
float3 ConvertTangentUnormToSnorm8(float3 Input)
{
	int3 IntVal = int3(round(Input * 255.0f));
	IntVal =  select_internal( IntVal > 127 , IntVal | 0xFFFFFF80 , IntVal );
	return clamp(IntVal / 127.0f, -1, 1);
}
float4 ConvertTangentUnormToSnorm8(float4 Input)
{
	int4 IntVal = int4(round(Input * 255.0f));
	IntVal =  select_internal( IntVal > 127 , IntVal | 0xFFFFFF80 , IntVal );
	return clamp(IntVal / 127.0f, -1, 1);
}
float ConvertTangentUnormToSnorm16(float Input)
{
	int IntVal = int(round(Input * 65535.0f));
	IntVal =  select_internal( IntVal > 32767 , IntVal | 0xFFFF8000 , IntVal );
	return clamp(IntVal / 32767.0f, -1, 1);
}
float2 ConvertTangentUnormToSnorm16(float2 Input)
{
	int2 IntVal = int2(round(Input * 65535.0f));
	IntVal =  select_internal( IntVal > 32767 , IntVal | 0xFFFFFF80 , IntVal );
	return clamp(IntVal / 32767.0f, -1, 1);
}
float3 ConvertTangentUnormToSnorm16(float3 Input)
{
	int3 IntVal = int3(round(Input * 65535.0f));
	IntVal =  select_internal( IntVal > 32767 , IntVal | 0xFFFFFF80 , IntVal );
	return clamp(IntVal / 32767.0f, -1, 1);
}
float4 ConvertTangentUnormToSnorm16(float4 Input)
{
	int4 IntVal = int4(round(Input * 65535.0f));
	IntVal =  select_internal( IntVal > 32767 , IntVal | 0xFFFFFF80 , IntVal );
	return clamp(IntVal / 32767.0f, -1, 1);
}
float ConvertTangentSnormToUnorm8(float Input)
{
	float Res =  select_internal( Input >= 0.0f , Input * 127 , ((Input + 1.0) * 127) + 128 );
	return clamp(Res / 255, 0.0f, 0.99f);
}
float2 ConvertTangentSnormToUnorm8(float2 Input)
{
	float2 Res =  select_internal( Input >= 0.0f , Input * 127 , ((Input + 1.0) * 127) + 128 );
	return clamp(Res / 255, 0.0f, 0.99f);
}
float3 ConvertTangentSnormToUnorm8(float3 Input)
{
	float3 Res =  select_internal( Input >= 0.0f , Input * 127 , ((Input + 1.0) * 127) + 128 );
	return clamp(Res / 255, 0.0f, 0.99f);
}
float4 ConvertTangentSnormToUnorm8(float4 Input)
{
	float4 Res =  select_internal( Input >= 0.0f , Input * 127 , ((Input + 1.0) * 127) + 128 );
	return clamp(Res / 255, 0.0f, 0.99f);
}
float ConvertTangentSnormToUnorm16(float Input)
{
	float Res =  select_internal( Input >= 0.0f , Input * 32767 , ((Input + 1.0) * 32767) + 32768 );
	return clamp(Res / 65535, 0.0f, 0.99f);
}
float2 ConvertTangentSnormToUnorm16(float2 Input)
{
	float2 Res =  select_internal( Input >= 0.0f , Input * 32767 , ((Input + 1.0) * 32767) + 32768 );
	return clamp(Res / 65535, 0.0f, 0.99f);
}
float3 ConvertTangentSnormToUnorm16(float3 Input)
{
	float3 Res =  select_internal( Input >= 0.0f , Input * 32767 , ((Input + 1.0) * 32767) + 32768 );
	return clamp(Res / 65535, 0.0f, 0.99f);
}
float4 ConvertTangentSnormToUnorm16(float4 Input)
{
	float4 Res =  select_internal( Input >= 0.0f , Input * 32767 , ((Input + 1.0) * 32767) + 32768 );
	return clamp(Res / 65535, 0.0f, 0.99f);
}
float Square( float x )
{
	return x*x;
}
float2 Square( float2 x )
{
	return x*x;
}
float3 Square( float3 x )
{
	return x*x;
}
float4 Square( float4 x )
{
	return x*x;
}
float Pow2( float x )
{
	return x*x;
}
float2 Pow2( float2 x )
{
	return x*x;
}
float3 Pow2( float3 x )
{
	return x*x;
}
float4 Pow2( float4 x )
{
	return x*x;
}
float Pow3( float x )
{
	return x*x*x;
}
float2 Pow3( float2 x )
{
	return x*x*x;
}
float3 Pow3( float3 x )
{
	return x*x*x;
}
float4 Pow3( float4 x )
{
	return x*x*x;
}
float Pow4( float x )
{
	float xx = x*x;
	return xx * xx;
}
float2 Pow4( float2 x )
{
	float2 xx = x*x;
	return xx * xx;
}
float3 Pow4( float3 x )
{
	float3 xx = x*x;
	return xx * xx;
}
float4 Pow4( float4 x )
{
	float4 xx = x*x;
	return xx * xx;
}
float Pow5( float x )
{
	float xx = x*x;
	return xx * xx * x;
}
float2 Pow5( float2 x )
{
	float2 xx = x*x;
	return xx * xx * x;
}
float3 Pow5( float3 x )
{
	float3 xx = x*x;
	return xx * xx * x;
}
float4 Pow5( float4 x )
{
	float4 xx = x*x;
	return xx * xx * x;
}
float Pow6( float x )
{
	float xx = x*x;
	return xx * xx * xx;
}
float2 Pow6( float2 x )
{
	float2 xx = x*x;
	return xx * xx * xx;
}
float3 Pow6( float3 x )
{
	float3 xx = x*x;
	return xx * xx * xx;
}
float4 Pow6( float4 x )
{
	float4 xx = x*x;
	return xx * xx * xx;
}
float AtanFast( float x )
{
	float3 A = x < 1 ? float3( x, 0, 1 ) : float3( 1/x, 0.5 * PI, -1 );
	return A.y + A.z * ( ( ( -0.130234 * A.x - 0.0954105 ) * A.x + 1.00712 ) * A.x - 0.00001203333 );
}
float EncodeLightAttenuation(float InColor)
{
	return sqrt(InColor);
}
float4 EncodeLightAttenuation(float4 InColor)
{
	return sqrt(InColor);
}
float DecodeLightAttenuation(float InColor)
{
	return Square(InColor);
}
float4 DecodeLightAttenuation(float4 InColor)
{
	return Square(InColor);
}
float4 RGBTEncode(float3 Color)
{
	float4 RGBT;
	float Max = max(max(Color.r, Color.g), max(Color.b, 1e-6));
	float RcpMax = rcp(Max);
	RGBT.rgb = Color.rgb * RcpMax;
	RGBT.a = Max * rcp(1.0 + Max);
	return RGBT;
}
float3 RGBTDecode(float4 RGBT)
{
	RGBT.a = RGBT.a * rcp(1.0 - RGBT.a);
	return RGBT.rgb * RGBT.a;
}
float4 RGBMEncode( float3 Color )
{
	Color *= 1.0 / 64.0;
	float4 rgbm;
	rgbm.a = saturate( max( max( Color.r, Color.g ), max( Color.b, 1e-6 ) ) );
	rgbm.a = ceil( rgbm.a * 255.0 ) / 255.0;
	rgbm.rgb = Color / rgbm.a;
	return rgbm;
}
float4 RGBMEncodeFast( float3 Color )
{
	float4 rgbm;
	rgbm.a = dot( Color, 255.0 / 64.0 );
	rgbm.a = ceil( rgbm.a );
	rgbm.rgb = Color / rgbm.a;
	rgbm *= float4( 255.0 / 64.0, 255.0 / 64.0, 255.0 / 64.0, 1.0 / 255.0 );
	return rgbm;
}
float3 RGBMDecode( float4 rgbm, float MaxValue )
{
	return rgbm.rgb * (rgbm.a * MaxValue);
}
float3 RGBMDecode( float4 rgbm )
{
	return rgbm.rgb * (rgbm.a * 64.0f);
}
float4 RGBTEncode8BPC(float3 Color, float Range)
{
	float Max = max(max(Color.r, Color.g), max(Color.b, 1e-6));
	Max = min(Max, Range);
	float4 RGBT;
	RGBT.a = (Range + 1) / Range *  Max / (1 + Max);
	RGBT.a = ceil(RGBT.a*255.0) / 255.0;
	Max = RGBT.a / (1 + 1 / Range - RGBT.a);
	float RcpMax = rcp(Max);
	RGBT.rgb = Color.rgb * RcpMax;
	return RGBT;
}
float3 RGBTDecode8BPC(float4 RGBT, float Range)
{
	RGBT.a = RGBT.a / (1 + 1 / Range - RGBT.a);
	return RGBT.rgb * RGBT.a;
}
float2 CalcScreenUVFromOffsetFraction(float4 ScreenPosition, float2 OffsetFraction)
{
	float2 NDC = ScreenPosition.xy / ScreenPosition.w;
	float2 OffsetNDC = clamp(NDC + OffsetFraction * float2(2, -2), -.999f, .999f);
	return float2(OffsetNDC * ResolvedView.ScreenPositionScaleBias.xy + ResolvedView.ScreenPositionScaleBias.wz);
}
float4 GetPerPixelLightAttenuation(float2 UV)
{
	return DecodeLightAttenuation(Texture2DSampleLevel(LightAttenuationTexture, LightAttenuationTextureSampler, UV, 0));
}
bool IsOrthoProjection(float4x4 ViewToClip)
{
	return ViewToClip._44 >= 1.0f;
}
bool IsOrthoProjection(ViewState InView)
{
	return IsOrthoProjection(InView.ViewToClip);
}
bool IsOrthoProjection()
{
	return IsOrthoProjection(View_ViewToClip);
}
float IsOrthoProjectionFloat()
{
	return  select_internal( IsOrthoProjection() , 1.0f , 0.0f );
}
float ConvertToDeviceZ(float SceneDepth)
{
	[flatten]
	if (IsOrthoProjection())
	{
		return SceneDepth * View_ViewToClip[2][2] + View_ViewToClip[3][2];
	}
	else
	{
		return 1.0f / ((SceneDepth + View_InvDeviceZToWorldZTransform[3]) * View_InvDeviceZToWorldZTransform[2]);
	}
}
float ConvertFromDeviceZ(float DeviceZ)
{
	return DeviceZ * View_InvDeviceZToWorldZTransform[0] + View_InvDeviceZToWorldZTransform[1] + 1.0f / (DeviceZ * View_InvDeviceZToWorldZTransform[2] - View_InvDeviceZToWorldZTransform[3]);
}
float2 AdjustClipToPrevClipForProjectionType(float2 Velocity, float DeviceZ)
{
	if(IsOrthoProjection())
	{
		Velocity *= DeviceZ;
	}
	return Velocity;
}
float GetScreenPositionDepth(float4 ScreenPosition)
{
	return  select_internal( IsOrthoProjection(ResolvedView) , ConvertFromDeviceZ(ScreenPosition.z) , ScreenPosition.w );
}
float3 GetCameraVector(ViewState InView, float3 Position, float3 CameraPosition)
{
	return  select_internal( IsOrthoProjection(InView) , InView.ViewForward , normalize(Position - CameraPosition) );
}
float3 GetCameraVector(float3 Position, float3 CameraPosition)
{
	return GetCameraVector(GetPrimaryView(), Position, CameraPosition);
}
float3 GetCameraVectorFromWorldPosition(float3 WorldPosition)
{
	return GetCameraVector(WorldPosition, DFDemote(GetPrimaryView().WorldCameraOrigin));
}
float3 GetCameraVectorFromTranslatedWorldPosition(ViewState InView, float3 TranslatedWorldPosition)
{
	return GetCameraVector(TranslatedWorldPosition, InView.TranslatedWorldCameraOrigin);
}
float3 GetCameraVectorFromTranslatedWorldPosition(float3 TranslatedWorldPosition)
{
	return GetCameraVectorFromTranslatedWorldPosition(GetPrimaryView(), TranslatedWorldPosition);
}
float GetDistanceToCameraFromViewVector(float3 DistanceVector)
{
	float DistanceToCamera = length(DistanceVector);
	if (IsOrthoProjection())
	{
		DistanceToCamera *= DistanceToCamera / dot(DistanceVector, View_ViewForward);
	}
	return DistanceToCamera;
}
float GetDistanceToCameraFromViewVectorSqr(float3 DistanceVector)
{
	if(IsOrthoProjection())
	{
		float Distance = GetDistanceToCameraFromViewVector(DistanceVector);
		return Distance * Distance;
	}
	return dot(DistanceVector, DistanceVector);
}
float2 ScreenPositionToBufferUV(float4 ScreenPosition)
{
	return float2(ScreenPosition.xy / ScreenPosition.w * ResolvedView.ScreenPositionScaleBias.xy + ResolvedView.ScreenPositionScaleBias.wz);
}
float3 ScreenVectorFromScreenRect(float4 Position)
{
	return  select_internal( IsOrthoProjection() , View_ViewForward , mul(Position,View_ScreenToTranslatedWorld).xyz );
}
float2 GetScreenPositionForProjectionType(float2 ScreenPosition, float SceneDepth)
{
	return  select_internal( IsOrthoProjection() , ScreenPosition , ScreenPosition * SceneDepth );
}
float ConvertGivenDepthRadiusForProjectionType(float Radius, float SceneDepth, bool bForceOrthoView = false)
{
	return  select_internal( IsOrthoProjection() || bForceOrthoView , Radius , Radius * SceneDepth );
}
float GetDepthPixelRadiusForProjectionType(float SceneDepth)
{
	return View_WorldDepthToPixelWorldRadius.x * SceneDepth + View_WorldDepthToPixelWorldRadius.y;
}
float2 GetScreenRayLengthMultiplierForProjectionType(float SceneDepth)
{
	return View_ScreenRayLengthMultiplier.xy * SceneDepth + View_ScreenRayLengthMultiplier.zw;
}
float2 SvPositionToBufferUV(float4 SvPosition)
{
	return SvPosition.xy * View_BufferSizeAndInvSize.zw;
}
float3 SvPositionToTranslatedWorld(float4 SvPosition)
{
	float4 HomWorldPos = mul(float4(SvPosition.xyz, 1), View_SVPositionToTranslatedWorld);
	return HomWorldPos.xyz / HomWorldPos.w;
}
float3 SvPositionToResolvedTranslatedWorld(float4 SvPosition)
{
	float4 HomWorldPos = mul(float4(SvPosition.xyz, 1), ResolvedView.SVPositionToTranslatedWorld);
	return HomWorldPos.xyz / HomWorldPos.w;
}
FDFVector3 SvPositionToWorld(float4 SvPosition)
{
	float3 TranslatedWorldPosition = SvPositionToTranslatedWorld(SvPosition);
	return DFFastSubtract(TranslatedWorldPosition, GetPrimaryView().PreViewTranslation);
}
float4 SvPositionToScreenPosition(float4 SvPosition)
{
	float2 PixelPos = SvPosition.xy - View_ViewRectMin.xy;	
	float3 NDCPos = float3( (PixelPos * View_ViewSizeAndInvSize.zw - 0.5f) * float2(2, -2), SvPosition.z);
	return float4(NDCPos.xyz, 1) * SvPosition.w;
}
float4 SvPositionToResolvedScreenPosition(float4 SvPosition)
{
	float2 PixelPos = SvPosition.xy - ResolvedView.ViewRectMin.xy;	
	float3 NDCPos = float3( (PixelPos * ResolvedView.ViewSizeAndInvSize.zw - 0.5f) * float2(2, -2), SvPosition.z);
	return float4(NDCPos.xyz, 1) * SvPosition.w;
}
void SvPositionToResolvedScreenPositionDeriv(float4 SvPosition, float2 PPZ_DDX_DDY, float2 W_DDX_DDY, inout float4 ScreenPosition, inout float4 ScreenPositionDDX, inout float4 ScreenPositionDDY)
{
	float2 PixelPos = SvPosition.xy - ResolvedView.ViewRectMin.xy;
	float4 NDCPos = float4((PixelPos * ResolvedView.ViewSizeAndInvSize.zw - 0.5f) * float2(2, -2), SvPosition.z, 1.0f);
	float4 NDCPosDDX = float4(ResolvedView.ViewSizeAndInvSize.z * 2.0f, 0.0f, PPZ_DDX_DDY.x, 0.0f);
	float4 NDCPosDDY = float4(ResolvedView.ViewSizeAndInvSize.w * 2.0f, 0.0f, PPZ_DDX_DDY.y, 0.0f);
	ScreenPosition = NDCPos * SvPosition.w;
	ScreenPositionDDX = NDCPos * W_DDX_DDY.x + NDCPosDDX * SvPosition.w;
	ScreenPositionDDY = NDCPos * W_DDX_DDY.y + NDCPosDDY * SvPosition.w;
}
float3 GetTranslatedWorldCameraPosFromView(ViewState InView, float2 SvPosition, bool bForceAddOrthoHeight = false)
{
	if (IsOrthoProjection(InView))
	{
		float3 CameraPosition = SvPositionToTranslatedWorld(float4(SvPosition, 1.0f, 1.0f));
		CameraPosition.z +=  select_internal( bForceAddOrthoHeight , View_ClipToView[1][1] , 0.0f );
		return CameraPosition;
	}
	else
	{
		return InView.TranslatedWorldCameraOrigin;
	}
}
FDFVector3 GetWorldCameraPosFromView(ViewState InView, float2 SvPosition, bool bForceAddOrthoHeight = false)
{
	if(IsOrthoProjection(InView))
	{
		FDFVector3 CameraPosition = SvPositionToWorld(float4(SvPosition, 1.0f, 1.0f));
		CameraPosition = DFFastAdd( select_internal( bForceAddOrthoHeight , float3(0.0f, 0.0f, View_ClipToView[1][1]) , float3(0.0f,0.0f,0.0f) ), CameraPosition);
		return CameraPosition;
	}
	else
	{
		return InView.WorldCameraOrigin;
	}
}
float3 GetTranslatedWorldCameraPosFromView(float2 SvPosition, bool bForceAddOrthoHeight = false)
{
	return GetTranslatedWorldCameraPosFromView(GetPrimaryView(), SvPosition, bForceAddOrthoHeight);
}
float2 SvPositionToViewportUV(float4 SvPosition)
{
	float2 PixelPos = SvPosition.xy - ResolvedView.ViewRectMin.xy;	
	return PixelPos.xy * ResolvedView.ViewSizeAndInvSize.zw;
}
float2 BufferUVToViewportUV(float2 BufferUV)
{
	float2 PixelPos = BufferUV.xy * View_BufferSizeAndInvSize.xy - View_ViewRectMin.xy;
	return PixelPos.xy * View_ViewSizeAndInvSize.zw;
}
float2 ViewportUVToBufferUV(float2 ViewportUV)
{
	float2 PixelPos = ViewportUV * View_ViewSizeAndInvSize.xy;
	return (PixelPos + View_ViewRectMin.xy) * View_BufferSizeAndInvSize.zw;
}
float2 ViewportUVToScreenPos(float2 ViewportUV)
{
	return float2(2 * ViewportUV.x - 1, 1 - 2 * ViewportUV.y);
}
float2 ScreenPosToViewportUV(float2 ScreenPos)
{
	return float2(0.5 + 0.5 * ScreenPos.x, 0.5 - 0.5 * ScreenPos.y);
}
float3 ScreenToViewPos(float2 ViewportUV, float SceneDepth)
{
	float2 ProjViewPos;
	ProjViewPos.x =  ViewportUV.x * View_ScreenToViewSpace.x  + View_ScreenToViewSpace.z;
	ProjViewPos.y =  ViewportUV.y * View_ScreenToViewSpace.y  + View_ScreenToViewSpace.w;
	return float3(GetScreenPositionForProjectionType(ProjViewPos, SceneDepth), SceneDepth);
}
float2 ScreenAlignedPosition( float4 ScreenPosition )
{
	return float2(ScreenPositionToBufferUV(ScreenPosition));
}
float2 ScreenAlignedUV( float2 UV )
{
	return (UV*float2(2,-2) + float2(-1,1))*View_ScreenPositionScaleBias.xy + View_ScreenPositionScaleBias.wz;
}
float2 GetViewportCoordinates(float2 InFragmentCoordinates)
{
	return InFragmentCoordinates;
}
float4 UnpackNormalMap( float4 TextureSample )
{
		float2 NormalXY = TextureSample.rg;
	NormalXY = NormalXY * float2(2.0f,2.0f) - float2(1.0f,1.0f);
	float NormalZ = sqrt( saturate( 1.0f - dot( NormalXY, NormalXY ) ) );
	return float4( NormalXY.xy, NormalZ, 1.0f );
}
float AntialiasedTextureMask( Texture2D Tex, SamplerState Sampler, float2 UV, float ThresholdConst, int Channel )
{
	float4 MaskConst = float4(Channel == 0, Channel == 1, Channel == 2, Channel == 3);
	const float WidthConst = 1.0f;			
	float InvWidthConst = 1 / WidthConst;
	float Result;
	{
		float Sample1 = dot(MaskConst, Texture2DSample(Tex, Sampler, UV));
		float2 TexDD = float2(DDX(Sample1), DDY(Sample1));
		float TexDDLength = max(abs(TexDD.x), abs(TexDD.y)); 
		float Top = InvWidthConst * (Sample1 - ThresholdConst);
		Result = Top / TexDDLength + ThresholdConst;
	}
	Result = saturate(Result);	
	return Result;
}
float Noise3D_Multiplexer(int Function, float3 Position, int Quality, bool bTiling, float RepeatSize)
{
	switch(Function)
	{
		case 0:
			return SimplexNoise3D_TEX(Position);
		case 1:
			return GradientNoise3D_TEX(Position, bTiling, RepeatSize);
		case 2:
			return FastGradientPerlinNoise3D_TEX(Position);
		case 3:
			return GradientNoise3D_ALU(Position, bTiling, RepeatSize);
		case 4:
			return ValueNoise3D_ALU(Position, bTiling, RepeatSize);
		default:
			return VoronoiNoise3D_ALU(Position, Quality, bTiling, RepeatSize, true).w * 2. - 1.;
	}
	return 0;
}
float MaterialExpressionNoise(float3 Position, float Scale, int Quality, int Function, bool bTurbulence, uint Levels, float OutputMin, float OutputMax, float LevelScale, float FilterWidth, bool bTiling, float RepeatSize)
{
	Position *= Scale;
	FilterWidth *= Scale;
	float Out = 0.0f;
	float OutScale = 1.0f;
	float InvLevelScale = 1.0f / LevelScale;
	[loop] for(uint i = 0; i < Levels; ++i)
	{
		OutScale *= saturate(1.0 - FilterWidth);
		if(bTurbulence)
		{
			Out += abs(Noise3D_Multiplexer(Function, Position, Quality, bTiling, RepeatSize)) * OutScale;
		}
		else
		{
			Out += Noise3D_Multiplexer(Function, Position, Quality, bTiling, RepeatSize) * OutScale;
		}
		Position *= LevelScale;
		RepeatSize *= LevelScale;
		OutScale *= InvLevelScale;
		FilterWidth *= LevelScale;
	}
	if(!bTurbulence)
	{
		Out = Out * 0.5f + 0.5f;
	}
	return lerp(OutputMin, OutputMax, Out);
}
float MaterialExpressionNoise(FDFVector3 LWCPosition, float Scale, int Quality, int Function, bool bTurbulence, uint Levels, float OutputMin, float OutputMax, float LevelScale, float FilterWidth, bool bTiling, float RepeatSize)
{
	const float TileSize = 65536;
	float3 Position = abs(TileSize * DFFracDemote(DFDivideByPow2(LWCPosition, TileSize))); 
	return MaterialExpressionNoise(Position, Scale, Quality, Function, bTurbulence, Levels, OutputMin, OutputMax, LevelScale, FilterWidth, bTiling, RepeatSize);
}
float MaterialExpressionNoise(FLWCVector3 LWCPosition, float Scale, int Quality, int Function, bool bTurbulence, uint Levels, float OutputMin, float OutputMax, float LevelScale, float FilterWidth, bool bTiling, float RepeatSize)
{
	float3 Position = LWCNormalizeTile(LWCPosition).Offset;
	return MaterialExpressionNoise(Position, Scale, Quality, Function, bTurbulence, Levels, OutputMin, OutputMax, LevelScale, FilterWidth, bTiling, RepeatSize);
}
float4 MaterialExpressionVectorNoise(float3 Position, int Quality, int Function, bool bTiling, float TileSize)
{
	float4 result = float4(0,0,0,1);
	float3x4 Jacobian = JacobianSimplex_ALU(Position, bTiling, TileSize);	
	switch (Function)
	{
	case 0:	
		result.xyz = float3(Rand3DPCG16(int3(floor(NoiseTileWrap(Position, bTiling, TileSize))))) / 0xffff;
		break;
	case 1: 
		result.xyz = float3(Jacobian[0].w, Jacobian[1].w, Jacobian[2].w);
		break;
	case 2: 
		result = Jacobian[0];
		break;
	case 3: 
		result.xyz = float3(Jacobian[2][1] - Jacobian[1][2], Jacobian[0][2] - Jacobian[2][0], Jacobian[1][0] - Jacobian[0][1]);
		break;
	default: 
		result = VoronoiNoise3D_ALU(Position, Quality, bTiling, TileSize, false);
		break;
	}
	return result;
}
float2 LineBoxIntersect(float3 RayOrigin, float3 RayEnd, float3 BoxMin, float3 BoxMax)
{
	float3 InvRayDir = 1.0f / (RayEnd - RayOrigin);
	float3 FirstPlaneIntersections = (BoxMin - RayOrigin) * InvRayDir;
	float3 SecondPlaneIntersections = (BoxMax - RayOrigin) * InvRayDir;
	float3 ClosestPlaneIntersections = min(FirstPlaneIntersections, SecondPlaneIntersections);
	float3 FurthestPlaneIntersections = max(FirstPlaneIntersections, SecondPlaneIntersections);
	float2 BoxIntersections;
	BoxIntersections.x = max(ClosestPlaneIntersections.x, max(ClosestPlaneIntersections.y, ClosestPlaneIntersections.z));
	BoxIntersections.y = min(FurthestPlaneIntersections.x, min(FurthestPlaneIntersections.y, FurthestPlaneIntersections.z));
	return saturate(BoxIntersections);
}
float ComputeDistanceFromBoxToPoint(float3 Mins, float3 Maxs, float3 InPoint)
{
	float3 DistancesToMin =  select_internal( InPoint < Mins , abs(InPoint - Mins) , float(0.0) );
	float3 DistancesToMax =  select_internal( InPoint > Maxs , abs(InPoint - Maxs) , float(0.0) );
	float Distance = dot(DistancesToMin, 1);
	Distance += dot(DistancesToMax, 1);
	return Distance;
}
float ComputeSquaredDistanceFromBoxToPoint(float3 BoxCenter, float3 BoxExtent, float3 InPoint)
{
	float3 AxisDistances = max(abs(InPoint - BoxCenter) - BoxExtent, 0);
	return dot(AxisDistances, AxisDistances);
}
float ComputeDistanceFromBoxToPointInside(float3 BoxCenter, float3 BoxExtent, float3 InPoint)
{
	float3 DistancesToMin = max(InPoint - BoxCenter + BoxExtent, 0);
	float3 DistancesToMax = max(BoxCenter + BoxExtent - InPoint, 0);
	float3 ClosestDistances = min(DistancesToMin, DistancesToMax);
	return min(ClosestDistances.x, min(ClosestDistances.y, ClosestDistances.z));
}
bool RayHitSphere(float3 RayOrigin, float3 UnitRayDirection, float3 SphereCenter, float SphereRadius)
{
	float3 ClosestPointOnRay = max(0, dot(SphereCenter - RayOrigin, UnitRayDirection)) * UnitRayDirection;
	float3 CenterToRay = RayOrigin + ClosestPointOnRay - SphereCenter;
	return dot(CenterToRay, CenterToRay) <= Square(SphereRadius);
}
bool RaySegmentHitSphere(float3 RayOrigin, float3 UnitRayDirection, float RayLength, float3 SphereCenter, float SphereRadius)
{
	float DistanceAlongRay = dot(SphereCenter - RayOrigin, UnitRayDirection);
	float3 ClosestPointOnRay = DistanceAlongRay * UnitRayDirection;
	float3 CenterToRay = RayOrigin + ClosestPointOnRay - SphereCenter;
	return dot(CenterToRay, CenterToRay) <= Square(SphereRadius) && DistanceAlongRay > -SphereRadius && DistanceAlongRay - SphereRadius < RayLength;
}
float2 RayIntersectSphere(float3 RayOrigin, float3 RayDirection, float4 Sphere)
{
	float3 LocalPosition = RayOrigin - Sphere.xyz;
	float LocalPositionSqr = dot(LocalPosition, LocalPosition);
	float3 QuadraticCoef;
	QuadraticCoef.x = dot(RayDirection, RayDirection);
	QuadraticCoef.y = 2 * dot(RayDirection, LocalPosition);
	QuadraticCoef.z = LocalPositionSqr - Sphere.w * Sphere.w;
	float Discriminant = QuadraticCoef.y * QuadraticCoef.y - 4 * QuadraticCoef.x * QuadraticCoef.z;
	float2 Intersections = -1;
	[flatten]
	if (Discriminant >= 0)
	{
		float SqrtDiscriminant = sqrt(Discriminant);
		Intersections = (-QuadraticCoef.y + float2(-1, 1) * SqrtDiscriminant) / (2 * QuadraticCoef.x);
	}
	return Intersections;
}
float3 TransformTangentVectorToWorld(float3x3 TangentToWorld, float3 InTangentVector)
{
	return mul(InTangentVector, TangentToWorld);
}
float3 TransformWorldVectorToTangent(float3x3 TangentToWorld, float3 InWorldVector)
{
	return mul(TangentToWorld, InWorldVector);
}
float3 TransformWorldVectorToView(float3 InTangentVector)
{
	return mul(InTangentVector, (float3x3)ResolvedView.TranslatedWorldToView);
}
float GetBoxPushout(float3 Normal,float3 Extent)
{
	return dot(abs(Normal * Extent), float3(1.0f, 1.0f, 1.0f));
}
void GenerateCoordinateSystem(float3 ZAxis, out float3 XAxis, out float3 YAxis)
{
	if (abs(ZAxis.x) > abs(ZAxis.y))
	{
		float InverseLength = 1.0f / sqrt(dot(ZAxis.xz, ZAxis.xz));
		XAxis = float3(-ZAxis.z * InverseLength, 0.0f, ZAxis.x * InverseLength);
	}
	else
	{
		float InverseLength = 1.0f / sqrt(dot(ZAxis.yz, ZAxis.yz));
		XAxis = float3(0.0f, ZAxis.z * InverseLength, -ZAxis.y * InverseLength);
	}
	YAxis = cross(ZAxis, XAxis);
}
	float EvaluateAttributeAtSample(float Attribute,uint SampleIndex) { return Attribute; }
	float2 EvaluateAttributeAtSample(float2 Attribute,uint SampleIndex) { return Attribute; }
	float3 EvaluateAttributeAtSample(float3 Attribute,uint SampleIndex) { return Attribute; }
	float4 EvaluateAttributeAtSample(float4 Attribute,uint SampleIndex) { return Attribute; }
struct FScreenVertexOutput
{
	noperspective float2 UV : TEXCOORD0;
	float4 Position : SV_POSITION;
};
float4 EncodeVelocityToTexture(float3 V, bool bHasPixelAnimation)
{
		V.xy = sign(V.xy) * sqrt(abs(V.xy)) * (2.0 / sqrt(2.0));
	float4 EncodedV;
	EncodedV.xy = V.xy * (0.499f * 0.5f) + 32767.0f / 65535.0f;
		uint Vz = asuint(V.z);
		EncodedV.z = saturate(float((Vz >> 16) & 0xFFFF) * rcp(65535.0f) + (0.1 / 65535.0f));
		EncodedV.w = saturate(float(((Vz >>  0) & 0xFFFE) | uint(bHasPixelAnimation)) * rcp(65535.0f) + (0.1 / 65535.0f));
	return EncodedV;
}
float4 EncodeVelocityToTexture(float3 V)
{
	return EncodeVelocityToTexture(V,  false);
}
float3 DecodeVelocityFromTexture(float4 InEncodedV)
{
	float4 EncodedV = InEncodedV;
	const float InvDiv = 1.0f / (0.499f * 0.5f);
	float3 V;
	V.xy = EncodedV.xy * InvDiv - 32767.0f / 65535.0f * InvDiv;
		V.z = asfloat((uint(round(EncodedV.z * 65535.0f)) << 16) | (uint(round(EncodedV.w * 65535.0f)) & 0xFFFE));
		V.xy = (V.xy * abs(V.xy)) * 0.5;
	return V;
}
bool DecodeHasPixelAnimationFromVelocityTexture(float4 EncodedV)
{
	return (uint(round(EncodedV.w * 65535.0f)) & 0x1) != 0x0;
}
bool GetGIReplaceState()
{
	return false;
}
bool GetNaniteReplaceState()
{
	return false;
}
bool GetRayTracingQualitySwitch()
{
	return false;
}
bool GetPathTracingQualitySwitch() { return false;  }
bool GetPathTracingIsShadow() { return false; }
bool GetPathTracingIsIndirectDiffuse() { return false; }
bool GetPathTracingIsIndirectSpecular() { return false; }
bool GetPathTracingIsIndirectVolume() { return false; }
bool GetLightmassReplaceState()
{
	return false;
}
bool GetRuntimeVirtualTextureOutputSwitch()
{
	return false;
}
struct FWriteToSliceGeometryOutput
{
	FScreenVertexOutput Vertex;
	uint LayerIndex : SV_RenderTargetArrayIndex;
};
void DrawRectangle(
	in float4 InPosition,
	in float2 InTexCoord,
	out float4 OutPosition,
	out float2 OutTexCoord)
{
	OutPosition = InPosition;
	OutPosition.xy = -1.0f + 2.0f * (DrawRectangleParameters_PosScaleBias.zw + (InPosition.xy * DrawRectangleParameters_PosScaleBias.xy)) * DrawRectangleParameters_InvTargetSizeAndTextureSize.xy;
	OutPosition.xy *= float2( 1, -1 );
	OutTexCoord.xy = (DrawRectangleParameters_UVScaleBias.zw + (InTexCoord.xy * DrawRectangleParameters_UVScaleBias.xy)) * DrawRectangleParameters_InvTargetSizeAndTextureSize.zw;
}
void DrawRectangle(
	in float4 InPosition,
	in float2 InTexCoord,
	out float4 OutPosition,
	out float4 OutUVAndScreenPos)
{
	DrawRectangle(InPosition, InTexCoord, OutPosition, OutUVAndScreenPos.xy);
	OutUVAndScreenPos.zw = OutPosition.xy;
}
void DrawRectangle(in float4 InPosition, out float4 OutPosition)
{
	OutPosition = InPosition;
	OutPosition.xy = -1.0f + 2.0f * (DrawRectangleParameters_PosScaleBias.zw + (InPosition.xy * DrawRectangleParameters_PosScaleBias.xy)) * DrawRectangleParameters_InvTargetSizeAndTextureSize.xy;
	OutPosition.xy *= float2( 1, -1 );
}
  float SafeSaturate( float In) {	return saturate(In);}
  float2 SafeSaturate( float2 In) {	return saturate(In);}
  float3 SafeSaturate( float3 In) {	return saturate(In);}
  float4 SafeSaturate( float4 In) {	return saturate(In);}
  bool IsFinite( float In) {	return (asuint(In) & 0x7F800000) != 0x7F800000; } bool IsPositiveFinite( float In) {	return asuint(In) < 0x7F800000; } float MakeFinite( float In) {    return  select_internal( !IsFinite(In) , 0.0 , In ); } float MakePositiveFinite( float In) {    return  select_internal( !IsPositiveFinite(In) , 0.0 , In ); }
  bool2 IsFinite( float2 In) {	return (asuint(In) & 0x7F800000) != 0x7F800000; } bool2 IsPositiveFinite( float2 In) {	return asuint(In) < 0x7F800000; } float2 MakeFinite( float2 In) {    return  select_internal( !IsFinite(In) , 0.0 , In ); } float2 MakePositiveFinite( float2 In) {    return  select_internal( !IsPositiveFinite(In) , 0.0 , In ); }
  bool3 IsFinite( float3 In) {	return (asuint(In) & 0x7F800000) != 0x7F800000; } bool3 IsPositiveFinite( float3 In) {	return asuint(In) < 0x7F800000; } float3 MakeFinite( float3 In) {    return  select_internal( !IsFinite(In) , 0.0 , In ); } float3 MakePositiveFinite( float3 In) {    return  select_internal( !IsPositiveFinite(In) , 0.0 , In ); }
  bool4 IsFinite( float4 In) {	return (asuint(In) & 0x7F800000) != 0x7F800000; } bool4 IsPositiveFinite( float4 In) {	return asuint(In) < 0x7F800000; } float4 MakeFinite( float4 In) {    return  select_internal( !IsFinite(In) , 0.0 , In ); } float4 MakePositiveFinite( float4 In) {    return  select_internal( !IsPositiveFinite(In) , 0.0 , In ); }
bool GetShadowReplaceState()
{
	return false;
}
float IsShadowDepthShader()
{
	return GetShadowReplaceState() ? 1.0f : 0.0f;
}
bool GetReflectionCapturePassSwitchState()
{
	return View_RenderingReflectionCaptureMask > 0.0f;
}
float DecodePackedTwoChannelValue(float2 PackedHeight)
{
	return PackedHeight.x * 255.0 * 256.0 + PackedHeight.y * 255.0;
}
float DecodeHeightValue(float InValue)
{
	return (InValue - 32768.0) * (1.0f/128.0f);
}
float DecodePackedHeight(float2 PackedHeight)
{
	return DecodeHeightValue(DecodePackedTwoChannelValue(PackedHeight));
}
uint ReverseBitsN(uint Bitfield, const uint BitCount)
{
	return reversebits(Bitfield) >> (32 - BitCount);
}
inline uint Flatten2D(uint2 Coord, uint2 Dim)
{
	return Coord.x + Coord.y * Dim.x;
}
inline uint2 Unflatten2D(uint Index, uint2 Dim)
{
	return uint2(Index % Dim.x, Index / Dim.x);
}
uint2 ZOrder2D(uint Index, const uint SizeLog2)
{
	uint2 Coord = 0; 
	[unroll]
	for (uint i = 0; i < SizeLog2; i++)
	{
		Coord.x |= ((Index >> (2 * i + 0)) & 0x1) << i;
		Coord.y |= ((Index >> (2 * i + 1)) & 0x1) << i;
	}
	return Coord;
}
uint3 ZOrder3D(uint Index, const uint SizeLog2)
{
    uint3 Coord = 0;
    [unroll]
    for (uint i = 0; i < SizeLog2; i++)
    {
        Coord.x |= ((Index >> (3 * i + 0)) & 0x1) << i;
        Coord.y |= ((Index >> (3 * i + 1)) & 0x1) << i;
        Coord.z |= ((Index >> (3 * i + 2)) & 0x1) << i;
    }
    return Coord;
}
uint ZOrder3DEncode(uint3 Coord, const uint SizeLog2)
{
    uint Index = 0;
    [unroll]
    for (uint i = 0; i < SizeLog2; i++)
    {
        Index |= ((Coord.x >> i) & 0x1) << (3 * i + 0);
        Index |= ((Coord.y >> i) & 0x1) << (3 * i + 1);
        Index |= ((Coord.z >> i) & 0x1) << (3 * i + 2);
    }
    return Index;
}
uint DivideAndRoundUp(uint Dividend, uint Divisor)
{
	return (Dividend + Divisor - 1) / Divisor;
}
uint DivideAndRoundUp(uint Dividend, uint Divisor, uint DivisorAsBitShift)
{
	return (Dividend + Divisor - 1) >> DivisorAsBitShift;
}
float UNorm16ToF32(uint UNorm)
{
	return (UNorm & 0xFFFFu) / 65535.0f;
}
float SNorm16ToF32(uint SNorm)
{
	return UNorm16ToF32(SNorm) * 2.0f - 1.0f;
}
float ComputeZSliceFromDepth(float3 GridZParams, float SceneDepth)
{
	return log2(SceneDepth * GridZParams.x + GridZParams.y) * GridZParams.z;
}
float ComputeDepthFromZSlice(float3 GridZParams, float ZSlice)
{
	float SliceDepth = (exp2(ZSlice / GridZParams.z) - GridZParams.y) / GridZParams.x;
	return SliceDepth;
}
struct FPixelShaderIn
{
	float4 SvPosition;
	uint Coverage;
	bool bIsFrontFace;
};
struct FPixelShaderOut
{
	float4 MRT[8];
	uint SubstrateOutput[3];
	uint SubstrateTopLayerData;
	uint Coverage;
	float Depth;
};
 void Swap(inout uint A, inout uint B) { uint Temp = A; A = B; B = Temp; }
 void Swap(inout uint2 A, inout uint2 B) { uint2 Temp = A; A = B; B = Temp; }
 void Swap(inout uint3 A, inout uint3 B) { uint3 Temp = A; A = B; B = Temp; }
 void Swap(inout uint4 A, inout uint4 B) { uint4 Temp = A; A = B; B = Temp; }
 void Swap(inout float A, inout float B) { float Temp = A; A = B; B = Temp; }
 void Swap(inout float2 A, inout float2 B) { float2 Temp = A; A = B; B = Temp; }
 void Swap(inout float3 A, inout float3 B) { float3 Temp = A; A = B; B = Temp; }
 void Swap(inout float4 A, inout float4 B) { float4 Temp = A; A = B; B = Temp; }
float4 GatherDepth(Texture2D Texture, float2 UV)
{
	float4 DeviceZ = Texture.GatherRed( View_SharedBilinearClampedSampler, UV);
	return float4(
		ConvertFromDeviceZ(DeviceZ.x),
		ConvertFromDeviceZ(DeviceZ.y),
		ConvertFromDeviceZ(DeviceZ.z),
		ConvertFromDeviceZ(DeviceZ.w));
}
struct FOneBandSHVector
{
	float V;
};
struct FOneBandSHVectorRGB
{
	FOneBandSHVector R;
	FOneBandSHVector G;
	FOneBandSHVector B;
};
struct FTwoBandSHVector
{
	float4 V;
};
struct FTwoBandSHVectorRGB
{
	FTwoBandSHVector R;
	FTwoBandSHVector G;
	FTwoBandSHVector B;
};
struct FThreeBandSHVector
{
	float4 V0;
	float4 V1;
	float V2;
};
struct FThreeBandSHVectorRGB
{
	FThreeBandSHVector R;
	FThreeBandSHVector G;
	FThreeBandSHVector B;
};
FTwoBandSHVectorRGB MulSH(FTwoBandSHVectorRGB A, float Scalar)
{
	FTwoBandSHVectorRGB Result;
	Result.R.V = A.R.V * Scalar;
	Result.G.V = A.G.V * Scalar;
	Result.B.V = A.B.V * Scalar;
	return Result;
}
FTwoBandSHVectorRGB MulSH(FTwoBandSHVector A, float3 Color)
{
	FTwoBandSHVectorRGB Result;
	Result.R.V = A.V * Color.r;
	Result.G.V = A.V * Color.g;
	Result.B.V = A.V * Color.b;
	return Result;
}
FTwoBandSHVector MulSH(FTwoBandSHVector A, float Scalar)
{
	FTwoBandSHVector Result;
	Result.V = A.V * Scalar;
	return Result;
}
FThreeBandSHVectorRGB MulSH3(FThreeBandSHVector A, float3 Color)
{
	FThreeBandSHVectorRGB Result;
	Result.R.V0 = A.V0 * Color.r;
	Result.R.V1 = A.V1 * Color.r;
	Result.R.V2 = A.V2 * Color.r;
	Result.G.V0 = A.V0 * Color.g;
	Result.G.V1 = A.V1 * Color.g;
	Result.G.V2 = A.V2 * Color.g;
	Result.B.V0 = A.V0 * Color.b;
	Result.B.V1 = A.V1 * Color.b;
	Result.B.V2 = A.V2 * Color.b;
	return Result;
}
FThreeBandSHVector MulSH3(FThreeBandSHVector A, float Scalar)
{
	FThreeBandSHVector Result;
	Result.V0 = A.V0 * Scalar;
	Result.V1 = A.V1 * Scalar;
	Result.V2 = A.V2 * Scalar;
	return Result;
}
FTwoBandSHVector AddSH(FTwoBandSHVector A, FTwoBandSHVector B)
{
	FTwoBandSHVector Result = A;
	Result.V += B.V;
	return Result;
}
FTwoBandSHVectorRGB AddSH(FTwoBandSHVectorRGB A, FTwoBandSHVectorRGB B)
{
	FTwoBandSHVectorRGB Result;
	Result.R = AddSH(A.R, B.R);
	Result.G = AddSH(A.G, B.G);
	Result.B = AddSH(A.B, B.B);
	return Result;
}
FThreeBandSHVector AddSH(FThreeBandSHVector A, FThreeBandSHVector B)
{
	FThreeBandSHVector Result = A;
	Result.V0 += B.V0;
	Result.V1 += B.V1;
	Result.V2 += B.V2;
	return Result;
}
FThreeBandSHVectorRGB AddSH(FThreeBandSHVectorRGB A, FThreeBandSHVectorRGB B)
{
	FThreeBandSHVectorRGB Result;
	Result.R = AddSH(A.R, B.R);
	Result.G = AddSH(A.G, B.G);
	Result.B = AddSH(A.B, B.B);
	return Result;
}
float DotSH(FTwoBandSHVector A,FTwoBandSHVector B)
{
	float Result = dot(A.V, B.V);
	return Result;
}
float3 DotSH(FTwoBandSHVectorRGB A,FTwoBandSHVector B)
{
	float3 Result = 0;
	Result.r = DotSH(A.R,B);
	Result.g = DotSH(A.G,B);
	Result.b = DotSH(A.B,B);
	return Result;
}
float DotSH1(FOneBandSHVector A,FOneBandSHVector B)
{
	float Result = A.V * B.V;
	return Result;
}
float3 DotSH1(FOneBandSHVectorRGB A,FOneBandSHVector B)
{
	float3 Result = 0;
	Result.r = DotSH1(A.R,B);
	Result.g = DotSH1(A.G,B);
	Result.b = DotSH1(A.B,B);
	return Result;
}
float DotSH3(FThreeBandSHVector A,FThreeBandSHVector B)
{
	float Result = dot(A.V0, B.V0);
	Result += dot(A.V1, B.V1);
	Result += A.V2 * B.V2;
	return Result;
}
float3 DotSH3(FThreeBandSHVectorRGB A,FThreeBandSHVector B)
{
	float3 Result = 0;
	Result.r = DotSH3(A.R,B);
	Result.g = DotSH3(A.G,B);
	Result.b = DotSH3(A.B,B);
	return Result;
}
FTwoBandSHVector GetLuminance(FTwoBandSHVectorRGB InRGBVector)
{
	float3 LF = (float3) LuminanceFactors();
	FTwoBandSHVector Out;
	Out.V = InRGBVector.R.V * LF.x + InRGBVector.G.V * LF.y + InRGBVector.B.V * LF.z;
	return Out;
}
float3 GetMaximumDirection(FTwoBandSHVector SHVector)
{
	float3 MaxDirection = float3(-SHVector.V.w, -SHVector.V.y, SHVector.V.z);
	float Length = length(MaxDirection);
	return MaxDirection / max(Length, .0001f);
}
FOneBandSHVector SHBasisFunction1()
{
	FOneBandSHVector Result;
	Result.V = 0.282095f; 
	return Result;
}
FTwoBandSHVector SHBasisFunction(float3 InputVector)
{
	FTwoBandSHVector Result;
	Result.V.x = 0.282095f; 
	Result.V.y = -0.488603f * InputVector.y;
	Result.V.z = 0.488603f * InputVector.z;
	Result.V.w = -0.488603f * InputVector.x;
	return Result;
}
FThreeBandSHVector SHBasisFunction3(float3 InputVector)
{
	FThreeBandSHVector Result;
	Result.V0.x = 0.282095f; 
	Result.V0.y = -0.488603f * InputVector.y;
	Result.V0.z = 0.488603f * InputVector.z;
	Result.V0.w = -0.488603f * InputVector.x;
	float3 VectorSquared = InputVector * InputVector;
	Result.V1.x = 1.092548f * InputVector.x * InputVector.y;
	Result.V1.y = -1.092548f * InputVector.y * InputVector.z;
	Result.V1.z = 0.315392f * (3.0f * VectorSquared.z - 1.0f);
	Result.V1.w = -1.092548f * InputVector.x * InputVector.z;
	Result.V2 = 0.546274f * (VectorSquared.x - VectorSquared.y);
	return Result;
}
float SHAmbientFunction()
{
	return 1 / (2 * sqrt(PI));
}
FOneBandSHVector CalcDiffuseTransferSH1(float Exponent)
{
	FOneBandSHVector Result = SHBasisFunction1();
	float L0 =					2 * PI / (1 + 1 * Exponent							);
	Result.V *= L0;
	return Result;
}
FTwoBandSHVector CalcDiffuseTransferSH(float3 Normal,float Exponent)
{
	FTwoBandSHVector Result = SHBasisFunction(Normal);
	float L0 =					2 * PI / (1 + 1 * Exponent							);
	float L1 =					2 * PI / (2 + 1 * Exponent							);
	Result.V.x *= L0;
	Result.V.yzw *= L1;
	return Result;
}
FThreeBandSHVector CalcDiffuseTransferSH3(float3 Normal,float Exponent)
{
	FThreeBandSHVector Result = SHBasisFunction3(Normal);
	float L0 =					2 * PI / (1 + 1 * Exponent						);
	float L1 =					2 * PI / (2 + 1 * Exponent						);
	float L2 = Exponent *		2 * PI / (3 + 4 * Exponent + Exponent * Exponent);
	float L3 = (Exponent - 1) *	2 * PI / (8 + 6 * Exponent + Exponent * Exponent);
	Result.V0.x *= L0;
	Result.V0.yzw *= L1;
	Result.V1.xyzw *= L2;
	Result.V2 *= L2;
	return Result;
}
float3 EvaluateSHIrradiance(float3 Direction, float CosThetaAO, FThreeBandSHVectorRGB SH)
{
	float t2 = CosThetaAO * CosThetaAO;
	float t3 = t2 * CosThetaAO;
	float t4 = t2 * t2;
	float c0 = .5f * sqrt(PI) * (1 - t2);
	float c1 = sqrt(PI / 3.0f) * (1 - t3);
	float c2 = sqrt(5.0f * PI) / 16.0f * (3.0f * (1.0f - t4) - 2.0f * (1.0f - t2));
	return max(0.0f, c0 * float3(SH.R.V0.x, SH.G.V0.x, SH.B.V0.x)
		+ c1 * (-float3(SH.R.V0.y, SH.G.V0.y, SH.B.V0.y) * Direction.y + float3(SH.R.V0.z, SH.G.V0.z, SH.B.V0.z) * Direction.z - float3(SH.R.V0.w, SH.G.V0.w, SH.B.V0.w) * Direction.x)
		+ c2 * (float3(SH.R.V1.z, SH.G.V1.z, SH.B.V1.z) * (3.0f * Direction.z * Direction.z - 1.0f)
			+ sqrt(3.0f) * (float3(SH.R.V2, SH.G.V2, SH.B.V2) * (Direction.x * Direction.x - Direction.y * Direction.y)
				+ 2.0f * (float3(SH.R.V1.x, SH.G.V1.x, SH.B.V1.x) * Direction.x * Direction.y - float3(SH.R.V1.y, SH.G.V1.y, SH.B.V1.y) * Direction.y * Direction.z - float3(SH.R.V1.w, SH.G.V1.w, SH.B.V1.w) * Direction.z * Direction.x))));
}
FLWCScalar LWCToWS(FLWCScalar In) { return In; }
FLWCScalar DFToWS(FDFScalar In) { return DFToTileOffset(In); }
FLWCScalar DFFastToWS(FDFScalar In) { return DFFastToTileOffset(In); }
FLWCScalar WSToLWC(FLWCScalar In) { return In; }
FDFScalar WSToDF(FLWCScalar In) { return DFFromTileOffset(In); }
FLWCVector2 LWCToWS(FLWCVector2 In) { return In; }
FLWCVector2 DFToWS(FDFVector2 In) { return DFToTileOffset(In); }
FLWCVector2 DFFastToWS(FDFVector2 In) { return DFFastToTileOffset(In); }
FLWCVector2 WSToLWC(FLWCVector2 In) { return In; }
FDFVector2 WSToDF(FLWCVector2 In) { return DFFromTileOffset(In); }
FLWCVector3 LWCToWS(FLWCVector3 In) { return In; }
FLWCVector3 DFToWS(FDFVector3 In) { return DFToTileOffset(In); }
FLWCVector3 DFFastToWS(FDFVector3 In) { return DFFastToTileOffset(In); }
FLWCVector3 WSToLWC(FLWCVector3 In) { return In; }
FDFVector3 WSToDF(FLWCVector3 In) { return DFFromTileOffset(In); }
FLWCVector4 LWCToWS(FLWCVector4 In) { return In; }
FLWCVector4 DFToWS(FDFVector4 In) { return DFToTileOffset(In); }
FLWCVector4 DFFastToWS(FDFVector4 In) { return DFFastToTileOffset(In); }
FLWCVector4 WSToLWC(FLWCVector4 In) { return In; }
FDFVector4 WSToDF(FLWCVector4 In) { return DFFromTileOffset(In); }
FLWCMatrix LWCToWS(FLWCMatrix In) { return In; }
FLWCMatrix DFToWS(FDFMatrix In) { return DFToTileOffset(In); }
FLWCMatrix DFFastToWS(FDFMatrix In) { return DFFastToTileOffset(In); }
FLWCMatrix WSToLWC(FLWCMatrix In) { return In; }
FDFMatrix WSToDF(FLWCMatrix In) { return DFFromTileOffset(In); }
FLWCInverseMatrix LWCToWS(FLWCInverseMatrix In) { return In; }
FLWCInverseMatrix DFToWS(FDFInverseMatrix In) { return DFToTileOffset(In); }
FLWCInverseMatrix DFFastToWS(FDFInverseMatrix In) { return DFFastToTileOffset(In); }
FLWCInverseMatrix WSToLWC(FLWCInverseMatrix In) { return In; }
FDFInverseMatrix WSToDF(FLWCInverseMatrix In) { return DFFromTileOffset(In); }
  float LWCToWS( float In) { return In; } float DFToWS( float In) { return In; } float WSToLWC( float In) { return In; } float WSToDF( float In) { return In; }
  float2 LWCToWS( float2 In) { return In; } float2 DFToWS( float2 In) { return In; } float2 WSToLWC( float2 In) { return In; } float2 WSToDF( float2 In) { return In; }
  float3 LWCToWS( float3 In) { return In; } float3 DFToWS( float3 In) { return In; } float3 WSToLWC( float3 In) { return In; } float3 WSToDF( float3 In) { return In; }
  float4 LWCToWS( float4 In) { return In; } float4 DFToWS( float4 In) { return In; } float4 WSToLWC( float4 In) { return In; } float4 WSToDF( float4 In) { return In; }
float3 CalcSceneColor(float2 ScreenUV)
{
	return Texture2DSampleLevel(TranslucentBasePass_SceneTextures_SceneColorTexture, TranslucentBasePass_SceneTextures_PointClampSampler, ScreenUV, 0).rgb;
}
float4 CalcFullSceneColor(float2 ScreenUV)
{
	return Texture2DSample(TranslucentBasePass_SceneTextures_SceneColorTexture, TranslucentBasePass_SceneTextures_PointClampSampler,ScreenUV);
}
float CalcSceneDepth(float2 ScreenUV)
{
	return ConvertFromDeviceZ(Texture2DSampleLevel(TranslucentBasePass_SceneTextures_SceneDepthTexture, TranslucentBasePass_SceneTextures_PointClampSampler, ScreenUV, 0).r);
}
float4 CalcSceneColorAndDepth( float2 ScreenUV )
{
	return float4(CalcSceneColor(ScreenUV), CalcSceneDepth(ScreenUV));
}
float LookupDeviceZ( float2 ScreenUV )
{
	return Texture2DSampleLevel(TranslucentBasePass_SceneTextures_SceneDepthTexture, TranslucentBasePass_SceneTextures_PointClampSampler, ScreenUV, 0).r;
}
float LookupDeviceZ(uint2 PixelPos)
{
	return TranslucentBasePass_SceneTextures_SceneDepthTexture.Load(int3(PixelPos, 0)).r;
}
float4 GatherDeviceZ( float2 ScreenUV )
{
	return TranslucentBasePass_SceneTextures_SceneDepthTexture.GatherRed( View_SharedBilinearClampedSampler, ScreenUV);
}
float CalcSceneDepth(uint2 PixelPos)
{
	float DeviceZ = TranslucentBasePass_SceneTextures_SceneDepthTexture.Load(int3(PixelPos, 0)).r;
	return ConvertFromDeviceZ(DeviceZ);
}
float4 GatherSceneDepth(float2 UV, float2 InvBufferSize)
{
	return GatherDepth(TranslucentBasePass_SceneTextures_SceneDepthTexture, UV);
}
float CalcSceneCustomDepth(float2 ScreenUV)
{
	return ConvertFromDeviceZ(Texture2DSampleLevel(TranslucentBasePass_SceneTextures_CustomDepthTexture, TranslucentBasePass_SceneTextures_PointClampSampler, ScreenUV, 0).r);
}
uint CalcSceneCustomStencil(uint2 PixelPos)
{
	return TranslucentBasePass_SceneTextures_CustomStencilTexture.Load(uint3(PixelPos, 0)) .x;
}
float CalcSceneAO(float2 ScreenUV)
{
	return Texture2DSampleLevel(TranslucentBasePass_SceneTextures_ScreenSpaceAOTexture, TranslucentBasePass_SceneTextures_PointClampSampler, ScreenUV, 0).r;
}
StructuredBuffer<float4> EyeAdaptationBuffer;
float4 EyeAdaptationLookupBuffer(StructuredBuffer<float4> InEyeAdaptation)
{
	return InEyeAdaptation[0];
}
float EyeAdaptationLookup()
{
		return EyeAdaptationLookupBuffer(TranslucentBasePass_EyeAdaptationBuffer).x;
}
float InverseExposureLerp(float Exposure, float Alpha)
{
	float LerpLogScale = -Alpha * log(Exposure);
	float Scale = exp(LerpLogScale);
	return Scale;
}
float EyeAdaptationInverseLookup(float Alpha)
{
	return InverseExposureLerp(EyeAdaptationLookup(), Alpha);
}
float3 EyeAdaptationInverseLookup(float3 LightValue, float Alpha)
{
	return LightValue * EyeAdaptationInverseLookup(Alpha);
}
uint2 SobolPixel(uint2 Pixel)
{
	int3 SobolLo = int3(Pixel & 0xfu, 0);
	int3 SobolHi = int3((Pixel >> 4u) & 0xfu, 0) + int3(16, 0, 0);
	uint Packed = View_SobolSamplingTexture.Load(SobolLo) ^ View_SobolSamplingTexture.Load(SobolHi);
	return uint2(Packed, Packed << 8u) & 0xff00u;
}
uint2 SobolIndex(uint2 Base, int Index, int Bits = 10)
{
	uint2 SobolNumbers[10] = {
		uint2(0x8680u, 0x4c80u), uint2(0xf240u, 0x9240u), uint2(0x8220u, 0x0e20u), uint2(0x4110u, 0x1610u), uint2(0xa608u, 0x7608u),
		uint2(0x8a02u, 0x280au), uint2(0xe204u, 0x9e04u), uint2(0xa400u, 0x4682u), uint2(0xe300u, 0xa74du), uint2(0xb700u, 0x9817u),
	};
	uint2 Result = Base;
	[unroll] for (int b = 0; b < 10 && b < Bits; ++b)
	{
		Result ^= (Index & (1u << b)) ? SobolNumbers[b] : 0;
	}
	return Result;
}
uint2 ComputePixelUniqueSobolRandSample(uint2 PixelCoord)
{
	const uint TemporalBits = 10;
	uint FrameIndexMod1024 = ReverseBitsN(GetPowerOfTwoModulatedFrameIndex(1u << TemporalBits), TemporalBits);
	uint2 SobolBase = SobolPixel(PixelCoord);
	return SobolIndex(SobolBase, FrameIndexMod1024, TemporalBits);
}
float2 SobolIndexToUniformUnitSquare(uint2 SobolRand)
{
	return float2(SobolRand) * rcp(65536.0) + rcp(65536.0 * 2.0);
}
float3x3 GetTangentBasis( float3 TangentZ )
{
	const float Sign = TangentZ.z >= 0 ? 1 : -1;
	const float a = -rcp( Sign + TangentZ.z );
	const float b = TangentZ.x * TangentZ.y * a;
	float3 TangentX = { 1 + Sign * a * Pow2( TangentZ.x ), Sign * b, -Sign * TangentZ.x };
	float3 TangentY = { b,  Sign + a * Pow2( TangentZ.y ), -TangentZ.y };
	return float3x3( TangentX, TangentY, TangentZ );
}
float3x3 GetTangentBasisFrisvad(float3 TangentZ)
{
	float3 TangentX;
	float3 TangentY;
	if (TangentZ.z < -0.9999999f)
	{
		TangentX = float3(0, -1, 0);
		TangentY = float3(-1, 0, 0);
	}
	else
	{
		float A = 1.0f / (1.0f + TangentZ.z);
		float B = -TangentZ.x * TangentZ.y * A;
		TangentX = float3(1.0f - TangentZ.x * TangentZ.x * A, B, -TangentZ.x);
		TangentY = float3(B, 1.0f - TangentZ.y * TangentZ.y * A, -TangentZ.y);
	}
	return float3x3( TangentX, TangentY, TangentZ );
}
float3 TangentToWorld( float3 Vec, float3 TangentZ )
{
	return mul( Vec, GetTangentBasis( TangentZ ) );
}
float3 WorldToTangent(float3 Vec, float3 TangentZ)
{
	return mul(GetTangentBasis(TangentZ), Vec);
}
float2 Hammersley( uint Index, uint NumSamples, uint2 Random )
{
	float E1 = frac( (float)Index / NumSamples + float( Random.x & 0xffff ) / (1<<16) );
	float E2 = float( reversebits(Index) ^ Random.y ) * 2.3283064365386963e-10;
	return float2( E1, E2 );
}
float2 Hammersley16( uint Index, uint NumSamples, uint2 Random )
{
	float E1 = frac( (float)Index / NumSamples + float( Random.x ) * (1.0 / 65536.0) );
	float E2 = float( ( reversebits(Index) >> 16 ) ^ Random.y ) * (1.0 / 65536.0);
	return float2( E1, E2 );
}
float2 R2Sequence( uint Index )
{
	const float Phi = 1.324717957244746;
	const float2 a = float2( 1.0 / Phi, 1.0 / Pow2(Phi) );
	return frac( a * Index );
}
float2 JitteredR2( uint Index, uint NumSamples, float2 Jitter, float JitterAmount = 0.5 )
{
	const float Phi = 1.324717957244746;
	const float2 a = float2( 1.0 / Phi, 1.0 / Pow2(Phi) );
	const float d0 = 0.76;
	const float i0 = 0.7;
	return frac( a * float(Index) + ( JitterAmount * 0.5 * d0 * sqrt(PI) * rsqrt( float(NumSamples) ) ) * Jitter );
}
float2 JitteredR2( uint Index, float2 Jitter, float JitterAmount = 0.5 )
{
	const float Phi = 1.324717957244746;
	const float2 a = float2( 1.0 / Phi, 1.0 / Pow2(Phi) );
	const float d0 = 0.76;
	const float i0 = 0.7;
	return frac( a * Index + ( JitterAmount * 0.25 * d0 * sqrt(PI) * rsqrt( Index - i0 ) ) * Jitter );
}
float2 UniformSampleDisk( float2 E )
{
	float Theta = 2 * PI * E.x;
	float Radius = sqrt( E.y );
	return Radius * float2( cos( Theta ), sin( Theta ) );
}
float3 ConcentricDiskSamplingHelper(float2 E)
{
	float2 p = 2 * E - 0.99999994;
	float2 a = abs(p);
	float Lo = min(a.x, a.y);
	float Hi = max(a.x, a.y);
	float Epsilon = 5.42101086243e-20; 
	float Phi = (PI / 4) * (Lo / (Hi + Epsilon) + 2 * float(a.y >= a.x));
	float Radius = Hi;
	const uint SignMask = 0x80000000;
	float2 Disk = asfloat((asuint(float2(cos(Phi), sin(Phi))) & ~SignMask) | (asuint(p) & SignMask));
	return float3(Disk, Radius);
}
float2 UniformSampleDiskConcentric( float2 E )
{
	float3 Result = ConcentricDiskSamplingHelper(E);
	return Result.xy * Result.z; 
}
float2 UniformSampleDiskConcentricApprox( float2 E )
{
	float2 sf = E * sqrt(2.0) - sqrt(0.5);	
	float2 sq = sf*sf;
	float root = sqrt(2.0*max(sq.x, sq.y) - min(sq.x, sq.y));
	if (sq.x > sq.y)
	{
		sf.x = sf.x > 0 ? root : -root;
	}
	else
	{
		sf.y = sf.y > 0 ? root : -root;
	}
	return sf;
}
float3 EquiAreaSphericalMapping(float2 UV)
{
	UV = 2 * UV - 1;
	float D = 1 - (abs(UV.x) + abs(UV.y));
	float R = 1 - abs(D);
	float Phi = R == 0 ? 0 : (PI / 4) * ((abs(UV.y) - abs(UV.x)) / R + 1);
	float F = R * sqrt(2 - R * R);
	return float3(
		F * sign(UV.x) * abs(cos(Phi)),
		F * sign(UV.y) * abs(sin(Phi)),
		sign(D) * (1 - R * R)
	);
}
float2 InverseEquiAreaSphericalMapping(float3 Direction)
{
	Direction = normalize(Direction);
	float3 AbsDir = abs(Direction);
	float R = sqrt(1 - AbsDir.z);
	float Epsilon = 5.42101086243e-20; 
	float x = min(AbsDir.x, AbsDir.y) / (max(AbsDir.x, AbsDir.y) + Epsilon);
	const float t1 = 0.406758566246788489601959989e-5f;
	const float t2 = 0.636226545274016134946890922156f;
	const float t3 = 0.61572017898280213493197203466e-2f;
	const float t4 = -0.247333733281268944196501420480f;
	const float t5 = 0.881770664775316294736387951347e-1f;
	const float t6 = 0.419038818029165735901852432784e-1f;
	const float t7 = -0.251390972343483509333252996350e-1f;
	float Phi = t6 + t7 * x;
	Phi = t5 + Phi * x;
	Phi = t4 + Phi * x;
	Phi = t3 + Phi * x;
	Phi = t2 + Phi * x;
	Phi = t1 + Phi * x;
	Phi = (AbsDir.x < AbsDir.y) ? 1 - Phi : Phi;
	float2 UV = float2(R - Phi * R, Phi * R);
	UV = (Direction.z < 0) ? 1 - UV.yx : UV;
	UV = asfloat(asuint(UV) ^ (asuint(Direction.xy) & 0x80000000u));
	return UV * 0.5 + 0.5;
}
float4 UniformSampleSphere( float2 E )
{
	float Phi = 2 * PI * E.x;
	float CosTheta = 1 - 2 * E.y;
	float SinTheta = sqrt( 1 - CosTheta * CosTheta );
	float3 H;
	H.x = SinTheta * cos( Phi );
	H.y = SinTheta * sin( Phi );
	H.z = CosTheta;
	float PDF = 1.0 / (4 * PI);
	return float4( H, PDF );
}
float4 UniformSampleHemisphere( float2 E )
{
	float Phi = 2 * PI * E.x;
	float CosTheta = E.y;
	float SinTheta = sqrt( 1 - CosTheta * CosTheta );
	float3 H;
	H.x = SinTheta * cos( Phi );
	H.y = SinTheta * sin( Phi );
	H.z = CosTheta;
	float PDF = 1.0 / (2 * PI);
	return float4( H, PDF );
}
float4 CosineSampleHemisphere( float2 E )
{
	float Phi = 2 * PI * E.x;
	float CosTheta = sqrt(E.y);
	float SinTheta = sqrt(1 - CosTheta * CosTheta);
	float3 H;
	H.x = SinTheta * cos(Phi);
	H.y = SinTheta * sin(Phi);
	H.z = CosTheta;
	float PDF = CosTheta * (1.0 / PI);
	return float4(H, PDF);
}
float4 CosineSampleHemisphereConcentric(float2 E)
{
	float3 Result = ConcentricDiskSamplingHelper(E);
	float SinTheta = Result.z;
	float CosTheta = sqrt(1 - SinTheta * SinTheta);
	return float4(Result.xy * SinTheta, CosTheta, CosTheta * (1.0 / PI));
}
float4 CosineSampleHemisphere( float2 E, float3 N ) 
{
	float3 H = UniformSampleSphere( E ).xyz;
	H = normalize( N + H );
	float PDF = dot(H, N) * (1.0 /  PI);
	return float4( H, PDF );
}
float4 UniformSampleCone( float2 E, float CosThetaMax )
{
	float Phi = 2 * PI * E.x;
	float CosTheta = lerp( CosThetaMax, 1, E.y );
	float SinTheta = sqrt( 1 - CosTheta * CosTheta );
	float3 L;
	L.x = SinTheta * cos( Phi );
	L.y = SinTheta * sin( Phi );
	L.z = CosTheta;
	float PDF = 1.0 / ( 2 * PI * (1 - CosThetaMax) );
	return float4( L, PDF );
}
float4 UniformSampleConeRobust(float2 E, float SinThetaMax2)
{
	float Phi = 2 * PI * E.x;
	float OneMinusCosThetaMax = SinThetaMax2 < 0.01 ? SinThetaMax2 * (0.5 + 0.125 * SinThetaMax2) : 1 - sqrt(1 - SinThetaMax2);
	float CosTheta = 1 - OneMinusCosThetaMax * E.y;
	float SinTheta = sqrt(1 - CosTheta * CosTheta);
	float3 L;
	L.x = SinTheta * cos(Phi);
	L.y = SinTheta * sin(Phi);
	L.z = CosTheta;
	float PDF = 1.0 / (2 * PI * OneMinusCosThetaMax);
	return float4(L, PDF);
}
float UniformConeSolidAngle(float SinThetaMax2)
{
	float OneMinusCosThetaMax = SinThetaMax2 < 0.01 ? SinThetaMax2 * (0.5 + 0.125 * SinThetaMax2) : 1 - sqrt(1 - SinThetaMax2);
	return 2 * PI * OneMinusCosThetaMax;
}
float4 UniformSampleConeConcentricRobust(float2 E, float SinThetaMax2)
{
	float OneMinusCosThetaMax = SinThetaMax2 < 0.01 ? SinThetaMax2 * (0.5 + 0.125 * SinThetaMax2) : 1 - sqrt(1 - SinThetaMax2);
	float3 Result = ConcentricDiskSamplingHelper(E);
	float SinTheta = Result.z * sqrt(SinThetaMax2);
	float CosTheta = sqrt(1 - SinTheta * SinTheta);
	float3 L = float3(Result.xy * SinTheta, CosTheta);
	float PDF = 1.0 / (2 * PI * OneMinusCosThetaMax);
	return float4(L, PDF);
}
float4 ImportanceSampleGGX( float2 E, float a2 )
{
	float Phi = 2 * PI * E.x;
	float CosTheta = sqrt( (1 - E.y) / ( 1 + (a2 - 1) * E.y ) );
	float SinTheta = sqrt( 1 - CosTheta * CosTheta );
	float3 H;
	H.x = SinTheta * cos( Phi );
	H.y = SinTheta * sin( Phi );
	H.z = CosTheta;
	float d = ( CosTheta * a2 - CosTheta ) * CosTheta + 1;
	float D = a2 / ( PI*d*d );
	float PDF = D * CosTheta;
	return float4( H, PDF );
}
float VisibleGGXPDF(float3 V, float3 H, float a2, bool bLimitVDNFToReflection = true)
{
	float NoV = V.z;
	float NoH = H.z;
	float VoH = dot(V, H);
	float d = (NoH * a2 - NoH) * NoH + 1;
	float D = a2 / (PI*d*d);
	float k = 1.0;
	if (bLimitVDNFToReflection)
	{
		float s = 1.0f + length(V.xy);
		float s2 = s * s;
		k = (s2 - a2 * s2) / (s2 + a2 * V.z * V.z); 
	}
	float PDF = 2 * VoH * D / (k * NoV + sqrt(NoV * (NoV - NoV * a2) + a2));
	return PDF;
}
float VisibleGGXPDF_aniso(float3 V, float3 H, float2 Alpha, bool bLimitVDNFToReflection = true)
{
	float NoV = V.z;
	float NoH = H.z;
	float VoH = dot(V, H);
	float a2 = Alpha.x * Alpha.y;
	float3 Hs = float3(Alpha.y * H.x, Alpha.x * H.y, a2 * NoH);
	float S = dot(Hs, Hs);
	float D = (1.0f / PI) * a2 * Square(a2 / S);
	float LenV = length(float3(V.x * Alpha.x, V.y * Alpha.y, NoV));
	float k = 1.0;
	if (bLimitVDNFToReflection)
	{
		float a = saturate(min(Alpha.x, Alpha.y));
		float s = 1.0f + length(V.xy);
		float ka2 = a * a, s2 = s * s;
		k = (s2 - ka2 * s2) / (s2 + ka2 * V.z * V.z); 
	}
	float Pdf = (2 * D * VoH) / (k * NoV + LenV);
	return Pdf;
}
float4 ImportanceSampleVisibleGGX(float2 E, float2 Alpha, float3 V, bool bLimitVDNFToReflection = true)
{
	float3 Vh = normalize(float3(Alpha * V.xy, V.z));
	float Phi = (2 * PI) * E.x;
	float k = 1.0;
	if (bLimitVDNFToReflection)
	{
		float a = saturate(min(Alpha.x, Alpha.y));
		float s = 1.0 + length(V.xy);
		float a2 = a * a, s2 = s * s;
		k = (s2 - a2 * s2) / (s2 + a2 * V.z * V.z);
	}
	float Z = lerp(1.0, -k * Vh.z, E.y);
	float SinTheta = sqrt(saturate(1 - Z * Z));
	float X = SinTheta * cos(Phi);
	float Y = SinTheta * sin(Phi);
	float3 H = float3(X, Y, Z) + Vh;
	H = normalize(float3(Alpha * H.xy, max(0.0, H.z)));
	return float4(H, VisibleGGXPDF_aniso(V, H, Alpha));
}
float MISWeightBalanced(float Pdf, float OtherPdf)
{
	float X = min(Pdf, OtherPdf) / max(Pdf, OtherPdf); 
	float Y = Pdf == OtherPdf ? 1.0 : X; 
	float M = rcp(1.0 + Y);
	return Pdf > OtherPdf ? M : 1.0 - M; 
}
float MISWeightPower(float Pdf, float OtherPdf)
{
	float X = min(Pdf, OtherPdf) / max(Pdf, OtherPdf); 
	float Y = Pdf == OtherPdf ? 1.0 : X; 
	float M = rcp(1.0 + Y * Y);
	return Pdf > OtherPdf ? M : 1.0 - M; 
}
void AddLobeWithMIS(inout float3 Weight, inout float Pdf, float3 LobeWeight, float LobePdf, float LobeProb)
{
	const float MinLobeProb = 1.1754943508e-38; 
	if (LobeProb > MinLobeProb)
	{
		LobePdf *= LobeProb;
		LobeWeight *= rcp(LobeProb);
		Weight = lerp(Weight, LobeWeight, MISWeightBalanced(LobePdf, Pdf));
		Pdf += LobePdf;
	}
}
float RescaleRandomNumber(float RandVal, float LowerBound, float UpperBound)
{
	const float OneMinusEpsilon = 0.99999994; 
	return min((RandVal - LowerBound) / (UpperBound - LowerBound), OneMinusEpsilon);
}
float RayPDFToReflectionRayPDF(float VoH, float RayPDF)
{
	float ReflectPDF = RayPDF / (4.0 * saturate(VoH));
	return ReflectPDF;
}
float4 DepthOfFieldParams;
float ComputeCircleOfConfusion(float SceneDepth)
{
	[flatten] if(SceneDepth > View_DepthOfFieldFocalDistance)
	{
		SceneDepth = View_DepthOfFieldFocalDistance + max(0, SceneDepth - View_DepthOfFieldFocalDistance - View_DepthOfFieldFocalRegion);
	}
	float D = SceneDepth;
	float F = View_DepthOfFieldFocalLength;
	float P = View_DepthOfFieldFocalDistance;
	float Aperture = View_DepthOfFieldScale;
	P *= 0.001f / 100.0f;
	D *= 0.001f / 100.0f;
	float CoCRadius = Aperture * F * (P - D) / (D * (P - F));
	return saturate(abs(CoCRadius));
}
float ComputeCircleOfConfusionNorm(float SceneDepth)
{
	[flatten] if(SceneDepth > View_DepthOfFieldFocalDistance)
	{
		SceneDepth = View_DepthOfFieldFocalDistance + max(0, SceneDepth - View_DepthOfFieldFocalDistance - View_DepthOfFieldFocalRegion);
	}
	float TransitionRegion = (SceneDepth < View_DepthOfFieldFocalDistance) ? View_DepthOfFieldNearTransitionRegion : View_DepthOfFieldFarTransitionRegion;
	return saturate(abs(SceneDepth - View_DepthOfFieldFocalDistance) / TransitionRegion);
}
float CalcUnfocusedPercentCustomBound(float SceneDepth, float MaxBlurNear, float MaxBlurFar)
{
	float MaxUnfocusedPercent = (SceneDepth < View_DepthOfFieldFocalDistance) ? MaxBlurNear : MaxBlurFar;
	float Unbound = ComputeCircleOfConfusionNorm(SceneDepth);
	return min(MaxUnfocusedPercent, Unbound);
}
float DepthToCoc(float SceneDepth) 
{
	float4 CircleDofParams = View_CircleDOFParams;
	float Focus = View_DepthOfFieldFocalDistance;
	float Radius = CircleDofParams.x;
	float CocRadius = ((SceneDepth - Focus) / SceneDepth) * Radius;
	float DepthBlurRadius = (1.0 - exp2(-SceneDepth * CircleDofParams.y)) * CircleDofParams.z;
	float ReturnCoc = max(abs(CocRadius), DepthBlurRadius);
	if(CocRadius < 0.0) 
	{
		ReturnCoc = -ReturnCoc;
	}
	return ReturnCoc;
}
struct FGlobalDistanceFieldPage
{
	uint PageIndex;
	bool bValid;
	bool bCoverage;
};
uint3 GlobalDistanceFieldPageLinearIndexToPageAtlasOffset(FGlobalDistanceFieldPage Page)
{
	uint3 PageAtlasOffset;
	PageAtlasOffset.x = Page.PageIndex & 0x7F;
	PageAtlasOffset.y = (Page.PageIndex >> 7) & 0x7F;
	PageAtlasOffset.z = Page.PageIndex >> 14;
	return PageAtlasOffset;
}
uint PackGlobalDistanceFieldPage(FGlobalDistanceFieldPage Page)
{
	uint PackedPage = 0xFFFFFFFF;
	if (Page.bValid)
	{
		PackedPage = Page.PageIndex & 0x00FFFFFF;
		PackedPage |= Page.bCoverage ? 0x80000000 : 0;
	}
	return PackedPage;
}
FGlobalDistanceFieldPage UnpackGlobalDistanceFieldPage(uint PackedPage)
{
	FGlobalDistanceFieldPage Page;
	Page.PageIndex = PackedPage & 0x00FFFFFF;
	Page.bCoverage = PackedPage & 0x80000000;
	Page.bValid = PackedPage < 0xFFFFFFFF;
	return Page;
}
FGlobalDistanceFieldPage GetGlobalDistanceFieldPage(float3 VolumeUV, uint ClipmapIndex)
{
	int4 PageTableCoord = int4(saturate(VolumeUV) * View_GlobalDistanceFieldClipmapSizeInPages + int3(0, 0, ClipmapIndex * View_GlobalDistanceFieldClipmapSizeInPages), 0);
	uint PackedPage = View_GlobalDistanceFieldPageTableTexture.Load(PageTableCoord);
	return UnpackGlobalDistanceFieldPage(PackedPage);
}
void ComputeGlobalDistanceFieldPageUV(float3 VolumeUV, FGlobalDistanceFieldPage Page, out float3 OutPageUV, out float3 OutCoveragePageUV)
{
	uint3 PageAtlasOffset = GlobalDistanceFieldPageLinearIndexToPageAtlasOffset(Page);
	float3 VolumePageUV = frac(VolumeUV * View_GlobalDistanceFieldClipmapSizeInPages);
	float3 PageAtlasCoord = PageAtlasOffset * 8 + VolumePageUV * (8 - 1) + 0.5f;
	OutPageUV = PageAtlasCoord * View_GlobalDistanceFieldInvPageAtlasSize;
	float3 CoveragePageAtlasCoord = PageAtlasOffset * 4 + VolumePageUV * (4 - 1) + 0.5f;
	OutCoveragePageUV = CoveragePageAtlasCoord * View_GlobalDistanceFieldInvCoverageAtlasSize;
}
float3 ComputeGlobalDistanceFieldPageUV(float3 VolumeUV, FGlobalDistanceFieldPage Page)
{
	uint3 PageAtlasOffset = GlobalDistanceFieldPageLinearIndexToPageAtlasOffset(Page);
	float3 VolumePageUV = frac(VolumeUV * View_GlobalDistanceFieldClipmapSizeInPages);
	float3 PageAtlasCoord = PageAtlasOffset * 8 + VolumePageUV * (8 - 1) + 0.5f;
	float3 PageUV = PageAtlasCoord * View_GlobalDistanceFieldInvPageAtlasSize;
	return PageUV;
}
float3 ComputeGlobalDistanceFieldCoveragePageUV(float3 VolumeUV, FGlobalDistanceFieldPage Page)
{
	uint3 PageAtlasOffset = GlobalDistanceFieldPageLinearIndexToPageAtlasOffset(Page);
	float3 VolumePageUV = frac(VolumeUV * View_GlobalDistanceFieldClipmapSizeInPages);
	float3 CoveragePageAtlasCoord = PageAtlasOffset * 4 + VolumePageUV * (4 - 1) + 0.5f;
	float3 CoveragePageUV = CoveragePageAtlasCoord * View_GlobalDistanceFieldInvCoverageAtlasSize;
	return CoveragePageUV;
}
float EncodeGlobalDistanceFieldPageDistance(float Distance, float ClipmapInfluenceRange)
{
	return saturate(Distance / (2.0f * ClipmapInfluenceRange) + 0.5f);
}
float DecodeGlobalDistanceFieldPageDistance(float EncodedDistance, float ClipmapInfluenceRange)
{
	return (EncodedDistance * 2.0f - 1.0f) * ClipmapInfluenceRange;
}
float3 ComputeGlobalUV(float3 TranslatedWorldPosition, uint ClipmapIndex)
{
	float4 TranslatedWorldToUVAddAndMul = View_GlobalVolumeTranslatedWorldToUVAddAndMul[ClipmapIndex];
	float3 UV = frac(TranslatedWorldPosition * TranslatedWorldToUVAddAndMul.www + TranslatedWorldToUVAddAndMul.xyz); 
	UV = frac(UV); 
	return UV;
}
float3 ComputeGlobalMipUV(float3 TranslatedWorldPosition, uint ClipmapIndex)
{
	float3 MipUV = saturate(TranslatedWorldPosition * View_GlobalDistanceFieldMipTranslatedWorldToUVScale[ClipmapIndex].xyz + View_GlobalDistanceFieldMipTranslatedWorldToUVBias[ClipmapIndex].xyz);
	float MipUVMinZ = View_GlobalDistanceFieldMipTranslatedWorldToUVScale[ClipmapIndex].w;
	float MipUVMaxZ = View_GlobalDistanceFieldMipTranslatedWorldToUVBias[ClipmapIndex].w;
	MipUV.z = clamp(MipUV.z, MipUVMinZ, MipUVMaxZ);
	return MipUV;
}
float GetDistanceToNearestSurfaceGlobal(float3 TranslatedWorldPosition)
{
	float Distance = 0.0f;
	for (uint ClipmapIndex = 0; ClipmapIndex < View_NumGlobalSDFClipmaps; ClipmapIndex++)
	{
		float DistanceFromClipmap = ComputeDistanceFromBoxToPointInside(View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].xyz, View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].www, TranslatedWorldPosition);
		const float ClipmapVoxelExtent = View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].w * View_GlobalVolumeTexelSize;
		const float ClipmapInfluenceRange = 2.0f * 4 * ClipmapVoxelExtent;
		Distance = ClipmapInfluenceRange;
		if (DistanceFromClipmap > ClipmapVoxelExtent)
		{
			float3 ClipmapVolumeUV = ComputeGlobalUV(TranslatedWorldPosition, ClipmapIndex);
			FGlobalDistanceFieldPage Page = GetGlobalDistanceFieldPage(ClipmapVolumeUV, ClipmapIndex);
			if (Page.bValid)
			{
				float3 PageUV = ComputeGlobalDistanceFieldPageUV(ClipmapVolumeUV, Page);
				float DistanceFieldValue = Texture3DSampleLevel(View_GlobalDistanceFieldPageAtlasTexture,  View_SharedTrilinearWrappedSampler, PageUV, 0).x;
				if (DistanceFieldValue < 1.0f)
				{
					Distance = DecodeGlobalDistanceFieldPageDistance(DistanceFieldValue, ClipmapInfluenceRange);
					break;
				}
			}
		}
	}
	return Distance;
}
float SampleGlobalDistanceField(float3 TranslatedWorldPosition, float MaxDistance, int MinClipmapIndex)
{
	for (uint ClipmapIndex = MinClipmapIndex; ClipmapIndex < View_NumGlobalSDFClipmaps; ++ClipmapIndex)
	{
		const float ClipmapInfluenceRange = 4 * 2.0f * View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].w * View_GlobalVolumeTexelSize;
		float3 ClipmapVolumeUV = ComputeGlobalUV(TranslatedWorldPosition, ClipmapIndex);
		FGlobalDistanceFieldPage Page = GetGlobalDistanceFieldPage(ClipmapVolumeUV, ClipmapIndex);
		if (Page.bValid)
		{
			float3 PageUV = ComputeGlobalDistanceFieldPageUV(ClipmapVolumeUV, Page);
			float DistanceFieldValue = Texture3DSampleLevel(View_GlobalDistanceFieldPageAtlasTexture,  View_SharedTrilinearWrappedSampler, PageUV, 0).x;
			if (DistanceFieldValue < 1.0f)
			{
				return DecodeGlobalDistanceFieldPageDistance(DistanceFieldValue, ClipmapInfluenceRange);
			}
		}
	}
	return MaxDistance;
}
float GlobalDistanceFieldSampleClipmap(float3 ClipmapVolumeUV, uint ClipmapIndex)
{
	float DistanceFieldValue = 1.0f;
	ClipmapVolumeUV = frac(ClipmapVolumeUV);
	FGlobalDistanceFieldPage Page = GetGlobalDistanceFieldPage(ClipmapVolumeUV, ClipmapIndex);
	if (Page.bValid)
	{
		float3 PageUV = ComputeGlobalDistanceFieldPageUV(ClipmapVolumeUV, Page);
		DistanceFieldValue = Texture3DSampleLevel(View_GlobalDistanceFieldPageAtlasTexture,  View_SharedTrilinearWrappedSampler, PageUV, 0).x;
	}
	return DistanceFieldValue;
}
float3 GlobalDistanceFieldPageCentralDiff(float3 ClipmapVolumeUV, uint ClipmapIndex)
{
	float3 TexelOffset = 0.5f * View_GlobalVolumeTexelSize;
	float R = GlobalDistanceFieldSampleClipmap(ClipmapVolumeUV + float3(+TexelOffset.x, 0, 0), ClipmapIndex);
	float L = GlobalDistanceFieldSampleClipmap(ClipmapVolumeUV + float3(-TexelOffset.x, 0, 0), ClipmapIndex);
	float F = GlobalDistanceFieldSampleClipmap(ClipmapVolumeUV + float3(0, +TexelOffset.y, 0), ClipmapIndex);
	float B = GlobalDistanceFieldSampleClipmap(ClipmapVolumeUV + float3(0, -TexelOffset.y, 0), ClipmapIndex);
	float U = GlobalDistanceFieldSampleClipmap(ClipmapVolumeUV + float3(0, 0, +TexelOffset.z), ClipmapIndex);
	float D = GlobalDistanceFieldSampleClipmap(ClipmapVolumeUV + float3(0, 0, -TexelOffset.z), ClipmapIndex);
	return float3(R - L, F - B, U - D);
}
float3 ComputeGlobalDistanceFieldNormal(float3 SampleTranslatedWorldPosition, uint ClipmapIndex, float3 FallbackNormal)
{
	float3 ClipmapVolumeUV = ComputeGlobalUV(SampleTranslatedWorldPosition, ClipmapIndex);
	float3 DistanceFieldGradient = GlobalDistanceFieldPageCentralDiff(ClipmapVolumeUV, ClipmapIndex);
	float DistanceFieldGradientLength = length(DistanceFieldGradient);
	float3 DistanceFieldNormal = DistanceFieldGradientLength > 0.001f ? DistanceFieldGradient / DistanceFieldGradientLength : FallbackNormal;
	return DistanceFieldNormal;
}
float3 GetDistanceFieldGradientGlobal(float3 TranslatedWorldPosition)
{
	float3 Gradient = float3(0, 0, 0.001f);
	for (uint ClipmapIndex = 0; ClipmapIndex < View_NumGlobalSDFClipmaps; ClipmapIndex++)
	{
		const float ClipmapVoxelExtent = View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].w * View_GlobalVolumeTexelSize;
		const float DistanceFromClipmap = ComputeDistanceFromBoxToPointInside(View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].xyz, View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].www, TranslatedWorldPosition);
		if (DistanceFromClipmap >= ClipmapVoxelExtent)
		{
			const float3 ClipmapVolumeUV = ComputeGlobalUV(TranslatedWorldPosition, ClipmapIndex);
			FGlobalDistanceFieldPage Page = GetGlobalDistanceFieldPage(ClipmapVolumeUV, ClipmapIndex);
			if (Page.bValid)
			{
				float3 PageUV = ComputeGlobalDistanceFieldPageUV(ClipmapVolumeUV, Page);
				float DistanceFieldValue = Texture3DSampleLevel(View_GlobalDistanceFieldPageAtlasTexture,  View_SharedTrilinearWrappedSampler, PageUV, 0).x;
				if (DistanceFieldValue < 0.9f)
				{
					float3 PageCentralDiff = GlobalDistanceFieldPageCentralDiff(ClipmapVolumeUV, ClipmapIndex);
					const float ClipmapInfluenceRange = 4 * 2.0f * ClipmapVoxelExtent;
					const float PageDistanceDecodeFactor = 2.0f * ClipmapInfluenceRange;
					float ClipmapExtent = View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].w;
					const float BackwardsCompatibilityFactor = 128.0f * View_GlobalVolumeTexelSize;
					Gradient = PageDistanceDecodeFactor * PageCentralDiff / (ClipmapExtent * BackwardsCompatibilityFactor);
					break;
				}
			}
		}
	}
	return Gradient;
}
float CalculateDistanceFieldApproxAO(float3 TranslatedWorldPosition, float3 WorldNormal, uint NumSteps, float StepDistance, float StepScale, float DistanceBias, float MaxDistance)
{
	int MinClipmapIndex = -1;
	for (uint ClipmapIndex = 0; ClipmapIndex < View_NumGlobalSDFClipmaps; ++ClipmapIndex)
	{
		float DistanceFromClipmap = ComputeDistanceFromBoxToPointInside(View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].xyz, View_GlobalVolumeTranslatedCenterAndExtent[ClipmapIndex].www, TranslatedWorldPosition);
		if (DistanceFromClipmap > MaxDistance)
		{
			MinClipmapIndex = ClipmapIndex;
			break;
		}
	}
	if (MinClipmapIndex < 0)
	{
		return 1.0f;
	}
	float Occlusion = 0.0f;
	float W = 0.5f;
	float TotalW = 0.0f;
	for (uint StepIndex = 0; StepIndex < NumSteps; ++StepIndex)
	{
		const float CurrentDistance = StepDistance + DistanceBias;
		const float Dist = max(0.0f, SampleGlobalDistanceField(TranslatedWorldPosition + WorldNormal * CurrentDistance, CurrentDistance, MinClipmapIndex));
		Occlusion += W * Dist / CurrentDistance;
		TotalW += W;
		W *= 0.5f;
		StepDistance *= StepScale;
	}
	return saturate(Occlusion / TotalW);
}
float GetDistanceToNearestSurfaceGlobal(FDFVector3 WorldPosition)
{
	const float3 TranslatedWorldPosition = DFFastToTranslatedWorld(WorldPosition, ResolvedView.PreViewTranslation);
	return GetDistanceToNearestSurfaceGlobal(TranslatedWorldPosition);
}
float GetDistanceToNearestSurfaceGlobal(FLWCVector3 WorldPosition)
{
	return GetDistanceToNearestSurfaceGlobal(DFFromTileOffset(WorldPosition));
}
float3 GetDistanceFieldGradientGlobal(FDFVector3 WorldPosition)
{
	const float3 TranslatedWorldPosition = DFFastToTranslatedWorld(WorldPosition, ResolvedView.PreViewTranslation);
	return GetDistanceFieldGradientGlobal(TranslatedWorldPosition);
}
float3 GetDistanceFieldGradientGlobal(FLWCVector3 WorldPosition)
{
	return GetDistanceFieldGradientGlobal(DFFromTileOffset(WorldPosition));
}
float CalculateDistanceFieldApproxAO(FDFVector3 WorldPosition, float3 WorldNormal, uint NumSteps, float StepDistance, float StepScale, float DistanceBias, float MaxDistance)
{
	const float3 TranslatedWorldPosition = DFFastToTranslatedWorld(WorldPosition, ResolvedView.PreViewTranslation);
	return CalculateDistanceFieldApproxAO(TranslatedWorldPosition, WorldNormal, NumSteps, StepDistance, StepScale, DistanceBias, MaxDistance);
}
float CalculateDistanceFieldApproxAO(FLWCVector3 WorldPosition, float3 WorldNormal, uint NumSteps, float StepDistance, float StepScale, float DistanceBias, float MaxDistance)
{
	const float3 TranslatedWorldPosition = LWCToFloat(LWCAdd(WorldPosition, ResolvedView.TileOffset.PreViewTranslation));
	return CalculateDistanceFieldApproxAO(TranslatedWorldPosition, WorldNormal, NumSteps, StepDistance, StepScale, DistanceBias, MaxDistance);
}
float3 PhysicsField_ComputeSampleUV(in float3 LocalPosition, in int ClipmapIndex, in float ClipmapDistance, in int ClipmapExponent, in int ClipmapCount)
{
	const float ClipmapExtent = 2.0 * ClipmapDistance * pow((float) ClipmapExponent, (float) (ClipmapIndex + 1 - ClipmapCount));
	return LocalPosition / ClipmapExtent + 0.5;
}
int PhysicsField_GetClipmapIndex(in float3 LocalPosition, in float ClipmapDistance, in int ClipmapExponent, in int ClipmapCount)
{
	const int3 ClipmapIndices = floor(log(abs(LocalPosition) / ClipmapDistance) / log((float) (ClipmapExponent)) + int3(ClipmapCount, ClipmapCount, ClipmapCount));
	const int ClipmapIndex = max(max(ClipmapIndices[0], ClipmapIndices[1]), ClipmapIndices[2]);
	return clamp(ClipmapIndex, 0, ClipmapCount - 1);
}
void PhysicsField_ComputeVoxelIndices(in int3 PrevCell, in int ClipmapResolution, 
				out int I000, out int I100, out int I010, out int I110, 
				out int I001, out int I101, out int I011, out int I111)
{
	const int3 NextCell = PrevCell + int3(1, 1, 1);
	const int ResolutionSquare = ClipmapResolution * ClipmapResolution;
	const int PrevOffsetX = PrevCell.x;
	const int NextOffsetX = NextCell.x;
	const int PrevOffsetY = ClipmapResolution * PrevCell.y;
	const int NextOffsetY = ClipmapResolution * NextCell.y;
	const int PrevOffsetZ = ResolutionSquare * PrevCell.z;
	const int NextOffsetZ = ResolutionSquare * NextCell.z;
	I000 = (PrevOffsetX + PrevOffsetY + PrevOffsetZ);
	I100 = (NextOffsetX + PrevOffsetY + PrevOffsetZ);
	I010 = (PrevOffsetX + NextOffsetY + PrevOffsetZ);
	I110 = (NextOffsetX + NextOffsetY + PrevOffsetZ);
	I001 = (PrevOffsetX + PrevOffsetY + NextOffsetZ);
	I101 = (NextOffsetX + PrevOffsetY + NextOffsetZ);
	I011 = (PrevOffsetX + NextOffsetY + NextOffsetZ);
	I111 = (NextOffsetX + NextOffsetY + NextOffsetZ);
}
float3 PhysicsField_InterpolateVector(in int3 SampleIndex, in float3 SampleFraction, in int ClipmapResolution,  in Buffer<float> ClipmapBuffer, in int ClipmapCount)
{
	int I000 = 0, I100 = 0, I010 = 0, I110 = 0, I001 = 0, I101 = 0, I011 = 0, I111 = 0;
	PhysicsField_ComputeVoxelIndices(SampleIndex, ClipmapResolution, I000, I100, I010, I110, I001, I101, I011, I111);
	const int AttributeOffsetY = ClipmapResolution * ClipmapResolution * ClipmapResolution * ClipmapCount;
	const int AttributeOffsetZ = 2 * AttributeOffsetY;
	const float3 V000 = float3(ClipmapBuffer[I000], ClipmapBuffer[I000 + AttributeOffsetY], ClipmapBuffer[I000 + AttributeOffsetZ]);
	const float3 V100 = float3(ClipmapBuffer[I100], ClipmapBuffer[I100 + AttributeOffsetY], ClipmapBuffer[I100 + AttributeOffsetZ]);
	const float3 V010 = float3(ClipmapBuffer[I010], ClipmapBuffer[I010 + AttributeOffsetY], ClipmapBuffer[I010 + AttributeOffsetZ]);
	const float3 V110 = float3(ClipmapBuffer[I110], ClipmapBuffer[I110 + AttributeOffsetY], ClipmapBuffer[I110 + AttributeOffsetZ]);
	const float3 V001 = float3(ClipmapBuffer[I001], ClipmapBuffer[I001 + AttributeOffsetY], ClipmapBuffer[I001 + AttributeOffsetZ]);
	const float3 V101 = float3(ClipmapBuffer[I101], ClipmapBuffer[I101 + AttributeOffsetY], ClipmapBuffer[I101 + AttributeOffsetZ]);
	const float3 V011 = float3(ClipmapBuffer[I011], ClipmapBuffer[I011 + AttributeOffsetY], ClipmapBuffer[I011 + AttributeOffsetZ]);
	const float3 V111 = float3(ClipmapBuffer[I111], ClipmapBuffer[I111 + AttributeOffsetY], ClipmapBuffer[I111 + AttributeOffsetZ]);
	const float3 V00 = lerp(V000, V100, SampleFraction.x);
	const float3 V01 = lerp(V001, V101, SampleFraction.x);
	const float3 V10 = lerp(V010, V110, SampleFraction.x);
	const float3 V11 = lerp(V011, V111, SampleFraction.x);
	const float3 V0 = lerp(V00, V10, SampleFraction.y);
	const float3 V1 = lerp(V01, V11, SampleFraction.y);
	return lerp(V0, V1, SampleFraction.z);
}
float PhysicsField_InterpolateScalar(in int3 SampleIndex, in float3 SampleFraction, in int ClipmapResolution,  in Buffer<float> ClipmapBuffer)
{
	int I000 = 0, I100 = 0, I010 = 0, I110 = 0, I001 = 0, I101 = 0, I011 = 0, I111 = 0;
	PhysicsField_ComputeVoxelIndices(SampleIndex, ClipmapResolution, I000, I100, I010, I110, I001, I101, I011, I111);
	const float V000 = ClipmapBuffer[I000];
	const float V100 = ClipmapBuffer[I100];
	const float V010 = ClipmapBuffer[I010];
	const float V110 = ClipmapBuffer[I110];
	const float V001 = ClipmapBuffer[I001];
	const float V101 = ClipmapBuffer[I101];
	const float V011 = ClipmapBuffer[I011];
	const float V111 = ClipmapBuffer[I111];
	const float V00 = lerp(V000, V100, SampleFraction.x);
	const float V01 = lerp(V001, V101, SampleFraction.x);
	const float V10 = lerp(V010, V110, SampleFraction.x);
	const float V11 = lerp(V011, V111, SampleFraction.x);
	const float V0 = lerp(V00, V10, SampleFraction.y);
	const float V1 = lerp(V01, V11, SampleFraction.y);
	return lerp(V0, V1, SampleFraction.z);
}
void PhysicsField_GetSamplingInfos(in float3 LocalPosition, in int TargetIndex, 
			in float ClipmapDistance, in int ClipmapExponent, in int ClipmapCount, in int ClipmapResolution, out int3 SampleIndex, out float3 SampleFraction)
{
	const int ClipmapIndex = PhysicsField_GetClipmapIndex(LocalPosition, ClipmapDistance, ClipmapExponent, ClipmapCount);
	const float3 SampleUV = PhysicsField_ComputeSampleUV(LocalPosition, ClipmapIndex, ClipmapDistance, ClipmapExponent, ClipmapCount);
	float3 SampleVoxel = SampleUV * float3(ClipmapResolution - 1, ClipmapResolution - 1, ClipmapResolution - 1);
	SampleVoxel.z += (ClipmapCount * TargetIndex + ClipmapIndex) * ClipmapResolution;
	SampleIndex = floor(SampleVoxel);
	SampleFraction = SampleVoxel - SampleIndex;
}
float3 PhysicsField_SamplePhysicsVectorField(in float3 WorldPosition, in int VectorTarget, in int4 VectorTargets[32], in int TargetCount, in float3 ClipmapCenter,
			in float ClipmapDistance, in int ClipmapExponent, in int ClipmapCount, in int ClipmapResolution, in Buffer<float> ClipmapBuffer)
{
	const float3 LocalPosition = WorldPosition - ClipmapCenter;
	float3 FieldValue = float3(0, 0, 0);
	if (VectorTarget != -1 && VectorTarget < 32 && all(abs(LocalPosition) < float3(ClipmapDistance, ClipmapDistance, ClipmapDistance)))
	{
		const int TargetIndex = VectorTargets[VectorTarget].x;
		if (TargetIndex != -1)
		{
			int3 SampleIndex = int3(0, 0, 0);
			float3 SampleFraction = float3(0, 0, 0);
			PhysicsField_GetSamplingInfos(LocalPosition, TargetIndex, ClipmapDistance, ClipmapExponent, ClipmapCount, ClipmapResolution, SampleIndex, SampleFraction);
			FieldValue = PhysicsField_InterpolateVector(SampleIndex, SampleFraction, ClipmapResolution, ClipmapBuffer, ClipmapCount);
		}
	}
	return FieldValue;
}
float PhysicsField_SamplePhysicsScalarField(in float3 WorldPosition, in int ScalarTarget, in int4 ScalarTargets[32], in int TargetCount, in float3 ClipmapCenter,
			in float ClipmapDistance, in int ClipmapExponent, in int ClipmapCount, in int ClipmapResolution, in Buffer<float> ClipmapBuffer)
{
	const float3 LocalPosition = WorldPosition - ClipmapCenter;
	float FieldValue = 0.0;
	if (ScalarTarget != -1 && ScalarTarget < 32 && all(abs(LocalPosition) < float3(ClipmapDistance, ClipmapDistance, ClipmapDistance)))
	{
		const int TargetIndex = ScalarTargets[ScalarTarget].y;
		if (TargetIndex != -1)
		{
			int3 SampleIndex = int3(0, 0, 0);
			float3 SampleFraction = float3(0, 0, 0);
			PhysicsField_GetSamplingInfos(LocalPosition, TargetIndex, ClipmapDistance, ClipmapExponent, ClipmapCount, ClipmapResolution, SampleIndex, SampleFraction);
			FieldValue = PhysicsField_InterpolateScalar(SampleIndex, SampleFraction, ClipmapResolution, ClipmapBuffer);
		}
	}
	return FieldValue;
}
int PhysicsField_SamplePhysicsIntegerField(in float3 WorldPosition, in int IntegerTarget, in int4 IntegerTargets[32], in int TargetCount, in float3 ClipmapCenter,
			in float ClipmapDistance, in int ClipmapExponent, in int ClipmapCount, in int ClipmapResolution, in Buffer<float> ClipmapBuffer)
{
	const float3 LocalPosition = WorldPosition - ClipmapCenter;
	int FieldValue = 0.0;
	if (IntegerTarget != -1 && IntegerTarget < 32 && all(abs(LocalPosition) < float3(ClipmapDistance, ClipmapDistance, ClipmapDistance)))
	{
		const int TargetIndex = IntegerTargets[IntegerTarget].z;
		if (TargetIndex != -1)
		{
			int3 SampleIndex = int3(0, 0, 0);
			float3 SampleFraction = float3(0, 0, 0);
			PhysicsField_GetSamplingInfos(LocalPosition, TargetIndex, ClipmapDistance, ClipmapExponent, ClipmapCount, ClipmapResolution, SampleIndex, SampleFraction);
			FieldValue = PhysicsField_InterpolateScalar(SampleIndex, SampleFraction, ClipmapResolution, ClipmapBuffer);
		}
	}
	return FieldValue;
}
float3 MatPhysicsField_SamplePhysicsVectorField(float3 WorldPosition, int VectorTarget)
{
	return PhysicsField_SamplePhysicsVectorField(WorldPosition, VectorTarget, View_PhysicsFieldTargets, View_PhysicsFieldTargetCount, View_PhysicsFieldClipmapCenter, View_PhysicsFieldClipmapDistance,
				View_PhysicsFieldClipmapExponent, View_PhysicsFieldClipmapCount, View_PhysicsFieldClipmapResolution, View_PhysicsFieldClipmapBuffer);
}
float MatPhysicsField_SamplePhysicsScalarField(float3 WorldPosition, int ScalarTarget)
{
	return PhysicsField_SamplePhysicsScalarField(WorldPosition, ScalarTarget, View_PhysicsFieldTargets, View_PhysicsFieldTargetCount, View_PhysicsFieldClipmapCenter, View_PhysicsFieldClipmapDistance,
				View_PhysicsFieldClipmapExponent, View_PhysicsFieldClipmapCount, View_PhysicsFieldClipmapResolution, View_PhysicsFieldClipmapBuffer);
}
int MatPhysicsField_SamplePhysicsIntegerField(float3 WorldPosition, int IntegerTarget)
{
	return PhysicsField_SamplePhysicsIntegerField(WorldPosition, IntegerTarget, View_PhysicsFieldTargets, View_PhysicsFieldTargetCount, View_PhysicsFieldClipmapCenter, View_PhysicsFieldClipmapDistance,
				View_PhysicsFieldClipmapExponent, View_PhysicsFieldClipmapCount, View_PhysicsFieldClipmapResolution, View_PhysicsFieldClipmapBuffer);
}
float2 UnitVectorToOctahedron( float3 N )
{
	N.xy /= dot( 1, abs(N) );
	if( N.z <= 0 )
	{
		N.xy = ( 1 - abs(N.yx) ) *  select_internal( N.xy >= 0 , float2(1,1) , float2(-1,-1) );
	}
	return N.xy;
}
float3 OctahedronToUnitVector( float2 Oct )
{
	float3 N = float3( Oct, 1 - dot( 1, abs(Oct) ) );
	float t = max( -N.z, 0 );
	N.xy +=  select_internal( N.xy >= 0 , float2(-t, -t) , float2(t, t) );
	return normalize(N);
}
float2 UnitVectorToHemiOctahedron( float3 N )
{
	N.xy /= dot( 1, abs(N) );
	return float2( N.x + N.y, N.x - N.y );
}
float3 HemiOctahedronToUnitVector( float2 Oct )
{
	Oct = float2( Oct.x + Oct.y, Oct.x - Oct.y );
	float3 N = float3( Oct, 2.0 - dot( 1, abs(Oct) ) );
	return normalize(N);
}
uint2 OctahedralMapWrapBorder(uint2 TexelCoord, uint Resolution, uint BorderSize)
{
	if (TexelCoord.x < BorderSize)
	{
		TexelCoord.x = BorderSize - 1 + BorderSize - TexelCoord.x;
		TexelCoord.y = Resolution - 1 - TexelCoord.y;
	}
	if (TexelCoord.x >= Resolution - BorderSize)
	{
		TexelCoord.x = (Resolution - BorderSize) - (TexelCoord.x - (Resolution - BorderSize - 1));
		TexelCoord.y = Resolution - 1 - TexelCoord.y;
	}
	if (TexelCoord.y < BorderSize)
	{
		TexelCoord.y = BorderSize - 1 + BorderSize - TexelCoord.y;
		TexelCoord.x = Resolution - 1 - TexelCoord.x;
	}
	if (TexelCoord.y >= Resolution - BorderSize)
	{
		TexelCoord.y = (Resolution - BorderSize) - (TexelCoord.y - (Resolution - BorderSize - 1));
		TexelCoord.x = Resolution - 1 - TexelCoord.x;
	}
	return TexelCoord - BorderSize;
}
float ComputeSphericalExcess(float3 A, float3 B, float3 C) {
    float CosAB = dot(A, B);
    float SinAB = 1.0f - CosAB * CosAB;
    float CosBC = dot(B, C);
    float SinBC = 1.0f - CosBC * CosBC;
    float CosCA = dot(C, A);
    float CosC = CosCA - CosAB * CosBC;
    float SinC = sqrt(SinAB * SinBC - CosC * CosC);
    float Inv = (1.0f - CosAB) * (1.0f - CosBC);
	return 2.0f * atan2(SinC, sqrt((SinAB * SinBC * (1.0f + CosBC) * (1.0f + CosAB)) / Inv) + CosC);
}
float OctahedralSolidAngle(float2 TexelCoord, float InvResolution)
{
	float3 Direction10 = OctahedronToUnitVector((TexelCoord + float2(.5f, -.5f) * InvResolution) * 2.0f - 1.0f);
	float3 Direction01 = OctahedronToUnitVector((TexelCoord + float2(-.5f, .5f) * InvResolution) * 2.0f - 1.0f);
	float SolidAngle0 = ComputeSphericalExcess(
		OctahedronToUnitVector((TexelCoord + float2(-.5f, -.5f) * InvResolution) * 2.0f - 1.0f), 
		Direction10,
		Direction01);
	float SolidAngle1 = ComputeSphericalExcess(
		OctahedronToUnitVector((TexelCoord + float2(.5f, .5f) * InvResolution) * 2.0f - 1.0f), 
		Direction01,
		Direction10);
	return SolidAngle0 + SolidAngle1;
}
uint CountBits( uint2 Bits )
{
	return countbits( Bits.x ) + countbits( Bits.y );
}
	static const uint InstanceTransformSizeFloat4Count = 3u; 
struct FPrimitiveSceneData
{
	uint		Flags;
	uint		VisibilityFlags;
	int			InstanceSceneDataOffset; 
	int			NumInstanceSceneDataEntries;
	int			PersistentPrimitiveIndex;
	uint		SingleCaptureIndex; 
	float3		PositionHigh;
	uint		PrimitiveComponentId; 
	FDFMatrix	LocalToWorld;
	FDFInverseMatrix WorldToLocal;
	FDFMatrix	PreviousLocalToWorld;
	FDFInverseMatrix PreviousWorldToLocal;
	float4x4	WorldToPreviousWorld; 
	float3		InvNonUniformScale;
	float		ObjectBoundsX;
	FDFVector3	ObjectWorldPosition;
	FDFVector3	ActorWorldPosition;
	float		MinMaterialDisplacement;
	float		MaxMaterialDisplacement;
	FLWCVector3	ObjectWorldPositionTO;
	FLWCVector3	ActorWorldPositionTO;
	float		ObjectRadius;
	uint		LightmapUVIndex;   
	float3		ObjectOrientation; 
	uint		LightmapDataIndex; 
	float4		NonUniformScale;
	float3		PreSkinnedLocalBoundsMin;
	uint		NaniteResourceID;
	float3		PreSkinnedLocalBoundsMax;
	uint		NaniteHierarchyOffset;
	float3		LocalObjectBoundsMin;
	float		ObjectBoundsY;
	float3		LocalObjectBoundsMax;
	float		ObjectBoundsZ;
	uint		InstancePayloadDataOffset;
	uint		InstancePayloadDataStride;
	uint		InstancePayloadExtensionSize;
	float3		InstanceLocalBoundsCenter;
	float3		InstanceLocalBoundsExtent;
	float3		WireframeColor; 
	float3		PrimitiveColor; 
	uint		PackedNaniteFlags;
	float2 		InstanceDrawDistanceMinMaxSquared;
	float		InstanceWPODisableDistanceSquared;
	uint		NaniteRayTracingDataOffset;
	float		MaxWPOExtent;
	uint		CustomStencilValueAndMask;
	float		PixelProgrammableDistanceSquared;
	float		MaterialDisplacementFadeOutSize;
	uint2		MeshPaintTextureDescriptor;
	float4		CustomPrimitiveData[9u]; 
};
float3 UnpackColorRGB24(float PackedColorFloat)
{
	uint PackedColor = asuint(PackedColorFloat);
	return float3
	(
		float((PackedColor >> 24u) & 0xFF),
		float((PackedColor >> 16u) & 0xFF),
		float((PackedColor >>  8u) & 0xFF)
	) * (1.0f / 255.0f);
}
FPrimitiveSceneData GetPrimitiveDataFromUniformBuffer()
{
	FPrimitiveSceneData PrimitiveData;
	PrimitiveData.Flags								= Primitive_Flags;
	PrimitiveData.VisibilityFlags					= Primitive_VisibilityFlags;
	PrimitiveData.InstanceSceneDataOffset			= Primitive_InstanceSceneDataOffset;
	PrimitiveData.NumInstanceSceneDataEntries		= Primitive_NumInstanceSceneDataEntries;
	PrimitiveData.SingleCaptureIndex				= Primitive_SingleCaptureIndex;
	PrimitiveData.PositionHigh						= Primitive_PositionHigh;
	PrimitiveData.PrimitiveComponentId				= Primitive_PrimitiveComponentId;
	PrimitiveData.LocalToWorld						= MakeDFMatrix4x3(Primitive_PositionHigh, Primitive_LocalToRelativeWorld);
	PrimitiveData.WorldToLocal						= MakeDFInverseMatrix4x3(Primitive_PositionHigh, Primitive_RelativeWorldToLocal);
	PrimitiveData.PreviousLocalToWorld				= MakeDFMatrix4x3(Primitive_PositionHigh, Primitive_PreviousLocalToRelativeWorld);
	PrimitiveData.PreviousWorldToLocal				= MakeDFInverseMatrix4x3(Primitive_PositionHigh, Primitive_PreviousRelativeWorldToLocal);
	PrimitiveData.WorldToPreviousWorld				= Primitive_WorldToPreviousWorld;
	PrimitiveData.InvNonUniformScale				= Primitive_InvNonUniformScale;
	PrimitiveData.ObjectBoundsX						= Primitive_ObjectBoundsX;
	PrimitiveData.ObjectRadius						= Primitive_ObjectWorldPositionHighAndRadius.w;
	PrimitiveData.ObjectWorldPositionTO				= MakeLWCVector3(Primitive_ObjectWorldPositionHighAndRadius.xyz, Primitive_ObjectWorldPositionLow.xyz);
	PrimitiveData.ActorWorldPositionTO				= MakeLWCVector3(Primitive_ActorWorldPositionHigh.xyz, Primitive_ActorWorldPositionLow.xyz);
	PrimitiveData.ObjectWorldPosition				= DFFromTileOffset(PrimitiveData.ObjectWorldPositionTO);
	PrimitiveData.ActorWorldPosition				= DFFromTileOffset(PrimitiveData.ActorWorldPositionTO);
	PrimitiveData.LightmapUVIndex					= Primitive_LightmapUVIndex;
	PrimitiveData.ObjectOrientation					= Primitive_ObjectOrientation;
	PrimitiveData.LightmapDataIndex					= Primitive_LightmapDataIndex;
	PrimitiveData.NonUniformScale					= Primitive_NonUniformScale;
	PrimitiveData.PreSkinnedLocalBoundsMin			= Primitive_PreSkinnedLocalBoundsMin;
	PrimitiveData.NaniteResourceID					= Primitive_NaniteResourceID;
	PrimitiveData.PreSkinnedLocalBoundsMax			= Primitive_PreSkinnedLocalBoundsMax;
	PrimitiveData.NaniteHierarchyOffset				= Primitive_NaniteHierarchyOffset;
	PrimitiveData.LocalObjectBoundsMin				= Primitive_LocalObjectBoundsMin;
	PrimitiveData.ObjectBoundsY						= Primitive_ObjectBoundsY;
	PrimitiveData.LocalObjectBoundsMax				= Primitive_LocalObjectBoundsMax;
	PrimitiveData.ObjectBoundsZ						= Primitive_ObjectBoundsZ;
	PrimitiveData.InstancePayloadDataOffset			= Primitive_InstancePayloadDataOffset;
	PrimitiveData.InstancePayloadDataStride			= Primitive_InstancePayloadDataStride;
	PrimitiveData.InstancePayloadExtensionSize		= Primitive_InstancePayloadExtensionSize;
	PrimitiveData.InstanceLocalBoundsCenter			= Primitive_InstanceLocalBoundsCenter;
	PrimitiveData.InstanceLocalBoundsExtent			= Primitive_InstanceLocalBoundsExtent;
	PrimitiveData.WireframeColor					= UnpackColorRGB24(Primitive_WireframeAndPrimitiveColor.x);
	PrimitiveData.PrimitiveColor					= UnpackColorRGB24(Primitive_WireframeAndPrimitiveColor.y);
	PrimitiveData.PackedNaniteFlags					= Primitive_PackedNaniteFlags;
	PrimitiveData.InstanceDrawDistanceMinMaxSquared	= Primitive_InstanceDrawDistanceMinMaxSquared;
	PrimitiveData.InstanceWPODisableDistanceSquared	= Primitive_InstanceWPODisableDistanceSquared;
	PrimitiveData.PersistentPrimitiveIndex			= Primitive_PersistentPrimitiveIndex;
	PrimitiveData.NaniteRayTracingDataOffset		= Primitive_NaniteRayTracingDataOffset;
	PrimitiveData.MaxWPOExtent						= Primitive_MaxWPOExtent;
	PrimitiveData.MinMaterialDisplacement			= Primitive_MinMaterialDisplacement;
	PrimitiveData.MaxMaterialDisplacement			= Primitive_MaxMaterialDisplacement;
	PrimitiveData.CustomStencilValueAndMask			= Primitive_CustomStencilValueAndMask;
	PrimitiveData.PixelProgrammableDistanceSquared	= Primitive_PixelProgrammableDistanceSquared;
	PrimitiveData.MaterialDisplacementFadeOutSize	= Primitive_MaterialDisplacementFadeOutSize;
	PrimitiveData.MeshPaintTextureDescriptor		= Primitive_MeshPaintTextureDescriptor;
	[unroll]
	for (uint DataIndex = 0; DataIndex < 9u; ++DataIndex)
	{
		PrimitiveData.CustomPrimitiveData[DataIndex] = Primitive_CustomPrimitiveData[DataIndex];
	}
	return PrimitiveData;
}
struct FInstanceSceneEditorData
{
	float3 HitProxyId;
	uint   HitProxyPacked;
	bool bIsSelected;
};
struct FInstanceSceneData
{
	FDFMatrix LocalToWorld;
	FDFMatrix PrevLocalToWorld;
	FDFInverseMatrix WorldToLocal;
	float4   NonUniformScale;
	float3   InvNonUniformScale;
	float    DeterminantSign;
	float3   LocalBoundsCenter;
	uint     PrimitiveId;
	uint     RelativeId;
	uint     PayloadDataOffset;
	uint     PayloadExtensionOffset;
	uint     PayloadExtensionSize;
	float3   LocalBoundsExtent;
	uint     LastUpdateSceneFrameNumber;
	uint     NaniteRuntimeResourceID;
	uint     NaniteHierarchyOffset;
	uint     SkinningData;
	float    RandomID;
	float4   LightMapAndShadowMapUVBias;
	bool     ValidInstance;
	uint     Flags;
	FInstanceSceneEditorData EditorData;
};
float4 LoadPrimitivePrimitiveSceneDataElement(uint PrimitiveIndex, uint ItemIndex)
{
	uint TargetIdx = PrimitiveIndex + ItemIndex;
	 { };
	return Scene_GPUScene_GPUScenePrimitiveSceneData[TargetIdx];
}
FPrimitiveSceneData GetPrimitiveData(uint PrimitiveId)
{
	FPrimitiveSceneData PrimitiveData = (FPrimitiveSceneData)0;
	uint PrimitiveIndex = PrimitiveId * 43;
	float3 PositionHigh = LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 1).xyz;
	const float4x4 LocalToWorld = transpose(float4x4(
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 2),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 3),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 4),
		float4(0, 0, 0, 1)
	));
	const float4x4 PreviousLocalToWorld = transpose(float4x4(
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 8),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 9),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 10),
		float4(0, 0, 0, 1)
	));
	const float4x4 WorldToLocal = transpose(float4x4(
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 5),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 6),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 7),
		float4(0, 0, 0, 1)
	));
	const float4x4 PreviousWorldToLocal = transpose(float4x4(
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 11),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 12),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 13),
		float4(0, 0, 0, 1)
	));
	const float4x4 WorldToPreviousWorld = transpose(float4x4(
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 14),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 15),
		LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 16),
		float4(0, 0, 0, 1)
	));
	float4 ObjectWorldPositionHighAndRadius	= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 18);
	float4 ObjectWorldPositionLow			= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 19);
	float4 ActorWorldPositionHigh	= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 20);
	float4 ActorWorldPositionLow	= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 21);
	PrimitiveData.Flags									= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 0).x);
	PrimitiveData.InstanceSceneDataOffset				= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 0).y);
	PrimitiveData.NumInstanceSceneDataEntries			= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 0).z);
	PrimitiveData.SingleCaptureIndex					= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 0).w) & 0xFFFFu;
	PrimitiveData.VisibilityFlags						= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 0).w) >> 16u;
	PrimitiveData.PositionHigh							= PositionHigh; 
	PrimitiveData.PrimitiveComponentId					= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 1).w);
	PrimitiveData.LocalToWorld							= MakeDFMatrix4x3(PositionHigh, LocalToWorld);
	PrimitiveData.WorldToLocal							= MakeDFInverseMatrix4x3(PositionHigh, WorldToLocal);
	PrimitiveData.PreviousLocalToWorld					= MakeDFMatrix4x3(PositionHigh, PreviousLocalToWorld);
	PrimitiveData.PreviousWorldToLocal					= MakeDFInverseMatrix4x3(PositionHigh, PreviousWorldToLocal);
	PrimitiveData.WorldToPreviousWorld					= WorldToPreviousWorld;
	PrimitiveData.InvNonUniformScale					= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 17).xyz;
	PrimitiveData.ObjectBoundsX							= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 17).w;
	PrimitiveData.ObjectRadius							= ObjectWorldPositionHighAndRadius.w;
	PrimitiveData.ObjectWorldPositionTO					= MakeLWCVector3(ObjectWorldPositionHighAndRadius.xyz, ObjectWorldPositionLow.xyz);
	PrimitiveData.ActorWorldPositionTO					= MakeLWCVector3(ActorWorldPositionHigh.xyz, ActorWorldPositionLow.xyz);
	PrimitiveData.ObjectWorldPosition					= DFFromTileOffset(PrimitiveData.ObjectWorldPositionTO);
	PrimitiveData.ActorWorldPosition					= DFFromTileOffset(PrimitiveData.ActorWorldPositionTO);
	PrimitiveData.MinMaterialDisplacement				= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 19).w;
	PrimitiveData.MaxMaterialDisplacement				= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 20).w;
	PrimitiveData.LightmapUVIndex						= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 21).w);
	PrimitiveData.ObjectOrientation						= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 22).xyz;
	PrimitiveData.LightmapDataIndex						= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 22).w);
	PrimitiveData.NonUniformScale						= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 23);
	PrimitiveData.PreSkinnedLocalBoundsMin				= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 24).xyz;
	PrimitiveData.NaniteResourceID						= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 24).w);
	PrimitiveData.PreSkinnedLocalBoundsMax				= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 25).xyz;
	PrimitiveData.NaniteHierarchyOffset					= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 25).w);
	PrimitiveData.LocalObjectBoundsMin					= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 26).xyz;
	PrimitiveData.ObjectBoundsY							= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 26).w;
	PrimitiveData.LocalObjectBoundsMax					= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 27).xyz;
	PrimitiveData.ObjectBoundsZ							= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 27).w;
	PrimitiveData.InstanceLocalBoundsCenter				= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 28).xyz;
	PrimitiveData.InstancePayloadDataOffset				= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 28).w);
	PrimitiveData.InstanceLocalBoundsExtent				= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 29).xyz;
	PrimitiveData.InstancePayloadDataStride				= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 29).w) & 0x00FFFFFFu;
	PrimitiveData.InstancePayloadExtensionSize			= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 29).w) >> 24;
	PrimitiveData.WireframeColor						= UnpackColorRGB24(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 30).x);
	PrimitiveData.PrimitiveColor						= UnpackColorRGB24(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 30).y);
	PrimitiveData.PackedNaniteFlags						= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 30).z);
	PrimitiveData.PersistentPrimitiveIndex				= asint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 30).w);
	PrimitiveData.InstanceDrawDistanceMinMaxSquared		= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 31).xy;
	PrimitiveData.InstanceWPODisableDistanceSquared		= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 31).z;
	PrimitiveData.NaniteRayTracingDataOffset			= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 31).w);
	PrimitiveData.MaxWPOExtent							= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 32).x;
	PrimitiveData.CustomStencilValueAndMask				= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 32).y);
	PrimitiveData.PixelProgrammableDistanceSquared		= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 32).z;
	PrimitiveData.MaterialDisplacementFadeOutSize		= LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 32).w;
	PrimitiveData.MeshPaintTextureDescriptor			= asuint(LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex, 33).xy);
	[unroll]
	for (uint DataIndex = 0; DataIndex < 9u; ++DataIndex)
	{
		PrimitiveData.CustomPrimitiveData[DataIndex] = LoadPrimitivePrimitiveSceneDataElement(PrimitiveIndex,  34 + DataIndex);
	}
	return PrimitiveData;
}
float GetPrimitive_DeterminantSign_FromFlags(uint Flags)
{
	return CondMask(Flags & 0x40, -1.0f, 1.0f);
}
float GetPrimitive_DeterminantSign(uint PrimitiveId)
{
	return GetPrimitive_DeterminantSign_FromFlags(GetPrimitiveData(PrimitiveId).Flags);
}
float GetPrimitive_DeterminantSign(FPrimitiveSceneData Primitive)
{
	return GetPrimitive_DeterminantSign_FromFlags(Primitive_Flags);
}
float GetPrimitive_PerObjectGBufferData_FromFlags(uint Flags)
{
	const float CapsuleRepresentation = CondMask(Flags & 0x100, 1.0f, 0.0f);
	const float CastContactShadow     = CondMask(Flags & 0x200,    1.0f, 0.0f);
	return (2.0f * CapsuleRepresentation + CastContactShadow) / 3.0f;
}
float GetPrimitive_PerObjectGBufferData(uint PrimitiveId)
{
	return GetPrimitive_PerObjectGBufferData_FromFlags(GetPrimitiveData(PrimitiveId).Flags);
}
float GetPrimitive_PerObjectGBufferData(FPrimitiveSceneData Primitive)
{
	return GetPrimitive_PerObjectGBufferData_FromFlags(Primitive_Flags);
}
uint GetPrimitive_LightingChannelMask_FromFlags(uint Flags)
{
	const uint Channel0 = CondMask(Flags & 0x800, 1u, 0u);
	const uint Channel1 = CondMask(Flags & 0x1000, 1u, 0u);
	const uint Channel2 = CondMask(Flags & 0x2000, 1u, 0u);
	return (Channel0 | (Channel1 << 1u) | (Channel2 << 2u));
}
uint GetPrimitive_LightingChannelMask(uint PrimitiveId)
{
	return GetPrimitive_LightingChannelMask_FromFlags(GetPrimitiveData(PrimitiveId).Flags);
}
uint GetPrimitive_LightingChannelMask(FPrimitiveSceneData Primitive)
{
	return GetPrimitive_LightingChannelMask_FromFlags(Primitive_Flags);
}
float3 UnpackHitProxyId(uint HitProxyPacked)
{
	return float3
	(
		float((HitProxyPacked       ) & 0xFF),
		float((HitProxyPacked >>  8u) & 0xFF),
		float((HitProxyPacked >> 16u) & 0xFF)
	) * (1.0f / 255.0f);
}
struct FInstancePayloadDataOffsets
{
	uint HierarchyOffset;
	uint EditorData;
	uint LocalBounds;
	uint DynamicData;
	uint SkinningData;
	uint LightShadowUVBias;
	uint PayloadExtension;
	uint CustomData;
};
uint GetGPUSceneFrameNumber()
{
	return Scene_GPUScene_GPUSceneFrameNumber;
}
float4 LoadInstanceSceneDataElement(uint Index)
{
	return Scene_GPUScene_GPUSceneInstanceSceneData[Index];
}
float4 LoadInstancePayloadDataElement(uint Index)
{
	return Scene_GPUScene_GPUSceneInstancePayloadData[Index];
}
float4 LoadInstancePayloadExtensionElement(FInstanceSceneData InstanceData, uint Index)
{
	 { };
	return LoadInstancePayloadDataElement(InstanceData.PayloadExtensionOffset + Index);
}
float4 LoadInstanceCustomDataElement(FInstanceSceneData SceneData, uint Float4Index)
{
	return (float4)0.0f;
}
float LoadInstanceCustomDataFloat(FInstanceSceneData SceneData, uint FloatIndex)
{
	return 0.0f;
}
void GetHemiOrthoBasis( inout float3 BasisX, inout float3 BasisY, float3 BasisZ )
{
	float A = 1.0f / ( 1.0f + BasisZ.z );
	float B = -BasisZ.x * BasisZ.y * A;
	BasisX = float3( 1.0f - BasisZ.x * BasisZ.x * A, B, -BasisZ.x );
	BasisY = float3( B, 1.0f - BasisZ.y * BasisZ.y * A, -BasisZ.y );
}
uint4 EncodeScaleAndRotation(float3 Scale, float3x3 Axis)
{
	const uint ExpBits			= 8;
	const uint ExpBias			= ( 1u << (ExpBits - 1) ) - 1;
	const uint SignMantissaBits	= 16;
	const uint SignMantissaMask	= (1u << SignMantissaBits) - 1;
	const uint MantissaBits		= SignMantissaBits - 1;
	const float Sqrt2 			= 1.41421356f;
	uint4 Output;
	{
		if( Axis[2].z < 0.0f )
		{
			Axis[2] *= -1.0f;
			Scale.z *= -1.0f;
		}
		float2 OctZ = UnitVectorToHemiOctahedron( Axis[2] );
		float3 BasisX, BasisY;
		GetHemiOrthoBasis( BasisX, BasisY, Axis[2] );
		float X = dot(Axis[0], BasisX);
		float Y = dot(Axis[0], BasisY);
		float aX = abs( X );
		float aY = abs( Y );
		bool bSpinIsX = aX < aY;
		float Spin0 = bSpinIsX ? X : Y;
		float Spin1 = bSpinIsX ? Y : X;
		float Sign1 = Spin1 < 0.0f ? -1.0f : 1.0f;
		Scale.x *= Sign1;
		Spin0	*= Sign1;
		float3 GeneratedY = cross(Axis[2], Axis[0]);
		Scale.y *= dot( Axis[1], GeneratedY ) < 0.0f ? -Sign1 : Sign1;
		Output.x  = (((int)round( OctZ.x * 32767.0f ) + 32768) & 0xFFFF) <<  0;
		Output.x |= (((int)round( OctZ.y * 32767.0f ) + 32768) & 0xFFFF) << 16;
		Output.y  = ((int)round( Spin0 * 16383.0f * Sqrt2 ) + 16384); 
		Output.y |=	bSpinIsX ? (1u << 15) : 0;
	}
	{
		float MaxComponent = max3(abs(Scale.x), abs(Scale.y), abs(Scale.z));
		uint MaxComponentExponent = (asuint(MaxComponent) & 0x7f800000u) >> 23;
		uint SharedExp = MaxComponentExponent + 1;
		float ExpScale = asfloat(((127 + ExpBias + MantissaBits - SharedExp) & 0xFFu) << 23);
		if( (uint)round( MaxComponent * ExpScale ) == (1u << MantissaBits) )
		{
			SharedExp++;
			ExpScale *= 0.5f;
		}
		Output.z  = (((int)round( Scale.x * ExpScale ) + (1u << MantissaBits)) & 0xFFFFu) <<  0;
		Output.z |= (((int)round( Scale.y * ExpScale ) + (1u << MantissaBits)) & 0xFFFFu) << 16;
		Output.w  = (((int)round( Scale.z * ExpScale ) + (1u << MantissaBits)) & 0xFFFFu) <<  0;
		Output.w |= SharedExp << 16;		
	}
	return Output;
}
uint4 EncodeScaleAndRotation( float3x3 InTransform )
{
	float3 Scale = {
		length(InTransform[0]),
		length(InTransform[1]),
		length(InTransform[2])
	};
	float3x3 Axis = {
		InTransform[0] / Scale.x,
		InTransform[1] / Scale.y,
		InTransform[2] / Scale.z
	};
	return EncodeScaleAndRotation(Scale, Axis);
}
void EncodeTransform( float4x4 InTransform, inout uint4 OutRotationScale, inout float3 OutTranslation )
{
	OutRotationScale = EncodeScaleAndRotation((float3x3)InTransform);
	OutTranslation = InTransform[3].xyz;
}
float4x4 DecodeTransform( uint4 RotationScale, float3 Translation, inout float3 Scale )
{
	float4x4 M = 0.0;
	M[3].xyz = Translation;
	M[3].w = 1.0;
	{
		float3 Rotation =
		{
			( RotationScale[0] >>  0 ) & 0xffff,
			( RotationScale[0] >> 16 ) & 0xffff,
			( RotationScale[1] >>  0 ) & 0x7fff
		};
		float2 OctZ  = ( Rotation.xy - 32768 ) * (1.0f / 32767.0f);
		float Spin0  = ( Rotation.z  - 16384 ) * (0.70710678f / 16383.0f);	
		bool bSpinIsX = RotationScale[1] & 0x8000;
		M[2].xyz = HemiOctahedronToUnitVector( OctZ );
		float3 BasisX, BasisY;
		GetHemiOrthoBasis( BasisX, BasisY, M[2].xyz );
		float Spin1 = sqrt( 1.0f - Spin0 * Spin0 );
		float X = bSpinIsX ? Spin0 : Spin1;
		float Y = bSpinIsX ? Spin1 : Spin0;
		M[0].xyz = BasisX * X + BasisY * Y;
		M[1].xyz = cross( M[2].xyz, M[0].xyz );
	}
	{
		const uint SignMantissaBits	= 16;
		const uint SignMantissaMask	= (1u << SignMantissaBits) - 1;
		const uint MantissaBits		= SignMantissaBits - 1;
		uint SharedExp = RotationScale[3] >> 16;
		float ExpScale = asfloat( ( SharedExp - MantissaBits ) << 23 );
		uint3 Mantissa =
		{
			RotationScale[2] >> 0,
			RotationScale[2] >> 16,
			RotationScale[3] >> 0
		};
		Mantissa &= SignMantissaMask;
		Scale = Mantissa;
		Scale -= 1u << MantissaBits;
		Scale *= ExpScale;
		M[0] *= Scale[0];
		M[1] *= Scale[1];
		M[2] *= Scale[2];
	}
	return M;
}
void UnpackPrimitiveIdAndInstanceFlags(uint PackedPrimitiveIdAndFlags, inout uint OutPrimitiveId, inout uint OutInstanceFlags)
{
	OutPrimitiveId		= BitFieldExtractU32(PackedPrimitiveIdAndFlags, (20u),  0);
	OutInstanceFlags	= BitFieldExtractU32(PackedPrimitiveIdAndFlags, (12u), (20u));	
}
uint PackPrimitiveIdAndInstanceFlags(uint PrimitiveId, uint InstanceFlags)
{
	return (PrimitiveId & ((1u << (20u)) - 1u)) | (InstanceFlags << (20u));
}
void LoadInstancePrimitiveIdAndFlags(uint InstanceId, uint SOAStride, inout uint OutPrimitiveId, inout uint OutInstanceFlags)
{
	const uint PackedPrimitiveIdAndFlags = asuint(LoadInstanceSceneDataElement(0 * SOAStride + InstanceId).x);
	UnpackPrimitiveIdAndInstanceFlags(PackedPrimitiveIdAndFlags, OutPrimitiveId, OutInstanceFlags);
}
void UnpackInstanceRelativeIdAndCustomDataCount(uint PackedRelativeIdAndCustomDataCount, inout uint OutRelativeId, inout uint OutCustomDataCount)
{
	OutRelativeId		= BitFieldExtractU32(PackedRelativeIdAndCustomDataCount, (24u),  0);
	OutCustomDataCount	= BitFieldExtractU32(PackedRelativeIdAndCustomDataCount, (8u), (24u));
}
uint PackInstanceRelativeIdAndCustomDataCount(uint RelativeId, uint CustomDataCount)
{
	return (RelativeId & ((1u << (24u)) - 1u)) | (CustomDataCount << (24u));
}
void LoadInstanceRelativeIdAndCustomDataCount(uint InstanceId, uint SOAStride, inout uint OutPrimitiveId, inout uint OutInstanceFlags)
{
	const uint PackedRelativeIdAndCustomDataCount = asuint(LoadInstanceSceneDataElement(0 * SOAStride + InstanceId).y);
	UnpackInstanceRelativeIdAndCustomDataCount(PackedRelativeIdAndCustomDataCount, OutPrimitiveId, OutInstanceFlags);
}
float GetInstanceDeterminantSignFromFlags(uint Flags)
{
	return CondMask(Flags & 0x1, -1.0f, 1.0f);
}
void SetInstanceDeterminantSignFlag(float Determinant, inout uint Flags)
{
	if (Determinant < 0.0f)
	{
		Flags |= 0x1;
	}
	else
	{
		Flags &= ~0x1;
	}
}
FInstancePayloadDataOffsets GetInstancePayloadDataOffsets(uint PrimitiveId, uint Flags, uint InstanceRelativeId)
{
	FPrimitiveSceneData PrimitiveData = GetPrimitiveData(PrimitiveId);
	const uint PayloadDataRelativeOffset	= InstanceRelativeId * PrimitiveData.InstancePayloadDataStride;
	const uint PayloadDataGlobalOffset		= PayloadDataRelativeOffset + PrimitiveData.InstancePayloadDataOffset;
	const bool bHasHierarchyOffset			= (Flags & 0x40) != 0u;
	const bool bHasLocalBounds				= (Flags & 0x80) != 0u;
	const bool bHasDynamicData				= (Flags & 0x8) != 0u;
	const bool bHasSkinningData				= (Flags & 0x10) != 0u;
	const bool bHasLightShadowUVBias		= (Flags & 0x20) != 0u;
	const bool bHasCustomData				= (Flags & 0x4) != 0u;
	const bool bHasPayloadExtension			= (Flags & 0x100) != 0u;
	const bool bHasEditorData				= (Flags & 0x200) != 0u;
	uint CurOffset = PayloadDataGlobalOffset;
	FInstancePayloadDataOffsets Offsets;
	Offsets.HierarchyOffset 	= (0xFFFFFFFFu);
	Offsets.EditorData 			= (0xFFFFFFFFu);
	Offsets.LocalBounds 		= (0xFFFFFFFFu);
	Offsets.DynamicData 		= (0xFFFFFFFFu);
	Offsets.SkinningData 		= (0xFFFFFFFFu);
	Offsets.LightShadowUVBias 	= (0xFFFFFFFFu);
	Offsets.PayloadExtension	= (0xFFFFFFFFu);
	Offsets.CustomData			= (0xFFFFFFFFu);
	if (bHasHierarchyOffset)
	{
		Offsets.HierarchyOffset = CurOffset;
	}
	if (bHasSkinningData)
	{
		Offsets.SkinningData = CurOffset;
	}
	if (bHasLocalBounds)
	{
		Offsets.LocalBounds = CurOffset;
	}
	CurOffset += CondMask(bHasLocalBounds, 2u, CondMask(bHasHierarchyOffset || bHasSkinningData, 1u, 0u));
	if (bHasDynamicData)
	{
		Offsets.DynamicData = CurOffset;
		CurOffset += InstanceTransformSizeFloat4Count;
	}
	if (bHasEditorData)
	{
		Offsets.EditorData = CurOffset;
		++CurOffset;
	}
	if (bHasLightShadowUVBias)
	{
		Offsets.LightShadowUVBias = CurOffset;
		++CurOffset;
	}
	if (bHasPayloadExtension)
	{
		Offsets.PayloadExtension = CurOffset;
		CurOffset += PrimitiveData.InstancePayloadExtensionSize;
	}
	if (bHasCustomData)
	{
		Offsets.CustomData = CurOffset;
	}
	return Offsets;
}
void ComputeInstanceDerivedData(inout FInstanceSceneData InstanceData, float3 PositionHigh, float4x4 LocalToRelativeWorld)
{
	float3 Scale2;
	Scale2.x = length2(LocalToRelativeWorld[0].xyz);
	Scale2.y = length2(LocalToRelativeWorld[1].xyz);
	Scale2.z = length2(LocalToRelativeWorld[2].xyz);
	InstanceData.InvNonUniformScale							= rsqrt(Scale2);
	InstanceData.NonUniformScale.xyz						= Scale2 * InstanceData.InvNonUniformScale;
	InstanceData.NonUniformScale.w							= max3( InstanceData.NonUniformScale.x, InstanceData.NonUniformScale.y, InstanceData.NonUniformScale.z );
	InstanceData.DeterminantSign							= GetInstanceDeterminantSignFromFlags(InstanceData.Flags);
	float4x4 RelativeWorldToLocal							= LocalToRelativeWorld;
	RelativeWorldToLocal[0].xyz							   *= Pow2(InstanceData.InvNonUniformScale.x);
	RelativeWorldToLocal[1].xyz					           *= Pow2(InstanceData.InvNonUniformScale.y);
	RelativeWorldToLocal[2].xyz					           *= Pow2(InstanceData.InvNonUniformScale.z);
	RelativeWorldToLocal[3].xyz						        = 0.0f;
	RelativeWorldToLocal								    = transpose(RelativeWorldToLocal);
	RelativeWorldToLocal[3].xyz						        = mul(float4(-LocalToRelativeWorld[3].xyz, 0.0f), RelativeWorldToLocal).xyz;
	InstanceData.WorldToLocal								= MakeDFInverseMatrix(PositionHigh, RelativeWorldToLocal);
}
FInstanceSceneData GetInstanceSceneData(uint InstanceId, uint SOAStride, bool bCheckValid = true)
{
	FInstanceSceneData InstanceData = (FInstanceSceneData)0;
	LoadInstancePrimitiveIdAndFlags(InstanceId, SOAStride, InstanceData.PrimitiveId, InstanceData.Flags);
	InstanceData.ValidInstance = InstanceData.PrimitiveId != ((1u << (20u)) - 1u) &&
								 ((InstanceData.Flags & 0x400) == 0u);
	[branch]
	if (!bCheckValid || InstanceData.ValidInstance)
	{
		uint CustomDataCount;
		LoadInstanceRelativeIdAndCustomDataCount(InstanceId, SOAStride, InstanceData.RelativeId, CustomDataCount);
		FInstancePayloadDataOffsets Offsets 	= GetInstancePayloadDataOffsets(InstanceData.PrimitiveId, InstanceData.Flags, InstanceData.RelativeId);
		InstanceData.LastUpdateSceneFrameNumber	= asuint(LoadInstanceSceneDataElement(0 * SOAStride + InstanceId).z);
		InstanceData.RandomID					= LoadInstanceSceneDataElement(0 * SOAStride + InstanceId).w;
		FPrimitiveSceneData PrimitiveData		= GetPrimitiveData(InstanceData.PrimitiveId);
		float3 PositionHigh 					= PrimitiveData.PositionHigh;
		float4x4 LocalToRelativeWorld			= transpose(
													float4x4(
														LoadInstanceSceneDataElement(1 * SOAStride + InstanceId),
														LoadInstanceSceneDataElement(2 * SOAStride + InstanceId),
														LoadInstanceSceneDataElement(3 * SOAStride + InstanceId),
														float4(0.0f, 0.0f, 0.0f, 1.0f)
													));
		InstanceData.LocalToWorld	= MakeDFMatrix(PositionHigh, LocalToRelativeWorld);
		ComputeInstanceDerivedData(InstanceData, PositionHigh, LocalToRelativeWorld);
		InstanceData.NaniteRuntimeResourceID	= PrimitiveData.NaniteResourceID;
		InstanceData.NaniteHierarchyOffset		= PrimitiveData.NaniteHierarchyOffset;
		[branch]
		if (Offsets.HierarchyOffset != (0xFFFFFFFFu))
		{
			const uint HierarchyRootOffset = asuint(LoadInstancePayloadDataElement(Offsets.HierarchyOffset)).x;
			InstanceData.NaniteHierarchyOffset += HierarchyRootOffset;
		}
		InstanceData.SkinningData = 0;
		[branch]
		if (Offsets.SkinningData != (0xFFFFFFFFu))
		{
			InstanceData.SkinningData = asuint(LoadInstancePayloadDataElement(Offsets.SkinningData)).y;
		}
		[branch]
		if (Offsets.EditorData != (0xFFFFFFFFu))
		{
			const uint PackedEditorData = asuint(LoadInstancePayloadDataElement(Offsets.EditorData)).x;
			InstanceData.EditorData.bIsSelected    = (PackedEditorData >> 24u) != 0;
			InstanceData.EditorData.HitProxyPacked =  PackedEditorData & 0x00FFFFFFu;
			InstanceData.EditorData.HitProxyId = UnpackHitProxyId(InstanceData.EditorData.HitProxyPacked);
		}
		[branch]
		if (Offsets.LocalBounds != (0xFFFFFFFFu))
		{
			InstanceData.LocalBoundsCenter = float3(LoadInstancePayloadDataElement(Offsets.LocalBounds + 0).zw, LoadInstancePayloadDataElement(Offsets.LocalBounds + 1).x);
			InstanceData.LocalBoundsExtent = LoadInstancePayloadDataElement(Offsets.LocalBounds + 1).yzw;
		}
		else
		{
			InstanceData.LocalBoundsCenter = PrimitiveData.InstanceLocalBoundsCenter;
			InstanceData.LocalBoundsExtent = PrimitiveData.InstanceLocalBoundsExtent;
		}
		[branch]
		if (Offsets.DynamicData != (0xFFFFFFFFu))
		{
			float4x4 PrevLocalToRelativeWorld	= transpose(
													float4x4(
														LoadInstancePayloadDataElement(Offsets.DynamicData + 0),
														LoadInstancePayloadDataElement(Offsets.DynamicData + 1),
														LoadInstancePayloadDataElement(Offsets.DynamicData + 2),
														float4(0.0f, 0.0f, 0.0f, 1.0f)
													));
			InstanceData.PrevLocalToWorld		= MakeDFMatrix(PositionHigh, PrevLocalToRelativeWorld);
		}
		else
		{
			InstanceData.PrevLocalToWorld = MakeDFMatrix(PositionHigh, mul(LocalToRelativeWorld, PrimitiveData.WorldToPreviousWorld));
		}
		[branch]
		if (Offsets.LightShadowUVBias != (0xFFFFFFFFu))
		{
			InstanceData.LightMapAndShadowMapUVBias = LoadInstancePayloadDataElement(Offsets.LightShadowUVBias);
		}
		InstanceData.PayloadExtensionOffset = Offsets.PayloadExtension;
		InstanceData.PayloadExtensionSize = PrimitiveData.InstancePayloadExtensionSize;
	}
	return InstanceData;
}
uint PackInstanceCullingOutput(uint InstanceId, uint ViewIndex, uint CullingFlags)
{
	return (InstanceId & ((1u << (24u)) - 1u)) |
		((CullingFlags & ((1u << (4u)) - 1u)) << (24u)) | 
		(ViewIndex << ((24u) + (4u)));
}
void UnpackInstanceCullingOutput(uint PackedId, inout uint InstanceId, inout uint ViewIndex, inout uint CullingFlags)
{
	InstanceId = PackedId & ((1u << (24u)) - 1u);
	ViewIndex = PackedId >> ((24u) + (4u));
	CullingFlags = (PackedId >> (24u)) & ((1u << (4u)) - 1u);
}
struct FSceneDataIntermediates
{
	uint PrimitiveId;
	uint InstanceId;
	uint ViewIndex;
	uint CullingFlags;
	uint InstanceIdLoadIndex;
	FInstanceSceneData InstanceData;
	FPrimitiveSceneData Primitive;
};
FSceneDataIntermediates GetSceneDataIntermediates(uint InstanceIdOffset, uint DrawInstanceId)
{
	FSceneDataIntermediates Intermediates = (FSceneDataIntermediates)0;
	Intermediates.InstanceIdLoadIndex = InstanceIdOffset + DrawInstanceId;
	if ((InstanceIdOffset & (1U << 31U)) != 0U)
	{
		uint PrimitiveID = InstanceIdOffset & ((1U << 31U) - 1U);
		FPrimitiveSceneData PrimitiveData = GetPrimitiveData(PrimitiveID);
		Intermediates.InstanceId = PrimitiveData.InstanceSceneDataOffset + DrawInstanceId;
		Intermediates.ViewIndex = 0;
		Intermediates.CullingFlags = ((1u << 0u));
	}
	else
	{
		const uint PackedId = InstanceCulling_InstanceIdsBuffer[InstanceIdOffset + DrawInstanceId];
		UnpackInstanceCullingOutput(PackedId, Intermediates.InstanceId, Intermediates.ViewIndex, Intermediates.CullingFlags);
	}
	Intermediates.InstanceData = GetInstanceSceneData(Intermediates.InstanceId, Scene_GPUScene_InstanceDataSOAStride);
	Intermediates.PrimitiveId = Intermediates.InstanceData.PrimitiveId;
	Intermediates.Primitive = GetPrimitiveData(Intermediates.PrimitiveId);
	return Intermediates;
}
FLightSceneData GetLightSceneData(int LightId)
{
	return Scene_GPUScene_GPUSceneLightData[LightId];
}
struct FHairTransmittanceData
{
	bool bUseLegacyAbsorption;
	bool bUseSeparableR;
	bool bUseBacklit;
	bool bClampBSDFValue;
	float  OpaqueVisibility;
	float3 LocalScattering;
	float3 GlobalScattering;
	uint ScatteringComponent;
};
FHairTransmittanceData InitHairTransmittanceData(bool bMultipleScatterEnable = true)
{
	FHairTransmittanceData o;
	o.bUseLegacyAbsorption = true;
	o.bUseSeparableR = true;
	o.bUseBacklit = false;
	o.bClampBSDFValue = true;
	o.OpaqueVisibility = 1;
	o.LocalScattering = 0;
	o.GlobalScattering = 1;
	o.ScatteringComponent = 0x1u | 0x2u | 0x4u | (bMultipleScatterEnable ? 0x20u : 0);
	return o;
}
FHairTransmittanceData InitHairStrandsTransmittanceData(bool bMultipleScatterEnable = false)
{
	FHairTransmittanceData o = InitHairTransmittanceData(bMultipleScatterEnable);
	o.bUseLegacyAbsorption = false;
	o.bUseBacklit = true;
	return o;
}
float3 HairAbsorptionToColor(float3 A, float B=0.3f)
{
	const float b2 = B * B;
	const float b3 = B * b2;
	const float b4 = b2 * b2;
	const float b5 = B * b4;
	const float D = (5.969f - 0.215f * B + 2.532f * b2 - 10.73f * b3 + 5.574f * b4 + 0.245f * b5);
	return exp(-sqrt(A) * D);
}
float3 HairColorToAbsorption(float3 C, float B = 0.3f)
{
	const float b2 = B * B;
	const float b3 = B * b2;
	const float b4 = b2 * b2;
	const float b5 = B * b4;
	const float D = (5.969f - 0.215f * B + 2.532f * b2 - 10.73f * b3 + 5.574f * b4 + 0.245f * b5);
	return Pow2(log(C) / D);
}
float3 GetHairColorFromMelanin(float InMelanin, float InRedness, float3 InDyeColor)
{
	InMelanin = saturate(InMelanin);
	InRedness = saturate(InRedness);
	const float Melanin		= -log(max(1 - InMelanin, 0.0001f));
	const float Eumelanin 	= Melanin * (1 - InRedness);
	const float Pheomelanin = Melanin * InRedness;
	const float3 DyeAbsorption = HairColorToAbsorption(saturate(InDyeColor));
	const float3 Absorption = Eumelanin * float3(0.506f, 0.841f, 1.653f) + Pheomelanin * float3(0.343f, 0.733f, 1.924f);
	return HairAbsorptionToColor(Absorption + DyeAbsorption);
}
bool HasHairFlags(uint In, uint Flags)
{
	return (In & Flags) != 0;
}
uint GetHairCardTextureIndex(uint InLayoutIndex, uint InAttribute) 
{ 
	switch (InAttribute)
	{
		case 0      : return  ( InLayoutIndex == 0 ? 0 :  	( InLayoutIndex == 1 ? 0 :  	( InLayoutIndex == 2 ? 1 : 1 )));
		case 1       : return  ( InLayoutIndex == 0 ? 3 :  	( InLayoutIndex == 1 ? 3 :  	( InLayoutIndex == 2 ? 1 : 2 )));
		case 2     : return  ( InLayoutIndex == 0 ? 3 :  	( InLayoutIndex == 1 ? 3 :  	( InLayoutIndex == 2 ? 0 : 0 )));
		case 3 : return  ( InLayoutIndex == 0 ? 9 :  	( InLayoutIndex == 1 ? 4 :  	( InLayoutIndex == 2 ? 9 : 1 ))); 
		case 4  : return  ( InLayoutIndex == 0 ? 9 :  	( InLayoutIndex == 1 ? 9 :  	( InLayoutIndex == 2 ? 9 : 9 )));
		case 5     : return  ( InLayoutIndex == 0 ? 9 :  	( InLayoutIndex == 1 ? 3 :  	( InLayoutIndex == 2 ? 9 : 2 )));
		case 6      : return  ( InLayoutIndex == 0 ? 9 :  	( InLayoutIndex == 1 ? 4 :  	( InLayoutIndex == 2 ? 9 : 1 )));
		case 7    : return  ( InLayoutIndex == 0 ? 2 :  	( InLayoutIndex == 1 ? 2 :  	( InLayoutIndex == 2 ? 0 : 0 )));
		case 8   : return  ( InLayoutIndex == 0 ? 1 :  	( InLayoutIndex == 1 ? 1 :  	( InLayoutIndex == 2 ? 1 : 2 )));
		case 9   : return  ( InLayoutIndex == 0 ? 5 :  	( InLayoutIndex == 1 ? 5 :  	( InLayoutIndex == 2 ? 9 : 9 ))); 
	}
	return 0;
}
bool IsHairCardTextureIndexValid(uint InLayoutIndex, uint InAttribute)
{
	return GetHairCardTextureIndex(InLayoutIndex, InAttribute) < 6;
}
uint GetHairCardChannelIndex(uint InLayoutIndex, uint InAttribute) 
{ 
	switch (InAttribute)
	{
		case 0      : return  ( InLayoutIndex == 0 ? 0 :  	( InLayoutIndex == 1 ? 0 :  	( InLayoutIndex == 2 ? 1 : 2 )));
		case 1       : return  ( InLayoutIndex == 0 ? 3 :  	( InLayoutIndex == 1 ? 3 :  	( InLayoutIndex == 2 ? 2 : 2 )));
		case 2     : return  ( InLayoutIndex == 0 ? 2 :  	( InLayoutIndex == 1 ? 2 :  	( InLayoutIndex == 2 ? 3 : 3 )));
		case 3 : return  ( InLayoutIndex == 0 ? 3 :  	( InLayoutIndex == 1 ? 3 :  	( InLayoutIndex == 2 ? 0 : 3 )));
		case 4  : return  ( InLayoutIndex == 0 ? 3 :  	( InLayoutIndex == 1 ? 0 :  	( InLayoutIndex == 2 ? 3 : 3 )));
		case 5     : return  ( InLayoutIndex == 0 ? 0 :  	( InLayoutIndex == 1 ? 0 :  	( InLayoutIndex == 2 ? 0 : 0 )));
		case 6      : return  ( InLayoutIndex == 0 ? 0 :  	( InLayoutIndex == 1 ? 0 :  	( InLayoutIndex == 2 ? 0 : 0 ))); 
		case 7    : return  ( InLayoutIndex == 0 ? 0 :  	( InLayoutIndex == 1 ? 0 :  	( InLayoutIndex == 2 ? 0 : 0 )));
		case 8   : return  ( InLayoutIndex == 0 ? 0 :  	( InLayoutIndex == 1 ? 0 :  	( InLayoutIndex == 2 ? 0 : 3 )));
		case 9   : return  ( InLayoutIndex == 0 ? 0 :  	( InLayoutIndex == 1 ? 0 :  	( InLayoutIndex == 2 ? 0 : 0 ))); 
	}
	return 0;
}
uint2 ReadPackedHairPosition(ByteAddressBuffer InBuffer, uint InPointIndex)
{
	return InBuffer.Load2(InPointIndex * 8u);
}
void WritePackedHairPosition(RWByteAddressBuffer InBuffer, uint InPointIndex, uint2 In)
{
	InBuffer.Store2(InPointIndex * 8u, In);
}
void CopyPackedAttribute(inout uint2 Out, in uint2 In)
{
	Out.y = (Out.y & 0x0000FFFF) | (In.y & 0xFFFF0000);
}
void CopyPackedHairControlPoint(RWByteAddressBuffer OutBuffer, ByteAddressBuffer InBuffer, uint Index)
{
	const uint AddressInBytes = Index * 8u;
	OutBuffer.Store2(AddressInBytes, InBuffer.Load2(AddressInBytes));
}
struct FHairControlPoint
{
	float3 Position;
	float  WorldRadius;
	float  UCoord;
	uint   Type;
};
uint2 PackHairControlPoint(
	FHairControlPoint CP,
	float3 InVF_PositionOffset,
	float InVF_Radius) 
{
	const uint UCoord8bits = PackR8(CP.UCoord);
	const uint Radius6bits = PackR6(CP.WorldRadius / InVF_Radius);
	const uint Type2bits   = CP.Type & 0x3;
	CP.Position -= InVF_PositionOffset;
	uint2 Out = 0;
	Out.x = PackFloat2ToUInt(CP.Position.x, CP.Position.y);
	Out.y = f32tof16(CP.Position.z) | (UCoord8bits << 16u) | (Radius6bits << 24u) | (Type2bits << 30u);
	return Out;
}
FHairControlPoint UnpackHairControlPoint(
	uint2 In,
	float3 InVF_PositionOffset=0,
	float InVF_Radius=1,
	float InVF_RootScale=1,
	float InVF_TipScale=1)
{
	FHairControlPoint Out = (FHairControlPoint)0;
	Out.Position	= float3(UnpackFloat2FromUInt(In.x), f16tof32(BitFieldExtractU32(In.y, 16, 0))) + InVF_PositionOffset;
	Out.UCoord		= UnpackR8(BitFieldExtractU32(In.y, 8, 16));
	Out.WorldRadius	= UnpackR6(BitFieldExtractU32(In.y, 6, 24));
	Out.Type		= BitFieldExtractU32(In.y, 2, 30);
	Out.WorldRadius *= InVF_Radius * lerp(InVF_RootScale, InVF_TipScale, Out.UCoord);
	return Out;
}
FHairControlPoint ReadHairControlPoint(
	ByteAddressBuffer InBuffer,
	uint InIndex,
	float3 InVF_PositionOffset=0,
	float InVF_Radius=1,
	float InVF_RootScale=1,
	float InVF_TipScale=1)
{
	return UnpackHairControlPoint(
		InBuffer.Load2(InIndex * 8u),
		InVF_PositionOffset,
		InVF_Radius,
		InVF_RootScale,
		InVF_TipScale);
}
FHairControlPoint ReadHairControlPoint(
	RWByteAddressBuffer InBuffer,
	uint InIndex,
	float3 InVF_PositionOffset=0,
	float InVF_Radius=1,
	float InVF_RootScale=1,
	float InVF_TipScale=1)
{
	return UnpackHairControlPoint(
		InBuffer.Load2(InIndex * 8u),
		InVF_PositionOffset,
		InVF_Radius,
		InVF_RootScale,
		InVF_TipScale);
}
void WriteHairControlPointPosition(
	RWByteAddressBuffer OutBuffer, 
	uint InIndex, 
	FHairControlPoint InCP,
	float3 InVF_PositionOffset=0,
	float InVF_Radius=1)
{
	OutBuffer.Store2(InIndex * 8u, PackHairControlPoint(InCP, InVF_PositionOffset, InVF_Radius));
}
float UnpackHairControlPointCoordU(uint2 In)
{
	return UnpackR8(BitFieldExtractU32(In.y, 8, 16));
}
float3 UnpackHairControlPointPosition(uint2 In, float3 InVF_PositionOffset=0)
{
	return float3(UnpackFloat2FromUInt(In.x), f16tof32(BitFieldExtractU32(In.y, 16, 0))) + InVF_PositionOffset;
}
float3 ReadHairControlPointPosition(ByteAddressBuffer InBuffer, uint InPointIndex, float3 InVF_PositionOffset=0)
{
	return UnpackHairControlPointPosition(InBuffer.Load2(InPointIndex * 8u), InVF_PositionOffset);
}
float3 ReadHairControlPointPosition(RWByteAddressBuffer InBuffer, uint InPointIndex, float3 InVF_PositionOffset=0)
{
	return UnpackHairControlPointPosition(InBuffer.Load2(InPointIndex * 8u), InVF_PositionOffset);
}
uint2 PackHairControlPointPosition(uint2 InPackedData, float3 InNewPosition, float3 InPositionOffset=0)
{
	InNewPosition -= InPositionOffset;
	uint2 Out = 0;
	Out.x = PackFloat2ToUInt(InNewPosition.x, InNewPosition.y);
	Out.y = f32tof16(InNewPosition.z) | (InPackedData.y & 0xFFFF0000);
	return Out;
}
void WritePackedHairControlPointPosition(RWByteAddressBuffer OutBuffer, uint InIndex, uint2 InPackedData, float3 InNewPosition, float3 InPositionOffset=0)
{
	OutBuffer.Store2(InIndex * 8u, PackHairControlPointPosition(InPackedData, InNewPosition, InPositionOffset));
}
uint2 PackHairControlPointRadius(uint2 InPackedData, float InNewWorldRadius, float InVFRadius)
{
	const uint Radius6bits = PackR6(InNewWorldRadius / InVFRadius);	
	uint2 Out = InPackedData;
	Out.y = (Out.y & 0xC0FFFFFF) | (Radius6bits << 24);
	return Out;
}
bool IsValidHairStrandsSegment(const FHairControlPoint CP0, const FHairControlPoint CP1)
{
	return !(CP0.Type == 2u && CP1.Type == 1u);
}
uint PackHairRootUV(float2 In)
{
	In.y = 1.0f - In.y;
	return	(min(uint(saturate(In.x) * 0x7FFu), 0x7FFu)      )|
			(min(uint(saturate(In.y) * 0x7FFu), 0x7FFu) << 11);
}
float2 UnpackHairRootUV(uint In)
{
	float2 RootUV, RootIndex;
	RootUV.x	= ((In) & 0x7FF) / 2047.f;			
	RootUV.y	= ((In >> 11) & 0x7FF) / 2047.f;	
	RootIndex.x = ((In >> 22) & 0x1F);				
	RootIndex.y = ((In >> 27) & 0x1F);				
	RootUV.y = 1.0f - RootUV.y;
	return RootUV + RootIndex;
}
float UnpackHairLength(uint In)
{
	return f16tof32(In & 0xFFFF);
}
uint PackHairSeed(float In)
{
	return PackR8(In);
}
float UnpackHairSeed(uint In)
{
	return UnpackR8(In);
}
uint PackHairClumpID(uint In)
{
	return min(In, 0xFFFFu);
}
uint3 UnpackHairClumpID(uint In)
{
	return (In & 0xFFFF).xxx;
}
uint3 UnpackHairClumpID(uint2 In)
{
	return uint3(In.x & 0xFFFF, (In.x>>16) & 0xFFFF, In.y & 0xFFFF);
}
uint PackHairColor(float3 In)
{
	return	(min(uint(In.x * 0x7FFu), 0x7FFu)    )|
			(min(uint(In.y * 0x7FFu), 0x7FFu)<<11)|
			(min(uint(In.z * 0x3FFu), 0x3FFu)<<22);
}
float3 UnpackHairColor(uint In)
{
	float3 Out;
	Out.x = (In       & 0x7FFu) / 2047.f;
	Out.y = ((In>>11) & 0x7FFu) / 2047.f;
	Out.z = ((In>>22) & 0x3FFu) / 1023.f;
	return Out;
}
uint PackHairRoughness(float In)
{
	return PackR8(In);
}
float UnpackHairRoughness(uint In)
{
	return UnpackR8(In);
}
uint PackHairAO(float In)
{
	return PackR8(In);
}
float UnpackHairAO(uint In)
{
	return UnpackR8(In);
}
struct FGuideCurveData
{
	uint2  CurveIndices;		
	float2 CurveWeights;		
	uint2  RootPointIndices;		
};
FGuideCurveData UnpackGuideCurveData(ByteAddressBuffer InBuffer, uint InCurveIndex, bool bUseSingleGuide)
{
	FGuideCurveData Out = (FGuideCurveData)0;
	if (bUseSingleGuide)
	{
		const uint AddressInBytes = InCurveIndex * 8;
		const uint2 Data = InBuffer.Load2(AddressInBytes);
		Out.CurveIndices = Data.x & 0xFFFFFF;
		Out.CurveWeights = UnpackR8(Data.x>>24);
		Out.RootPointIndices = Data.y & 0xFFFFFF;
	}
	else
	{
		const uint AddressInBytes = InCurveIndex * 8 * 2;
		const uint4 Data = InBuffer.Load4(AddressInBytes);
		Out.CurveIndices.x = Data.x & 0xFFFFFF;
		Out.CurveWeights.x = UnpackR8(Data.x>>24);
		Out.RootPointIndices.x = Data.y & 0xFFFFFF;
		Out.CurveIndices.y = Data.z & 0xFFFFFF;
		Out.CurveWeights.y = UnpackR8(Data.z>>24);
		Out.RootPointIndices.y = Data.w & 0xFFFFFF;
	}
	return Out;
}
struct FGuidePointData
{
	uint2  PointIndices;
	float2 PointLerps;
};
FGuidePointData UnpackGuidePointData(ByteAddressBuffer InBuffer, uint InPointIndex, bool bUseSingleGuide)
{
	FGuidePointData Out = (FGuidePointData)0;
	if (bUseSingleGuide)
	{
		const uint AddressInBytes = InPointIndex * 2;
		const uint AlignedAddressInBytes = AddressInBytes & 0xFFFFFFFE;
		uint Data = InBuffer.Load(AlignedAddressInBytes);
		Data = InPointIndex & 1 ? (Data>>16u) : Data;
		Out.PointIndices	= Data & 0xFF;
		Out.PointLerps		= UnpackR8(Data >> 8);
	}
	else
	{
		const uint AddressInBytes = InPointIndex * 2 * 2;
		const uint Data = InBuffer.Load(AddressInBytes);
		Out.PointIndices.x	= Data & 0xFF;
		Out.PointLerps.x	= UnpackR8(Data >> 8);
		Out.PointIndices.y	= (Data>>16) & 0xFF;
		Out.PointLerps.y	= UnpackR8(Data >> 24);
	}
	return Out;
}
struct FCardsGuideData
{
	uint  VertexIndex;
	float VertexLerp;
};
FCardsGuideData ReadCardGuideData(ByteAddressBuffer InBuffer, uint InVertexId)
{
	const uint Data = InBuffer.Load(InVertexId * 4);
	FCardsGuideData Out = (FCardsGuideData)0;
	Out.VertexIndex	= Data & 0xFFFFFF;
	Out.VertexLerp	= UnpackR8(Data >> 24);
	return Out;
}
struct FHairCurve
{
	uint PointIndex;
	uint PointCount;
};
uint PackHairCurve(FHairCurve In)
{
	return (In.PointIndex & ((1u<<24)-1u)) | (In.PointCount << 24);
}
FHairCurve UnpackHairCurve(uint In)
{
	FHairCurve Out = (FHairCurve)0;
	Out.PointIndex = In & ((1u<<24)-1u);
	Out.PointCount = In >> 24;
	return Out;
}
FHairCurve ReadHairCurve(ByteAddressBuffer InBuffer, uint InIndex)
{
	return UnpackHairCurve(InBuffer.Load(InIndex * 4u));
}
void WriteHairCurve(RWByteAddressBuffer InBuffer, uint InIndex, FHairCurve In)
{
	InBuffer.Store(InIndex * 4u, PackHairCurve(In));
}
uint ReadHairPointToCurveIndex(ByteAddressBuffer InBuffer, uint InPointIndex)
{
	const uint PointIndex8 = InPointIndex >> 3u;
	const uint LocalIndex8 = InPointIndex & 0x7;
	const uint Data = InBuffer.Load(PointIndex8 * 4u);
	const uint Mask     = BitFieldMaskU32(LocalIndex8+1, 0);
	const uint Bitfield = BitFieldExtractI32(Data, 8u, 24u);
	const uint Deltas   = countbits(Mask & Bitfield);
	return (Data & 0xFFFFFF) + Deltas;
}
uint PackUVs(float2 UV)
{
	return (f32tof16(UV.x) & 0xFFFF) | ((f32tof16(UV.y) & 0xFFFF) << 16);
}
float PackUVsToFloat(float2 UV)
{
	return asfloat(PackUVs(UV));
}
float2 UnPackUVs(uint InUV)
{
	float2 Out;
	Out.x = f16tof32(InUV & 0xFFFF);
	Out.y = f16tof32((InUV >> 16) & 0xFFFF);
	return Out;
}
float2 UnPackUVs(float InUV)
{
	return UnPackUVs(asuint(InUV));
}
uint PackVertexNormal(float3 In)
{
	return
		(PackUnorm10(In.x * 0.5f + 0.5f)    )|
		(PackUnorm10(In.y * 0.5f + 0.5f)<<10)|
		(PackUnorm10(In.z * 0.5f + 0.5f)<<20);
}
float PackVertexNormalToFloat(float3 In)
{
	return asfloat(PackVertexNormal(In));
}
float3 UnpackVertexNormal(uint In)
{
	const float3 N = float3(
		UnpackUnorm10(In    ) * 2.f - 1.f,
		UnpackUnorm10(In>>10) * 2.f - 1.f,
		UnpackUnorm10(In>>20) * 2.f - 1.f);
	return normalize(N);
}
float3 UnpackVertexNormal(float In)
{
	return UnpackVertexNormal(asuint(In));
}
uint PackBarycentrics(float2 B)
{
	return f32tof16(B.x) | (f32tof16(B.y) << 16);
}
float3 UnpackBarycentrics(uint E)
{
	float3 Out;
	Out.x = f16tof32(E & 0xFFFF);
	Out.y = f16tof32((E >> 16) & 0xFFFF);
	Out.z = 1 - Out.x - Out.y;
	return Out;
}
struct FHairTriangleIndex
{
	uint TriangleIndex;
	uint SectionIndex;
};
uint PackTriangleIndex(uint TriangleIndex, uint SectionIndex)
{
	return ((SectionIndex & 0xFF)<<24) | (TriangleIndex & 0xFFFFFF);
}
FHairTriangleIndex UnpackTriangleIndex(uint Encoded)
{
	FHairTriangleIndex Out;
	Out.SectionIndex = (Encoded>>24) & 0xFF;
	Out.TriangleIndex = Encoded & 0xFFFFFF;
	return Out;
}
uint InternalGetHairStrandsAttributes(uint Index, uint AttributeOffsetInBytes, uint AttributeStrideInBytes, ByteAddressBuffer InAttributeBuffer, uint InIndexToChunkDivAsShift, uint InChunkElementCount, uint InChunkStrideInBytes)
{
	const uint ChunkIndex   = Index >> InIndexToChunkDivAsShift;
	Index                  -= ChunkIndex * InChunkElementCount;
	AttributeOffsetInBytes += ChunkIndex * InChunkStrideInBytes;
	const uint Address = AttributeOffsetInBytes + Index * AttributeStrideInBytes;
	const uint Address_4BytesAligned = Address & (~0x3);
	const uint Packed = InAttributeBuffer.Load(Address_4BytesAligned);
	const uint ElementIndex = Address - Address_4BytesAligned;
	return Packed >> (8u * ElementIndex);
}
uint2 InternalGetHairStrandsAttributes64(uint Index, uint AttributeOffsetInBytes, uint AttributeStrideInBytes, ByteAddressBuffer InAttributeBuffer, uint InIndexToChunkDivAsShift, uint InChunkElementCount, uint InChunkStrideInBytes)
{
	const uint ChunkIndex   = Index >> InIndexToChunkDivAsShift;
	Index                  -= ChunkIndex * InChunkElementCount;
	AttributeOffsetInBytes += ChunkIndex * InChunkStrideInBytes;
	const uint Address = AttributeOffsetInBytes + Index * AttributeStrideInBytes;
	const uint Address_4BytesAligned = Address & (~0x3);
	uint2 OutPacked = 0;
	OutPacked.x = InAttributeBuffer.Load(Address_4BytesAligned);
	OutPacked.y = InAttributeBuffer.Load(Address_4BytesAligned + 4u);
	return OutPacked;
}
uint InternalGetHairStrandsAttributesPerCurve(uint HairControlPointId, uint AttributeOffsetInBytes, uint AttributeStrideInBytes, ByteAddressBuffer InAttributeBuffer, ByteAddressBuffer InPointToCurveBuffer, uint InIndexToChunkDivAsShift, uint InChunkElementCount, uint InChunkStrideInBytes)
{
	const uint CurveIndex = ReadHairPointToCurveIndex(InPointToCurveBuffer, HairControlPointId);
	return InternalGetHairStrandsAttributes(CurveIndex, AttributeOffsetInBytes, AttributeStrideInBytes, InAttributeBuffer, InIndexToChunkDivAsShift, InChunkElementCount, InChunkStrideInBytes);
}
uint2 InternalGetHairStrandsAttributesPerCurve64(uint HairControlPointId, uint AttributeOffsetInBytes, uint AttributeStrideInBytes, ByteAddressBuffer InAttributeBuffer, ByteAddressBuffer InPointToCurveBuffer, uint InIndexToChunkDivAsShift, uint InChunkElementCount, uint InChunkStrideInBytes)
{
	const uint CurveIndex = ReadHairPointToCurveIndex(InPointToCurveBuffer, HairControlPointId);
	return InternalGetHairStrandsAttributes64(CurveIndex, AttributeOffsetInBytes, AttributeStrideInBytes, InAttributeBuffer, InIndexToChunkDivAsShift, InChunkElementCount, InChunkStrideInBytes);
}
uint InternalGetHairStrandsAttributesPerVertex(uint HairControlPointId, uint AttributeOffsetInBytes, uint AttributeStrideInBytes, ByteAddressBuffer InAttributeBuffer, uint InIndexToChunkDivAsShift, uint InChunkElementCount, uint InChunkStrideInBytes)
{
	return InternalGetHairStrandsAttributes(HairControlPointId, AttributeOffsetInBytes, AttributeStrideInBytes, InAttributeBuffer, InIndexToChunkDivAsShift, InChunkElementCount, InChunkStrideInBytes);
}
float InternalGetHairStrandsCoordU(ByteAddressBuffer InPositionBuffer, uint InPointIndex, float InRadius, float InRootScale, float InTipScale)
{
	return ReadHairControlPoint(InPositionBuffer, InPointIndex, float3(0, 0, 0), InRadius, InRootScale, InTipScale).UCoord;
}
float InternalGetHairStrandsWorldRadius(ByteAddressBuffer InPositionBuffer, uint InPointIndex, float InRadius, float InRootScale, float InTipScale)
{
	return ReadHairControlPoint(InPositionBuffer, InPointIndex, float3(0, 0, 0), InRadius, InRootScale, InTipScale).WorldRadius;
}
bool IsAttributeValid(uint InOffset)
{
	return InOffset != 0xFFFFFFFF;
}
float3 ReadPositionOffset(StructuredBuffer<float4> In, uint InIndex, uint InType, uint InTime, uint InLOD) 
{ 
	return In[0].xyz; 
}
void WritePositionOffset(RWStructuredBuffer<float4> Out, uint InIndex, uint InType, uint InTime, uint InLOD, float3 InPositionOffset) 
{ 
	Out[0] = float4(InPositionOffset, 1);
}
float3 ReadRenPositionOffset(StructuredBuffer<float4> In, uint InIndex) 
{ 
	return ReadPositionOffset(In, InIndex, 1, 0, 0);
}
float3 ReadRenPrevPositionOffset(StructuredBuffer<float4> In, uint InIndex) 
{ 
	return ReadPositionOffset(In, InIndex, 1, 1, 0);
}
float3 ReadSimPositionOffset(StructuredBuffer<float4> In, uint InIndex) 
{ 
	return ReadPositionOffset(In, InIndex, 0, 0, 0);
}
float3 ReadCardPositionOffset(StructuredBuffer<float4> In, uint InIndex, uint InLOD) 
{ 
	return ReadPositionOffset(In, InIndex, 2, 0, InLOD);
}
float3 GetShadingModelColor(uint ShadingModelID)
{
	switch(ShadingModelID)
	{
		case 0: return float3(0.1f, 0.1f, 0.2f); 
		case 1: return float3(0.1f, 1.0f, 0.1f); 
		case 2: return float3(1.0f, 0.1f, 0.1f); 
		case 3: return float3(0.6f, 0.4f, 0.1f); 
		case 4: return float3(0.1f, 0.4f, 0.4f); 
		case 5: return float3(0.2f, 0.6f, 0.5f); 
		case 6: return float3(0.2f, 0.2f, 0.8f); 
		case 7: return float3(0.6f, 0.1f, 0.5f);
		case 8: return float3(0.7f, 1.0f, 1.0f);
		case 9: return float3(0.3f, 1.0f, 1.0f);
		case 10: return float3(0.5f, 0.5f, 1.0f);
		case 11: return float3(1.0f, 0.8f, 0.3f);
		case 12: return float3(1.0f, 1.0f, 0.0f);
		default: return float3(1.0f, 1.0f, 1.0f); 
	}
}
bool GetShadingModelRequiresBackfaceLighting(uint ShadingModelID)
{
	return ShadingModelID == 6;
}
float F0ToDielectricSpecular(float F0)
{
	return saturate(F0 / 0.08f);
}
float F0RGBToF0(float3 F0)
{
	return dot(0.3333333.xxx, F0);
}
float F0RGBToDielectricSpecular(float3 F0)
{
	return F0ToDielectricSpecular(F0RGBToF0(F0));
}
float DielectricSpecularToF0(float Specular)
{
	return float(0.08f * Specular);
}
float DielectricF0ToIor(float F0)
{
	return 2.0f / (1.0f - sqrt(min(F0,0.99))) - 1.0f;
}
float DielectricF0RGBToIor(float3 F0)
{
	return DielectricF0ToIor(F0RGBToF0(F0));
}
float DielectricIorToF0(float Ior)
{
	const float F0Sqrt = (Ior-1)/(Ior+1);
	const float F0 = F0Sqrt*F0Sqrt;
	return F0;
}
float  GetF0MicroOcclusionThreshold() { return 0.02f; }
float  F0ToMicroOcclusion(float F0)   { return saturate(50.0 * F0); }
float3 F0ToMicroOcclusion(float3 F0)  { return saturate(50.0 * F0); }
float F0RGBToMicroOcclusion(float3 F0)
{
	return F0ToMicroOcclusion(max(F0.r, max(F0.g, F0.b)));
}
float3 ComputeF0(float Specular, float3 BaseColor, float Metallic)
{
	return lerp(DielectricSpecularToF0(Specular).xxx, BaseColor, Metallic.xxx);
}
float3 ComputeF90(float3 F0, float3 EdgeColor, float Metallic)
{
	return lerp(1.0, EdgeColor, Metallic.xxx);
}
float3 ComputeDiffuseAlbedo(float3 BaseColor, float Metallic)
{
	return BaseColor - BaseColor * Metallic;
}
float MakeRoughnessSafe(float Roughness, float MinRoughness=0.001f)
{
	return clamp(Roughness, MinRoughness, 1.0f);
}
float F0ToMetallic(float F0)
{
	const float FullMetalBeginF0 = 0.08f;	
	const float FullMetalEndF0   = 0.4f;	
	return saturate((F0 - FullMetalBeginF0) / (FullMetalEndF0 - FullMetalBeginF0));
}
float F0RGBToMetallic(float3 F0)
{
	return F0ToMetallic(max(F0.r, max(F0.g, F0.b)));
}
struct FVerticalLayeringInfo
{
	float TransmittanceTopAndBottom;	
	float TransmittanceOnlyBottom;		
	float TransmittanceOnlyTop;			
	float SurfaceBottom;				
	float SurfaceTop;					
	float Coverage;						
	float NoSurface;					
};
FVerticalLayeringInfo GetVerticalLayeringInfo(const float TopCoverage, const float BottomCoverage)
{
	FVerticalLayeringInfo Info;
	Info.TransmittanceTopAndBottom	= TopCoverage * BottomCoverage;
	Info.TransmittanceOnlyBottom	= (1.0f - TopCoverage) * BottomCoverage;
	Info.TransmittanceOnlyTop		= (1.0f - BottomCoverage) * TopCoverage;
	Info.SurfaceBottom				= Info.TransmittanceOnlyBottom;
	Info.SurfaceTop					= TopCoverage;								
	Info.Coverage					= Info.SurfaceTop + Info.SurfaceBottom;		
	Info.NoSurface					= 1.0f - Info.Coverage;
	return Info;
}
struct FLightAccumulator
{
	float3 TotalLight;
	float TotalLightLuminance;
	float ScatterableLightLuma;
	float3 ScatterableLight;
	float EstimatedCost;
	float3 TotalLightDiffuse;
	float3 TotalLightSpecular;
};
struct FDeferredLightingSplit
{
	float4 DiffuseLighting;
	float4 SpecularLighting;
	float LightingLuminance;
};
void LightAccumulator_AddSplit(inout FLightAccumulator In, float3 DiffuseTotalLight, float3 SpecularTotalLight, float3 ScatterableLight, float3 CommonMultiplier, const bool bNeedsSeparateSubsurfaceLightAccumulation)
{
	In.TotalLight += (DiffuseTotalLight + SpecularTotalLight) * CommonMultiplier;
	In.TotalLightLuminance += Luminance((DiffuseTotalLight + SpecularTotalLight) * CommonMultiplier);
	if (bNeedsSeparateSubsurfaceLightAccumulation)
	{
		if (1 == 1)
		{
			if (View_bCheckerboardSubsurfaceProfileRendering == 0)
			{
				In.ScatterableLightLuma += Luminance(ScatterableLight * CommonMultiplier);
			}
		}
		else if (1 == 2)
		{
			In.ScatterableLight += ScatterableLight * CommonMultiplier;
		}
	}
	In.TotalLightDiffuse += DiffuseTotalLight * CommonMultiplier;
	In.TotalLightSpecular += SpecularTotalLight * CommonMultiplier;
}
void LightAccumulator_Add(inout FLightAccumulator In, float3 TotalLight, float3 ScatterableLight, float3 CommonMultiplier, const bool bNeedsSeparateSubsurfaceLightAccumulation)
{
	LightAccumulator_AddSplit(In, TotalLight, 0.0f, ScatterableLight, CommonMultiplier, bNeedsSeparateSubsurfaceLightAccumulation);
}
float4 ConvertEstimatedCostToColor(float EstimatedCost)
{
	return 0.1f * float4(1.0f, 0.25f, 0.075f, 0) * EstimatedCost;
}
float4 LightAccumulator_GetResult(FLightAccumulator In)
{
	float4 Ret;
	if (0 == 1)
	{
		Ret = ConvertEstimatedCostToColor(In.EstimatedCost);
	}
	else
	{
		Ret = float4(In.TotalLight, 0);
		if (1 == 1 )
		{
			if (View_bCheckerboardSubsurfaceProfileRendering == 0 && View_bSubsurfacePostprocessEnabled)
			{
				Ret.a = In.ScatterableLightLuma;
			}
		}
		else if (1 == 2)
		{
			Ret.a = Luminance(In.ScatterableLight);
		}
	}
	return Ret;
}
FDeferredLightingSplit LightAccumulator_GetResultSplit(FLightAccumulator In)
{
	float4 RetDiffuse;
	float4 RetSpecular;
	if (0 == 1)
	{
		RetDiffuse  = ConvertEstimatedCostToColor(In.EstimatedCost);
		RetSpecular = RetDiffuse;
	}
	else
	{
		RetDiffuse = float4(In.TotalLightDiffuse, 0);
		RetSpecular = float4(In.TotalLightSpecular, 0);
		if (1 == 1 )
		{
			if (View_bCheckerboardSubsurfaceProfileRendering == 0 && View_bSubsurfacePostprocessEnabled)
			{
				RetDiffuse.a = In.ScatterableLightLuma;
			}
		}
		else if (1 == 2)
		{
			RetDiffuse.a = Luminance(In.ScatterableLight);
		}
	}
	FDeferredLightingSplit Ret;
	Ret.DiffuseLighting = RetDiffuse;
	Ret.SpecularLighting = RetSpecular;
	Ret.LightingLuminance = In.TotalLightLuminance;
	return Ret;
}
struct FSubstrateDeferredLighting
{
	float4 SceneColor;						
	float EstimatedCost;
	float3 TotalDiffuseLighting;
	float3 TotalSpecularLighting;
};
FSubstrateDeferredLighting GetInitialisedSubstrateDeferredLighting()
{
	FSubstrateDeferredLighting Result = (FSubstrateDeferredLighting)0;
	return Result;
}
void AccumulateSubstrateDeferredLighting(inout FSubstrateDeferredLighting SubstrateLighting, FLightAccumulator In, bool bDiffuseIsSubsurface, bool bIsToplayer)
{
	FDeferredLightingSplit DiffSpec = LightAccumulator_GetResultSplit(In);
	SubstrateLighting.SceneColor += DiffSpec.DiffuseLighting + DiffSpec.SpecularLighting;
	SubstrateLighting.EstimatedCost += In.EstimatedCost;
}
uint bSceneLightingChannelsValid;
Texture2D SceneDepthTexture;
Texture2D<uint2> SceneStencilTexture;
Texture2D GBufferATexture;
Texture2D GBufferBTexture;
Texture2D GBufferCTexture;
Texture2D GBufferDTexture;
Texture2D GBufferETexture;
Texture2D GBufferVelocityTexture;
Texture2D GBufferFTexture;
Texture2D<uint> SceneLightingChannels;
float SampleDeviceZFromSceneTextures(float2 UV)
{
	return SceneDepthTexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).r;
}
float3 RGBToYCoCg( float3 RGB )
{
	float Y  = dot( RGB, float3(  1, 2,  1 ) ) * 0.25;
	float Co = dot( RGB, float3(  2, 0, -2 ) ) * 0.25 + ( 0.5 * 256.0 / 255.0 );
	float Cg = dot( RGB, float3( -1, 2, -1 ) ) * 0.25 + ( 0.5 * 256.0 / 255.0 );
	float3 YCoCg = float3( Y, Co, Cg );
	return YCoCg;
}
float3 YCoCgToRGB( float3 YCoCg )
{
	float Y  = YCoCg.x;
	float Co = YCoCg.y - ( 0.5 * 256.0 / 255.0 );
	float Cg = YCoCg.z - ( 0.5 * 256.0 / 255.0 );
	float R = Y + Co - Cg;
	float G = Y + Cg;
	float B = Y - Co - Cg;
	float3 RGB = float3( R, G, B );
	return RGB;
}
float3 Pack1212To888( float2 x )
{
	float2 x1212 = floor( x * 4095 );
	float2 High = floor( x1212 / 256 );	
	float2 Low = x1212 - High * 256;	
	float3 x888 = float3( Low, High.x + High.y * 16 );
	return saturate( x888 / 255 );
}
float2 Pack888To1212( float3 x )
{
	float3 x888 = floor( x * 255 );
	float High = floor( x888.z / 16 );	
	float Low = x888.z - High * 16;		
	float2 x1212 = x888.xy + float2( Low, High ) * 256;
	return saturate( x1212 / 4095 );
}
float3 EncodeNormal( float3 N )
{
	return N * 0.5 + 0.5;
}
float3 DecodeNormal( float3 N )
{
	return N * 2 - 1;
}
void EncodeNormal( inout float3 N, out uint Face )
{
	uint Axis = 2;
	if( abs(N.x) >= abs(N.y) && abs(N.x) >= abs(N.z) )
	{
		Axis = 0;
	}
	else if( abs(N.y) > abs(N.z) )
	{
		Axis = 1;
	}
	Face = Axis * 2;
	N = Axis == 0 ? N.yzx : N;
	N = Axis == 1 ? N.xzy : N;
	float MaxAbs = 1.0 / sqrt(2.0);
	Face += N.z > 0 ? 0 : 1;
	N.xy *= N.z > 0 ? 1 : -1;
	N.xy = N.xy * (0.5 / MaxAbs) + 0.5;
}
void DecodeNormal( inout float3 N, in uint Face )
{
	uint Axis = Face >> 1;
	float MaxAbs = 1.0 / sqrt(2.0);
	N.xy = N.xy * (2 * MaxAbs) - (1 * MaxAbs);
	N.z = sqrt( 1 - dot( N.xy, N.xy ) );
	N = Axis == 0 ? N.zxy : N;
	N = Axis == 1 ? N.xzy : N;
	N *= (Face & 1) ? -1 : 1;
}
float3 EncodeBaseColor(float3 BaseColor)
{
	return BaseColor;
}
float3 DecodeBaseColor(float3 BaseColor)
{
	return BaseColor;
}
float3 EncodeSubsurfaceColor(float3 SubsurfaceColor)
{
	return sqrt(saturate(SubsurfaceColor));
}
float3 EncodeSubsurfaceProfile(float SubsurfaceProfile)
{
	return float3(SubsurfaceProfile, 0, 0);
}
float SubsurfaceDensityFromOpacity(float Opacity)
{
	return (-0.05f * log(1.0f - min(Opacity, 0.99f)));
}
float EncodeIndirectIrradiance(float IndirectIrradiance)
{
	float L = IndirectIrradiance;
	L *= View_PreExposure; 
	const float LogBlackPoint = 0.00390625;	
	return log2( L + LogBlackPoint ) / 16 + 0.5;
}
float DecodeIndirectIrradiance(float IndirectIrradiance)
{
	float LogL = IndirectIrradiance;
	const float LogBlackPoint = 0.00390625;	
	return View_OneOverPreExposure * (exp2( LogL * 16 - 8 ) - LogBlackPoint);	
}
float4 EncodeWorldTangentAndAnisotropy(float3 WorldTangent, float Anisotropy)
{
	return float4(
		EncodeNormal(WorldTangent),
		Anisotropy * 0.5f + 0.5f
		);
}
float ComputeAngleFromRoughness( float Roughness, const float Threshold = 0.04f )
{
	float Angle = 3 * Square( Roughness );
	return Angle;
}
float ComputeRoughnessFromAngle( float Angle, const float Threshold = 0.04f )
{
	float Roughness = sqrt( 0.33333 * Angle );
	return Roughness;
}
float AddAngleToRoughness( float Angle, float Roughness )
{
	return saturate( sqrt( Square( Roughness ) + 0.33333 * Angle ) );
}
float Encode71(float Scalar, uint Mask)
{
	return
		127.0f / 255.0f * saturate(Scalar) +
		128.0f / 255.0f * Mask;
}
float Decode71(float Scalar, out uint Mask)
{
	Mask = (uint)(Scalar > 0.5f);
	return (Scalar - 0.5f * Mask) * 2.0f;
}
float EncodeShadingModelIdAndSelectiveOutputMask(uint ShadingModelId, uint SelectiveOutputMask)
{
	uint Value = (ShadingModelId & 0xF) | SelectiveOutputMask;
	return (float)Value / (float)0xFF;
}
uint DecodeShadingModelId(float InPackedChannel)
{
	return ((uint)round(InPackedChannel * (float)0xFF)) & 0xF;
}
uint DecodeSelectiveOutputMask(float InPackedChannel)
{
	return ((uint)round(InPackedChannel * (float)0xFF)) & ~0xF;
}
bool IsSubsurfaceModel(int ShadingModel)
{
	return ShadingModel == 2 
		|| ShadingModel == 3 
		|| ShadingModel == 5
		|| ShadingModel == 6
		|| ShadingModel == 7
		|| ShadingModel == 9;
}
bool UseSubsurfaceProfile(int ShadingModel)
{
	return ShadingModel == 5 || ShadingModel == 9;
}
bool HasCustomGBufferData(int ShadingModelID)
{
	return ShadingModelID == 2
		|| ShadingModelID == 3
		|| ShadingModelID == 4
		|| ShadingModelID == 5
		|| ShadingModelID == 6
		|| ShadingModelID == 7
		|| ShadingModelID == 8
		|| ShadingModelID == 9;
}
bool HasAnisotropy(int SelectiveOutputMask)
{
	return (SelectiveOutputMask & (1 << 4)) != 0;
}
struct FGBufferData
{
	float3 WorldNormal;
	float3 WorldTangent;
	float3 DiffuseColor;
	float3 SpecularColor;
	float3 BaseColor;
	float Metallic;
	float Specular;
	float4 CustomData;
	float GenericAO;
	float IndirectIrradiance;
	float4 PrecomputedShadowFactors;
	float Roughness;
	float Anisotropy;
	float GBufferAO;
	uint DiffuseIndirectSampleOcclusion;
	uint ShadingModelID;
	uint SelectiveOutputMask;
	float PerObjectGBufferData;
	float CustomDepth;
	uint CustomStencil;
	float Depth;
	float4 Velocity;
	float3 StoredBaseColor;
	float StoredSpecular;
	float StoredMetallic;
	float Curvature;
};
bool CastContactShadow(FGBufferData GBufferData)
{
	uint PackedAlpha = (uint)(GBufferData.PerObjectGBufferData * 3.999f);
	bool bCastContactShadowBit = PackedAlpha & 1;
	bool bShadingModelCastContactShadows = (GBufferData.ShadingModelID != 9);
	return bCastContactShadowBit && bShadingModelCastContactShadows;
}
bool HasDynamicIndirectShadowCasterRepresentation(FGBufferData GBufferData)
{
	uint PackedAlpha = (uint)(GBufferData.PerObjectGBufferData * 3.999f);
	return (PackedAlpha & 2) != 0;
}
bool CheckerFromPixelPos(uint2 PixelPos)
{
	uint TemporalAASampleIndex = uint(View_TemporalAAParams.x);
	return (PixelPos.x + PixelPos.y + TemporalAASampleIndex) % 2;
}
bool CheckerFromSceneColorUV(float2 UVSceneColor)
{
	uint2 PixelPos = uint2(UVSceneColor * View_BufferSizeAndInvSize.xy);
	return CheckerFromPixelPos(PixelPos);
}
float SquareInline(float X)
{
	return X * X;
}
float3 EncodeNormalHelper(float3 SrcNormal, float QuantizationBias)
{
	return SrcNormal * .5f + .5f;
}
float3 DecodeNormalHelper(float3 SrcNormal)
{
	return SrcNormal * 2.0f - 1.0f;
}
uint EncodeQuantize6(float Value, float QuantizationBias)
{
	return min(uint(saturate(Value) * 63.0f + .5f + QuantizationBias),63u);
}
float DecodeQuantize6(uint Value)
{
	return float(Value) / 63.0f;
}
uint EncodeQuantize6Sqrt(float Value, float QuantizationBias)
{
	return min(uint(sqrt(saturate(Value)) * 63.0f + .5f + QuantizationBias),63u);
}
float DecodeQuantize6Sqrt(uint Value)
{
	return SquareInline(float(Value) / 63.0f);
}
uint EncodeQuantize5(float Value, float QuantizationBias)
{
	return min(uint(saturate(Value) * 31.0f + .5f + QuantizationBias),31u);
}
float DecodeQuantize5(uint Value)
{
	return float(Value) / 31.0f;
}
uint EncodeQuantize5Sqrt(float Value, float QuantizationBias)
{
	return min(uint(sqrt(saturate(Value)) * 31.0f + .5f + QuantizationBias),31u);
}
float DecodeQuantize5Sqrt(uint Value)
{
	return SquareInline(float(Value) / 31.0f);
}
uint EncodeQuantize4(float Value, float QuantizationBias)
{
	return min(uint(saturate(Value) * 15.0f + .5f + QuantizationBias),15u);
}
float DecodeQuantize4(uint Value)
{
	return float(Value) / 15.0f;
}
uint EncodeQuantize4Sqrt(float Value, float QuantizationBias)
{
	return min(uint(sqrt(saturate(Value)) * 15.0f + .5f + QuantizationBias),15u);
}
float DecodeQuantize4Sqrt(uint Value)
{
	return SquareInline(float(Value) / 15.0f);
}
uint EncodeQuantize3(float Value, float QuantizationBias)
{
	return min(uint(saturate(Value) * 7.0f + .5f + QuantizationBias),7u);
}
float DecodeQuantize3(uint Value)
{
	return float(Value) / 7.0f;
}
uint EncodeQuantize3Sqrt(float Value, float QuantizationBias)
{
	return min(uint(sqrt(saturate(Value)) * 7.0f + .5f + QuantizationBias),7u);
}
float DecodeQuantize3Sqrt(uint Value)
{
	return SquareInline(float(Value) / 7.0f);
}
uint EncodeQuantize2(float Value, float QuantizationBias)
{
	return min(uint(saturate(Value) * 3.0f + .5f + QuantizationBias),3u);
}
float DecodeQuantize2(uint Value)
{
	return float(Value) / 3.0f;
}
uint EncodeQuantize2Sqrt(float Value, float QuantizationBias)
{
	return min(uint(sqrt(saturate(Value)) * 3.0f + .5f + QuantizationBias),3u);
}
float DecodeQuantize2Sqrt(uint Value)
{
	return SquareInline(float(Value) / 3.0f);
}
uint EncodeQuantize1(float Value, float QuantizationBias)
{
	return min(uint(saturate(Value) * 1.0f + .5f + QuantizationBias),1u);
}
float DecodeQuantize1(uint Value)
{
	return float(Value) / 1.0f;
}
uint EncodeQuantize1Sqrt(float Value, float QuantizationBias)
{
	return min(uint(sqrt(saturate(Value)) * 1.0f + .5f + QuantizationBias),1u);
}
float DecodeQuantize1Sqrt(uint Value)
{
	return SquareInline(float(Value) / 1.0f);
}
uint3 EncodeQuantize565(float3 Value, float QuantizationBias)
{
	uint3 Ret;
	Ret.x = EncodeQuantize5(Value.x,QuantizationBias);
	Ret.y = EncodeQuantize6(Value.y,QuantizationBias);
	Ret.z = EncodeQuantize5(Value.z,QuantizationBias);
	return Ret;
}
float3 DecodeQuantize565(uint3 Value)
{
	float3 Ret;
	Ret.x = DecodeQuantize5(Value.x);
	Ret.y = DecodeQuantize6(Value.y);
	Ret.z = DecodeQuantize5(Value.z);
	return Ret;
}
uint3 EncodeQuantize565Sqrt(float3 Value, float QuantizationBias)
{
	uint3 Ret;
	Ret.x = EncodeQuantize5Sqrt(Value.x,QuantizationBias);
	Ret.y = EncodeQuantize6Sqrt(Value.y,QuantizationBias);
	Ret.z = EncodeQuantize5Sqrt(Value.z,QuantizationBias);
	return Ret;
}
float3 DecodeQuantize565Sqrt(uint3 Value)
{
	float3 Ret;
	Ret.x = DecodeQuantize5Sqrt(Value.x);
	Ret.y = DecodeQuantize6Sqrt(Value.y);
	Ret.z = DecodeQuantize5Sqrt(Value.z);
	return Ret;
}
uint3 EncodeQuantize444(float3 Value, float QuantizationBias)
{
	uint3 Ret;
	Ret.x = EncodeQuantize4(Value.x,QuantizationBias);
	Ret.y = EncodeQuantize4(Value.y,QuantizationBias);
	Ret.z = EncodeQuantize4(Value.z,QuantizationBias);
	return Ret;
}
float3 DecodeQuantize444(uint3 Value)
{
	float3 Ret;
	Ret.x = DecodeQuantize4(Value.x);
	Ret.y = DecodeQuantize4(Value.y);
	Ret.z = DecodeQuantize4(Value.z);
	return Ret;
}
uint3 EncodeQuantize444Sqrt(float3 Value, float QuantizationBias)
{
	uint3 Ret;
	Ret.x = EncodeQuantize4Sqrt(Value.x,QuantizationBias);
	Ret.y = EncodeQuantize4Sqrt(Value.y,QuantizationBias);
	Ret.z = EncodeQuantize4Sqrt(Value.z,QuantizationBias);
	return Ret;
}
float3 DecodeQuantize444Sqrt(uint3 Value)
{
	float3 Ret;
	Ret.x = DecodeQuantize4Sqrt(Value.x);
	Ret.y = DecodeQuantize4Sqrt(Value.y);
	Ret.z = DecodeQuantize4Sqrt(Value.z);
	return Ret;
}
uint3 EncodeQuantize332(float3 Value, float QuantizationBias)
{
	uint3 Ret;
	Ret.x = EncodeQuantize3(Value.x,QuantizationBias);
	Ret.y = EncodeQuantize3(Value.y,QuantizationBias);
	Ret.z = EncodeQuantize2(Value.z,QuantizationBias);
	return Ret;
}
float3 DecodeQuantize332(uint3 Value)
{
	float3 Ret;
	Ret.x = DecodeQuantize3(Value.x);
	Ret.y = DecodeQuantize3(Value.y);
	Ret.z = DecodeQuantize2(Value.z);
	return Ret;
}
uint3 EncodeQuantize332Sqrt(float3 Value, float QuantizationBias)
{
	uint3 Ret;
	Ret.x = EncodeQuantize3Sqrt(Value.x,QuantizationBias);
	Ret.y = EncodeQuantize3Sqrt(Value.y,QuantizationBias);
	Ret.z = EncodeQuantize2Sqrt(Value.z,QuantizationBias);
	return Ret;
}
float3 DecodeQuantize332Sqrt(uint3 Value)
{
	float3 Ret;
	Ret.x = DecodeQuantize3Sqrt(Value.x);
	Ret.y = DecodeQuantize3Sqrt(Value.y);
	Ret.z = DecodeQuantize2Sqrt(Value.z);
	return Ret;
}
void EnvBRDFApproxFullyRoughHelper(inout float3 DiffuseColor, inout float3 SpecularColor)
{
	DiffuseColor += SpecularColor * 0.45;
	SpecularColor = 0;
}
void EnvBRDFApproxFullyRoughHelper(inout float3 DiffuseColor, inout float SpecularColor)
{
	DiffuseColor += SpecularColor * 0.45;
	SpecularColor = 0;
}
void GBufferPreEncode(inout FGBufferData GBuffer, bool bChecker, float GeometricAARoughness, inout float3 OriginalBaseColor, inout float OriginalSpecular, inout float OriginalMetallic, float QuantizationBias)
{
	GBuffer.DiffuseColor = OriginalBaseColor - OriginalBaseColor * OriginalMetallic;
	{
		GBuffer.DiffuseColor = GBuffer.DiffuseColor * View_DiffuseOverrideParameter.w + View_DiffuseOverrideParameter.xyz;
		GBuffer.SpecularColor = GBuffer.SpecularColor * View_SpecularOverrideParameter.w + View_SpecularOverrideParameter.xyz;
	}
	{
		EnvBRDFApproxFullyRoughHelper(GBuffer.DiffuseColor, GBuffer.SpecularColor);
	}
		GBuffer.GenericAO = EncodeIndirectIrradiance(GBuffer.IndirectIrradiance * GBuffer.GBufferAO) + QuantizationBias * (1.0 / 255.0);
}
void AdjustBaseColorAndSpecularColorForSubsurfaceProfileLightingCopyHack(inout float3 BaseColor, inout float3 SpecularColor, inout float Specular, bool bChecker)
{
	return;
}
void GBufferPostDecode(inout FGBufferData Ret, bool bChecker, bool bGetNormalizedNormal)
{
	Ret.CustomData = HasCustomGBufferData(Ret.ShadingModelID) ? Ret.CustomData : float(0.0f);
	Ret.PrecomputedShadowFactors = !(Ret.SelectiveOutputMask & 0x2) ? Ret.PrecomputedShadowFactors : ((Ret.SelectiveOutputMask & 0x4) ? float(0.0f) : float(1.0f));
	Ret.Velocity = !(Ret.SelectiveOutputMask & 0x8) ? Ret.Velocity : float(0.0f);
	bool bHasAnisotropy = (Ret.SelectiveOutputMask & 0x1);
	Ret.StoredBaseColor = Ret.BaseColor;
	Ret.StoredMetallic = Ret.Metallic;
	Ret.StoredSpecular = Ret.Specular;
	Ret.GBufferAO = 1;
	Ret.DiffuseIndirectSampleOcclusion = 0x0;
	Ret.IndirectIrradiance = float(DecodeIndirectIrradiance(Ret.GenericAO.x));
	if(bGetNormalizedNormal)
	{
		Ret.WorldNormal = normalize(Ret.WorldNormal);
	}
	[flatten]
	if( Ret.ShadingModelID == 9 )
	{
		Ret.Metallic = 0.0;
	}
	{
		Ret.SpecularColor = ComputeF0(Ret.Specular, Ret.BaseColor, Ret.Metallic);
		if (UseSubsurfaceProfile(Ret.ShadingModelID))
		{
			AdjustBaseColorAndSpecularColorForSubsurfaceProfileLightingCopyHack(Ret.BaseColor, Ret.SpecularColor, Ret.Specular, bChecker);
		}
		Ret.DiffuseColor = Ret.BaseColor - Ret.BaseColor * Ret.Metallic;
		{
			Ret.DiffuseColor = Ret.DiffuseColor * View_DiffuseOverrideParameter.www + View_DiffuseOverrideParameter.xyz;
			Ret.SpecularColor = Ret.SpecularColor * View_SpecularOverrideParameter.w + View_SpecularOverrideParameter.xyz;
		}
	}
	if (bHasAnisotropy)
	{
		Ret.WorldTangent = float3(DecodeNormal(Ret.WorldTangent));
		Ret.Anisotropy = float(Ret.Anisotropy * 2.0f - 1.0f);
		if(bGetNormalizedNormal)
		{
			Ret.WorldTangent = normalize(Ret.WorldTangent);
		}
	}
	else
	{
		Ret.WorldTangent = 0;
		Ret.Anisotropy = 0;
	}
	Ret.SelectiveOutputMask = Ret.SelectiveOutputMask << 4;
}
float SampleDeviceZFromSceneTexturesTempCopy(float2 UV)
{
	return SceneDepthTexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).r;
}
void EncodeGBufferToMRT(inout FPixelShaderOut Out, FGBufferData GBuffer, float QuantizationBias)
{
	float4 MrtFloat1 = 0.0f;
	float4 MrtFloat2 = 0.0f;
	uint4 MrtUint2 = 0;
	float4 MrtFloat3 = 0.0f;
	float4 MrtFloat4 = 0.0f;
	float4 MrtFloat5 = 0.0f;
	float4 MrtFloat6 = 0.0f;
	float3 WorldNormal_Compressed = EncodeNormalHelper(GBuffer.WorldNormal, 0.0f);
	MrtFloat1.x = WorldNormal_Compressed.x;
	MrtFloat1.y = WorldNormal_Compressed.y;
	MrtFloat1.z = WorldNormal_Compressed.z;
	MrtFloat1.w = GBuffer.PerObjectGBufferData.x;
	MrtFloat2.x = GBuffer.Metallic.x;
	MrtFloat2.y = GBuffer.Specular.x;
	MrtFloat2.z = GBuffer.Roughness.x;
	MrtUint2.w |= ((((GBuffer.ShadingModelID.x) >> 0) & 0x0f) << 0);
	MrtUint2.w |= ((((GBuffer.SelectiveOutputMask.x) >> 0) & 0x0f) << 4);
	MrtFloat3.x = GBuffer.BaseColor.x;
	MrtFloat3.y = GBuffer.BaseColor.y;
	MrtFloat3.z = GBuffer.BaseColor.z;
	MrtFloat3.w = GBuffer.GenericAO.x;
	MrtFloat4.x = GBuffer.Velocity.x;
	MrtFloat4.y = GBuffer.Velocity.y;
	MrtFloat4.z = GBuffer.Velocity.z;
	MrtFloat4.w = GBuffer.Velocity.w;
	MrtFloat6.x = GBuffer.PrecomputedShadowFactors.x;
	MrtFloat6.y = GBuffer.PrecomputedShadowFactors.y;
	MrtFloat6.z = GBuffer.PrecomputedShadowFactors.z;
	MrtFloat6.w = GBuffer.PrecomputedShadowFactors.w;
	MrtFloat5.x = GBuffer.CustomData.x;
	MrtFloat5.y = GBuffer.CustomData.y;
	MrtFloat5.z = GBuffer.CustomData.z;
	MrtFloat5.w = GBuffer.CustomData.w;
	Out.MRT[1] = MrtFloat1;
	Out.MRT[2] = float4(MrtFloat2.x, MrtFloat2.y, MrtFloat2.z, float(MrtUint2.w) / 255.0f);
	Out.MRT[3] = MrtFloat3;
	Out.MRT[4] = MrtFloat4;
	Out.MRT[5] = MrtFloat5;
	Out.MRT[6] = MrtFloat6;
	Out.MRT[7] = float4(0.0f, 0.0f, 0.0f, 0.0f);
}
FGBufferData  DecodeGBufferDataDirect(float4 InMRT1,
	float4 InMRT2,
	float4 InMRT3,
	float4 InMRT4,
	float4 InMRT5,
	float4 InMRT6,
	float CustomNativeDepth,
	float4 AnisotropicData,
	uint CustomStencil,
	float SceneDepth,
	bool bGetNormalizedNormal,
	bool bChecker)
{
	FGBufferData Ret = (FGBufferData)0;
	float3 WorldNormal_Compressed = 0.0f;
	WorldNormal_Compressed.x = InMRT1.x;
	WorldNormal_Compressed.y = InMRT1.y;
	WorldNormal_Compressed.z = InMRT1.z;
	Ret.PerObjectGBufferData.x = InMRT1.w;
	Ret.Metallic.x = InMRT2.x;
	Ret.Specular.x = InMRT2.y;
	Ret.Roughness.x = InMRT2.z;
	Ret.ShadingModelID.x = (((uint((float(InMRT2.w) * 255.0f) + .5f) >> 0) & 0x0f) << 0);
	Ret.SelectiveOutputMask.x = (((uint((float(InMRT2.w) * 255.0f) + .5f) >> 4) & 0x0f) << 0);
	Ret.BaseColor.x = InMRT3.x;
	Ret.BaseColor.y = InMRT3.y;
	Ret.BaseColor.z = InMRT3.z;
	Ret.GenericAO.x = InMRT3.w;
	Ret.Velocity.x = InMRT4.x;
	Ret.Velocity.y = InMRT4.y;
	Ret.Velocity.z = InMRT4.z;
	Ret.Velocity.w = InMRT4.w;
	Ret.PrecomputedShadowFactors.x = InMRT6.x;
	Ret.PrecomputedShadowFactors.y = InMRT6.y;
	Ret.PrecomputedShadowFactors.z = InMRT6.z;
	Ret.PrecomputedShadowFactors.w = InMRT6.w;
	Ret.CustomData.x = InMRT5.x;
	Ret.CustomData.y = InMRT5.y;
	Ret.CustomData.z = InMRT5.z;
	Ret.CustomData.w = InMRT5.w;
	Ret.WorldNormal = DecodeNormalHelper(WorldNormal_Compressed);
	Ret.WorldTangent = AnisotropicData.xyz;
	Ret.Anisotropy = AnisotropicData.w;
	GBufferPostDecode(Ret,bChecker,bGetNormalizedNormal);
	Ret.CustomDepth = ConvertFromDeviceZ(CustomNativeDepth);
	Ret.CustomStencil = CustomStencil;
	Ret.Depth = SceneDepth;
	return Ret;
}
FGBufferData DecodeGBufferDataUV(float2 UV, bool bGetNormalizedNormal = true)
{
	float CustomNativeDepth = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_CustomDepthTexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).r;
	int2 IntUV = (int2)trunc(UV * View_BufferSizeAndInvSize.xy * View_BufferToSceneTextureScale.xy);
	uint CustomStencil = TranslucentBasePass_SceneTextures_CustomStencilTexture.Load(int3(IntUV, 0)) .x;
	float SceneDepth = CalcSceneDepth(UV);
	float4 AnisotropicData = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_GBufferFTexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).xyzw;
	float4 InMRT1 = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_GBufferATexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).xyzw;
	float4 InMRT2 = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_GBufferBTexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).xyzw;
	float4 InMRT3 = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_GBufferCTexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).xyzw;
	float4 InMRT4 = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_GBufferVelocityTexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).xyzw;
	float4 InMRT5 = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_GBufferDTexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).xyzw;
	float4 InMRT6 = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_GBufferETexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).xyzw;
	FGBufferData Ret = DecodeGBufferDataDirect(InMRT1,
		InMRT2,
		InMRT3,
		InMRT4,
		InMRT5,
		InMRT6,
		CustomNativeDepth,
		AnisotropicData,
		CustomStencil,
		SceneDepth,
		bGetNormalizedNormal,
		CheckerFromSceneColorUV(UV));
	return Ret;
}
FGBufferData DecodeGBufferDataUint(uint2 PixelPos, bool bGetNormalizedNormal = true)
{
	float CustomNativeDepth = TranslucentBasePass_SceneTextures_CustomDepthTexture.Load(int3(PixelPos, 0)).r;
	uint CustomStencil = TranslucentBasePass_SceneTextures_CustomStencilTexture.Load(int3(PixelPos, 0)) .x;
	float SceneDepth = CalcSceneDepth(PixelPos);
	float4 AnisotropicData = TranslucentBasePass_SceneTextures_GBufferFTexture.Load(int3(PixelPos, 0)).xyzw;
	float4 InMRT1 = TranslucentBasePass_SceneTextures_GBufferATexture.Load(int3(PixelPos, 0)).xyzw;
	float4 InMRT2 = TranslucentBasePass_SceneTextures_GBufferBTexture.Load(int3(PixelPos, 0)).xyzw;
	float4 InMRT3 = TranslucentBasePass_SceneTextures_GBufferCTexture.Load(int3(PixelPos, 0)).xyzw;
	float4 InMRT4 = TranslucentBasePass_SceneTextures_GBufferVelocityTexture.Load(int3(PixelPos, 0)).xyzw;
	float4 InMRT5 = TranslucentBasePass_SceneTextures_GBufferDTexture.Load(int3(PixelPos, 0)).xyzw;
	float4 InMRT6 = TranslucentBasePass_SceneTextures_GBufferETexture.Load(int3(PixelPos, 0)).xyzw;
	FGBufferData Ret = DecodeGBufferDataDirect(InMRT1,
		InMRT2,
		InMRT3,
		InMRT4,
		InMRT5,
		InMRT6,
		CustomNativeDepth,
		AnisotropicData,
		CustomStencil,
		SceneDepth,
		bGetNormalizedNormal,
		CheckerFromPixelPos(PixelPos));
	return Ret;
}
FGBufferData DecodeGBufferDataSceneTextures(float2 UV, bool bGetNormalizedNormal = true)
{
	uint CustomStencil = 0;
	float CustomNativeDepth = 0;
	float DeviceZ = SampleDeviceZFromSceneTexturesTempCopy(UV);
	float SceneDepth = ConvertFromDeviceZ(DeviceZ);
	float4 AnisotropicData = GBufferFTexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).xyzw;
	float4 InMRT1 = GBufferATexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).xyzw;
	float4 InMRT2 = GBufferBTexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).xyzw;
	float4 InMRT3 = GBufferCTexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).xyzw;
	float4 InMRT4 = GBufferVelocityTexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).xyzw;
	float4 InMRT5 = GBufferDTexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).xyzw;
	float4 InMRT6 = GBufferETexture.SampleLevel( View_SharedPointClampedSampler, UV, 0).xyzw;
	FGBufferData Ret = DecodeGBufferDataDirect(InMRT1,
		InMRT2,
		InMRT3,
		InMRT4,
		InMRT5,
		InMRT6,
		CustomNativeDepth,
		AnisotropicData,
		CustomStencil,
		SceneDepth,
		bGetNormalizedNormal,
		CheckerFromSceneColorUV(UV));
	return Ret;
}
FGBufferData DecodeGBufferDataSceneTexturesLoad(uint2 PixelCoord, bool bGetNormalizedNormal = true)
{
	uint CustomStencil = 0;
	float CustomNativeDepth = 0;
	float DeviceZ = SceneDepthTexture.Load(int3(PixelCoord, 0)).r;
	float SceneDepth = ConvertFromDeviceZ(DeviceZ);
	float4 AnisotropicData = GBufferFTexture.Load(int3(PixelCoord, 0)).xyzw;
	float4 InMRT1 = GBufferATexture.Load(int3(PixelCoord, 0)).xyzw;
	float4 InMRT2 = GBufferBTexture.Load(int3(PixelCoord, 0)).xyzw;
	float4 InMRT3 = GBufferCTexture.Load(int3(PixelCoord, 0)).xyzw;
	float4 InMRT4 = GBufferVelocityTexture.Load(int3(PixelCoord, 0)).xyzw;
	float4 InMRT5 = GBufferDTexture.Load(int3(PixelCoord, 0)).xyzw;
	float4 InMRT6 = GBufferETexture.Load(int3(PixelCoord, 0)).xyzw;
	FGBufferData Ret = DecodeGBufferDataDirect(InMRT1,
		InMRT2,
		InMRT3,
		InMRT4,
		InMRT5,
		InMRT6,
		CustomNativeDepth,
		AnisotropicData,
		CustomStencil,
		SceneDepth,
		bGetNormalizedNormal,
		CheckerFromPixelPos(PixelCoord));
	return Ret;
}
struct FScreenSpaceData
{
	FGBufferData GBuffer;
	float AmbientOcclusion;
};
void SetGBufferForUnlit(out float4 OutGBufferB)
{
	OutGBufferB = 0;
	OutGBufferB.a = EncodeShadingModelIdAndSelectiveOutputMask(0, 0);
}
float4 ComputeIndirectLightingSampleE(uint2 TracingPixelCoord, uint TracingRayIndex, uint TracingRayCount)
{
	uint2 Seed0 = Rand3DPCG16(int3(TracingPixelCoord, View_StateFrameIndexMod8)).xy;
	uint2 Seed1 = Rand3DPCG16(int3(TracingPixelCoord + 17, View_StateFrameIndexMod8)).xy;
	return float4(
		Hammersley16(TracingRayIndex, TracingRayCount, Seed0),
		Hammersley16(TracingRayIndex, TracingRayCount, Seed1));
}
void EncodeGBuffer(
	FGBufferData GBuffer,
	out float4 OutGBufferA,
	out float4 OutGBufferB,
	out float4 OutGBufferC,
	out float4 OutGBufferD,
	out float4 OutGBufferE,
	out float4 OutGBufferVelocity,
	float QuantizationBias = 0		
	)
{
	if (GBuffer.ShadingModelID == 0)
	{
		OutGBufferA = 0;
		SetGBufferForUnlit(OutGBufferB);
		OutGBufferC = 0;
		OutGBufferD = 0;
		OutGBufferE = 0;
	}
	else
	{
		OutGBufferA.rgb = EncodeNormal( GBuffer.WorldNormal );
		OutGBufferA.a = GBuffer.PerObjectGBufferData;
		OutGBufferB.r = GBuffer.Metallic;
		OutGBufferB.g = GBuffer.Specular;
		OutGBufferB.b = GBuffer.Roughness;
		OutGBufferB.a = EncodeShadingModelIdAndSelectiveOutputMask(GBuffer.ShadingModelID, GBuffer.SelectiveOutputMask);
		OutGBufferC.rgb = EncodeBaseColor( GBuffer.BaseColor );
		OutGBufferC.a = EncodeIndirectIrradiance(GBuffer.IndirectIrradiance * GBuffer.GBufferAO) + QuantizationBias * (1.0 / 255.0);
		OutGBufferD = GBuffer.CustomData;
		OutGBufferE = GBuffer.PrecomputedShadowFactors;
	}
	OutGBufferVelocity = 0;
}
bool AdjustBaseColorAndSpecularColorForSubsurfaceProfileLighting(inout float3 BaseColor, inout float Specular, bool bChecker)
{
	const bool bCheckerboardRequired = View_bSubsurfacePostprocessEnabled > 0 && View_bCheckerboardSubsurfaceProfileRendering > 0;
	BaseColor = (1 && View_bSubsurfacePostprocessEnabled) ? float3(1, 1, 1) : BaseColor;
	if (bCheckerboardRequired && 1)
	{
		BaseColor = bChecker;
		Specular *= !bChecker;
	}
	return bCheckerboardRequired;
}
void AdjustBaseColorAndSpecularColorForSubsurfaceProfileLighting(inout float3 BaseColor, inout float3 SpecularColor, inout float Specular, bool bChecker)
{
	return;
}
FGBufferData DecodeGBufferData(
	float4 InGBufferA,
	float4 InGBufferB,
	float4 InGBufferC,
	float4 InGBufferD,
	float4 InGBufferE,
	float4 InGBufferF,
	float4 InGBufferVelocity,
	float CustomNativeDepth,
	uint CustomStencil,
	float SceneDepth,
	bool bGetNormalizedNormal,
	bool bChecker)
{
	FGBufferData GBuffer;
	GBuffer.WorldNormal = DecodeNormal( InGBufferA.xyz );
	if(bGetNormalizedNormal)
	{
		GBuffer.WorldNormal = normalize(GBuffer.WorldNormal);
	}
	GBuffer.PerObjectGBufferData = InGBufferA.a;  
	GBuffer.Metallic	= InGBufferB.r;
	GBuffer.Specular	= InGBufferB.g;
	GBuffer.Roughness	= InGBufferB.b;
	GBuffer.ShadingModelID = DecodeShadingModelId(InGBufferB.a);
	GBuffer.SelectiveOutputMask = DecodeSelectiveOutputMask(InGBufferB.a);
	GBuffer.BaseColor = DecodeBaseColor(InGBufferC.rgb);
	GBuffer.GBufferAO = 1;
	GBuffer.DiffuseIndirectSampleOcclusion = 0x0;
	GBuffer.IndirectIrradiance = DecodeIndirectIrradiance(InGBufferC.a);
	GBuffer.CustomData = HasCustomGBufferData(GBuffer.ShadingModelID) ? InGBufferD : 0;
	GBuffer.PrecomputedShadowFactors = !(GBuffer.SelectiveOutputMask & (1 << 5)) ? InGBufferE :  ((GBuffer.SelectiveOutputMask & (1 << 6)) ? 0 :  1);
	GBuffer.CustomDepth = ConvertFromDeviceZ(CustomNativeDepth);
	GBuffer.CustomStencil = CustomStencil;
	GBuffer.Depth = SceneDepth;
	GBuffer.StoredBaseColor = GBuffer.BaseColor;
	GBuffer.StoredMetallic = GBuffer.Metallic;
	GBuffer.StoredSpecular = GBuffer.Specular;
	[flatten]
	if( GBuffer.ShadingModelID == 9 )
	{
		GBuffer.Metallic = 0.0;
	}
	{
		GBuffer.SpecularColor = ComputeF0(GBuffer.Specular, GBuffer.BaseColor, GBuffer.Metallic);
		if (UseSubsurfaceProfile(GBuffer.ShadingModelID))
		{
			AdjustBaseColorAndSpecularColorForSubsurfaceProfileLighting(GBuffer.BaseColor, GBuffer.SpecularColor, GBuffer.Specular, bChecker);
		}
		GBuffer.DiffuseColor = GBuffer.BaseColor - GBuffer.BaseColor * GBuffer.Metallic;
		{
			GBuffer.DiffuseColor = GBuffer.DiffuseColor * View_DiffuseOverrideParameter.www + View_DiffuseOverrideParameter.xyz;
			GBuffer.SpecularColor = GBuffer.SpecularColor * View_SpecularOverrideParameter.w + View_SpecularOverrideParameter.xyz;
		}
	}
	{
		bool bHasAnisoProp = HasAnisotropy(GBuffer.SelectiveOutputMask);
		GBuffer.WorldTangent = bHasAnisoProp ? DecodeNormal(InGBufferF.rgb) : 0;
		GBuffer.Anisotropy   = bHasAnisoProp ? InGBufferF.a * 2.0f - 1.0f   : 0;
		if (bGetNormalizedNormal && bHasAnisoProp)
		{
			GBuffer.WorldTangent = normalize(GBuffer.WorldTangent);
		}
	}
	GBuffer.Velocity = !(GBuffer.SelectiveOutputMask & (1 << 7)) ? InGBufferVelocity : 0;
	return GBuffer;
}
float3 ExtractSubsurfaceColor(FGBufferData BufferData)
{
	return Square(BufferData.CustomData.rgb);
}
uint ExtractSubsurfaceProfileInt(float ProfileNormFloat)
{
	return uint(ProfileNormFloat * 255.0f + 0.5f);
}
uint ExtractSubsurfaceProfileInt(FGBufferData BufferData)
{
	return ExtractSubsurfaceProfileInt(BufferData.CustomData.r);
}
	FGBufferData GetGBufferDataUint(uint2 PixelPos, bool bGetNormalizedNormal = true)
	{
		return DecodeGBufferDataUint(PixelPos,bGetNormalizedNormal);
	}
	FScreenSpaceData GetScreenSpaceDataUint(uint2 PixelPos, bool bGetNormalizedNormal = true)
	{
		FScreenSpaceData Out;
		Out.GBuffer = GetGBufferDataUint(PixelPos, bGetNormalizedNormal);
		float4 ScreenSpaceAO = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_ScreenSpaceAOTexture, TranslucentBasePass_SceneTextures_PointClampSampler, (PixelPos + 0.5f) * View_BufferSizeAndInvSize.zw, 0);
		Out.AmbientOcclusion = ScreenSpaceAO.r;
		return Out;
	}
FGBufferData GetGBufferDataFromSceneTextures(float2 UV, bool bGetNormalizedNormal = true)
{
	return DecodeGBufferDataSceneTextures(UV,bGetNormalizedNormal);
}
uint GetSceneLightingChannel(uint2 PixelCoord)
{
	[branch]
	if (bSceneLightingChannelsValid)
	{
		return SceneLightingChannels.Load(uint3(PixelCoord, 0)).x;
	}
	return ~0;
}
FGBufferData GetGBufferData(float2 UV, bool bGetNormalizedNormal = true)
{
	return DecodeGBufferDataUV(UV,bGetNormalizedNormal);
}
uint GetShadingModelId(float2 UV)
{
	return DecodeShadingModelId(Texture2DSampleLevel(TranslucentBasePass_SceneTextures_GBufferBTexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0).a);
}
FScreenSpaceData GetScreenSpaceData(float2 UV, bool bGetNormalizedNormal = true)
{
	FScreenSpaceData Out;
	Out.GBuffer = GetGBufferData(UV, bGetNormalizedNormal);
	float4 ScreenSpaceAO = Texture2DSampleLevel(TranslucentBasePass_SceneTextures_ScreenSpaceAOTexture, TranslucentBasePass_SceneTextures_PointClampSampler, UV, 0);
	Out.AmbientOcclusion = ScreenSpaceAO.r;
	return Out;
}
float3 AOMultiBounce(float3 BaseColor, float AO)
{
	if (0 && !0)
	{
		return AO;
	}
	else
	{
		float3 a = 2.0404 * BaseColor - 0.3324;
		float3 b = -4.7951 * BaseColor + 0.6417;
		float3 c = 2.7552 * BaseColor + 0.6903;
		return max(AO, ((AO * a + b) * AO + c) * AO);
	}
}
float SparseVolumeTextureApplyAddressModeMirror(float v)
{
	float t = frac(v * 0.5f) * 2.0f;
	return 1.0f - abs(t - 1.0f);
}
float SparseVolumeTextureApplyAddressMode(float v, uint AddressMode)
{
	const float MaxTextureSize = 65536.0f;
	switch (AddressMode)
	{
	case 1u: return frac(v);
	case 2u: return SparseVolumeTextureApplyAddressModeMirror(v);
	default: return clamp(v, 0.0f, 1.0f - (1.0f / MaxTextureSize));
	}
}
float3 SparseVolumeTextureApplyAddressMode(float3 UVW, uint AddressU, uint AddressV, uint AddressW)
{
	return float3(
		SparseVolumeTextureApplyAddressMode(UVW.x, AddressU),
		SparseVolumeTextureApplyAddressMode(UVW.y, AddressV),
		SparseVolumeTextureApplyAddressMode(UVW.z, AddressW));
}
struct FSparseVolumeTextureUniforms
{
	float3			VolumePageResolution;
	float3			PageTableOffset;
	float3			TileDataTexelSize;
	int				FrameIndex;
	int             HighestMipLevel;
};
FSparseVolumeTextureUniforms SparseVolumeTextureUnpackUniforms(const uint4 Packed0, const uint4 Packed1)
{
	FSparseVolumeTextureUniforms Result;
	Result.VolumePageResolution = asfloat(Packed0.xyz);
	Result.PageTableOffset.x = float(Packed0.w & 0x7FFu);
	Result.PageTableOffset.y = float((Packed0.w >> 11u) & 0x7FFu);
	Result.PageTableOffset.z = float((Packed0.w >> 22u) & 0x3FFu);
	Result.TileDataTexelSize = asfloat(Packed1.xyz);
	Result.FrameIndex = int(Packed1.w & 0xFFFFu);
	Result.HighestMipLevel = int((Packed1.w >> 16u) & 0xFFFFu);
	return Result;
}
float SparseVolumeTextureCalculateMipLevel(FSparseVolumeTextureUniforms Uniforms, float3 UVWDDX, float3 UVWDDY, float MipBias, float2 SvPositionXY)
{
	const float3 Resolution = Uniforms.VolumePageResolution * float(16);
	const float3 TexCoordDDX = UVWDDX * Resolution;
	const float3 TexCoordDDY = UVWDDY * Resolution;
	const float DDXLengthSquared = dot(TexCoordDDX, TexCoordDDX);
	const float DDYLengthSquared = dot(TexCoordDDY, TexCoordDDY);
	const float MaxLengthSquared = max(DDXLengthSquared, DDYLengthSquared);
	const float ComputedMipLevel = 0.5f * log2(max(MaxLengthSquared, 1e-8f));
	const float Noise = 0.0f;
	const float FinalMipLevelClamped = max(0.0f, ComputedMipLevel + MipBias + Noise);
	return FinalMipLevelClamped;
}
float3 SparseVolumeTextureGetVoxelCoord(Texture3D<uint> PageTable, FSparseVolumeTextureUniforms Uniforms, float3 PageTableCoord, int MipLevel)
{
	const uint PackedPhysicalTileCoord = PageTable.Load(int4(floor(PageTableCoord), MipLevel)).x;
	const int3 PhysicalTileCoord = int3(PackedPhysicalTileCoord & 0xFFu, (PackedPhysicalTileCoord >> 8u) & 0xFFu, (PackedPhysicalTileCoord >> 16u) & 0xFFu);
	const uint TileMipLevel = PackedPhysicalTileCoord >> 24u;
	const float TileRcpMipLevelFactor = rcp(float(1u << (TileMipLevel - uint(MipLevel))));
	const float3 FracTileCoord = frac(PageTableCoord * TileRcpMipLevelFactor);
	const float3 VoxelCoord = float3(PhysicalTileCoord) * float((16 + 2 * 1)) + (FracTileCoord * float(16) + float(1));
	return VoxelCoord;
}
float3 SparseVolumeTextureSamplePageTable(Texture3D<uint> PageTable, FSparseVolumeTextureUniforms Uniforms, float3 UVW, uint AddressU, uint AddressV, uint AddressW, int MipLevel = 0)
{
	UVW = SparseVolumeTextureApplyAddressMode(UVW, AddressU, AddressV, AddressW);
	MipLevel = clamp(MipLevel, 0, Uniforms.HighestMipLevel);
	const float RcpMipLevelFactor = rcp(float(1u << (uint)MipLevel));
	const float3 VolumePageCoord = UVW * Uniforms.VolumePageResolution;
	const float3 MipPageTableOffset = floor(Uniforms.PageTableOffset * RcpMipLevelFactor);
	const float3 PageTableCoord = VolumePageCoord * RcpMipLevelFactor - MipPageTableOffset;
	const float3 VoxelCoord = SparseVolumeTextureGetVoxelCoord(PageTable, Uniforms, PageTableCoord, MipLevel);
	const float3 VoxelUVW = VoxelCoord * Uniforms.TileDataTexelSize;
	return VoxelUVW;
}
int3 SparseVolumeTextureLoadPageTable(Texture3D<uint> PageTable, FSparseVolumeTextureUniforms Uniforms, int3 TexelCoord, int MipLevel = 0)
{
	if (MipLevel < 0 || MipLevel > Uniforms.HighestMipLevel)
	{
		return 0; 
	}
	const float RcpMipLevelFactor = rcp(float(1u << (uint)MipLevel));
	const float3 VolumeMipPageCoord = (TexelCoord + 0.5f) / float(16);
	const float3 MipPageTableOffset = floor(Uniforms.PageTableOffset * RcpMipLevelFactor);
	const float3 PageTableCoord = VolumeMipPageCoord - MipPageTableOffset;
	const float3 VoxelCoord = SparseVolumeTextureGetVoxelCoord(PageTable, Uniforms, PageTableCoord, MipLevel);
	return int3(VoxelCoord);
}
float4 SparseVolumeTextureSamplePhysicalTileData(Texture3D PhysicalTileDataA, Texture3D PhysicalTileDataB, SamplerState TileDataSampler, float3 VoxelUVW, int PhysicalTileDataIndex)
{
	switch (PhysicalTileDataIndex)
	{
	case 0: return PhysicalTileDataA.SampleLevel(TileDataSampler, VoxelUVW, 0.0f);
	case 1: return PhysicalTileDataB.SampleLevel(TileDataSampler, VoxelUVW, 0.0f);
	default: return 0.0f;
	}
}
float3 SparseVolumeTextureSamplePageTableSecondMipWrapper(Texture3D<uint> PageTable, FSparseVolumeTextureUniforms Uniforms, float3 UVW, uint AddressU, uint AddressV, uint AddressW, int MipLevel = 0)
{
	return SparseVolumeTextureSamplePageTable(PageTable, Uniforms, UVW, AddressU, AddressV, AddressW, MipLevel);
}
float4 SparseVolumeTextureSamplePhysicalTileDataSecondMipWrapper(Texture3D PhysicalTileDataA, Texture3D PhysicalTileDataB, SamplerState TileDataSampler, float3 VoxelUVW, int PhysicalTileDataIndex)
{
	return SparseVolumeTextureSamplePhysicalTileData(PhysicalTileDataA, PhysicalTileDataB, TileDataSampler, VoxelUVW, PhysicalTileDataIndex);
}
float4 SparseVolumeTextureCombineMipSamples(float4 LowerMipSample, float4 UpperMipSample, float MipLevelFractionalPart)
{
	return lerp(LowerMipSample, UpperMipSample, MipLevelFractionalPart);
}
uint2 GetMeshPaintTextureDescriptor(FPrimitiveSceneData PrimitiveData)
{
	return PrimitiveData.MeshPaintTextureDescriptor;
}
uint GetMeshPaintTextureCoordinateIndex(FPrimitiveSceneData PrimitiveData)
{
	return GetMeshPaintTextureDescriptor(PrimitiveData).y >> 30;
}
bool GetMeshPaintTextureDescriptorIsValid(FPrimitiveSceneData PrimitiveData)
{
	return GetMeshPaintTextureDescriptor(PrimitiveData).x != 0;
}
float4 ProcessMaterialColorTextureLookup(float4 TextureValue)
{
	return TextureValue;
}
float4 ProcessMaterialVirtualColorTextureLookup(float4 TextureValue)
{
	return ProcessMaterialColorTextureLookup(TextureValue);
}
float4 ProcessMaterialExternalTextureLookup(float4 TextureValue)
{
	return ProcessMaterialColorTextureLookup(TextureValue);
}
float4 ProcessMaterialLinearColorTextureLookup(float4 TextureValue)
{
	return TextureValue;
}
float4 ProcessMaterialGreyscaleTextureLookup(float4 TextureValue)
{
	float GrayValue = TextureValue.r;
	return GrayValue.rrrr;
}
float4 ProcessMaterialLinearGreyscaleTextureLookup(float4 TextureValue)
{
	return TextureValue.rrrr;
}
float4 ProcessMaterialAlphaTextureLookup(float4 TextureValue)
{
	return TextureValue.rrrr;
}
float4 ApplyMaterialSamplerType(float4 Value, int SamplerType)
{
	switch(SamplerType)
	{
	case 9: return ProcessMaterialExternalTextureLookup(Value);
	case 0: return ProcessMaterialColorTextureLookup(Value);
	case 10: return ProcessMaterialVirtualColorTextureLookup(Value);
	case 6:
	case 15: return ProcessMaterialLinearColorTextureLookup(Value);
	case 2:
	case 12:
	case 5: return ProcessMaterialAlphaTextureLookup(Value);
	case 1:
	case 11: return ProcessMaterialGreyscaleTextureLookup(Value);
	case 7:
	case 16: return ProcessMaterialLinearGreyscaleTextureLookup(Value);
	case 3:
	case 13: return UnpackNormalMap(Value);
	case 4:
	case 14:
	case 8:
	default: return Value;
	}
}
float2 PaniniProjection(float2 OM, float d, float s)
{
	float PaniniDirectionXZInvLength = rsqrt(1.0f + OM.x * OM.x);
	float SinPhi = OM.x * PaniniDirectionXZInvLength;
	float TanTheta = OM.y * PaniniDirectionXZInvLength;
	float CosPhi = sqrt(1.0f - SinPhi * SinPhi);
	float S = (d + 1.0f) / (d + CosPhi);
	return S * float2(SinPhi, lerp(TanTheta, TanTheta / CosPhi, s));
}
float4 GetDBufferReprojectedWorldNormal(float2 UV)
{
	return float4(0, 0, 1, 1);
}
struct FSubstrateData
{
	uint Dummy;
};
FSubstrateData GetInitialisedSubstrateData() { return (FSubstrateData)0; }
uint GetDBufferTargetMask(uint2 PixelPos)
{
	{
		return 0x07;
	}
}
struct FDBufferData
{
	float3 PreMulColor;
	float ColorOpacity;
	float3 PreMulWorldNormal;
	float NormalOpacity;
	float PreMulRoughness;
	float PreMulMetallic;
	float PreMulSpecular;
	float RoughnessOpacity;
};
void EncodeDBufferData(FGBufferData GBufferData, float3 MultiOpacity,
	out float4 DBufferA,
	out float4 DBufferB,
	out float4 DBufferC)
{
	DBufferA = float4(GBufferData.BaseColor, MultiOpacity.x);
	DBufferB = float4(GBufferData.WorldNormal * 0.5f + 128.0f/255.0f, MultiOpacity.y);
	DBufferC = float4(GBufferData.Metallic, GBufferData.Specular, GBufferData.Roughness, MultiOpacity.z);
}
FDBufferData DecodeDBufferData(
	float4 DBufferA,
	float4 DBufferB,
	float4 DBufferC)
{
	FDBufferData ret;
	ret.PreMulColor = DBufferA.rgb;
	ret.ColorOpacity = DBufferA.a;
	ret.PreMulWorldNormal = DBufferB.rgb * 2 - (256.0 / 255.0);
	ret.NormalOpacity = DBufferB.a;
	ret.PreMulMetallic = DBufferC.r;
	ret.PreMulSpecular = DBufferC.g;
	ret.PreMulRoughness = DBufferC.b;
	ret.RoughnessOpacity = DBufferC.a;
	return ret;
}
FDBufferData GetDBufferData(float2 BufferUV, uint RTMaskBit, uint EyeIndex)
{
	float4 DBufferA = float4(0.0, 0.0, 0.0, 1.0);
	float4 DBufferB = float4(128.0f / 255.0f, 128.f / 255.5f, 128.f / 255.5f, 1.0);
	float4 DBufferC = float4(0.0, 0.0, 0.0, 1.0);
	[branch]
	if (RTMaskBit & 0x1)
	{
		DBufferA = Texture2DSampleLevel(OpaqueBasePass_DBufferATexture, OpaqueBasePass_DBufferATextureSampler, BufferUV, 0);
	}
	[branch]
	if (RTMaskBit & 0x2)
	{
		DBufferB = Texture2DSampleLevel(OpaqueBasePass_DBufferBTexture, OpaqueBasePass_DBufferATextureSampler, BufferUV, 0);
	}
	[branch]
	if (RTMaskBit & 0x4)
	{
		DBufferC = Texture2DSampleLevel(OpaqueBasePass_DBufferCTexture, OpaqueBasePass_DBufferATextureSampler, BufferUV, 0);
	}
	return DecodeDBufferData(DBufferA, DBufferB, DBufferC);
}
FDBufferData GetDBufferData(float2 BufferUV, uint RTMaskBit)
{
	return GetDBufferData(BufferUV, RTMaskBit, 0);
}
void ApplyDBufferData(
	FDBufferData DBufferData, inout float3 WorldNormal, inout float3 SubsurfaceColor, inout float Roughness, 
	inout float3 BaseColor, inout float Metallic, inout float Specular )
{
}
struct FMaterialParticleParameters
{
	float RelativeTime;
	float MotionBlurFade;
	float Random;
	float4 Velocity;
	float4 Color;
	float4 TranslatedWorldPositionAndSize;
	float4 PrevTranslatedWorldPositionAndSize;
	FLWCVector3 WorldPosition;
	FLWCVector3 PrevWorldPosition;
	float4 MacroUV;
	float4 DynamicParameter;
	FDFMatrix ParticleToWorld;
	FDFInverseMatrix WorldToParticle;
	float2 Size;
	float SpriteRotation;
};
float4 GetDynamicParameter(FMaterialParticleParameters Parameters, float4 Default, int ParameterIndex=0)
{
	return Default;
}
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
struct FMaterialAttributes
{
	float3 BaseColor;
	float Metallic;
	float Specular;
	float Roughness;
	float Anisotropy;
	float3 EmissiveColor;
	float Opacity;
	float OpacityMask;
	float3 Normal;
	float3 Tangent;
	float3 WorldPositionOffset;
	float Displacement;
	float3 SubsurfaceColor;
	float ClearCoat;
	float ClearCoatRoughness;
	float AmbientOcclusion;
	float3 Refraction;
	float PixelDepthOffset;
	uint ShadingModel;
	float SurfaceThickness;
	FSubstrateData FrontMaterial;
	float2 CustomizedUV0;
	float2 CustomizedUV1;
	float2 CustomizedUV2;
	float2 CustomizedUV3;
	float2 CustomizedUV4;
	float2 CustomizedUV5;
	float2 CustomizedUV6;
	float2 CustomizedUV7;
	float3 BentNormal;
	float3 ClearCoatBottomNormal;
	float3 CustomEyeTangent;
	float3 TransmittanceColor;
	float ThinTranslucentSurfaceCoverage;
};
FMaterialAttributes FMaterialAttributes_SetBaseColor(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.BaseColor = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetMetallic(FMaterialAttributes InAttributes, float InValue) { InAttributes.Metallic = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetSpecular(FMaterialAttributes InAttributes, float InValue) { InAttributes.Specular = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetRoughness(FMaterialAttributes InAttributes, float InValue) { InAttributes.Roughness = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetAnisotropy(FMaterialAttributes InAttributes, float InValue) { InAttributes.Anisotropy = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetEmissiveColor(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.EmissiveColor = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetOpacity(FMaterialAttributes InAttributes, float InValue) { InAttributes.Opacity = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetOpacityMask(FMaterialAttributes InAttributes, float InValue) { InAttributes.OpacityMask = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetNormal(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.Normal = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetTangent(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.Tangent = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetWorldPositionOffset(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.WorldPositionOffset = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetDisplacement(FMaterialAttributes InAttributes, float InValue) { InAttributes.Displacement = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetSubsurfaceColor(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.SubsurfaceColor = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetClearCoat(FMaterialAttributes InAttributes, float InValue) { InAttributes.ClearCoat = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetClearCoatRoughness(FMaterialAttributes InAttributes, float InValue) { InAttributes.ClearCoatRoughness = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetAmbientOcclusion(FMaterialAttributes InAttributes, float InValue) { InAttributes.AmbientOcclusion = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetRefraction(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.Refraction = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetPixelDepthOffset(FMaterialAttributes InAttributes, float InValue) { InAttributes.PixelDepthOffset = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetShadingModel(FMaterialAttributes InAttributes, uint InValue) { InAttributes.ShadingModel = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetSurfaceThickness(FMaterialAttributes InAttributes, float InValue) { InAttributes.SurfaceThickness = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetFrontMaterial(FMaterialAttributes InAttributes, FSubstrateData InValue) { InAttributes.FrontMaterial = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomizedUV0(FMaterialAttributes InAttributes, float2 InValue) { InAttributes.CustomizedUV0 = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomizedUV1(FMaterialAttributes InAttributes, float2 InValue) { InAttributes.CustomizedUV1 = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomizedUV2(FMaterialAttributes InAttributes, float2 InValue) { InAttributes.CustomizedUV2 = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomizedUV3(FMaterialAttributes InAttributes, float2 InValue) { InAttributes.CustomizedUV3 = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomizedUV4(FMaterialAttributes InAttributes, float2 InValue) { InAttributes.CustomizedUV4 = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomizedUV5(FMaterialAttributes InAttributes, float2 InValue) { InAttributes.CustomizedUV5 = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomizedUV6(FMaterialAttributes InAttributes, float2 InValue) { InAttributes.CustomizedUV6 = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomizedUV7(FMaterialAttributes InAttributes, float2 InValue) { InAttributes.CustomizedUV7 = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetBentNormal(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.BentNormal = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetClearCoatBottomNormal(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.ClearCoatBottomNormal = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetCustomEyeTangent(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.CustomEyeTangent = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetTransmittanceColor(FMaterialAttributes InAttributes, float3 InValue) { InAttributes.TransmittanceColor = InValue; return InAttributes; }
FMaterialAttributes FMaterialAttributes_SetThinTranslucentSurfaceCoverage(FMaterialAttributes InAttributes, float InValue) { InAttributes.ThinTranslucentSurfaceCoverage = InValue; return InAttributes; }
_Pragma("dxc diagnostic pop")
struct FPixelMaterialInputs
{
	float3 EmissiveColor;
	float Opacity;
	float OpacityMask;
	float3 BaseColor;
	float Metallic;
	float Specular;
	float Roughness;
	float Anisotropy;
	float3 Normal;
	float3 Tangent;
	float4 Subsurface;
	float AmbientOcclusion;
	float3 Refraction;
	float PixelDepthOffset;
	uint ShadingModel;
	FSubstrateData FrontMaterial;
	float SurfaceThickness;
	float Displacement;
};
struct FMaterialLWCData
{
	FLWCVector3 AbsoluteWorldPosition;
	FLWCVector3 WorldPosition_NoOffsets;
	FLWCMatrix	LocalToWorld;
	FLWCInverseMatrix WorldToLocal;
	FLWCMatrix	PreviousLocalToWorld;
	FLWCInverseMatrix PreviousWorldToLocal;
	FLWCMatrix	InstanceToWorld;
	FLWCInverseMatrix WorldToInstance;
	FLWCMatrix	PreviousInstanceToWorld;
	FLWCVector3	ObjectWorldPosition;
	FLWCVector3	ActorWorldPosition;
	FLWCMatrix ParticleToWorld;
	FLWCInverseMatrix WorldToParticle;
	FLWCVector3 ParticleWorldPosition;
	FLWCVector3 PrevParticleWorldPosition;
	FLWCVector3 PreViewTranslation;
	FLWCVector3 PrevPreViewTranslation;
	FLWCVector3 WorldViewOrigin;
	FLWCVector3 PrevWorldViewOrigin;
	FLWCVector3 WorldCameraOrigin;
	FLWCVector3 PrevWorldCameraOrigin;
};
struct FMaterialPixelParameters
{
	float4 VertexColor;
	float3 WorldNormal;
	float3 WorldTangent;
	float3 ReflectionVector;
	float3 CameraVector;
	float3 LightVector;
	float4 SvPosition;
	float4 ScreenPosition;
	float2 ViewBufferUV;
	float UnMirrored;
	float TwoSidedSign;
	float3x3 TangentToWorld;
	FDFVector3 AbsoluteWorldPosition;
	float3 WorldPosition_CamRelative;
	FDFVector3 WorldPosition_NoOffsets;
	float3 WorldPosition_NoOffsets_CamRelative;
	float3 LightingPositionOffset;
	float3 WorldPosition_DDX;
	float3 WorldPosition_DDY;
	float3 WorldGeoNormal_DDX;
	float3 WorldGeoNormal_DDY;
	float4 VertexColor_DDX;
	float4 VertexColor_DDY;
	float4 ScreenPosition_DDX;
	float4 ScreenPosition_DDY;
	float AOMaterialMask;
	float PerInstanceRandom;
	uint PrimitiveId;
	FMaterialParticleParameters Particle;
	float4 FontSignedDistanceData;
	FMaterialAttributes MaterialAttributes;
	FMaterialLWCData LWCData;
};
FMaterialPixelParameters MakeInitializedMaterialPixelParameters()
{
	FMaterialPixelParameters MPP;
	MPP = (FMaterialPixelParameters)0;
	MPP.TangentToWorld = float3x3(1,0,0,0,1,0,0,0,1);
	return MPP;
}
struct FMaterialVertexParameters
{
	float3 WorldPosition;
	float3 PositionPrimitiveSpace;
	float3 PositionInstanceSpace;
	float3x3 TangentToWorld;
	float PerInstanceRandom;
	FDFMatrix PrevFrameLocalToWorld;
	float3 PreSkinnedPosition;
	float3 PreSkinnedNormal;
	float4 VertexColor;
	FMaterialParticleParameters Particle;
	FMaterialAttributes MaterialAttributes;
	FSceneDataIntermediates SceneData;
	uint PrimitiveId;
	bool bEvaluateWorldPositionOffset;
	FMaterialLWCData LWCData;
};
FMaterialVertexParameters MakeInitializedMaterialVertexParameters()
{
	FMaterialVertexParameters Result = (FMaterialVertexParameters)0;
	Result.PrimitiveId = ((1u << (20u)) - 1u);
	Result.bEvaluateWorldPositionOffset = true;
	return Result;
}
float MaterialReadInterpolatorComponent(FMaterialPixelParameters Parameters, int InterpolatorIndex)
{
	return 0.0f;
}
void MaterialPackInterpolatorComponent(in out FMaterialVertexParameters Parameters, int InterpolatorIndex, float Value)
{
}
FPrimitiveSceneData GetPrimitiveData(FMaterialVertexParameters Parameters)
{
	return Parameters.SceneData.Primitive;
}
FPrimitiveSceneData GetPrimitiveData(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters.PrimitiveId);
}
bool UnpackUniform_bool(uint Packed, uint BitOffset)
{
	return (bool)((Packed >> BitOffset) & 0x1);
}
bool2 UnpackUniform_bool2(uint Packed, uint BitOffset)
{
	return bool2(UnpackUniform_bool(Packed, BitOffset), UnpackUniform_bool(Packed, BitOffset + 1));
}
bool3 UnpackUniform_bool3(uint Packed, uint BitOffset)
{
	return bool3(UnpackUniform_bool(Packed, BitOffset), UnpackUniform_bool(Packed, BitOffset + 1), UnpackUniform_bool(Packed, BitOffset + 2));
}
bool4 UnpackUniform_bool4(uint Packed, uint BitOffset)
{
	return bool4(UnpackUniform_bool(Packed, BitOffset), UnpackUniform_bool(Packed, BitOffset + 1), UnpackUniform_bool(Packed, BitOffset + 2), UnpackUniform_bool(Packed, BitOffset + 3));
}
float3x3 GetLocalToWorld3x3(FMaterialVertexParameters Parameters)
{
	return DFToFloat3x3(GetPrimitiveData(Parameters).LocalToWorld);
}
float3x3 GetPreviousLocalToWorld3x3(FMaterialVertexParameters Parameters)
{
	return DFToFloat3x3(GetPrimitiveData(Parameters).PreviousLocalToWorld);
}
float3x3 GetLocalToWorld3x3(FMaterialPixelParameters Parameters)
{
	return DFToFloat3x3(GetPrimitiveData(Parameters).LocalToWorld);
}
float3x3 GetLocalToWorld3x3()
{
	return DFToFloat3x3(GetPrimitiveDataFromUniformBuffer().LocalToWorld);
}
FDFInverseMatrix GetWorldToInstanceDF(FMaterialVertexParameters Parameters)
{
		return GetPrimitiveData(Parameters).WorldToLocal;
}
FLWCInverseMatrix GetWorldToInstance(FMaterialVertexParameters Parameters) { return Parameters.LWCData.WorldToInstance; }
FDFInverseMatrix GetWorldToInstanceDF(FMaterialPixelParameters Parameters)
{
		return GetPrimitiveData(Parameters).WorldToLocal;
}
FLWCInverseMatrix GetWorldToInstance(FMaterialPixelParameters Parameters) { return Parameters.LWCData.WorldToInstance; }
FDFMatrix GetInstanceToWorldDF(FMaterialVertexParameters Parameters)
{
		return GetPrimitiveData(Parameters).LocalToWorld;
}
FLWCMatrix GetInstanceToWorld(FMaterialVertexParameters Parameters) { return Parameters.LWCData.InstanceToWorld; }
FDFMatrix GetPrevInstanceToWorldDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousLocalToWorld;
}
FLWCMatrix GetPrevInstanceToWorld(FMaterialVertexParameters Parameters) { return Parameters.LWCData.PreviousInstanceToWorld; }
FDFMatrix GetInstanceToWorldDF(FMaterialPixelParameters Parameters)
{
		return GetPrimitiveData(Parameters).LocalToWorld;
}
FLWCMatrix GetInstanceToWorld(FMaterialPixelParameters Parameters) { return Parameters.LWCData.InstanceToWorld; }
FDFMatrix GetPrevInstanceToWorldDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousLocalToWorld;
}
FLWCMatrix GetPrevInstanceToWorld(FMaterialPixelParameters Parameters) { return Parameters.LWCData.PreviousInstanceToWorld; }
FLWCVector3 GetPreViewTranslation(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.PreViewTranslation;
}
FLWCVector3 GetPreViewTranslation(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.PreViewTranslation;
}
FLWCVector3 GetPrevPreViewTranslation(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.PrevPreViewTranslation;
}
FLWCVector3 GetPrevPreViewTranslation(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.PrevPreViewTranslation;
}
FLWCVector3 GetWorldViewOrigin(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.WorldViewOrigin;
}
FLWCVector3 GetWorldViewOrigin(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.WorldViewOrigin;
}
FLWCVector3 GetPrevWorldViewOrigin(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.PrevWorldViewOrigin;
}
FLWCVector3 GetPrevWorldViewOrigin(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.PrevWorldViewOrigin;
}
FLWCVector3 GetWorldCameraOrigin(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.WorldCameraOrigin;
}
FLWCVector3 GetWorldCameraOrigin(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.WorldCameraOrigin;
}
FLWCVector3 GetPrevWorldCameraOrigin(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.PrevWorldCameraOrigin;
}
FLWCVector3 GetPrevWorldCameraOrigin(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.PrevWorldCameraOrigin;
}
float3 GetTranslatedWorldPosition(FMaterialVertexParameters Parameters)
{
	return Parameters.WorldPosition;
}
float3 GetPrevTranslatedWorldPosition(FMaterialVertexParameters Parameters)
{
	return GetTranslatedWorldPosition(Parameters);
}
FLWCVector3 GetWorldPosition(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.AbsoluteWorldPosition;
}
FLWCVector3 GetPrevWorldPosition(FMaterialVertexParameters Parameters)
{
	return LWCSubtract(GetPrevTranslatedWorldPosition(Parameters), GetPrevPreViewTranslation(Parameters));
}
FLWCVector3 GetWorldPosition(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.AbsoluteWorldPosition;
}
FLWCVector3 GetWorldPosition_NoMaterialOffsets(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.WorldPosition_NoOffsets;
}
float3 GetTranslatedWorldPosition(FMaterialPixelParameters Parameters)
{
	return Parameters.WorldPosition_CamRelative;
}
float3 GetTranslatedWorldPosition_NoMaterialOffsets(FMaterialPixelParameters Parameters)
{
	return Parameters.WorldPosition_NoOffsets_CamRelative;
}
FLWCVector3 GetParticleWorldPosition(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.ParticleWorldPosition;
}
FLWCVector3 GetParticleWorldPosition(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.ParticleWorldPosition;
}
FLWCVector3 GetPrevParticleWorldPosition(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.PrevParticleWorldPosition;
}
FLWCVector3 GetPrevParticleWorldPosition(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.PrevParticleWorldPosition;
}
float3 GetPeriodicWorldOrigin(float3 Scale)
{
	float3 InvScale = rcp(Scale);
	FDFVector3 ScaledPos = DFTwoProduct(ResolvedView.PreViewTranslation.High, InvScale);
	ScaledPos.Low += ResolvedView.PreViewTranslation.Low * InvScale;
	return DFFracDemote(ScaledPos) * Scale;
}
float3 GetPeriodicWorldOrigin_Pow2(float3 Scale)
{
	return DFFmodByPow2Demote(ResolvedView.PreViewTranslation, Scale);
}
float3 GetPositionPrimitiveSpace(FMaterialPixelParameters Parameters)
{
	return DFFastMultiplyDemote(Parameters.AbsoluteWorldPosition, GetPrimitiveData(Parameters).WorldToLocal);
}
float3 GetPositionPrimitiveSpace(FMaterialVertexParameters Parameters)
{
	return Parameters.PositionPrimitiveSpace;
}
float3 GetPrevPositionPrimitiveSpace(FMaterialVertexParameters Parameters)
{
	return Parameters.PositionPrimitiveSpace;
}
float3 GetPositionPrimitiveSpace_NoMaterialOffsets(FMaterialPixelParameters Parameters)
{
	return DFFastMultiplyDemote(Parameters.WorldPosition_NoOffsets, GetPrimitiveData(Parameters).WorldToLocal);
}
float3 GetPositionInstanceSpace(FMaterialPixelParameters Parameters)
{
	return DFFastMultiplyDemote(Parameters.AbsoluteWorldPosition, GetWorldToInstanceDF(Parameters));
}
float3 GetPositionInstanceSpace(FMaterialVertexParameters Parameters)
{
	return Parameters.PositionInstanceSpace;
}
float3 GetPrevPositionInstanceSpace(FMaterialVertexParameters Parameters)
{
	return Parameters.PositionInstanceSpace;
}
float3 GetPositionInstanceSpace_NoMaterialOffsets(FMaterialPixelParameters Parameters)
{
	return DFFastMultiplyDemote(Parameters.WorldPosition_NoOffsets, GetWorldToInstanceDF(Parameters));
}
float4 GetScreenPosition(FMaterialVertexParameters Parameters)
{
	return mul(float4(Parameters.WorldPosition, 1.0f), ResolvedView.TranslatedWorldToClip);
}
float4 GetScreenPosition(FMaterialPixelParameters Parameters)
{
	return Parameters.ScreenPosition;
}
uint GetViewId(FMaterialPixelParameters Parameters)
{
	return 0;
}
float GetPixelDepth(FMaterialVertexParameters Parameters)
{
	return GetScreenPositionDepth(GetScreenPosition(Parameters));
}
float GetPixelDepth(FMaterialPixelParameters Parameters)
{
	return GetScreenPositionDepth(GetScreenPosition(Parameters));
}
float2 GetSceneTextureUV(FMaterialVertexParameters Parameters)
{
	return ScreenAlignedPosition(GetScreenPosition(Parameters));
}
float2 GetSceneTextureUV(FMaterialPixelParameters Parameters)
{
	return SvPositionToBufferUV(Parameters.SvPosition);
}
float2 GetViewportUV(FMaterialVertexParameters Parameters)
{
	return BufferUVToViewportUV(GetSceneTextureUV(Parameters));
}
float2 GetPixelPosition(FMaterialVertexParameters Parameters)
{
	return GetViewportUV(Parameters) * View_ViewSizeAndInvSize.xy;
}
float2 GetPixelPosition(FMaterialPixelParameters Parameters)
{
	return Parameters.SvPosition.xy - ResolvedView.ViewRectMin.xy;
}
float2 GetViewportUV(FMaterialPixelParameters Parameters)
{
	return SvPositionToViewportUV(Parameters.SvPosition);
}
float GetWaterWaveParamIndex(FMaterialPixelParameters Parameters)
{
	return 0.0f;
}
float GetWaterWaveParamIndex(FMaterialVertexParameters Parameters)
{
	return 0.0f;
}
float PostVolumeUserFlagTest(float CompareValue)
{
	return (((int)1 << (int)CompareValue) & View_PostVolumeUserFlags) ? 1.0 : 0.0;
}
bool IsPostProcessInputSceneTexture(const uint SceneTextureId)
{
	return (SceneTextureId >= 14 && SceneTextureId <= 20);
}
float4 GetSceneTextureViewSize(const uint SceneTextureId)
{
	return ResolvedView.ViewSizeAndInvSize;
}
float4 GetSceneTextureUVMinMax(const uint SceneTextureId)
{
	return View_BufferBilinearUVMinMax;
}
float2 ViewportUVToSceneTextureUV(float2 ViewportUV, const uint SceneTextureId)
{
	return ViewportUVToBufferUV(ViewportUV);
}
float2 ClampSceneTextureUV(float2 BufferUV, const uint SceneTextureId)
{
	float4 MinMax = GetSceneTextureUVMinMax(SceneTextureId);
	return clamp(BufferUV, MinMax.xy, MinMax.zw);
}
float2 GetDefaultSceneTextureUV(FMaterialVertexParameters Parameters, const uint SceneTextureId)
{
	return GetSceneTextureUV(Parameters);
}
float2 GetDefaultSceneTextureUV(FMaterialPixelParameters Parameters, const uint SceneTextureId)
{
		return GetSceneTextureUV(Parameters);
}
	float2 ComputeDecalDDX(FMaterialPixelParameters Parameters)
	{
		return 0.0f;
	}
	float2 ComputeDecalDDY(FMaterialPixelParameters Parameters)
	{
		return 0.0f;
	}
	float ComputeDecalMipmapLevel(FMaterialPixelParameters Parameters, float2 TextureSize)
	{
		return 0.0f;
	}
	FLWCVector3 GetActorWorldPosition(FMaterialVertexParameters Parameters) { return Parameters.LWCData.ActorWorldPosition; }
	FLWCVector3 GetActorWorldPosition(FMaterialPixelParameters Parameters) { return Parameters.LWCData.ActorWorldPosition; }
	FLWCVector3 GetPreviousActorWorldPosition(FMaterialVertexParameters Parameters)
	{
		float3 InstanceToActor = LWCMultiply(GetActorWorldPosition(Parameters), GetWorldToInstance(Parameters));
		return LWCMultiply(InstanceToActor, Parameters.LWCData.PreviousLocalToWorld);
	}
	FLWCVector3 GetPreviousActorWorldPosition(FMaterialPixelParameters Parameters)
	{
		float3 InstanceToActor = LWCMultiply(GetActorWorldPosition(Parameters), GetWorldToInstance(Parameters));
		return LWCMultiply(InstanceToActor, Parameters.LWCData.PreviousLocalToWorld);
	}
	float3 GetActorTranslatedWorldPosition(FMaterialVertexParameters Parameters)
	{
		return LWCToFloat(LWCAdd(GetPrimitiveData(Parameters).ActorWorldPositionTO, ResolvedView.TileOffset.PreViewTranslation));
	}
	float3 GetActorTranslatedWorldPosition(FMaterialPixelParameters Parameters)
	{
		return LWCToFloat(LWCAdd(GetPrimitiveData(Parameters).ActorWorldPositionTO, ResolvedView.TileOffset.PreViewTranslation));
	}
	float3 GetPreviousActorTranslatedWorldPosition(FMaterialVertexParameters Parameters)
	{
		float3 InstanceToActor = LWCMultiply(GetActorWorldPosition(Parameters), GetWorldToInstance(Parameters));
		return  LWCToFloat(LWCSubtract( LWCMultiply(InstanceToActor, Parameters.LWCData.PreviousLocalToWorld) , LWCNegate(GetPreViewTranslation(Parameters)) ));
	}
	float3 GetPreviousActorTranslatedWorldPosition(FMaterialPixelParameters Parameters)
	{
		float3 InstanceToActor = LWCMultiply(GetActorWorldPosition(Parameters), GetWorldToInstance(Parameters));
		return  LWCToFloat(LWCSubtract( LWCMultiply(InstanceToActor, Parameters.LWCData.PreviousLocalToWorld) , LWCNegate(GetPreViewTranslation(Parameters)) ));
	}
	float3 GetObjectOrientation(FMaterialVertexParameters Parameters)
	{
		return GetPrimitiveData(Parameters).ObjectOrientation;
	}
	float3 GetObjectOrientation(FMaterialPixelParameters Parameters)
	{
		return GetPrimitiveData(Parameters).ObjectOrientation;
	}
	float4 DecalColor()
	{
		return float4(1.0f, 1.0f, 1.0f, 1.0f);
	}
	float DecalLifetimeOpacity()
	{
		return 0.0f;
	}
float GetPerInstanceCustomData(FMaterialPixelParameters Parameters, int Index, float DefaultValue)
{
	return DefaultValue;
}
float GetPerInstanceCustomData(FMaterialVertexParameters Parameters, int Index, float DefaultValue)
{
	return DefaultValue;
}
float3 GetPerInstanceCustomData3Vector(FMaterialPixelParameters Parameters, int Index, float3 DefaultValue)
{
	return DefaultValue;
}
float3 GetPerInstanceCustomData3Vector(FMaterialVertexParameters Parameters, int Index, float3 DefaultValue)
{
	return DefaultValue;
}
float3 TransformTangentVectorToView(FMaterialPixelParameters Parameters, float3 InTangentVector)
{
	return mul(mul(InTangentVector, Parameters.TangentToWorld), (float3x3)ResolvedView.TranslatedWorldToView);
}
FDFMatrix GetLocalToWorldDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).LocalToWorld;
}
FLWCMatrix GetLocalToWorld(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.LocalToWorld;
}
FDFMatrix GetLocalToWorldDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).LocalToWorld;
}
FLWCMatrix GetLocalToWorld(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.LocalToWorld;
}
FDFMatrix GetPrevLocalToWorldDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousLocalToWorld;
}
FLWCMatrix GetPrevLocalToWorld(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.PreviousLocalToWorld;
}
FDFMatrix GetPrevLocalToWorldDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousLocalToWorld;
}
FLWCMatrix GetPrevLocalToWorld(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.PreviousLocalToWorld;
}
FDFInverseMatrix GetWorldToLocalDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).WorldToLocal;
}
FLWCInverseMatrix GetWorldToLocal(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.WorldToLocal;
}
FDFInverseMatrix GetWorldToLocalDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).WorldToLocal;
}
FLWCInverseMatrix GetWorldToLocal(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.WorldToLocal;
}
FDFInverseMatrix GetPrevWorldToLocalDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousWorldToLocal;
}
FLWCInverseMatrix GetPrevWorldToLocal(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.PreviousWorldToLocal;
}
FDFInverseMatrix GetPrevWorldToLocalDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousWorldToLocal;
}
FLWCInverseMatrix GetPrevWorldToLocal(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.PreviousWorldToLocal;
}
float3 TransformLocalVectorToWorld(FMaterialPixelParameters Parameters, float3 InLocalVector)
{
	return mul(InLocalVector, GetLocalToWorld3x3(Parameters));
}
float3 TransformLocalVectorToWorld(FMaterialVertexParameters Parameters,float3 InLocalVector)
{
		return mul(InLocalVector, GetLocalToWorld3x3(Parameters));
}
float3 TransformLocalVectorToPrevWorld(FMaterialVertexParameters Parameters, float3 InLocalVector)
{
	return mul(InLocalVector, GetPreviousLocalToWorld3x3(Parameters));
}
FLWCVector3 TransformLocalPositionToWorld(FMaterialPixelParameters Parameters,float3 InLocalPosition)
{
	return LWCMultiply(InLocalPosition, GetLocalToWorld(Parameters));
}
FLWCVector3 TransformLocalPositionToWorld(FMaterialVertexParameters Parameters,float3 InLocalPosition)
{
	return LWCMultiply(InLocalPosition, GetLocalToWorld(Parameters));
}
FLWCVector3 TransformLocalPositionToPrevWorld(FMaterialVertexParameters Parameters,float3 InLocalPosition)
{
	return LWCMultiply(InLocalPosition, GetPrevLocalToWorld(Parameters));
}
FLWCVector3 GetObjectWorldPosition(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.ObjectWorldPosition;
}
FLWCVector3 GetObjectWorldPosition(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.ObjectWorldPosition;
}
float3 GetObjectTranslatedWorldPosition(FMaterialPixelParameters Parameters)
{
	return LWCToFloat(LWCAdd(GetPrimitiveData(Parameters).ObjectWorldPositionTO, ResolvedView.TileOffset.PreViewTranslation));
}
float3 GetObjectTranslatedWorldPosition(FMaterialVertexParameters Parameters)
{
	return LWCToFloat(LWCAdd(GetPrimitiveData(Parameters).ObjectWorldPositionTO, ResolvedView.TileOffset.PreViewTranslation));
}
FLWCInverseMatrix GetWorldToParticle(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.WorldToParticle;
}
FLWCInverseMatrix GetWorldToParticle(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.WorldToParticle;
}
FLWCMatrix GetParticleToWorld(FMaterialPixelParameters Parameters)
{
	return Parameters.LWCData.ParticleToWorld;
}
FLWCMatrix GetParticleToWorld(FMaterialVertexParameters Parameters)
{
	return Parameters.LWCData.ParticleToWorld;
}
FMaterialLWCData MakeMaterialLWCData(FMaterialVertexParameters Parameters)
{
	FMaterialLWCData Result = (FMaterialLWCData)0;
	Result.PreViewTranslation = ResolvedView.TileOffset.PreViewTranslation;
	Result.PrevPreViewTranslation = ResolvedView.TileOffset.PrevPreViewTranslation;
	Result.WorldViewOrigin = ResolvedView.TileOffset.WorldViewOrigin;
	Result.PrevWorldViewOrigin = ResolvedView.TileOffset.PrevWorldViewOrigin;
	Result.WorldCameraOrigin = ResolvedView.TileOffset.WorldCameraOrigin;
	Result.PrevWorldCameraOrigin = ResolvedView.TileOffset.PrevWorldCameraOrigin;
	Result.AbsoluteWorldPosition = LWCSubtract(Parameters.WorldPosition, Result.PreViewTranslation);
	Result.InstanceToWorld = DFToWS(GetInstanceToWorldDF(Parameters));
	Result.WorldToInstance = DFToWS(GetWorldToInstanceDF(Parameters));
	Result.PreviousInstanceToWorld = DFToWS(GetPrevInstanceToWorldDF(Parameters));
	Result.LocalToWorld = DFToWS(GetLocalToWorldDF(Parameters));
	Result.WorldToLocal = DFToWS(GetWorldToLocalDF(Parameters));
	Result.PreviousLocalToWorld = DFToWS(GetPrevLocalToWorldDF(Parameters));
	Result.PreviousWorldToLocal = DFToWS(GetPrevWorldToLocalDF(Parameters));
	Result.ObjectWorldPosition = GetPrimitiveData(Parameters).ObjectWorldPositionTO;
	Result.ActorWorldPosition = GetPrimitiveData(Parameters).ActorWorldPositionTO;
	Result.ParticleToWorld = DFFastToWS(Parameters.Particle.ParticleToWorld);
	Result.WorldToParticle = DFFastToWS(Parameters.Particle.WorldToParticle);
	Result.ParticleWorldPosition = LWCSubtract(Parameters.Particle.TranslatedWorldPositionAndSize.xyz, Result.PreViewTranslation);
	Result.PrevParticleWorldPosition = LWCSubtract(Parameters.Particle.PrevTranslatedWorldPositionAndSize.xyz, Result.PrevPreViewTranslation);
	return Result;
}
FMaterialLWCData MakeMaterialLWCData(FMaterialPixelParameters Parameters)
{
	FMaterialLWCData Result = (FMaterialLWCData)0;
	Result.PreViewTranslation = ResolvedView.TileOffset.PreViewTranslation;
	Result.PrevPreViewTranslation = ResolvedView.TileOffset.PrevPreViewTranslation;
	Result.WorldViewOrigin = ResolvedView.TileOffset.WorldViewOrigin;
	Result.PrevWorldViewOrigin = ResolvedView.TileOffset.PrevWorldViewOrigin;
	Result.WorldCameraOrigin = ResolvedView.TileOffset.WorldCameraOrigin;
	Result.PrevWorldCameraOrigin = ResolvedView.TileOffset.PrevWorldCameraOrigin;
	Result.AbsoluteWorldPosition = LWCSubtract(Parameters.WorldPosition_CamRelative, Result.PreViewTranslation);
	Result.WorldPosition_NoOffsets = LWCSubtract(Parameters.WorldPosition_NoOffsets_CamRelative, Result.PreViewTranslation);
	Result.InstanceToWorld = DFToWS(GetInstanceToWorldDF(Parameters));
	Result.WorldToInstance = DFFastToWS(GetWorldToInstanceDF(Parameters));
	Result.PreviousInstanceToWorld = DFToWS(GetPrevInstanceToWorldDF(Parameters));
	Result.LocalToWorld = DFToWS(GetLocalToWorldDF(Parameters));
	Result.WorldToLocal = DFFastToWS(GetWorldToLocalDF(Parameters));
	Result.PreviousLocalToWorld = DFToWS(GetPrevLocalToWorldDF(Parameters));
	Result.PreviousWorldToLocal = DFFastToWS(GetPrevWorldToLocalDF(Parameters));
	Result.ObjectWorldPosition = GetPrimitiveData(Parameters).ObjectWorldPositionTO;
	Result.ActorWorldPosition = GetPrimitiveData(Parameters).ActorWorldPositionTO;
	Result.ParticleToWorld = DFFastToWS(Parameters.Particle.ParticleToWorld);
	Result.WorldToParticle = DFFastToWS(Parameters.Particle.WorldToParticle);
	Result.ParticleWorldPosition = LWCSubtract(Parameters.Particle.TranslatedWorldPositionAndSize.xyz, Result.PreViewTranslation);
	Result.PrevParticleWorldPosition = LWCSubtract(Parameters.Particle.PrevTranslatedWorldPositionAndSize.xyz, Result.PrevPreViewTranslation);
	return Result;
}
float GetPerInstanceRandom(FMaterialVertexParameters Parameters)
{
	return Parameters.PerInstanceRandom;
}
float GetPerInstanceRandom(FMaterialPixelParameters Parameters)
{
	return Parameters.PerInstanceRandom;
}
float GetPerInstanceFadeAmount(FMaterialPixelParameters Parameters)
{
	return float(1.0);
}
float GetPerInstanceFadeAmount(FMaterialVertexParameters Parameters)
{
	return float(1.0);
}
float GetDistanceCullFade()
{
	return saturate(ResolvedView.RealTime * PrimitiveFade_FadeTimeScaleBias.x + PrimitiveFade_FadeTimeScaleBias.y);
}
float4 GetFontSignedDistanceData(FMaterialPixelParameters Parameters)
{
	return Parameters.FontSignedDistanceData;
}
float3 RotateAboutAxis(float4 NormalizedRotationAxisAndAngle, float3 PositionOnAxis, float3 Position)
{
	float3 ClosestPointOnAxis = PositionOnAxis + NormalizedRotationAxisAndAngle.xyz * dot(NormalizedRotationAxisAndAngle.xyz, Position - PositionOnAxis);
	float3 UAxis = Position - ClosestPointOnAxis;
	float3 VAxis = cross(NormalizedRotationAxisAndAngle.xyz, UAxis);
	float CosAngle;
	float SinAngle;
	sincos(NormalizedRotationAxisAndAngle.w, SinAngle, CosAngle);
	float3 R = UAxis * CosAngle + VAxis * SinAngle;
	float3 RotatedPosition = ClosestPointOnAxis + R;
	return RotatedPosition - Position;
}
float3 RotateAboutAxis(float4 NormalizedRotationAxisAndAngle, FLWCVector3 PositionOnAxis, FLWCVector3 Position)
{
	FLWCVector3 ClosestPointOnAxis = LWCAdd(PositionOnAxis, NormalizedRotationAxisAndAngle.xyz * dot(NormalizedRotationAxisAndAngle.xyz,  LWCToFloat(LWCSubtract( Position , PositionOnAxis ))));
	float3 UAxis =  LWCToFloat(LWCSubtract( Position , ClosestPointOnAxis ));
	float3 VAxis = cross(NormalizedRotationAxisAndAngle.xyz, UAxis);
	float CosAngle;
	float SinAngle;
	sincos(NormalizedRotationAxisAndAngle.w, SinAngle, CosAngle);
	float3 R = UAxis * CosAngle + VAxis * SinAngle;
	return R - UAxis;
}
float MaterialExpressionDepthOfFieldFunction(float SceneDepth, int FunctionValueIndex)
{
	if(FunctionValueIndex == 0) 
	{
		return CalcUnfocusedPercentCustomBound(SceneDepth, 1, 1);
	}
	else if(FunctionValueIndex == 1) 
	{
		return CalcUnfocusedPercentCustomBound(SceneDepth, 1, 0);
	}
	else if(FunctionValueIndex == 2) 
	{
		return CalcUnfocusedPercentCustomBound(SceneDepth, 0, 1);
	}
	else if(FunctionValueIndex == 3) 
	{
		return DepthToCoc(SceneDepth) * 2.0f;
	}
	return 0;
}
float3 MaterialExpressionBlackBody( float Temp )
{
	float u = ( 0.860117757f + 1.54118254e-4f * Temp + 1.28641212e-7f * Temp*Temp ) / ( 1.0f + 8.42420235e-4f * Temp + 7.08145163e-7f * Temp*Temp );
	float v = ( 0.317398726f + 4.22806245e-5f * Temp + 4.20481691e-8f * Temp*Temp ) / ( 1.0f - 2.89741816e-5f * Temp + 1.61456053e-7f * Temp*Temp );
	float x = 3*u / ( 2*u - 8*v + 4 );
	float y = 2*v / ( 2*u - 8*v + 4 );
	float z = 1 - x - y;
	float Y = 1;
	float X = Y/y * x;
	float Z = Y/y * z;
	float3x3 XYZtoRGB =
	{
		 3.2404542, -1.5371385, -0.4985314,
		-0.9692660,  1.8760108,  0.0415560,
		 0.0556434, -0.2040259,  1.0572252,
	};
	return max( 0.0f, mul( XYZtoRGB, float3( X, Y, Z ) ) ) * pow( 0.0004 * Temp, 4 );
}
float2 MaterialExpressionGetHairRootUV(FMaterialPixelParameters Parameters)
{
	return float2(0, 0);
}
float2 MaterialExpressionGetHairUV(FMaterialPixelParameters Parameters)
{	
	return float2(0,0);
}
float2 MaterialExpressionGetHairDimensions(FMaterialPixelParameters Parameters)
{
	return float2(0, 0);
}
float MaterialExpressionGetHairSeed(FMaterialPixelParameters Parameters)
{
	return 0;
}
float3 MaterialExpressionGetHairClumpID(FMaterialPixelParameters Parameters)
{
	return 0;
}
float3 MaterialExpressionGetHairBaseColor(FMaterialPixelParameters Parameters)
{
	return float3(0,0,0);
}
float MaterialExpressionGetHairRoughness(FMaterialPixelParameters Parameters)
{
	return 0;
}
float MaterialExpressionGetHairAO(FMaterialPixelParameters Parameters)
{
	return 0;
}
float MaterialExpressionGetHairDepth(FMaterialVertexParameters Parameters)
{
	return 0;
}
float MaterialExpressionGetHairDepth(FMaterialPixelParameters Parameters)
{
	return 0; 
}
float MaterialExpressionGetHairCoverage(FMaterialPixelParameters Parameters)
{
	return 0;
}
float3 MaterialExpressionGetHairTangent(FMaterialPixelParameters Parameters, bool bUseTangentSpace)
{
	return 0;
}
float2 MaterialExpressionGetAtlasUVs(FMaterialPixelParameters Parameters)
{
	return 0;
}
float4 MaterialExpressionGetHairAuxilaryData(FMaterialPixelParameters Parameters)
{
	return 0;
}
float MaterialExpressionGetHairGroupIndex(FMaterialPixelParameters Parameters)
{
	return 0;
}
float3 MaterialExpressionGetHairColorFromMelanin(float Melanin, float Redness, float3 DyeColor)
{
	return GetHairColorFromMelanin(Melanin, Redness, DyeColor);
}
 float3 MaterialExpressionAtmosphericLightVector( FMaterialPixelParameters Parameters) {return ResolvedView.AtmosphereLightDirection[0].xyz;}
 float3 MaterialExpressionAtmosphericLightVector( FMaterialVertexParameters Parameters) {return ResolvedView.AtmosphereLightDirection[0].xyz;}
float3 MaterialExpressionSkyAtmosphereLightIlluminanceOnGround(FMaterialPixelParameters Parameters, uint LightIndex)
{
	return ResolvedView.AtmosphereLightIlluminanceOnGroundPostTransmittance[LightIndex].rgb;
}
float3 MaterialExpressionAtmosphericLightColor(FMaterialPixelParameters Parameters) 
{
	return MaterialExpressionSkyAtmosphereLightIlluminanceOnGround(Parameters, 0);
}
float3 MaterialExpressionSkyAtmosphereLightIlluminance(FMaterialPixelParameters Parameters, float3 TranslatedWorldPosition, uint LightIndex)
{
	return float3(0.0f, 0.0f, 0.0f);
}
float3 MaterialExpressionSkyAtmosphereLightIlluminance(FMaterialPixelParameters Parameters, FLWCVector3 WorldPosition, uint LightIndex)
{
	const float3 TranslatedWorldPosition = DFFastToTranslatedWorld(WSToDF(WorldPosition), ResolvedView.PreViewTranslation);
	return MaterialExpressionSkyAtmosphereLightIlluminance(Parameters, TranslatedWorldPosition, LightIndex);
}
 float3 MaterialExpressionSkyAtmosphereLightDirection( FMaterialPixelParameters Parameters, uint LightIndex) {return float3(0.0f, 0.0f, 0.0f);}
 float3 MaterialExpressionSkyAtmosphereLightDirection( FMaterialVertexParameters Parameters, uint LightIndex) {return float3(0.0f, 0.0f, 0.0f);}
float3 MaterialExpressionSkyAtmosphereLightDiskLuminance(FMaterialPixelParameters Parameters, uint LightIndex, float OverrideAtmosphereLightDiscCosHalfApexAngle)
{
	float3 LightDiskLuminance = float3(0.0f, 0.0f, 0.0f);
	return LightDiskLuminance;
}
float3 MaterialExpressionSkyAtmosphereViewLuminance(FMaterialPixelParameters Parameters)
{
	return float3(0.0f, 0.0f, 0.0f);
}
float4 MaterialExpressionSkyAtmosphereAerialPerspective(FMaterialPixelParameters Parameters, float3 TranslatedWorldPosition)
{
	return float4(0.0f, 0.0f, 0.0f, 1.0f); 
}
float4 MaterialExpressionSkyAtmosphereAerialPerspective(FMaterialPixelParameters Parameters, FLWCVector3 WorldPosition)
{
	const float3 TranslatedWorldPosition =  LWCToFloat(LWCAdd( WorldPosition , Parameters.LWCData.PreViewTranslation ));
	return MaterialExpressionSkyAtmosphereAerialPerspective(Parameters, TranslatedWorldPosition);
}
float3 MaterialExpressionSkyAtmosphereDistantLightScatteredLuminance(FMaterialPixelParameters Parameters)
{
	return float3(0.0f, 0.0f, 0.0f);
}
float MaterialExpressionSceneDepthWithoutWater(float2 ViewportUV, float FallbackDepth)
{
	return FallbackDepth;
}
float MaterialExpressionCloudSampleAltitude(FMaterialPixelParameters Parameters)
{
	return 0.0f;
}
float MaterialExpressionCloudSampleAltitudeInLayer(FMaterialPixelParameters Parameters)
{
	return 0.0f;
}
float MaterialExpressionCloudSampleNormAltitudeInLayer(FMaterialPixelParameters Parameters)
{
	return 0.0f;
}
float4 MaterialExpressionVolumeSampleConservativeDensity(FMaterialPixelParameters Parameters)
{
	return float4(0.0f, 0.0f, 0.0f, 0.0f);
}
float MaterialExpressionVolumeSampleShadowSampleDistance(FMaterialPixelParameters Parameters)
{
	return 0.0f;
}
float3 MaterialExpressionCloudEmptySpaceSkippingSphereCenterWorldPosition(FMaterialPixelParameters Parameters)
{
	return 0.0f;
}
float MaterialExpressionCloudEmptySpaceSkippingSphereRadius(FMaterialPixelParameters Parameters)
{
	return 0.0f;
}
float3 GetSkyLightReflectionSupportingBlend(float3 ReflectionVector, float Roughness, out float OutSkyAverageBrightness);
float3 MaterialExpressionSkyLightEnvMapSample(float3 Direction, float Roughness)
{
	float SkyAverageBrightness = 1.0f;
	return GetSkyLightReflectionSupportingBlend(Direction, Roughness, SkyAverageBrightness);
}
float UnMirror( float Coordinate, FMaterialPixelParameters Parameters )
{
	return ((Coordinate)*(Parameters.UnMirrored)*0.5+0.5);
}
float2 UnMirrorU( float2 UV, FMaterialPixelParameters Parameters )
{
	return float2(UnMirror(UV.x, Parameters), UV.y);
}
float2 UnMirrorV( float2 UV, FMaterialPixelParameters Parameters )
{
	return float2(UV.x, UnMirror(UV.y, Parameters));
}
float2 UnMirrorUV( float2 UV, FMaterialPixelParameters Parameters )
{
	return float2(UnMirror(UV.x, Parameters), UnMirror(UV.y, Parameters));
}
float2 GetParticleMacroUV(FMaterialPixelParameters Parameters)
{
	return (Parameters.ScreenPosition.xy / Parameters.ScreenPosition.w - Parameters.Particle.MacroUV.xy) * Parameters.Particle.MacroUV.zw + float2(.5, .5);
}
SamplerState GetMaterialSharedSampler(SamplerState TextureSampler, SamplerState SharedSampler)
{
	return SharedSampler;
}
float3 ReflectionAboutCustomWorldNormal(FMaterialPixelParameters Parameters, float3 WorldNormal, bool bNormalizeInputNormal)
{
	if (bNormalizeInputNormal)
	{
		WorldNormal = normalize(WorldNormal);
	}
	return -Parameters.CameraVector + WorldNormal * dot(WorldNormal, Parameters.CameraVector) * 2.0;
}
float GetSphericalParticleOpacity(FMaterialPixelParameters Parameters, float Density)
{
	float Opacity = 0;
	float3 ParticleTranslatedWorldPosition = GetObjectTranslatedWorldPosition(Parameters);
	float ParticleRadius = max(0.000001f, GetPrimitiveData(Parameters).ObjectRadius);
	float RescaledDensity = Density / ParticleRadius;
	float DistanceToParticle = length(Parameters.WorldPosition_NoOffsets_CamRelative - ParticleTranslatedWorldPosition);
	[flatten]
	if (DistanceToParticle < ParticleRadius) 
	{
		float HemisphericalDistance = sqrt(ParticleRadius * ParticleRadius - DistanceToParticle * DistanceToParticle);
		float NearDistance = Parameters.ScreenPosition.w - HemisphericalDistance;
		float FarDistance = Parameters.ScreenPosition.w + HemisphericalDistance;
		float SceneDepth = CalcSceneDepth(SvPositionToBufferUV(Parameters.SvPosition));
		FarDistance = min(SceneDepth, FarDistance);
		float DistanceThroughSphere = FarDistance - NearDistance;
		Opacity = saturate(1 - exp2(-RescaledDensity * (1 - DistanceToParticle / ParticleRadius) * DistanceThroughSphere));
		Opacity = lerp(0, Opacity, saturate((Parameters.ScreenPosition.w - ParticleRadius - ResolvedView.NearPlane) / ParticleRadius));
	}
	return Opacity;
}
float LWCApplyAddressModeWrap(FLWCScalar V)
{
	const float FracTile = frac( (( V ).Tile) * 2097152.00f);
	return FracTile + V.Offset;
}
float LWCApplyAddressModeMirror(FLWCScalar v)
{
	return LWCToFloat(v);
}
float LWCApplyAddressModeClamp(FLWCScalar v)
{
	return LWCToFloat(v);
}
float LWCApplyAddressMode(FLWCScalar v, uint AddressMode)
{
	if(AddressMode == 1u) return LWCApplyAddressModeWrap(v);
	else if(AddressMode == 2u) return LWCApplyAddressModeMirror(v);
	else return LWCApplyAddressModeClamp(v);
}
float2 LWCApplyAddressMode(FLWCVector2 UV, uint AddressX, uint AddressY)
{
	return float2(LWCApplyAddressMode( LWCGetComponent( UV , 0), AddressX), LWCApplyAddressMode( LWCGetComponent( UV , 1), AddressY));
}
float3 LWCApplyAddressMode(FLWCVector3 UV, uint AddressX, uint AddressY, uint AddressZ)
{
	return float3(LWCApplyAddressMode( LWCGetComponent( UV , 0), AddressX), LWCApplyAddressMode( LWCGetComponent( UV , 1), AddressY), LWCApplyAddressMode( LWCGetComponent( UV , 2), AddressZ));
}
float DFApplyAddressModeWrap(FDFScalar V)
{
	const float Divisor = 0x1000; 
	return DFFmodByPow2Demote(V, Divisor);
}
float DFApplyAddressModeMirror(FDFScalar V)
{
	float a = DFFracDemote(DFDivideByPow2(V, 2));
	float b = 2.0 * a;
	float c = 2.0 * (1.0 - a);
	return min(b, c); 
}
float DFApplyAddressModeClamp(FDFScalar V)
{
	return DFDemote(V);
}
float DFApplyAddressMode(FDFScalar v, uint AddressMode)
{
	if(AddressMode == 1u) return DFApplyAddressModeWrap(v);
	else if(AddressMode == 2u) return DFApplyAddressModeMirror(v);
	else return DFApplyAddressModeClamp(v);
}
float2 DFApplyAddressMode(FDFVector2 UV, uint AddressX, uint AddressY)
{
	return float2(DFApplyAddressMode( DFGetComponent( UV , 0), AddressX), DFApplyAddressMode( DFGetComponent( UV , 1), AddressY));
}
float3 DFApplyAddressMode(FDFVector3 UV, uint AddressX, uint AddressY, uint AddressZ)
{
	return float3(DFApplyAddressMode( DFGetComponent( UV , 0), AddressX), DFApplyAddressMode( DFGetComponent( UV , 1), AddressY), DFApplyAddressMode( DFGetComponent( UV , 2), AddressZ));
}
float2 RotateScaleOffsetTexCoords(float2 InTexCoords, float4 InRotationScale, float2 InOffset)
{
	return float2(dot(InTexCoords, InRotationScale.xy), dot(InTexCoords, InRotationScale.zw)) + InOffset;
}
FLWCVector2 RotateScaleOffsetTexCoords(FLWCVector2 InTexCoords, float4 InRotationScale, float2 InOffset)
{
	return LWCAdd(MakeLWCVector(LWCDot(InTexCoords, InRotationScale.xy), LWCDot(InTexCoords, InRotationScale.zw)), InOffset);
}
float2 GetLightmapUVs(FMaterialPixelParameters Parameters)
{
	return float2(0,0);
}
float2 GetLightmapUVs_DDX(FMaterialPixelParameters Parameters)
{
	return float2(0, 0);
}
float2 GetLightmapUVs_DDY(FMaterialPixelParameters Parameters)
{
	return float2(0, 0);
}
float4 DecodeSceneColorAndAlpharForMaterialNode(float2 ScreenUV)
{
	float4 EncodedSceneColor = Texture2DSample(TranslucentBasePass_SceneColorCopyTexture, View_SharedBilinearClampedSampler, ScreenUV);
	float3 SampledColor = pow(EncodedSceneColor.rgb, 4) * 10;
	SampledColor *= View_OneOverPreExposure.xxx;
	return float4(SampledColor, EncodedSceneColor.a);
}
float3 DecodeSceneColorForMaterialNode(float2 ScreenUV)
{
	return DecodeSceneColorAndAlpharForMaterialNode(ScreenUV).rgb;
}
float4 MaterialExpressionDBufferTextureLookup(FMaterialPixelParameters Parameters, float2 BufferUV, int DBufferTextureIndex)
{
	if ((GetPrimitiveData(Parameters).Flags & 0x8) != 0 && View_ShowDecalsMask > 0)
	{
		uint2 PixelPos = uint2(BufferUV * View_BufferSizeAndInvSize.xy);
		uint ValidDBufferTargetMask = GetDBufferTargetMask(PixelPos) & (1u << DBufferTextureIndex);
		FDBufferData DBufferData = GetDBufferData(BufferUV, ValidDBufferTargetMask);
		switch (DBufferTextureIndex)
		{
		case 0:	return float4(DBufferData.PreMulColor, DBufferData.ColorOpacity);
		case 1:	return float4(DBufferData.PreMulWorldNormal, DBufferData.NormalOpacity);
		case 2:	return float4(DBufferData.PreMulRoughness, DBufferData.PreMulMetallic, DBufferData.PreMulSpecular, DBufferData.RoughnessOpacity);
		}
	}
	return float4(0, 0, 0, 1);
}
float2 GetDefaultPathTracingBufferTextureUV(FMaterialPixelParameters Parameters, const uint PathTracingBufferTextureIndex)
{
	float2 ViewportUV = GetViewportUV(Parameters);
	return ViewportUV;
}
float4 MaterialExpressionPathTracingBufferTextureLookup(FMaterialPixelParameters Parameters, float2 BufferUV, int PathTracingBufferTextureIndex)
{
	return float4(1, 0, 0, 1);
}
float4 NeuralTextureOutput(FMaterialPixelParameters Parameters, float2 ViewportUV)
{
	return float4(0.0f, 0.0f, 0.0f, 1.0f);
}
float4 NeuralBufferOutput(FMaterialPixelParameters Parameters, float4 BufferIndices)
{
	return float4(0.0f, 0.0f, 0.0f, 1.0f);
}
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
float3 CustomExpression0(FMaterialPixelParameters Parameters)
{
???1https:
???2https:
???3https:
RGB to HSV/HSL/HCY/HCL in HLSL	Chilli Ant Home
On my blog, many moons ago, I looked at optimised HLSL implementations of RGB-to-HSV and vice versa (particularly for XBox360; see the old page). I had a few requests and suggestions from readers, so I thought I'd put the latest results here for reference. I've also included HSL, HCY and HCL variants.
The RGB-to-HCV function is based on excellent work by Sam Hocevar and Emil Persson.
The HCY colour space is based on the work of Kuzma Shapran. It is a tractable hue/chroma/luminance space that tries to overcome some of the inherent problems with HSL and HSV. Thanks to David Schaeffer for pointing out some errors with my original code.
Most of the CIE-based colour spaces are computationally expensive (for pixel shaders, at least). I've included an implementation of the similar HCL colour space, but there are various problems with this scheme, not least of which is that RGB-to-HCL-to-RGB is not a perfect "round trip." Thanks to Andrew (K-Be) for helping me sort out some of the problems with my original implementation.
As for most pixel shaders, red/green/blue components are in the range zero to one inclusive. For consistency, hue/saturation/value/lightness/chroma/luminance are also in the unit range.
For a more detailed discussion of HSV/HSL, see Wikipedia.
Converting pure hue to RGB
  float3 HUEtoRGB(in float H)
  {
    float R = abs(H * 6 - 3) - 1;
    float G = 2 - abs(H * 6 - 2);
    float B = 2 - abs(H * 6 - 4);
    return saturate(float3(R,G,B));
  }
Converting RGB to hue/chroma/value
  float Epsilon = 1e-10;
 
  float3 RGBtoHCV(in float3 RGB)
  {
    
    float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0/3.0) : float4(RGB.gb, 0.0, -1.0/3.0);
    float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
    float C = Q.x - min(Q.w, Q.y);
    float H = abs((Q.w - Q.y) / (6 * C + Epsilon) + Q.z);
    return float3(H, C, Q.x);
  }
Converting HSV to RGB
  float3 HSVtoRGB(in float3 HSV)
  {
    float3 RGB = HUEtoRGB(HSV.x);
    return ((RGB - 1) * HSV.y + 1) * HSV.z;
  }
Converting HSL to RGB
  float3 HSLtoRGB(in float3 HSL)
  {
    float3 RGB = HUEtoRGB(HSL.x);
    float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
    return (RGB - 0.5) * C + HSL.z;
  }
Converting HCY to RGB
  
  
  float3 HCYwts = float3(0.299, 0.587, 0.114);
 
  float3 HCYtoRGB(in float3 HCY)
  {
    float3 RGB = HUEtoRGB(HCY.x);
    float Z = dot(RGB, HCYwts);
    if (HCY.z < Z)
    {
        HCY.y *= HCY.z / Z;
    }
    else if (Z < 1)
    {
        HCY.y *= (1 - HCY.z) / (1 - Z);
    }
    return (RGB - Z) * HCY.y + HCY.z;
  }
Converting HCL to RGB
  float HCLgamma = 3;
  float HCLy0 = 100;
  float HCLmaxL = 0.530454533953517; 
  float PI = 3.1415926536;
 
  float3 HCLtoRGB(in float3 HCL)
  {
    float3 RGB = 0;
    if (HCL.z != 0)
    {
      float H = HCL.x;
      float C = HCL.y;
      float L = HCL.z * HCLmaxL;
      float Q = exp((1 - C / (2 * L)) * (HCLgamma / HCLy0));
      float U = (2 * L - C) / (2 * Q - 1);
      float V = C / Q;
      float A = (H + min(frac(2 * H) / 4, frac(-2 * H) / 8)) * PI * 2;
      float T;
      H *= 6;
      if (H <= 0.999)
      {
        T = tan(A);
        RGB.r = 1;
        RGB.g = T / (1 + T);
      }
      else if (H <= 1.001)
      {
        RGB.r = 1;
        RGB.g = 1;
      }
      else if (H <= 2)
      {
        T = tan(A);
        RGB.r = (1 + T) / T;
        RGB.g = 1;
      }
      else if (H <= 3)
      {
        T = tan(A);
        RGB.g = 1;
        RGB.b = 1 + T;
      }
      else if (H <= 3.999)
      {
        T = tan(A);
        RGB.g = 1 / (1 + T);
        RGB.b = 1;
      }
      else if (H <= 4.001)
      {
        RGB.g = 0;
        RGB.b = 1;
      }
      else if (H <= 5)
      {
        T = tan(A);
        RGB.r = -1 / T;
        RGB.b = 1;
      }
      else
      {
        T = tan(A);
        RGB.r = 1;
        RGB.b = -T;
      }
      RGB = RGB * V + U;
    }
    return RGB;
  }
Converting RGB to HSV
  float3 RGBtoHSV(in float3 RGB)
  {
    float3 HCV = RGBtoHCV(RGB);
    float S = HCV.y / (HCV.z + Epsilon);
    return float3(HCV.x, S, HCV.z);
  }
Converting RGB to HSL
  float3 RGBtoHSL(in float3 RGB)
  {
    float3 HCV = RGBtoHCV(RGB);
    float L = HCV.z - HCV.y * 0.5;
    float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon);
    return float3(HCV.x, S, L);
  }
Converting RGB to HCY
  float3 RGBtoHCY(in float3 RGB)
  {
    
    float3 HCV = RGBtoHCV(RGB);
    float Y = dot(RGB, HCYwts);
    float Z = dot(HUEtoRGB(HCV.x), HCYwts);
    if (Y < Z)
    {
      HCV.y *= Z / (Epsilon + Y);
    }
    else
    {
      HCV.y *= (1 - Z) / (Epsilon + 1 - Y);
    }
    return float3(HCV.x, HCV.y, Y);
  }
Converting RGB to HCL
  float3 RGBtoHCL(in float3 RGB)
  {
    float3 HCL;
    float H = 0;
    float U = min(RGB.r, min(RGB.g, RGB.b));
    float V = max(RGB.r, max(RGB.g, RGB.b));
    float Q = HCLgamma / HCLy0;
    HCL.y = V - U;
    if (HCL.y != 0)
    {
      H = atan2(RGB.g - RGB.b, RGB.r - RGB.g) / PI;
      Q *= U / V;
    }
    Q = exp(Q);
    HCL.x = frac(H / 2 - min(frac(H), frac(-H)) / 6);
    HCL.y *= Q;
    HCL.z = lerp(-U, V, Q) / (HCLmaxL * 2);
    return HCL;
  }
Copyright ? 2002-2020 Ian Taylor	https:
}
#if TEMPLATE_USES_SUBSTRATE
void PreUpdateAllBSDFWithBottomUpOperatorVisit(float3 V) {}
void UpdateAllBSDFsOperatorCoverageTransmittance(FSubstrateIntegrationSettings Settings, float3 V) {}
void UpdateAllOperatorsCoverageTransmittance(inout FSubstrateTree SubstrateTree) {}
void UpdateAllBSDFWithBottomUpOperatorVisit(inout FSubstrateTree SubstrateTree) {}
void PreUpdateAllBSDFWithBottomUpOperatorVisit_FullySimplified(float3 V) {}
void UpdateAllBSDFsOperatorCoverageTransmittance_FullySimplified(FSubstrateIntegrationSettings Settings, float3 V) {}
void UpdateAllOperatorsCoverageTransmittance_FullySimplified(inout FSubstrateTree SubstrateTree) {}
void UpdateAllBSDFWithBottomUpOperatorVisit_FullySimplified(inout FSubstrateTree SubstrateTree) {}
#endif
#if TEMPLATE_USES_SUBSTRATE
void PreUpdateAllBSDFWithBottomUpOperatorVisit(float3 V) {}
void UpdateAllBSDFsOperatorCoverageTransmittance(FSubstrateIntegrationSettings Settings, float3 V) {}
void UpdateAllOperatorsCoverageTransmittance(inout FSubstrateTree SubstrateTree) {}
void UpdateAllBSDFWithBottomUpOperatorVisit(inout FSubstrateTree SubstrateTree) {}
void PreUpdateAllBSDFWithBottomUpOperatorVisit_FullySimplified(float3 V) {}
void UpdateAllBSDFsOperatorCoverageTransmittance_FullySimplified(FSubstrateIntegrationSettings Settings, float3 V) {}
void UpdateAllOperatorsCoverageTransmittance_FullySimplified(inout FSubstrateTree SubstrateTree) {}
void UpdateAllBSDFWithBottomUpOperatorVisit_FullySimplified(inout FSubstrateTree SubstrateTree) {}
#endif
SHADER_POP_WARNINGS_STATE
#if USE_ANALYTIC_DERIVATIVES && TEXTURE_SAMPLE_DEBUG
MaterialFloat4 DebugTextureCommon(const int Mode, float2 UV, MaterialFloat2 DDX, MaterialFloat2 DDY, MaterialFloat Scale)
{
	const float DerivScale = View_GeneralPurposeTweak2 * 100.0f;
	if (Mode == 2)
	{
		return MaterialFloat4(UV, 0.0f, 0.0f);
	}
	else if (Mode == 3)
	{
		return MaterialFloat4(DDX * DerivScale + 0.5f, 0.0f, 0.0f);
	}
	else if (Mode == 4)
	{
		const float2 FiniteDDX = ddx(UV) * Scale;
		return MaterialFloat4(FiniteDDX * DerivScale + 0.5f, 0.0f, 0.0f);
	}
	else if (Mode == 5)
	{
		return MaterialFloat4(DDY * DerivScale + 0.5f, 0.0f, 0.0f);
	}
	else if(Mode == 6)
	{
		const float2 FiniteDDY = ddy(UV) * Scale;
		return MaterialFloat4(FiniteDDY * DerivScale + 0.5f, 0.0f, 0.0f);
	}
	else
	{
		return MaterialFloat4(0.0f, 0.0f, 0.0f, 0.0f);
	}
}
MaterialFloat4 DebugTexture2DSampleGrad(Texture2D Tex, SamplerState Sampler, float2 UV, MaterialFloat2 DDX, MaterialFloat2 DDY, MaterialFloat Scale)
{
	const int Mode = round(View_GeneralPurposeTweak);
	if (Mode > 1)
		return DebugTextureCommon(Mode, UV, DDX, DDY, Scale);
	else
		return Tex.SampleGrad(Sampler, UV, DDX, DDY);
}
#if NUM_VIRTUALTEXTURE_SAMPLES || LIGHTMAP_VT_ENABLED
MaterialFloat4 DebugTextureVirtualSample(
	Texture2D Physical, SamplerState PhysicalSampler,
	VTPageTableResult PageTableResult, uint LayerIndex,
	VTUniform Uniform, MaterialFloat Scale)
{
	const int Mode = round(View_GeneralPurposeTweak);
	if(Mode > 1)
		return DebugTextureCommon(Mode, PageTableResult.UV, PageTableResult.dUVdx, PageTableResult.dUVdy, Scale);
	else
		return TextureVirtualSample(Physical, PhysicalSampler, PageTableResult, LayerIndex, Uniform);
}
MaterialFloat4 DebugTextureVirtualSampleLevel(
	Texture2D Physical, SamplerState PhysicalSampler,
	VTPageTableResult PageTableResult, uint LayerIndex,
	VTUniform Uniform, MaterialFloat Scale)
{
	const int Mode = round(View_GeneralPurposeTweak);
	if (Mode > 1)
		return MaterialFloat4(0.0f, 0.0f, 0.0f, 0.0f);
	else
		return TextureVirtualSampleLevel(Physical, PhysicalSampler, PageTableResult, LayerIndex, Uniform);
}
#endif
#endif
half3 GetMaterialNormalRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Normal;
}
half3 GetMaterialNormal(FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs)
{
	half3 RetNormal;
	RetNormal = GetMaterialNormalRaw(PixelMaterialInputs);
		
	#if (USE_EDITOR_SHADERS && !ES3_1_PROFILE) || MOBILE_EMULATION
	{
		
		half3 OverrideNormal = ResolvedView.NormalOverrideParameter.xyz;
		#if !MATERIAL_TANGENTSPACENORMAL
			OverrideNormal = Parameters.TangentToWorld[2] * (1 - ResolvedView.NormalOverrideParameter.w);
		#endif
		RetNormal = RetNormal * ResolvedView.NormalOverrideParameter.w + OverrideNormal;
	}
	#endif
	return RetNormal;
}
half3 GetMaterialTangentRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Tangent;
}
half3 GetMaterialTangent(FPixelMaterialInputs PixelMaterialInputs)
{
	return GetMaterialTangentRaw(PixelMaterialInputs);
}
half3 GetMaterialEmissiveRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.EmissiveColor;
}
half3 GetMaterialEmissive(FPixelMaterialInputs PixelMaterialInputs)
{
	half3 EmissiveColor = GetMaterialEmissiveRaw(PixelMaterialInputs);
#if !MATERIAL_ALLOW_NEGATIVE_EMISSIVECOLOR
	EmissiveColor = max(EmissiveColor, 0.0f);
#endif
	return EmissiveColor;
}
half3 GetMaterialEmissiveForCS(FMaterialPixelParameters Parameters)
{
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
return 0;
SHADER_POP_WARNINGS_STATE
}
uint GetMaterialShadingModel(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.ShadingModel;
}
half3 GetMaterialBaseColorRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.BaseColor;
}
half3 GetMaterialBaseColor(FPixelMaterialInputs PixelMaterialInputs)
{
	return saturate(GetMaterialBaseColorRaw(PixelMaterialInputs));
}
half GetMaterialMetallicRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Metallic;
}
half GetMaterialMetallic(FPixelMaterialInputs PixelMaterialInputs)
{
	return saturate(GetMaterialMetallicRaw(PixelMaterialInputs));
}
half GetMaterialSpecularRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Specular;
}
half GetMaterialSpecular(FPixelMaterialInputs PixelMaterialInputs)
{
	return saturate(GetMaterialSpecularRaw(PixelMaterialInputs));
}
half GetMaterialRoughnessRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Roughness;
}
half GetMaterialRoughness(FPixelMaterialInputs PixelMaterialInputs)
{
#if MATERIAL_FULLY_ROUGH
	return 1;
#endif
	half Roughness = saturate(GetMaterialRoughnessRaw(PixelMaterialInputs));
	
	#if (USE_EDITOR_SHADERS && !ES3_1_PROFILE) || MOBILE_EMULATION
	{
		
		Roughness = Roughness * ResolvedView.RoughnessOverrideParameter.y + ResolvedView.RoughnessOverrideParameter.x;
	}
	#endif
	
	return Roughness;
}
half GetMaterialAnisotropyRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Anisotropy;
}
half GetMaterialAnisotropy(FPixelMaterialInputs PixelMaterialInputs)
{
	return clamp(GetMaterialAnisotropyRaw(PixelMaterialInputs), -1.0f, 1.0f);
}
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
half GetMaterialTranslucencyDirectionalLightingIntensity()
{
return 1.00000;
}
half GetMaterialTranslucentShadowDensityScale()
{
return 1.00000;
}
half GetMaterialTranslucentSelfShadowDensityScale()
{
return 1.00000;
}
half GetMaterialTranslucentSelfShadowSecondDensityScale()
{
return 1.00000;
}
half GetMaterialTranslucentSelfShadowSecondOpacity()
{
return 1.00000;
}
half GetMaterialTranslucentBackscatteringExponent()
{
return 1.00000;
}
half3 GetMaterialTranslucentMultipleScatteringExtinction()
{
return MaterialFloat3(1.00000, 1.00000, 1.00000);
}
half GetMaterialOpacityMaskClipValue()
{
return 0.50000;
}
SHADER_POP_WARNINGS_STATE
#if USES_DISPLACEMENT && IS_NANITE_PASS
float GetMaterialDisplacement(FPixelMaterialInputs PixelMaterialInputs)
{
	return saturate(PixelMaterialInputs.Displacement);
}
#endif
half GetMaterialOpacityRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Opacity;
}
#if MATERIALBLENDING_MASKED
half GetMaterialMaskInputRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.OpacityMask;
}
half GetMaterialMask(FPixelMaterialInputs PixelMaterialInputs)
{
	return GetMaterialMaskInputRaw(PixelMaterialInputs) - GetMaterialOpacityMaskClipValue();
}
#endif
half GetMaterialOpacity(FPixelMaterialInputs PixelMaterialInputs)
{
	
	return saturate(GetMaterialOpacityRaw(PixelMaterialInputs));
}
#if TRANSLUCENT_SHADOW_WITH_MASKED_OPACITY
half GetMaterialMaskedOpacity(FPixelMaterialInputs PixelMaterialInputs)
{
	return GetMaterialOpacity(PixelMaterialInputs) - GetMaterialOpacityMaskClipValue();
}
#endif
#if SUPPORT_FIRST_PERSON_RENDERING
float GetMaterialFirstPersonInterpolationAlpha(FMaterialVertexParameters Parameters)
{
#if HAVE_GetFirstPersonOutput0
	return saturate(GetFirstPersonOutput0(Parameters));
#else
	return 1.0f;
#endif
}
float GetMaterialPreviousFirstPersonInterpolationAlpha(FMaterialVertexParameters Parameters)
{
#if HAVE_GetFirstPersonOutput0Prev
	return saturate(GetFirstPersonOutput0Prev(Parameters));
#else
	return 1.0f;
#endif
}
#endif 
bool ShouldEnableWorldPositionOffset(FMaterialVertexParameters Parameters)
{
#if USES_WORLD_POSITION_OFFSET
	#if (FEATURE_LEVEL > FEATURE_LEVEL_ES3_1) 
		if (!Parameters.bEvaluateWorldPositionOffset ||
			(GetPrimitiveData(Parameters).Flags & PRIMITIVE_SCENE_DATA_FLAG_EVALUATE_WORLD_POSITION_OFFSET) == 0)
		{
			return false;
		}
	#endif
	return true;
#else
	return false;
#endif
}
float3 ClampWorldPositionOffset(FMaterialVertexParameters Parameters, float3 InOffset)
{
#if (FEATURE_LEVEL == FEATURE_LEVEL_ES3_1 && VF_SUPPORTS_PRIMITIVE_SCENE_DATA)
	
	return InOffset;
#else
	const float MaxWPODim = GetPrimitiveData(Parameters).MaxWPOExtent;
	return MaxWPODim <= 0.0f ? InOffset : clamp(InOffset, -MaxWPODim.xxx, MaxWPODim.xxx);
#endif
}
float3 GetMaterialWorldPositionOffsetRaw(FMaterialVertexParameters Parameters)
{
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
	return MaterialFloat3(0.00000000,0.0f,0.0f);;
SHADER_POP_WARNINGS_STATE
}
float3 GetMaterialWorldPositionOffset(FMaterialVertexParameters Parameters)
{
	float3 WPO = float3(0, 0, 0);
	BRANCH
	if (ShouldEnableWorldPositionOffset(Parameters))
	{
		WPO = ClampWorldPositionOffset(Parameters, GetMaterialWorldPositionOffsetRaw(Parameters));
	}
#if SUPPORT_FIRST_PERSON_RENDERING
	BRANCH
	if ((GetPrimitiveData(Parameters).Flags & PRIMITIVE_SCENE_DATA_FLAG_IS_FIRST_PERSON_PRIMITIVE) != 0)
	{
		const float3 FirstPersonPosition = mul(Parameters.WorldPosition + WPO, (float3x3)ResolvedView.FirstPersonTransform);
		const float3 FirstPersonWPO = FirstPersonPosition - Parameters.WorldPosition;
		const float LerpAlpha = GetMaterialFirstPersonInterpolationAlpha(Parameters);
		WPO = lerp(WPO, FirstPersonWPO, LerpAlpha);
	}
#endif 
	return WPO;
}
float3 GetMaterialPreviousWorldPositionOffsetRaw(FMaterialVertexParameters Parameters)
{
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
	return MaterialFloat3(0.00000000,0.0f,0.0f);;
SHADER_POP_WARNINGS_STATE
}
float3 GetMaterialPreviousWorldPositionOffset(FMaterialVertexParameters Parameters)
{
	float3 WPO = float3(0, 0, 0);
	BRANCH
	if (ShouldEnableWorldPositionOffset(Parameters))
	{
		WPO = ClampWorldPositionOffset(Parameters, GetMaterialPreviousWorldPositionOffsetRaw(Parameters));
	}
#if SUPPORT_FIRST_PERSON_RENDERING
	BRANCH
	if ((GetPrimitiveData(Parameters).Flags & PRIMITIVE_SCENE_DATA_FLAG_IS_FIRST_PERSON_PRIMITIVE) != 0)
	{
		const float3 FirstPersonPosition = mul(Parameters.WorldPosition + WPO, (float3x3)ResolvedView.PrevFirstPersonTransform);
		const float3 FirstPersonWPO = FirstPersonPosition - Parameters.WorldPosition;
		const float LerpAlpha = GetMaterialPreviousFirstPersonInterpolationAlpha(Parameters);
		WPO = lerp(WPO, FirstPersonWPO, LerpAlpha);
	}
#endif 
	return WPO;
}
half4 GetMaterialSubsurfaceDataRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Subsurface;
}
half4 GetMaterialSubsurfaceData(FPixelMaterialInputs PixelMaterialInputs)
{
	half4 OutSubsurface = GetMaterialSubsurfaceDataRaw(PixelMaterialInputs);
	OutSubsurface.rgb = saturate(OutSubsurface.rgb);
	return OutSubsurface;
}
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
half GetMaterialCustomData0(in out FMaterialPixelParameters Parameters)
{
	return 1.00000000;;
}
half GetMaterialCustomData1(in out FMaterialPixelParameters Parameters)
{
	return 1.00000000;;
}
SHADER_POP_WARNINGS_STATE
half GetMaterialAmbientOcclusionRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.AmbientOcclusion;
}
half GetMaterialAmbientOcclusion(FPixelMaterialInputs PixelMaterialInputs)
{
	return saturate(GetMaterialAmbientOcclusionRaw(PixelMaterialInputs));
}
struct FMaterialRefractionData
{
	float2 Data;
	float  RefractionDepthBias;
};
float GetMaterialRefractionIOR(in FMaterialRefractionData RefractionData)
{
#if REFRACTION_USE_INDEX_OF_REFRACTION
	return RefractionData.Data.x;
#else
	return 1.0f;
#endif
}
float GetMaterialRefractionPixelNormalStrength(in FMaterialRefractionData RefractionData)
{
#if REFRACTION_USE_PIXEL_NORMAL_OFFSET
	return RefractionData.Data.x;
#else
	return 1.0f;
#endif
}
float2 GetMaterialRefraction2DOffset(in FMaterialRefractionData RefractionData)
{
#if REFRACTION_USE_2D_OFFSET
	return RefractionData.Data.xy;
#else
	return float2(0.0f, 0.0f);
#endif
}
FMaterialRefractionData GetMaterialRefraction(FPixelMaterialInputs PixelMaterialInputs)
{
	FMaterialRefractionData Data;
	Data.Data					= PixelMaterialInputs.Refraction.xy;
	Data.RefractionDepthBias	= PixelMaterialInputs.Refraction.z;
	return Data;
}
#if NUM_TEX_COORD_INTERPOLATORS
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
void GetMaterialCustomizedUVs(FMaterialVertexParameters Parameters, inout float2 OutTexCoords[NUM_TEX_COORD_INTERPOLATORS])
{
}
void GetCustomInterpolators(FMaterialVertexParameters Parameters, inout float2 OutTexCoords[NUM_TEX_COORD_INTERPOLATORS])
{
}
SHADER_POP_WARNINGS_STATE
#endif
float GetMaterialPixelDepthOffset(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.PixelDepthOffset;
}
#if DECAL_PRIMITIVE
float3 TransformTangentNormalToWorld(MaterialFloat3x3 TangentToWorld, float3 TangentNormal)
{
	
	
	
				
	
	float4 ScaledNormal = float4(-TangentNormal.z * DecalToWorldInvScale.x, TangentNormal.y * DecalToWorldInvScale.y, TangentNormal.x * DecalToWorldInvScale.z, 0.f);
	
	return normalize(mul(ScaledNormal, DecalToWorld).xyz);
}
#else 
float3 TransformTangentNormalToWorld(MaterialFloat3x3 TangentToWorld, float3 TangentNormal)
{
	return normalize(float3(TransformTangentVectorToWorld(TangentToWorld, TangentNormal)));
}
#endif 
float3 CalculateAnisotropyTangent(in out FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs)
{
	float3 Normal = Parameters.WorldNormal;
#if CLEAR_COAT_BOTTOM_NORMAL && (NUM_MATERIAL_OUTPUTS_CLEARCOATBOTTOMNORMAL > 0)
	Normal =  ClearCoatBottomNormal0(Parameters);
	#if MATERIAL_TANGENTSPACENORMAL
		Normal = TransformTangentVectorToWorld(Parameters.TangentToWorld, Normal);
	#endif
#endif
	float3 Tangent = GetMaterialTangent(PixelMaterialInputs);
#if MATERIAL_TANGENTSPACENORMAL
	Tangent = TransformTangentNormalToWorld(Parameters.TangentToWorld, Tangent);
#endif
	float3 BiTangent = cross(Normal, Tangent);
	Tangent = normalize(cross(BiTangent, Normal));
	return Tangent;
}
float NormalCurvatureToRoughness(float3 WorldNormal)
{
	float3 dNdx = ddx(WorldNormal);
	float3 dNdy = ddy(WorldNormal);
	float x = dot(dNdx, dNdx);
	float y = dot(dNdy, dNdy);
	float CurvatureApprox = pow(max(x, y), View_NormalCurvatureToRoughnessScaleBias.z);
	return saturate(CurvatureApprox * View_NormalCurvatureToRoughnessScaleBias.x + View_NormalCurvatureToRoughnessScaleBias.y);
}
float GetRoughnessFromNormalCurvature(FMaterialPixelParameters InMaterialParameters)
{
#if MATERIAL_NORMAL_CURVATURE_TO_ROUGHNESS
	
	
	#if USE_WORLDVERTEXNORMAL_CENTER_INTERPOLATION
	return NormalCurvatureToRoughness(InMaterialParameters.WorldVertexNormal_Center);
	#else
	return NormalCurvatureToRoughness(InMaterialParameters.TangentToWorld[2].xyz);
	#endif
#else
	return 0.f;
#endif
}
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
SHADER_POP_WARNINGS_STATE
#define TWO_SIDED_WORLD_SPACE_SINGLELAYERWATER_NORMAL (MATERIAL_SHADINGMODEL_SINGLELAYERWATER && !MATERIAL_TANGENTSPACENORMAL && MATERIAL_TWOSIDED)
void CalcPixelMaterialInputs(in out FMaterialPixelParameters Parameters, in out FPixelMaterialInputs PixelMaterialInputs)
{
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
	
	
	PixelMaterialInputs.Normal = MaterialFloat3(1.00000000,0.0f,0.0f);
SHADER_POP_WARNINGS_STATE
#if TEMPLATE_USES_SUBSTRATE
	Parameters.SubstratePixelFootprint = SubstrateGetPixelFootprint(Parameters.WorldPosition_CamRelative, GetRoughnessFromNormalCurvature(Parameters));
	Parameters.SharedLocalBases = SubstrateInitialiseSharedLocalBases();
	Parameters.SubstrateTree = GetInitialisedSubstrateTree();
#if SUBSTRATE_USE_FULLYSIMPLIFIED_MATERIAL == 1
	Parameters.SharedLocalBasesFullySimplified = SubstrateInitialiseSharedLocalBases();
	Parameters.SubstrateTreeFullySimplified = GetInitialisedSubstrateTree();
#endif
#endif
	
	float3 MaterialNormal = GetMaterialNormal(Parameters, PixelMaterialInputs);
#if MATERIAL_TANGENTSPACENORMAL
#if FEATURE_LEVEL >= FEATURE_LEVEL_SM4
	
	MaterialNormal = normalize(MaterialNormal);
#endif
	
	
	Parameters.WorldNormal = TransformTangentNormalToWorld(Parameters.TangentToWorld, MaterialNormal);
#else 
	Parameters.WorldNormal = normalize(MaterialNormal);
#endif 
#if MATERIAL_TANGENTSPACENORMAL || TWO_SIDED_WORLD_SPACE_SINGLELAYERWATER_NORMAL
	
	Parameters.WorldNormal *= Parameters.TwoSidedSign;
#endif
	Parameters.ReflectionVector = ReflectionAboutCustomWorldNormal(Parameters, Parameters.WorldNormal, false);
#if !PARTICLE_SPRITE_FACTORY
	Parameters.Particle.MotionBlurFade = 1.0f;
#endif 
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
	
	MaterialFloat3 Local0 = CustomExpression0(Parameters);
	MaterialFloat3 Local1 = max(Local0,((MaterialFloat3)0.00000000));
	MaterialFloat3 Local2 = PositiveClampedPow(Local1,((MaterialFloat3)0.45454544));
	PixelMaterialInputs.EmissiveColor = Local2;
	PixelMaterialInputs.Opacity = 1.00000000;
	PixelMaterialInputs.OpacityMask = 1.00000000;
	PixelMaterialInputs.BaseColor = MaterialFloat3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Metallic = 1.00000000;
	PixelMaterialInputs.Specular = 1.00000000;
	PixelMaterialInputs.Roughness = 1.00000000;
	PixelMaterialInputs.Anisotropy = 1.00000000;
	PixelMaterialInputs.Normal = MaterialFloat3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Tangent = MaterialFloat3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Subsurface = 0;
	PixelMaterialInputs.AmbientOcclusion = 1.00000000;
	PixelMaterialInputs.Refraction = MaterialFloat3(MaterialFloat3(1.00000000,0.0f,0.0f).xy,Material_PreshaderBuffer[0].x);
	PixelMaterialInputs.PixelDepthOffset = 1.00000000;
	PixelMaterialInputs.ShadingModel = 0;
	PixelMaterialInputs.FrontMaterial = GetInitialisedSubstrateData();
	PixelMaterialInputs.SurfaceThickness = 1.00000000;
	PixelMaterialInputs.Displacement = 0.00000000;
SHADER_POP_WARNINGS_STATE
#if MATERIAL_USES_ANISOTROPY
	Parameters.WorldTangent = CalculateAnisotropyTangent(Parameters, PixelMaterialInputs);
#else
	Parameters.WorldTangent = 0;
#endif
}
#undef DERIV_BASE_VALUE
#if USE_ANALYTIC_DERIVATIVES
#define DERIV_BASE_VALUE(_X) _X.Value
void CalcPixelMaterialInputsAnalyticDerivatives(in out FMaterialPixelParameters Parameters, in out FPixelMaterialInputs PixelMaterialInputs)
{
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
	
	
	PixelMaterialInputs.Normal = MaterialFloat3(1.00000000,0.0f,0.0f);
SHADER_POP_WARNINGS_STATE
#if TEMPLATE_USES_SUBSTRATE
	Parameters.SubstratePixelFootprint = SubstrateGetPixelFootprint(Parameters.WorldPosition_CamRelative, GetRoughnessFromNormalCurvature(Parameters));
	Parameters.SharedLocalBases = SubstrateInitialiseSharedLocalBases();
	Parameters.SubstrateTree = GetInitialisedSubstrateTree();
#if SUBSTRATE_USE_FULLYSIMPLIFIED_MATERIAL == 1
	Parameters.SharedLocalBasesFullySimplified = SubstrateInitialiseSharedLocalBases();
	Parameters.SubstrateTreeFullySimplified = GetInitialisedSubstrateTree();
#endif
#endif
	
	float3 MaterialNormal = GetMaterialNormal(Parameters, PixelMaterialInputs);
#if MATERIAL_TANGENTSPACENORMAL
#if FEATURE_LEVEL >= FEATURE_LEVEL_SM4
	
	MaterialNormal = normalize(MaterialNormal);
#endif
	
	
	Parameters.WorldNormal = TransformTangentNormalToWorld(Parameters.TangentToWorld, MaterialNormal);
#else 
	Parameters.WorldNormal = normalize(MaterialNormal);
#endif 
#if MATERIAL_TANGENTSPACENORMAL || TWO_SIDED_WORLD_SPACE_SINGLELAYERWATER_NORMAL
	
	Parameters.WorldNormal *= Parameters.TwoSidedSign;
#endif
	Parameters.ReflectionVector = ReflectionAboutCustomWorldNormal(Parameters, Parameters.WorldNormal, false);
#if !PARTICLE_SPRITE_FACTORY
	Parameters.Particle.MotionBlurFade = 1.0f;
#endif 
SHADER_PUSH_WARNINGS_STATE
SHADER_DISABLE_WARNINGS
	
	MaterialFloat3 Local0 = CustomExpression0(Parameters);
	MaterialFloat3 Local1 = max(Local0,((MaterialFloat3)0.00000000));
	MaterialFloat3 Local2 = PositiveClampedPow(Local1,((MaterialFloat3)0.45454544));
	PixelMaterialInputs.EmissiveColor = Local2;
	PixelMaterialInputs.Opacity = 1.00000000;
	PixelMaterialInputs.OpacityMask = 1.00000000;
	PixelMaterialInputs.BaseColor = MaterialFloat3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Metallic = 1.00000000;
	PixelMaterialInputs.Specular = 1.00000000;
	PixelMaterialInputs.Roughness = 1.00000000;
	PixelMaterialInputs.Anisotropy = 1.00000000;
	PixelMaterialInputs.Normal = MaterialFloat3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Tangent = MaterialFloat3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Subsurface = 0;
	PixelMaterialInputs.AmbientOcclusion = 1.00000000;
	PixelMaterialInputs.Refraction = MaterialFloat3(MaterialFloat3(1.00000000,0.0f,0.0f).xy,Material_PreshaderBuffer[0].x);
	PixelMaterialInputs.PixelDepthOffset = 1.00000000;
	PixelMaterialInputs.ShadingModel = 0;
	PixelMaterialInputs.FrontMaterial = GetInitialisedSubstrateData();
	PixelMaterialInputs.SurfaceThickness = 1.00000000;
	PixelMaterialInputs.Displacement = 0.00000000;
SHADER_POP_WARNINGS_STATE
#if MATERIAL_USES_ANISOTROPY
	Parameters.WorldTangent = CalculateAnisotropyTangent(Parameters, PixelMaterialInputs);
#else
	Parameters.WorldTangent = 0;
#endif
}
#undef DERIV_BASE_VALUE
#endif
void ClipLODTransition(float2 SvPosition, float DitherFactor)
{
	if (abs(DitherFactor) > .001)
	{
		float ArgCos = dot(floor(SvPosition.xy), float2(347.83451793, 3343.28371963));
#if FEATURE_LEVEL <= FEATURE_LEVEL_ES3_1
		
		ArgCos = fmod(ArgCos, 10000);
#endif
		float RandCos = cos(ArgCos);
		float RandomVal = frac(RandCos * 1000.0);
		half RetVal = (DitherFactor < 0.0) ?
			(DitherFactor + 1.0 > RandomVal) :
			(DitherFactor < RandomVal);
		clip(RetVal - .001);
	}
}
void ClipLODTransition(FMaterialPixelParameters Parameters, float DitherFactor)
{
	ClipLODTransition(Parameters.SvPosition.xy, DitherFactor);
}
#define REQUIRES_VF_ATTRIBUTES_FOR_CLIPPING ((USE_INSTANCING || USE_INSTANCE_CULLING) && USE_DITHERED_LOD_TRANSITION)
#if (USE_INSTANCING  || USE_INSTANCE_CULLING) && USE_DITHERED_LOD_TRANSITION
void ClipLODTransition(FMaterialPixelParameters Parameters)
{
	ClipLODTransition(Parameters, Parameters.PerInstanceParams.z);
}
#elif USE_DITHERED_LOD_TRANSITION && !USE_STENCIL_LOD_DITHER
void ClipLODTransition(FMaterialPixelParameters Parameters)
{
	if (PrimitiveDither_LODFactor != 0.0)
	{
		ClipLODTransition(Parameters, PrimitiveDither_LODFactor);
	}
}
void ClipLODTransition(float2 SvPosition)
{
	if (PrimitiveDither_LODFactor != 0.0)
	{
		ClipLODTransition(SvPosition, PrimitiveDither_LODFactor);
	}
}
#else
void ClipLODTransition(FMaterialPixelParameters Parameters)
{
}
void ClipLODTransition(float2 SvPosition)
{
}
#endif
void GetMaterialClippingShadowDepth(FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs)
{
	ClipLODTransition(Parameters);
	#if MATERIALBLENDING_MASKED
		clip(GetMaterialMask(PixelMaterialInputs));
	#elif TRANSLUCENT_SHADOW_WITH_MASKED_OPACITY
		clip(GetMaterialMaskedOpacity(PixelMaterialInputs));
	#elif MATERIALBLENDING_TRANSLUCENT
		clip(GetMaterialOpacity(PixelMaterialInputs) - 1.0f / 255.0f);
	#endif
}
#if MATERIAL_DITHER_OPACITY_MASK
float DitheredOpacityMaskToOpacity(float Mask)
{
	
	
	
	
	
	return saturate(Mask + 0.5);
}
#endif
void GetMaterialCoverageAndClipping(FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs)
{
	ClipLODTransition(Parameters);
#if MATERIALBLENDING_MASKED && !SINGLE_LAYER_WATER_NO_DISCARD
	#if MATERIAL_DITHER_OPACITY_MASK
		
		float2 Pos = Parameters.SvPosition.xy;
		
		float2 DepthGrad = {
			ddx( Parameters.SvPosition.z ),
			ddy( Parameters.SvPosition.z )
		};
		
		float Dither5 = frac( ( Pos.x + Pos.y * 2 - 1.5 + ResolvedView.TemporalAAParams.x ) / 5 );
		float Noise = frac( dot( float2( 171.0, 231.0 ) / 71, Pos.xy ) );
		float Dither = ( Dither5 * 5 + Noise ) * (1.0 / 6.0);
		clip( GetMaterialMask(PixelMaterialInputs) + Dither - 0.5 );
	#else
		clip(GetMaterialMask(PixelMaterialInputs));
	#endif
#endif
}
void GetMaterialClippingVelocity(FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs, bool bIsThinTranslucent, float MaterialOpacity)
{
#if MATERIALBLENDING_TRANSLUCENT || MATERIALBLENDING_ADDITIVE || MATERIALBLENDING_MODULATE || SUBSTRATE_TRANSLUCENT_MATERIAL
	ClipLODTransition(Parameters);
	clip(bIsThinTranslucent ? 1.0f : MaterialOpacity - 1.0 / 255.0 - GetMaterialOpacityMaskClipValue());
#else
	GetMaterialCoverageAndClipping(Parameters, PixelMaterialInputs);
#endif
}
#define MATERIALBLENDING_MASKED_USING_COVERAGE (FORWARD_SHADING && MATERIALBLENDING_MASKED && SUPPORTS_PIXEL_COVERAGE && MATERIAL_USE_ALPHA_TO_COVERAGE)
#if MATERIALBLENDING_MASKED_USING_COVERAGE
uint GetDerivativeCoverageFromMask(float MaterialMask)
{
	uint Coverage = 0x0;						
	if (MaterialMask > 0.010) Coverage = 0x08;	
	if (MaterialMask > 0.125) Coverage = 0x18;	
	if (MaterialMask > 0.250) Coverage = 0x19;	
	if (MaterialMask > 0.375) Coverage = 0x39;	
	if (MaterialMask > 0.500) Coverage = 0x3D;	
	if (MaterialMask > 0.625) Coverage = 0x7D;	
	if (MaterialMask > 0.750) Coverage = 0x7F;	
	if (MaterialMask > 0.875) Coverage = 0xFF;	
	return Coverage;
}
uint DiscardMaterialWithPixelCoverage(FMaterialPixelParameters MaterialParameters, FPixelMaterialInputs PixelMaterialInputs)
{
	ClipLODTransition(MaterialParameters);
	float OriginalMask = GetMaterialMaskInputRaw(PixelMaterialInputs);
	float MaskClip = GetMaterialOpacityMaskClipValue();
	if (ResolvedView.NumSceneColorMSAASamples > 1)
	{
		float Mask = (OriginalMask - MaskClip) / (1.0 - MaskClip);
		uint CurrentPixelCoverage = GetDerivativeCoverageFromMask(Mask);
		
		clip(float(CurrentPixelCoverage) - 0.5);
		return CurrentPixelCoverage;
	}
	clip(OriginalMask - MaskClip);
	return 0xF;
}
#endif 
#define FrontFaceSemantic SV_IsFrontFace
#define FIsFrontFace bool
half GetFloatFacingSign(FIsFrontFace bIsFrontFace)
{
#if COMPILER_DXC && (COMPILER_VULKAN || COMPILER_GLSL_ES3_1) && (!RAYHITGROUPSHADER) && (!IS_NANITE_PASS)
		
		
		
		return bIsFrontFace ? -1 : +1;
#else
		return bIsFrontFace ? +1 : -1;
#endif
}
#define OPTIONAL_IsFrontFace , in FIsFrontFace bIsFrontFace : FrontFaceSemantic
#ifndef VF_SUPPORTS_WORLD_POSITION_SHADER_OFFSETS
#define VF_SUPPORTS_WORLD_POSITION_SHADER_OFFSETS 1
#endif 
#define USE_WORLD_POSITION_EXCLUDING_SHADER_OFFSETS	((NEEDS_WORLD_POSITION_EXCLUDING_SHADER_OFFSETS || USE_DEVELOPMENT_SHADERS) && VF_SUPPORTS_WORLD_POSITION_SHADER_OFFSETS)
void CalcMaterialParametersEx(
	in out FMaterialPixelParameters Parameters,
	in out FPixelMaterialInputs PixelMaterialInputs,
	float4 SvPosition,
	float4 ScreenPosition,
	FIsFrontFace bIsFrontFace,
	float3 TranslatedWorldPosition,
	float3 TranslatedWorldPositionExcludingShaderOffsets)
{
	Parameters.WorldPosition_CamRelative = TranslatedWorldPosition;
	Parameters.WorldPosition_NoOffsets_CamRelative = TranslatedWorldPositionExcludingShaderOffsets;
	Parameters.LWCData = MakeMaterialLWCData(Parameters);
#if WSVECTOR_IS_TILEOFFSET
	Parameters.AbsoluteWorldPosition = DFMultiplyLHSAndFastTwoSum(Parameters.LWCData.AbsoluteWorldPosition.Tile, UE_LWC_RENDER_TILE_SIZE, Parameters.LWCData.AbsoluteWorldPosition.Offset);
#elif WSVECTOR_IS_DOUBLEFLOAT
	Parameters.AbsoluteWorldPosition = Parameters.LWCData.AbsoluteWorldPosition;
#endif
	
	
#if USE_WORLD_POSITION_EXCLUDING_SHADER_OFFSETS
#if WSVECTOR_IS_TILEOFFSET
	Parameters.WorldPosition_NoOffsets = DFMultiplyLHSAndFastTwoSum(Parameters.LWCData.WorldPosition_NoOffsets.Tile, UE_LWC_RENDER_TILE_SIZE, Parameters.LWCData.WorldPosition_NoOffsets.Offset);
#elif WSVECTOR_IS_DOUBLEFLOAT
	Parameters.WorldPosition_NoOffsets = Parameters.LWCData.WorldPosition_NoOffsets;
#endif
#endif
	Parameters.SvPosition = SvPosition;
	Parameters.ScreenPosition = ScreenPosition;
	Parameters.ViewBufferUV = ScreenPositionToBufferUV(ScreenPosition);
	
	#if RAYHITGROUPSHADER
		Parameters.CameraVector = -WorldRayDirection();
	#else
		Parameters.CameraVector = select(IsOrthoProjection(ResolvedView), -ResolvedView.ViewForward, normalize(-Parameters.WorldPosition_CamRelative.xyz));
	#endif
	Parameters.LightVector = 0;
#if IS_NANITE_PASS
	
	
	const bool bNaniteIsFrontFace = Parameters.TwoSidedSign > 0.0f;
#endif
	Parameters.TwoSidedSign = 1.0f;
#if MATERIAL_TWOSIDED && HAS_PRIMITIVE_UNIFORM_BUFFER
	
	#if !RAYHITGROUPSHADER
		Parameters.TwoSidedSign *= ResolvedView.CullingSign * GetPrimitive_DeterminantSign(Parameters.PrimitiveId);
	#endif
#endif
#if MATERIAL_TWOSIDED || RAYHITGROUPSHADER
	
	
	#if IS_NANITE_PASS
		Parameters.TwoSidedSign *= GetFloatFacingSign(bNaniteIsFrontFace);
	#else
		Parameters.TwoSidedSign *= GetFloatFacingSign(bIsFrontFace);
	#endif
#endif
#if MATERIAL_VIRTUALTEXTURE_FEEDBACK || LIGHTMAP_VT_ENABLED
	InitializeVirtualTextureFeedback(Parameters.VirtualTextureFeedback, (uint2)SvPosition.xy, View_FrameNumber);
#endif
#if USE_ANALYTIC_DERIVATIVES
	if(!TEXTURE_SAMPLE_DEBUG || View_GeneralPurposeTweak >= 1.0f)
		CalcPixelMaterialInputsAnalyticDerivatives(Parameters, PixelMaterialInputs);
	else
#endif
	{
		CalcPixelMaterialInputs(Parameters, PixelMaterialInputs);
	}
}
void CalcMaterialParameters(
	in out FMaterialPixelParameters Parameters,
	in out FPixelMaterialInputs PixelMaterialInputs,
	float4 SvPosition,
	FIsFrontFace bIsFrontFace)
{
	float4 ScreenPosition = SvPositionToResolvedScreenPosition(SvPosition);
	float3 TranslatedWorldPosition = SvPositionToResolvedTranslatedWorld(SvPosition);
	CalcMaterialParametersEx(Parameters, PixelMaterialInputs, SvPosition, ScreenPosition, bIsFrontFace, TranslatedWorldPosition, TranslatedWorldPosition);
}
void CalcMaterialParametersPost(
	in out FMaterialPixelParameters Parameters,
	in out FPixelMaterialInputs PixelMaterialInputs,
	float4 SvPosition,
	FIsFrontFace bIsFrontFace)
{
	float4 ScreenPosition = SvPositionToScreenPosition(SvPosition);
#if POST_PROCESS_MATERIAL_BEFORE_TONEMAP && !POST_PROCESS_MATERIAL_SSRINPUT	
	
	float3 TranslatedWorldPosition = SvPositionToTranslatedWorld(SvPosition);
#else
	
	float3 TranslatedWorldPosition = SvPositionToTranslatedWorld(SvPosition * float4(View_ResolutionFractionAndInv.xx, 1.0f, 1.0f));
#endif
	CalcMaterialParametersEx(Parameters, PixelMaterialInputs, SvPosition, ScreenPosition, bIsFrontFace, TranslatedWorldPosition, TranslatedWorldPosition);
}
half3x3 AssembleTangentToWorld( half3 TangentToWorld0, half4 TangentToWorld2 )
{
	
	
	
	
	half3 TangentToWorld1 = cross(TangentToWorld2.xyz,TangentToWorld0) * TangentToWorld2.w;
	
	return half3x3(TangentToWorld0, TangentToWorld1, TangentToWorld2.xyz);
}
#define OUTPUT_PIXEL_DEPTH_OFFSET (WANT_PIXEL_DEPTH_OFFSET && !IS_NANITE_PASS && ((MATERIALBLENDING_SOLID || MATERIALBLENDING_MASKED) || (TRANSLUCENT_WRITING_VELOCITY)))
#define SUPPORTS_CONSERVATIVE_DEPTH_WRITES ((COMPILER_HLSL && FEATURE_LEVEL >= FEATURE_LEVEL_SM5) || COMPILER_PSSL || (COMPILER_METAL && FEATURE_LEVEL >= FEATURE_LEVEL_SM5) || SWITCH_PROFILE || SWITCH_PROFILE_FORWARD)
#define USE_CONSERVATIVE_DEPTH_WRITES (OUTPUT_PIXEL_DEPTH_OFFSET && SUPPORTS_CONSERVATIVE_DEPTH_WRITES) 
#if USE_CONSERVATIVE_DEPTH_WRITES
#if COMPILER_HLSL || COMPILER_METAL_SHADER_CONVERTER
	
	#define INPUT_POSITION_QUALIFIERS linear noperspective centroid
	
	#define DEPTH_WRITE_SEMANTIC SV_DepthLessEqual
#elif COMPILER_METAL
	#define INPUT_POSITION_QUALIFIERS 
	#define DEPTH_WRITE_SEMANTIC SV_DepthLessEqual
#elif COMPILER_PSSL
	#define INPUT_POSITION_QUALIFIERS
	#define DEPTH_WRITE_SEMANTIC S_DEPTH_LE_OUTPUT
#elif SWITCH_PROFILE || SWITCH_PROFILE_FORWARD
	#define INPUT_POSITION_QUALIFIERS
	#define DEPTH_WRITE_SEMANTIC SV_DepthLessEqual
#else
	#error USE_CONSERVATIVE_DEPTH_WRITES enabled for unsupported platform
#endif
#else
	#define INPUT_POSITION_QUALIFIERS 
	#define DEPTH_WRITE_SEMANTIC SV_DEPTH
#endif
#if OUTPUT_PIXEL_DEPTH_OFFSET
	#define OPTIONAL_OutDepthConservative ,out float OutDepth : DEPTH_WRITE_SEMANTIC
	#define OPTIONAL_OutDepth ,out float OutDepth : SV_DEPTH
#else
	#define OPTIONAL_OutDepthConservative
	#define OPTIONAL_OutDepth
#endif
#define PODM_LEGACY			0
#define PODM_CAMERAVECTOR	1
float ApplyPixelDepthOffsetToMaterialParameters(inout FMaterialPixelParameters MaterialParameters, FPixelMaterialInputs PixelMaterialInputs, out float OutDepth)
{
	float PixelDepthOffset = GetMaterialPixelDepthOffset(PixelMaterialInputs);
	
	
	
	
	
	
	
	
	
	float DeviceDepth;
	if(IsOrthoProjection(ResolvedView))
	{
		
		float OriginalDeviceZ = MaterialParameters.SvPosition.z;
		float SceneDepth = ConvertFromDeviceZ(OriginalDeviceZ);
		DeviceDepth = max(SceneDepth + PixelDepthOffset, SceneDepth);
		PixelDepthOffset = SceneDepth - DeviceDepth;
		MaterialParameters.ScreenPosition.z = ConvertToDeviceZ(SceneDepth + PixelDepthOffset);
		MaterialParameters.SvPosition.z = MaterialParameters.ScreenPosition.z;
		DeviceDepth = ConvertToDeviceZ(DeviceDepth);
		PixelDepthOffset = MaterialParameters.SvPosition.z - OriginalDeviceZ;
		
		MaterialParameters.LWCData.AbsoluteWorldPosition = WSAdd(MaterialParameters.LWCData.AbsoluteWorldPosition, -MaterialParameters.CameraVector * PixelDepthOffset);
	}
	else
	{
		
		const float3 CameraPixelForwardVector = -MaterialParameters.CameraVector;
	#if PIXEL_DEPTH_OFFSET_MODE == PODM_LEGACY
		
		const float3 AbsoluteWorldOffsetVector = CameraPixelForwardVector * max(0.0, PixelDepthOffset);
	#elif PIXEL_DEPTH_OFFSET_MODE == PODM_CAMERAVECTOR
		
		const float PixelDepthOffetForPerspective = PixelDepthOffset * dot(CameraPixelForwardVector, ResolvedView.ViewForward);
		
		
		const float3 AbsoluteWorldOffsetVector = CameraPixelForwardVector * max(0.0, PixelDepthOffetForPerspective);
		
		PixelDepthOffset = PixelDepthOffetForPerspective;
	#endif
		
		DeviceDepth = min(MaterialParameters.ScreenPosition.z / (MaterialParameters.ScreenPosition.w + PixelDepthOffset), MaterialParameters.SvPosition.z);
		
		PixelDepthOffset = (MaterialParameters.ScreenPosition.z - DeviceDepth * MaterialParameters.ScreenPosition.w) / DeviceDepth;
		
		MaterialParameters.ScreenPosition.w += PixelDepthOffset;
		MaterialParameters.SvPosition.w = MaterialParameters.ScreenPosition.w;
		MaterialParameters.LWCData.AbsoluteWorldPosition = WSAdd(MaterialParameters.LWCData.AbsoluteWorldPosition, AbsoluteWorldOffsetVector);
	}
	MaterialParameters.AbsoluteWorldPosition = WSToDF(MaterialParameters.LWCData.AbsoluteWorldPosition);
	OutDepth = INVARIANT(DeviceDepth);
	return PixelDepthOffset;
}
float3 GetWorldBentNormalZero(in FMaterialPixelParameters MaterialParameters)
{
#if NUM_MATERIAL_OUTPUTS_GETBENTNORMAL > 0
	#if MATERIAL_TANGENTSPACENORMAL
		return normalize(TransformTangentVectorToWorld(MaterialParameters.TangentToWorld, GetBentNormal0(MaterialParameters)));
	#else
		return GetBentNormal0(MaterialParameters);
	#endif
#else
	return MaterialParameters.WorldNormal;
#endif
}
void GetEyeNormals(
	float IrisMask,
	float IrisDistance,
	in float3 InNormal,
	in float3 InClearCoatNormal,
	in float3 InCustomTangent,
	inout float3 OutIrisNormal,
	inout float3 OutIrisPlaneNormal)
{
#if IRIS_NORMAL
  #if NUM_MATERIAL_OUTPUTS_CLEARCOATBOTTOMNORMAL > 0
	OutIrisNormal = normalize(InClearCoatNormal);
  #else
	OutIrisNormal = InNormal;
  #endif
  #if NUM_MATERIAL_OUTPUTS_GETTANGENTOUTPUT > 0
	OutIrisPlaneNormal = normalize(InCustomTangent);
  #else
	OutIrisPlaneNormal = OutIrisNormal;
  #endif
#else
  #if NUM_MATERIAL_OUTPUTS_GETTANGENTOUTPUT > 0
	OutIrisNormal = normalize(InCustomTangent);
	OutIrisPlaneNormal = OutIrisNormal;
  #else
	OutIrisNormal = InNormal;
	OutIrisPlaneNormal = InNormal;
  #endif
#endif
}
