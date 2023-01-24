.class public interface abstract Lcom/zui/gallery/app/PhotoPage$Model;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/PhotoView$Model;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract isEmpty()Z
.end method

.method public abstract pause(Z)V
.end method

.method public abstract resume()V
.end method

.method public abstract setContinuousShotMode(Z)V
.end method

.method public abstract setCurrentPhoto(Lcom/zui/gallery/data/Path;I)V
.end method
