.class Lcom/zui/gallery/app/MicroVideoEditBaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MicroVideoEditBaseActivity.java"


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

    .line 160
    iput-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$1;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/zui/gallery/app/MicroVideoEditBaseActivity$1;->this$0:Lcom/zui/gallery/app/MicroVideoEditBaseActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/MicroVideoEditBaseActivity;->finish()V

    return-void
.end method
