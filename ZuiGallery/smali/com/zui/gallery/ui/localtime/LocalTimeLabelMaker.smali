.class public Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;
.super Ljava/lang/Object;
.source "LocalTimeLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;,
        Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I

.field private static BORDER_SIZE2:I


# instance fields
.field private debug:Z

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCameraIcon:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;

.field private final mContext:Landroid/content/Context;

.field private mContinuousTitlePaint:Landroid/text/TextPaint;

.field private mContinuousTitlePaintSmall:Landroid/text/TextPaint;

.field private mCountPaint:Landroid/text/TextPaint;

.field private mDurationPaint:Landroid/text/TextPaint;

.field private mDurationPaintSmall:Landroid/text/TextPaint;

.field private mLabelWidth:I

.field private mLocalSetIcon:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;

.field private mPicasaIcon:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;

.field private mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

.field private mTitlePaint:Landroid/text/TextPaint;

.field private mTitlePaintLocation:Landroid/text/TextPaint;

.field private reverseGeocoder:Lcom/zui/gallery/util/ReverseGeocoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContext:Landroid/content/Context;

    .line 86
    check-cast p1, Lcom/zui/gallery/app/AbstractGalleryActivity;

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 87
    new-instance p1, Lcom/zui/gallery/util/ReverseGeocoder;

    iget-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/zui/gallery/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->reverseGeocoder:Lcom/zui/gallery/util/ReverseGeocoder;

    .line 88
    iput-object p2, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    .line 89
    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->initParameter(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V

    .line 90
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->BORDER_SIZE2:I

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mBitmapHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mDurationPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mDurationPaintSmall:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContinuousTitlePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContinuousTitlePaintSmall:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->debug:Z

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;Ljava/lang/String;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getLocationInfo3(Ljava/lang/String;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mTitlePaintLocation:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 2

    .line 186
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 187
    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 189
    monitor-enter p5

    int-to-float p4, p4

    .line 190
    :try_start_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, p4, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 191
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    .line 193
    invoke-virtual {p0, p3, p1, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 195
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getBorderSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getBorderSize2()I
    .locals 1

    .line 116
    sget v0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->BORDER_SIZE2:I

    return v0
.end method

.method private getLocationInfo3(Ljava/lang/String;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Ljava/lang/String;
    .locals 13

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 547
    :cond_0
    iget-object v0, p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "execute"

    const-string v2, "confirm"

    if-eqz v0, :cond_4

    .line 548
    iput-object v1, p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    const-string v0, ","

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 556
    array-length p1, v0

    move v1, v3

    :goto_1
    if-ge v1, p1, :cond_3

    aget-object v5, v0, v1

    .line 557
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 558
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 562
    iget-object v6, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 565
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 566
    new-instance v6, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v6}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    .line 568
    :try_start_0
    invoke-virtual {v6, v5}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 569
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 571
    invoke-virtual {v6, v5}, Landroid/media/ExifInterface;->getLatLong([F)Z

    .line 573
    aget v6, v5, v3

    float-to-double v6, v6

    aget v8, v5, v4

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 574
    iget-object v7, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->reverseGeocoder:Lcom/zui/gallery/util/ReverseGeocoder;

    aget v6, v5, v3

    float-to-double v8, v6

    aget v5, v5, v4

    float-to-double v10, v5

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/zui/gallery/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 576
    invoke-virtual {v5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    .line 577
    iput-object v5, p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v5

    .line 582
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 587
    :cond_3
    iput-object v2, p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    goto :goto_2

    .line 590
    :cond_4
    iget-object p1, p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v2

    .line 592
    :cond_5
    iget-object p1, p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string/jumbo p1, "waiting"

    return-object p1

    .line 596
    :cond_6
    :goto_2
    iget-object p1, p2, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;->locationInfo:Ljava/lang/String;

    return-object p1
.end method

.method private getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mCameraIcon:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mPicasaIcon:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 124
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mLocalSetIcon:Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 1

    .line 132
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p0, p0

    .line 133
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 134
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 135
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p2, :cond_0

    .line 138
    invoke-static {p0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-object v0
.end method

.method private initParameter(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V
    .locals 4

    .line 97
    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->titleFontSize:I

    iget v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->titleColor:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    .line 98
    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->locationFontSize:I

    iget-object v1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050137

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mTitlePaintLocation:Landroid/text/TextPaint;

    .line 99
    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->countFontSize:I

    iget v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->countColor:I

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    .line 100
    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousTitleFontSizeDay:I

    iget v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousTitleColor:I

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContinuousTitlePaint:Landroid/text/TextPaint;

    .line 101
    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousTitleFontSizeMonth:I

    iget v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->continuousTitleColor:I

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mContinuousTitlePaintSmall:Landroid/text/TextPaint;

    .line 102
    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->durationFontSizeDay:I

    iget v1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->durationFontColor:I

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mDurationPaint:Landroid/text/TextPaint;

    .line 103
    iget v0, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->durationFontSizeMonth:I

    iget p1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->durationFontColor:I

    invoke-static {v0, p1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mDurationPaintSmall:Landroid/text/TextPaint;

    return-void
.end method

.method private static saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 6

    .line 501
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 503
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 506
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-object v1, v0

    goto :goto_2

    .line 513
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 518
    :catch_1
    :cond_1
    throw p0

    :catch_2
    :goto_2
    if-eqz v1, :cond_2

    .line 513
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 491
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public requestLabel(IILcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;",
            ")",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v6, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;IILcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V

    return-object v6
.end method

.method public requestLabel(Ljava/lang/String;Ljava/lang/String;ILcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;",
            "Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;",
            ")",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v7, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker$AlbumLabelJob;-><init>(Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;Ljava/lang/String;Ljava/lang/String;ILcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlidingWindow$TimeLabelEntry;)V

    return-object v7
.end method

.method public setLabelSpec(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    .line 108
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->initParameter(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V

    return-void
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 1

    monitor-enter p0

    .line 163
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mLabelWidth:I

    add-int/lit8 p1, p1, 0x0

    .line 166
    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mBitmapWidth:I

    .line 167
    iget-object p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    iget p1, p1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/lit8 p1, p1, 0x0

    iput p1, p0, Lcom/zui/gallery/ui/localtime/LocalTimeLabelMaker;->mBitmapHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
