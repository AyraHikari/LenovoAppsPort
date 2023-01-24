.class Lcom/zui/gallery/app/Best4KVideoSelectActivity$5;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/Best4KVideoSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$5;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$5;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$600(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$5;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    iget-object v1, v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$5;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {v2}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$700(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit8 v0, v0, 0x64

    rsub-int/lit8 v0, v0, 0x64

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
