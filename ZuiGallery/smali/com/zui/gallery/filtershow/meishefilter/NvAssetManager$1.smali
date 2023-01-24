.class Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;
.super Landroid/os/Handler;
.source "NvAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;

    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    iget v1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->curAssetType:I

    iget-object p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->access$400(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;ILjava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;

    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    iget v1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->curAssetType:I

    iget-object v2, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadId:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->access$300(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;

    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    iget v1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->curAssetType:I

    iget-object v2, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadId:Ljava/lang/String;

    iget p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadProgress:I

    invoke-static {v0, v1, v2, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->access$200(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;ILjava/lang/String;I)V

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->access$100(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V

    goto :goto_0

    .line 153
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    iget v1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;->curAssetType:I

    iget-object v2, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;->resultsArray:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;->hasNext:Z

    invoke-static {v0, v1, v2, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->access$000(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;ILjava/util/ArrayList;Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
