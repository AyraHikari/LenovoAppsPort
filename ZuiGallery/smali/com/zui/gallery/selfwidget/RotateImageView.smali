.class public Lcom/zui/gallery/selfwidget/RotateImageView;
.super Lcom/zui/gallery/selfwidget/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/zui/gallery/selfwidget/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "RotateImageView"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

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

    .line 57
    invoke-direct {p0, p1}, Lcom/zui/gallery/selfwidget/TwoStateImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

    .line 44
    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mStartDegree:I

    .line 45
    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mTargetDegree:I

    .line 47
    iput-boolean p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mEnableAnimation:Z

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationStartTime:J

    .line 50
    iput-wide v0, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationEndTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/selfwidget/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

    .line 44
    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mStartDegree:I

    .line 45
    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mTargetDegree:I

    .line 47
    iput-boolean p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mClockwise:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 49
    iput-wide p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationStartTime:J

    .line 50
    iput-wide p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected getDegree()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mTargetDegree:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 96
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 100
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 101
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 105
    :cond_1
    iget v1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

    iget v4, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mTargetDegree:I

    if-eq v1, v4, :cond_5

    .line 106
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 107
    iget-wide v6, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationEndTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 108
    iget-wide v6, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 109
    iget v4, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mStartDegree:I

    .line 110
    iget-boolean v5, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mClockwise:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_3

    .line 111
    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    :cond_3
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 112
    :goto_1
    iput v4, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

    .line 113
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->invalidate()V

    goto :goto_2

    .line 115
    :cond_4
    iget v1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

    .line 119
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getPaddingLeft()I

    move-result v1

    .line 120
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getPaddingTop()I

    move-result v4

    .line 121
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getPaddingRight()I

    move-result v5

    .line 122
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getPaddingBottom()I

    move-result v6

    .line 123
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 124
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 129
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

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

    .line 131
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v10, v11

    .line 132
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 134
    :cond_7
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    iget v1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v2

    .line 136
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 137
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 150
    iput-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {p0, p1}, Lcom/zui/gallery/selfwidget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    .line 152
    invoke-virtual {p0, p1}, Lcom/zui/gallery/selfwidget/RotateImageView;->setVisibility(I)V

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 157
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 158
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 159
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 162
    iput-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 166
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mEnableAnimation:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 171
    aget-object v2, p1, v0

    aput-object v2, p1, v1

    .line 172
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v1, p1, v0

    .line 173
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v0, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 174
    invoke-virtual {p0, p1}, Lcom/zui/gallery/selfwidget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    .line 167
    iput-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 168
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v1, p1, v0

    .line 169
    iget-object p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/zui/gallery/selfwidget/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    .line 67
    iput-boolean p2, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_0

    .line 69
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 70
    :goto_0
    iget p2, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mTargetDegree:I

    if-ne p1, p2, :cond_1

    return-void

    .line 72
    :cond_1
    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mTargetDegree:I

    .line 73
    iget-boolean p2, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mEnableAnimation:Z

    if-eqz p2, :cond_5

    .line 74
    iget p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mStartDegree:I

    .line 75
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationStartTime:J

    .line 77
    iget p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mTargetDegree:I

    iget p2, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

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

    .line 84
    :goto_2
    iput-boolean p2, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mClockwise:Z

    .line 85
    iget-wide v0, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationStartTime:J

    .line 86
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mAnimationEndTime:J

    goto :goto_3

    .line 88
    :cond_5
    iput p1, p0, Lcom/zui/gallery/selfwidget/RotateImageView;->mCurrentDegree:I

    .line 91
    :goto_3
    invoke-virtual {p0}, Lcom/zui/gallery/selfwidget/RotateImageView;->invalidate()V

    return-void
.end method
