.class Lcom/zui/gallery/app/ActivityState$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/ActivityState;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/ActivityState;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/zui/gallery/app/ActivityState$1;->this$0:Lcom/zui/gallery/app/ActivityState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "plugged"

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/ActivityState$1;->this$0:Lcom/zui/gallery/app/ActivityState;

    invoke-static {p1}, Lcom/zui/gallery/app/ActivityState;->access$000(Lcom/zui/gallery/app/ActivityState;)Z

    move-result p1

    if-eq v0, p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/zui/gallery/app/ActivityState$1;->this$0:Lcom/zui/gallery/app/ActivityState;

    invoke-static {p1, v0}, Lcom/zui/gallery/app/ActivityState;->access$002(Lcom/zui/gallery/app/ActivityState;Z)Z

    .line 174
    iget-object p1, p0, Lcom/zui/gallery/app/ActivityState$1;->this$0:Lcom/zui/gallery/app/ActivityState;

    invoke-static {p1}, Lcom/zui/gallery/app/ActivityState;->access$100(Lcom/zui/gallery/app/ActivityState;)V

    :cond_1
    return-void
.end method
