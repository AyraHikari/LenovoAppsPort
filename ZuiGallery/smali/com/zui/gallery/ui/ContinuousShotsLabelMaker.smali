.class public Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;
.super Ljava/lang/Object;
.source "ContinuousShotsLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContinuousTitlePaint:Landroid/text/TextPaint;

.field private final mDurationTextPaint:Landroid/text/TextPaint;

.field private mLabelWidth:I

.field private final mSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    .line 48
    iget p1, p2, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->continuousTitleFontSize:I

    iget v0, p2, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->continuousTitleColor:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mContinuousTitlePaint:Landroid/text/TextPaint;

    .line 49
    iget p1, p2, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->durationFontSize:I

    iget p2, p2, Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;->durationFontColor:I

    invoke-static {p1, p2, v1}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mDurationTextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mSpec:Lcom/zui/gallery/ui/AlbumSlotRenderer$LabelSpec;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mContinuousTitlePaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mDurationTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 1

    .line 86
    monitor-enter p5

    int-to-float p4, p4

    .line 87
    :try_start_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, p4, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 88
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    int-to-float p1, p1

    .line 89
    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p0, p3, p1, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 90
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

.method private static getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 1

    .line 57
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p0, p0

    .line 58
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 59
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 60
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p2, :cond_0

    .line 62
    invoke-static {p0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public recycleLabel(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 213
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public requestLabel(II)Lcom/zui/gallery/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zui/gallery/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;-><init>(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;II)V

    return-object v0
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

    .line 75
    new-instance v0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker$AlbumLabelJob;-><init>(Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget v0, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/zui/gallery/ui/ContinuousShotsLabelMaker;->mLabelWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
