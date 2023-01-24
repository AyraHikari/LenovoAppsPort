.class public Lcom/zui/gallery/ui/mosaic/MosaicActivity;
.super Landroid/app/Activity;
.source "MosaicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zui/gallery/ui/mosaic/MosaicView$MosaicListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;,
        Lcom/zui/gallery/ui/mosaic/MosaicActivity$LoadOriginBitmapTask;
    }
.end annotation


# static fields
.field public static final PEN_WIDTH_10:I = 0xa

.field public static final PEN_WIDTH_30:I = 0x1e

.field public static final PEN_WIDTH_50:I = 0x32

.field public static final PEN_WIDTH_70:I = 0x46

.field public static final PEN_WIDTH_80:I = 0x50

.field private static final TAG:Ljava/lang/String; = "MosaicActivity"


# instance fields
.field private volatile hasChanged:Z

.field private mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mEraserBtn:Landroid/widget/ImageView;

.field public mHandler:Landroid/os/Handler;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLoadingVisible:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMosaicBtn:Landroid/widget/ImageView;

.field private mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

.field private mNoStorageDialog:Landroid/app/AlertDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSaveBtn:Landroid/widget/ImageView;

.field private mSaveFile:Ljava/io/File;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenWidth:I

.field private mSecureCameraCall:Z

.field private mSetPen0:Landroid/widget/ImageView;

.field private mSetPen1:Landroid/widget/ImageView;

.field private mSetPen2:Landroid/widget/ImageView;

.field private mSetPen3:Landroid/widget/ImageView;

.field private mSetPen4:Landroid/widget/ImageView;

.field private mSoureViewHeight:I

.field public mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x438

    .line 71
    iput v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mScreenWidth:I

    const/16 v0, 0x5a0

    .line 73
    iput v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSoureViewHeight:I

    .line 75
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mLoadingVisible:Z

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mContext:Landroid/content/Context;

    .line 80
    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mUri:Landroid/net/Uri;

    .line 86
    new-instance v1, Lcom/zui/gallery/ui/mosaic/MosaicActivity$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$1;-><init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    new-instance v1, Lcom/zui/gallery/ui/mosaic/MosaicActivity$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$2;-><init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)V

    iput-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mHandler:Landroid/os/Handler;

    .line 423
    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 620
    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Ljava/io/File;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSecureCameraCall:Z

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSoureViewHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/ui/mosaic/MosaicActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mImageWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/zui/gallery/ui/mosaic/MosaicActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mImageHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/mosaic/MosaicActivity;Landroid/graphics/Bitmap;)F
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getScale(Landroid/graphics/Bitmap;)F

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Landroid/graphics/Matrix;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/mosaic/MosaicActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->onloadComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)Lcom/zui/gallery/ui/mosaic/MosaicView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    return-object p0
.end method

.method private close()V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->finish()V

    :cond_0
    return-void
.end method

.method private enableOperation(Z)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mEraserBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private eraser()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 392
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/MosaicView;->setPenState(I)V

    :cond_0
    return-void
.end method

.method private getScale(Landroid/graphics/Bitmap;)F
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 400
    :cond_0
    iget p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mScreenWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mImageWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 401
    iget v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSoureViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mImageHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private getUri()Landroid/net/Uri;
    .locals 1

    .line 347
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private initBottomView()V
    .locals 1

    const v0, 0x7f0802de

    .line 129
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setSaveBtnEnable(Z)V

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08024a

    .line 132
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicBtn:Landroid/widget/ImageView;

    .line 133
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080190

    .line 134
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mEraserBtn:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800da

    .line 136
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mCloseBtn:Landroid/widget/ImageView;

    .line 137
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080285

    .line 140
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen0:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080286

    .line 142
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen1:Landroid/widget/ImageView;

    .line 143
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080287

    .line 144
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen2:Landroid/widget/ImageView;

    .line 145
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080288

    .line 146
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen3:Landroid/widget/ImageView;

    .line 147
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080289

    .line 148
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen4:Landroid/widget/ImageView;

    .line 149
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDefaultViewState()V
    .locals 1

    const v0, 0x7f08024a

    .line 153
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setFunctionBtnState(I)V

    .line 154
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mosaic()V

    const v0, 0x7f080285

    .line 156
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidthState(I)V

    const/16 v0, 0xa

    .line 157
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidth(I)V

    return-void
.end method

.method private mosaic()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 380
    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/MosaicView;->setPenState(I)V

    :cond_0
    return-void
.end method

