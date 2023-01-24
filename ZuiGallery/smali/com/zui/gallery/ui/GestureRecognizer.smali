.class public Lcom/zui/gallery/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/GestureRecognizer$MyDownUpListener;,
        Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;,
        Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;,
        Lcom/zui/gallery/ui/GestureRecognizer$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GestureRecognizer"


# instance fields
.field private final mDownUpDetector:Lcom/zui/gallery/ui/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lcom/zui/gallery/ui/GestureRecognizer$Listener;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/gallery/ui/GestureRecognizer$Listener;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mListener:Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    .line 53
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/GestureRecognizer$MyGestureListener;-><init>(Lcom/zui/gallery/ui/GestureRecognizer;Lcom/zui/gallery/ui/GestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 55
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/GestureRecognizer$MyScaleListener;-><init>(Lcom/zui/gallery/ui/GestureRecognizer;Lcom/zui/gallery/ui/GestureRecognizer$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 57
    new-instance p1, Lcom/zui/gallery/ui/DownUpDetector;

    new-instance p2, Lcom/zui/gallery/ui/GestureRecognizer$MyDownUpListener;

    invoke-direct {p2, p0, v1}, Lcom/zui/gallery/ui/GestureRecognizer$MyDownUpListener;-><init>(Lcom/zui/gallery/ui/GestureRecognizer;Lcom/zui/gallery/ui/GestureRecognizer$1;)V

    invoke-direct {p1, p2}, Lcom/zui/gallery/ui/DownUpDetector;-><init>(Lcom/zui/gallery/ui/DownUpDetector$DownUpListener;)V

    iput-object p1, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mDownUpDetector:Lcom/zui/gallery/ui/DownUpDetector;

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/GestureRecognizer;)Lcom/zui/gallery/ui/GestureRecognizer$Listener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mListener:Lcom/zui/gallery/ui/GestureRecognizer$Listener;

    return-object p0
.end method


# virtual methods
.method public cancelScale()V
    .locals 8

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 91
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public isDown()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mDownUpDetector:Lcom/zui/gallery/ui/DownUpDetector;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v2, 0x2002

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v2, 0x6002

    if-ne v0, v2, :cond_2

    .line 72
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mMinSpan"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    iget-object v1, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/GestureRecognizer;->mDownUpDetector:Lcom/zui/gallery/ui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
