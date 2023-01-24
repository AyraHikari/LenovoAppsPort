.class public Lcom/zui/gallery/filtershow/crop/CropActivity;
.super Landroid/app/Activity;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;,
        Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;
    }
.end annotation


# static fields
.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final DO_EXTRA_OUTPUT:I = 0x4

.field private static final DO_RETURN_DATA:I = 0x2

.field private static final DO_SET_WALLPAPER:I = 0x1

.field private static final FLAG_CHECK:I = 0x7

.field private static final LOGTAG:Ljava/lang/String; = "CropActivity"

.field public static final MAX_BMAP_IN_INTENT:I = 0xb71b0

.field private static final SELECT_PICTURE:I = 0x1


# instance fields
.field private finalIOGuard:Z

.field private mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

.field private mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

.field private mLoadBitmapTask:Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOriginalBounds:Landroid/graphics/RectF;

.field private mOriginalRotation:I

.field private mOutputX:I

.field private mOutputY:I

.field private mSaveButton:Landroid/view/View;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    .line 65
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputX:I

    .line 68
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputY:I

    .line 69
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 70
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 71
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalRotation:I

    .line 72
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 73
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    .line 74
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mSaveButton:Landroid/view/View;

    .line 75
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->finalIOGuard:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/crop/CropActivity;)I
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getScreenImageSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/crop/CropActivity;Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/crop/CropActivity;->doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/crop/CropActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputX:I

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/filtershow/crop/CropActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputX:I

    return p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/crop/CropActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputY:I

    return p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/filtershow/crop/CropActivity;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputY:I

    return p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/crop/CropActivity;ZLandroid/content/Intent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropActivity;->doneBitmapIO(ZLandroid/content/Intent;)V

    return-void
.end method

.method private cannotLoadImage()V
    .locals 2

    const v0, 0x7f10006c

    .line 241
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 242
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string v0, "png"

    .line 679
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p0
.end method

.method private done()V
    .locals 0

    .line 618
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->finish()V

    return-void
.end method

.method private doneBitmapIO(ZLandroid/content/Intent;)V
    .locals 2

    const v0, 0x7f08022c

    .line 349
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 356
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->done()V

    return-void
.end method

