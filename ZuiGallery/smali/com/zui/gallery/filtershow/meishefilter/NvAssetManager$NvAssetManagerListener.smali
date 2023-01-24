.class public interface abstract Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;
.super Ljava/lang/Object;
.source "NvAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NvAssetManagerListener"
.end annotation


# virtual methods
.method public abstract onDonwloadAssetFailed(Ljava/lang/String;)V
.end method

.method public abstract onDonwloadAssetSuccess(Ljava/lang/String;)V
.end method

.method public abstract onDownloadAssetProgress(Ljava/lang/String;I)V
.end method

.method public abstract onFinishAssetPackageInstallation(Ljava/lang/String;)V
.end method

.method public abstract onFinishAssetPackageUpgrading(Ljava/lang/String;)V
.end method

.method public abstract onGetRemoteAssetsFailed()V
.end method

.method public abstract onRemoteAssetsChanged(Z)V
.end method
