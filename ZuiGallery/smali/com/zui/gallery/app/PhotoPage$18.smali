.class Lcom/zui/gallery/app/PhotoPage$18;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->initTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 4531
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$18;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 4534
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$18;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/gallery/data/LocalImage;

    if-eqz p1, :cond_0

    .line 4535
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$18;->this$0:Lcom/zui/gallery/app/PhotoPage;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/PhotoPage;->muteVideo(Z)V

    .line 4536
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$18;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/data/LocalImage;

    invoke-static {p1, v0}, Lcom/zui/gallery/app/PhotoPage;->access$5500(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/LocalImage;)V

    :cond_0
    return-void
.end method
