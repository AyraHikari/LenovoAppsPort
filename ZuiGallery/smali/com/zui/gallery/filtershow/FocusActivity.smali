.class public Lcom/zui/gallery/filtershow/FocusActivity;
.super Lcom/zui/gallery/app/BaseActivity;
.source "FocusActivity.java"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;,
        Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;,
        Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;,
        Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;,
        Lcom/zui/gallery/filtershow/FocusActivity$MainHandler;,
        Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/gallery/app/BaseActivity;",
        "Lcom/zui/gallery/util/FutureListener<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final DEPTHDATA:Ljava/lang/String; = "0001_576x768_16bits_Depth.raw"

.field public static final MAX_BITMAP_DIM:I = 0x780

.field public static final MAX_FOCUS_VALUE:I = 0xa

.field private static final OPT_FILE:Ljava/lang/String; = "InOTPData.dat"

.field private static final SAMPLE_PATH:Ljava/lang/String; = "SDE2_Bokeh_Sample"

.field public static final SMALL_BITMAP_DIM:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "FocusActivity"

.field private static final YUVDATA:Ljava/lang/String; = "0001_3120x4160_Main_YCC420Sep.raw"


# instance fields
.field private cameraDir:Ljava/lang/String;

.field private mBaseBitmap:Landroid/graphics/Bitmap;

.field private mBitmapBounds:Landroid/graphics/RectF;

.field private mBlurLevelText:Landroid/widget/TextView;

.field private final mBlurLevles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mBlureLevelInImage:I

