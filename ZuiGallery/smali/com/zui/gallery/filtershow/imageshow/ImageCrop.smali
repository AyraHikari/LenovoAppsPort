.class public Lcom/zui/gallery/filtershow/imageshow/ImageCrop;
.super Lcom/zui/gallery/filtershow/imageshow/ImageShow;
.source "ImageCrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;
    }
.end annotation


# static fields
.field private static final ERROR:F = 0.5f

.field private static final HORIZONTAL_1TO1:I = 0x7

.field private static final HORIZONTAL_4TO3:I = 0x8

.field private static final HORIZONTAL_FREEDOM:I = 0x6

.field private static final HORIZONTAL_ORIGINAL:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cropType:I

.field private lastfix:Z

.field private mCropIndicator:Landroid/graphics/drawable/Drawable;

.field private mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

.field private mCropRectIndicatorHorizontal:Landroid/graphics/drawable/Drawable;

.field private mCropRectIndicatorVertical:Landroid/graphics/drawable/Drawable;

.field private mDisplayCropMatrix:Landroid/graphics/Matrix;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMatrixInverse:Landroid/graphics/Matrix;

.field mEditorCrop:Lcom/zui/gallery/filtershow/editors/EditorCrop;

.field private mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

.field private mImageBounds:Landroid/graphics/RectF;

.field private mIndicatorRectHeight:I

.field private mIndicatorRectWidth:I

.field private mIndicatorSize:I

.field mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

.field private mMinSideSize:I

.field private mMovingBlock:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevX:F

.field private mPrevY:F

.field private mScreenCropBounds:Landroid/graphics/RectF;

.field private mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

.field private mTouchTolerance:I

.field public mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

.field private mValidDraw:Z

