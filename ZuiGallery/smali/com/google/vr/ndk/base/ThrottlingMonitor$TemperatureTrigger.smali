.class public interface abstract Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;
.super Ljava/lang/Object;
.source "ThrottlingMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/ThrottlingMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TemperatureTrigger"
.end annotation


# virtual methods
.method public abstract onTemperatureEvent(FJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "temperature",
            "estimatedThrottlingTime"
        }
    .end annotation
.end method
