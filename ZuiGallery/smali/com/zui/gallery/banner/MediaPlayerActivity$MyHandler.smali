.class Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;
.super Landroid/os/Handler;
.source "MediaPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/banner/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/banner/MediaPlayerActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;->this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/banner/MediaPlayerActivity;Lcom/zui/gallery/banner/MediaPlayerActivity$1;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;-><init>(Lcom/zui/gallery/banner/MediaPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;->this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/MediaPlayerActivity;->access$200(Lcom/zui/gallery/banner/MediaPlayerActivity;)V

    .line 137
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;->this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/MediaPlayerActivity;->access$300(Lcom/zui/gallery/banner/MediaPlayerActivity;)V

    .line 138
    iget-object p1, p0, Lcom/zui/gallery/banner/MediaPlayerActivity$MyHandler;->this$0:Lcom/zui/gallery/banner/MediaPlayerActivity;

    invoke-static {p1}, Lcom/zui/gallery/banner/MediaPlayerActivity;->access$400(Lcom/zui/gallery/banner/MediaPlayerActivity;)V

    :goto_0
    return-void
.end method
