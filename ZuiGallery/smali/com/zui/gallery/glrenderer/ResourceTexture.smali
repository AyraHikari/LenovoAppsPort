.class public Lcom/zui/gallery/glrenderer/ResourceTexture;
.super Lcom/zui/gallery/glrenderer/UploadedTexture;
.source "ResourceTexture.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/zui/gallery/glrenderer/UploadedTexture;-><init>()V

    .line 33
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/zui/gallery/glrenderer/ResourceTexture;->mResId:I

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->setOpaque(Z)V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/zui/gallery/glrenderer/ResourceTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 41
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 42
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 43
    iget-object v1, p0, Lcom/zui/gallery/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/zui/gallery/glrenderer/ResourceTexture;->mResId:I

    .line 43
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
