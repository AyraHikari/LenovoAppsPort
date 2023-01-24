.class public Landroidx/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private final mData:[B

.field private mLen:I

.field private mN:Landroidx/renderscript/FieldPackerThunker;

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    .line 35
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    .line 36
    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    .line 37
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroidx/renderscript/FieldPackerThunker;

    invoke-direct {v0, p1}, Landroidx/renderscript/FieldPackerThunker;-><init>(I)V

    iput-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    :cond_0
    return-void
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1

    .line 532
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addBoolean(Z)V

    return-void

    :cond_0
    int-to-byte p1, p1

    .line 536
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addF32(F)V
    .locals 1

    .line 194
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addF32(F)V

    return-void

    .line 198
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float2;)V
    .locals 1

    .line 222
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addF32(Landroidx/renderscript/Float2;)V

    return-void

    .line 226
    :cond_0
    iget v0, p1, Landroidx/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 227
    iget p1, p1, Landroidx/renderscript/Float2;->y:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float3;)V
    .locals 1

    .line 230
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addF32(Landroidx/renderscript/Float3;)V

    return-void

    .line 234
    :cond_0
    iget v0, p1, Landroidx/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 235
    iget v0, p1, Landroidx/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 236
    iget p1, p1, Landroidx/renderscript/Float3;->z:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF32(Landroidx/renderscript/Float4;)V
    .locals 1

    .line 239
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addF32(Landroidx/renderscript/Float4;)V

    return-void

    .line 243
    :cond_0
    iget v0, p1, Landroidx/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 244
    iget v0, p1, Landroidx/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 245
    iget v0, p1, Landroidx/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 246
    iget p1, p1, Landroidx/renderscript/Float4;->w:F

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    return-void
.end method

.method public addF64(D)V
    .locals 1

    .line 202
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/FieldPackerThunker;->addF64(D)V

    return-void

    .line 206
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double2;)V
    .locals 2

    .line 250
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addF64(Landroidx/renderscript/Double2;)V

    return-void

    .line 254
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 255
    iget-wide v0, p1, Landroidx/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double3;)V
    .locals 2

    .line 258
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addF64(Landroidx/renderscript/Double3;)V

    return-void

    .line 262
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 263
    iget-wide v0, p1, Landroidx/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 264
    iget-wide v0, p1, Landroidx/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addF64(Landroidx/renderscript/Double4;)V
    .locals 2

    .line 267
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addF64(Landroidx/renderscript/Double4;)V

    return-void

    .line 271
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 272
    iget-wide v0, p1, Landroidx/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 273
    iget-wide v0, p1, Landroidx/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    .line 274
    iget-wide v0, p1, Landroidx/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addF64(D)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short2;)V
    .locals 1

    .line 334
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI16(Landroidx/renderscript/Short2;)V

    return-void

    .line 338
    :cond_0
    iget-short v0, p1, Landroidx/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 339
    iget-short p1, p1, Landroidx/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short3;)V
    .locals 1

    .line 342
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI16(Landroidx/renderscript/Short3;)V

    return-void

    .line 346
    :cond_0
    iget-short v0, p1, Landroidx/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 347
    iget-short v0, p1, Landroidx/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 348
    iget-short p1, p1, Landroidx/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(Landroidx/renderscript/Short4;)V
    .locals 1

    .line 351
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI16(Landroidx/renderscript/Short4;)V

    return-void

    .line 355
    :cond_0
    iget-short v0, p1, Landroidx/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 356
    iget-short v0, p1, Landroidx/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 357
    iget-short v0, p1, Landroidx/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    .line 358
    iget-short p1, p1, Landroidx/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI16(S)V

    return-void
.end method

.method public addI16(S)V
    .locals 4

    .line 95
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI16(S)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 99
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 100
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 101
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public addI32(I)V
    .locals 4

    .line 105
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI32(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 109
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 110
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 111
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 112
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 113
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int2;)V
    .locals 1

    .line 390
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI32(Landroidx/renderscript/Int2;)V

    return-void

    .line 394
    :cond_0
    iget v0, p1, Landroidx/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 395
    iget p1, p1, Landroidx/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int3;)V
    .locals 1

    .line 398
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI32(Landroidx/renderscript/Int3;)V

    return-void

    .line 402
    :cond_0
    iget v0, p1, Landroidx/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 403
    iget v0, p1, Landroidx/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 404
    iget p1, p1, Landroidx/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI32(Landroidx/renderscript/Int4;)V
    .locals 1

    .line 407
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI32(Landroidx/renderscript/Int4;)V

    return-void

    .line 411
    :cond_0
    iget v0, p1, Landroidx/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 412
    iget v0, p1, Landroidx/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 413
    iget v0, p1, Landroidx/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    .line 414
    iget p1, p1, Landroidx/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    return-void
.end method

