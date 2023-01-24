.class Lcom/zui/gallery/app/VideoEditBaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoEditBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/VideoEditBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/VideoEditBaseActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$1;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$1;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/VideoEditBaseActivity;->finish()V

    return-void
.end method
