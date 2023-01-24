.class Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;
.super Ljava/lang/Object;
.source "NvHttpRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;->getAssetList(IIIIILcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

.field final synthetic val$localAssetsType:I

.field final synthetic val$localRequestListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localRequestListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    iput p3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localAssetsType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localRequestListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz p1, :cond_0

    .line 112
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localAssetsType:I

    invoke-interface {p1, p2, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onGetAssetListFailed(Ljava/io/IOException;I)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 118
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localRequestListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->close()V

    .line 122
    const-class p2, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;->access$000(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;

    .line 123
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;->getErrNo()I

    move-result p2

    if-nez p2, :cond_0

    .line 124
    iget-object p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localRequestListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;->getList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localAssetsType:I

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;->getHasNext()Z

    move-result p1

    invoke-interface {p2, v0, v1, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onGetAssetListSuccess(Ljava/util/ArrayList;IZ)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localRequestListener:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;

    const/4 p2, 0x0

    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$1;->val$localAssetsType:I

    invoke-interface {p1, p2, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;->onGetAssetListFailed(Ljava/io/IOException;I)V

    :cond_1
    :goto_0
    return-void
.end method
