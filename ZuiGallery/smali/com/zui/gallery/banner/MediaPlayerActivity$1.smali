.class Lcom/zui/gallery/banner/MediaPlayerActivity$1;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Lcom/zui/gallery/banner/MediaPlayerActivity$LoadVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/banner/MediaPlayerActivity;->LoadVideoStream(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/banner/MediaPlayerActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity$1;->this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/zui/gallery/banner/MediaPlayerActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoadFinish is called"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/banner/MediaPlayerActivity$1;->this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;

    iput-object p1, v0, Lcom/zui/gallery/banner/MediaPlayerActivity;->mOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 125
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity$1;->this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;

    iget-object p1, p1, Lcom/zui/gallery/banner/MediaPlayerActivity;->myHandler:Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method
