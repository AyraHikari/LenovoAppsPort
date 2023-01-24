.class public Landroidx/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroidx/renderscript/Element;

.field mRS:Landroidx/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 200
    iput v0, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    .line 216
    invoke-virtual {p2}, Landroidx/renderscript/Element;->checkValid()V

    .line 217
    iput-object p1, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    .line 218
    iput-object p2, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    return-void
.end method


# virtual methods
.method public create()Landroidx/renderscript/Type;
    .locals 9

    .line 289
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 290
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    if-lt v0, v1, :cond_1

    .line 293
    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    if-lez v0, :cond_4

    .line 298
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_3

    goto :goto_1

    .line 299
    :cond_3
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_4
    :goto_1
    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_6

    .line 303
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    if-lt v0, v1, :cond_5

    goto :goto_2

    .line 304
    :cond_5
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_6
    :goto_2
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    if-eqz v0, :cond_8

    .line 309
    iget v0, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    if-nez v0, :cond_7

    goto :goto_3

    .line 310
    :cond_7
    new-instance v0, Landroidx/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_8
    :goto_3
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_9

    .line 316
    iget-object v0, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    move-object v1, v0

    check-cast v1, Landroidx/renderscript/RenderScriptThunker;

    .line 317
    iget-object v2, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    iget v3, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    iget v4, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    iget v5, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    .line 318
    iget-boolean v6, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v7, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    iget v8, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    .line 317
    invoke-static/range {v1 .. v8}, Landroidx/renderscript/TypeThunker;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;IIIZZI)Landroidx/renderscript/Type;

    move-result-object v0

    goto :goto_4

    .line 320
    :cond_9
    iget-object v1, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    iget-object v0, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->getID(Landroidx/renderscript/RenderScript;)I

    move-result v2

    .line 321
    iget v3, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    iget v4, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    iget v5, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v6, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v7, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    iget v8, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    .line 320
    invoke-virtual/range {v1 .. v8}, Landroidx/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v0

    .line 322
    new-instance v1, Landroidx/renderscript/Type;

    iget-object v2, p0, Landroidx/renderscript/Type$Builder;->mRS:Landroidx/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroidx/renderscript/Type;-><init>(ILandroidx/renderscript/RenderScript;)V

    move-object v0, v1

    .line 324
    :goto_4
    iget-object v1, p0, Landroidx/renderscript/Type$Builder;->mElement:Landroidx/renderscript/Element;

    iput-object v1, v0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 325
    iget v1, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    iput v1, v0, Landroidx/renderscript/Type;->mDimX:I

    .line 326
    iget v1, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    iput v1, v0, Landroidx/renderscript/Type;->mDimY:I

    .line 327
    iget v1, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    iput v1, v0, Landroidx/renderscript/Type;->mDimZ:I

    .line 328
    iget-boolean v1, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v1, v0, Landroidx/renderscript/Type;->mDimMipmaps:Z

    .line 329
    iget-boolean v1, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v1, v0, Landroidx/renderscript/Type;->mDimFaces:Z

    .line 330
    iget v1, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    iput v1, v0, Landroidx/renderscript/Type;->mDimYuv:I

    .line 332
    invoke-virtual {v0}, Landroidx/renderscript/Type;->calcElementCount()V

    return-object v0
.end method

.method public setFaces(Z)Landroidx/renderscript/Type$Builder;
    .locals 0

    .line 257
    iput-boolean p1, p0, Landroidx/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroidx/renderscript/Type$Builder;
    .locals 0

    .line 252
    iput-boolean p1, p0, Landroidx/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroidx/renderscript/Type$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 231
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimX:I

    return-object p0

    .line 229
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setY(I)Landroidx/renderscript/Type$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 239
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimY:I

    return-object p0

    .line 237
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setYuvFormat(I)Landroidx/renderscript/Type$Builder;
    .locals 1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const v0, 0x32315659

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Only NV21 and YV12 are supported.."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mYuv:I

    return-object p0
.end method

.method public setZ(I)Landroidx/renderscript/Type$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 247
    iput p1, p0, Landroidx/renderscript/Type$Builder;->mDimZ:I

    return-object p0

    .line 245
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
