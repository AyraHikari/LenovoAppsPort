.class public Lcom/zui/gallery/filtershow/imageshow/ImageCaption;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageCaption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ImageCaption"

.field private static sActivity:Landroid/app/Activity;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapHeightOnenInTwo:I

.field private bitmapWidthOnenInTwo:I

.field private data:[B

.field private finalBmp:Landroid/graphics/Bitmap;

.field private heightDiff:I

.field private isLastCaption:Z

.field private mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

.field private mCaptionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

.field private mContext:Landroid/content/Context;

.field private mCreateFolderDialog:Lzui/app/MessageDialog;

.field private mCurNvsEffectUuid:Ljava/lang/String;

.field private mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

.field private mEditorCaption:Lcom/zui/gallery/filtershow/editors/EditorCaption;

.field protected mEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

.field private mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field private mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

.field private mRatio:F

.field private master:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

.field private originBitmap:Landroid/graphics/Bitmap;

.field private widthDiff:I

.field private xMaxRange:F

.field private xMinRange:F

.field private yMaxRange:F

.field private yMinRange:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->isLastCaption:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 480
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    .line 107
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->isLastCaption:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 480
    iput p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    .line 112
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Landroid/content/Context;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/caption/view/DrawRect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/zui/gallery/filtershow/editors/EditorCaption;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mEditorCaption:Lcom/zui/gallery/filtershow/editors/EditorCaption;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->isLastCaption:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lzui/app/MessageDialog;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCreateFolderDialog:Lzui/app/MessageDialog;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Lzui/app/MessageDialog;)Lzui/app/MessageDialog;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCreateFolderDialog:Lzui/app/MessageDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->addCaption(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmapWidthOnenInTwo:I

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmapHeightOnenInTwo:I

    return p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->getAssetViewVerticesList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F
    .locals 0

    .line 72
    iget p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->xMinRange:F

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F
    .locals 0

    .line 72
    iget p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->xMaxRange:F

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F
    .locals 0

    .line 72
    iget p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMinRange:F

    return p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;)F
    .locals 0

    .line 72
    iget p0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMaxRange:F

    return p0
.end method

