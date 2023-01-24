.class public Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;
.super Landroid/view/View;
.source "ContinuousThumbnailSlidingView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinuousThumbnailSlidingView"


# instance fields
.field private height:I

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field

.field private longThubmnailsBitmap:Landroid/graphics/Bitmap;

.field private mCurrentPosition:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->mCurrentPosition:I

    .line 30
    iput v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->height:I

    .line 31
    iput v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->width:I

    .line 34
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->initParameter(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->mCurrentPosition:I

    .line 30
    iput p1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->height:I

    .line 31
    iput p1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->width:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->mCurrentPosition:I

    .line 30
    iput p2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->height:I

    .line 31
    iput p2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->width:I

    .line 43
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->initParameter(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->mCurrentPosition:I

    .line 30
    iput p2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->height:I

    .line 31
    iput p2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->width:I

    .line 48
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->initParameter(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->height:I

    return p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->width:I

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->initParameter(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private initParameter(Landroid/content/Context;)V
    .locals 2

    .line 52
    iget v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->height:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->width:I

    if-ge v0, v1, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 54
    iput v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->height:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->width:I

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 159
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 163
    div-int/2addr v1, v0

    .line 164
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    iget v2, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->width:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->mCurrentPosition:I

    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 167
    iget-object v1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->longThubmnailsBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    .line 153
    :cond_0
    iput p1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->mCurrentPosition:I

    .line 154
    invoke-virtual {p0}, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;->itemList:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView$1;-><init>(Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 149
    invoke-virtual {v0, v1}, Lcom/zui/gallery/trash/ContinuousThumbnailSlidingView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method
