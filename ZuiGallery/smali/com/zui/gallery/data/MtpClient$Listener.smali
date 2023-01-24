.class public interface abstract Lcom/zui/gallery/data/MtpClient$Listener;
.super Ljava/lang/Object;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/MtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract deviceAdded(Landroid/mtp/MtpDevice;)V
.end method

.method public abstract deviceRemoved(Landroid/mtp/MtpDevice;)V
.end method
