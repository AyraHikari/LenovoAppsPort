.class public Landroidx/renderscript/FieldPackerThunker;
.super Ljava/lang/Object;
.source "FieldPackerThunker.java"


# instance fields
.field private mN:Landroid/renderscript/FieldPacker;

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-direct {v0, p1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1

    .line 266
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 267
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addF32(F)V
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 103
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float2;)V
    .locals 3

    .line 121
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float2;

    iget v2, p1, Landroidx/renderscript/Float2;->x:F

    iget p1, p1, Landroidx/renderscript/Float2;->y:F

    invoke-direct {v1, v2, p1}, Landroid/renderscript/Float2;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 122
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float3;)V
    .locals 4

    .line 125
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float3;

    iget v2, p1, Landroidx/renderscript/Float3;->x:F

    iget v3, p1, Landroidx/renderscript/Float3;->y:F

    iget p1, p1, Landroidx/renderscript/Float3;->z:F

    invoke-direct {v1, v2, v3, p1}, Landroid/renderscript/Float3;-><init>(FFF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 126
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0xc

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float4;)V
    .locals 5

    .line 129
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Float4;

    iget v2, p1, Landroidx/renderscript/Float4;->x:F

    iget v3, p1, Landroidx/renderscript/Float4;->y:F

    iget v4, p1, Landroidx/renderscript/Float4;->z:F

    iget p1, p1, Landroidx/renderscript/Float4;->w:F

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/renderscript/Float4;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 130
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addF64(D)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 108
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double2;)V
    .locals 6

    .line 134
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Double2;

    iget-wide v2, p1, Landroidx/renderscript/Double2;->x:D

    iget-wide v4, p1, Landroidx/renderscript/Double2;->y:D

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Double2;-><init>(DD)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double2;)V

    .line 135
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double3;)V
    .locals 9

    .line 138
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v8, Landroid/renderscript/Double3;

    iget-wide v2, p1, Landroidx/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroidx/renderscript/Double3;->y:D

    iget-wide v6, p1, Landroidx/renderscript/Double3;->z:D

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Double3;-><init>(DDD)V

    invoke-virtual {v0, v8}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double3;)V

    .line 139
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x18

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double4;)V
    .locals 11

    .line 142
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v10, Landroid/renderscript/Double4;

    iget-wide v2, p1, Landroidx/renderscript/Double4;->x:D

    iget-wide v4, p1, Landroidx/renderscript/Double4;->y:D

    iget-wide v6, p1, Landroidx/renderscript/Double4;->z:D

    iget-wide v8, p1, Landroidx/renderscript/Double4;->w:D

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/renderscript/Double4;-><init>(DDDD)V

    invoke-virtual {v0, v10}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double4;)V

    .line 143
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short2;)V
    .locals 3

    .line 173
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short2;

    iget-short v2, p1, Landroidx/renderscript/Short2;->x:S

    iget-short p1, p1, Landroidx/renderscript/Short2;->y:S

    invoke-direct {v1, v2, p1}, Landroid/renderscript/Short2;-><init>(SS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short2;)V

    .line 174
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short3;)V
    .locals 4

    .line 177
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short3;

    iget-short v2, p1, Landroidx/renderscript/Short3;->x:S

    iget-short v3, p1, Landroidx/renderscript/Short3;->y:S

    iget-short p1, p1, Landroidx/renderscript/Short3;->z:S

    invoke-direct {v1, v2, v3, p1}, Landroid/renderscript/Short3;-><init>(SSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short3;)V

    .line 178
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short4;)V
    .locals 5

    .line 181
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short4;

    iget-short v2, p1, Landroidx/renderscript/Short4;->x:S

    iget-short v3, p1, Landroidx/renderscript/Short4;->y:S

    iget-short v4, p1, Landroidx/renderscript/Short4;->z:S

    iget-short p1, p1, Landroidx/renderscript/Short4;->w:S

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/renderscript/Short4;-><init>(SSSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short4;)V

    .line 182
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI16(S)V
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 68
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI32(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 73
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int2;)V
    .locals 3

    .line 199
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int2;

    iget v2, p1, Landroidx/renderscript/Int2;->x:I

    iget p1, p1, Landroidx/renderscript/Int2;->y:I

    invoke-direct {v1, v2, p1}, Landroid/renderscript/Int2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int2;)V

    .line 200
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int3;)V
    .locals 4

    .line 203
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int3;

    iget v2, p1, Landroidx/renderscript/Int3;->x:I

    iget v3, p1, Landroidx/renderscript/Int3;->y:I

    iget p1, p1, Landroidx/renderscript/Int3;->z:I

    invoke-direct {v1, v2, v3, p1}, Landroid/renderscript/Int3;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int3;)V

    .line 204
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0xc

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int4;)V
    .locals 5

    .line 207
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int4;

    iget v2, p1, Landroidx/renderscript/Int4;->x:I

    iget v3, p1, Landroidx/renderscript/Int4;->y:I

    iget v4, p1, Landroidx/renderscript/Int4;->z:I

    iget p1, p1, Landroidx/renderscript/Int4;->w:I

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/renderscript/Int4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int4;)V

    .line 208
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI64(J)V
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 78
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long2;)V
    .locals 6

    .line 225
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroidx/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long2;)V

    .line 226
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long3;)V
    .locals 9

    .line 229
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v8, Landroid/renderscript/Long3;

    iget-wide v2, p1, Landroidx/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long3;->y:J

    iget-wide v6, p1, Landroidx/renderscript/Long3;->z:J

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v0, v8}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long3;)V

    .line 230
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x18

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long4;)V
    .locals 11

    .line 233
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v10, Landroid/renderscript/Long4;

    iget-wide v2, p1, Landroidx/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long4;->y:J

    iget-wide v6, p1, Landroidx/renderscript/Long4;->z:J

    iget-wide v8, p1, Landroidx/renderscript/Long4;->w:J

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v0, v10}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long4;)V

    .line 234
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI8(B)V
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 63
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte2;)V
    .locals 3

    .line 147
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte2;

    iget-byte v2, p1, Landroidx/renderscript/Byte2;->x:B

    iget-byte p1, p1, Landroidx/renderscript/Byte2;->y:B

    invoke-direct {v1, v2, p1}, Landroid/renderscript/Byte2;-><init>(BB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte2;)V

    .line 148
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte3;)V
    .locals 4

    .line 151
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte3;

    iget-byte v2, p1, Landroidx/renderscript/Byte3;->x:B

    iget-byte v3, p1, Landroidx/renderscript/Byte3;->y:B

    iget-byte p1, p1, Landroidx/renderscript/Byte3;->z:B

    invoke-direct {v1, v2, v3, p1}, Landroid/renderscript/Byte3;-><init>(BBB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte3;)V

    .line 152
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte4;)V
    .locals 5

    .line 155
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Byte4;

    iget-byte v2, p1, Landroidx/renderscript/Byte4;->x:B

    iget-byte v3, p1, Landroidx/renderscript/Byte4;->y:B

    iget-byte v4, p1, Landroidx/renderscript/Byte4;->z:B

    iget-byte p1, p1, Landroidx/renderscript/Byte4;->w:B

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/renderscript/Byte4;-><init>(BBBB)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte4;)V

    .line 156
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix2f;)V
    .locals 2

    .line 261
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Matrix2f;

    invoke-virtual {p1}, Landroidx/renderscript/Matrix2f;->getArray()[F

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/renderscript/Matrix2f;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix2f;)V

    .line 262
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix3f;)V
    .locals 2

    .line 256
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Matrix3f;

    invoke-virtual {p1}, Landroidx/renderscript/Matrix3f;->getArray()[F

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/renderscript/Matrix3f;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix3f;)V

    .line 257
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x24

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix4f;)V
    .locals 2

    .line 251
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-virtual {p1}, Landroidx/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/renderscript/Matrix4f;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 252
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addObj(Landroidx/renderscript/BaseObj;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {p1}, Landroidx/renderscript/BaseObj;->getNObj()Landroid/renderscript/BaseObj;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 117
    :goto_0
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU16(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 88
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int2;)V
    .locals 3

    .line 186
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int2;

    iget v2, p1, Landroidx/renderscript/Int2;->x:I

    iget p1, p1, Landroidx/renderscript/Int2;->y:I

    invoke-direct {v1, v2, p1}, Landroid/renderscript/Int2;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int2;)V

    .line 187
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int3;)V
    .locals 4

    .line 190
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int3;

    iget v2, p1, Landroidx/renderscript/Int3;->x:I

    iget v3, p1, Landroidx/renderscript/Int3;->y:I

    iget p1, p1, Landroidx/renderscript/Int3;->z:I

    invoke-direct {v1, v2, v3, p1}, Landroid/renderscript/Int3;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int3;)V

    .line 191
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int4;)V
    .locals 5

    .line 194
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Int4;

    iget v2, p1, Landroidx/renderscript/Int4;->x:I

    iget v3, p1, Landroidx/renderscript/Int4;->y:I

    iget v4, p1, Landroidx/renderscript/Int4;->z:I

    iget p1, p1, Landroidx/renderscript/Int4;->w:I

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/renderscript/Int4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU16(Landroid/renderscript/Int4;)V

    .line 195
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU32(J)V
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 93
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long2;)V
    .locals 6

    .line 212
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroidx/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long2;)V

    .line 213
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long3;)V
    .locals 9

    .line 216
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v8, Landroid/renderscript/Long3;

    iget-wide v2, p1, Landroidx/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long3;->y:J

    iget-wide v6, p1, Landroidx/renderscript/Long3;->z:J

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v0, v8}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long3;)V

    .line 217
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0xc

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long4;)V
    .locals 11

    .line 220
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v10, Landroid/renderscript/Long4;

    iget-wide v2, p1, Landroidx/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long4;->y:J

    iget-wide v6, p1, Landroidx/renderscript/Long4;->z:J

    iget-wide v8, p1, Landroidx/renderscript/Long4;->w:J

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v0, v10}, Landroid/renderscript/FieldPacker;->addU32(Landroid/renderscript/Long4;)V

    .line 221
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU64(J)V
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 98
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long2;)V
    .locals 6

    .line 238
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Long2;

    iget-wide v2, p1, Landroidx/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long2;->y:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/renderscript/Long2;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long2;)V

    .line 239
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long3;)V
    .locals 9

    .line 242
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v8, Landroid/renderscript/Long3;

    iget-wide v2, p1, Landroidx/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long3;->y:J

    iget-wide v6, p1, Landroidx/renderscript/Long3;->z:J

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Long3;-><init>(JJJ)V

    invoke-virtual {v0, v8}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long3;)V

    .line 243
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x18

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long4;)V
    .locals 11

    .line 246
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v10, Landroid/renderscript/Long4;

    iget-wide v2, p1, Landroidx/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroidx/renderscript/Long4;->y:J

    iget-wide v6, p1, Landroidx/renderscript/Long4;->z:J

    iget-wide v8, p1, Landroidx/renderscript/Long4;->w:J

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/renderscript/Long4;-><init>(JJJJ)V

    invoke-virtual {v0, v10}, Landroid/renderscript/FieldPacker;->addU64(Landroid/renderscript/Long4;)V

    .line 247
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short2;)V
    .locals 3

    .line 160
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short2;

    iget-short v2, p1, Landroidx/renderscript/Short2;->x:S

    iget-short p1, p1, Landroidx/renderscript/Short2;->y:S

    invoke-direct {v1, v2, p1}, Landroid/renderscript/Short2;-><init>(SS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short2;)V

    .line 161
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short3;)V
    .locals 4

    .line 164
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short3;

    iget-short v2, p1, Landroidx/renderscript/Short3;->x:S

    iget-short v3, p1, Landroidx/renderscript/Short3;->y:S

    iget-short p1, p1, Landroidx/renderscript/Short3;->z:S

    invoke-direct {v1, v2, v3, p1}, Landroid/renderscript/Short3;-><init>(SSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short3;)V

    .line 165
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short4;)V
    .locals 5

    .line 168
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    new-instance v1, Landroid/renderscript/Short4;

    iget-short v2, p1, Landroidx/renderscript/Short4;->x:S

    iget-short v3, p1, Landroidx/renderscript/Short4;->y:S

    iget-short v4, p1, Landroidx/renderscript/Short4;->z:S

    iget-short p1, p1, Landroidx/renderscript/Short4;->w:S

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/renderscript/Short4;-><init>(SSSS)V

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addU8(Landroid/renderscript/Short4;)V

    .line 169
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public addU8(S)V
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 83
    iget p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method align(I)V
    .locals 2

    .line 40
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 41
    :goto_0
    iget v0, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    iput v0, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    goto :goto_0
.end method

.method public final getData()[B
    .locals 1

    .line 271
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .line 276
    iget v0, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return v0
.end method

.method reset()V
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->reset()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method reset(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 53
    iput p1, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method

.method public skip(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/renderscript/FieldPackerThunker;->mN:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->skip(I)V

    .line 58
    iget v0, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/renderscript/FieldPackerThunker;->mPos:I

    return-void
.end method
