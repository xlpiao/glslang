Texture2D ShaderTexture : register(t3);
SamplerState ShaderSampler: register(s5);

cbuffer LightBuffer : register(b3)
{
	float4 ambientColor;
	float4 diffuseColor;
    float3 lightDirection;
	float padding;
};

cbuffer LightBuffer1 : register(b1)
{
	float4 ambientColor1;
	float4 diffuseColor1;
    float3 lightDirection1;
	float padding1;
};

SamplerState LinearSampler {
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Clamp;
    AddressV = Clamp;
};

SamplerState LinearSamplerWrap {
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = MIRROR;
    AddressV = WRAP;
    Minlod   = 0;
    Maxlod  = 10;
    Miplodbias = 0.2;
};

struct PixelInputType
{
    float4 position1 : POSITION1;
    float4 position : POSITION;
    float2 tex2 : TEXCOORD2;
    float2 tex : TEXCOORD;
	float3 normal : NORMAL;
	float3 normal1 : NORMAL1;
};

struct VS_OUTPUT
{
    float4 PositionOut : SV_POSITION;
    float4 ColorOut : COLOR;
};

struct VS_INPUT
{
    float3 PositionIn : POSITION3;
    float4 ColorIn : COLOR3;
};


VS_OUTPUT main(VS_INPUT VertexIn)
{
    VS_OUTPUT VertexOut;
     VertexOut.PositionOut.x = VertexIn.PositionIn.x;
     VertexOut.PositionOut.y = VertexIn.PositionIn.y;
     VertexOut.PositionOut.z = VertexIn.PositionIn.z;
     VertexOut.PositionOut.w = 1.0f;

    VertexOut.ColorOut = VertexIn.ColorIn;

    return VertexOut;
}

