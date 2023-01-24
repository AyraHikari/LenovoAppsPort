.class public Lcom/zui/gallery/filtershow/filters/ImageFilterFx;
.super Lcom/zui/gallery/filtershow/filters/ImageFilter;
.source "ImageFilterFx.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageFilterFx"

.field private static mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;


# instance fields
.field private mByteData:[B

.field private mContext:Landroid/content/Context;

.field private mFxBitmap:Landroid/graphics/Bitmap;

.field private mFxBitmapId:I

.field private mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

.field private mParameters:Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 45
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mFxBitmapId:I

    .line 51
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getFxBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .line 151
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/16 v1, 0xb

    .line 153
    invoke-virtual {v0, v1}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current thread is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thread"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/meicam/sdk/NvsVideoFrameInfo;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsVideoFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameWidth:I

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameHeight:I

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/meicam/sdk/NvsVideoFrameInfo;->pixelFormat:I

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 164
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 166
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mByteData:[B

    .line 168
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getFilterItem()Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemData is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangcanfx"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-object p1

    .line 171
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getNvsEffect()Lcom/meicam/effect/sdk/NvsEffect;

    move-result-object v4

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mByteData is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mByteData:[B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " && nvsEffect is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mByteData:[B

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getIsCartoon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getStrokenOnly()Z

    move-result v1

    const-string v3, "Stroke Only"

    invoke-virtual {v4, v3, v1}, Lcom/meicam/effect/sdk/NvsEffect;->setBooleanVal(Ljava/lang/String;Z)V

    .line 181
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getGrayScale()Z

    move-result v0

    const-string v1, "Grayscale"

    invoke-virtual {v4, v1, v0}, Lcom/meicam/effect/sdk/NvsEffect;->setBooleanVal(Ljava/lang/String;Z)V

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderCore is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "meicam"

    const-string v1, "ImageFilterFx.renderEffect is called "

    .line 184
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v3, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mByteData:[B

    iget-object v6, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;[BLcom/meicam/sdk/NvsVideoFrameInfo;IIZJI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteBuffer is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->getParameters()Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mResources:Landroid/content/res/Resources;

    if-nez p2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->getFxBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public freeResources()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mFxBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameters()Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    return-object v0
.end method

.method protected native nativeApplyFilter(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IIII)V
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public useRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 66
    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 67
    iput-object p1, p0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->mParameters:Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    return-void
.end method
