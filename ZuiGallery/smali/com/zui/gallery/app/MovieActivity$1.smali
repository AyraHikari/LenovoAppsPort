.class Lcom/zui/gallery/app/MovieActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/MovieActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MovieActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/zui/gallery/app/MovieActivity$1;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/zui/gallery/app/MovieActivity$1;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/MovieActivity;->close()V

    return-void
.end method
