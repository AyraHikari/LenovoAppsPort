.class Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;
.super Ljava/lang/Object;
.source "ThreeFingerSlideUpDetector.java"

# interfaces
.implements Lcom/zui/sdk/lenovoone/gesture/GestureDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;
    }
.end annotation


# static fields
.field private static final STATUS_ACTIVE:I = 0x1

.field private static final STATUS_CANCEL:I = 0x2

.field private static final STATUS_DETECTING:I


# instance fields
.field private mMovingFingers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTriggerListener:Lcom/zui/sdk/lenovoone/gesture/GestureDetector$OnTriggerListener;

.field private mStatus:I

.field private mUpFingers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mOnTriggerListener:Lcom/zui/sdk/lenovoone/gesture/GestureDetector$OnTriggerListener;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mMovingFingers:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mUpFingers:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mStatus:I

    return-void
.end method

.method private checkAllFingerUpTime()V
    .locals 5

    .line 116
    invoke-direct {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->isActive()Z

    move-result v0

    const-string v1, ")"

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mUpFingers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mUpFingers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;

    .line 121
    invoke-virtual {v2}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->isDistanceOK()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "finger move distance too short"

    .line 128
    invoke-direct {p0, v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->reset(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mUpFingers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$miRvcqiaiLsa5TJhLEad4GhBMjc;->INSTANCE:Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$miRvcqiaiLsa5TJhLEad4GhBMjc;

    .line 133
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 134
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 136
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x32

    cmp-long v0, v1, v3

    if-gez v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mOnTriggerListener:Lcom/zui/sdk/lenovoone/gesture/GestureDetector$OnTriggerListener;

    if-eqz v0, :cond_3

    .line 140
    invoke-interface {v0}, Lcom/zui/sdk/lenovoone/gesture/GestureDetector$OnTriggerListener;->onTrigger()V

    :cond_3
    const-string v0, "trigger successful"

    .line 142
    invoke-direct {p0, v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->reset(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "up interval too long"

    .line 144
    invoke-direct {p0, v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->reset(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not expect fingers count("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mUpFingers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->reset(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_6
    invoke-direct {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->isCancel()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "already cancel"

    .line 150
    invoke-direct {p0, v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->reset(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "never match condition up("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mUpFingers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->reset(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private checkDownTime()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mMovingFingers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mMovingFingers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$75nZnQqkV0zRobUz_2ZRUESj8Lk;->INSTANCE:Lcom/zui/sdk/lenovoone/gesture/-$$Lambda$ThreeFingerSlideUpDetector$75nZnQqkV0zRobUz_2ZRUESj8Lk;

    .line 98
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 99
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 102
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x32

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->setActive()V

    const-string v0, "LenovoOneSDK-Manager"

    const-string v1, "active"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "down interval is too long"

    .line 108
    invoke-direct {p0, v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->setCancel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many fingers("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->setCancel(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isActive()Z
    .locals 2

    .line 26
    iget v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCancel()Z
    .locals 2

    .line 30
    iget v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDetect()Z
    .locals 1

    .line 34
    iget v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$checkAllFingerUpTime$1(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;)Ljava/lang/Long;
    .locals 2

    .line 133
    invoke-static {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->access$000(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$checkDownTime$0(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;)Ljava/lang/Long;
    .locals 2

    .line 98
    invoke-static {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->access$100(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private reset(Ljava/lang/String;)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3 finger slide up reset reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LenovoOneSDK-Manager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 167
    iput p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mStatus:I

    .line 168
    iget-object p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mMovingFingers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 169
    iget-object p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mUpFingers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private setActive()V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mStatus:I

    return-void
.end method

.method private setCancel(Ljava/lang/String;)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3 finger slide up canceled reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LenovoOneSDK-Manager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 162
    iput p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mStatus:I

    return-void
.end method

.method private trackFingerDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;

    invoke-direct {v0, p0, p1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;-><init>(Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;Landroid/view/MotionEvent;)V

    .line 90
    iget-object p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mMovingFingers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private trackFingerMove(Landroid/view/MotionEvent;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mMovingFingers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;

    .line 84
    invoke-virtual {v1, p1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->move(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private trackFingerUp(Landroid/view/MotionEvent;)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mMovingFingers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;

    .line 72
    invoke-virtual {v1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector$Finger;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mMovingFingers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mUpFingers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->trackFingerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->trackFingerDown(Landroid/view/MotionEvent;)V

    .line 47
    invoke-direct {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->checkDownTime()V

    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    invoke-direct {p0, p1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->trackFingerMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 61
    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->trackFingerUp(Landroid/view/MotionEvent;)V

    .line 62
    invoke-direct {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->checkAllFingerUpTime()V

    goto :goto_0

    .line 42
    :cond_4
    invoke-direct {p0, p1}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->trackFingerDown(Landroid/view/MotionEvent;)V

    .line 66
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->isActive()Z

    move-result p1

    return p1
.end method

.method public setOnTriggerListener(Lcom/zui/sdk/lenovoone/gesture/GestureDetector$OnTriggerListener;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;->mOnTriggerListener:Lcom/zui/sdk/lenovoone/gesture/GestureDetector$OnTriggerListener;

    return-void
.end method
