.class Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;
.super Ljava/lang/Object;
.source "ThreeFingerSlideUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finger"
.end annotation


# static fields
.field private static final DISTANCE_THRESHOLD:I = 0x190


# instance fields
.field private downTime:J

.field private mId:I

.field private mXDown:F

.field private mXMove:F

.field private mYDown:F

.field private mYMove:F

.field private moveTime:J

.field final synthetic this$0:Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;


# direct methods
.method constructor <init>(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;Landroid/view/MotionEvent;)V
    .locals 2

    .line 191
    iput-object p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->this$0:Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mId:I

    .line 194
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mXDown:F

    .line 195
    iget p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mId:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mYDown:F

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->downTime:J

    .line 198
    iget p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mXDown:F

    iput p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mXMove:F

    .line 199
    iget p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mYDown:F

    iput p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mYMove:F

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->moveTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;)J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->moveTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;)J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->downTime:J

    return-wide v0
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mId:I

    return v0
.end method

.method isDistanceOK()Z
    .locals 3

    .line 215
    iget v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mYDown:F

    iget v1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mYMove:F

    sub-float/2addr v0, v1

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LenovoOneSDK-Manager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method move(Landroid/view/MotionEvent;)V
    .locals 2

    .line 208
    iget v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mXMove:F

    .line 209
    iget v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->mYMove:F

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->moveTime:J

    return-void
.end method
