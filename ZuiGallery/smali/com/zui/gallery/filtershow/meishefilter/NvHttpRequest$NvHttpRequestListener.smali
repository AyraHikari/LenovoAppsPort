.class public interface abstract Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;
.super Ljava/lang/Object;
.source "NvHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NvHttpRequestListener"
.end annotation


# virtual methods
.method public abstract onDonwloadAssetFailed(Ljava/lang/Exception;ILjava/lang/String;)V
.end method

.method public abstract onDonwloadAssetProgress(IILjava/lang/String;)V
.end method

.method public abstract onDonwloadAssetSuccess(ZLjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onGetAssetListFailed(Ljava/io/IOException;I)V
.end method

.method public abstract onGetAssetListSuccess(Ljava/util/ArrayList;IZ)V
.end method
