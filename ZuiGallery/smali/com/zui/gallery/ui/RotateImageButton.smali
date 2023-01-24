.class public Lcom/zui/gallery/ui/RotateImageButton;
.super Landroid/widget/ImageView;
.source "RotateImageButton.java"


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "RotateImageView"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field protected mBorderThickness:I

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    .line 24
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mStartDegree:I

    .line 25
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    .line 27
    iput-boolean p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mEnableAnimation:Z

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationStartTime:J

    .line 30
    iput-wide v0, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationEndTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    .line 24
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mStartDegree:I

    .line 25
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    .line 27
    iput-boolean p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 29
    iput-wide p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationStartTime:J

    .line 30
    iput-wide p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationEndTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    .line 24
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mStartDegree:I

    .line 25
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    .line 27
    iput-boolean p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 29
    iput-wide p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationStartTime:J

    .line 30
    iput-wide p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationEndTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    .line 24
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mStartDegree:I

    .line 25
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    .line 27
    iput-boolean p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 29
    iput-wide p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationStartTime:J

    .line 30
    iput-wide p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected getDegree()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 86
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 90
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 91
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 95
    :cond_1
    iget v1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    iget v4, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    if-eq v1, v4, :cond_5

    .line 96
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 97
    iget-wide v6, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationEndTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 98
    iget-wide v6, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 99
    iget v4, p0, Lcom/zui/gallery/ui/RotateImageButton;->mStartDegree:I

    .line 100
    iget-boolean v5, p0, Lcom/zui/gallery/ui/RotateImageButton;->mClockwise:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_3

    .line 101
    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    :cond_3
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 102
    :goto_1
    iput v4, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    .line 103
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->invalidate()V

    goto :goto_2

    .line 105
    :cond_4
    iget v1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    iput v1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    .line 109
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getPaddingLeft()I

    move-result v1

    .line 110
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getPaddingTop()I

    move-result v4

    .line 111
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getPaddingRight()I

    move-result v5

    .line 112
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getPaddingBottom()I

    move-result v6

    .line 113
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 114
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 119
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_7

    if-lt v7, v2, :cond_6

    if-ge v5, v3, :cond_7

    :cond_6
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    .line 121
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v10, v11

    .line 122
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 124
    :cond_7
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    iget v1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v2

    .line 126
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 127
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumb:Landroid/graphics/Bitmap;

    .line 140
    iput-object p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/RotateImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    .line 142
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/RotateImageButton;->setVisibility(I)V

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 149
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 152
    iget v2, p0, Lcom/zui/gallery/ui/RotateImageButton;->mBorderThickness:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumb:Landroid/graphics/Bitmap;

    .line 156
    iget-object p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/zui/gallery/ui/RotateImageButton;->mEnableAnimation:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    aget-object v2, p1, v1

    aput-object v2, p1, v0

    .line 162
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, p1, v1

    .line 163
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 164
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/RotateImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 158
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, p1, v1

    .line 159
    iget-object p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/RotateImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :goto_1
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/RotateImageButton;->setVisibility(I)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    .line 57
    iput-boolean p2, p0, Lcom/zui/gallery/ui/RotateImageButton;->mEnableAnimation:Z

    if-ltz p1, :cond_0

    .line 59
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 60
    :goto_0
    iget p2, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    if-ne p1, p2, :cond_1

    return-void

    .line 62
    :cond_1
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    .line 63
    iget-boolean p2, p0, Lcom/zui/gallery/ui/RotateImageButton;->mEnableAnimation:Z

    if-eqz p2, :cond_5

    .line 64
    iget p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mStartDegree:I

    .line 65
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationStartTime:J

    .line 67
    iget p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mTargetDegree:I

    iget p2, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 p2, 0xb4

    if-le p1, p2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 74
    :goto_2
    iput-boolean p2, p0, Lcom/zui/gallery/ui/RotateImageButton;->mClockwise:Z

    .line 75
    iget-wide v0, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationStartTime:J

    .line 76
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zui/gallery/ui/RotateImageButton;->mAnimationEndTime:J

    goto :goto_3

    .line 78
    :cond_5
    iput p1, p0, Lcom/zui/gallery/ui/RotateImageButton;->mCurrentDegree:I

    .line 81
    :goto_3
    invoke-virtual {p0}, Lcom/zui/gallery/ui/RotateImageButton;->invalidate()V

    return-void
.end method
