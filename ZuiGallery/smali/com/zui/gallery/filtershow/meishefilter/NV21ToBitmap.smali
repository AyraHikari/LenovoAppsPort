.class public Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;
.super Ljava/lang/Object;
.source "NV21ToBitmap.java"


# instance fields
.field private in:Landroid/renderscript/Allocation;

.field private out:Landroid/renderscript/Allocation;

.field private rgbaType:Landroid/renderscript/Type$Builder;

.field private rs:Landroid/renderscript/RenderScript;

.field private yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

.field private yuvType:Landroid/renderscript/Type$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    .line 27
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    return-void
.end method


# virtual methods
.method public nv21ToBitmap(Ljava/nio/ByteBuffer;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    .line 38
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 39
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->yuvType:Landroid/renderscript/Type$Builder;

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Landroid/renderscript/Type$Builder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {p1, v0}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->yuvType:Landroid/renderscript/Type$Builder;

    .line 41
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->in:Landroid/renderscript/Allocation;

    .line 43
    new-instance p1, Landroid/renderscript/Type$Builder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {p1, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->rgbaType:Landroid/renderscript/Type$Builder;

    .line 44
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->rs:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->out:Landroid/renderscript/Allocation;

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->in:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 49
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->in:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->setInput(Landroid/renderscript/Allocation;)V

    .line 50
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->yuvToRgbIntrinsic:Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->out:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->forEach(Landroid/renderscript/Allocation;)V

    .line 52
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;->out:Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p1
.end method
