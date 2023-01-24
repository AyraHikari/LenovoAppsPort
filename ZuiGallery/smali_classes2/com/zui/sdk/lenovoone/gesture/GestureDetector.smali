.class public interface abstract Lcom/zui/sdk/lenovoone/gesture/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/sdk/lenovoone/gesture/GestureDetector$OnTriggerListener;
    }
.end annotation


# direct methods
.method public static fingerSlideUp()Lcom/zui/sdk/lenovoone/gesture/GestureDetector;
    .locals 1

    .line 7
    new-instance v0, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;

    invoke-direct {v0}, Lcom/zui/sdk/lenovoone/gesture/ThreeFingerSlideUpDetector;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract handleMotion(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setOnTriggerListener(Lcom/zui/sdk/lenovoone/gesture/GestureDetector$OnTriggerListener;)V
.end method
