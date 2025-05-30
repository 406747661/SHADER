// DebugHash_4849a06f04c7d62f27fddaf84819b3f813232e1dae1d91e46c594e664b9a27a9
#line 1 "__UE_FILENAME_SENTINEL"
precise float MakePrecise(in precise float v) { precise float pv = v; return pv; }
precise float2 MakePrecise(in precise float2 v) { precise float2 pv = v; return pv; }
precise float3 MakePrecise(in precise float3 v) { precise float3 pv = v; return pv; }
precise float4 MakePrecise(in precise float4 v) { precise float4 pv = v; return pv; }
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
float2 max3 ( float2 a, float2 b, float2 c) { return float2( max3 (a.x , b.x , c.x ), max3 (a.y , b.y , c.y )); }
float3 max3 ( float3 a, float3 b, float3 c) { return float3( max3 (a.xy, b.xy, c.xy), max3 (a.z , b.z , c.z )); }
float4 max3 ( float4 a, float4 b, float4 c) { return float4( max3 (a.xy, b.xy, c.xy), max3 (a.zw, b.zw, c.zw)); }
int2 max3 ( int2 a, int2 b, int2 c) { return int2( max3 (a.x , b.x , c.x ), max3 (a.y , b.y , c.y )); }
int3 max3 ( int3 a, int3 b, int3 c) { return int3( max3 (a.xy, b.xy, c.xy), max3 (a.z , b.z , c.z )); }
int4 max3 ( int4 a, int4 b, int4 c) { return int4( max3 (a.xy, b.xy, c.xy), max3 (a.zw, b.zw, c.zw)); }
uint2 max3 ( uint2 a, uint2 b, uint2 c) { return uint2( max3 (a.x , b.x , c.x ), max3 (a.y , b.y , c.y )); }
uint3 max3 ( uint3 a, uint3 b, uint3 c) { return uint3( max3 (a.xy, b.xy, c.xy), max3 (a.z , b.z , c.z )); }
uint4 max3 ( uint4 a, uint4 b, uint4 c) { return uint4( max3 (a.xy, b.xy, c.xy), max3 (a.zw, b.zw, c.zw)); }
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
uint BitFieldExtractU32(uint Data, uint Size, uint Offset)
{
	Size &= 31;
	Offset &= 31;
	return (Data >> Offset) & ((1u << Size) - 1u);
}
struct FloatDeriv
{
	float Value;
	float Ddx;
	float Ddy;
};
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
FDFScalar DFNegate(FDFScalar Value)
{
	return MakeDFScalar(-Value.High, -Value.Low);
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
FDFScalar DFFastDivide(FDFScalar Lhs, FDFScalar Rhs);
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
struct FDFVector2
{
	float2 High;
	float2 Low;
};
FDFVector2 MakeDFVector2(float2 High, float2 Low)
{
	FDFVector2 Result;
	Result.High = High;
	Result.Low = Low;
	return Result;
}
FDFVector2 DFPromote(FDFVector2 Value) { return Value; }
FDFVector2 DFPromote(float2 Value) { return MakeDFVector2(Value, (float2)0); }
FDFVector2 DFNegate(FDFVector2 Value)
{
	return MakeDFVector2(-Value.High, -Value.Low);
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
FDFVector2 DFFastDivide(FDFVector2 Lhs, FDFVector2 Rhs);
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
FDFVector2  DFMultiply (FDFScalar Lhs, FDFVector2 Rhs) { return DFMultiply (DFBroadcast2(Lhs), Rhs); }
FDFVector2  DFMultiply (float Lhs, FDFVector2 Rhs) { return DFMultiply (DFBroadcast2(Lhs), Rhs); }
FDFVector2  DFMultiply (FDFScalar Lhs, float2 Rhs) { return DFMultiply (DFBroadcast2(Lhs), Rhs); }
FDFVector2  DFMultiply (float Lhs, float2 Rhs) { return DFMultiply (DFBroadcast2(Lhs), Rhs); }
FDFVector2  DFMultiply (FDFVector2 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast2(Rhs)); }
FDFVector2  DFMultiply (FDFVector2 Lhs, float Rhs)     { return DFMultiply (Lhs, DFBroadcast2(Rhs)); }
FDFVector2  DFMultiply (float2 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast2(Rhs)); }
FDFVector2  DFMultiply (float2 Lhs, float Rhs) { return DFMultiply (Lhs, DFBroadcast2(Rhs)); }
FDFVector2  DFFastDivide (FDFScalar Lhs, FDFVector2 Rhs) { return DFFastDivide (DFBroadcast2(Lhs), Rhs); }
FDFVector2  DFFastDivide (float Lhs, FDFVector2 Rhs) { return DFFastDivide (DFBroadcast2(Lhs), Rhs); }
FDFVector2  DFFastDivide (FDFScalar Lhs, float2 Rhs) { return DFFastDivide (DFBroadcast2(Lhs), Rhs); }
FDFVector2  DFFastDivide (float Lhs, float2 Rhs) { return DFFastDivide (DFBroadcast2(Lhs), Rhs); }
FDFVector2  DFFastDivide (FDFVector2 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast2(Rhs)); }
FDFVector2  DFFastDivide (FDFVector2 Lhs, float Rhs)     { return DFFastDivide (Lhs, DFBroadcast2(Rhs)); }
FDFVector2  DFFastDivide (float2 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast2(Rhs)); }
FDFVector2  DFFastDivide (float2 Lhs, float Rhs) { return DFFastDivide (Lhs, DFBroadcast2(Rhs)); }
struct FDFVector3
{
	float3 High;
	float3 Low;
};
FDFVector3 MakeDFVector3(float3 High, float3 Low)
{
	FDFVector3 Result;
	Result.High = High;
	Result.Low = Low;
	return Result;
}
FDFVector3 DFPromote(FDFVector3 Value) { return Value; }
FDFVector3 DFPromote(float3 Value) { return MakeDFVector3(Value, (float3)0); }
FDFVector3 DFNegate(FDFVector3 Value)
{
	return MakeDFVector3(-Value.High, -Value.Low);
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
FDFVector3 DFFastDivide(FDFVector3 Lhs, FDFVector3 Rhs);
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
FDFVector3  DFMultiply (FDFScalar Lhs, FDFVector3 Rhs) { return DFMultiply (DFBroadcast3(Lhs), Rhs); }
FDFVector3  DFMultiply (float Lhs, FDFVector3 Rhs) { return DFMultiply (DFBroadcast3(Lhs), Rhs); }
FDFVector3  DFMultiply (FDFScalar Lhs, float3 Rhs) { return DFMultiply (DFBroadcast3(Lhs), Rhs); }
FDFVector3  DFMultiply (float Lhs, float3 Rhs) { return DFMultiply (DFBroadcast3(Lhs), Rhs); }
FDFVector3  DFMultiply (FDFVector3 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast3(Rhs)); }
FDFVector3  DFMultiply (FDFVector3 Lhs, float Rhs)     { return DFMultiply (Lhs, DFBroadcast3(Rhs)); }
FDFVector3  DFMultiply (float3 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast3(Rhs)); }
FDFVector3  DFMultiply (float3 Lhs, float Rhs) { return DFMultiply (Lhs, DFBroadcast3(Rhs)); }
FDFVector3  DFFastDivide (FDFScalar Lhs, FDFVector3 Rhs) { return DFFastDivide (DFBroadcast3(Lhs), Rhs); }
FDFVector3  DFFastDivide (float Lhs, FDFVector3 Rhs) { return DFFastDivide (DFBroadcast3(Lhs), Rhs); }
FDFVector3  DFFastDivide (FDFScalar Lhs, float3 Rhs) { return DFFastDivide (DFBroadcast3(Lhs), Rhs); }
FDFVector3  DFFastDivide (float Lhs, float3 Rhs) { return DFFastDivide (DFBroadcast3(Lhs), Rhs); }
FDFVector3  DFFastDivide (FDFVector3 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast3(Rhs)); }
FDFVector3  DFFastDivide (FDFVector3 Lhs, float Rhs)     { return DFFastDivide (Lhs, DFBroadcast3(Rhs)); }
FDFVector3  DFFastDivide (float3 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast3(Rhs)); }
FDFVector3  DFFastDivide (float3 Lhs, float Rhs) { return DFFastDivide (Lhs, DFBroadcast3(Rhs)); }
struct FDFVector4
{
	float4 High;
	float4 Low;
};
FDFVector4 MakeDFVector4(float4 High, float4 Low)
{
	FDFVector4 Result;
	Result.High = High;
	Result.Low = Low;
	return Result;
}
FDFVector4 DFPromote(FDFVector4 Value) { return Value; }
FDFVector4 DFPromote(float4 Value) { return MakeDFVector4(Value, (float4)0); }
FDFVector4 DFNegate(FDFVector4 Value)
{
	return MakeDFVector4(-Value.High, -Value.Low);
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
FDFVector4 DFFastDivide(FDFVector4 Lhs, FDFVector4 Rhs);
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
FDFVector4  DFMultiply (FDFScalar Lhs, FDFVector4 Rhs) { return DFMultiply (DFBroadcast4(Lhs), Rhs); }
FDFVector4  DFMultiply (float Lhs, FDFVector4 Rhs) { return DFMultiply (DFBroadcast4(Lhs), Rhs); }
FDFVector4  DFMultiply (FDFScalar Lhs, float4 Rhs) { return DFMultiply (DFBroadcast4(Lhs), Rhs); }
FDFVector4  DFMultiply (float Lhs, float4 Rhs) { return DFMultiply (DFBroadcast4(Lhs), Rhs); }
FDFVector4  DFMultiply (FDFVector4 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast4(Rhs)); }
FDFVector4  DFMultiply (FDFVector4 Lhs, float Rhs)     { return DFMultiply (Lhs, DFBroadcast4(Rhs)); }
FDFVector4  DFMultiply (float4 Lhs, FDFScalar Rhs) { return DFMultiply (Lhs, DFBroadcast4(Rhs)); }
FDFVector4  DFMultiply (float4 Lhs, float Rhs) { return DFMultiply (Lhs, DFBroadcast4(Rhs)); }
FDFVector4  DFFastDivide (FDFScalar Lhs, FDFVector4 Rhs) { return DFFastDivide (DFBroadcast4(Lhs), Rhs); }
FDFVector4  DFFastDivide (float Lhs, FDFVector4 Rhs) { return DFFastDivide (DFBroadcast4(Lhs), Rhs); }
FDFVector4  DFFastDivide (FDFScalar Lhs, float4 Rhs) { return DFFastDivide (DFBroadcast4(Lhs), Rhs); }
FDFVector4  DFFastDivide (float Lhs, float4 Rhs) { return DFFastDivide (DFBroadcast4(Lhs), Rhs); }
FDFVector4  DFFastDivide (FDFVector4 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast4(Rhs)); }
FDFVector4  DFFastDivide (FDFVector4 Lhs, float Rhs)     { return DFFastDivide (Lhs, DFBroadcast4(Rhs)); }
FDFVector4  DFFastDivide (float4 Lhs, FDFScalar Rhs) { return DFFastDivide (Lhs, DFBroadcast4(Rhs)); }
FDFVector4  DFFastDivide (float4 Lhs, float Rhs) { return DFFastDivide (Lhs, DFBroadcast4(Rhs)); }
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
float4x4 DFFastMultiplyTranslationDemote(FDFMatrix Lhs, FDFVector3 Rhs)
{
	float3 Translation = DFFastLocalSubtractDemote(Lhs.PostTranslation, DFNegate(Rhs));
	float4x4 Result = MultiplyTranslation(Lhs.M, Translation);
	return Result;
}
float4x4 DFFastMultiplyTranslationDemote(FDFVector3 Lhs, FDFInverseMatrix Rhs)
{
	float3 Translation = DFFastLocalSubtractDemote(Lhs, Rhs.PreTranslation);
	float4x4 Result = MultiplyTranslation(Translation, Rhs.M);
	return Result;
}
float3x3 DFToFloat3x3(FDFMatrix Value)
{
	return (float3x3)Value.M;
}
float3x3 DFToFloat3x3(FDFInverseMatrix Value)
{
	return (float3x3)Value.M;
}
FDFMatrix DFPromote(FDFMatrix Value) { return Value; }
FDFMatrix  DFPromote(float4x4 Value) { return MakeDFMatrix((float3)0, Value); }
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
FLWCMatrix MakeLWCMatrix(float3 Tile, float4x4 InMatrix)
{
	FLWCMatrix Result;
	 ( Result ).Tile = ( Tile );
	Result.M = InMatrix;
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
FLWCScalar LWCSubtract(FLWCScalar Lhs, FLWCScalar Rhs) { return MakeLWCScalar( (( Lhs ).Tile) -  (( Rhs ).Tile), Lhs.Offset - Rhs.Offset); }
FLWCScalar LWCSubtract(float Lhs, FLWCScalar Rhs) { return MakeLWCScalar(- (( Rhs ).Tile), Lhs - Rhs.Offset); }
FLWCScalar LWCSubtract(FLWCScalar Lhs, float Rhs) { return MakeLWCScalar( (( Lhs ).Tile), Lhs.Offset - Rhs); }
FLWCVector2 LWCSubtract(FLWCVector2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2( (( Lhs ).Tile) -  (( Rhs ).Tile), Lhs.Offset - Rhs.Offset); }
FLWCVector2 LWCSubtract(float2 Lhs, FLWCVector2 Rhs) { return MakeLWCVector2(- (( Rhs ).Tile), Lhs - Rhs.Offset); }
FLWCVector2 LWCSubtract(FLWCVector2 Lhs, float2 Rhs) { return MakeLWCVector2( (( Lhs ).Tile), Lhs.Offset - Rhs); }
FLWCVector3 LWCSubtract(FLWCVector3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3( (( Lhs ).Tile) -  (( Rhs ).Tile), Lhs.Offset - Rhs.Offset); }
FLWCVector3 LWCSubtract(float3 Lhs, FLWCVector3 Rhs) { return MakeLWCVector3(- (( Rhs ).Tile), Lhs - Rhs.Offset); }
FLWCVector3 LWCSubtract(FLWCVector3 Lhs, float3 Rhs) { return MakeLWCVector3( (( Lhs ).Tile), Lhs.Offset - Rhs); }
FLWCVector4 LWCSubtract(FLWCVector4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4( (( Lhs ).Tile) -  (( Rhs ).Tile), Lhs.Offset - Rhs.Offset); }
FLWCVector4 LWCSubtract(float4 Lhs, FLWCVector4 Rhs) { return MakeLWCVector4(- (( Rhs ).Tile), Lhs - Rhs.Offset); }
FLWCVector4 LWCSubtract(FLWCVector4 Lhs, float4 Rhs) { return MakeLWCVector4( (( Lhs ).Tile), Lhs.Offset - Rhs); }
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
StructuredBuffer<uint>  InstanceCulling_InstanceIdsBuffer;
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
StructuredBuffer<float4>  Scene_GPUScene_GPUSceneInstanceSceneData;
StructuredBuffer<float4>  Scene_GPUScene_GPUSceneInstancePayloadData;
StructuredBuffer<float4>  Scene_GPUScene_GPUScenePrimitiveSceneData;
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
Buffer<float2>  LocalVF_VertexFetch_TexCoordBuffer;
Buffer<float>  LocalVF_VertexFetch_PreSkinPositionBuffer;
Buffer<float4>  LocalVF_VertexFetch_PackedTangentsBuffer;
Buffer<float4>  LocalVF_VertexFetch_ColorComponentsBuffer;
cbuffer LocalVFLooseParameters {
	 uint    LocalVFLooseParameters_FrameNumber ;
	 uint    LocalVFLooseParameters_Padding4 ;
	 uint    BindlessSRV_LocalVFLooseParameters_GPUSkinPassThroughPositionBuffer ;
	 uint    LocalVFLooseParameters_Padding12 ;
	 uint    BindlessSRV_LocalVFLooseParameters_GPUSkinPassThroughPreviousPositionBuffer ;
	 uint    LocalVFLooseParameters_Padding20 ;
	 uint    BindlessSRV_LocalVFLooseParameters_GPUSkinPassThroughPreSkinnedTangentBuffer ;
 }
Buffer<float>  LocalVFLooseParameters_GPUSkinPassThroughPreviousPositionBuffer;
Buffer<float4>  LocalVFLooseParameters_GPUSkinPassThroughPreSkinnedTangentBuffer;
cbuffer Material {
	 float4    Material_PreshaderBuffer[2] ;
	 uint    BindlessSampler_Material_Wrap_WorldGroupSettings ;
	 uint    Material_Padding36 ;
	 uint    BindlessSampler_Material_Clamp_WorldGroupSettings ;
 }
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
FLWCScalar DFToWS(FDFScalar In) { return DFToTileOffset(In); }
FLWCScalar DFFastToWS(FDFScalar In) { return DFFastToTileOffset(In); }
FLWCVector2 DFToWS(FDFVector2 In) { return DFToTileOffset(In); }
FLWCVector2 DFFastToWS(FDFVector2 In) { return DFFastToTileOffset(In); }
FLWCVector3 DFToWS(FDFVector3 In) { return DFToTileOffset(In); }
FLWCVector3 DFFastToWS(FDFVector3 In) { return DFFastToTileOffset(In); }
FLWCVector4 DFToWS(FDFVector4 In) { return DFToTileOffset(In); }
FLWCVector4 DFFastToWS(FDFVector4 In) { return DFFastToTileOffset(In); }
FLWCMatrix DFToWS(FDFMatrix In) { return DFToTileOffset(In); }
FLWCMatrix DFFastToWS(FDFMatrix In) { return DFFastToTileOffset(In); }
FLWCInverseMatrix DFToWS(FDFInverseMatrix In) { return DFToTileOffset(In); }
FLWCInverseMatrix DFFastToWS(FDFInverseMatrix In) { return DFFastToTileOffset(In); }
float DFToWS( float In) { return In; }
float2 DFToWS( float2 In) { return In; }
float3 DFToWS( float3 In) { return In; }
float4 DFToWS( float4 In) { return In; }
float3x3 GetTangentBasis( float3 TangentZ )
{
	const float Sign = TangentZ.z >= 0 ? 1 : -1;
	const float a = -rcp( Sign + TangentZ.z );
	const float b = TangentZ.x * TangentZ.y * a;
	float3 TangentX = { 1 + Sign * a * Pow2( TangentZ.x ), Sign * b, -Sign * TangentZ.x };
	float3 TangentY = { b,  Sign + a * Pow2( TangentZ.y ), -TangentZ.y };
	return float3x3( TangentX, TangentY, TangentZ );
}
float3 TangentToWorld( float3 Vec, float3 TangentZ )
{
	return mul( Vec, GetTangentBasis( TangentZ ) );
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
float4 LoadInstanceSceneDataElement(uint Index)
{
	return Scene_GPUScene_GPUSceneInstanceSceneData[Index];
}
float4 LoadInstancePayloadDataElement(uint Index)
{
	return Scene_GPUScene_GPUSceneInstancePayloadData[Index];
}
void UnpackPrimitiveIdAndInstanceFlags(uint PackedPrimitiveIdAndFlags, inout uint OutPrimitiveId, inout uint OutInstanceFlags)
{
	OutPrimitiveId		= BitFieldExtractU32(PackedPrimitiveIdAndFlags, (20u),  0);
	OutInstanceFlags	= BitFieldExtractU32(PackedPrimitiveIdAndFlags, (12u), (20u));	
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
void LoadInstanceRelativeIdAndCustomDataCount(uint InstanceId, uint SOAStride, inout uint OutPrimitiveId, inout uint OutInstanceFlags)
{
	const uint PackedRelativeIdAndCustomDataCount = asuint(LoadInstanceSceneDataElement(0 * SOAStride + InstanceId).y);
	UnpackInstanceRelativeIdAndCustomDataCount(PackedRelativeIdAndCustomDataCount, OutPrimitiveId, OutInstanceFlags);
}
float GetInstanceDeterminantSignFromFlags(uint Flags)
{
	return CondMask(Flags & 0x1, -1.0f, 1.0f);
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
struct FSubstrateData
{
	uint Dummy;
};
FSubstrateData GetInitialisedSubstrateData() { return (FSubstrateData)0; }
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
	float2 TexCoords[1];
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
	float2 TexCoords_DDX[1];
	float2 TexCoords_DDY[1];
	float AOMaterialMask;
	float PerInstanceRandom;
	uint PrimitiveId;
	FMaterialParticleParameters Particle;
	float4 FontSignedDistanceData;
	FMaterialAttributes MaterialAttributes;
	FMaterialLWCData LWCData;
};
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
	float2 TexCoords[1];
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
FPrimitiveSceneData GetPrimitiveData(FMaterialVertexParameters Parameters)
{
	return Parameters.SceneData.Primitive;
}
FPrimitiveSceneData GetPrimitiveData(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters.PrimitiveId);
}
FDFInverseMatrix GetWorldToInstanceDF(FMaterialVertexParameters Parameters)
{
		return GetPrimitiveData(Parameters).WorldToLocal;
}
FDFInverseMatrix GetWorldToInstanceDF(FMaterialPixelParameters Parameters)
{
		return GetPrimitiveData(Parameters).WorldToLocal;
}
FDFMatrix GetInstanceToWorldDF(FMaterialVertexParameters Parameters)
{
		return GetPrimitiveData(Parameters).LocalToWorld;
}
FDFMatrix GetPrevInstanceToWorldDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousLocalToWorld;
}
FDFMatrix GetInstanceToWorldDF(FMaterialPixelParameters Parameters)
{
		return GetPrimitiveData(Parameters).LocalToWorld;
}
FDFMatrix GetPrevInstanceToWorldDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousLocalToWorld;
}
FDFMatrix GetLocalToWorldDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).LocalToWorld;
}
FDFMatrix GetLocalToWorldDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).LocalToWorld;
}
FDFMatrix GetPrevLocalToWorldDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousLocalToWorld;
}
FDFMatrix GetPrevLocalToWorldDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousLocalToWorld;
}
FDFInverseMatrix GetWorldToLocalDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).WorldToLocal;
}
FDFInverseMatrix GetWorldToLocalDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).WorldToLocal;
}
FDFInverseMatrix GetPrevWorldToLocalDF(FMaterialVertexParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousWorldToLocal;
}
FDFInverseMatrix GetPrevWorldToLocalDF(FMaterialPixelParameters Parameters)
{
	return GetPrimitiveData(Parameters).PreviousWorldToLocal;
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
float3 ReflectionAboutCustomWorldNormal(FMaterialPixelParameters Parameters, float3 WorldNormal, bool bNormalizeInputNormal)
{
	if (bNormalizeInputNormal)
	{
		WorldNormal = normalize(WorldNormal);
	}
	return -Parameters.CameraVector + WorldNormal * dot(WorldNormal, Parameters.CameraVector) * 2.0;
}
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
FloatDeriv ConstructConstantFloatDeriv(float Value)
{
	FloatDeriv Ret;
	Ret.Value = Value;
	Ret.Ddx = 0;
	Ret.Ddy = 0;
	return Ret;
}
float4 CustomExpression0(FMaterialPixelParameters Parameters,float2 i,float iTime,float2 f,float2 z,float2 p)
{
float4 O= float(0);
    for(O *= 0.; i.y++<8.;
        O += (sin(f)+1.).y * abs(f.x-f.y))
        f += cos(f.yx*i.y+i+iTime)/i.y+.7;
    O = tanh(7*exp(z-4-p.y*float4(-1,1,2,0))/O);
return O;
}
_Pragma("dxc diagnostic pop")
float3 GetMaterialNormalRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Normal;
}
float3 GetMaterialNormal(FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs)
{
	float3 RetNormal;
	RetNormal = GetMaterialNormalRaw(PixelMaterialInputs);
	{
		float3 OverrideNormal = ResolvedView.NormalOverrideParameter.xyz;
			OverrideNormal = Parameters.TangentToWorld[2] * (1 - ResolvedView.NormalOverrideParameter.w);
		RetNormal = RetNormal * ResolvedView.NormalOverrideParameter.w + OverrideNormal;
	}
	return RetNormal;
}
float3 GetMaterialTangentRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Tangent;
}
float3 GetMaterialTangent(FPixelMaterialInputs PixelMaterialInputs)
{
	return GetMaterialTangentRaw(PixelMaterialInputs);
}
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
float GetMaterialTranslucencyDirectionalLightingIntensity()
{
return 1.00000;
}
_Pragma("dxc diagnostic pop")
float GetMaterialOpacityRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.Opacity;
}
float GetMaterialFirstPersonInterpolationAlpha(FMaterialVertexParameters Parameters)
{
	return 1.0f;
}
bool ShouldEnableWorldPositionOffset(FMaterialVertexParameters Parameters)
{
		if (!Parameters.bEvaluateWorldPositionOffset ||
			(GetPrimitiveData(Parameters).Flags & 0x8000) == 0)
		{
			return false;
		}
	return true;
}
float3 ClampWorldPositionOffset(FMaterialVertexParameters Parameters, float3 InOffset)
{
	const float MaxWPODim = GetPrimitiveData(Parameters).MaxWPOExtent;
	return MaxWPODim <= 0.0f ? InOffset : clamp(InOffset, -MaxWPODim.xxx, MaxWPODim.xxx);
}
float3 GetMaterialWorldPositionOffsetRaw(FMaterialVertexParameters Parameters)
{
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
	float2 Local15 = Parameters.TexCoords[0].xy;
	return float3(0.00000000,0.0f,0.0f);;
_Pragma("dxc diagnostic pop")
}
float3 GetMaterialWorldPositionOffset(FMaterialVertexParameters Parameters)
{
	float3 WPO = float3(0, 0, 0);
	[branch]
	if (ShouldEnableWorldPositionOffset(Parameters))
	{
		WPO = ClampWorldPositionOffset(Parameters, GetMaterialWorldPositionOffsetRaw(Parameters));
	}
	[branch]
	if ((GetPrimitiveData(Parameters).Flags & 0x40000000) != 0)
	{
		const float3 FirstPersonPosition = mul(Parameters.WorldPosition + WPO, (float3x3)ResolvedView.FirstPersonTransform);
		const float3 FirstPersonWPO = FirstPersonPosition - Parameters.WorldPosition;
		const float LerpAlpha = GetMaterialFirstPersonInterpolationAlpha(Parameters);
		WPO = lerp(WPO, FirstPersonWPO, LerpAlpha);
	}
	return WPO;
}
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
float GetMaterialCustomData0(in out FMaterialPixelParameters Parameters)
{
	return 1.00000000;;
}
_Pragma("dxc diagnostic pop")
float GetMaterialAmbientOcclusionRaw(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.AmbientOcclusion;
}
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
void GetMaterialCustomizedUVs(FMaterialVertexParameters Parameters, inout float2 OutTexCoords[1])
{
	float2 Local15 = Parameters.TexCoords[0].xy;
	OutTexCoords[0] = Local15;
}
void GetCustomInterpolators(FMaterialVertexParameters Parameters, inout float2 OutTexCoords[1])
{
}
_Pragma("dxc diagnostic pop")
float GetMaterialPixelDepthOffset(FPixelMaterialInputs PixelMaterialInputs)
{
	return PixelMaterialInputs.PixelDepthOffset;
}
float3 CalculateAnisotropyTangent(in out FMaterialPixelParameters Parameters, FPixelMaterialInputs PixelMaterialInputs)
{
	float3 Normal = Parameters.WorldNormal;
	float3 Tangent = GetMaterialTangent(PixelMaterialInputs);
	float3 BiTangent = cross(Normal, Tangent);
	Tangent = normalize(cross(BiTangent, Normal));
	return Tangent;
}
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
_Pragma("dxc diagnostic pop")
void CalcPixelMaterialInputs(in out FMaterialPixelParameters Parameters, in out FPixelMaterialInputs PixelMaterialInputs)
{
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
	PixelMaterialInputs.Normal = float3(1.00000000,0.0f,0.0f);
_Pragma("dxc diagnostic pop")
	float3 MaterialNormal = GetMaterialNormal(Parameters, PixelMaterialInputs);
	Parameters.WorldNormal = normalize(MaterialNormal);
	Parameters.ReflectionVector = ReflectionAboutCustomWorldNormal(Parameters, Parameters.WorldNormal, false);
	Parameters.Particle.MotionBlurFade = 1.0f;
_Pragma("dxc diagnostic push")
_Pragma("dxc diagnostic ignored \"-Wall\"") 					_Pragma("dxc diagnostic ignored \"-Wconversion\"") 				_Pragma("dxc diagnostic ignored \"-Wfor-redefinition\"") 		_Pragma("dxc diagnostic ignored \"-Winline-asm\"")				_Pragma("dxc diagnostic ignored \"-Wunsequenced\"")
	float2 Local0 = Parameters.TexCoords[0].xy;
	float2 Local1 = (  Local0  * ((float2)4.00000000));
	float2 Local2 = (  Local1  - ((float2)2.00000000));
	float Local3 = dot(  Local2 ,  Local2 );
	float Local4 = PositiveClampedPow(  Local3 ,1.79999995);
	float Local5 = (0.69999999 -   Local4 );
	float Local6 = abs(  Local5 );
	float Local7 = (-4.00000000 *   Local6 );
	float Local8 = (4.00000000 -   Local7 );
	float2 Local9 = (((float2)  Local8 ) + Material_PreshaderBuffer[0].xy);
	float2 Local10 = (  Local2  *   Local9 );
	float4 Local11 = CustomExpression0(Parameters,Material_PreshaderBuffer[0].zw,View_RealTime,  Local10 ,Material_PreshaderBuffer[0].xy,  Local2 );
	float4 Local12 = (Local11 * ((float4)10.00000000));
	float4 Local13 = max(Local12,((float4)0.00000000));
	float4 Local14 = PositiveClampedPow(Local13,((float4)0.45454544));
	PixelMaterialInputs.EmissiveColor = Local14.xyz;
	PixelMaterialInputs.Opacity = 1.00000000;
	PixelMaterialInputs.OpacityMask = 1.00000000;
	PixelMaterialInputs.BaseColor = float3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Metallic = 1.00000000;
	PixelMaterialInputs.Specular = 1.00000000;
	PixelMaterialInputs.Roughness = 1.00000000;
	PixelMaterialInputs.Anisotropy = 1.00000000;
	PixelMaterialInputs.Normal = float3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Tangent = float3(1.00000000,0.0f,0.0f);
	PixelMaterialInputs.Subsurface = 0;
	PixelMaterialInputs.AmbientOcclusion = 1.00000000;
	PixelMaterialInputs.Refraction = float3(float3(1.00000000,0.0f,0.0f).xy,Material_PreshaderBuffer[1].x);
	PixelMaterialInputs.PixelDepthOffset = 1.00000000;
	PixelMaterialInputs.ShadingModel = 0;
	PixelMaterialInputs.FrontMaterial = GetInitialisedSubstrateData();
	PixelMaterialInputs.SurfaceThickness = 1.00000000;
	PixelMaterialInputs.Displacement = 0.00000000;
_Pragma("dxc diagnostic pop")
	Parameters.WorldTangent = CalculateAnisotropyTangent(Parameters, PixelMaterialInputs);
}
struct FSharedBasePassInterpolants
{
	float3 PixelPositionExcludingWPO : TEXCOORD9;
};
float4 TransformLocalToTranslatedWorld(float3 LocalPosition, FDFMatrix LocalToWorld)
{
	return DFTransformLocalToTranslatedWorld(LocalPosition, LocalToWorld, ResolvedView.PreViewTranslation);
}
float4 TransformLocalToTranslatedWorld(float3 LocalPosition, float4x4 LocalToWorld)
{
	return TransformLocalToTranslatedWorld(LocalPosition, DFPromote(LocalToWorld));
}
struct FVertexFactoryInterpolantsVSToPS
{
	float4 TangentToWorld0 : TEXCOORD10_centroid; float4	TangentToWorld2	: TEXCOORD11_centroid;
	float4	TexCoords[(1+1)/2]	: TEXCOORD0;
	nointerpolation uint PrimitiveId : PRIMITIVE_ID;
};
void SetUV(inout FVertexFactoryInterpolantsVSToPS Interpolants, int UVIndex, float2 InValue)
{
	[flatten]
	if (UVIndex % 2)
	{
		Interpolants.TexCoords[UVIndex / 2].zw = InValue;
	}
	else
	{
		Interpolants.TexCoords[UVIndex / 2].xy = InValue;
	}
}
void SetColor(inout FVertexFactoryInterpolantsVSToPS Interpolants, float4 InValue)
{
}
void SetTangents(inout FVertexFactoryInterpolantsVSToPS Interpolants, float3 InTangentToWorld0, float3 InTangentToWorld2, float InTangentToWorldSign)
{
	Interpolants.TangentToWorld0 = float4(InTangentToWorld0,0);
	Interpolants.TangentToWorld2 = float4(InTangentToWorld2,InTangentToWorldSign);
}
void SetPrimitiveId(inout FVertexFactoryInterpolantsVSToPS Interpolants, uint PrimitiveId)
{
	Interpolants.PrimitiveId = PrimitiveId;
}
struct FVertexFactoryInput
{
	float4	Position	: ATTRIBUTE0;
	 uint InstanceIdOffset : ATTRIBUTE13 ; 			uint DrawInstanceId : SV_InstanceID;
	 