.field private mCancle:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDepthData:[B

.field private mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

.field private mDucalImageView:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

.field private mGDepthParser:Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

.field private mHeight:I

.field private mLoadBitmapTask:Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;

.field private mMainHandler:Landroid/os/Handler;

.field private mOriginaImagelBounds:Landroid/graphics/Rect;

.field private mOtp:[B

.field private mParseDepthMapTask:Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;

.field private mProgressDialog:Lzui/app/ProgressDialogX;

.field private mRefocusTask:Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

.field private mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field private mResultUri:Landroid/net/Uri;

.field private mSave:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarContainer:Landroid/widget/LinearLayout;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mVenderType:I

.field private mWidth:I

.field private mYuvData:[B

.field private mZoomOrientation:I

.field private orignalBitmapUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/zui/gallery/app/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->orignalBitmapUri:Landroid/net/Uri;

    .line 89
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 92
    iput v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mZoomOrientation:I

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/FocusActivity$1;-><init>(Lcom/zui/gallery/filtershow/FocusActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-void
.end method

.method private NV12ToNV21([BII)V
    .locals 3

    mul-int/2addr p2, p3

    mul-int/lit8 p3, p2, 0x3

    .line 425
    div-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 428
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 429
    aget-byte v2, p1, v1

    aput-byte v2, p1, p2

    .line 430
    aput-byte v0, p1, v1

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBaseBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBaseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->updateThumbnailBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/filtershow/FocusActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zui/gallery/filtershow/FocusActivity;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->cameraDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/filtershow/FocusActivity;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->getSavedFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/filtershow/FocusActivity;)I
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->getScreenMaxSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/net/Uri;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->orignalBitmapUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/FocusActivity;->loadBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1702(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/filtershow/FocusActivity;)[B
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mYuvData:[B

    return-object p0
.end method

.method static synthetic access$1902(Lcom/zui/gallery/filtershow/FocusActivity;[B)[B
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mYuvData:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDucalImageView:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/RectF;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBitmapBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/FocusActivity;->getRefocusMatrix(Landroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/FocusActivity;->parseDepthMap(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/filtershow/FocusActivity;)[B
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDepthData:[B

    return-object p0
.end method

.method static synthetic access$2302(Lcom/zui/gallery/filtershow/FocusActivity;[B)[B
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDepthData:[B

    return-object p1
.end method

.method static synthetic access$2400(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/tools/GDepth$Parser;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mGDepthParser:Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/zui/gallery/filtershow/FocusActivity;[B)[B
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mOtp:[B

    return-object p1
.end method

.method static synthetic access$2600(Lcom/zui/gallery/filtershow/FocusActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlureLevelInImage:I

    return p0
.end method

.method static synthetic access$2602(Lcom/zui/gallery/filtershow/FocusActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlureLevelInImage:I

    return p1
.end method

.method static synthetic access$2700(Lcom/zui/gallery/filtershow/FocusActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mVenderType:I

    return p0
.end method

.method static synthetic access$2702(Lcom/zui/gallery/filtershow/FocusActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mVenderType:I

    return p1
.end method

.method static synthetic access$2800(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/zui/gallery/filtershow/FocusActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->showSeekBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevelText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/zui/gallery/filtershow/FocusActivity;Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;)Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mParseDepthMapTask:Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/FocusActivity;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->updateBlurLevel(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/graphics/Rect;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mOriginaImagelBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/filtershow/FocusActivity;)Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/filtershow/FocusActivity;[BII)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/FocusActivity;->saveYuvdata2jpg([BII)V

    return-void
.end method

.method static synthetic access$900(Lcom/zui/gallery/filtershow/FocusActivity;)Landroid/net/Uri;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mResultUri:Landroid/net/Uri;

    return-object p0
.end method

.method private closeProgressDialog()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_0
    return-void
.end method

.method private getDepthData()[B
    .locals 5

    .line 551
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 552
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDE2_Bokeh_Sample"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0001_576x768_16bits_Depth.raw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/high16 v3, 0x200000

    :try_start_0
    new-array v3, v3, [B

    .line 558
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 559
    :goto_0
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 560
    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 566
    :cond_0
    invoke-static {v4}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 567
    throw v0

    .line 566
    :catch_1
    :goto_2
    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 570
    :cond_1
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private getFNumber()F
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;

    iget v0, v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;->mFNumber:F

    return v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getOptData()[B
    .locals 5

    .line 506
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDE2_Bokeh_Sample"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "InOTPData.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/high16 v3, 0x200000

    :try_start_0
    new-array v3, v3, [B

    .line 513
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 514
    :goto_0
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 515
    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 520
    :cond_0
    invoke-static {v4}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 521
    throw v0

    .line 520
    :catch_1
    :goto_2
    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 524
    :cond_1
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private getRefocusMatrix(Landroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .locals 1

    .line 795
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 797
    iget p2, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mZoomOrientation:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/high16 p2, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_2
    const/high16 p2, 0x43340000    # 180.0f

    .line 811
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 812
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 813
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object v0
.end method

.method private getSavedFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    const/4 v0, 0x0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 584
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "FocusActivity"

    if-lez v2, :cond_0

    .line 587
    :try_start_2
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v2

    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new create pic uri is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query new save picture  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object p1, v0

    move-object v0, v1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 603
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 605
    :cond_2
    throw p1

    :catch_1
    move-object p1, v0

    :goto_2
    if-eqz v0, :cond_3

    .line 603
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, p1

    :cond_4
    :goto_3
    return-object v0
.end method

.method private getScreenMaxSize()I
    .locals 2

    .line 272
    iget v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mWidth:I

    iget v1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getYUVData(Landroid/graphics/Bitmap;)[B
    .locals 4

    .line 528
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 529
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDE2_Bokeh_Sample"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0001_3120x4160_Main_YCC420Sep.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/high16 v2, 0x200000

    :try_start_0
    new-array v2, v2, [B

    .line 535
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 536
    :goto_0
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 537
    invoke-virtual {p1, v2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 543
    :cond_0
    invoke-static {v3}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 544
    throw p1

    .line 543
    :catch_1
    :goto_2
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 547
    :cond_1
    :goto_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private loadBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 490
    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 491
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x780

    .line 493
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 492
    invoke-static {p1, p0, p2, v0, v1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->loadOrientedConstrainedBitmap(Landroid/net/Uri;Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 498
    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/FocusActivity;->setOriginalBounds(Landroid/graphics/Rect;)V

    .line 499
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBitmapBounds:Landroid/graphics/RectF;

    .line 500
    iput v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mZoomOrientation:I

    return-object p1
.end method

.method private makeSrc(II)Landroid/graphics/Bitmap;
    .locals 5

    .line 680
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 681
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 682
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v3, -0x33bc

    .line 683
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 684
    new-instance v3, Landroid/graphics/RectF;

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    int-to-float p2, p2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private parseDepthMap(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mGDepthParser:Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mGDepthParser:Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    if-nez v0, :cond_1

    .line 1034
    new-instance v0, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mGDepthParser:Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    .line 1035
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->parse(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 1037
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mGDepthParser:Lcom/zui/gallery/filtershow/tools/GDepth$Parser;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/tools/GDepth$Parser;->valid()Z

    move-result p1

    return p1
.end method

.method private saveBitmap2File(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 750
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 751
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_EDIT.jpg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/SDE2_Bokeh_Sample"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 757
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 761
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 762
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, p1, v3

    .line 763
    invoke-static {p0, p1, v1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-wide/16 v0, 0x1f4

    .line 766
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 771
    throw p1

    .line 770
    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_2
    return-void
.end method

.method private saveExif(Ljava/io/File;)V
    .locals 7

    const/4 v0, 0x0

    .line 646
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FocusActivity;->orignalBitmapUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 647
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 648
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 650
    const-class p1, Landroid/media/ExifInterface;

    .line 651
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    .line 652
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 653
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 654
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "TAG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 655
    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 656
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 658
    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 662
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/sql/Date;-><init>(J)V

    .line 662
    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DateTime"

    .line 664
    invoke-virtual {v2, v1, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 671
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 667
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 671
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 673
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    .line 671
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 673
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 676
    :cond_3
    :goto_4
    throw p1
.end method

.method private saveYuvdata2jpg([BII)V
    .locals 7

    .line 610
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 620
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->orignalBitmapUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getEditFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 624
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 625
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x64

    invoke-virtual {v6, v2, p2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 627
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->saveExif(Ljava/io/File;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 629
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    iget-object p3, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 628
    invoke-static {p0, p2, v0, p3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-wide/16 p2, 0x1f4

    .line 631
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V

    .line 633
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->getSavedFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mResultUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 638
    throw p1

    .line 637
    :catch_1
    :goto_1
    invoke-static {v0}, Lcom/zui/gallery/common/BitmapUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_2
    return-void
.end method

.method private setOriginalBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 693
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mOriginaImagelBounds:Landroid/graphics/Rect;

    .line 694
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDucalImageView:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;->setOriginalBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private showProgressDialog(I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lzui/app/ProgressDialogX;

    invoke-direct {v0, p0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->closeProgressDialog()V

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0, p1}, Lzui/app/ProgressDialogX;->setMessage(I)V

    .line 260
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    return-void
.end method

.method private showSeekBar()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mSeekBarContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 4

    const v0, 0x7f100198

    .line 237
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->showProgressDialog(I)V

    .line 238
    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;-><init>(Lcom/zui/gallery/filtershow/FocusActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 239
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/FocusActivity$LoadBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 242
    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;-><init>(Lcom/zui/gallery/filtershow/FocusActivity;Lcom/zui/gallery/filtershow/FocusActivity$1;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mParseDepthMapTask:Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;

    new-array v1, v1, [Landroid/net/Uri;

    aput-object p1, v1, v3

    .line 243
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FocusActivity$ParseDepthMapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startSaveReFouceTask()V
    .locals 2

    const v0, 0x7f10021d

    .line 776
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/FocusActivity;->showProgressDialog(I)V

    .line 777
    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;-><init>(Lcom/zui/gallery/filtershow/FocusActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FocusActivity$SaveReFocusImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateBlurLevel(I)V
    .locals 4

    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setValue(I)V

    .line 278
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->isNil()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mOriginaImagelBounds:Landroid/graphics/Rect;

    .line 280
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mOriginaImagelBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 279
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setPoint(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRefocusTask:Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRefocusTask:Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->postReFocusTask(Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;)V

    .line 285
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateFocusPoint(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;->setPoint(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 292
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRefocusTask:Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRefocusTask:Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->postReFocusTask(Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;)V

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized updateThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    monitor-enter p0

    .line 264
    :try_start_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getBitmapBounds()Landroid/graphics/RectF;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBitmapBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public declared-synchronized getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomOrientation()I
    .locals 1

    .line 703
    iget v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mZoomOrientation:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800c5

    if-ne p1, v0, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0802dd

    if-ne p1, v0, :cond_1

    .line 732
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->startSaveReFouceTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 177
    invoke-super {p0, p1}, Lcom/zui/gallery/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0071

    .line 178
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->setContentView(I)V

    .line 179
    new-instance p1, Lcom/zui/gallery/filtershow/FocusActivity$MainHandler;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/zui/gallery/filtershow/FocusActivity$MainHandler;-><init>(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mMainHandler:Landroid/os/Handler;

    const p1, 0x7f0801f4

    .line 180
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDucalImageView:Lcom/zui/gallery/filtershow/imageshow/ImageShowDucal;

    const p1, 0x7f0800c5

    .line 181
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mCancle:Landroid/widget/TextView;

    .line 182
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0802dd

    .line 183
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mSave:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080090

    .line 185
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevelText:Landroid/widget/TextView;

    const p1, 0x7f0802f9

    .line 186
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mSeekBarContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0802b0

    .line 188
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 190
    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/FocusActivity$2;-><init>(Lcom/zui/gallery/filtershow/FocusActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 210
    iput-object p0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mContext:Landroid/content/Context;

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DCIM/Camera"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->cameraDir:Ljava/lang/String;

    .line 214
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 215
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 216
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mWidth:I

    .line 217
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mHeight:I

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screen width "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " screen height "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FocusActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->orignalBitmapUri:Landroid/net/Uri;

    .line 221
    new-instance p1, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;-><init>(Lcom/zui/gallery/filtershow/FocusActivity;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRefocusTask:Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

    .line 222
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    const-string v0, "Dual"

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;-><init>(Ljava/lang/String;III)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mDualCamPepresentation:Lcom/zui/gallery/filtershow/filters/FilterDualCamBasicRepresentation;

    .line 223
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->orignalBitmapUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 227
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {v0, v3, v4}, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;-><init>(IF)V

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;

    const v3, 0x40b33333    # 5.6f

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;-><init>(IF)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;

    const/4 v1, 0x2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;-><init>(IF)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;

    const/4 v1, 0x3

    const v3, 0x40333333    # 2.8f

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;-><init>(IF)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;

    const/4 v1, 0x4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;-><init>(IF)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;

    const v1, 0x3fb33333    # 1.4f

    invoke-direct {v0, v2, v1}, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;-><init>(IF)V

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mBlurLevles:Landroid/util/SparseArray;

    new-instance v0, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/filtershow/FocusActivity$BlurLevel;-><init>(IF)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 782
    invoke-super {p0}, Lcom/zui/gallery/app/BaseActivity;->onDestroy()V

    .line 783
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FocusActivity;->closeProgressDialog()V

    .line 790
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRefocusTask:Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;->quit()V

    const/4 v0, 0x0

    .line 791
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mRefocusTask:Lcom/zui/gallery/filtershow/FocusActivity$RefocusTask;

    return-void
.end method

.method public onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FocusActivity"

    if-eqz p1, :cond_2

    .line 739
    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/zui/gallery/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FocusActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "future is cancelled or get is null"

    .line 740
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p1, "future is null"

    .line 745
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public updateTouchPoint([F[F)V
    .locals 3

    .line 709
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    .line 710
    aget v2, p1, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    .line 711
    aget p1, p1, v2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 712
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 713
    aget v1, p2, v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 714
    aget p2, p2, v2

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 715
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/filtershow/FocusActivity;->updateFocusPoint(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method
