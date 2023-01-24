.class Lcom/zui/gallery/app/VideoEditBaseActivity$5;
.super Ljava/lang/Object;
.source "VideoEditBaseActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


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

    .line 1007
    iput-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$5;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1009
    iget-object p1, p0, Lcom/zui/gallery/app/VideoEditBaseActivity$5;->this$0:Lcom/zui/gallery/app/VideoEditBaseActivity;

    new-instance v0, Lcom/zui/gallery/app/VideoEditBaseActivity$5$1;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/app/VideoEditBaseActivity$5$1;-><init>(Lcom/zui/gallery/app/VideoEditBaseActivity$5;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/VideoEditBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