.field private saveRectf:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 88
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 54
    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 55
    new-instance v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMovingBlock:Z

    .line 63
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 64
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayCropMatrix:Landroid/graphics/Matrix;

    .line 65
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    .line 66
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevX:F

    .line 67
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevY:F

    const/16 v2, 0x5a

    .line 68
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    const/16 v2, 0x28

    .line 69
    iput v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 75
    sget-object v2, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    .line 76
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mValidDraw:Z

    .line 77
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 79
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    .line 80
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    .line 81
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    .line 89
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    .line 51
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 53
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 54
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 55
    new-instance v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMovingBlock:Z

    .line 63
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 64
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayCropMatrix:Landroid/graphics/Matrix;

    .line 65
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 66
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevX:F

    .line 67
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevY:F

    const/16 v1, 0x5a

    .line 68
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    const/16 v1, 0x28

    .line 69
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 75
    sget-object v1, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    .line 76
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mValidDraw:Z

    .line 77
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 79
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    .line 80
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    .line 81
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    .line 94
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    .line 51
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 53
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 54
    new-instance p3, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 55
    new-instance p3, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-direct {p3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    const/4 p3, 0x0

    .line 62
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMovingBlock:Z

    .line 63
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 64
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayCropMatrix:Landroid/graphics/Matrix;

    .line 65
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevX:F

    .line 67
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevY:F

    const/16 v0, 0x5a

    .line 68
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    const/16 v0, 0x28

    .line 69
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    .line 75
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    .line 76
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mValidDraw:Z

    .line 77
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 79
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    .line 80
    iput p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    .line 81
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    .line 99
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private bitCycleLeft(III)I
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p3

    sub-int/2addr v1, v0

    and-int v0, p1, v1

    .line 341
    rem-int/2addr p2, p3

    sub-int/2addr p3, p2

    shr-int p3, v0, p3

    shl-int p2, v0, p2

    and-int/2addr p2, v1

    not-int v0, v1

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method private clearDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    sput-boolean v0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->change:Z

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 256
    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 257
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->invalidate()V

    return-void
.end method

.method private decode(IF)I
    .locals 2

    .line 354
    invoke-static {p2}, Lcom/zui/gallery/filtershow/crop/CropMath;->constrainedRotation(F)I

    move-result p2

    const/16 v0, 0x5a

    const/4 v1, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    const/4 p2, 0x3

    .line 361
    invoke-direct {p0, p1, p2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    return p1

    :cond_1
    const/4 p2, 0x2

    .line 359
    invoke-direct {p0, p1, p2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    return p1

    :cond_2
    const/4 p2, 0x1

    .line 357
    invoke-direct {p0, p1, p2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->bitCycleLeft(III)I

    move-result p1

    return p1
.end method

.method private forceStateConsistency()V
    .locals 13

    .line 368
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 371
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCropObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "complFIX"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!mUpdateHolder.equals(mGeometry): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation == h.rotation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v6, v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    const/4 v7, 0x0

    if-ne v4, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " straighten == h.straighten: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget v6, v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mirror == h.mirror: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v6, v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    if-ne v4, v6, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v7

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " crop == h.crop: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    const/4 v6, 0x0

    if-nez v4, :cond_3

    move-object v4, v6

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v8, v8, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v4, v8}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mUpdateHolder: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    const-string v8, " bottom: "

    const-string v9, " top\uff1a "

    const-string v10, " right: "

    const-string v11, " left: "

    if-nez v4, :cond_4

    move-object v4, v6

    goto :goto_4

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v12, v12, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v12, v12, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v12, v12, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v12, v12, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mGeometry: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v6, v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v6, v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v6, v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v6, v6, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImageBounds.width() != width: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v6, v1

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_6

    move v4, v5

    goto :goto_6

    :cond_6
    move v4, v7

    :goto_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " width1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " width2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImageBounds.height() != height: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v8, v0

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_7

    move v7, v5

    :cond_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " height1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " height2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!mLocalRep.getCrop().equals(mUpdateHolder.crop): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getCrop()Landroid/graphics/RectF;

    move-result-object v4

    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v7, v7, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    const-string v3, "fixtest"

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-virtual {v2, v4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    .line 397
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v2, v2, v8

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 398
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->getCrop()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 399
    :cond_8
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v6, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 400
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-virtual {v2, v4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->set(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V

    .line 401
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v2, v4}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setCrop(Landroid/graphics/RectF;)V

    .line 403
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->unanimous()V

    .line 404
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 405
    invoke-static {v2, v1, v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->findScaledCrop(Landroid/graphics/RectF;II)V

    .line 406
    new-instance v0, Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget v4, v4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v4}, Lcom/zui/gallery/filtershow/crop/CropObject;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 407
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    .line 410
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    if-eqz v0, :cond_9

    const-string v0, "forceStateConsistency: aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

    .line 411
    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 412
    invoke-virtual {p0, v0, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->updateCrop(FF)V

    .line 414
    :cond_9
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->clearDisplay()V

    .line 418
    :cond_a
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    if-eqz v0, :cond_b

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " width3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    const-string v0, " null3 "

    .line 421
    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method private internallyUpdateLocalRep(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    .line 159
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, v0, p2}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->findNormalizedCrop(Landroid/graphics/RectF;II)V

    const-string p2, "complFIX"

    const-string v0, "mGeometry: reSET"

    .line 160
    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object p2, p2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 162
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-virtual {p2, v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->set(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V

    .line 163
    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setCrop(Landroid/graphics/RectF;)V

    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070104

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f070105

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropRectIndicatorHorizontal:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f070106

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropRectIndicatorVertical:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f060156

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mIndicatorSize:I

    const v0, 0x7f060155

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mIndicatorRectHeight:I

    const v0, 0x7f060154

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mIndicatorRectWidth:I

    const v0, 0x7f060157

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    const v0, 0x7f060158

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    return-void
.end method

.method private unanimous()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    if-eqz v1, :cond_0

    .line 148
    iget-object v0, v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iput-object v0, v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    .line 149
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->setCrop(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustCropChange()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 229
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 230
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v3}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 231
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    sput-boolean v0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->change:Z

    .line 244
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hasModifications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->enableSave(Z)V

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->enableSave(Z)V

    goto :goto_1

    .line 232
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->enableSave(Z)V

    .line 233
    sput-boolean v2, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->change:Z

    :goto_1
    return-void
.end method

.method public applyAspect(FF)V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_3

    cmpg-float v0, p2, v0

    if-lez v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v0, v0, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->needsDimensionSwap(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, p2

    move p2, p1

    move p1, v2

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropObject;->setInnerAspectRatio(FF)Z

    move-result p1

    if-nez p1, :cond_2

    .line 314
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->TAG:Ljava/lang/String;

    const-string p2, "failed to set aspect ratio"

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->internallyUpdateLocalRep(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 317
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->invalidate()V

    return-void

    .line 305
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arguments to applyAspect"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyFreeAspect()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->unsetAspectRatio()V

    .line 265
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->invalidate()V

    return-void
.end method

.method public applyOriginalAspect()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 274
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 276
    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->applyAspect(FF)V

    .line 277
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1, v0, v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->internallyUpdateLocalRep(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 280
    :cond_1
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->TAG:Ljava/lang/String;

    const-string v1, "failed to set aspect ratio original"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->invalidate()V

    return-void
.end method

.method public applyOriginalAspect2()V
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 291
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 293
    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->applyAspect(FF)V

    .line 294
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1, v0, v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->resetBoundsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 295
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->internallyUpdateLocalRep(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public convertBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 623
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 624
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 629
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 630
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 631
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const-string v1, "BOTH"

    .line 632
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 634
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_0
    const-string v1, "HORIZONTAL"

    .line 635
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_1
    const-string v1, "VERTICAL"

    .line 637
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 638
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v4, v8

    move v5, v9

    .line 644
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 645
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v11, p1, p2, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v10

    :cond_2
    return-object p1

    :cond_3
    return-object v0
.end method

.method public getCropObj()Lcom/zui/gallery/filtershow/crop/CropObject;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    return-object v0
.end method

.method public getCropType()I
    .locals 1

    .line 663
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    return v0
.end method

.method public getDegree(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)I
    .locals 1

    .line 602
    sget-object v0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$1;->$SwitchMap$com$zui$gallery$filtershow$filters$FilterRotateRepresentation$Rotation:[I

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, -0x10e

    return p1

    :cond_1
    const/16 p1, -0xb4

    return p1

    :cond_2
    const/16 p1, -0x5a

    return p1
.end method

.method public getFinalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpdateHolder.crop.left "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "complFIX"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 442
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v4

    .line 445
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 446
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFiltersOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 448
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rotation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v8, v8, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PIC_rotaion"

    invoke-static {v8, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v7, v7, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    sget-object v8, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v7, v7, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    sget-object v8, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->TWO_SEVENTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 459
    :cond_1
    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v7, v7, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v7}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->convertBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_2

    .line 451
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v7, v7, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v7}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HORIZONTAL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "VERTICAL"

    if-eqz v7, :cond_3

    .line 452
    invoke-virtual {p0, v5, v9}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->convertBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_2
    move-object v7, v5

    goto :goto_3

    .line 453
    :cond_3
    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v7, v7, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v7}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 454
    invoke-virtual {p0, v5, v8}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->convertBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_2

    .line 456
    :cond_4
    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v7, v7, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->mirror:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v7}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->convertBmp(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_2

    :goto_3
    if-nez v7, :cond_5

    .line 463
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->TAG:Ljava/lang/String;

    const-string v0, "bitmapHigh ==null ,return"

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 467
    :cond_5
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 468
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v5, v5, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->getDegree(Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 469
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 470
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    .line 469
    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 473
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 472
    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 474
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 475
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x0

    .line 476
    invoke-virtual {v7, v5, v9, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-nez v6, :cond_6

    .line 479
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->invalidateFiltersOnly()V

    .line 482
    :cond_6
    iget-boolean v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mValidDraw:Z

    if-eqz v5, :cond_17

    if-nez v6, :cond_7

    goto/16 :goto_c

    .line 492
    :cond_7
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    const-string v7, " height: "

    const-string v8, "fixtest"

    if-eqz v5, :cond_8

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " width "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string v5, " null "

    .line 495
    invoke-static {v8, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_4
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->forceStateConsistency()V

    const-string v5, " complFIX "

    .line 499
    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    if-eqz v1, :cond_9

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " width2 "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v10

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const-string v1, " null2 "

    .line 503
    invoke-static {v8, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_5
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayCropMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v1, :cond_d

    .line 514
    :cond_a
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/crop/CropObject;->unsetAspectRatio()V

    .line 515
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 516
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 515
    invoke-static {v1, v5, v7, v8, v10}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getFullGeometryToScreenMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 517
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget v1, v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 518
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iput v9, v5, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 519
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 520
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    .line 519
    invoke-static {v5, v7, v8, v10, v11}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->getFullGeometryToScreenMatrix(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;IIII)Landroid/graphics/Matrix;

    move-result-object v5

    iput-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayCropMatrix:Landroid/graphics/Matrix;

    .line 521
    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iput v1, v5, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->straighten:F

    .line 522
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    .line 523
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 524
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayCropMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 525
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->TAG:Ljava/lang/String;

    const-string v0, "could not invert display matrix"

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iput-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    return-void

    .line 530
    :cond_b
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMinSideSize:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->setMinInnerSideSize(F)V

    .line 531
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mTouchTolerance:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->setTouchTolerance(F)V

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 533
    fill-array-data v2, :array_0

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/2addr v5, v1

    const/4 v5, 0x0

    move v7, v5

    :goto_6
    if-ge v7, v1, :cond_c

    .line 542
    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    aget v10, v2, v7

    invoke-virtual {v8, v10}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(I)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 548
    :cond_c
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1, v5}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(I)Z

    .line 553
    :cond_d
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 554
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 555
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 557
    instance-of v1, v4, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-nez v1, :cond_e

    instance-of v2, v4, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-nez v2, :cond_e

    if-nez v0, :cond_e

    .line 558
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 561
    :cond_e
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds(Landroid/graphics/RectF;)V

    .line 563
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 564
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    cmpl-float v3, v3, v9

    if-nez v3, :cond_f

    .line 565
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    iput v9, v3, Landroid/graphics/RectF;->left:F

    .line 566
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 569
    :cond_f
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    .line 570
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    .line 569
    invoke-static {v3, v5, v2}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->findNormalizedCrop(Landroid/graphics/RectF;II)V

    .line 571
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 572
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 571
    invoke-static {v2, v3, v5}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;->findScaledCrop(Landroid/graphics/RectF;II)V

    .line 576
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayCropMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-nez v1, :cond_16

    .line 579
    instance-of v1, v4, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-nez v1, :cond_16

    if-nez v0, :cond_16

    .line 580
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawCropRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 581
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawShade(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 582
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawRuleOfThird(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 584
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_12

    .line 585
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    if-eq v0, v2, :cond_11

    if-ne v0, v1, :cond_10

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->isFixedAspect()Z

    move-result v0

    goto :goto_8

    :cond_11
    :goto_7
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    :goto_8
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    goto :goto_b

    .line 587
    :cond_12
    iget v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    if-eq v0, v2, :cond_14

    if-ne v0, v1, :cond_13

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->isFixedAspect2()Z

    move-result v0

    goto :goto_a

    :cond_14
    :goto_9
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    :goto_a
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    .line 588
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/crop/CropObject;->isFixedAspect()Z

    move-result v1

    if-eq v0, v1, :cond_15

    .line 589
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/crop/CropObject;->setIsFixedAspect(Z)V

    .line 592
    :cond_15
    :goto_b
    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropRectIndicatorHorizontal:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropRectIndicatorVertical:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mIndicatorSize:I

    iget v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mIndicatorRectWidth:I

    iget v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mIndicatorRectHeight:I

    iget-object v9, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mScreenCropBounds:Landroid/graphics/RectF;

    iget-boolean v10, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 594
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getSelectState()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->rotation:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->value()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->decode(IF)I

    move-result v11

    move-object v2, p1

    .line 592
    invoke-static/range {v2 .. v11}, Lcom/zui/gallery/filtershow/crop/CropDrawingUtils;->drawIndicators(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIILandroid/graphics/RectF;ZI)V

    .line 596
    :cond_16
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    :cond_17
    :goto_c
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x8
        0x1
        0x4
    .end array-data
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->onSizeChanged(IIII)V

    .line 433
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->clearDisplay()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mDisplayMatrixInverse:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v1, v5, v3

    .line 176
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 177
    aget v0, v5, v6

    .line 178
    aget v1, v5, v3

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    goto/16 :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    sget-object v2, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    if-ne p1, v2, :cond_7

    .line 210
    iget p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevX:F

    sub-float p1, v0, p1

    .line 211
    iget v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevY:F

    sub-float v2, v1, v2

    .line 212
    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v4, p1, v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->moveCurrentSelection(FF)Z

    .line 213
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevX:F

    .line 214
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevY:F

    goto/16 :goto_0

    .line 192
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    sget-object v2, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    if-ne p1, v2, :cond_3

    .line 193
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1, v6}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(I)Z

    .line 194
    iput-boolean v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMovingBlock:Z

    .line 195
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevX:F

    .line 196
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevY:F

    .line 197
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    const-string p1, "complFIX"

    const-string v0, "mGeometry: reSET 2222"

    .line 198
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->internallyUpdateLocalRep(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 202
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent: setCROP "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "complFI222"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-eqz p1, :cond_4

    .line 204
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->lastfix:Z

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/crop/CropObject;->resetFix(Z)V

    .line 206
    :cond_4
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    iget-object v7, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v8, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-virtual/range {v4 .. v9}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCrrop(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;Lcom/zui/gallery/filtershow/crop/CropObject;Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V

    goto :goto_0

    .line 181
    :cond_5
    sput-boolean v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    .line 182
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    sget-object v2, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->NONE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    if-ne p1, v2, :cond_7

    .line 183
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(FF)Z

    move-result p1

    if-nez p1, :cond_6

    .line 184
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/crop/CropObject;->selectEdge(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mMovingBlock:Z

    .line 186
    :cond_6
    iput v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevX:F

    .line 187
    iput v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mPrevY:F

    .line 188
    sget-object p1, Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;->MOVE:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mState:Lcom/zui/gallery/filtershow/imageshow/ImageCrop$Mode;

    .line 223
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->invalidate()V

    :cond_8
    :goto_1
    return v3
.end method

.method public saveParamter(Z)V
    .locals 7

    .line 667
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->resetFix(Z)V

    .line 670
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCrrop(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;Lcom/zui/gallery/filtershow/crop/CropObject;Landroid/graphics/RectF;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;)V

    return-void
.end method

.method public setCropType(I)V
    .locals 0

    .line 659
    iput p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    return-void
.end method

.method public setEditor(Lcom/zui/gallery/filtershow/editors/EditorCrop;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mEditorCrop:Lcom/zui/gallery/filtershow/editors/EditorCrop;

    return-void
.end method

.method public setFilterCropRepresentation(Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;)V
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v2, v2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v1, v1, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v2, v2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " crop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropTEST"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 121
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->unanimous()V

    .line 122
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->initializeHolder(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mValidDraw:Z

    return-void
.end method

.method public setFilterCropRepresentation2(Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/crop/CropObject;Landroid/graphics/RectF;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 129
    iput-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 130
    iput-object p3, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 131
    iput-object p4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 132
    iput-object p5, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mImageBounds:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    .line 133
    new-instance p1, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 135
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->unanimous()V

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mUpdateHolder.crop.left ONCEEEEEEEEEEEEEEEEE "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    const/4 p3, 0x0

    if-nez p2, :cond_1

    move-object p2, p3

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "complFIX"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    iget-object p4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mLocalRep:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-static {p1, p4}, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils;->initializeHolder(Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mUpdateHolder.crop.left TWICEEEEEEEEEEEEE "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    if-nez p4, :cond_2

    move-object p4, p3

    goto :goto_1

    :cond_2
    iget-object p4, p4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->left:F

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    :goto_1
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p4}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->internallyUpdateLocalRep(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mUpdateHolder.crop.left OKKKKKKKKKKKKKKKKKKKKK "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mUpdateHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    iget-object p3, p4, Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;->crop:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :goto_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mValidDraw:Z

    return-void
.end method

.method public setSaveRectf(Landroid/graphics/RectF;)V
    .locals 2

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveRectf111: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hhvv"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    return-void
.end method

.method public updateCrop(FF)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    if-eqz v0, :cond_2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView: aaa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hhvv"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveRectf:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->cropType:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {v1, v0, p1, p2}, Lcom/zui/gallery/filtershow/crop/CropObject;->setInnerAspectRatio2(Landroid/graphics/RectF;FF)Z

    :cond_1
    :goto_0
    const-string p1, "complFIX"

    const-string p2, "mGeometry: reSET333333"

    .line 330
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropObject;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/crop/CropObject;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->internallyUpdateLocalRep(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method
