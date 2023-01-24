.class public interface abstract Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;
.super Ljava/lang/Object;
.source "AbstractPhotoSmartSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AbstractPhotoSmartSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameSequenceListener"
.end annotation


# virtual methods
.method public abstract onBestFrameSequenceCanclled()V
.end method

.method public abstract onBestFrameSequenceDone()V
.end method

.method public abstract onBestFrameSequenceError(Ljava/lang/Exception;)V
.end method

.method public abstract onBestFrameSequenceProcess(Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;F)V
.end method

.method public abstract onBestFrameSequenceStart()V
.end method
