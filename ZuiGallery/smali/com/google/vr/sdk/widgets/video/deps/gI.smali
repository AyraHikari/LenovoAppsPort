.class final Lcom/google/vr/sdk/widgets/video/deps/gI;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/gn;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 3
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method

.method public a(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 0

    .line 5
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
