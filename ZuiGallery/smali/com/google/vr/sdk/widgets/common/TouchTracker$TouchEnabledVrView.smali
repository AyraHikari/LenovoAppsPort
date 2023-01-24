.class interface abstract Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;
.super Ljava/lang/Object;
.source "TouchTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/common/TouchTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TouchEnabledVrView"
.end annotation


# virtual methods
.method public abstract getEventListener()Lcom/google/vr/sdk/widgets/common/VrEventListener;
.end method

.method public abstract onPanningEvent(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deltaPixelX",
            "deltaPixelY"
        }
    .end annotation
.end method
