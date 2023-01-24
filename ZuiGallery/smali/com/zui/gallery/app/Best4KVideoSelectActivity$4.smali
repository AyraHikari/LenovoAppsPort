.class Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;
.super Ljava/lang/Object;
.source "Best4KVideoSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 435
    iput-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 438
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$300(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$400(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 439
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->hasEnoughSpace()Z

    move-result p1

    if-nez p1, :cond_0

    .line 440
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->showNoStorageDialog()V

    return-void

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/Best4KVideoSelectActivity$4;->this$0:Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Best4KVideoSelectActivity;->access$500(Lcom/zui/gallery/app/Best4KVideoSelectActivity;)V

    :cond_1
    return-void
.end method