.method private onloadComplete(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 450
    iget v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mScreenWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 451
    iget v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSoureViewHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 454
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 456
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    invoke-virtual {v0, p0, p1, v1, p0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->init(Lcom/zui/gallery/ui/mosaic/MosaicActivity;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/zui/gallery/ui/mosaic/MosaicView$MosaicListener;)V

    const/4 p1, 0x1

    .line 457
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->enableOperation(Z)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->enableOperation(Z)V

    .line 461
    :goto_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->initDefaultViewState()V

    return-void
.end method

.method private processIntent()V
    .locals 4

    .line 352
    new-instance v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$LoadOriginBitmapTask;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$LoadOriginBitmapTask;-><init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$LoadOriginBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private save()V
    .locals 2

    .line 374
    new-instance v0, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;-><init>(Lcom/zui/gallery/ui/mosaic/MosaicActivity;Lcom/zui/gallery/ui/mosaic/MosaicActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setFunctionBtnState(I)V
    .locals 4

    const v0, 0x7f0701c2

    const v1, 0x7f0701c4

    const v2, 0x7f0701cc

    const v3, 0x7f0701cb

    sparse-switch p1, :sswitch_data_0

    .line 261
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 262
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 263
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mEraserBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 264
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 238
    :sswitch_0
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 239
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mEraserBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 240
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 243
    :sswitch_1
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 244
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicBtn:Landroid/widget/ImageView;

    const v2, 0x7f0702de

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 245
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mEraserBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 246
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 249
    :sswitch_2
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 250
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 251
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mEraserBtn:Landroid/widget/ImageView;

    const v1, 0x7f07013d

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 252
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 255
    :sswitch_3
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mCloseBtn:Landroid/widget/ImageView;

    const v0, 0x7f070119

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 256
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 257
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 258
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mEraserBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0800da -> :sswitch_3
        0x7f080190 -> :sswitch_2
        0x7f08024a -> :sswitch_1
        0x7f0802de -> :sswitch_0
    .end sparse-switch
.end method

.method private setSaveBtnEnable(Z)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private showNoStorageDialog()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getPenWidth()I
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->getPenWidth()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public isLoadingVisible()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mLoadingVisible:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onChange()V
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->hasChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->hasChanged:Z

    .line 223
    iget-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->hasChanged:Z

    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setSaveBtnEnable(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f080289

    .line 213
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidthState(I)V

    const/16 p1, 0x50

    .line 214
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidth(I)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f080288

    .line 209
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidthState(I)V

    const/16 p1, 0x46

    .line 210
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidth(I)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f080287

    .line 205
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidthState(I)V

    const/16 p1, 0x32

    .line 206
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidth(I)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f080286

    .line 201
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidthState(I)V

    const/16 p1, 0x1e

    .line 202
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidth(I)V

    goto :goto_0

    :pswitch_4
    const p1, 0x7f080285

    .line 197
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidthState(I)V

    const/16 p1, 0xa

    .line 198
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setPenWidth(I)V

    goto :goto_0

    :sswitch_0
    const p1, 0x7f0802de

    .line 177
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setFunctionBtnState(I)V

    .line 178
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->save()V

    goto :goto_0

    :sswitch_1
    const p1, 0x7f08024a

    .line 181
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setFunctionBtnState(I)V

    .line 182
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mosaic()V

    .line 183
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->syncMosaic()V

    goto :goto_0

    :sswitch_2
    const p1, 0x7f080190

    .line 186
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setFunctionBtnState(I)V

    .line 187
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->eraser()V

    .line 188
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->syncEraser()V

    goto :goto_0

    :sswitch_3
    const p1, 0x7f0800da

    .line 191
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setFunctionBtnState(I)V

    .line 192
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->close()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800da -> :sswitch_3
        0x7f080190 -> :sswitch_2
        0x7f08024a -> :sswitch_1
        0x7f0802de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f080285
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSecureCameraCall:Z

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 100
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 106
    iput-object p0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getEditFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSaveFile:Ljava/io/File;

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->requestWindowFeature(I)Z

    .line 109
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f040006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setRequestedOrientation(I)V

    :cond_1
    const p1, 0x7f0b0096

    .line 113
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setContentView(I)V

    .line 115
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->initBottomView()V

    .line 116
    invoke-direct {p0, v1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->enableOperation(Z)V

    const p1, 0x7f08024c

    .line 118
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/mosaic/MosaicView;

    iput-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    .line 119
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 121
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mScreenWidth:I

    .line 122
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 123
    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060357

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSoureViewHeight:I

    .line 125
    invoke-direct {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->processIntent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 775
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 776
    iget-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {v0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->clean()V

    :cond_1
    return-void
.end method

.method public onRest()V
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->hasChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->hasChanged:Z

    .line 231
    iget-boolean v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->hasChanged:Z

    invoke-direct {p0, v0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->setSaveBtnEnable(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public setPenWidth(I)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/mosaic/MosaicView;->setPenWidth(I)V

    :cond_0
    return-void
.end method

.method public setPenWidthState(I)V
    .locals 5

    const v0, 0x7f0701c6

    const v1, 0x7f0701ca

    const v2, 0x7f0701c9

    const v3, 0x7f0701c8

    const v4, 0x7f0701c7

    packed-switch p1, :pswitch_data_0

    .line 328
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 329
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen1:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 330
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 331
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen3:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 332
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 321
    :pswitch_0
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen4:Landroid/widget/ImageView;

    const v1, 0x7f070115

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 322
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen1:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 323
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 324
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen3:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 325
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen3:Landroid/widget/ImageView;

    const v2, 0x7f070114

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 315
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen1:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 316
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 317
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 318
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 307
    :pswitch_2
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen2:Landroid/widget/ImageView;

    const v3, 0x7f070113

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 308
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 309
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen1:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 310
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen3:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 311
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 300
    :pswitch_3
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen1:Landroid/widget/ImageView;

    const v4, 0x7f070112

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 301
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 302
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 303
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen3:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 304
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 293
    :pswitch_4
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen0:Landroid/widget/ImageView;

    const v0, 0x7f070111

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 294
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen1:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 295
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen2:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 296
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen3:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 297
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mSetPen4:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080285
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startLoadingIndicator(I)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mContext:Landroid/content/Context;

    const v2, 0x103012e

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 431
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 432
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 433
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    iget-object p1, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public stopLoadingIndicator()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public syncEraser()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->syncEraser()V

    return-void
.end method

.method public syncMosaic()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/zui/gallery/ui/mosaic/MosaicActivity;->mMosaicView:Lcom/zui/gallery/ui/mosaic/MosaicView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/mosaic/MosaicView;->syncMosaic()V

    return-void
.end method