	uint VertexId : SV_VertexID;
};
uint bIsGPUSkinPassThrough;
bool IsGPUSkinPassThrough()
{
		return bIsGPUSkinPassThrough;
}
struct FPositionOnlyVertexFactoryInput
{
	float4	Position	: ATTRIBUTE0;
	 uint InstanceIdOffset : ATTRIBUTE1 ; 			uint DrawInstanceId : SV_InstanceID;
	 
	uint VertexId : SV_VertexID;
};
struct FPositionAndNormalOnlyVertexFactoryInput
{
	float4	Position	: ATTRIBUTE0;
	float4	Normal		: ATTRIBUTE2;
	 uint InstanceIdOffset : ATTRIBUTE1 ; 			uint DrawInstanceId : SV_InstanceID;
	 
	uint VertexId : SV_VertexID;
};
struct FVertexFactoryInstanceInput
{
	float4 Transform1;
	float4 Transform2;
	float4 Transform3;
	float4 Origin;
};
struct FVertexFactoryIntermediatesCommon
{
	FSceneDataIntermediates SceneData;
};
struct FVertexFactoryIntermediates
{
	FVertexFactoryIntermediatesCommon Common;
	int PrimitiveLocalInstanceIndex;
	float3x3 TangentToLocal;
	float3x3 TangentToWorld;
	float TangentToWorldSign;
	float4 Color;
	bool bEvaluateWorldPositionOffset;
	float IsVisible;
	float3 PreSkinPosition;
};
FPrimitiveSceneData GetPrimitiveData(FVertexFactoryIntermediatesCommon Intermediates)
{
	return Intermediates.SceneData.Primitive;
}
FPrimitiveSceneData GetPrimitiveData(FVertexFactoryIntermediates Intermediates)
{
	return GetPrimitiveData(Intermediates.Common);
}
FInstanceSceneData GetInstanceData(FVertexFactoryIntermediatesCommon Intermediates)
{
	return Intermediates.SceneData.InstanceData;
}
FInstanceSceneData GetInstanceData(FVertexFactoryIntermediates Intermediates)
{
	return GetInstanceData(Intermediates.Common);
}
FVertexFactoryInstanceInput MakeInstanceInput(float4 Transform1, float4 Transform2, float4 Transform3, float4 Origin)
{
	FVertexFactoryInstanceInput Result;
	Result.Transform1 = Transform1;
	Result.Transform2 = Transform2;
	Result.Transform3 = Transform3;
	Result.Origin = Origin;
	return Result;
}
FVertexFactoryInstanceInput InitInstanceInput()
{
	return MakeInstanceInput(
		float4(1, 0, 0, 0),
		float4(0, 1, 0, 0),
		float4(0, 0, 1, 0),
		float4(0, 0, 0, 0)
	);
}
float3x3 CalcTangentToWorldNoScale(FVertexFactoryIntermediates Intermediates, float3x3 TangentToLocal)
{
	float3x3 LocalToWorld = DFToFloat3x3(GetInstanceData(Intermediates).LocalToWorld);
	float3 InvScale = GetInstanceData(Intermediates).InvNonUniformScale;
	LocalToWorld[0] *= InvScale.x;
	LocalToWorld[1] *= InvScale.y;
	LocalToWorld[2] *= InvScale.z;
	return mul(TangentToLocal, LocalToWorld); 
}
float3 VertexFactoryGetPreviousInstanceSpacePosition(FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates);
float3 VertexFactoryGetInstanceSpacePosition(FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates);
FMaterialVertexParameters GetMaterialVertexParameters(
	FVertexFactoryInput Input, 
	FVertexFactoryIntermediates Intermediates, 
	float3 WorldPosition, 
	float3x3 TangentToLocal,
	bool bIsPreviousFrame = false)
{
	FMaterialVertexParameters Result = MakeInitializedMaterialVertexParameters();
	Result.SceneData = Intermediates.Common.SceneData;
	Result.PrimitiveId = Intermediates.Common.SceneData.PrimitiveId;
	FPrimitiveSceneData PrimitiveData = GetPrimitiveData(Intermediates);
	FInstanceSceneData InstanceData = GetInstanceData(Intermediates);
	Result.WorldPosition = WorldPosition;
	if (bIsPreviousFrame)
	{
		Result.PositionInstanceSpace = VertexFactoryGetPreviousInstanceSpacePosition(Input, Intermediates);
	}
	else
	{
		Result.PositionInstanceSpace = VertexFactoryGetInstanceSpacePosition(Input, Intermediates);
	}
	Result.PrevFrameLocalToWorld = InstanceData.PrevLocalToWorld;
		Result.PositionPrimitiveSpace = Result.PositionInstanceSpace;
	Result.PerInstanceRandom = InstanceData.RandomID;
	Result.VertexColor = Intermediates.Color;
	Result.TangentToWorld = Intermediates.TangentToWorld;
	Result.bEvaluateWorldPositionOffset = Intermediates.bEvaluateWorldPositionOffset;
	Result.PreSkinnedPosition = Intermediates.PreSkinPosition.xyz;
	if (IsGPUSkinPassThrough())
	{
		Result.PreSkinnedNormal = LocalVFLooseParameters_GPUSkinPassThroughPreSkinnedTangentBuffer[Input.VertexId * 2 + 1].xyz;
	}
	else
	{
		Result.PreSkinnedNormal = TangentToLocal[2]; 
	}
		const uint NumFetchTexCoords = LocalVF_VertexFetch_Parameters[1];
		[unroll]
		for (uint CoordinateIndex = 0; CoordinateIndex < 1; CoordinateIndex++)
		{
			uint ClampedCoordinateIndex = min(CoordinateIndex, NumFetchTexCoords-1);
			Result.TexCoords[CoordinateIndex] = LocalVF_VertexFetch_TexCoordBuffer[NumFetchTexCoords * (LocalVF_VertexFetch_Parameters[3] + Input.VertexId) + ClampedCoordinateIndex];
		}
	Result.Particle.Color = float4(1,1,1,1);
	Result.LWCData = MakeMaterialLWCData(Result);
	return Result;
}
float4 CalcPositionInstanceSpace(FVertexFactoryIntermediatesCommon Intermediates, float4 Position)
{
	return Position;
}
float4 CalcPositionPrimitiveSpace(FVertexFactoryIntermediatesCommon Intermediates, float4 Position)
{
	return CalcPositionInstanceSpace(Intermediates, Position);
}
float3x3 CalcTangentToLocal(FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates, inout float TangentSign)
{
	float3 TangentInputX = LocalVF_VertexFetch_PackedTangentsBuffer[2 * (LocalVF_VertexFetch_Parameters[3] + Input.VertexId) + 0].xyz;
	float4 TangentInputZ = LocalVF_VertexFetch_PackedTangentsBuffer[2 * (LocalVF_VertexFetch_Parameters[3] + Input.VertexId) + 1].xyzw;
	float3 TangentX = TangentInputX;
	float4 TangentZ = TangentInputZ;
	if (!IsGPUSkinPassThrough())
	{
		TangentX =  ( TangentInputX );
		TangentZ =  ( TangentInputZ );
	}
	TangentSign = TangentZ.w;
	float3 TangentY = cross(TangentZ.xyz, TangentX) * TangentZ.w;
	float3x3 Result;
	Result[0] = cross(TangentY, TangentZ.xyz) * TangentZ.w;
	Result[1] = TangentY;
	Result[2] = TangentZ.xyz;
	return Result;
}
float3x3 CalcTangentToWorld(FVertexFactoryIntermediates Intermediates, float3x3 TangentToLocal)
{
	float3x3 TangentToWorld = CalcTangentToWorldNoScale(Intermediates, TangentToLocal);
	return TangentToWorld;
}
FVertexFactoryIntermediatesCommon GetVertexFactoryCommonIntermediates(FSceneDataIntermediates SceneData, FVertexFactoryInstanceInput InstanceInput)
{
	FVertexFactoryIntermediatesCommon Intermediates = (FVertexFactoryIntermediatesCommon)0;
	Intermediates.SceneData = SceneData;
	return Intermediates;
}
FVertexFactoryIntermediates GetVertexFactoryIntermediates(FVertexFactoryInput Input)
{
	FVertexFactoryIntermediates Intermediates = (FVertexFactoryIntermediates)0;
	Intermediates.Common =  GetVertexFactoryCommonIntermediates( GetSceneDataIntermediates( Input .InstanceIdOffset, Input .DrawInstanceId),  InitInstanceInput());
	FPrimitiveSceneData PrimitiveData = GetPrimitiveData(Intermediates);
	FInstanceSceneData InstanceData = GetInstanceData(Intermediates);
		Intermediates.bEvaluateWorldPositionOffset = (Intermediates.Common.SceneData.CullingFlags & (1u << 0u)) != 0;
	Intermediates.IsVisible = 1.0f;
	Intermediates.PrimitiveLocalInstanceIndex = Intermediates.Common.SceneData.InstanceId - PrimitiveData.InstanceSceneDataOffset;
	Intermediates.Color = LocalVF_VertexFetch_ColorComponentsBuffer[(LocalVF_VertexFetch_Parameters[3] + Input.VertexId) & LocalVF_VertexFetch_Parameters[0]] .bgra; 
	float TangentSign = 1.0;
	Intermediates.TangentToLocal = CalcTangentToLocal(Input, Intermediates, TangentSign);
	Intermediates.TangentToWorld = CalcTangentToWorld(Intermediates, Intermediates.TangentToLocal);
	Intermediates.TangentToWorldSign = TangentSign * GetInstanceData(Intermediates).DeterminantSign;
	const float InstanceViewDistSq = length2(DFFastToTranslatedWorld(PrimitiveData.ObjectWorldPosition, ResolvedView.PreViewTranslation));
	if (Intermediates.bEvaluateWorldPositionOffset)
	{
		const bool bPrimEvalWPO = (PrimitiveData.Flags & 0x8000) != 0;
		const bool bWPODisableDistance = (PrimitiveData.Flags & 0x40000) != 0;
		if (!bPrimEvalWPO || (bWPODisableDistance && InstanceViewDistSq >= PrimitiveData.InstanceWPODisableDistanceSquared))
		{
			Intermediates.bEvaluateWorldPositionOffset = false;
		}
	}
	if (IsGPUSkinPassThrough())
	{
		uint PreSkinVertexOffset = LocalVF_PreSkinBaseVertexIndex + Input.VertexId * 3;
		Intermediates.PreSkinPosition.x = LocalVF_VertexFetch_PreSkinPositionBuffer[PreSkinVertexOffset + 0];
		Intermediates.PreSkinPosition.y = LocalVF_VertexFetch_PreSkinPositionBuffer[PreSkinVertexOffset + 1];
		Intermediates.PreSkinPosition.z = LocalVF_VertexFetch_PreSkinPositionBuffer[PreSkinVertexOffset + 2];
	}
	else
	{
		Intermediates.PreSkinPosition = Input.Position.xyz;
	}
	return Intermediates;
}
float3x3 VertexFactoryGetTangentToLocal( FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates )
{
	return Intermediates.TangentToLocal;
}
float4 VertexFactoryGetWorldPosition(FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates)
{
	FDFMatrix LocalToWorld = GetInstanceData(Intermediates).LocalToWorld;
	float4 WorldPos = TransformLocalToTranslatedWorld(CalcPositionPrimitiveSpace(Intermediates.Common, Input.Position).xyz, LocalToWorld);
	return WorldPos * Intermediates.IsVisible;
}
float3 VertexFactoryGetInstanceSpacePosition(FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates)
{
	return CalcPositionInstanceSpace(Intermediates.Common, Input.Position).xyz;
}
float4 VertexFactoryGetRasterizedWorldPosition(FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates, float4 InWorldPosition)
{
	return InWorldPosition;
}
FVertexFactoryInterpolantsVSToPS VertexFactoryGetInterpolantsVSToPS(FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates, FMaterialVertexParameters VertexParameters)
{
	FVertexFactoryInterpolantsVSToPS Interpolants;
	Interpolants = (FVertexFactoryInterpolantsVSToPS)0;
	FInstanceSceneData InstanceData = GetInstanceData(Intermediates);
	float2 CustomizedUVs[1];
	GetMaterialCustomizedUVs(VertexParameters, CustomizedUVs);
	GetCustomInterpolators(VertexParameters, CustomizedUVs);
	[unroll]
	for (int CoordinateIndex = 0; CoordinateIndex < 1; CoordinateIndex++)
	{
		SetUV(Interpolants, CoordinateIndex, CustomizedUVs[CoordinateIndex]);
	}
	SetTangents(Interpolants, Intermediates.TangentToWorld[0], Intermediates.TangentToWorld[2], Intermediates.TangentToWorldSign);
	SetColor(Interpolants, Intermediates.Color);
	SetPrimitiveId(Interpolants, Intermediates.Common.SceneData.PrimitiveId);
	return Interpolants;
}
float4 VertexFactoryGetWorldPosition(FPositionOnlyVertexFactoryInput Input)
{
	FVertexFactoryIntermediatesCommon Intermediates =  GetVertexFactoryCommonIntermediates( GetSceneDataIntermediates( Input .InstanceIdOffset, Input .DrawInstanceId),  InitInstanceInput());
	FDFMatrix LocalToWorld = GetInstanceData(Intermediates).LocalToWorld;
	return TransformLocalToTranslatedWorld(CalcPositionPrimitiveSpace(Intermediates, Input.Position).xyz, LocalToWorld);
}
float4 VertexFactoryGetWorldPosition(FPositionAndNormalOnlyVertexFactoryInput Input)
{
	FVertexFactoryIntermediatesCommon Intermediates =  GetVertexFactoryCommonIntermediates( GetSceneDataIntermediates( Input .InstanceIdOffset, Input .DrawInstanceId),  InitInstanceInput());
	FDFMatrix LocalToWorld = GetInstanceData(Intermediates).LocalToWorld;
	return TransformLocalToTranslatedWorld(CalcPositionPrimitiveSpace(Intermediates, Input.Position).xyz, LocalToWorld);
}
float3 VertexFactoryGetPreviousInstanceSpacePosition(FVertexFactoryInput Input, FVertexFactoryIntermediates Intermediates)
{
	float4 PrevLocalPosition = Input.Position;
	if (IsGPUSkinPassThrough())
	{
		if (ResolvedView.FrameCounter == LocalVFLooseParameters_FrameNumber && ResolvedView.WorldIsPaused == 0)
		{
			uint Offset = Input.VertexId * 3;
			float3 PreviousPos;
			PreviousPos.x = LocalVFLooseParameters_GPUSkinPassThroughPreviousPositionBuffer[Offset + 0];
			PreviousPos.y = LocalVFLooseParameters_GPUSkinPassThroughPreviousPositionBuffer[Offset + 1];
			PreviousPos.z = LocalVFLooseParameters_GPUSkinPassThroughPreviousPositionBuffer[Offset + 2];
			PrevLocalPosition = float4(PreviousPos, 1);	
		}
	}
	else
	{
	}
	return PrevLocalPosition.xyz;
}
FSceneDataIntermediates GetSceneDataIntermediates(FVertexFactoryIntermediates Intermediates)
{
	return Intermediates.Common.SceneData;
}
struct FBasePassVSToPS
{
	FVertexFactoryInterpolantsVSToPS FactoryInterpolants;
	FSharedBasePassInterpolants BasePassInterpolants;
	  float4 Position : SV_POSITION;
};
void Main(
	FVertexFactoryInput Input,
	out FBasePassVSToPS Output
	)
{
	const uint EyeIndex = 0;
	ResolvedView =  (ResolveView());
	FVertexFactoryIntermediates VFIntermediates = GetVertexFactoryIntermediates(Input);
	float4 WorldPositionExcludingWPO = VertexFactoryGetWorldPosition(Input, VFIntermediates);
	float4 WorldPosition = WorldPositionExcludingWPO;
	float4 ClipSpacePosition;
	float3x3 TangentToLocal = VertexFactoryGetTangentToLocal(Input, VFIntermediates);	
	FMaterialVertexParameters VertexParameters = GetMaterialVertexParameters(Input, VFIntermediates, WorldPosition.xyz, TangentToLocal);
	{
		WorldPosition.xyz += GetMaterialWorldPositionOffset(VertexParameters);
	}
	{
		float4 RasterizedWorldPosition = VertexFactoryGetRasterizedWorldPosition(Input, VFIntermediates, WorldPosition);
		ClipSpacePosition = mul(RasterizedWorldPosition, ResolvedView.TranslatedWorldToClip);
		Output.Position =  MakePrecise( ClipSpacePosition );
	}
		Output.BasePassInterpolants.PixelPositionExcludingWPO = WorldPositionExcludingWPO.xyz;
	Output.FactoryInterpolants = VertexFactoryGetInterpolantsVSToPS(Input, VFIntermediates, VertexParameters);
}
