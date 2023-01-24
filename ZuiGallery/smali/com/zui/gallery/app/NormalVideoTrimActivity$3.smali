.class Lcom/zui/gallery/app/NormalVideoTrimActivity$3;
.super Ljava/lang/Object;
.source "NormalVideoTrimActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/NormalVideoTrimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$3;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 624
    iget-object v0, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$3;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->access$300(Lcom/zui/gallery/app/NormalVideoTrimActivity;)J

    move-result-wide v0

    .line 625
    iget-object v2, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$3;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    iget-object v2, v2, Lcom/zui/gallery/app/NormalVideoTrimActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zui/gallery/app/NormalVideoTrimActivity$3;->this$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-static {v3}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->access$400(Lcom/zui/gallery/app/NormalVideoTrimActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    rem-long/2addr v0, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
