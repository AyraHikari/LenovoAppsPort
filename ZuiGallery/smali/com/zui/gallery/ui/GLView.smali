.class public Lcom/zui/gallery/ui/GLView;
.super Ljava/lang/Object;
.source "GLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/GLView$HideFolderAnimation;,
        Lcom/zui/gallery/ui/GLView$ScaleAnimation;,
        Lcom/zui/gallery/ui/GLView$AlphaAnimation;,
        Lcom/zui/gallery/ui/GLView$BaseAnimation;,
        Lcom/zui/gallery/ui/GLView$OnClickListener;
    }
.end annotation


# static fields
.field private static final ALPHA:[F

.field private static final ALPHA_INVERSE:[F

.field private static final Down_HIDE_FOLDER:[F

.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LAYOUT_REQUESTED:I = 0x4

.field private static final FLAG_SET_MEASURED_SIZE:I = 0x2

.field public static final INVISIBLE:I = 0x1

.field private static final SCALE:[F

.field private static final TAG:Ljava/lang/String; = "GLView"

.field private static final UP_HIDE_FOLDER:[F

.field public static final VISIBLE:I

.field private static final inerpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimation:Lcom/zui/gallery/anim/CanvasAnimation;

.field private mBackgroundColor:[F

.field protected final mBounds:Landroid/graphics/Rect;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/ui/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeightSpec:I

.field private mLastWidthSpec:I

.field protected mMeasuredHeight:I

.field protected mMeasuredWidth:I

.field private mMotionTarget:Lcom/zui/gallery/ui/GLView;

.field protected final mPaddings:Landroid/graphics/Rect;

.field protected mParent:Lcom/zui/gallery/ui/GLView;

.field private mRoot:Lcom/zui/gallery/ui/GLRoot;

.field protected mScrollHeight:I

.field protected mScrollWidth:I

.field protected mScrollX:I

.field protected mScrollY:I

.field private mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

.field private mViewFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 623
    fill-array-data v1, :array_0

    sput-object v1, Lcom/zui/gallery/ui/GLView;->SCALE:[F

    .line 626
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v1, Lcom/zui/gallery/ui/GLView;->inerpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 638
    fill-array-data v2, :array_1

    sput-object v2, Lcom/zui/gallery/ui/GLView;->ALPHA:[F

    new-array v1, v1, [F

    .line 641
    fill-array-data v1, :array_2

    sput-object v1, Lcom/zui/gallery/ui/GLView;->ALPHA_INVERSE:[F

    new-array v1, v0, [F

    .line 655
    fill-array-data v1, :array_3

    sput-object v1, Lcom/zui/gallery/ui/GLView;->UP_HIDE_FOLDER:[F

    new-array v0, v0, [F

    .line 658
    fill-array-data v0, :array_4

    sput-object v0, Lcom/zui/gallery/ui/GLView;->Down_HIDE_FOLDER:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    .line 83
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mMeasuredWidth:I

    .line 84
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mMeasuredHeight:I

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lcom/zui/gallery/ui/GLView;->mLastWidthSpec:I

    .line 87
    iput v1, p0, Lcom/zui/gallery/ui/GLView;->mLastHeightSpec:I

    .line 89
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mScrollY:I

    .line 90
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mScrollX:I

    .line 91
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mScrollHeight:I

    .line 92
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mScrollWidth:I

    return-void
.end method

.method private removeOneComponent(Lcom/zui/gallery/ui/GLView;)V
    .locals 9

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mMotionTarget:Lcom/zui/gallery/ui/GLView;

    if-ne v0, p1, :cond_0

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 194
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 196
    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 197
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->onDetachFromRoot()V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p1, Lcom/zui/gallery/ui/GLView;->mParent:Lcom/zui/gallery/ui/GLView;

    return-void
.end method

.method private setBounds(IIII)Z
    .locals 3

    sub-int v0, p3, p1

    .line 382
    iget-object v1, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    sub-int v0, p4, p2

    iget-object v1, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 384
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v0
.end method


# virtual methods
.method public addComponent(Lcom/zui/gallery/ui/GLView;)V
    .locals 1

    .line 156
    iget-object v0, p1, Lcom/zui/gallery/ui/GLView;->mParent:Lcom/zui/gallery/ui/GLView;

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iput-object p0, p1, Lcom/zui/gallery/ui/GLView;->mParent:Lcom/zui/gallery/ui/GLView;

    .line 167
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/GLView;->onAttachToRoot(Lcom/zui/gallery/ui/GLRoot;)V

    :cond_1
    return-void

    .line 157
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public attachToRoot(Lcom/zui/gallery/ui/GLRoot;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mParent:Lcom/zui/gallery/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/GLView;->onAttachToRoot(Lcom/zui/gallery/ui/GLRoot;)V

    return-void
.end method

.method public bounds()Landroid/graphics/Rect;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public detachFromRoot()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mParent:Lcom/zui/gallery/ui/GLView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->assertTrue(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->onDetachFromRoot()V

    return-void
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v7, v1

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 337
    iget-object v5, p0, Lcom/zui/gallery/ui/GLView;->mMotionTarget:Lcom/zui/gallery/ui/GLView;

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-nez v8, :cond_0

    .line 339
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 340
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 341
    iget-object v5, p0, Lcom/zui/gallery/ui/GLView;->mMotionTarget:Lcom/zui/gallery/ui/GLView;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/zui/gallery/ui/GLView;Z)Z

    .line 342
    iput-object v10, p0, Lcom/zui/gallery/ui/GLView;->mMotionTarget:Lcom/zui/gallery/ui/GLView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    .line 344
    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/zui/gallery/ui/GLView;Z)Z

    if-eq v8, v11, :cond_1

    if-ne v8, v9, :cond_2

    .line 347
    :cond_1
    iput-object v10, p0, Lcom/zui/gallery/ui/GLView;->mMotionTarget:Lcom/zui/gallery/ui/GLView;

    :cond_2
    return v9

    :cond_3
    :goto_0
    if-nez v8, :cond_6

    .line 354
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getComponentCount()I

    move-result v1

    sub-int/2addr v1, v9

    move v8, v1

    :goto_1
    if-ltz v8, :cond_6

    .line 355
    invoke-virtual {p0, v8}, Lcom/zui/gallery/ui/GLView;->getComponent(I)Lcom/zui/gallery/ui/GLView;

    move-result-object v10

    .line 356
    invoke-virtual {v10}, Lcom/zui/gallery/ui/GLView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, v7

    move-object v5, v10

    .line 358
    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/zui/gallery/ui/GLView;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 359
    iput-object v10, p0, Lcom/zui/gallery/ui/GLView;->mMotionTarget:Lcom/zui/gallery/ui/GLView;

    return v9

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 364
    :cond_6
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/GLView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;IILcom/zui/gallery/ui/GLView;Z)Z
    .locals 3

    .line 319
    iget-object v0, p4, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 320
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 321
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz p5, :cond_0

    .line 322
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    neg-int p2, v1

    int-to-float p2, p2

    neg-int p3, v2

    int-to-float p3, p3

    .line 323
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 324
    invoke-virtual {p4, p1}, Lcom/zui/gallery/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, v1

    int-to-float p3, v2

    .line 325
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    int-to-float p2, v1

    int-to-float p3, v2

    .line 328
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method dumpTree(Ljava/lang/String;)V
    .locals 5

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLView"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 486
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/GLView;->getComponent(I)Lcom/zui/gallery/ui/GLView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/GLView;->dumpTree(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBackgroundColor()[F
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mBackgroundColor:[F

    return-object v0
.end method

.method public getBoundsOf(Lcom/zui/gallery/ui/GLView;Landroid/graphics/Rect;)Z
    .locals 6

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-eq v1, p0, :cond_1

    if-nez v1, :cond_0

    return v0

    .line 436
    :cond_0
    iget-object v4, v1, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    .line 437
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    .line 438
    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 439
    iget-object v1, v1, Lcom/zui/gallery/ui/GLView;->mParent:Lcom/zui/gallery/ui/GLView;

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 442
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getHeight()I

    move-result p1

    add-int/2addr p1, v3

    .line 441
    invoke-virtual {p2, v2, v3, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public getComponent(I)Lcom/zui/gallery/ui/GLView;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/ui/GLView;

    return-object p1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getComponentCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGLRoot()Lcom/zui/gallery/ui/GLRoot;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getTransition()Lcom/zui/gallery/anim/StateTransitionAnimation;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

    return-object v0
.end method

.method public getVisibility()I
    .locals 2

    .line 125
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public getWidth()I
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->requestRender()V

    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 6

    .line 372
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/ui/GLView;->setBounds(IIII)Z

    move-result v1

    .line 373
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 378
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/GLView;->onLayout(ZIIII)V

    return-void
.end method

.method public lockRendering()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    :cond_0
    return-void
.end method

.method public measure(II)V
    .locals 1

    .line 389
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mLastWidthSpec:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mLastHeightSpec:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/GLView;->mLastWidthSpec:I

    .line 395
    iput p2, p0, Lcom/zui/gallery/ui/GLView;->mLastHeightSpec:I

    .line 397
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/GLView;->onMeasure(II)V

    .line 399
    iget p1, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    return-void

    .line 400
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " should call setMeasuredSize() in onMeasure()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onAttachToRoot(Lcom/zui/gallery/ui/GLRoot;)V
    .locals 3

    .line 456
    iput-object p1, p0, Lcom/zui/gallery/ui/GLView;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    .line 457
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 458
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/GLView;->getComponent(I)Lcom/zui/gallery/ui/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zui/gallery/ui/GLView;->onAttachToRoot(Lcom/zui/gallery/ui/GLRoot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachFromRoot()V
    .locals 3

    .line 463
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/GLView;->getComponent(I)Lcom/zui/gallery/ui/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/ui/GLView;->onDetachFromRoot()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/zui/gallery/ui/GLView;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onVisibilityChanged(I)V
    .locals 4

    .line 447
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getComponentCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 448
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/GLView;->getComponent(I)Lcom/zui/gallery/ui/GLView;

    move-result-object v2

    .line 449
    invoke-virtual {v2}, Lcom/zui/gallery/ui/GLView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 450
    invoke-virtual {v2, p1}, Lcom/zui/gallery/ui/GLView;->onVisibilityChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAllComponents()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 186
    iget-object v2, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/GLView;

    invoke-direct {p0, v2}, Lcom/zui/gallery/ui/GLView;->removeOneComponent(Lcom/zui/gallery/ui/GLView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeComponent(Lcom/zui/gallery/ui/GLView;)Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mComponents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GLView;->removeOneComponent(Lcom/zui/gallery/ui/GLView;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/zui/gallery/anim/StateTransitionAnimation;->calculate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    .line 246
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

    invoke-virtual {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->isActive()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 248
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/GLView;->renderBackground(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 249
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->save()V

    if-eqz v0, :cond_1

    .line 251
    iget-object v2, p0, Lcom/zui/gallery/ui/GLView;->mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

    invoke-virtual {v2, p0, p1}, Lcom/zui/gallery/anim/StateTransitionAnimation;->applyContentTransform(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getComponentCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 254
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/GLView;->getComponent(I)Lcom/zui/gallery/ui/GLView;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/zui/gallery/ui/GLView;->renderChild(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/ui/GLView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    :cond_2
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

    invoke-virtual {v0, p0, p1}, Lcom/zui/gallery/anim/StateTransitionAnimation;->applyOverlay(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;)V

    :cond_3
    return-void
.end method

.method protected renderBackground(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mBackgroundColor:[F

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->clearBuffer([F)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/gallery/anim/StateTransitionAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

    invoke-virtual {v0, p0, p1}, Lcom/zui/gallery/anim/StateTransitionAnimation;->applyBackground(Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/glrenderer/GLCanvas;)V

    :cond_1
    return-void
.end method

.method protected renderChild(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/ui/GLView;)V
    .locals 5

    .line 288
    invoke-virtual {p2}, Lcom/zui/gallery/ui/GLView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/zui/gallery/ui/GLView;->mAnimation:Lcom/zui/gallery/anim/CanvasAnimation;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p2, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/zui/gallery/ui/GLView;->mScrollX:I

    sub-int/2addr v0, v1

    .line 293
    iget-object v1, p2, Lcom/zui/gallery/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/zui/gallery/ui/GLView;->mScrollY:I

    sub-int/2addr v1, v2

    int-to-float v2, v0

    int-to-float v3, v1

    .line 295
    invoke-interface {p1, v2, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 297
    iget-object v2, p2, Lcom/zui/gallery/ui/GLView;->mAnimation:Lcom/zui/gallery/anim/CanvasAnimation;

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v2}, Lcom/zui/gallery/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 300
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/anim/CanvasAnimation;->calculate(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 303
    iput-object v3, p2, Lcom/zui/gallery/ui/GLView;->mAnimation:Lcom/zui/gallery/anim/CanvasAnimation;

    .line 305
    :goto_0
    invoke-virtual {v2, p1}, Lcom/zui/gallery/anim/CanvasAnimation;->apply(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    .line 307
    :cond_2
    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/GLView;->render(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    if-eqz v2, :cond_3

    .line 309
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    :cond_3
    neg-int p2, v0

    int-to-float p2, p2

    neg-int v0, v1

    int-to-float v0, v0

    .line 310
    invoke-interface {p1, p2, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 229
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    const/4 v0, -0x1

    .line 230
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mLastHeightSpec:I

    .line 231
    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mLastWidthSpec:I

    .line 232
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mParent:Lcom/zui/gallery/ui/GLView;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView;->requestLayout()V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->requestLayoutContentPane()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundColor([F)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/zui/gallery/ui/GLView;->mBackgroundColor:[F

    return-void
.end method

.method public setIntroAnimation(Lcom/zui/gallery/anim/StateTransitionAnimation;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/zui/gallery/ui/GLView;->mTransition:Lcom/zui/gallery/anim/StateTransitionAnimation;

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/zui/gallery/anim/StateTransitionAnimation;->start()V

    :cond_0
    return-void
.end method

.method protected setMeasuredSize(II)V
    .locals 1

    .line 409
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    .line 410
    iput p1, p0, Lcom/zui/gallery/ui/GLView;->mMeasuredWidth:I

    .line 411
    iput p2, p0, Lcom/zui/gallery/ui/GLView;->mMeasuredHeight:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 115
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    goto :goto_0

    .line 117
    :cond_1
    iget v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/gallery/ui/GLView;->mViewFlags:I

    .line 119
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/gallery/ui/GLView;->onVisibilityChanged(I)V

    .line 120
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    return-void
.end method

.method protected startAlpahAnimation(Lcom/zui/gallery/data/Path;Z)Lcom/zui/gallery/ui/GLView$BaseAnimation;
    .locals 1

    .line 646
    new-instance v0, Lcom/zui/gallery/ui/GLView$AlphaAnimation;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/GLView$AlphaAnimation;-><init>(Lcom/zui/gallery/data/Path;)V

    const/16 p1, 0x226

    .line 647
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->setDuration(I)V

    if-eqz p2, :cond_0

    .line 648
    sget-object p1, Lcom/zui/gallery/ui/GLView;->ALPHA_INVERSE:[F

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zui/gallery/ui/GLView;->ALPHA:[F

    :goto_0
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->initProgress([F)V

    .line 649
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 650
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->start()V

    .line 651
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    return-object v0
.end method

.method public startAnimation(Lcom/zui/gallery/anim/CanvasAnimation;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iput-object p1, p0, Lcom/zui/gallery/ui/GLView;->mAnimation:Lcom/zui/gallery/anim/CanvasAnimation;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/zui/gallery/anim/CanvasAnimation;->start()V

    .line 104
    iget-object p1, p0, Lcom/zui/gallery/ui/GLView;->mAnimation:Lcom/zui/gallery/anim/CanvasAnimation;

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/GLRoot;->registerLaunchedAnimation(Lcom/zui/gallery/anim/CanvasAnimation;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    return-void

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected startScaleAnimation(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/ui/GLView$BaseAnimation;
    .locals 1

    .line 629
    new-instance v0, Lcom/zui/gallery/ui/GLView$ScaleAnimation;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/GLView$ScaleAnimation;-><init>(Lcom/zui/gallery/data/Path;)V

    const/16 p1, 0x226

    .line 630
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->setDuration(I)V

    .line 631
    sget-object p1, Lcom/zui/gallery/ui/GLView;->SCALE:[F

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->initProgress([F)V

    .line 632
    sget-object p1, Lcom/zui/gallery/ui/GLView;->inerpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 633
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->start()V

    .line 634
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    return-object v0
.end method

.method protected startUpHideFolderAnimation(Lcom/zui/gallery/data/Path;Landroid/animation/Animator$AnimatorListener;Z)Lcom/zui/gallery/ui/GLView$BaseAnimation;
    .locals 1

    .line 664
    new-instance v0, Lcom/zui/gallery/ui/GLView$HideFolderAnimation;

    invoke-direct {v0, p1}, Lcom/zui/gallery/ui/GLView$HideFolderAnimation;-><init>(Lcom/zui/gallery/data/Path;)V

    const/16 p1, 0x226

    .line 665
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->setDuration(I)V

    if-eqz p3, :cond_0

    .line 666
    sget-object p1, Lcom/zui/gallery/ui/GLView;->Down_HIDE_FOLDER:[F

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/zui/gallery/ui/GLView;->UP_HIDE_FOLDER:[F

    :goto_0
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->initProgress([F)V

    .line 667
    new-instance p1, Landroid/view/animation/AnticipateOvershootInterpolator;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p3}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 668
    invoke-static {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->access$000(Lcom/zui/gallery/ui/GLView$BaseAnimation;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 669
    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView$BaseAnimation;->start()V

    .line 670
    invoke-virtual {p0}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    return-object v0
.end method

.method public unlockRendering()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/zui/gallery/ui/GLView;->mRoot:Lcom/zui/gallery/ui/GLRoot;

    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    :cond_0
    return-void
.end method