.method private doneLoadBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;I)V
    .locals 3

    const v0, 0x7f08022c

    .line 202
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 205
    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 206
    iput p3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalRotation:I

    if-eqz p1, :cond_3

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-eqz p2, :cond_3

    .line 208
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 209
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    invoke-virtual {v0, p1, p2, p2, p3}, Lcom/zui/gallery/filtershow/crop/CropView;->initialize(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    .line 210
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    if-eqz p1, :cond_2

    .line 211
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getAspectX()I

    move-result p1

    .line 212
    iget-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getAspectY()I

    move-result p2

    .line 213
    iget-object p3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getOutputX()I

    move-result p3

    iput p3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputX:I

    .line 214
    iget-object p3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getOutputY()I

    move-result p3

    iput p3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputY:I

    .line 215
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputX:I

    if-lez v0, :cond_0

    if-lez p3, :cond_0

    .line 216
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    int-to-float v0, v0

    int-to-float p3, p3

    invoke-virtual {v1, v0, p3}, Lcom/zui/gallery/filtershow/crop/CropView;->applyAspect(FF)V

    .line 219
    :cond_0
    iget-object p3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getSpotlightX()F

    move-result p3

    .line 220
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getSpotlightY()F

    move-result v0

    cmpl-float v1, p3, v2

    if-lez v1, :cond_1

    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    invoke-virtual {v1, p3, v0}, Lcom/zui/gallery/filtershow/crop/CropView;->setWallpaperSpotlight(FF)V

    :cond_1
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 225
    iget-object p3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropView;->applyAspect(FF)V

    :cond_2
    const/4 p1, 0x1

    .line 228
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->enableSave(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "CropActivity"

    const-string p2, "could not load image for cropping"

    .line 230
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->cannotLoadImage()V

    const/4 p1, 0x0

    .line 232
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 233
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->done()V

    :goto_0
    return-void
.end method

.method private enableSave(Z)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mSaveButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getBitmapCrop(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropView;->getCrop()Landroid/graphics/RectF;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/crop/CropView;->getPhoto()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/zui/gallery/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "CropActivity"

    const-string v0, "could not get crop"

    .line 696
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected static getCroppedImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 4

    .line 622
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 623
    invoke-static {p1, p2, v0}, Lcom/zui/gallery/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 627
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 628
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 629
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 630
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 629
    invoke-static {p0, p1, v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected static getDownsampledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p0, :cond_3

    .line 634
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    const/4 v0, 0x0

    .line 638
    invoke-static {p0}, Lcom/zui/gallery/filtershow/crop/CropMath;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v1

    :goto_0
    if-le v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 641
    div-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    shr-int/2addr v1, v0

    .line 644
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    shr-int v0, v2, v0

    const/4 v2, 0x1

    .line 643
    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 649
    :cond_1
    invoke-static {p0}, Lcom/zui/gallery/filtershow/crop/CropMath;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    if-le v0, p1, :cond_2

    .line 650
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    shr-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    shr-int/2addr v0, v2

    invoke-static {p0, p1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    return-object p0

    .line 635
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad argument to getDownsampledBitmap()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static getExtrasFromIntent(Landroid/content/Intent;)Lcom/zui/gallery/filtershow/crop/CropExtras;
    .locals 14

    .line 659
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 661
    new-instance v13, Lcom/zui/gallery/filtershow/crop/CropExtras;

    const-string v0, "outputX"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "outputY"

    .line 662
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "scale"

    const/4 v4, 0x1

    .line 663
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "scaleUpIfNeeded"

    .line 664
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const-string v0, "aspectX"

    .line 665
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "aspectY"

    .line 666
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "set-as-wallpaper"

    .line 667
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "return-data"

    .line 668
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v0, "output"

    .line 669
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/Uri;

    const-string v0, "outputFormat"

    .line 670
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "showWhenLocked"

    .line 671
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string/jumbo v0, "spotlightX"

    .line 672
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v12

    const-string/jumbo v0, "spotlightY"

    .line 673
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    move-object v0, v13

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move v11, v12

    move v12, p0

    invoke-direct/range {v0 .. v12}, Lcom/zui/gallery/filtershow/crop/CropExtras;-><init>(IIZIIZZLandroid/net/Uri;Ljava/lang/String;ZFF)V

    return-object v13

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "jpg"

    if-nez p0, :cond_0

    move-object p0, v0

    .line 686
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "png"

    .line 687
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "gif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method private getScreenImageSize()I
    .locals 2

    .line 177
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private pickImage()V
    .locals 2

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f10023b

    .line 158
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startBitmapIO(ILandroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v12, p0

    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    if-eqz p2, :cond_3

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 331
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_1

    return-void

    :cond_1
    and-int/lit8 v0, p1, 0x1

    const/4 v13, 0x1

    if-eqz v0, :cond_2

    const v0, 0x7f10024f

    .line 338
    invoke-static {v12, v0, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    const v0, 0x7f08022c

    .line 341
    invoke-virtual {v12, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v14, 0x0

    .line 342
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 343
    new-instance v15, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;

    iget v10, v12, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputX:I

    iget v11, v12, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOutputY:I

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;-><init>(Lcom/zui/gallery/filtershow/crop/CropActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;III)V

    new-array v0, v13, [Landroid/graphics/Bitmap;

    aput-object p2, v0, v14

    .line 345
    invoke-virtual {v15, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return-void
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->enableSave(Z)V

    const v1, 0x7f08022c

    .line 188
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    new-instance v1, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;-><init>(Lcom/zui/gallery/filtershow/crop/CropActivity;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    aput-object p1, v2, v0

    .line 191
    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->cannotLoadImage()V

    .line 194
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->done()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 168
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 169
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->startLoadBitmap(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropView;->configChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getExtrasFromIntent(Landroid/content/Intent;)Lcom/zui/gallery/filtershow/crop/CropExtras;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    const v0, 0x7f0b003a

    .line 106
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->setContentView(I)V

    const v0, 0x7f080107

    .line 107
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/crop/CropView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropView:Lcom/zui/gallery/filtershow/crop/CropView;

    .line 109
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v1, 0x7f0b0044

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 114
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/zui/gallery/filtershow/crop/CropActivity$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/crop/CropActivity$1;-><init>(Lcom/zui/gallery/filtershow/crop/CropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    .line 124
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->startLoadBitmap(Landroid/net/Uri;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->pickImage()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/crop/CropActivity$LoadBitmapTask;->cancel(Z)Z

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected startFinishOutput()V
    .locals 14

    .line 281
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->finalIOGuard:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->finalIOGuard:Z

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->enableSave(Z)V

    .line 289
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    if-eqz v1, :cond_5

    .line 290
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v0

    move-object v1, v2

    .line 296
    :goto_0
    iget-object v4, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getSetAsWallpaper()Z

    move-result v4

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x1

    .line 299
    :cond_3
    iget-object v4, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getReturnData()Z

    move-result v4

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x2

    :cond_4
    move-object v8, v1

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v0

    move-object v8, v2

    :goto_1
    and-int/lit8 v1, v5, 0x7

    if-eqz v1, :cond_7

    .line 312
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 313
    new-instance v10, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {v10, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 314
    invoke-direct {p0, v10}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getBitmapCrop(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    .line 315
    iget-object v6, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mSourceUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalBounds:Landroid/graphics/RectF;

    .line 317
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mCropExtras:Lcom/zui/gallery/filtershow/crop/CropExtras;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropExtras;->getOutputFormat()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v12, v2

    iget v13, p0, Lcom/zui/gallery/filtershow/crop/CropActivity;->mOriginalRotation:I

    move-object v4, p0

    .line 315
    invoke-direct/range {v4 .. v13}, Lcom/zui/gallery/filtershow/crop/CropActivity;->startBitmapIO(ILandroid/graphics/Bitmap;Landroid/net/Uri;Landroid/net/Uri;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)V

    return-void

    .line 320
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 321
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->done()V

    return-void
.end method
