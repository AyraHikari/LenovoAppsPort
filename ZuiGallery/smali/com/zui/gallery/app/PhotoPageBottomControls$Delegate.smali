.class public interface abstract Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;
.super Ljava/lang/Object;
.source "PhotoPageBottomControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPageBottomControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract canDisplayBottomControl(I)Z
.end method

.method public abstract canDisplayBottomControls()Z
.end method

.method public abstract isContinuousShot()Z
.end method

.method public abstract isFavoriteGroup()Z
.end method

.method public abstract onBottomControlClicked(I)V
.end method

.method public abstract refreshBottomControlsWhenReady()V
.end method