.method public addI64(J)V
    .locals 8

    .line 117
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/FieldPackerThunker;->addI64(J)V

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 121
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 122
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 123
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-long v6, p1, v0

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x1

    .line 124
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x10

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 125
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x18

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 126
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x20

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 127
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x28

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 128
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x30

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 129
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 446
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI64(Landroidx/renderscript/Long2;)V

    return-void

    .line 450
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 451
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 454
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI64(Landroidx/renderscript/Long3;)V

    return-void

    .line 458
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 459
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 460
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI64(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 463
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI64(Landroidx/renderscript/Long4;)V

    return-void

    .line 467
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 468
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 469
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    .line 470
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public addI8(B)V
    .locals 3

    .line 87
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI8(B)V

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte2;)V
    .locals 1

    .line 278
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI8(Landroidx/renderscript/Byte2;)V

    return-void

    .line 282
    :cond_0
    iget-byte v0, p1, Landroidx/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 283
    iget-byte p1, p1, Landroidx/renderscript/Byte2;->y:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte3;)V
    .locals 1

    .line 286
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI8(Landroidx/renderscript/Byte3;)V

    return-void

    .line 290
    :cond_0
    iget-byte v0, p1, Landroidx/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 291
    iget-byte v0, p1, Landroidx/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 292
    iget-byte p1, p1, Landroidx/renderscript/Byte3;->z:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addI8(Landroidx/renderscript/Byte4;)V
    .locals 1

    .line 295
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addI8(Landroidx/renderscript/Byte4;)V

    return-void

    .line 299
    :cond_0
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 300
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 301
    iget-byte v0, p1, Landroidx/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    .line 302
    iget-byte p1, p1, Landroidx/renderscript/Byte4;->w:B

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI8(B)V

    return-void
.end method

