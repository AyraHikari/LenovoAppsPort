.class public Lcom/zui/gallery/ui/UndoBarView;
.super Lcom/zui/gallery/ui/GLView;
.source "UndoBarView.java"


# static fields
.field private static ANIM_TIME:J = 0xc8L

.field private static final GRAY:I = -0x555556

.field private static final NO_ANIMATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "UndoBarView"

.field private static final WHITE:I = -0x1


# instance fields
.field private mAlpha:F

.field private mAnimationStartTime:J

.field private final mBarHeight:I

.field private final mBarMargin:I

.field private final mClickRegion:I

.field private final mDeletedText:Lcom/zui/gallery/glrenderer/StringTexture;

.field private final mDeletedTextMargin:I

.field private mDownOnButton:Z

.field private mFromAlpha:F

.field private final mIconMargin:I

.field private final mIconSize:I

.field private mOnClickListener:Lcom/zui/gallery/ui/GLView$OnClickListener;

.field private final mPanel:Lcom/zui/gallery/glrenderer/NinePatchTexture;

.field private final mSeparatorBottomMargin:I

.field private final mSeparatorRightMargin:I

.field private final mSeparatorTopMargin:I

.field private final mSeparatorWidth:I

.field private mToAlpha:F

.field private final mUndoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mUndoText:Lcom/zui/gallery/glrenderer/StringTexture;