.method private addCaption(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V
    .locals 16

    move-object/from16 v0, p0

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v1

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getAsset()Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 504
    :cond_1
    iget-object v1, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCurNvsEffectUuid:Ljava/lang/String;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 508
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 509
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , display.height = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \uff0c view.width = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    .line 511
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , view.height is = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , bitmap.width = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    .line 512
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , bitmap.getheight = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangcanpos"

    .line 510
    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v1

    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->widthDiff:I

    .line 515
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v1

    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->heightDiff:I

    .line 516
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmapWidthOnenInTwo:I

    .line 517
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmapHeightOnenInTwo:I

    .line 518
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/caption/utils/Utils;->bitmap2RGBA(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->data:[B

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 522
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 533
    iget-object v4, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    .line 534
    iget-object v6, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 535
    iget-object v7, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    .line 536
    iget-object v8, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    div-float v5, v4, v6

    div-float v9, v7, v8

    .line 540
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "imageShowWidth.width is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v11}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " && imageShowWidth.height is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v11}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " && bitmap.width is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    .line 541
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " && bitmap.height is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "wangcanLocation"

    .line 540
    invoke-static {v11, v10}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v10, v3, [I

    .line 545
    iget-object v12, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v12, v10}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getLocationOnScreen([I)V

    const/4 v12, 0x0

    .line 546
    aget v13, v10, v12

    const/4 v14, 0x1

    .line 547
    aget v10, v10, v14

    .line 548
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mImageShow.getX is "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " && mImageShow.getY() is "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v3, :cond_2

    move v1, v14

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 557
    :goto_0
    iget-object v12, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v12

    .line 558
    iget-object v13, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->getDaoHangHeight(Landroid/content/Context;)I

    move-result v13

    .line 560
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "statusBarHeight is "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " && navigationBarHeight is "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v3, v9, v5

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-lez v3, :cond_3

    const-string/jumbo v3, "\u5bbd\u5ea6\u5145\u6ee1"

    .line 563
    invoke-static {v2, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    div-float v3, v4, v7

    .line 564
    iput v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    .line 566
    iput v9, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->xMinRange:F

    .line 567
    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v9

    iput v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->xMaxRange:F

    .line 568
    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    float-to-int v10, v4

    invoke-static {v3, v10}, Lcom/zui/gallery/util/GroupUtils;->setActualWidthInCaption(Landroid/content/Context;I)V

    mul-float v3, v4, v8

    div-float/2addr v3, v7

    .line 576
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\u975e\u6a2a\u5c4f && isLandScreen is "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " && actualHeight is "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-float v1, v6, v3

    div-float/2addr v1, v5

    int-to-float v5, v12

    add-float/2addr v1, v5

    .line 578
    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMinRange:F

    add-float/2addr v3, v1

    .line 580
    iput v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMaxRange:F

    .line 589
    iget-object v5, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    sub-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {v5, v1}, Lcom/zui/gallery/util/GroupUtils;->setActualHeightInCaption(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "\u9ad8\u5ea6\u5145\u6ee1"

    .line 592
    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    float-to-int v3, v6

    invoke-static {v1, v3}, Lcom/zui/gallery/util/GroupUtils;->setActualHeightInCaption(Landroid/content/Context;I)V

    div-float v1, v6, v8

    .line 594
    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    add-int/lit8 v10, v10, -0x64

    int-to-float v1, v10

    .line 596
    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMinRange:F

    .line 597
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isOnyx()Z

    move-result v1

    const/high16 v3, 0x42480000    # 50.0f

    if-eqz v1, :cond_4

    .line 598
    iget v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMinRange:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMinRange:F

    .line 601
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMinRange:F

    add-float/2addr v1, v6

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMaxRange:F

    .line 603
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isOnyx()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 604
    iget v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMaxRange:F

    add-float/2addr v1, v3

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMaxRange:F

    :cond_5
    mul-float v1, v6, v7

    div-float/2addr v1, v8

    sub-float v3, v4, v1

    div-float/2addr v3, v5

    .line 612
    iput v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->xMinRange:F

    add-float/2addr v3, v1

    .line 614
    iput v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->xMaxRange:F

    .line 620
    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    float-to-int v1, v1

    invoke-static {v3, v1}, Lcom/zui/gallery/util/GroupUtils;->setActualWidthInCaption(Landroid/content/Context;I)V

    .line 622
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xMinRange is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->xMinRange:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " && xMaxRange is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->xMaxRange:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " && yMinRange is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMinRange:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " && yMaxRange is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->yMaxRange:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRatio is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v1, Lcom/meicam/sdk/NvsVideoFrameInfo;

    invoke-direct {v1}, Lcom/meicam/sdk/NvsVideoFrameInfo;-><init>()V

    iput-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    .line 627
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameWidth:I

    .line 628
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoFrameInfo;->frameHeight:I

    .line 629
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mNvsVideoFrameInfo:Lcom/meicam/sdk/NvsVideoFrameInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoFrameInfo;->pixelFormat:I

    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    if-eqz v1, :cond_6

    .line 635
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "wangcan"

    const-string v2, "mCaptionEffect ==null"

    .line 637
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_2
    new-instance v1, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v1}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 641
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 642
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageWidth is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " && imageHeight is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " && imageshowwidth is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " && imageshowHeight is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wangctest"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v2, Lcom/meicam/sdk/NvsRational;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 645
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    invoke-virtual {v2, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setVideoResolution(Lcom/meicam/sdk/NvsVideoResolution;)V

    .line 648
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/zui/gallery/util/GroupUtils;->setCaptionViewWidth(Landroid/content/Context;F)V

    .line 649
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/zui/gallery/util/GroupUtils;->setCaptionViewHeight(Landroid/content/Context;F)V

    .line 650
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/zui/gallery/util/GroupUtils;->setCaptionBitmapWidth(Landroid/content/Context;F)V

    .line 651
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/zui/gallery/util/GroupUtils;->setCaptionBitmapHeight(Landroid/content/Context;F)V

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageCaption....mParameters is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " && pointf is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangcanyyyy"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 656
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    if-eqz v2, :cond_7

    .line 657
    invoke-virtual {v2, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setCaptionTranslation(Landroid/graphics/PointF;)V

    .line 660
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getScaleFactor()F

    move-result v1

    .line 661
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetAnchor()Landroid/graphics/PointF;

    move-result-object v2

    cmpl-float v3, v1, v9

    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 662
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    if-eqz v2, :cond_8

    .line 663
    invoke-virtual {v2, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setScaleX(F)V

    .line 664
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    invoke-virtual {v2, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setScaleY(F)V

    .line 678
    :cond_8
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->getCaptionBoundingVertices(I)Ljava/util/List;

    move-result-object v1

    .line 679
    iget-object v2, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->getAssetViewVerticesList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setDrawRect(Ljava/util/List;I)V

    const-string/jumbo v1, "wangcantask"

    const-string v2, "addcaption is called"

    .line 683
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v1, v0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mEditorCaption:Lcom/zui/gallery/filtershow/editors/EditorCaption;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->commitLocalRepresentation()V

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->invalidate()V

    return-void
.end method

.method private getAssetViewVerticesList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 727
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 728
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 729
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 730
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    mul-float/2addr v2, v4

    sub-float/2addr v5, v2

    .line 734
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getDaoHangHeight(Landroid/content/Context;)I
    .locals 4

    .line 711
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 716
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 694
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 697
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    .line 482
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 483
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 484
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mRatio:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method


# virtual methods
.method actionDown()V
    .locals 0

    .line 779
    invoke-super {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->actionDown()V

    return-void
.end method

.method actionUp()V
    .locals 0

    .line 784
    invoke-super {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->actionUp()V

    return-void
.end method

.method public clearCaptionEffect()V
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->master:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public destoryView()V
    .locals 2

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach.mCaptionEffect is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcanmeicam"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    .line 813
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->destoryView()V

    return-void
.end method

.method public detach()V
    .locals 0

    .line 804
    invoke-super {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->detach()V

    return-void
.end method

.method protected enableComparison()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 763
    invoke-super {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    monitor-enter p0

    .line 769
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->actionDown()V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 772
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->actionUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method public resetParameter()V
    .locals 0

    .line 757
    invoke-super {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->resetParameter()V

    .line 758
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->invalidate()V

    return-void
.end method

.method public setCaptionRepresentation(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;Lcom/zui/gallery/filtershow/caption/view/DrawRect;Lcom/zui/gallery/filtershow/imageshow/ImageShow;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    .line 117
    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    .line 118
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    .line 119
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->master:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 120
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->bitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->originBitmap:Landroid/graphics/Bitmap;

    .line 126
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->addCaption(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V

    .line 128
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mCaptionRepresentation:Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p3}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "CAPTION5"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 131
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->isLastCaption:Z

    .line 132
    iget-object p4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    invoke-virtual {p4, p3}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setLastCaption(Z)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 134
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->isLastCaption:Z

    .line 135
    iget-object p4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    invoke-virtual {p4, p3}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setLastCaption(Z)V

    .line 138
    :goto_0
    iget-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    new-instance p4, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$1;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V

    invoke-virtual {p3, p4}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setOnTouchListener(Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;)V

    .line 396
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mDrawRect:Lcom/zui/gallery/filtershow/caption/view/DrawRect;

    new-instance p3, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;

    invoke-direct {p3, p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCaption$2;-><init>(Lcom/zui/gallery/filtershow/imageshow/ImageCaption;Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V

    invoke-virtual {p2, p3}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setDrawRectClickListener(Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;)V

    return-void
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorCaption;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mEditorCaption:Lcom/zui/gallery/filtershow/editors/EditorCaption;

    .line 789
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->getNvsEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCaption;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    return-void
.end method

.method public useUtilityPanel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