.method public addMatrix(Landroidx/renderscript/Matrix2f;)V
    .locals 2

    .line 522
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addMatrix(Landroidx/renderscript/Matrix2f;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 526
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    .line 527
    :cond_1
    iget-object v1, p1, Landroidx/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addMatrix(Landroidx/renderscript/Matrix3f;)V
    .locals 2

    .line 512
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addMatrix(Landroidx/renderscript/Matrix3f;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 516
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    .line 517
    :cond_1
    iget-object v1, p1, Landroidx/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addMatrix(Landroidx/renderscript/Matrix4f;)V
    .locals 2

    .line 502
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addMatrix(Landroidx/renderscript/Matrix4f;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 506
    :goto_0
    iget-object v1, p1, Landroidx/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    .line 507
    :cond_1
    iget-object v1, p1, Landroidx/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addObj(Landroidx/renderscript/BaseObj;)V
    .locals 1

    .line 210
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addObj(Landroidx/renderscript/BaseObj;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, v0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 217
    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addI32(I)V

    :goto_0
    return-void
.end method

.method public addU16(I)V
    .locals 4

    .line 144
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU16(I)V

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    const/4 v0, 0x2

    .line 152
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 153
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 154
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldPacker.addU16( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rs"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saving value out of range for type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU16(Landroidx/renderscript/Int2;)V
    .locals 1

    .line 362
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU16(Landroidx/renderscript/Int2;)V

    return-void

    .line 366
    :cond_0
    iget v0, p1, Landroidx/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 367
    iget p1, p1, Landroidx/renderscript/Int2;->y:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int3;)V
    .locals 1

    .line 370
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU16(Landroidx/renderscript/Int3;)V

    return-void

    .line 374
    :cond_0
    iget v0, p1, Landroidx/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 375
    iget v0, p1, Landroidx/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 376
    iget p1, p1, Landroidx/renderscript/Int3;->z:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU16(Landroidx/renderscript/Int4;)V
    .locals 1

    .line 379
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU16(Landroidx/renderscript/Int4;)V

    return-void

    .line 383
    :cond_0
    iget v0, p1, Landroidx/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 384
    iget v0, p1, Landroidx/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 385
    iget v0, p1, Landroidx/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    .line 386
    iget p1, p1, Landroidx/renderscript/Int4;->w:I

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU16(I)V

    return-void
.end method

.method public addU32(J)V
    .locals 7

    .line 158
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/FieldPackerThunker;->addU32(J)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x4

    .line 166
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 167
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 168
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v5, 0x8

    shr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 169
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 170
    iput v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v1, 0x18

    shr-long/2addr p1, v1

    and-long/2addr p1, v3

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldPacker.addU32( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Saving value out of range for type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU32(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 418
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU32(Landroidx/renderscript/Long2;)V

    return-void

    .line 422
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 423
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 426
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU32(Landroidx/renderscript/Long3;)V

    return-void

    .line 430
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 431
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 432
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU32(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 435
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU32(Landroidx/renderscript/Long4;)V

    return-void

    .line 439
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 440
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 441
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    .line 442
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU32(J)V

    return-void
.end method

.method public addU64(J)V
    .locals 8

    .line 174
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/FieldPackerThunker;->addU64(J)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const/16 v0, 0x8

    .line 182
    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->align(I)V

    .line 183
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const-wide/16 v4, 0xff

    and-long v6, p1, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v3, 0x1

    .line 184
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    shr-long v6, p1, v0

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    add-int/lit8 v0, v2, 0x1

    .line 185
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x10

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 186
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x18

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 187
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x20

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 188
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x28

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    .line 189
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v3, 0x30

    shr-long v6, p1, v3

    and-long/2addr v6, v4

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v0, 0x1

    .line 190
    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v4

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldPacker.addU64( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rs"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Saving value out of range for type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addU64(Landroidx/renderscript/Long2;)V
    .locals 2

    .line 474
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU64(Landroidx/renderscript/Long2;)V

    return-void

    .line 478
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 479
    iget-wide v0, p1, Landroidx/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long3;)V
    .locals 2

    .line 482
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU64(Landroidx/renderscript/Long3;)V

    return-void

    .line 486
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 487
    iget-wide v0, p1, Landroidx/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 488
    iget-wide v0, p1, Landroidx/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU64(Landroidx/renderscript/Long4;)V
    .locals 2

    .line 491
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU64(Landroidx/renderscript/Long4;)V

    return-void

    .line 495
    :cond_0
    iget-wide v0, p1, Landroidx/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 496
    iget-wide v0, p1, Landroidx/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 497
    iget-wide v0, p1, Landroidx/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    .line 498
    iget-wide v0, p1, Landroidx/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/FieldPacker;->addU64(J)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short2;)V
    .locals 1

    .line 306
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU8(Landroidx/renderscript/Short2;)V

    return-void

    .line 310
    :cond_0
    iget-short v0, p1, Landroidx/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 311
    iget-short p1, p1, Landroidx/renderscript/Short2;->y:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short3;)V
    .locals 1

    .line 314
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU8(Landroidx/renderscript/Short3;)V

    return-void

    .line 318
    :cond_0
    iget-short v0, p1, Landroidx/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 319
    iget-short v0, p1, Landroidx/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 320
    iget-short p1, p1, Landroidx/renderscript/Short3;->z:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(Landroidx/renderscript/Short4;)V
    .locals 1

    .line 323
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU8(Landroidx/renderscript/Short4;)V

    return-void

    .line 327
    :cond_0
    iget-short v0, p1, Landroidx/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 328
    iget-short v0, p1, Landroidx/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 329
    iget-short v0, p1, Landroidx/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    .line 330
    iget-short p1, p1, Landroidx/renderscript/Short4;->w:S

    invoke-virtual {p0, p1}, Landroidx/renderscript/FieldPacker;->addU8(S)V

    return-void
.end method

.method public addU8(S)V
    .locals 3

    .line 133
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->addU8(S)V

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 140
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saving value out of range for type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public align(I)V
    .locals 3

    .line 43
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->align(I)V

    return-void

    :cond_0
    if-lez p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    and-int v1, p1, v0

    if-nez v1, :cond_2

    .line 51
    :goto_0
    iget p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    and-int v1, p1, v0

    if-nez v1, :cond_1

    return-void

    .line 52
    :cond_1
    iget-object v1, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, v1, p1

    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getData()[B
    .locals 1

    .line 540
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0}, Landroidx/renderscript/FieldPackerThunker;->getData()[B

    move-result-object v0

    return-object v0

    .line 543
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mData:[B

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .line 547
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0}, Landroidx/renderscript/FieldPackerThunker;->getPos()I

    move-result v0

    return v0

    .line 550
    :cond_0
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 57
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0}, Landroidx/renderscript/FieldPackerThunker;->reset()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 61
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return-void
.end method

.method public reset(I)V
    .locals 3

    .line 64
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->reset(I)V

    return-void

    :cond_0
    if-ltz p1, :cond_1

    .line 68
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    if-ge p1, v0, :cond_1

    .line 71
    iput p1, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return-void

    .line 69
    :cond_1
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "out of range argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(I)V
    .locals 3

    .line 75
    invoke-static {}, Landroidx/renderscript/RenderScript;->shouldThunk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroidx/renderscript/FieldPacker;->mN:Landroidx/renderscript/FieldPackerThunker;

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPackerThunker;->skip(I)V

    return-void

    .line 79
    :cond_0
    iget v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    .line 80
    iget v1, p0, Landroidx/renderscript/FieldPacker;->mLen:I

    if-gt v0, v1, :cond_1

    .line 83
    iput v0, p0, Landroidx/renderscript/FieldPacker;->mPos:I

    return-void

    .line 81
    :cond_1
    new-instance v0, Landroidx/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "out of range argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
