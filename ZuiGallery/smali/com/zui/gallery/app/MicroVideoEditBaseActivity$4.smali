.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;
.super Ljava/lang/Object;
.source "MicroVideoEditBaseActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MicroVideoEditBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 745
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    new-instance v0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4$1;-><init>(Lcom/zui/gallery/app/MicroVideoEditBaseActivity$4;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
