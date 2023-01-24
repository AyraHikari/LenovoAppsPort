.class public Lcom/zui/gallery/ui/AlbumLabelMaker;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;,
        Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I


# instance fields
.field private mAlbumset_lable_text_margin_top_and_bottom:I

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCameraIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mContext:Landroid/content/Context;

.field private final mCountPaint:Landroid/text/TextPaint;

.field private mLabelWidth:I

.field private final mLocalSetIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mPicasaIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

.field private final mSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mTitlePaint:Landroid/text/TextPaint;

.field private otherLength:I

.field private shoulbBehiddenLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 59
    iget v0, p2, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    iget v1, p2, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    .line 60
    iget v0, p2, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countFontSize:I

    iget p2, p2, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countColor:I

    invoke-static {v0, p2, v2}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    .line 62
    new-instance p2, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0701f4

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/zui/gallery/ui/AlbumLabelMaker;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mLocalSetIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 63
    new-instance p2, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0701f5

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/zui/gallery/ui/AlbumLabelMaker;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 64
    new-instance p2, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    const v0, 0x7f0701f3

    invoke-direct {p2, p0, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;-><init>(Lcom/zui/gallery/ui/AlbumLabelMaker;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mCameraIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600ac

    .line 67
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mAlbumset_lable_text_margin_top_and_bottom:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600ad

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->otherLength:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10027e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->shoulbBehiddenLabel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/AlbumLabelMaker;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/AlbumLabelMaker;)Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/AlbumLabelMaker;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->shoulbBehiddenLabel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/AlbumLabelMaker;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mLabelWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/AlbumLabelMaker;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mBitmapWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/AlbumLabelMaker;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mBitmapHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/AlbumLabelMaker;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mAlbumset_lable_text_margin_top_and_bottom:I

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 1

    .line 141
    monitor-enter p5

    int-to-float p4, p4

    .line 142
    :try_start_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, p4, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 143
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    int-to-float p1, p1

    .line 144
    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p0, p3, p1, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
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

.method private getOverlayAlbumIcon(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mCameraIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mPicasaIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mLocalSetIcon:Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 1

    .line 95
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p0, p0

    .line 96
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 97
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p2, :cond_0

    .line 101
    invoke-static {p0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 235
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public requestLabel(Ljava/lang/String;Ljava/lang/String;I)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/gallery/ui/AlbumLabelMaker$AlbumLabelJob;-><init>(Lcom/zui/gallery/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->otherLength:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mLabelWidth:I

    add-int/lit8 p1, p1, 0x0

    .line 129
    iput p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mBitmapWidth:I

    .line 130
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p1, p1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/lit8 p1, p1, 0x0

    iput p1, p0, Lcom/zui/gallery/ui/AlbumLabelMaker;->mBitmapHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
