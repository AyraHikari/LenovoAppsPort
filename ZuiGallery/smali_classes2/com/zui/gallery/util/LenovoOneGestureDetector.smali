.class public Lcom/zui/gallery/util/LenovoOneGestureDetector;
.super Landroid/view/GestureDetector;
.source "LenovoOneGestureDetector.java"


# static fields
.field private static final MOVE_DIRECTION_DOWN_RIGHT:I = 0x1

.field private static final MOVE_DIRECTION_UP_LEFT:I = 0x0

.field public static mouseRightClick:Z = false


# instance fields
.field private countNagativeNumber:I

.field private countPositiveNumber:I

.field private lastDirection:I

.field private lastDownForworad:Z

.field private lastMotionEvent:Landroid/view/MotionEvent;

.field private lastMotionEventTimeStamp:J

.field private lastVScroll:F

.field private mListener:Landroid/view/GestureDetector$OnGestureListener;

.field middlePointerX:I

.field middlePointerY:I

.field private wrongDirectionCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastDownForworad:Z

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastVScroll:F

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerY:I

    .line 15
    iput v1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerX:I

    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 20
    iput v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countPositiveNumber:I

    .line 21
    iput v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countNagativeNumber:I

    .line 22
    iput v1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastDirection:I

    .line 23
    iput v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->wrongDirectionCount:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerY:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerX:I

    .line 31
    iput-object p2, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-void
.end method

.method private animationScrollDown(JI)V
    .locals 9

    .line 94
    iget-wide v2, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerY:I

    int-to-float v6, v0

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-wide v0, v2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 96
    iget-wide v1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    iget v3, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerX:I

    int-to-float v6, v3

    iget v3, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerY:I

    add-int/2addr v3, p3

    int-to-float v7, v3

    const/4 v5, 0x2

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1, p3}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 99
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/KeyEvent;)V
    .locals 11

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 107
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x101

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_4

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, -0x64

    goto :goto_1

    :cond_2
    const/16 p1, 0x64

    .line 114
    :goto_1
    iget-wide v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    sub-long v2, v8, v0

    long-to-int v2, v2

    const/16 v3, 0x320

    if-le v2, v3, :cond_3

    goto :goto_2

    :cond_3
    sub-long v0, v8, v0

    long-to-int v3, v0

    :goto_2
    move v10, v3

    .line 116
    iput-wide v8, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    const/4 v4, 0x0

    .line 117
    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerY:I

    int-to-float v6, v0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    int-to-long v0, v10

    add-long v2, v8, v0

    const/4 v4, 0x2

    .line 120
    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerY:I

    add-int/2addr v0, p1

    int-to-float v6, v0

    move-wide v0, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    mul-int/lit8 v10, v10, 0x2

    int-to-long v0, v10

    add-long v2, v8, v0

    const/4 v4, 0x1

    .line 123
    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->middlePointerY:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float v6, v0

    move-wide v0, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 13

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 39
    iget-wide v4, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x64

    cmp-long v0, v6, v8

    const-wide/16 v6, 0x3e8

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v0, :cond_7

    sub-long v4, v2, v4

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    .line 40
    iget-object v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    .line 41
    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countPositiveNumber:I

    iget v4, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countNagativeNumber:I

    if-le v0, v4, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    const/16 v4, 0xc8

    .line 43
    iget v5, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastDirection:I

    const-string v6, "dispatchGenericMotionEvent:onScroll:down"

    const/16 v7, -0xc8

    const-string v8, "dispatchGenericMotionEvent:onScroll:up"

    const-string v9, "lenovooneFakeScroll"

    if-eq v5, v10, :cond_4

    if-ne v5, v0, :cond_1

    goto :goto_2

    :cond_1
    if-eq v5, v10, :cond_6

    if-eq v5, v0, :cond_6

    .line 55
    iget v5, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->wrongDirectionCount:I

    if-lt v5, v1, :cond_3

    .line 56
    iput v12, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->wrongDirectionCount:I

    if-ne v0, v11, :cond_2

    .line 58
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, v2, v3, v4}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->animationScrollDown(JI)V

    goto :goto_1

    .line 61
    :cond_2
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, v2, v3, v7}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->animationScrollDown(JI)V

    .line 64
    :goto_1
    iput v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastDirection:I

    .line 66
    :cond_3
    iget v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->wrongDirectionCount:I

    add-int/2addr v0, v11

    iput v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->wrongDirectionCount:I

    goto :goto_4

    :cond_4
    :goto_2
    if-ne v0, v11, :cond_5

    .line 45
    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0, v2, v3, v4}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->animationScrollDown(JI)V

    goto :goto_3

    .line 48
    :cond_5
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0, v2, v3, v7}, Lcom/zui/gallery/util/LenovoOneGestureDetector;->animationScrollDown(JI)V

    .line 51
    :goto_3
    iput v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastDirection:I

    .line 52
    iput v12, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->wrongDirectionCount:I

    .line 70
    :cond_6
    :goto_4
    iput v12, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countNagativeNumber:I

    .line 71
    iput v12, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countPositiveNumber:I

    .line 72
    iput-object p1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 73
    iput-wide v2, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    goto :goto_5

    .line 75
    :cond_7
    iget-wide v0, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    sub-long v4, v2, v0

    cmp-long v4, v4, v6

    if-lez v4, :cond_8

    .line 76
    iput-object p1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEvent:Landroid/view/MotionEvent;

    .line 77
    iput-wide v2, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastMotionEventTimeStamp:J

    .line 78
    iput v12, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countNagativeNumber:I

    .line 79
    iput v12, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countPositiveNumber:I

    .line 80
    iput v10, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->lastDirection:I

    goto :goto_5

    :cond_8
    sub-long/2addr v2, v0

    cmp-long v0, v2, v8

    if-gez v0, :cond_a

    const/16 v0, 0x9

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_9

    .line 84
    iget p1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countPositiveNumber:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countPositiveNumber:I

    goto :goto_5

    :cond_9
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_a

    .line 86
    iget p1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countNagativeNumber:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/zui/gallery/util/LenovoOneGestureDetector;->countNagativeNumber:I

    :cond_a
    :goto_5
    return-void
.end method
