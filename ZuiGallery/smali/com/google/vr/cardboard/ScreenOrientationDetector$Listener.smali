.class public interface abstract Lcom/google/vr/cardboard/ScreenOrientationDetector$Listener;
.super Ljava/lang/Object;
.source "ScreenOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/cardboard/ScreenOrientationDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onScreenOrientationChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newScreenOrientation"
        }
    .end annotation
.end method
