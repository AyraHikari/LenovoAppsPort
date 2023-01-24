.class public Lcom/zui/gallery/filtershow/caption/view/DrawRect;
.super Landroid/view/View;
.source "DrawRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/caption/view/DrawRect$onStickerMuteListenser;,
        Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;,
        Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawRect"


# instance fields
.field private alignImgArray:[Landroid/graphics/Bitmap;

.field private alignImgArrayInvalid:[Landroid/graphics/Bitmap;

.field private alignImgArrayLast:[Landroid/graphics/Bitmap;

.field private alignRectF:Landroid/graphics/RectF;

.field private canAlignClick:Z

.field private canChangeVH:Z

.field private canDel:Z

.field private canHorizFlipClick:Z

.field private canMuteClick:Z

.field private canScalOrRotate:Z

.field private changVH:Landroid/graphics/RectF;

.field private deleteImgBtn:Landroid/graphics/Bitmap;

.field private deleteRectF:Landroid/graphics/RectF;

.field private filePath:Ljava/lang/String;

.field private horizFlipRectF:Landroid/graphics/RectF;

.field private horizontalFlipImgBtn:Landroid/graphics/Bitmap;

.field private isHorizontal:Z

.field private isInnerDrawRect:Z

.field private isLastCaption:Z

.field private mClickMoveDistance:D

.field private mDrawRectClickListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;

.field private mHasAudio:Z

.field private mIndex:I

.field private mIsVisible:Z

.field private mListPointF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

.field private mMoveOutScreen:Z

.field private mPrevMillionSecond:J

.field private mRectPaint:Landroid/graphics/Paint;

.field private mStickerMuteIndex:I

.field private mStickerMuteListenser:Lcom/zui/gallery/filtershow/caption/view/DrawRect$onStickerMuteListenser;

.field private mSubListPointF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubRectPaint:Landroid/graphics/Paint;

.field private muteImgArray:[Landroid/graphics/Bitmap;

.field private muteRectF:Landroid/graphics/RectF;

.field private prePointF:Landroid/graphics/PointF;

.field private rectPath:Landroid/graphics/Path;

.field private rotationImgBtn:Landroid/graphics/Bitmap;

.field private rotationRectF:Landroid/graphics/RectF;

.field private subCaptionIndex:I

.field private verticalAlignRes:[Landroid/graphics/Bitmap;

.field private verticalAlignResInvalid:[Landroid/graphics/Bitmap;

.field private verticalAlignResLast:[Landroid/graphics/Bitmap;

.field private verticalHorizontalRes:[Landroid/graphics/Bitmap;

.field private viewMode:I

.field private waterMarkBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    .line 37
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->changVH:Landroid/graphics/RectF;

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignRectF:Landroid/graphics/RectF;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->horizFlipRectF:Landroid/graphics/RectF;

    .line 40
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationRectF:Landroid/graphics/RectF;

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->deleteRectF:Landroid/graphics/RectF;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->muteRectF:Landroid/graphics/RectF;

    .line 45
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rectPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    .line 47
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canHorizFlipClick:Z

    .line 48
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canMuteClick:Z

    .line 49
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    .line 50
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    .line 51
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canAlignClick:Z

    .line 52
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canChangeVH:Z

    .line 53
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mIndex:I

    .line 54
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->viewMode:I

    .line 55
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mStickerMuteIndex:I

    .line 56
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mHasAudio:Z

    .line 57
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070327

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    const/4 p2, 0x3

    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 58
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070250

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07010c

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070320

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArrayLast:[Landroid/graphics/Bitmap;

    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArray:[Landroid/graphics/Bitmap;

    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070251

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070321

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArrayInvalid:[Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070108

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->deleteImgBtn:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070202

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->horizontalFlipImgBtn:Landroid/graphics/Bitmap;

    new-array v0, v6, [Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070362

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070361

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->muteImgArray:[Landroid/graphics/Bitmap;

    new-array v0, v6, [Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalHorizontalRes:[Landroid/graphics/Bitmap;

    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    .line 66
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07039b

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f07007c

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignRes:[Landroid/graphics/Bitmap;

    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f07007f

    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    .line 68
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f07039c

    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f07007d

    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignResInvalid:[Landroid/graphics/Bitmap;

    new-array p2, p2, [Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p2, p1

    .line 70
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p2, v4

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p2, v6

    iput-object p2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignResLast:[Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mPrevMillionSecond:J

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mClickMoveDistance:D

    .line 73
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    .line 74
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubRectPaint:Landroid/graphics/Paint;

    .line 75
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mMoveOutScreen:Z

    .line 78
    iput-boolean v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mIsVisible:Z

    const/4 p2, -0x1

    .line 79
    iput p2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->subCaptionIndex:I

    .line 80
    iput-boolean v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isHorizontal:Z

    .line 81
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isLastCaption:Z

    .line 100
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->initRectPaint()V

    .line 101
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->initSubRectPaint()V

    return-void
.end method

.method private bitmapRecycle(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private getSubCaptionIndex(II)I
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubListPointF:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 218
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 220
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubListPointF:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 221
    invoke-virtual {p0, v3, p1, p2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->clickPointIsInnerDrawRect(Ljava/util/List;II)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initRectPaint()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private initSubRectPaint()V
    .locals 7

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubRectPaint:Landroid/graphics/Paint;

    const-string v1, "#9B9B9B"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubRectPaint:Landroid/graphics/Paint;

    const/4 v2, 0x4

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubRectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubRectPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    int-to-float v2, v4

    aput v2, v5, v1

    const/4 v1, 0x0

    invoke-direct {v3, v5, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method private setRectPath(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v1, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 156
    fill-array-data p1, :array_0

    .line 157
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rectPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 158
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rectPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x41700000    # 15.0f
        0x41700000    # 15.0f
        0x0
        0x0
        0x41700000    # 15.0f
        0x41700000    # 15.0f
    .end array-data
.end method


# virtual methods
.method public cleanUp()V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->bitmapRecycle(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    .line 108
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArrayLast:[Landroid/graphics/Bitmap;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 110
    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArrayLast:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->bitmapRecycle(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArrayLast:[Landroid/graphics/Bitmap;

    aput-object v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 113
    :goto_1
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignRes:[Landroid/graphics/Bitmap;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 114
    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->bitmapRecycle(Landroid/graphics/Bitmap;)V

    .line 115
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignRes:[Landroid/graphics/Bitmap;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 118
    :goto_2
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignRes:[Landroid/graphics/Bitmap;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 119
    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->bitmapRecycle(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignRes:[Landroid/graphics/Bitmap;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->deleteImgBtn:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->bitmapRecycle(Landroid/graphics/Bitmap;)V

    .line 124
    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->deleteImgBtn:Landroid/graphics/Bitmap;

    .line 126
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->horizontalFlipImgBtn:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->bitmapRecycle(Landroid/graphics/Bitmap;)V

    .line 127
    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->horizontalFlipImgBtn:Landroid/graphics/Bitmap;

    .line 129
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->muteImgArray:[Landroid/graphics/Bitmap;

    array-length v1, v1

    :goto_3
    if-ge v2, v1, :cond_3

    .line 131
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->muteImgArray:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->bitmapRecycle(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->muteImgArray:[Landroid/graphics/Bitmap;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->waterMarkBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->bitmapRecycle(Landroid/graphics/Bitmap;)V

    .line 136
    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->waterMarkBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public clickPointIsInnerDrawRect(Ljava/util/List;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 398
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 401
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 402
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 403
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    .line 404
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v3, 0x2

    .line 405
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v3, 0x3

    .line 406
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 407
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 408
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 409
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    .line 410
    new-instance v0, Landroid/graphics/Region;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 411
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public curPointIsInnerDrawRect(II)Z
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->clickPointIsInnerDrawRect(Ljava/util/List;II)Z

    move-result p1

    return p1
.end method

.method public getDrawRect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mIsVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 293
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 294
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->setRectPath(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rectPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 304
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->viewMode:I

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 309
    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->deleteImgBtn:Landroid/graphics/Bitmap;

    .line 315
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 316
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 318
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->deleteImgBtn:Landroid/graphics/Bitmap;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    iget-object v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->deleteRectF:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 385
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationImgBtn:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v5, v2

    int-to-float v2, v5

    add-float/2addr v4, v2

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 418
    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x4

    if-eqz p1, :cond_14

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq p1, v3, :cond_7

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float p1, v0, p1

    float-to-double v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float p1, v1, p1

    float-to-double v10, p1

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mClickMoveDistance:D

    const/high16 p1, 0x42c80000    # 100.0f

    cmpg-float p1, v0, p1

    if-lez p1, :cond_6

    .line 567
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-gez p1, :cond_6

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-gez p1, :cond_6

    const/high16 p1, 0x41a00000    # 20.0f

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_1

    goto/16 :goto_0

    .line 571
    :cond_1
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mMoveOutScreen:Z

    if-eqz p1, :cond_2

    .line 572
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mMoveOutScreen:Z

    goto/16 :goto_4

    .line 580
    :cond_2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 581
    iget-object v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 582
    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 583
    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 586
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    if-eqz v2, :cond_4

    .line 587
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    .line 592
    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 593
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 594
    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    float-to-double v6, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float v2, v1, v2

    float-to-double v10, v2

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 595
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v6, v4

    double-to-float v2, v6

    .line 598
    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    .line 599
    iget v5, p1, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    iget-object v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    .line 600
    iget-object v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    new-instance v7, Landroid/graphics/PointF;

    iget v8, p1, Landroid/graphics/PointF;->x:F

    iget v9, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v4, v5, v7}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onScaleXandY(FFLandroid/graphics/PointF;)V

    .line 606
    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float v4, v1, v4

    float-to-double v4, v4

    iget v6, p1, Landroid/graphics/PointF;->x:F

    sub-float v6, v0, v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    .line 607
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    .line 613
    iget-object v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    new-instance v5, Landroid/graphics/PointF;

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v2, v5}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onScaleAndRotate(FLandroid/graphics/PointF;)V

    .line 616
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    if-eqz v2, :cond_5

    .line 617
    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p1, v2, v4}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onDrag(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 619
    :cond_5
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_4

    .line 568
    :cond_6
    :goto_0
    iput-boolean v3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mMoveOutScreen:Z

    goto/16 :goto_4

    .line 456
    :cond_7
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_8

    .line 461
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    .line 462
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onDel()V

    .line 465
    :cond_8
    iget p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->viewMode:I

    if-nez p1, :cond_a

    .line 466
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canAlignClick:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_9

    .line 467
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    .line 468
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isHorizontal:Z

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onAlignClick(Z)V

    .line 470
    :cond_9
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canChangeVH:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_c

    .line 471
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    .line 472
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isHorizontal:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isHorizontal:Z

    .line 473
    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onOrientationChange(Z)V

    goto :goto_1

    :cond_a
    if-ne p1, v3, :cond_c

    .line 476
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canHorizFlipClick:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_b

    .line 477
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onHorizontalFlipClick()V

    .line 479
    :cond_b
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canMuteClick:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mStickerMuteListenser:Lcom/zui/gallery/filtershow/caption/view/DrawRect$onStickerMuteListenser;

    if-eqz p1, :cond_c

    .line 480
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$onStickerMuteListenser;->onStickerMute()V

    .line 484
    :cond_c
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mPrevMillionSecond:J

    sub-long/2addr v0, v6

    .line 485
    iget-wide v6, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mClickMoveDistance:D

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpg-double p1, v6, v8

    if-gez p1, :cond_13

    const-wide/16 v6, 0xc8

    cmp-long p1, v0, v6

    if-gtz p1, :cond_13

    .line 486
    iget p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->viewMode:I

    if-nez p1, :cond_e

    .line 487
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canAlignClick:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canChangeVH:Z

    if-nez p1, :cond_d

    .line 488
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mDrawRectClickListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;

    if-eqz p1, :cond_13

    .line 489
    invoke-interface {p1, v5}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;->onDrawRectClick(I)V

    goto/16 :goto_2

    .line 491
    :cond_d
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canAlignClick:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canChangeVH:Z

    if-nez p1, :cond_13

    .line 496
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_13

    .line 497
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onBeyondDrawRectClick()V

    goto/16 :goto_2

    :cond_e
    if-ne p1, v3, :cond_f

    .line 501
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canHorizFlipClick:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canMuteClick:Z

    if-nez p1, :cond_13

    .line 506
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_13

    .line 507
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onBeyondDrawRectClick()V

    goto :goto_2

    :cond_f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 511
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    if-nez p1, :cond_13

    .line 516
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_13

    .line 517
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onBeyondDrawRectClick()V

    goto :goto_2

    :cond_10
    if-ne p1, v4, :cond_11

    .line 521
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    if-nez p1, :cond_13

    .line 526
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_13

    .line 527
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onBeyondDrawRectClick()V

    goto :goto_2

    :cond_11
    if-ne p1, v2, :cond_13

    .line 532
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    if-nez p1, :cond_12

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    if-nez p1, :cond_12

    .line 533
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mDrawRectClickListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;

    if-eqz p1, :cond_13

    .line 534
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->subCaptionIndex:I

    invoke-interface {p1, v0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;->onDrawRectClick(I)V

    goto :goto_2

    .line 536
    :cond_12
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canAlignClick:Z

    if-nez p1, :cond_13

    .line 541
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_13

    .line 542
    invoke-interface {p1}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onBeyondDrawRectClick()V

    .line 548
    :cond_13
    :goto_2
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    .line 549
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    .line 550
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    .line 552
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canAlignClick:Z

    .line 553
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canChangeVH:Z

    .line 554
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canHorizFlipClick:Z

    .line 555
    iput-boolean v5, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canMuteClick:Z

    const-wide/16 v0, 0x0

    .line 556
    iput-wide v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mClickMoveDistance:D

    goto :goto_4

    .line 421
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mPrevMillionSecond:J

    .line 422
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->rotationRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canScalOrRotate:Z

    .line 423
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->deleteRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canDel:Z

    .line 424
    iget p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->viewMode:I

    if-nez p1, :cond_15

    .line 425
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canAlignClick:Z

    .line 426
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->changVH:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canChangeVH:Z

    goto :goto_3

    :cond_15
    if-ne p1, v3, :cond_16

    .line 428
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->horizFlipRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canHorizFlipClick:Z

    .line 429
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->muteRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->canMuteClick:Z

    .line 432
    :cond_16
    :goto_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    if-eqz p1, :cond_17

    .line 433
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p1, v4}, Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;->onTouchDown(Landroid/graphics/PointF;)V

    .line 436
    :cond_17
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_18

    float-to-int p1, v0

    float-to-int v2, v1

    .line 437
    invoke-virtual {p0, p1, v2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->curPointIsInnerDrawRect(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    .line 439
    :cond_18
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isInnerDrawRect:Z

    if-eqz p1, :cond_19

    float-to-int p1, v0

    float-to-int v2, v1

    .line 440
    invoke-direct {p0, p1, v2}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->getSubCaptionIndex(II)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->subCaptionIndex:I

    .line 442
    :cond_19
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->prePointF:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_1a
    :goto_4
    return v3
.end method

.method public setAlignIndex(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mIndex:I

    .line 231
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->invalidate()V

    return-void
.end method

.method public setCompoundDrawRect(Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;>;I)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    .line 269
    iput-object p2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mSubListPointF:Ljava/util/List;

    .line 270
    iput p3, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->viewMode:I

    .line 271
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->invalidate()V

    return-void
.end method

.method public setDrawRect(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;I)V"
        }
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListPointF:Ljava/util/List;

    .line 250
    iput p2, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->viewMode:I

    .line 251
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->invalidate()V

    return-void
.end method

.method public setDrawRectClickListener(Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mDrawRectClickListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$onDrawRectClickListener;

    return-void
.end method

.method public setDrawRectVisible(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mIsVisible:Z

    .line 260
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->invalidate()V

    return-void
.end method

.method public setHorizontal(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isHorizontal:Z

    return-void
.end method

.method public setLastCaption(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->isLastCaption:Z

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArrayInvalid:[Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArrayLast:[Landroid/graphics/Bitmap;

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignResInvalid:[Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignResLast:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArray:[Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->alignImgArrayLast:[Landroid/graphics/Bitmap;

    .line 90
    iget-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignRes:[Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->verticalAlignResLast:[Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method public setMuteVisible(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mHasAudio:Z

    .line 241
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->invalidate()V

    return-void
.end method

.method public setOnTouchListener(Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mListener:Lcom/zui/gallery/filtershow/caption/view/DrawRect$OnTouchListener;

    return-void
.end method

.method public setRectColor(Ljava/lang/String;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStickerMuteIndex(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mStickerMuteIndex:I

    .line 236
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->invalidate()V

    return-void
.end method

.method public setStickerMuteListenser(Lcom/zui/gallery/filtershow/caption/view/DrawRect$onStickerMuteListenser;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/view/DrawRect;->mStickerMuteListenser:Lcom/zui/gallery/filtershow/caption/view/DrawRect$onStickerMuteListenser;

    return-void
.end method
