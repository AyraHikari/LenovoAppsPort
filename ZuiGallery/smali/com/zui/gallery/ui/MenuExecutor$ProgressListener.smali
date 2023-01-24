.class public interface abstract Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressListener"
.end annotation


# virtual methods
.method public abstract onConfirmDialogDismissed(Z)V
.end method

.method public abstract onConfirmDialogShown()V
.end method

.method public abstract onProgressComplete(I)Z
.end method

.method public abstract onProgressStart()V
.end method

.method public abstract onProgressUpdate(I)V
.end method