.field private final mUndoTextMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 62
    invoke-direct {p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const-wide/16 v0, -0x1

    .line 166
    iput-wide v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAnimationStartTime:J

    const/16 v0, 0x30

    .line 63
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarHeight:I

    const/4 v0, 0x4

    .line 64
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarMargin:I

    const/16 v0, 0x10

    .line 65
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoTextMargin:I

    const/16 v1, 0x8

    .line 66
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mIconMargin:I

    const/16 v1, 0x20

    .line 67
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mIconSize:I

    const/16 v1, 0xc

    .line 68
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorRightMargin:I

    const/16 v2, 0xa

    .line 69
    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    iput v3, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorTopMargin:I

    .line 70
    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorBottomMargin:I

    const/4 v2, 0x1

    .line 71
    invoke-static {v2}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    iput v3, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorWidth:I

    .line 72
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    iput v3, p0, Lcom/zui/gallery/ui/UndoBarView;->mDeletedTextMargin:I

    .line 74
    new-instance v3, Lcom/zui/gallery/glrenderer/NinePatchTexture;

    const v4, 0x7f0702da

    invoke-direct {v3, p1, v4}, Lcom/zui/gallery/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/zui/gallery/ui/UndoBarView;->mPanel:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    const v3, 0x7f1002a3

    .line 75
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    const v4, -0x555556

    const/4 v5, 0x0

    .line 75
    invoke-static {v3, v1, v4, v5, v2}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoText:Lcom/zui/gallery/glrenderer/StringTexture;

    const v1, 0x7f1000d4

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v2, -0x1

    .line 77
    invoke-static {v1, v0, v2}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mDeletedText:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 80
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v1, 0x7f07022f

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 82
    iget p1, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarMargin:I

    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoTextMargin:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoText:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mIconMargin:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mIconSize:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorRightMargin:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/ui/UndoBarView;->mClickRegion:I

    return-void
.end method

.method private advanceAnimation()V
    .locals 6

    .line 196
    iget-wide v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/zui/gallery/ui/UndoBarView;->mAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    sget-wide v4, Lcom/zui/gallery/ui/UndoBarView;->ANIM_TIME:J

    long-to-float v1, v4

    div-float/2addr v0, v1

    .line 200
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mFromAlpha:F

    iget v4, p0, Lcom/zui/gallery/ui/UndoBarView;->mToAlpha:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    add-float/2addr v1, v0

    iput v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 201
    invoke-static {v1, v4, v0}, Lcom/zui/gallery/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAlpha:F

    .line 203
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mToAlpha:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 204
    iput-wide v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mAnimationStartTime:J

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 206
    invoke-super {p0, v0}, Lcom/zui/gallery/ui/GLView;->setVisibility(I)V

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/ui/UndoBarView;->invalidate()V

    return-void
.end method

.method private static getTargetAlpha(I)F
    .locals 0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private inUndoButton(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 155
    invoke-virtual {p0}, Lcom/zui/gallery/ui/UndoBarView;->getWidth()I

    move-result v1

    .line 156
    invoke-virtual {p0}, Lcom/zui/gallery/ui/UndoBarView;->getHeight()I

    move-result v2

    .line 157
    iget v3, p0, Lcom/zui/gallery/ui/UndoBarView;->mClickRegion:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    int-to-float v0, v2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public animateVisibility(I)V
    .locals 4

    .line 183
    invoke-static {p1}, Lcom/zui/gallery/ui/UndoBarView;->getTargetAlpha(I)F

    move-result p1

    .line 184
    iget-wide v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAnimationStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mToAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    .line 187
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAlpha:F

    iput v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mFromAlpha:F

    .line 188
    iput p1, p0, Lcom/zui/gallery/ui/UndoBarView;->mToAlpha:F

    .line 189
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAnimationStartTime:J

    const/4 p1, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->setVisibility(I)V

    .line 192
    invoke-virtual {p0}, Lcom/zui/gallery/ui/UndoBarView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 92
    iget p1, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarHeight:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/zui/gallery/ui/UndoBarView;->setMeasuredSize(II)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iput-boolean v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 137
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mDownOnButton:Z

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mOnClickListener:Lcom/zui/gallery/ui/GLView$OnClickListener;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/UndoBarView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/zui/gallery/ui/UndoBarView;->mOnClickListener:Lcom/zui/gallery/ui/GLView$OnClickListener;

    invoke-interface {p1, p0}, Lcom/zui/gallery/ui/GLView$OnClickListener;->onClick(Lcom/zui/gallery/ui/GLView;)V

    .line 141
    :cond_2
    iput-boolean v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mDownOnButton:Z

    goto :goto_0

    .line 134
    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/UndoBarView;->inUndoButton(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/ui/UndoBarView;->mDownOnButton:Z

    :cond_4
    :goto_0
    return v1
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 9

    .line 97
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 98
    invoke-direct {p0}, Lcom/zui/gallery/ui/UndoBarView;->advanceAnimation()V

    const/4 v0, 0x1

    .line 100
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 101
    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAlpha:F

    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 103
    invoke-virtual {p0}, Lcom/zui/gallery/ui/UndoBarView;->getWidth()I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcom/zui/gallery/ui/UndoBarView;->getHeight()I

    .line 105
    iget-object v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mPanel:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    iget v3, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarMargin:I

    mul-int/lit8 v2, v3, 0x2

    sub-int v5, v0, v2

    iget v6, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarHeight:I

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 107
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarMargin:I

    sub-int/2addr v0, v1

    .line 110
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoTextMargin:I

    iget-object v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoText:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/StringTexture;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 111
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarHeight:I

    iget-object v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoText:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 112
    iget-object v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoText:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v2, p1, v0, v1}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 114
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mIconMargin:I

    iget v7, p0, Lcom/zui/gallery/ui/UndoBarView;->mIconSize:I

    add-int/2addr v1, v7

    sub-int/2addr v0, v1

    .line 115
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarHeight:I

    sub-int/2addr v1, v7

    div-int/lit8 v5, v1, 0x2

    .line 116
    iget-object v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mUndoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    move-object v3, p1

    move v4, v0

    move v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 118
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorRightMargin:I

    iget v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 119
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorTopMargin:I

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v2

    .line 120
    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mSeparatorBottomMargin:I

    sub-int/2addr v0, v1

    int-to-float v7, v0

    const v8, -0x555556

    invoke-interface/range {v3 .. v8}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 123
    iget v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarMargin:I

    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mDeletedTextMargin:I

    add-int/2addr v0, v1

    .line 124
    iget v1, p0, Lcom/zui/gallery/ui/UndoBarView;->mBarHeight:I

    iget-object v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mDeletedText:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 125
    iget-object v2, p0, Lcom/zui/gallery/ui/UndoBarView;->mDeletedText:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v2, p1, v0, v1}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 127
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public setOnClickListener(Lcom/zui/gallery/ui/GLView$OnClickListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/zui/gallery/ui/UndoBarView;->mOnClickListener:Lcom/zui/gallery/ui/GLView$OnClickListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 176
    invoke-static {p1}, Lcom/zui/gallery/ui/UndoBarView;->getTargetAlpha(I)F

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAlpha:F

    const-wide/16 v0, -0x1

    .line 177
    iput-wide v0, p0, Lcom/zui/gallery/ui/UndoBarView;->mAnimationStartTime:J

    .line 178
    invoke-super {p0, p1}, Lcom/zui/gallery/ui/GLView;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Lcom/zui/gallery/ui/UndoBarView;->invalidate()V

    return-void
.end method
